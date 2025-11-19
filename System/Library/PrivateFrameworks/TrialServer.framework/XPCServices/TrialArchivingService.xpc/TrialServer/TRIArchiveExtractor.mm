@interface TRIArchiveExtractor
+ ($A5A652246548B43F8BC05201A1C72A70)_compressFilesInCurrentDirectoryWithLockWitness:(TRIFlockWitness_ *)a3 shouldDefer:(id)a4;
+ ($A5A652246548B43F8BC05201A1C72A70)_copyDataFromReadArchive:(archive *)a3 toWriteDiskArchive:(archive *)a4 remainingQuota:(unint64_t *)a5 archiveIdentifier:(id)a6 shouldDefer:(id)a7;
+ ($A5A652246548B43F8BC05201A1C72A70)_withLockWitness:(TRIFlockWitness_ *)a3 performExtractionIntoCurrentDirectoryFromArchive:(archive *)a4 maxUnarchivedSize:(unint64_t)a5 archiveIdentifier:(id)a6 shouldDefer:(id)a7;
+ ($A5A652246548B43F8BC05201A1C72A70)extractArchiveFromHandle:(id)a3 toDestinationDirectoryURL:(id)a4 maxUnarchivedSize:(unint64_t)a5 archiveIdentifier:(id)a6 postExtractionCompression:(id)a7 shouldDefer:(id)a8;
+ (BOOL)_withLockAndDirectoryChangedToURL:(id)a3 runBlock:(id)a4;
+ (archive)_createReadArchive;
+ (archive)_createWriteDiskArchive;
@end

@implementation TRIArchiveExtractor

+ (archive)_createReadArchive
{
  v2 = archive_read_new();
  if (!v2)
  {
    v5 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = archive_error_string();
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "archive_read_new unable to create new archive: %s.", &v7, 0xCu);
    }

    goto LABEL_10;
  }

  v3 = v2;
  if (archive_read_support_format_zip())
  {
    v4 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = archive_error_string();
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "archive_read unable to set supported formats: %s.", &v7, 0xCu);
    }

    if (!archive_read_free())
    {
      return 0;
    }

    v5 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unable to free archive_read (leaking)", &v7, 2u);
    }

LABEL_10:

    return 0;
  }

  return v3;
}

+ (archive)_createWriteDiskArchive
{
  v2 = archive_write_disk_new();
  if (!v2)
  {
    return v2;
  }

  if (!archive_write_disk_set_standard_lookup())
  {
    if (!archive_write_disk_set_options())
    {
      return v2;
    }

    v3 = TRILogCategory_Archiving();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v7 = 136315138;
    v8 = archive_error_string();
    v4 = "archive_write_disk unable to set options - %s.";
    goto LABEL_14;
  }

  v3 = TRILogCategory_Archiving();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315138;
    v8 = archive_error_string();
    v4 = "archive_write_disk unable to set lookup functions - %s.";
LABEL_14:
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, v4, &v7, 0xCu);
  }

LABEL_7:

  if (archive_write_free())
  {
    v5 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unable to free archive_write_disk (leaking)", &v7, 2u);
    }
  }

  return 0;
}

+ ($A5A652246548B43F8BC05201A1C72A70)_copyDataFromReadArchive:(archive *)a3 toWriteDiskArchive:(archive *)a4 remainingQuota:(unint64_t *)a5 archiveIdentifier:(id)a6 shouldDefer:(id)a7
{
  v9 = a6;
  v10 = a7;
  for (i = v10[2]; (i() & 1) == 0; i = v10[2])
  {
    data_block = archive_read_data_block();
    if (data_block)
    {
      if (data_block == 1)
      {
        v14.var0 = 1;
        goto LABEL_15;
      }

      v15 = TRILogCategory_Archiving();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 136315138;
      v19 = archive_error_string();
      v16 = "archive_read_data_block failed - %s.";
      goto LABEL_17;
    }

    *a5 = *a5;
    if (archive_write_data_block() < 0)
    {
      v15 = TRILogCategory_Archiving();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
LABEL_14:

        v14.var0 = 0;
        goto LABEL_15;
      }

      *buf = 136315138;
      v19 = archive_error_string();
      v16 = "archive_write_data_block failed - %s.";
LABEL_17:
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);
      goto LABEL_14;
    }
  }

  v13 = TRILogCategory_Archiving();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Deferring during archive extraction.", buf, 2u);
  }

  v14.var0 = 2;
LABEL_15:

  return v14;
}

+ (BOOL)_withLockAndDirectoryChangedToURL:(id)a3 runBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = +[NSFileManager defaultManager];
  v36 = 0;
  v9 = [v8 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v36];
  v10 = v36;

  if ((v9 & 1) == 0)
  {
    v17 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v44 = v5;
      v45 = 2112;
      v46 = v10;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "failed to create directory at %@ - %@.", buf, 0x16u);
    }

    goto LABEL_13;
  }

  v11 = v5;
  v12 = [v5 fileSystemRepresentation];
  v13 = open(v12, 0x100000);
  if (v13 < 0)
  {
    v18 = TRILogCategory_Server();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v27 = __error();
      v28 = strerror(*v27);
      v29 = *__error();
      *buf = 136315650;
      v44 = v12;
      v45 = 2080;
      v46 = v28;
      v47 = 1024;
      v48 = v29;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to open directory %s: %s (%d)", buf, 0x1Cu);
    }

LABEL_13:
    v19 = 0;
    goto LABEL_25;
  }

  bzero(buf, 0x400uLL);
  v14 = getcwd(buf, 0x400uLL);
  if (flock(v13, 2))
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v24 = __error();
      v25 = strerror(*v24);
      v26 = *__error();
      *v37 = 136315650;
      v38 = v12;
      v39 = 2080;
      v40 = v25;
      v41 = 1024;
      v42 = v26;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to lock directory %s err:%s (%d)", v37, 0x1Cu);
    }

    v16 = 0;
LABEL_18:
    v19 = 0;
    goto LABEL_19;
  }

  v16 = 1;
  if (chdir(v12))
  {
    v20 = TRILogCategory_Server();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v33 = __error();
      v34 = strerror(*v33);
      v35 = *__error();
      *v37 = 136315650;
      v38 = v12;
      v39 = 2080;
      v40 = v34;
      v41 = 1024;
      v42 = v35;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "failed to chdir directory %s err:%s (%d)", v37, 0x1Cu);
    }

    goto LABEL_18;
  }

  v23 = objc_autoreleasePoolPush();
  *v37 = v13;
  v6[2](v6, v37);
  objc_autoreleasePoolPop(v23);
  v19 = 1;
LABEL_19:
  chdir(v14);
  if (v16 && flock(v13, 8))
  {
    v21 = TRILogCategory_Server();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v30 = __error();
      v31 = strerror(*v30);
      v32 = *__error();
      *v37 = 136315650;
      v38 = v12;
      v39 = 2080;
      v40 = v31;
      v41 = 1024;
      v42 = v32;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to unlock lockfile %s: %s (%d)", v37, 0x1Cu);
    }
  }

  close(v13);
LABEL_25:

  objc_autoreleasePoolPop(v7);
  return v19 & 1;
}

+ ($A5A652246548B43F8BC05201A1C72A70)_compressFilesInCurrentDirectoryWithLockWitness:(TRIFlockWitness_ *)a3 shouldDefer:(id)a4
{
  v4 = a4;
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 currentDirectoryPath];

  v7 = objc_opt_new();
  v8 = [v7 inPlaceCompressDirectory:v6 shouldDefer:v4];

  return v8;
}

+ ($A5A652246548B43F8BC05201A1C72A70)_withLockWitness:(TRIFlockWitness_ *)a3 performExtractionIntoCurrentDirectoryFromArchive:(archive *)a4 maxUnarchivedSize:(unint64_t)a5 archiveIdentifier:(id)a6 shouldDefer:(id)a7
{
  v10 = a6;
  v11 = a7;
  v88 = a1;
  v12 = [a1 _createWriteDiskArchive];
  if (!v12)
  {
    v63 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      *v96 = 0;
      _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "Unable to create disk archive for writing.", v96, 2u);
    }

    v64.var0 = 0;
    goto LABEL_102;
  }

  v89 = v12;
  v91 = a5;
  while (1)
  {
    do
    {
      next_header = archive_read_next_header();
      if (next_header)
      {
        if (next_header == 1)
        {
          v64.var0 = 1;
          goto LABEL_93;
        }

        v65 = TRILogCategory_Archiving();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          v66 = archive_error_string();
          *v96 = 136315138;
          v97 = v66;
          v67 = "archive_read_next_header failed - %s.";
          goto LABEL_104;
        }

LABEL_79:

LABEL_80:
        v64.var0 = 0;
        goto LABEL_93;
      }

      v14 = v10;
      v15 = archive_entry_filetype();
      v16 = v15;
      if (v15 != 0x4000 && v15 != 0x8000)
      {
        v69 = TRILogCategory_Archiving();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          v80 = archive_entry_pathname();
          *buf = 136315650;
          v105 = v80;
          v106 = 1024;
          *v107 = v16;
          *&v107[4] = 2112;
          *&v107[6] = v10;
          _os_log_error_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "found file that is neither directory nor regular file. Aborting. Offending file: %s, file type: 0x%x, archive identifier: %@", buf, 0x1Cu);
        }

        goto LABEL_80;
      }

      v17 = objc_autoreleasePoolPush();
      v18 = archive_entry_pathname_utf8();
      if (!v18)
      {
        v68 = TRILogCategory_Archiving();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "archive_entry with no path encountered.", buf, 2u);
        }

        objc_autoreleasePoolPop(v17);
LABEL_74:
        v64.var0 = 0;
        goto LABEL_93;
      }

      v19 = v18;
      v20 = -1;
      do
      {
        v21 = *(v18 + v20++ + 1);
      }

      while (v21 == 47);
      if (v20)
      {
        v22 = TRILogCategory_Archiving();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = strlen(v19);
          *buf = 134218240;
          v105 = v20;
          v106 = 2048;
          *v107 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "archive_entry with absolute path encountered...ignoring leading %zu of %zu bytes.", buf, 0x16u);
        }
      }

      v24 = [[NSString alloc] initWithUTF8String:&v19[v20]];
      v25 = v24;
      if (!v24)
      {
        v28 = TRILogCategory_Archiving();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v105 = &v19[v20];
          v29 = v28;
          v30 = "Unable to initialize entry path with string %s";
          v31 = 12;
          goto LABEL_63;
        }

LABEL_19:
        v27 = 0;
        v32 = 0;
        goto LABEL_41;
      }

      v26 = [v24 length];
      v27 = v26 == 0;
      if (v16 != 0x4000 && !v26)
      {
        v28 = TRILogCategory_Archiving();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v29 = v28;
          v30 = "archive_entry with no path after sanitization encountered.";
          v31 = 2;
LABEL_63:
          _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, v30, buf, v31);
          goto LABEL_19;
        }

        goto LABEL_19;
      }

      v28 = [v25 lastPathComponent];
      if ([v28 length]>= 0x81)
      {
        v33 = TRILogCategory_Archiving();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218498;
          v105 = 128;
          v106 = 2112;
          *v107 = v28;
          *&v107[8] = 2112;
          *&v107[10] = v10;
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Encountered fileName greater that %ld characters. Offending fileName: %@, archive identifier: %@", buf, 0x20u);
        }

LABEL_39:
        v32 = 0;
        goto LABEL_40;
      }

      v85 = v11;
      v86 = v10;
      v34 = [v25 pathComponents];
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v33 = v34;
      v35 = [v33 countByEnumeratingWithState:&v92 objects:v96 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v93;
        while (2)
        {
          for (i = 0; i != v36; i = i + 1)
          {
            if (*v93 != v37)
            {
              objc_enumerationMutation(v33);
            }

            if ([*(*(&v92 + 1) + 8 * i) isEqualToString:@".."])
            {
              v39 = TRILogCategory_Archiving();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v105 = v25;
              }

              v40 = v33;
              v11 = v85;
              v10 = v86;
              goto LABEL_38;
            }
          }

          v36 = [v33 countByEnumeratingWithState:&v92 objects:v96 count:16];
          if (v36)
          {
            continue;
          }

          break;
        }
      }

      if ([v33 count]>= 0x11)
      {
        v40 = TRILogCategory_Archiving();
        v11 = v85;
        v10 = v86;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v105 = v25;
          v106 = 2112;
          *v107 = v86;
          _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Directory depth more than maximum allowable depth. Stopping unarchival. Offending file: %@, archive identifier: %@", buf, 0x16u);
        }

LABEL_38:

        goto LABEL_39;
      }

      v32 = 1;
      v11 = v85;
      v10 = v86;
LABEL_40:

LABEL_41:
      objc_autoreleasePoolPop(v17);

      if (!v32)
      {
        goto LABEL_74;
      }

      archive_entry_perm();
      archive_entry_set_perm();
    }

    while (v27);
    v41 = [NSString alloc];
    v42 = archive_entry_pathname_utf8();
    if (!v42)
    {
      v62 = +[NSAssertionHandler currentHandler];
      [v62 handleFailureInMethod:a2 object:v88 file:@"TRIArchiveExtractor.m" lineNumber:350 description:{@"Expression was unexpectedly nil/false: %@", @"archive_entry_pathname_utf8(entry)"}];
    }

    v43 = [v41 initWithUTF8String:v42];
    if (!v43)
    {
      v65 = TRILogCategory_Archiving();
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_79;
      }

      v81 = archive_entry_pathname_utf8();
      *v96 = 136315138;
      v97 = v81;
      v67 = "unable to convert path to UTF-8: %s";
LABEL_104:
      _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, v67, v96, 0xCu);
      goto LABEL_79;
    }

    v44 = v43;
    v45 = [v44 lastPathComponent];
    v46 = [v45 hasPrefix:@"._"];
    v47 = v44;
    if (v16 != 0x4000)
    {
      v47 = v44;
      if (v46)
      {
        v48 = objc_opt_new();
        v49 = [v48 UUIDString];
        v50 = [v49 stringByAppendingString:v45];

        v51 = [v44 stringByDeletingLastPathComponent];
        v47 = [v51 stringByAppendingPathComponent:v50];

        [v47 fileSystemRepresentation];
        archive_entry_set_pathname_utf8();
        v52 = TRILogCategory_Archiving();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *v96 = 138412290;
          v97 = v44;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "warning: extracting AppleDouble path as regular file: %@", v96, 0xCu);
        }
      }
    }

    if (archive_write_header())
    {
      break;
    }

    if (!archive_entry_size_is_set() || archive_entry_size() >= 1)
    {
      v53 = [v88 _copyDataFromReadArchive:a4 toWriteDiskArchive:v89 remainingQuota:&v91 archiveIdentifier:v14 shouldDefer:v11];
      if (v53 == 2)
      {
        v64.var0 = v53;
        goto LABEL_92;
      }

      if (!v53)
      {
        v56 = TRILogCategory_Archiving();
        if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_91;
        }

        v73 = archive_error_string();
        *v96 = 136315138;
        v97 = v73;
        v71 = "error copying data to write archive - %s";
LABEL_88:
        v74 = v56;
        v75 = 12;
LABEL_89:
        _os_log_error_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, v71, v96, v75);
        goto LABEL_91;
      }
    }

    v54 = archive_write_finish_entry();
    v55 = TRILogCategory_Archiving();
    v56 = v55;
    if (v54)
    {
      if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_91;
      }

      v72 = archive_error_string();
      *v96 = 136315138;
      v97 = v72;
      v71 = "archive_write_finish_entry failed - %s";
      goto LABEL_88;
    }

    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      v57 = archive_entry_pathname();
      *v96 = 136315138;
      v97 = v57;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "finished writing archive entry %s", v96, 0xCu);
    }

    if (([v47 isEqualToString:v44] & 1) == 0)
    {
      v58 = [v47 fileSystemRepresentation];
      v59 = [v44 fileSystemRepresentation];
      rename(v58, v59, v60);
      if (v61)
      {
        v56 = TRILogCategory_Archiving();
        if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_91;
        }

        v82 = __error();
        v83 = strerror(*v82);
        v84 = *__error();
        *v96 = 138413058;
        v97 = v47;
        v98 = 2112;
        v99 = v44;
        v100 = 2080;
        v101 = v83;
        v102 = 1024;
        v103 = v84;
        v71 = "unable to rename munged AppleDouble path %@ --> %@: %s (%d)";
        v74 = v56;
        v75 = 38;
        goto LABEL_89;
      }
    }
  }

  v56 = TRILogCategory_Archiving();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
  {
    v70 = archive_error_string();
    *v96 = 136315138;
    v97 = v70;
    v71 = "archive_write_header failed - %s";
    goto LABEL_88;
  }

LABEL_91:

  v64.var0 = 0;
LABEL_92:

LABEL_93:
  v76 = archive_write_close();
  if (v64.var0 == 1 && v76)
  {
    v77 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      *v96 = 0;
      _os_log_error_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "unable to close archive_write_disk", v96, 2u);
    }

    v64.var0 = 0;
  }

  if (archive_write_free())
  {
    v78 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      *v96 = 0;
      _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "unable to free archive_write_disk", v96, 2u);
    }
  }

LABEL_102:

  return v64;
}

+ ($A5A652246548B43F8BC05201A1C72A70)extractArchiveFromHandle:(id)a3 toDestinationDirectoryURL:(id)a4 maxUnarchivedSize:(unint64_t)a5 archiveIdentifier:(id)a6 postExtractionCompression:(id)a7 shouldDefer:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a8;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v26 = +[NSAssertionHandler currentHandler];
    [v26 handleFailureInMethod:a2 object:a1 file:@"TRIArchiveExtractor.m" lineNumber:427 description:{@"Invalid parameter not satisfying: %@", @"archiveHandle"}];

    if (v16)
    {
      goto LABEL_3;
    }
  }

  v27 = +[NSAssertionHandler currentHandler];
  [v27 handleFailureInMethod:a2 object:a1 file:@"TRIArchiveExtractor.m" lineNumber:428 description:{@"Invalid parameter not satisfying: %@", @"destinationURL"}];

LABEL_3:
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = &stru_1000105A8;
  }

  v20 = objc_retainBlock(v19);

  v36 = 0;
  v37 = &v36;
  v38 = 0x2810000000;
  v39 = &unk_10000B013;
  v40 = 0;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100005C8C;
  v28[3] = &unk_1000105D0;
  v32 = &v36;
  v33 = a1;
  v21 = v15;
  v29 = v21;
  v34 = a5;
  v22 = v17;
  v30 = v22;
  v23 = v20;
  v31 = v23;
  var0 = a7.var0;
  [TRIArchiveExtractor _withLockAndDirectoryChangedToURL:v16 runBlock:v28];
  v24.var0 = *(v37 + 32);

  _Block_object_dispose(&v36, 8);
  return v24;
}

@end