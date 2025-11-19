void __PKExpirationDateFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1EB5B7CA8;
  qword_1EB5B7CA8 = v0;

  v2 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  v4 = PKLocaleWithOverriddenCalendar(v3, v2);

  [qword_1EB5B7CA8 setCalendar:v2];
  [qword_1EB5B7CA8 setLocale:v4];
  [qword_1EB5B7CA8 setDateFormat:@"MM/yy"];
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v6 setYear:-10];
  v7 = [qword_1EB5B7CA8 calendar];
  v8 = [v7 dateByAddingComponents:v6 toDate:v5 options:0];

  if (!v8)
  {
    v9 = PKLogFacilityTypeGetObject(0x30uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKExpirationDateFormatter failed to update date formatter with recent twoDigitStartDate", v10, 2u);
    }
  }

  [qword_1EB5B7CA8 setTwoDigitStartDate:v8];
}

uint64_t PKProtobufCloudStoreZoneInvitationRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v34[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34[0] & 0x7F) << v5;
        if ((v34[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        while (1)
        {
          LOBYTE(v34[0]) = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v34[0] & 0x7F) << v25;
          if ((v34[0] & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_56;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v27;
        }

LABEL_56:
        v31 = 40;
        goto LABEL_57;
      }

      if (v13 != 2)
      {
        goto LABEL_47;
      }

      v16 = objc_alloc_init(PKProtobufCloudStoreZoneInvitation);
      objc_storeStrong((a1 + 32), v16);
      v34[0] = 0;
      v34[1] = 0;
      if (!PBReaderPlaceMark() || !PKProtobufCloudStoreZoneInvitationReadFrom(v16, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_58:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 44) |= 1u;
        while (1)
        {
          LOBYTE(v34[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v34[0] & 0x7F) << v17;
          if ((v34[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_52;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_52:
        v31 = 8;
LABEL_57:
        *(a1 + v31) = v23;
        goto LABEL_58;
      case 4:
        v14 = PBReaderReadString();
        v15 = 24;
        goto LABEL_37;
      case 5:
        v14 = PBReaderReadString();
        v15 = 16;
LABEL_37:
        v24 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_58;
    }

LABEL_47:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_58;
  }

  return [a2 hasError] ^ 1;
}

uint64_t PKPassEntitlementCapabilityRoleValueFrom(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a1 == 999)
  {
    v5 = 7;
  }

  else
  {
    v5 = 0;
  }

  if (a1 == 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  if (a1 == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  if (a1 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (a1 <= 2)
  {
    v6 = v8;
  }

  if (a5)
  {
    v9 = 0x8000;
  }

  else
  {
    v9 = 0;
  }

  if (a4)
  {
    v6 |= 8u;
  }

  v10 = (a3 == 2) << 7;
  if (a3 == -1)
  {
    v10 = 144;
  }

  return (v9 | ((a2 == 2) << 11) | v10 | v6);
}

unint64_t FelicaTransitHistoryRecordFromFelicaRecord(void *a1)
{
  v1 = a1;
  v2 = [v1 transactionType];
  v3 = [v2 unsignedIntegerValue];
  v4 = [v1 sectorCombination];
  v5 = [v4 unsignedIntegerValue];
  v6 = [v1 balance];
  v7 = [v6 unsignedLongLongValue];
  v8 = [v1 amountType];
  [v8 unsignedIntegerValue];
  v9 = [v1 amount];

  [v9 integerValue];
  return (v5 << 8) | (v7 << 32) | v3;
}

uint64_t IsStartStationAvailable(unsigned int a1, unsigned int a2)
{
  LOBYTE(v2) = 1;
  if (a1 > 0x33)
  {
    goto LABEL_6;
  }

  if (((1 << a1) & 0xC00040000019CLL) != 0)
  {
    return v2 & 1;
  }

  if (((1 << a1) & 0x380062) == 0)
  {
LABEL_6:
    LOBYTE(v2) = a1 == 72;
    return v2 & 1;
  }

  v2 = 0xDFFF45FE >> a2;
  if (a2 >= 0x20)
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

BOOL PKIsCouponCodeError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  if ([v2 isEqualToString:@"PKPaymentErrorDomain"])
  {
    v3 = [v1 code] == 4 || objc_msgSend(v1, "code") == 5;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id PKArchiverZipData(NSURL *a1)
{
  v101 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v3 = 0;
LABEL_8:
    v8 = 0;
    goto LABEL_21;
  }

  v2 = v1;
  if (![(NSURL *)v1 isFileURL])
  {
    v9 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      buf.st_dev = 138412290;
      *&buf.st_mode = v2;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: unable to open non-file URL %@.", &buf, 0xCu);
    }

    v8 = 0;
    v3 = v2;
    goto LABEL_20;
  }

  v3 = [(NSURL *)v2 URLByStandardizingPath];

  disk_new = archive_read_disk_new();
  if (!disk_new)
  {
    goto LABEL_8;
  }

  v5 = disk_new;
  if (archive_read_disk_set_standard_lookup())
  {
    v6 = PKLogFacilityTypeGetObject(0);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    buf.st_dev = 136446210;
    *&buf.st_mode = archive_error_string();
    v7 = "PKZipArchiver: archive_read_disk unable to set reader lookup functions - %{public}s.";
    goto LABEL_15;
  }

  if (archive_read_disk_set_symlink_physical())
  {
    v6 = PKLogFacilityTypeGetObject(0);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    buf.st_dev = 136446210;
    *&buf.st_mode = archive_error_string();
    v7 = "PKZipArchiver: archive_read_disk unable to set reader symlink mode - %{public}s.";
LABEL_15:
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, v7, &buf, 0xCu);
LABEL_16:

    if (archive_read_free())
    {
      v9 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        buf.st_dev = 134217984;
        *&buf.st_mode = v5;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: unable to free archive_read_disk (leaking) - %p.", &buf, 0xCu);
      }

      v8 = 0;
      goto LABEL_20;
    }

    goto LABEL_8;
  }

  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:{objc_msgSend(v3, "fileSystemRepresentation")}];
  [v9 UTF8String];
  if (archive_read_disk_open())
  {
    v11 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      buf.st_dev = 136446210;
      *&buf.st_mode = archive_error_string();
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: unable to open read disk archive - %{public}s.", &buf, 0xCu);
    }

    v8 = 0;
    goto LABEL_59;
  }

  v12 = PKTemporaryItemURLWithExtension(@"zip", 0);
  v11 = [v12 URLByStandardizingPath];

  PKTemporaryItemPrepareDirectory();
  v13 = open([v11 fileSystemRepresentation], 2566, 384);
  if (v13 < 0)
  {
    v23 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = __error();
      v25 = strerror(*v24);
      buf.st_dev = 138412546;
      *&buf.st_mode = v11;
      WORD2(buf.st_ino) = 2082;
      *(&buf.st_ino + 6) = v25;
      _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: unable to create output file %@ - %{public}s.", &buf, 0x16u);
    }

    v8 = 0;
    goto LABEL_55;
  }

  v14 = v13;
  v15 = v9;
  if (!v15)
  {
    goto LABEL_48;
  }

  v16 = NSPageSize();
  v17 = malloc_type_malloc(v16, 0x3FB52ADDuLL);
  if (!v17)
  {
    goto LABEL_48;
  }

  v18 = v17;
  v19 = archive_write_new();
  if (!v19)
  {
LABEL_47:
    free(v18);
    goto LABEL_48;
  }

  v20 = v19;
  v93 = v18;
  if (archive_write_set_format_zip())
  {
    v21 = PKLogFacilityTypeGetObject(0);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_43;
    }

    buf.st_dev = 136446210;
    *&buf.st_mode = archive_error_string();
    v22 = "PKZipArchiver: unable to set archive_write supported formats - %{public}s.";
LABEL_41:
    v26 = v21;
    v27 = 12;
    goto LABEL_42;
  }

  if (archive_write_set_format_option())
  {
    v21 = PKLogFacilityTypeGetObject(0);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_43;
    }

    buf.st_dev = 136446210;
    *&buf.st_mode = archive_error_string();
    v22 = "PKZipArchiver: unable to set archive_write supported compression formats - %{public}s.";
    goto LABEL_41;
  }

  if (archive_write_open_fd())
  {
    v21 = PKLogFacilityTypeGetObject(0);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
LABEL_43:

      v18 = v93;
      if (archive_write_free())
      {
        v28 = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          buf.st_dev = 134217984;
          *&buf.st_mode = v20;
          _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: unable to free archive_write (leaking) - %p.", &buf, 0xCu);
        }

        v18 = v93;
      }

      goto LABEL_47;
    }

    buf.st_dev = 67240450;
    *&buf.st_mode = v14;
    LOWORD(buf.st_ino) = 2082;
    *(&buf.st_ino + 2) = archive_error_string();
    v22 = "PKZipArchiver: archive_write unable to open file descriptor %{public}d - %{public}s.";
    v26 = v21;
    v27 = 18;
LABEL_42:
    _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, v22, &buf, v27);
    goto LABEL_43;
  }

  v86 = v16;
  v92 = v20;
  v88 = v15;
  v35 = [v15 pathComponents];
  v87 = [v35 count];

  while (1)
  {
    do
    {
      *v95 = 0;
      next_header = archive_read_next_header();
      if (next_header)
      {
        if (next_header == 1)
        {
          v62 = 1;
          goto LABEL_124;
        }

        v63 = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v64 = archive_error_string();
          buf.st_dev = 136446210;
          *&buf.st_mode = v64;
          v65 = "PKZipArchiver: archive_read_next_header failed - %{public}s.";
          goto LABEL_120;
        }

        goto LABEL_122;
      }

      archive_read_disk_descend();
      v37 = archive_entry_filetype();
      context = objc_autoreleasePoolPush();
      v38 = archive_entry_pathname_utf8();
      if (!v38)
      {
        v66 = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.st_dev) = 0;
          _os_log_impl(&dword_1AD337000, v66, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: archive_entry with no path encountered.", &buf, 2u);
        }

        goto LABEL_115;
      }

      v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v38];
      v40 = [v39 pathComponents];
      v41 = [v40 count];
      v90 = v39;
      if (![v39 hasPrefix:v88] || v41 < v87)
      {
        v67 = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          buf.st_dev = 138412546;
          *&buf.st_mode = v90;
          WORD2(buf.st_ino) = 2112;
          *(&buf.st_ino + 6) = v88;
          _os_log_impl(&dword_1AD337000, v67, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: (implementation error) relative paths cannot be computed for %@ - %@.", &buf, 0x16u);
        }

LABEL_115:
        objc_autoreleasePoolPop(context);
        goto LABEL_123;
      }

      v42 = v40;
      v43 = [v40 subarrayWithRange:{v87, v41 - v87}];
      v89 = v37;
      if ([v43 count])
      {
        v44 = [MEMORY[0x1E696AEC0] pathWithComponents:v43];
        if ([v44 length])
        {
          if (v44)
          {
            [v44 fileSystemRepresentation];
            archive_entry_update_pathname_utf8();
            v45 = 1;
            goto LABEL_81;
          }

          v37 = v89;
        }

        else
        {

          v37 = v89;
        }
      }

      archive_entry_update_pathname_utf8();
      if (v37 == 0x4000)
      {
        v46 = 1;
        v45 = 1;
        goto LABEL_82;
      }

      v44 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        buf.st_dev = 138412290;
        *&buf.st_mode = v88;
        _os_log_impl(&dword_1AD337000, v44, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: non-directory archive target path %@.", &buf, 0xCu);
      }

      v45 = 0;
LABEL_81:

      v46 = 0;
LABEL_82:

      objc_autoreleasePoolPop(context);
      if (!v45)
      {
        goto LABEL_123;
      }
    }

    while ((v46 & 1) != 0);
    if (archive_write_header())
    {
      v63 = PKLogFacilityTypeGetObject(0);
      if (!os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_122;
      }

      v68 = archive_error_string();
      buf.st_dev = 136446210;
      *&buf.st_mode = v68;
      v65 = "PKZipArchiver: archive_write_header failed - %{public}s.";
      goto LABEL_120;
    }

    v47 = 0;
    if (v89 != 0x4000 && v89 != 40960)
    {
      break;
    }

LABEL_102:
    if (archive_write_finish_entry())
    {
      v63 = PKLogFacilityTypeGetObject(0);
      if (!os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_122;
      }

      v69 = archive_error_string();
      buf.st_dev = 136446210;
      *&buf.st_mode = v69;
      v65 = "PKZipArchiver: archive_write_finish_entry failed - %{public}s.";
LABEL_120:
      v70 = v63;
      v71 = 12;
LABEL_121:
      _os_log_impl(&dword_1AD337000, v70, OS_LOG_TYPE_DEFAULT, v65, &buf, v71);
      goto LABEL_122;
    }

    if (v47)
    {
      goto LABEL_123;
    }
  }

  v48 = archive_entry_sourcepath();
  v49 = open(v48, 0x200000);
  v50 = v93;
  if ((v49 & 0x80000000) == 0)
  {
    while (1)
    {
      v51 = read(v49, v50, v86);
      v47 = v51 != 0;
      if (!v51)
      {
        break;
      }

      if (v51 < 0)
      {
        v52 = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v57 = __error();
          v58 = strerror(*v57);
          buf.st_dev = 67240450;
          *&buf.st_mode = v49;
          LOWORD(buf.st_ino) = 2082;
          *(&buf.st_ino + 2) = v58;
          v54 = v52;
          v55 = "PKZipArchiver: unable to read file data from descriptor %{public}d for header - %{public}s.";
          v56 = 18;
LABEL_96:
          _os_log_impl(&dword_1AD337000, v54, OS_LOG_TYPE_DEFAULT, v55, &buf, v56);
        }

LABEL_97:

        break;
      }

      v50 = v93;
      if (archive_write_data() < 0)
      {
        v52 = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v53 = archive_error_string();
          buf.st_dev = 136446210;
          *&buf.st_mode = v53;
          v54 = v52;
          v55 = "PKZipArchiver: archive_write_data failed - %{public}s.";
          v56 = 12;
          goto LABEL_96;
        }

        goto LABEL_97;
      }
    }

    if (close(v49))
    {
      v59 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v60 = __error();
        v61 = strerror(*v60);
        buf.st_dev = 67240450;
        *&buf.st_mode = v49;
        LOWORD(buf.st_ino) = 2082;
        *(&buf.st_ino + 2) = v61;
        _os_log_impl(&dword_1AD337000, v59, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: unable to close file descriptor %{public}d for header (leaking) - %{public}s.", &buf, 0x12u);
      }
    }

    goto LABEL_102;
  }

  v63 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    v84 = __error();
    v85 = strerror(*v84);
    buf.st_dev = 67240450;
    *&buf.st_mode = v89;
    LOWORD(buf.st_ino) = 2082;
    *(&buf.st_ino + 2) = v85;
    v65 = "PKZipArchiver: failed to open file for header of type %{public}ud - %{public}s.";
    v70 = v63;
    v71 = 18;
    goto LABEL_121;
  }

LABEL_122:

LABEL_123:
  v62 = 0;
LABEL_124:
  free(v93);
  if (archive_write_close())
  {
    v72 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      v73 = archive_error_string();
      buf.st_dev = 136446210;
      *&buf.st_mode = v73;
      _os_log_impl(&dword_1AD337000, v72, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: unable to close archive_write - %{public}s.", &buf, 0xCu);
    }

    v62 = 0;
  }

  if (!archive_write_free())
  {

    if (v62)
    {
      goto LABEL_134;
    }

    goto LABEL_49;
  }

  v74 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
  {
    buf.st_dev = 134217984;
    *&buf.st_mode = v92;
    _os_log_impl(&dword_1AD337000, v74, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: unable to free archive_write (leaking) - %p.", &buf, 0xCu);
  }

  if ((v62 & 1) == 0)
  {
LABEL_49:
    v8 = 0;
    goto LABEL_50;
  }

LABEL_134:
  memset(&buf, 0, sizeof(buf));
  if (fstat(v14, &buf))
  {
    v15 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v75 = __error();
      v76 = strerror(*v75);
      *v95 = 67240706;
      *&v95[4] = v14;
      v96 = 2112;
      v97 = v11;
      v98 = 2082;
      v99 = v76;
      v77 = "PKZipArchiver: unable to fstat %{public}d for %@ - %{public}s.";
      goto LABEL_137;
    }

    goto LABEL_48;
  }

  if (buf.st_size < 1)
  {
    goto LABEL_49;
  }

  v78 = buf.st_size & ~(buf.st_size >> 63);
  v79 = mmap(0, v78, 1, 2, v14, 0);
  if (v79 == -1)
  {
    v15 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v82 = __error();
      v83 = strerror(*v82);
      *v95 = 67240706;
      *&v95[4] = v14;
      v96 = 2112;
      v97 = v11;
      v98 = 2082;
      v99 = v83;
      v77 = "PKZipArchiver: unable to mmap file descriptor %{public}d for %@ - %{public}s.";
LABEL_137:
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, v77, v95, 0x1Cu);
    }

LABEL_48:

    goto LABEL_49;
  }

  v80 = v79;
  v81 = objc_alloc(MEMORY[0x1E695DEF0]);
  v94[0] = MEMORY[0x1E69E9820];
  v94[1] = 3221225472;
  v94[2] = ___Z17PKArchiverZipDataP5NSURL_block_invoke;
  v94[3] = &__block_descriptor_48_e12_v24__0_v8Q16l;
  v94[4] = v80;
  v94[5] = v78;
  v8 = [v81 initWithBytesNoCopy:v80 length:v78 deallocator:v94];
LABEL_50:
  if (close(v14))
  {
    v29 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = __error();
      v31 = strerror(*v30);
      buf.st_dev = 67240706;
      *&buf.st_mode = v14;
      LOWORD(buf.st_ino) = 2112;
      *(&buf.st_ino + 2) = v11;
      HIWORD(buf.st_uid) = 2082;
      *&buf.st_gid = v31;
      _os_log_impl(&dword_1AD337000, v29, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: unable to close file descriptor %{public}d for %@ (leaking) - %{public}s.", &buf, 0x1Cu);
    }
  }

  unlink([v11 fileSystemRepresentation]);
LABEL_55:
  if (archive_read_close())
  {
    v32 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = archive_error_string();
      buf.st_dev = 136446210;
      *&buf.st_mode = v33;
      _os_log_impl(&dword_1AD337000, v32, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: unable to close read disk archive - %{public}s.", &buf, 0xCu);
    }
  }

LABEL_59:

  if (archive_read_free())
  {
    v34 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      buf.st_dev = 134217984;
      *&buf.st_mode = v5;
      _os_log_impl(&dword_1AD337000, v34, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: unable to free read disk archive (leaking) - %p.", &buf, 0xCu);
    }
  }

LABEL_20:

LABEL_21:

  return v8;
}

void ___Z17PKArchiverZipDataP5NSURL_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (munmap(*(a1 + 32), *(a1 + 40)))
  {
    v1 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      v4 = __error();
      v5 = strerror(*v4);
      v6 = 136446210;
      v7 = v5;
      _os_log_fault_impl(&dword_1AD337000, v1, OS_LOG_TYPE_FAULT, "Failed to unmap file - %{public}s! Leaking mapping...", &v6, 0xCu);
    }

    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v2 = __error();
      v3 = strerror(*v2);
      v6 = 136446210;
      v7 = v3;
      _os_log_impl(&dword_1AD337000, v1, OS_LOG_TYPE_DEFAULT, "Failed to unmap file - %{public}s! Leaking mapping...", &v6, 0xCu);
    }
  }
}

uint64_t PKUnarchiverZip(NSURL *a1, NSURL *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (!v3 || !v4)
  {
    goto LABEL_15;
  }

  if (![(NSURL *)v3 isFileURL])
  {
    v9 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      *v19 = v3;
      v12 = "PKZipArchiver: unable to open non-file URL %@.";
      v13 = v9;
      v14 = 12;
LABEL_12:
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, v12, &v18, v14);
    }

LABEL_13:
    v6 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v7 = open([(NSURL *)v3 fileSystemRepresentation], 4);
  if (v7 < 0)
  {
    v9 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = __error();
      v16 = strerror(*v15);
      v18 = 138412546;
      *v19 = v3;
      *&v19[8] = 2082;
      *&v19[10] = v16;
      v12 = "PKZipArchiver: unable to open file %@ - %{public}s.";
      v13 = v9;
      v14 = 22;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v8 = v7;
  v6 = PKUnarchiverZip(v7, v5, 0x600000uLL);
  if (close(v8))
  {
    v9 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = __error();
      v11 = strerror(*v10);
      v18 = 67240706;
      *v19 = v8;
      *&v19[4] = 2112;
      *&v19[6] = v3;
      *&v19[14] = 2082;
      *&v19[16] = v11;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: unable to close file descriptor %{public}d for %@ (leaking) - %{public}s.", &v18, 0x1Cu);
    }

    goto LABEL_14;
  }

LABEL_15:

  return v6;
}

uint64_t PKUnarchiverZip(NSData *a1, NSURL *a2)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  v4 = a1;
  v5 = a2;
  v6 = a1;
  v7 = [(NSData *)v6 bytes];
  v8 = [(NSData *)v6 length];

  v9 = PKUnarchiverZip(v7, v8, v5, 0x600000uLL);
  return v9;
}

uint64_t PKUnarchiverZip(int a1, NSURL *a2, unint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  v7 = 0;
  if (a1 < 0 || !v5)
  {
    goto LABEL_14;
  }

  Archive = PKCreateReadArchive();
  if (!Archive)
  {
    v7 = 0;
    goto LABEL_14;
  }

  v9 = Archive;
  NSPageSize();
  if (archive_read_open_fd())
  {
    v10 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136446210;
      v14 = archive_error_string();
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: unable to open archive_read - %{public}s.", &v13, 0xCu);
    }

    v7 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v7 = PKZipUnarchive(v9, v6, a3);
  if (archive_read_close())
  {
    v10 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136446210;
      v14 = archive_error_string();
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: unable to close archive_read - %{public}s.", &v13, 0xCu);
    }

    goto LABEL_8;
  }

LABEL_9:
  if (archive_read_free())
  {
    v11 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = v9;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: unable to free archive_read (leaking) - %p.", &v13, 0xCu);
    }
  }

LABEL_14:

  return v7;
}

uint64_t PKCreateReadArchive()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = archive_read_new();
  if (v0)
  {
    if (archive_read_support_format_zip())
    {
      v1 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136446210;
        v7 = archive_error_string();
        _os_log_impl(&dword_1AD337000, v1, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: archive_read unable to set supported formats - %{public}s.", &v6, 0xCu);
      }
    }

    else
    {
      support_filter_all = archive_read_support_filter_all();
      if (support_filter_all == -20 || !support_filter_all)
      {
        return v0;
      }

      v5 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136446210;
        v7 = archive_error_string();
        _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: archive_read unable to set supported compression formats - %{public}s.", &v6, 0xCu);
      }
    }

    if (archive_read_free())
    {
      v2 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 134217984;
        v7 = v0;
        _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: unable to free archive_read (leaking) - %p.", &v6, 0xCu);
      }
    }

    return 0;
  }

  return v0;
}

uint64_t PKZipUnarchive(uint64_t a1, void *a2, unint64_t a3)
{
  v66[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (([v4 isFileURL] & 1) == 0)
  {
    v8 = PKLogFacilityTypeGetObject(0);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_24:
      v19 = 0;
      goto LABEL_25;
    }

    *buf = 138412290;
    v62 = v4;
    v14 = "PKZipArchiver: unable to write to non-file URL %@.";
LABEL_9:
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, v14, buf, 0xCu);
    goto LABEL_24;
  }

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v65 = *MEMORY[0x1E696A370];
  v66[0] = &unk_1F23B4A48;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:&v65 count:1];
  v60[0] = 0;
  v7 = [v5 createDirectoryAtURL:v4 withIntermediateDirectories:0 attributes:v6 error:v60];
  v8 = v60[0];

  if (v7)
  {
    goto LABEL_3;
  }

  v15 = [v8 domain];
  if (![v15 isEqualToString:*MEMORY[0x1E696A250]])
  {

LABEL_14:
    v17 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v62 = v4;
      v63 = 2112;
      v64 = v8;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: failed to create directory at %@ - %@.", buf, 0x16u);
    }

    goto LABEL_24;
  }

  v16 = [v8 code];

  if (v16 != 516)
  {
    goto LABEL_14;
  }

LABEL_3:

  v9 = archive_write_disk_new();
  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = v9;
  if (archive_write_disk_set_standard_lookup())
  {
    v11 = PKLogFacilityTypeGetObject(0);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v12 = archive_error_string();
    *buf = 136446210;
    v62 = v12;
    v13 = "PKZipArchiver: archive_write_disk unable to set lookup functions - %{public}s.";
    goto LABEL_20;
  }

  if (archive_write_disk_set_options())
  {
    v11 = PKLogFacilityTypeGetObject(0);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v18 = archive_error_string();
    *buf = 136446210;
    v62 = v18;
    v13 = "PKZipArchiver: archive_write_disk unable to set options - %{public}s.";
LABEL_20:
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
LABEL_21:

    if (archive_write_free())
    {
      v8 = PKLogFacilityTypeGetObject(0);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 134217984;
      v62 = v10;
      v14 = "PKZipArchiver: unable to free archive_write_disk (leaking) - %p.";
      goto LABEL_9;
    }

LABEL_27:
    v19 = 0;
    goto LABEL_26;
  }

  v21 = [v4 path];
  v8 = v21;
  if (v21)
  {
    v23 = realpath_DARWIN_EXTSN([v21 fileSystemRepresentation], 0);
    if (v23)
    {
      v24 = v23;
      v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v23];

      free(v24);
      v8 = v25;
    }

    else
    {
      v26 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = __error();
        v28 = strerror(*v27);
        *buf = 138412546;
        v62 = v8;
        v63 = 2080;
        v64 = v28;
        _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: unable to resolve physical path for destination path %@ - %s.", buf, 0x16u);
      }
    }
  }

  *&v22 = 134218240;
  v59 = v22;
  do
  {
    do
    {
      next_header = archive_read_next_header();
      if (next_header)
      {
        if (next_header == 1)
        {
          v19 = 1;
          goto LABEL_85;
        }

        v49 = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v52 = archive_error_string();
          *buf = 136446210;
          v62 = v52;
          v48 = "PKZipArchiver: archive_read_next_header failed - %{public}s.";
LABEL_69:
          _os_log_impl(&dword_1AD337000, v49, OS_LOG_TYPE_DEFAULT, v48, buf, 0xCu);
        }

        goto LABEL_70;
      }

      v30 = archive_entry_filetype();
      v31 = objc_autoreleasePoolPush();
      v32 = archive_entry_pathname_utf8();
      if (!v32)
      {
        v53 = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v53, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: archive_entry with no path encountered.", buf, 2u);
        }

LABEL_77:
        objc_autoreleasePoolPop(v31);
        goto LABEL_84;
      }

      v33 = v32;
      v34 = -1;
      do
      {
        v35 = *(v32 + v34++ + 1);
      }

      while (v35 == 47);
      if (v34)
      {
        v36 = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = strlen(v33);
          *buf = v59;
          v62 = v34;
          v63 = 2048;
          v64 = v37;
          _os_log_impl(&dword_1AD337000, v36, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: archive_entry with absolute path encountered...ignoring leading %zu of %zu bytes.", buf, 0x16u);
        }
      }

      v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:&v33[v34]];
      v39 = [v38 length];
      if (!v39 && v30 != 0x4000)
      {
        v54 = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v54, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: archive_entry with no path after sanitization encountered.", buf, 2u);
        }

        goto LABEL_77;
      }

      v40 = [v8 stringByAppendingPathComponent:v38, v59];

      [v40 fileSystemRepresentation];
      archive_entry_update_pathname_utf8();

      objc_autoreleasePoolPop(v31);
      archive_entry_perm();
      archive_entry_set_perm();
    }

    while (!v39);
    if (archive_write_header())
    {
      v44 = PKLogFacilityTypeGetObject(0);
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_83;
      }

      v55 = archive_error_string();
      *buf = 136446210;
      v62 = v55;
      v46 = "PKZipArchiver: archive_write_header failed - %{public}s.";
      goto LABEL_82;
    }

    v41 = archive_entry_size();
    if (archive_entry_size_is_set())
    {
      if (v41 >= 1)
      {
        if (!a3 || v41 <= a3)
        {
          do
          {
            memset(&v60[1], 0, 24);
            data_block = archive_read_data_block();
            if (data_block)
            {
              if (data_block == 1)
              {
                goto LABEL_58;
              }

              v49 = PKLogFacilityTypeGetObject(0);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
              {
                v47 = archive_error_string();
                *buf = 136446210;
                v62 = v47;
                v48 = "PKZipArchiver: archive_read_data_block failed - %{public}s.";
                goto LABEL_69;
              }

              goto LABEL_70;
            }
          }

          while ((archive_write_data_block() & 0x8000000000000000) == 0);
          v49 = PKLogFacilityTypeGetObject(0);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            v51 = archive_error_string();
            *buf = 136446210;
            v62 = v51;
            v48 = "PKZipArchiver: archive_write_data_block failed - %{public}s.";
            goto LABEL_69;
          }

LABEL_70:

          goto LABEL_84;
        }

        v44 = PKLogFacilityTypeGetObject(0);
        if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_83;
        }

        *buf = 134349056;
        v62 = a3;
        v46 = "PKZipArchiver: archive_entry greater than allowed size of %{public}zu.";
LABEL_82:
        _os_log_impl(&dword_1AD337000, v44, OS_LOG_TYPE_DEFAULT, v46, buf, 0xCu);
        goto LABEL_83;
      }
    }

    else
    {
      v43 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v43, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: not writing archive_entry with unknown size", buf, 2u);
      }
    }

LABEL_58:
    ;
  }

  while (!archive_write_finish_entry());
  v44 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = archive_error_string();
    *buf = 136446210;
    v62 = v45;
    v46 = "PKZipArchiver: archive_write_finish_entry failed - %{public}s.";
    goto LABEL_82;
  }

LABEL_83:

LABEL_84:
  v19 = 0;
LABEL_85:
  if (archive_write_close())
  {
    v56 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = archive_error_string();
      *buf = 136446210;
      v62 = v57;
      _os_log_impl(&dword_1AD337000, v56, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: unable to close archive_write_disk - %{public}s.", buf, 0xCu);
    }

    v19 = 0;
  }

  if (archive_write_free())
  {
    v58 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v62 = v10;
      _os_log_impl(&dword_1AD337000, v58, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: unable to free archive_write_disk (leaking) - %p.", buf, 0xCu);
    }
  }

LABEL_25:

LABEL_26:
  return v19;
}

uint64_t PKUnarchiverZip(const void *a1, unint64_t a2, NSURL *a3, unint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  v8 = 0;
  if (!a1 || !v6)
  {
    goto LABEL_14;
  }

  Archive = PKCreateReadArchive();
  if (!Archive)
  {
    v8 = 0;
    goto LABEL_14;
  }

  v10 = Archive;
  if (archive_read_open_memory())
  {
    v11 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136446210;
      v15 = archive_error_string();
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: unable to open archive_read - %{public}s.", &v14, 0xCu);
    }

    v8 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v8 = PKZipUnarchive(v10, v7, a4);
  if (archive_read_close())
  {
    v11 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136446210;
      v15 = archive_error_string();
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: unable to close archive_read - %{public}s.", &v14, 0xCu);
    }

    goto LABEL_8;
  }

LABEL_9:
  if (archive_read_free())
  {
    v12 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134217984;
      v15 = v10;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "PKZipArchiver: unable to free archive_read (leaking) - %p.", &v14, 0xCu);
    }
  }

LABEL_14:

  return v8;
}

void sub_1AD57D568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD57D800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD57DA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD57DCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD57DEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD57E39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD57E504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD57E66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD57ED70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PKDataTypeIdentifier(void *a1)
{
  v3 = 0;
  [a1 getResourceValue:&v3 forKey:*MEMORY[0x1E695DC68] error:0];
  v1 = v3;

  return v1;
}

id PKValidationErrorWithReason(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v17 = *MEMORY[0x1E696A578];
    v9 = MEMORY[0x1E696AEC0];
    v10 = a1;
    v11 = [[v9 alloc] initWithFormat:v10 arguments:&a9];

    v18[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  }

  else
  {
    v12 = 0;
  }

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:{v12, &a9, v17}];
  v14 = PKLocalizedString(&cfstr_PassValidation.isa, 0);
  v15 = _PKErrorWithDescriptionAndUnderlyingError(v14, v13);

  return v15;
}

id _PKErrorWithDescriptionAndUnderlyingError(void *a1, void *a2)
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a2;
  v5 = a1;
  v6 = objc_alloc_init(v3);
  [v6 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696A578]];

  [v6 setObject:v4 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v6];

  return v7;
}

id PKTransactionReceiptDictionaryURLWithTransactionReceiptURL(void *a1)
{
  v1 = a1;
  v2 = [@"receipt" stringByAppendingPathExtension:@"json"];
  v3 = [v1 URLByAppendingPathComponent:v2 isDirectory:1];

  return v3;
}

uint64_t PKNetworkConnectivityAvailable()
{
  flags = 0;
  if (qword_1ED6D1200 != -1)
  {
    dispatch_once(&qword_1ED6D1200, &__block_literal_global_116);
  }

  if (SCNetworkReachabilityGetFlags(qword_1ED6D1208, &flags))
  {
    return (flags >> 1) & 1;
  }

  else
  {
    return 0;
  }
}

void __PKNetworkConnectivityAvailable_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = xmmword_1ADB99310;
  v0 = SCNetworkReachabilityCreateWithAddress(*MEMORY[0x1E695E480], &v3);
  qword_1ED6D1208 = v0;
  if (v0)
  {
    if (SCNetworkReachabilitySetCallback(v0, PKNetworkConnectivityAvailableCallback, 0))
    {
      v1 = qword_1ED6D1208;
      v2 = dispatch_get_global_queue(0, 0);
      SCNetworkReachabilitySetDispatchQueue(v1, v2);
    }
  }
}

void PKNetworkConnectivityAvailableCallback()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"PKNetworkConnectivityChangedNotification" object:0];
}

uint64_t PKIsPad()
{
  if (qword_1ED6D1260 != -1)
  {
    dispatch_once(&qword_1ED6D1260, &__block_literal_global_333);
  }

  return byte_1ED6D11CB;
}

double PKGetMaxPassWidth()
{
  v0 = PKScreenSize();

  return PKGetMaxPassWidthForScreenSize(v0);
}

void PKGetMaxPassHeight()
{
  PKScreenSize();

  PKGetMaxPassHeightForScreenSize();
}

uint64_t PKRearCameraIsAllowed()
{
  result = MGGetBoolAnswer();
  if (result)
  {
    return PKCameraAccessAllowed();
  }

  return result;
}

BOOL PKCameraAccessAllowed()
{
  v0 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v1 = [v0 effectiveBoolValueForSetting:*MEMORY[0x1E69ADE00]] != 2;

  return v1;
}

uint64_t PKKillProcess(void *a1)
{
  __argv[4] = *MEMORY[0x1E69E9840];
  v5 = 0;
  v1 = a1;
  posix_spawnattr_init(&v5);
  posix_spawnattr_setflags(&v5, 0);
  __argv[0] = "/usr/bin/killall";
  __argv[1] = "-9";
  v2 = [v1 UTF8String];

  __argv[2] = v2;
  __argv[3] = 0;
  v4 = 0;
  printf("    Killing %s\n", "-9");
  posix_spawn(&v4, "/usr/bin/killall", 0, &v5, __argv, 0);
  posix_spawnattr_destroy(&v5);
  return waitpid(v4, 0, 0);
}

id PKStringWithValidatedFormatWithLocale(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a3;
  v20[1] = &a9;
  v13 = MEMORY[0x1E696AEC0];
  v14 = a2;
  v20[0] = 0;
  v15 = [[v13 alloc] initWithValidatedFormat:v11 validFormatSpecifiers:v12 locale:v14 arguments:&a9 error:v20];

  v16 = v20[0];
  if (v16 || !v15)
  {
    v17 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v22 = v11;
      v23 = 2114;
      v24 = v12;
      v25 = 2114;
      v26 = v16;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Failed to format string with format: %{public}@ and validFormatSpecifiers %{public}@ error: %{public}@", buf, 0x20u);
    }

    v18 = v11;
    v15 = v18;
  }

  return v15;
}

id PKLocalizedStringForCountryCode(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 localizedStringForCountryCode:v3];
  if (!v4)
  {
    if (qword_1ED6D1218 != -1)
    {
      dispatch_once(&qword_1ED6D1218, &__block_literal_global_129);
    }

    v4 = [qword_1ED6D1210 localizedStringForCountryCode:v3];
  }

  return v4;
}

void __PKLocalizedStringForCountryCode_block_invoke()
{
  v0 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  v1 = qword_1ED6D1210;
  qword_1ED6D1210 = v0;
}

uint64_t PKNumberingSystemForLocale(void *a1)
{
  v1 = [a1 numberingSystem];
  v2 = v1;
  if (v1 != @"latn" && v1 != 0)
  {
    v4 = [(__CFString *)v1 isEqualToString:@"latn"];

    if ((v4 & 1) == 0)
    {
      v7 = v2;
      if (v7 == @"arab" || (v8 = v7, v9 = [(__CFString *)v7 isEqualToString:@"arab"], v8, (v9 & 1) != 0))
      {
        v5 = 1;
        goto LABEL_7;
      }

      v10 = v8;
      if (v10 == @"deva" || (v11 = v10, v12 = [(__CFString *)v10 isEqualToString:@"deva"], v11, v12))
      {
        v5 = 2;
        goto LABEL_7;
      }
    }
  }

  v5 = 0;
LABEL_7:

  return v5;
}

SecCertificateRef PKCreateQARootCACertificate()
{
  v0 = *MEMORY[0x1E695E480];
  v1 = [MEMORY[0x1E695DEF0] dataWithBytes:&TestAppleRootCAECC length:555];
  v2 = SecCertificateCreateWithData(v0, v1);

  return v2;
}

void PKCreateTrustAndValidateAsync(void *a1, const void *a2, const void *a3, void *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  v9 = [v7 count];
  v28 = v7;
  if (a2 && v9)
  {
    policies = a2;
    CFRetain(a2);
    if (a3)
    {
      CFRetain(a3);
    }

    cf = a3;
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v12)
    {
      v13 = *v38;
      v14 = *MEMORY[0x1E695E480];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v38 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v16 = SecCertificateCreateWithData(v14, *(*(&v37 + 1) + 8 * i));
          if (v16)
          {
            [v10 addObject:v16];
            CFRelease(v16);
          }

          else
          {
            v17 = PKLogFacilityTypeGetObject(7uLL);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Unable to decode cert.", buf, 2u);
            }
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v12);
    }

    if (![v10 count])
    {
      v18 = policies;
      if (v8)
      {
        (*(v8 + 2))(v8, 0, 0);
        v18 = policies;
      }

      goto LABEL_45;
    }

    *buf = 0;
    v34 = buf;
    v35 = 0x2020000000;
    v36 = 0;
    v18 = policies;
    if (SecTrustCreateWithCertificates(v10, policies, &v36))
    {
      goto LABEL_19;
    }

    if (cf || PKBypassCertValidation())
    {
      v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (cf)
      {
        v21 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *v32 = 0;
          _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "Adding QA anchor certificate...", v32, 2u);
        }

        [v20 addObjectsFromArray:cf];
      }

      if (PKBypassCertValidation())
      {
        v22 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *v32 = 0;
          _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "Certificate validation disabled. Implicitly trusting leaf…", v32, 2u);
        }

        v23 = [v10 firstObject];
        [v20 addObject:v23];
      }

      if ([v20 count])
      {
        v24 = SecTrustSetAnchorCertificates(*(v34 + 3), v20) == 0;

        v18 = policies;
        if (!v24)
        {
LABEL_19:
          if (v8)
          {
            (*(v8 + 2))(v8, 0, 0);
          }

          v19 = *(v34 + 3);
          if (v19)
          {
            CFRelease(v19);
            *(v34 + 3) = 0;
          }

LABEL_44:
          _Block_object_dispose(buf, 8);
LABEL_45:
          CFRelease(v18);
          if (cf)
          {
            CFRelease(cf);
          }

          goto LABEL_48;
        }
      }

      else
      {
      }
    }

    if (qword_1ED6D1228 != -1)
    {
      dispatch_once(&qword_1ED6D1228, &__block_literal_global_144);
    }

    v25 = qword_1ED6D1220;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __PKCreateTrustAndValidateAsync_block_invoke_2;
    block[3] = &unk_1E79C8870;
    v31 = buf;
    v30 = v8;
    dispatch_async(v25, block);

    v18 = policies;
    goto LABEL_44;
  }

  if (v8)
  {
    (*(v8 + 2))(v8, 0, 0);
  }

LABEL_48:
}

void sub_1AD57FFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PKCreateTrustAndValidateAsync_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.passkitcore.createtrust", v2);
  v1 = qword_1ED6D1220;
  qword_1ED6D1220 = v0;
}

void __PKCreateTrustAndValidateAsync_block_invoke_2(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  v3 = qword_1ED6D1220;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __PKCreateTrustAndValidateAsync_block_invoke_3;
  v8[3] = &unk_1E79C8848;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  if (SecTrustEvaluateAsyncWithError(v2, v3, v8))
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      (*(v6 + 16))(v6, 0, 0);
    }

    v7 = *(*(*(a1 + 40) + 8) + 24);
    if (v7)
    {
      CFRelease(v7);
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }
}

void __PKCreateTrustAndValidateAsync_block_invoke_3(uint64_t a1, SecTrustRef trust, int a3, __CFError *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  result = kSecTrustResultInvalid;
  if (SecTrustGetTrustResult(trust, &result) || (result != kSecTrustResultUnspecified ? (v7 = result == kSecTrustResultProceed) : (v7 = 1), v7 ? (v8 = a3 == 0) : (v8 = 1), v8))
  {
    v9 = SecTrustCopyFailureDescription();
    if (a4)
    {
      a4 = CFErrorCopyDescription(a4);
    }

    v10 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v9;
      v18 = 2112;
      v19 = a4;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Error evaluating trust: %@ - %@.", buf, 0x16u);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (a4)
    {
      CFRelease(a4);
    }
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Trust validated.", buf, 2u);
    }
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))();
  }

  v12 = *(*(*(a1 + 40) + 8) + 24);
  if (v12)
  {
    CFRelease(v12);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

uint64_t PKPaymentCreateAndValidateTrustWithCerts(void *a1, SecTrustRef *a2, int a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = PKBypassCertValidation();
  if (a2 || !v6)
  {
    trust = 0;
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = PKBypassCertValidation();
    v11 = PKLogFacilityTypeGetObject(7uLL);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    v34 = a2;
    v32 = a3;
    if (v10)
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Evaluating using bypass trust policy.", buf, 2u);
      }

      BasicX509 = SecPolicyCreateBasicX509();
    }

    else if (a3)
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Evaluating using TEST trust policy.", buf, 2u);
      }

      BasicX509 = SecPolicyCreateTestAppleSMPEncryption();
    }

    else
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Evaluating using PROD trust policy.", buf, 2u);
      }

      BasicX509 = SecPolicyCreateAppleSMPEncryption();
    }

    policies = BasicX509;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v35 = v5;
    v14 = v5;
    v15 = [v14 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v39;
      v18 = *MEMORY[0x1E695E480];
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v20 = SecCertificateCreateWithData(v18, *(*(&v38 + 1) + 8 * i));
          if (v20)
          {
            v21 = v20;
            [v9 addObject:v20];
            CFRelease(v21);
          }

          else
          {
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Unable to decode cert.", buf, 2u);
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v16);
    }

    if ([v9 count])
    {
      v22 = policies;
      v23 = SecTrustCreateWithCertificates(v9, policies, &trust);
      v24 = v34;
      if (v23)
      {
        v25 = v23;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v44 = v25;
          _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Error creating trust: %ld", buf, 0xCu);
        }

        v8 = 0;
      }

      else
      {
        if ((PKBypassCertValidation() & 1) != 0 || v32)
        {
          v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
          if (v32)
          {
            v27 = PKCreateQARootCACertificate();
            [v26 addObject:v27];
            if (v27)
            {
              CFRelease(v27);
            }
          }

          if (PKBypassCertValidation())
          {
            v28 = [v9 firstObject];
            [v26 addObject:v28];
          }

          if ([v26 count])
          {
            SecTrustSetAnchorCertificates(trust, v26);
          }
        }

        result = kSecTrustResultInvalid;
        error = 0;
        if (SecTrustEvaluateWithError(trust, &error) && !SecTrustGetTrustResult(trust, &result) && (result == kSecTrustResultUnspecified || result == kSecTrustResultProceed))
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Trust validated.", buf, 2u);
          }

          v8 = 1;
        }

        else
        {
          v29 = SecTrustCopyFailureDescription();
          if (error)
          {
            v30 = CFErrorCopyDescription(error);
          }

          else
          {
            v30 = 0;
          }

          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v44 = v29;
            v45 = 2112;
            v46 = v30;
            _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Error evaluating trust: %@ - %@.", buf, 0x16u);
          }

          if (v29)
          {
            CFRelease(v29);
          }

          if (v30)
          {
            CFRelease(v30);
          }

          v8 = 0;
        }

        if (error)
        {
          CFRelease(error);
        }
      }
    }

    else
    {
      v8 = 0;
      v22 = policies;
      v24 = v34;
    }

    if (v22)
    {
      CFRelease(v22);
    }

    v5 = v35;
    if (v24)
    {
      *v24 = trust;
    }

    else if (trust)
    {
      CFRelease(trust);
    }
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Certificate validation disabled. Bypassing trust chain enforcement…", buf, 2u);
    }

    v8 = 1;
  }

  return v8;
}

BOOL PKDeviceHasMockPeerPaymentPass()
{
  v0 = PKGeneratePassUniqueID(@"paymentpass.com.apple.wallet.dev", @"nc.prod.pod1_2345678901234567890123456b7d1195");
  v1 = +[PKPassLibrary sharedInstance];
  v2 = [v1 passWithUniqueID:v0];

  return v2 != 0;
}

uint64_t PKCreateAndValidateTrustWithCertsUsingPolicy(void *a1, SecTrustRef *a2, SecPolicyRef a3, uint64_t a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = a1;
  trust = 0;
  SSL = 0;
  if (PKBypassCertValidation())
  {
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Evaluating using bypass trust policy.", buf, 2u);
    }

    SSL = SecPolicyCreateSSL(1u, 0);
    a3 = SSL;
  }

  if (a3)
  {
    v34 = a4;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v12)
    {
      v13 = v12;
      v35 = SSL;
      v14 = a2;
      v15 = v7;
      v16 = *v39;
      v17 = *MEMORY[0x1E695E480];
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v39 != v16)
          {
            objc_enumerationMutation(v11);
          }

          v19 = SecCertificateCreateWithData(v17, *(*(&v38 + 1) + 8 * i));
          if (!v19)
          {
            v21 = PKLogFacilityTypeGetObject(7uLL);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "Unable to decode cert.", buf, 2u);
            }

            v10 = 0;
            goto LABEL_18;
          }

          v20 = v19;
          [v10 addObject:v19];
          CFRelease(v20);
        }

        v13 = [v11 countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

LABEL_18:
      v7 = v15;
      a2 = v14;
      SSL = v35;
    }

    if (![v10 count])
    {
      goto LABEL_25;
    }

    v22 = SecTrustCreateWithCertificates(v10, a3, &trust);
    if (v22)
    {
      v23 = v22;
LABEL_22:
      v24 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v44 = v23;
        _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, "Error creating trust: %ld", buf, 0xCu);
      }

LABEL_25:
      v25 = 0;
LABEL_26:
      if (a2)
      {
        *a2 = trust;
      }

      if (SSL)
      {
        CFRelease(SSL);
      }

      if (!a2 && trust)
      {
        CFRelease(trust);
      }

      goto LABEL_36;
    }

    if (v34)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v27 addObjectsFromArray:v34];
    }

    else
    {
      if (!PKBypassCertValidation())
      {
        goto LABEL_49;
      }

      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    if (PKBypassCertValidation())
    {
      v28 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, "Certificate validation disabled. Implicitly trusting leaf…", buf, 2u);
      }

      v29 = [v10 firstObject];
      [v27 addObject:v29];
    }

    if ([v27 count])
    {
      v23 = SecTrustSetAnchorCertificates(trust, v27);

      if (v23)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

LABEL_49:
    error = 0;
    result = kSecTrustResultInvalid;
    if (SecTrustEvaluateWithError(trust, &error) && !SecTrustGetTrustResult(trust, &result) && (result == kSecTrustResultUnspecified || result == kSecTrustResultProceed))
    {
      v33 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v33, OS_LOG_TYPE_DEFAULT, "Trust validated.", buf, 2u);
      }

      v25 = 1;
    }

    else
    {
      v30 = SecTrustCopyFailureDescription();
      if (error)
      {
        v31 = CFErrorCopyDescription(error);
      }

      else
      {
        v31 = 0;
      }

      v32 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v44 = v30;
        v45 = 2114;
        v46 = v31;
        _os_log_impl(&dword_1AD337000, v32, OS_LOG_TYPE_DEFAULT, "Error evaluating trust: %{public}@ - %{public}@.", buf, 0x16u);
      }

      if (v30)
      {
        CFRelease(v30);
      }

      if (v31)
      {
        CFRelease(v31);
      }

      v25 = 0;
    }

    if (error)
    {
      CFRelease(error);
    }

    goto LABEL_26;
  }

  v10 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Failing evaluation with nil trust policy.", buf, 2u);
  }

  v25 = 0;
LABEL_36:

  return v25;
}

uint64_t PKCreateAndValidateTrustWithCertsUsingMarkerOIDs(void *a1, SecTrustRef *a2)
{
  v3 = a1;
  ApplePinned = SecPolicyCreateApplePinned();
  if (ApplePinned)
  {
    v5 = ApplePinned;
    v6 = PKCreateAndValidateTrustWithCertsUsingPolicy(v3, a2, ApplePinned, 0);
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t PKFeatureCreateAndValidateTrustWithCerts(void *a1, SecTrustRef *a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (a3 == 1 || a3 == 5 || a3 == 2)
  {
    v7 = PKCreateAndValidateTrustWithCertsUsingMarkerOIDs(v5, a2);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL PKPaymentServiceConfigurationDataIsTrusted(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = PKBypassCertValidation();
  v8 = PKLogFacilityTypeGetObject(7uLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Certificate validation disabled. Bypassing payment service configuration trust check...", buf, 2u);
    }

    v10 = 1;
  }

  else
  {
    if (a3)
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Evaluating service config data using TEST trust policy.", buf, 2u);
      }

      TestAppleSMPEncryption = SecPolicyCreateTestAppleSMPEncryption();
    }

    else
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Evaluating service config data using PROD trust policy.", buf, 2u);
      }

      TestAppleSMPEncryption = SecPolicyCreateAppleSMPEncryption();
    }

    v12 = TestAppleSMPEncryption;
    cf = 0;
    *buf = 0;
    v13 = SecCMSVerifySignedData();
    v10 = v13 == 0;
    if (v13)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Service config data signature verification failed.", v15, 2u);
      }
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (*buf)
    {
      CFRelease(*buf);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v10;
}

id PKCardsCatalogFileURL()
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = PKHomeDirectoryPath();
  v2 = [v1 stringByAppendingPathComponent:@"CatalogOfRecord.plist"];
  v3 = [v0 fileURLWithPath:v2];

  return v3;
}

id PKCardsNonUbiquitousCatalogFileURL()
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = PKHomeDirectoryPath();
  v2 = [v1 stringByAppendingPathComponent:@"NonUbiquitousCatalogOfRecord.plist"];
  v3 = [v0 fileURLWithPath:v2];

  return v3;
}

id PKReceiptsDirectoryURL()
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = PKHomeDirectoryPath();
  v2 = [v1 stringByAppendingPathComponent:@"Receipts"];
  v3 = [v0 fileURLWithPath:v2];

  return v3;
}

id PKRequiredPaymentSetupFileURLs()
{
  v44[2] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = [MEMORY[0x1E696AC08] defaultManager];
  v1 = MEMORY[0x1E695DFF8];
  v2 = PKObjectSettingsManagerArchivePath();
  v3 = [v1 fileURLWithPath:v2 isDirectory:0];

  v4 = MEMORY[0x1E695DFF8];
  v5 = PKObjectSettingsManagerSafeHavenArchivePath();
  v6 = [v4 fileURLWithPath:v5 isDirectory:0];

  v44[0] = v3;
  v44[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __PKRequiredPaymentSetupFileURLs_block_invoke;
  v40[3] = &unk_1E79C8898;
  v8 = v0;
  v41 = v8;
  PKSharedCacheCreateDirectoryURL(0, v40);
  v9 = MEMORY[0x1E695DFF8];
  v10 = PKHomeDirectoryPath();
  v11 = [v9 fileURLWithPath:v10 isDirectory:1];
  v12 = _PKAllFilePathsFromDirectoryURLExcludingURLs(v11, v7);
  [v8 addObjectsFromArray:v12];

  v13 = PKLibraryDirectoryPath();
  v14 = [v13 stringByAppendingPathComponent:@"Preferences"];

  v15 = MEMORY[0x1E695DFF8];
  v16 = PKHomeDirectoryPath();
  v17 = [v16 stringByAppendingPathComponent:@"com.apple.passd_safehaven.plist"];
  v18 = [v15 fileURLWithPath:v17 isDirectory:0];

  if ([v18 checkResourceIsReachableAndReturnError:0])
  {
    [v8 addObject:v18];
  }

  else
  {
    v19 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v43 = v18;
      _os_log_error_impl(&dword_1AD337000, v19, OS_LOG_TYPE_ERROR, "File did not exist at: %@", buf, 0xCu);
    }
  }

  v20 = [v3 path];
  PKRemoveObjectSettingsManagerSafeHavenArchive();
  if ([v38 fileExistsAtPath:v20])
  {
    v39 = 0;
    [v38 copyItemAtURL:v3 toURL:v6 error:&v39];
    v21 = v39;
    v22 = PKLogFacilityTypeGetObject(0);
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v21)
    {
      if (v23)
      {
        *buf = 138412290;
        v43 = v21;
        _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "Error creating copy of ObjectSettingsManager.archive for safe haven. %@", buf, 0xCu);
      }
    }

    else
    {
      if (v23)
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "Created copy of ObjectSettingsManager.archive for safe haven.", buf, 2u);
      }

      PKExcludeFileURLFromBackup(v6);
      [v8 addObject:v6];
    }
  }

  v24 = MEMORY[0x1E695DFF8];
  v25 = [v14 stringByAppendingPathComponent:@"com.apple.PassKit.passes.plist"];
  v26 = [v24 fileURLWithPath:v25 isDirectory:0];

  if ([v26 checkResourceIsReachableAndReturnError:0])
  {
    [v8 addObject:v26];
  }

  else
  {
    v27 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v43 = v26;
      _os_log_error_impl(&dword_1AD337000, v27, OS_LOG_TYPE_ERROR, "File did not exist at: %@", buf, 0xCu);
    }
  }

  v28 = MEMORY[0x1E695DFF8];
  v29 = [v14 stringByAppendingPathComponent:@"com.apple.nanopassbook.plist"];
  v30 = [v28 fileURLWithPath:v29 isDirectory:0];

  if ([v30 checkResourceIsReachableAndReturnError:0])
  {
    [v8 addObject:v30];
  }

  else
  {
    v31 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v43 = v30;
      _os_log_error_impl(&dword_1AD337000, v31, OS_LOG_TYPE_ERROR, "File did not exist at: %@", buf, 0xCu);
    }
  }

  v32 = MEMORY[0x1E695DFF8];
  v33 = [v14 stringByAppendingPathComponent:@"com.apple.stockholm.plist"];
  v34 = [v32 fileURLWithPath:v33 isDirectory:0];

  if ([v34 checkResourceIsReachableAndReturnError:0])
  {
    [v8 addObject:v34];
  }

  else
  {
    v35 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v43 = v34;
      _os_log_error_impl(&dword_1AD337000, v35, OS_LOG_TYPE_ERROR, "File did not exist at: %@", buf, 0xCu);
    }
  }

  v36 = [v8 copy];

  return v36;
}

void __PKRequiredPaymentSetupFileURLs_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = _PKAllFilePathsFromDirectoryURLExcludingURLs(a2, 0);
  [v2 addObjectsFromArray:v3];
}

id _PKAllFilePathsFromDirectoryURLExcludingURLs(void *a1, void *a2)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = *MEMORY[0x1E695DB78];
  v29[0] = *MEMORY[0x1E695DB78];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v20 = v5;
  v21 = v3;
  v8 = [v5 enumeratorAtURL:v3 includingPropertiesForKeys:v7 options:0 errorHandler:&__block_literal_global_1675];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        v23 = 0;
        [v14 getResourceValue:&v23 forKey:v6 error:0];
        v15 = v23;
        if (([v15 BOOLValue] & 1) == 0)
        {
          v16 = [v14 URLByResolvingSymlinksInPath];
          v17 = [v4 containsObject:v16];

          if ((v17 & 1) == 0)
          {
            [v22 addObject:v14];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  v18 = [v22 copy];

  return v18;
}

void PKRemoveObjectSettingsManagerSafeHavenArchive()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = PKObjectSettingsManagerSafeHavenArchivePath();
  v1 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v1 fileExistsAtPath:v0])
  {
    v4 = 0;
    [v1 removeItemAtPath:v0 error:&v4];
    v2 = v4;
    v3 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v6 = v2;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Removed ObjectSettingsManager safe haven archive file with error %@", buf, 0xCu);
    }
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Not removing ObjectSettingsManager safe haven archive file because it doesnt exist", buf, 2u);
    }
  }
}

id PKCachedFileForSHA1(void *a1)
{
  v1 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  if (PKCachedFileForSHA1Exists(v1))
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __PKCachedFileForSHA1_block_invoke;
    v4[3] = &unk_1E79C87E8;
    v6 = &v7;
    v5 = v1;
    PKPassAssetDownloadCacheCreateFileURLReadOnly(0, v5, v4);
  }

  v2 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v2;
}

void sub_1AD581D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PKCachedFileForSHA1Exists(void *a1)
{
  v1 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __PKCachedFileForSHA1Exists_block_invoke;
  v6[3] = &unk_1E79C88C0;
  v6[4] = &v7;
  PKPassAssetDownloadCacheCreateFileURLReadOnly(0, v1, v6);
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v8[5] path];
  v4 = [v2 fileExistsAtPath:v3];

  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_1AD581E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PKCachedFileForSHA1_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:a2 options:0 error:0];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(*(*(a1 + 40) + 8) + 40) SHA1Hash];
  v7 = [v6 hexEncoding];
  v8 = [v7 isEqual:*(a1 + 32)];

  if ((v8 & 1) == 0)
  {
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }
}

uint64_t PKPercentageDecimalToStorageInteger(void *a1)
{
  v1 = a1;
  if (!v1 || ([MEMORY[0x1E696AB90] notANumber], (v2 = objc_claimAutoreleasedReturnValue()) != 0) && (v3 = v2, v4 = objc_msgSend(v1, "isEqual:", v2), v3, (v4 & 1) != 0))
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = [v1 decimalNumberByMultiplyingByPowerOf10:4];
    v5 = [v6 integerValue];
  }

  return v5;
}

uint64_t PKCurrencyDecimalToStorageIntegerWithPrecision(void *a1, __int16 a2)
{
  v3 = a1;
  if (!v3 || ([MEMORY[0x1E696AB90] notANumber], (v4 = objc_claimAutoreleasedReturnValue()) != 0) && (v5 = v4, v6 = objc_msgSend(v3, "isEqual:", v4), v5, (v6 & 1) != 0))
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFELL;
    v8 = [objc_alloc(MEMORY[0x1E696AB90]) initWithLongLong:0x7FFFFFFFFFFFFFFELL];
    v9 = [objc_alloc(MEMORY[0x1E696AB90]) initWithLongLong:0x8000000000000000];
    v10 = [v3 decimalNumberByMultiplyingByPowerOf10:a2];
    if ([v10 compare:v8] == -1)
    {
      if ([v10 compare:v9] == 1)
      {
        v7 = [v10 longLongValue];
      }

      else
      {
        v7 = 0x8000000000000000;
      }
    }
  }

  return v7;
}

id PKCurrencyDecimalToStorageNumber(void *a1)
{
  if (a1)
  {
    a1 = [MEMORY[0x1E696AD98] numberWithLongLong:{PKCurrencyDecimalToStorageIntegerWithPrecision(a1, 4)}];
    v1 = vars8;
  }

  return a1;
}

BOOL PKIsCurrencyDecimalTooLarge(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = MEMORY[0x1E696AB90];
  v2 = a1;
  v3 = [[v1 alloc] initWithLongLong:0x7FFFFFFFFFFFFFFELL];
  v4 = [v3 compare:v2];

  v5 = v4 == -1;
  return v5;
}

id PKLegacyCurrencyStorageIntegerToDecimal(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    goto LABEL_10;
  }

  if (a2 == 1)
  {
    if (a1 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_7;
    }

LABEL_10:
    v3 = 4;
LABEL_11:
    v4 = PKCurrencyStorageIntegerToCurrencyDecimalWithPrecision(a1, v3);

    return v4;
  }

  if (!a2 && a1 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 2;
    goto LABEL_11;
  }

LABEL_7:
  v4 = 0;

  return v4;
}

uint64_t PKCurrencyDecimalToLegacyStorageInteger(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 == 2)
  {
    goto LABEL_7;
  }

  if (a2 == 1)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

LABEL_7:
    v5 = 4;
    goto LABEL_8;
  }

  if (a2)
  {
    goto LABEL_7;
  }

  if (!v3)
  {
LABEL_10:
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  v5 = 2;
LABEL_8:
  v6 = PKCurrencyDecimalToStorageIntegerWithPrecision(v3, v5);
LABEL_9:

  return v6;
}

unint64_t PKCurrencyDecimalStorageBase10PowerForFormat(unint64_t a1)
{
  v1 = 0x400040002uLL >> (16 * a1);
  if (a1 >= 3)
  {
    LOBYTE(v1) = 4;
  }

  return v1 & 6;
}

id PKCurrencyDecimalAmountRound(void *a1)
{
  v1 = a1;
  v2 = _PKCurrencyNumberRoundingHandler();
  v3 = [v1 decimalNumberByRoundingAccordingToBehavior:v2];

  return v3;
}

id _PKCurrencyNumberRoundingHandler()
{
  if (qword_1ED6D15E0 != -1)
  {
    dispatch_once(&qword_1ED6D15E0, &__block_literal_global_1677);
  }

  v1 = qword_1ED6D15E8;

  return v1;
}

id PKCurrencyDecimalAmountMultiplyAndRound(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = _PKCurrencyNumberRoundingHandler();
  v6 = [v4 decimalNumberByMultiplyingBy:v3 withBehavior:v5];

  return v6;
}

id PKDateToStorageValue(void *a1)
{
  if (a1)
  {
    v2 = MEMORY[0x1E696AD98];
    [a1 timeIntervalSince1970];
    a1 = [v2 numberWithDouble:v3 * 1000.0];
    v1 = vars8;
  }

  return a1;
}

id PKDateFromStorageValue(void *a1)
{
  if (a1)
  {
    v2 = MEMORY[0x1E695DF00];
    [a1 doubleValue];
    a1 = [v2 dateWithTimeIntervalSince1970:v3 / 1000.0];
    v1 = vars8;
  }

  return a1;
}

uint64_t PKRandomNumberOfLength(uint64_t a1)
{
  v1 = 10;
  if (a1 < 10)
  {
    v1 = a1;
  }

  if (v1 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = v1;
  }

  v3 = __exp10((v2 - 1));
  v4 = __exp10(v2);
  return arc4random_uniform((v4 + -1.0) - v3 + 1) + v3;
}

id PKOrdinalStringForInteger(uint64_t a1)
{
  if (qword_1ED6D1240 != -1)
  {
    dispatch_once(&qword_1ED6D1240, &__block_literal_global_214);
  }

  v2 = qword_1ED6D1248;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v4 = [v2 stringFromNumber:v3];

  return v4;
}

uint64_t __PKOrdinalStringForInteger_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = qword_1ED6D1248;
  qword_1ED6D1248 = v0;

  v2 = qword_1ED6D1248;

  return [v2 setNumberStyle:6];
}

void PKClearPreferencesDomain(void *a1)
{
  v1 = a1;
  v2 = *MEMORY[0x1E695E8B8];
  v3 = *MEMORY[0x1E695E898];
  applicationID = v1;
  v4 = CFPreferencesCopyKeyList(v1, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v4)
  {
    v5 = v4;
    CFPreferencesSetMultiple(0, v4, applicationID, v2, v3);
    CFRelease(v5);
  }
}

void PKCacheFile(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    PKPassAssetDownloadCacheCreateDirectory(0, &__block_literal_global_218);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __PKCacheFile_block_invoke_219;
    v6[3] = &unk_1E79C8898;
    v7 = v3;
    PKPassAssetDownloadCacheCreateFileURLForWriting(0, v4, v6);
    v5 = v7;
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AD337000, v5, OS_LOG_TYPE_ERROR, "Trying to cache empty data !!", buf, 2u);
    }
  }
}

void __PKCacheFile_block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 && (a2 & 1) == 0)
  {
    v8 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Could not create download cache at %@", &v9, 0xCu);
    }
  }
}

id PKAssignedDeviceName()
{
  v0 = MGCopyAnswer();

  return v0;
}

id PKDeviceModel()
{
  v0 = MGCopyAnswer();

  return v0;
}

id PKDeviceBuildVersion()
{
  v0 = MGCopyAnswer();

  return v0;
}

BOOL PKLocationServicesEnabled()
{
  v0 = MEMORY[0x1E695FBE8];
  v1 = PKPassKitCoreBundle();
  v2 = [v1 bundlePath];
  v3 = [v0 authorizationStatusForBundlePath:v2] - 3 < 2;

  return v3;
}

BOOL PKMerchantLookupLocationServicesEnabled()
{
  v0 = MEMORY[0x1E695FBE8];
  v1 = PKPassKitCoreBundle();
  v2 = [v1 bundlePath];
  if ([v0 authorizationStatusForBundlePath:v2] - 3 > 1)
  {
    v6 = 0;
  }

  else
  {
    v3 = MEMORY[0x1E695FBE8];
    v4 = PKMerchantLookupBundle();
    v5 = [v4 bundlePath];
    v6 = [v3 authorizationStatusForBundlePath:v5] - 3 < 2;
  }

  return v6;
}

uint64_t PKManualArchiveEnabled()
{
  if (_os_feature_enabled_impl())
  {
    if (qword_1ED6D11F8 != -1)
    {
      dispatch_once(&qword_1ED6D11F8, &__block_literal_global_12);
    }

    v0 = _MergedGlobals_27 ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

BOOL PKVirtualCardEnabledWithWebService(void *a1)
{
  v1 = a1;
  if (_os_feature_enabled_impl())
  {
    v2 = [PKWebServiceVirtualCardFeature virtualCardFeatureWithWebService:v1];
    v3 = v2 != 0;
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Virtual card disabled by feature flag", v6, 2u);
    }

    v3 = 0;
  }

  return v3;
}

uint64_t PKBankConnectEnabled()
{
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_5;
  }

  if (qword_1ED6D1260 != -1)
  {
    dispatch_once(&qword_1ED6D1260, &__block_literal_global_333);
  }

  if ((byte_1ED6D11CB & 1) == 0)
  {
    if (qword_1ED6D11F8 != -1)
    {
      dispatch_once(&qword_1ED6D11F8, &__block_literal_global_12);
    }

    v0 = _MergedGlobals_27 ^ 1;
  }

  else
  {
LABEL_5:
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t PKBankConnectSpendingSummariesAndHighlightsEnabled()
{
  result = PKBankConnectEnabled();
  if (result)
  {

    return _os_feature_enabled_impl();
  }

  return result;
}

uint64_t PKBankConnectExcludeFromSpendingSummariesAndHighlights()
{
  if (!PKBankConnectEnabled() || !_os_feature_enabled_impl())
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

uint64_t PKBankConnectUpcomingPaymentsEnabled()
{
  result = PKBankConnectEnabled();
  if (result)
  {

    return _os_feature_enabled_impl();
  }

  return result;
}

uint64_t PKBankConnectUpcomingPaymentNotificationsEnabled()
{
  if (!PKBankConnectEnabled() || !_os_feature_enabled_impl())
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

uint64_t PKAppleCardUpcomingPaymentNotificationsEnabled()
{
  result = PKAppleCardUpcomingPaymentsEnabled();
  if (result)
  {

    return _os_feature_enabled_impl();
  }

  return result;
}

uint64_t PKAppleCardUpcomingPaymentsEnabled()
{
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_5;
  }

  if (qword_1ED6D1260 != -1)
  {
    dispatch_once(&qword_1ED6D1260, &__block_literal_global_333);
  }

  if ((byte_1ED6D11CB & 1) == 0)
  {
    if (qword_1ED6D11F8 != -1)
    {
      dispatch_once(&qword_1ED6D11F8, &__block_literal_global_12);
    }

    v0 = _MergedGlobals_27 ^ 1;
  }

  else
  {
LABEL_5:
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t PKBankConnectPostProvisioningCTAEnabled()
{
  result = PKBankConnectEnabled();
  if (result)
  {

    return _os_feature_enabled_impl();
  }

  return result;
}

uint64_t PKBankConnectAvailableForPass(void *a1)
{
  v1 = a1;
  v2 = PKBankConnectEnabled();
  v3 = 0;
  if (v1 && v2)
  {
    if ([v1 cardType] == 1)
    {
      v4 = [v1 isEMoneyPass] ^ 1;
    }

    else
    {
      v4 = 0;
    }

    v5 = [v1 hasAssociatedPeerPaymentAccount];
    v6 = [v1 associatedAccountServiceAccountIdentifier];

    if (v4)
    {
      v3 = (v6 == 0) & ~v5;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t PKFinHealthInsightsEnabled()
{
  if (os_variant_has_internal_ui())
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

uint64_t PKAppProtectionEnabled()
{
  if (_os_feature_enabled_impl())
  {
    if (qword_1ED6D1250 != -1)
    {
      dispatch_once(&qword_1ED6D1250, &__block_literal_global_323);
    }

    v0 = byte_1ED6D11C9;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t PKAppleCardFinancialLearningLabEnabled()
{
  if (_os_feature_enabled_impl())
  {
    if (qword_1ED6D1250 != -1)
    {
      dispatch_once(&qword_1ED6D1250, &__block_literal_global_323);
    }

    v0 = byte_1ED6D11C9;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

BOOL PKIsSettingsShowingPaymentsAndContactless()
{
  v0 = [MEMORY[0x1E69C86D8] contextWithBundleId:0 onChange:&__block_literal_global_305];
  v1 = [v0 topLevelSettingsEntryType] == 1;

  return v1;
}

void PKRequestContactAccessWithCompletion(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695CE18] authorizationStatusForEntityType:0];
  v3 = PKLogFacilityTypeGetObject(7uLL);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 134217984;
      v9 = v2;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Not prompting for Contact Access Alert - current permission status: %ld", buf, 0xCu);
    }

    if (v1)
    {
      v1[2](v1);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Requesting Contact Access from user.", buf, 2u);
    }

    v5 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __PKRequestContactAccessWithCompletion_block_invoke;
    v6[3] = &unk_1E79C4E50;
    v7 = v1;
    [v5 requestAccessForEntityType:0 completionHandler:v6];
  }
}

void __PKRequestContactAccessWithCompletion_block_invoke(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    *buf = 138412290;
    v12 = v7;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Contact Access granted by user: %@", buf, 0xCu);
  }

  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Error obtaining Contact Access from user: %@", buf, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __PKRequestContactAccessWithCompletion_block_invoke_317;
    block[3] = &unk_1E79C4428;
    v10 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

id PKMeContactFullName()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v5[0] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v2 = PKMeContactWithKeysToFetch(v1);

  if (v2)
  {
    v3 = [MEMORY[0x1E695CD80] stringFromContact:v2 style:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id PKMeContactWithKeysToFetch(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E695CE18];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v11 = 0;
  v4 = [v3 _crossPlatformUnifiedMeContactWithKeysToFetch:v2 error:&v11];

  v5 = v11;
  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject(0);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:

      goto LABEL_7;
    }

    *buf = 138412290;
    v13 = v5;
    v7 = "Failed to fetch me card with error: %@";
    v8 = v6;
    v9 = 12;
LABEL_4:
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    goto LABEL_5;
  }

  if (!v4)
  {
    v6 = PKLogFacilityTypeGetObject(0);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    *buf = 0;
    v7 = "Failed to find me card";
    v8 = v6;
    v9 = 2;
    goto LABEL_4;
  }

LABEL_7:

  return v4;
}

BOOL PKRemoveMeContactForKey(void *a1, void *a2)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v26[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v6 = PKMeContactWithKeysToFetch(v5);

  if (v6)
  {
    v7 = [v3 valueForKey:v4];
    v8 = [v6 valueForKey:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v9 = [v7 firstObject];
      v10 = _PKIndexOfValueInLabeledValuesForContactKey(v9, v8, v4);
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Not removing entry since it's not found in me card", buf, 2u);
        }

        v12 = 0;
      }

      else
      {
        v13 = v10;
        v11 = [v8 mutableCopy];
        [v11 removeObjectAtIndex:v13];
        v14 = [v6 mutableCopy];
        v15 = [v11 copy];
        [v14 setValue:v15 forKey:v4];

        v16 = objc_alloc_init(MEMORY[0x1E695CE18]);
        v17 = objc_alloc_init(MEMORY[0x1E695CF88]);
        v22 = v14;
        [v17 updateContact:v14];
        v23 = 0;
        v21 = v16;
        [v16 executeSaveRequest:v17 error:&v23];
        v18 = v23;
        v12 = v18 == 0;
        if (v18)
        {
          log = PKLogFacilityTypeGetObject(7uLL);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v25 = v18;
            _os_log_impl(&dword_1AD337000, log, OS_LOG_TYPE_DEFAULT, "Error removing an entry in me card: %@", buf, 0xCu);
          }
        }
      }
    }

    else
    {
      v9 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKRemoveMeContactForKey currently supports adding only array fields", buf, 2u);
      }

      v12 = 0;
    }
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKRemoveMeContactForKey can't remove contact since me card doesn't exist", buf, 2u);
    }

    v12 = 0;
  }

  return v12;
}

uint64_t _PKIndexOfValueInLabeledValuesForContactKey(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___PKIndexOfValueInLabeledValuesForContactKey_block_invoke;
  v11[3] = &unk_1E79C8C28;
  v12 = v5;
  v13 = v6;
  v7 = v6;
  v8 = v5;
  v9 = [a2 indexOfObjectPassingTest:v11];

  return v9;
}

BOOL PKAddMeContactForKey(void *a1, void *a2)
{
  v50[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v50[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
  v6 = PKMeContactWithKeysToFetch(v5);

  if (!v6)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v18 = [v3 mutableCopy];
    v19 = objc_alloc_init(MEMORY[0x1E695CF88]);
    [v19 addContact:v18 toContainerWithIdentifier:0];
    v36 = 0;
    v20 = [v17 executeSaveRequest:v19 error:&v36];
    v21 = v36;
    v22 = v21;
    if (v20)
    {
      v35 = v21;
      v23 = [v17 setMeContact:v18 error:&v35];
      v24 = v35;

      if (v23)
      {

LABEL_26:
        v14 = 1;
        goto LABEL_17;
      }

      v25 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v24;
        _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "Error setting me contact: %@", &buf, 0xCu);
      }
    }

    else
    {
      v25 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v22;
        _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "Error saving contact for me card: %@", &buf, 0xCu);
      }

      v24 = v22;
    }

    goto LABEL_16;
  }

  v7 = [v6 valueForKey:v4];
  v8 = [v3 valueForKey:v4];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v16 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "PKAddMeContactForKey currently supports adding only array fields", &buf, 2u);
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v9 = [v8 firstObject];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__2;
  v48 = __Block_byref_object_dispose__2;
  v49 = 0;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __PKAddMeContactForKey_block_invoke;
  v38[3] = &unk_1E79C8908;
  v10 = v9;
  v39 = v10;
  p_buf = &buf;
  v11 = v3;
  v40 = v11;
  v12 = v4;
  v41 = v12;
  [v7 enumerateObjectsUsingBlock:v38];
  v13 = *(*(&buf + 1) + 40);
  if (v13)
  {
    v14 = PKUpdateMeContact(v13, v11, v12);
    v15 = 0;
  }

  else
  {
    v27 = [v7 mutableCopy];
    [v27 addObject:v10];
    v28 = [v6 mutableCopy];
    [v28 setValue:v27 forKey:v12];
    v34 = v28;
    v33 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v29 = objc_alloc_init(MEMORY[0x1E695CF88]);
    [v29 updateContact:v28];
    v32 = v27;
    v37 = 0;
    [v33 executeSaveRequest:v29 error:&v37];
    v30 = v37;
    v15 = v30 == 0;
    if (v30)
    {
      v31 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *v43 = 138412290;
        v44 = v30;
        _os_log_impl(&dword_1AD337000, v31, OS_LOG_TYPE_DEFAULT, "Error adding an entry to existing me card: %@", v43, 0xCu);
      }
    }

    v14 = 0;
  }

  _Block_object_dispose(&buf, 8);
  if (v15)
  {
    goto LABEL_26;
  }

LABEL_17:

  return v14;
}

void sub_1AD5846D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PKAddMeContactForKey_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [v6 label];
  v8 = [*(a1 + 32) label];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [*(a1 + 40) mutableCopy];
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = *(*(*(a1 + 56) + 8) + 40);
    v15[0] = v6;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [v13 setValue:v14 forKey:*(a1 + 48)];

    *a4 = 1;
  }
}

BOOL PKUpdateMeContact(void *a1, void *a2, void *a3)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  v7 = 0;
  if (a1 && a2 && v5)
  {
    v8 = a2;
    v9 = [a1 valueForKey:v6];
    v10 = [v8 valueForKey:v6];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v11 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKUpdateMeContact currently supports updating only array fields", buf, 2u);
      }

      v7 = 0;
      goto LABEL_27;
    }

    v11 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v35[0] = v6;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
    v13 = [v11 _crossPlatformUnifiedMeContactWithKeysToFetch:v12 error:0];

    v14 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v13;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Me card: %@", buf, 0xCu);
    }

    v15 = [v13 mutableCopy];
    v16 = [v9 firstObject];
    v29 = [v10 firstObject];
    v17 = [v15 valueForKey:v6];
    v18 = [v17 mutableCopy];

    v28 = v16;
    v19 = _PKIndexOfValueInLabeledValuesForContactKey(v16, v18, v6);
    if (v19 == 0x7FFFFFFFFFFFFFFFLL || !v15 || !v29)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Error - unable to find me card to replace", buf, 2u);
      }

      v7 = 0;
      v20 = v14;
      goto LABEL_26;
    }

    v27 = v13;
    [v18 replaceObjectAtIndex:v19 withObject:v29];
    [v15 setValue:v18 forKey:v6];
    v20 = objc_alloc_init(MEMORY[0x1E695CF88]);
    [v20 updateContact:v15];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v32 = v20;
      v33 = 2112;
      v34 = v15;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Requested contact update: %@ with contact: %@", buf, 0x16u);
    }

    v30 = 0;
    [v11 executeSaveRequest:v20 error:&v30];
    v21 = v30;
    v7 = v21 == 0;
    v22 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v21)
    {
      if (v22)
      {
        *buf = 138412290;
        v32 = v21;
        v23 = "Error updating me card: %@";
        v24 = v14;
        v25 = 12;
LABEL_24:
        _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
      }
    }

    else if (v22)
    {
      *buf = 0;
      v23 = "Updated me card in response to user editing";
      v24 = v14;
      v25 = 2;
      goto LABEL_24;
    }

    v13 = v27;
LABEL_26:

LABEL_27:
  }

  return v7;
}

id PKHomeAddressFromContact(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = [a1 postalAddresses];
  v2 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    v5 = *MEMORY[0x1E695CB60];
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 label];
        v9 = [v8 isEqualToString:v5];

        if (v9)
        {
          v10 = [v7 value];
          goto LABEL_11;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

id PKCorrectCountryCodeIfNecessaryForPostalAddress(void *a1)
{
  v1 = a1;
  v2 = [v1 ISOCountryCode];
  v3 = v2;
  if (v2 && [v2 length] == 2)
  {
    v4 = [v3 uppercaseString];
  }

  else
  {
    v4 = [v1 suggestedCountryCode];
  }

  v5 = v4;
  [v1 setISOCountryCode:v4];

  return v1;
}

uint64_t PKIsPod()
{
  if (qword_1ED6D1258 != -1)
  {
    dispatch_once(&qword_1ED6D1258, &__block_literal_global_328);
  }

  return byte_1ED6D11CA;
}

void __PKIsPod_block_invoke()
{
  v0 = PKDeviceClass();
  byte_1ED6D11CA = [v0 isEqualToString:@"iPod"];
}

void PKOpenPassDetails(void *a1)
{
  v8 = a1;
  if (PKCurrentPassbookState() >= 2)
  {
    PKShowAlertForWalletUninstalled(0);
  }

  else
  {
    if (+[PKWalletVisibility isWalletVisible])
    {
      v1 = objc_alloc_init(MEMORY[0x1E696AF20]);
      [v1 setScheme:@"shoebox"];
      [v1 setHost:@"card"];
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@/%@", v8, @"details"];
      [v1 setPath:v2];

      v3 = [v1 URL];
    }

    else
    {
      v1 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"prefs:root=PASSBOOK"];
      if ([v8 length])
      {
        v4 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
        v5 = [v8 stringByAddingPercentEncodingWithAllowedCharacters:v4];
        [v1 appendFormat:@"&path=%@/%@/%@", @"card", v5, @"details"];
      }

      v3 = [MEMORY[0x1E695DFF8] URLWithString:v1];
    }

    v6 = v3;
    v7 = [MEMORY[0x1E6963608] defaultWorkspace];
    [v7 openSensitiveURL:v6 withOptions:0];
  }
}

void PKShowAlertForWalletUninstalled(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = MEMORY[0x1E695E118];
  [v2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SBUserNotificationDontDismissOnUnlock"];
  [v2 setObject:v3 forKeyedSubscript:@"SBUserNotificationAllowMenuButtonDismissal"];
  v4 = PKLocalizedDeletableString(&cfstr_WalletUninstal.isa, 0);
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x1E695EE58]];

  v5 = PKLocalizedDeletableString(&cfstr_WalletUninstal_0.isa, 0);
  [v2 setObject:v5 forKeyedSubscript:*MEMORY[0x1E695EE60]];

  v6 = PKLocalizedDeletableString(&cfstr_WalletUninstal_1.isa, 0);
  [v2 setObject:v6 forKeyedSubscript:*MEMORY[0x1E695EE78]];

  v7 = PKLocalizedDeletableString(&cfstr_WalletUninstal_2.isa, 0);
  [v2 setObject:v7 forKeyedSubscript:*MEMORY[0x1E695EE70]];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __PKShowAlertForWalletUninstalled_block_invoke;
  v9[3] = &unk_1E79C8930;
  v10 = v1;
  v8 = v1;
  [PKUserNotificationAgent presentNotificationWithParameters:v2 responseHandler:v9];
}

BOOL PKOpenInstallWallet()
{
  v10[1] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v0 setScheme:@"itms-apps"];
  [v0 setHost:&stru_1F227FD28];
  v1 = [MEMORY[0x1E696AF60] queryItemWithName:@"bundleIdentifier" value:@"com.apple.Passbook"];
  v10[0] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  [v0 setQueryItems:v2];
  v3 = [v0 URL];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69636B8]);
    [v4 setSensitive:1];
    v8 = *MEMORY[0x1E699F970];
    v9 = MEMORY[0x1E695E118];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    [v4 setFrontBoardOptions:v5];

    v6 = [MEMORY[0x1E6963608] defaultWorkspace];
    [v6 openURL:v3 configuration:v4 completionHandler:0];
  }

  return v3 != 0;
}

uint64_t __PKShowAlertForWalletUninstalled_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    PKOpenInstallWallet();
  }

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void PKBeginInstallWatchWallet(void *a1)
{
  v1 = getNPKCompanionAgentConnectionClass[0];
  v2 = a1;
  v3 = objc_alloc_init(v1());
  [v3 beginPairedWatchInstallationOfWalletWithCompletion:v2];
}

BOOL PKIsURLHttpScheme(void *a1)
{
  v1 = [a1 scheme];
  if ([v1 caseInsensitiveCompare:@"http"])
  {
    v2 = [v1 caseInsensitiveCompare:@"https"] == 0;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

void PKOpenURL(void *a1, uint64_t a2, void *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (v5)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69636B8]);
    v14 = *MEMORY[0x1E699F970];
    v15[0] = MEMORY[0x1E695E118];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [v7 setFrontBoardOptions:v8];

    [v7 setSensitive:a2];
    v9 = [MEMORY[0x1E6963608] defaultWorkspace];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __PKOpenURL_block_invoke;
    v11[3] = &unk_1E79C5688;
    v12 = v6;
    [v9 openURL:v5 configuration:v7 completionHandler:v11];
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Failed to open nil URL", buf, 2u);
    }

    if (v6)
    {
      (*(v6 + 2))(v6, 0);
    }
  }
}

void __PKOpenURL_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Failed to open URL with error: %{public}@", &v11, 0xCu);
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(v8 + 16);
LABEL_8:
      v9();
    }
  }

  else
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v9 = *(v10 + 16);
      goto LABEL_8;
    }
  }
}

void PKOpenWalletSettings(void *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E69636B8]);
  v9 = *MEMORY[0x1E699F970];
  v10[0] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v2 setFrontBoardOptions:v3];

  [v2 setSensitive:1];
  v4 = [MEMORY[0x1E6963608] defaultWorkspace];
  v5 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=PASSBOOK"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __PKOpenWalletSettings_block_invoke;
  v7[3] = &unk_1E79C5688;
  v8 = v1;
  v6 = v1;
  [v4 openURL:v5 configuration:v2 completionHandler:v7];
}

void __PKOpenWalletSettings_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Failed to open Wallet Settings with error: %{public}@", &v11, 0xCu);
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(v8 + 16);
LABEL_8:
      v9();
    }
  }

  else
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v9 = *(v10 + 16);
      goto LABEL_8;
    }
  }
}

void PKOpenWallet(void *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E69636B8]);
  v7 = *MEMORY[0x1E699F970];
  v8[0] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 setFrontBoardOptions:v3];

  if (+[PKWalletVisibility isWalletVisible])
  {
    v4 = [MEMORY[0x1E6963608] defaultWorkspace];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __PKOpenWallet_block_invoke;
    v5[3] = &unk_1E79C4E50;
    v6 = v1;
    [v4 openApplicationWithBundleIdentifier:@"com.apple.Passbook" configuration:v2 completionHandler:v5];
  }
}

void __PKOpenWallet_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Failed to open Wallet with error: %{public}@", &v8, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2);
  }
}

uint64_t PKIsChinaSKU()
{
  if (qword_1ED6D1270 != -1)
  {
    dispatch_once(&qword_1ED6D1270, &__block_literal_global_389);
  }

  v1 = qword_1ED6D1268;

  return [v1 isEqualToString:@"CH"];
}

void __PKIsChinaSKU_block_invoke()
{
  v0 = MGGetStringAnswer();
  v1 = qword_1ED6D1268;
  qword_1ED6D1268 = v0;
}

id PKUniqueDeviceIdentifier()
{
  v0 = MGCopyAnswer();

  return v0;
}

id PKUniqueChipIdentifier()
{
  v0 = MGCopyAnswer();

  return v0;
}

uint64_t PKPassbookUbiquitySwitchIsOnForAccount(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 isEnabledForDataclass:*MEMORY[0x1E6959718]];
  v3 = [v1 isEnabledForDataclass:*MEMORY[0x1E6959700]];
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v2)
    {
      v5 = @"ON";
    }

    else
    {
      v5 = @"OFF";
    }

    v8 = 138412546;
    v9 = v1;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Ubiquity switch for account %@, %{public}@", &v8, 0x16u);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v6 = @"ON";
    }

    else
    {
      v6 = @"OFF";
    }

    v8 = 138412546;
    v9 = v1;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Passbook switch for account %@, %{public}@", &v8, 0x16u);
  }

  return v2 & v3;
}

id PKSerialNumber()
{
  v0 = MGCopyAnswer();

  return v0;
}

id PKMLBSerialNumber()
{
  v0 = MGCopyAnswer();

  return v0;
}

id PKHardwarePlatform()
{
  v0 = MGCopyAnswer();

  return v0;
}

id PKProductType()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = PKDeviceInformationOverrideProductType();
  if (v0)
  {
    v1 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v0;
      _os_log_impl(&dword_1AD337000, v1, OS_LOG_TYPE_DEFAULT, "PKProductType(): Using internal override value (%@)", &v5, 0xCu);
    }

    v2 = v0;
  }

  else
  {
    v2 = MGCopyAnswer();
  }

  v3 = v2;

  return v3;
}

id PKCurrentUserUUID()
{
  v6 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  v0 = getuid();
  if (mbr_uid_to_uuid(v0, uu))
  {
    v1 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1AD337000, v1, OS_LOG_TYPE_DEFAULT, "Error determining the UUID of the current user.", v4, 2u);
    }

    v2 = 0;
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uu];
  }

  return v2;
}

void *PKUsernameForUserUUID(void *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    memset(v2, 0, sizeof(v2));
    [a1 getUUIDBytes:v2];
    a1 = getpwuuid(v2);
    if (a1)
    {
      a1 = [MEMORY[0x1E696AEC0] stringWithCString:*a1 encoding:4];
    }
  }

  return a1;
}

uint64_t PKAltDSIDIsCurrentUser(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = PKCurrentUserAltDSID();
    v3 = v2;
    if (v2)
    {
      if (v2 == v1)
      {
        v4 = 1;
      }

      else
      {
        v4 = [v2 isEqualToString:v1];
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

__CFString *PKCurrentUserAltDSID()
{
  if (qword_1ED6D11F8 != -1)
  {
    dispatch_once(&qword_1ED6D11F8, &__block_literal_global_12);
  }

  if (_MergedGlobals_27)
  {
    v0 = @"PKStoreDemoCurrentUserAltDSID";
  }

  else
  {
    v1 = [MEMORY[0x1E698DC80] sharedInstance];
    v2 = [v1 primaryAuthKitAccount];
    v0 = [v1 altDSIDForAccount:v2];
  }

  return v0;
}

void *PKUserFullNameForUserUUID(void *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    memset(v2, 0, sizeof(v2));
    [a1 getUUIDBytes:v2];
    a1 = getpwuuid(v2);
    if (a1)
    {
      a1 = [MEMORY[0x1E696AEC0] stringWithCString:a1[5] encoding:4];
    }
  }

  return a1;
}

id PKAdditionalSupportedNetworks()
{
  if (os_variant_has_internal_ui())
  {
    if (qword_1ED6D1280 != -1)
    {
      dispatch_once(&qword_1ED6D1280, &__block_literal_global_425);
    }

    v0 = qword_1ED6D1278;
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

void __PKAdditionalSupportedNetworks_block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"PKAdditionalSupportedNetworks", *MEMORY[0x1E695E890]);
  v1 = qword_1ED6D1278;
  qword_1ED6D1278 = v0;

  if (qword_1ED6D1278)
  {
    v2 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Additional supported networks have been added to the device! Proceed with caution.", v3, 2u);
    }
  }
}

id PKAdditionalNetworkNameForIndex(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_ui())
  {
    PKAdditionalSupportedNetworks();
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v2 = v15 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v13;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v12 + 1) + 8 * i);
          v8 = [v2 objectForKeyedSubscript:{v7, v12}];
          v9 = [v8 integerValue];

          if (v9 == a1)
          {
            v10 = v7;
            goto LABEL_13;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_13:
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id PKDeviceSupportedFeatureIdentifiers()
{
  if (qword_1ED6D1288 != -1)
  {
    dispatch_once(&qword_1ED6D1288, &__block_literal_global_430);
  }

  v1 = qword_1ED6D1290;

  return v1;
}

void __PKDeviceSupportedFeatureIdentifiers_block_invoke()
{
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v0 = PKFeatureIdentifierToString(2);
  if (v0)
  {
    [v4 addObject:v0];
  }

  v1 = PKFeatureIdentifierToString(4);
  [v4 pk_safelyAddObject:v1];
  v2 = [v4 copy];
  v3 = qword_1ED6D1290;
  qword_1ED6D1290 = v2;
}

uint64_t PKDeviceSupportsApplicationForFeatureIdentifier(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (qword_1ED6D12A0 != -1)
    {
      dispatch_once(&qword_1ED6D12A0, &__block_literal_global_433);
    }

    v2 = qword_1ED6D1298;
    v3 = PKFeatureIdentifierToString(v1);
    v4 = [v2 containsObject:v3];

    return v4;
  }

  return result;
}

void __PKDeviceSupportsApplicationForFeatureIdentifier_block_invoke()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = PKDeviceSupportedFeatureIdentifiers();
  v1 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v0, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v0;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = PKFeatureIdentifierFromString(v7);
        if (v8 <= 5)
        {
          if (((1 << v8) & 0x2C) == 0)
          {
            if (((1 << v8) & 0x12) == 0)
            {
              goto LABEL_17;
            }

LABEL_16:
            [v1 addObject:{v7, v11}];
            goto LABEL_17;
          }

          if (qword_1ED6D1250 != -1)
          {
            dispatch_once(&qword_1ED6D1250, &__block_literal_global_323);
          }

          if (byte_1ED6D11C9)
          {
            goto LABEL_16;
          }

          if (qword_1ED6D1260 != -1)
          {
            dispatch_once(&qword_1ED6D1260, &__block_literal_global_333);
          }

          if (byte_1ED6D11CB == 1)
          {
            goto LABEL_16;
          }
        }

LABEL_17:
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = [v1 copy];
  v10 = qword_1ED6D1298;
  qword_1ED6D1298 = v9;
}

uint64_t PKMaxPaymentTransactionsForCredentialType(uint64_t a1)
{
  if ((a1 - 103) > 0x25)
  {
    return 10;
  }

  else
  {
    return qword_1ADB99348[a1 - 103];
  }
}

uint64_t PKPaymentMethodTypeForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Credit"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"PrivateLabel"))
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Debit"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"PrePaid"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Store"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"Transit"])
  {
    v2 = 1000;
  }

  else if ([v1 isEqualToString:@"Access"])
  {
    v2 = 1001;
  }

  else if ([v1 isEqualToString:@"eMoney"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"eWallet"])
  {
    v2 = 100;
  }

  else if ([v1 isEqualToString:@"ISO18013"])
  {
    v2 = 1002;
  }

  else if ([v1 isEqualToString:@"UnifiedAccess"])
  {
    v2 = 1003;
  }

  else if ([v1 isEqualToString:@"Aliro"])
  {
    v2 = 1004;
  }

  else if ([v1 isEqualToString:@"Identity"])
  {
    v2 = 1005;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKPaymentMethodTypeToString(uint64_t a1)
{
  v3 = @"unknown";
  if (a1 > 999)
  {
    if (a1 > 1002)
    {
      switch(a1)
      {
        case 1003:
          v4 = PKPaymentApplicationTypeUnifiedAccess;
          break;
        case 1004:
          v4 = PKPaymentApplicationTypeAliro;
          break;
        case 1005:
          v4 = PKPaymentApplicationTypeIdentity;
          break;
        default:
          goto LABEL_28;
      }
    }

    else if (a1 == 1000)
    {
      v4 = PKPaymentApplicationTypeTransit;
    }

    else if (a1 == 1001)
    {
      v4 = PKPaymentApplicationTypeAccess;
    }

    else
    {
      v4 = PKPaymentApplicationTypeISO18013;
    }
  }

  else if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        v4 = PKPaymentApplicationTypeStore;
        break;
      case 5:
        v4 = PKPaymentApplicationTypeEMoney;
        break;
      case 100:
        v4 = PKPaymentApplicationTypeEWallet;
        break;
      default:
        goto LABEL_28;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        v4 = PKPaymentApplicationTypeDebit;
        break;
      case 2:
        v4 = PKPaymentApplicationTypeCredit;
        break;
      case 3:
        v4 = PKPaymentApplicationTypePrePaid;
        break;
      default:
        goto LABEL_28;
    }
  }

  v3 = *v4;
LABEL_28:

  return v3;
}

id PKDisplayablePaymentMethodStringFromType(uint64_t a1)
{
  v2 = 0;
  if (a1 <= 4)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v3 = @"PAYMENT_APPLICATION_TYPE_PREPAID";
      }

      else
      {
        v3 = @"PAYMENT_APPLICATION_TYPE_STORE";
      }
    }

    else if (a1 == 1)
    {
      v3 = @"PAYMENT_APPLICATION_TYPE_DEBIT";
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_20;
      }

      v3 = @"PAYMENT_APPLICATION_TYPE_CREDIT";
    }

    goto LABEL_19;
  }

  if (a1 > 999)
  {
    if (a1 == 1000)
    {
      v3 = @"PAYMENT_APPLICATION_TYPE_TRANSIT";
    }

    else
    {
      if (a1 != 1001)
      {
        goto LABEL_20;
      }

      v3 = @"PAYMENT_APPLICATION_TYPE_ACCESS";
    }

    goto LABEL_19;
  }

  if (a1 == 5)
  {
    v3 = @"PAYMENT_APPLICATION_TYPE_EMONEY";
LABEL_19:
    v2 = PKLocalizedPaymentString(&v3->isa, 0);
    goto LABEL_20;
  }

  if (a1 == 100)
  {
    v2 = PKLocalizedAquamanString(&cfstr_PaymentApplica_5.isa, 0);
  }

LABEL_20:

  return v2;
}

uint64_t PKPaymentCredentialTypeForPaymentNetworkName(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"AmEx"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Bancomat"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"PagoBancomat"))
  {
    v2 = 20;
  }

  else if ([v1 isEqualToString:@"Bancontact"])
  {
    v2 = 21;
  }

  else if ([v1 isEqualToString:@"CarteBancaire"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"CarteBancaires") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"CartesBancaires"))
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"ChinaUnionPay"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"Dankort"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"Discover"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Eftpos"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"Electron"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"Elo"])
  {
    v2 = 112;
  }

  else if ([v1 isEqualToString:@"Interac"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"mada"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"Maestro"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"MasterCard"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"PrivateLabel"])
  {
    v2 = 100;
  }

  else if ([v1 isEqualToString:@"Visa"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"VPay"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"JCB"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"QUICPay"])
  {
    v2 = 105;
  }

  else if ([v1 isEqualToString:@"iD"])
  {
    v2 = 106;
  }

  else if ([v1 isEqualToString:@"HID"])
  {
    v2 = 107;
  }

  else if ([v1 isEqualToString:@"SPTCC"])
  {
    v2 = 109;
  }

  else if ([v1 isEqualToString:@"BMAC"])
  {
    v2 = 108;
  }

  else if ([v1 isEqualToString:@"TMONEY"])
  {
    v2 = 136;
  }

  else if ([v1 isEqualToString:@"MOT"])
  {
    v2 = 116;
  }

  else if ([v1 isEqualToString:@"MOTPioneer"])
  {
    v2 = 122;
  }

  else if ([v1 isEqualToString:@"Barcode"])
  {
    v2 = 123;
  }

  else if ([v1 isEqualToString:@"girocard"])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:@"Mir"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"WAON"])
  {
    v2 = 127;
  }

  else if ([v1 isEqualToString:@"nanaco"])
  {
    v2 = 128;
  }

  else if ([v1 isEqualToString:@"AppleBalance"])
  {
    v2 = 135;
  }

  else if ([v1 isEqualToString:@"PostFinanceAG"])
  {
    v2 = 22;
  }

  else if ([v1 isEqualToString:@"Meeza"])
  {
    v2 = 25;
  }

  else if ([v1 isEqualToString:@"NAPAS"])
  {
    v2 = 26;
  }

  else if ([v1 isEqualToString:@"BankAxept"])
  {
    v2 = 24;
  }

  else if ([v1 isEqualToString:@"Himyan"])
  {
    v2 = 28;
  }

  else if ([v1 isEqualToString:@"Jaywan"])
  {
    v2 = 29;
  }

  else if ([v1 isEqualToString:@"MyDebit"])
  {
    v2 = 30;
  }

  else
  {
    v4 = PKAdditionalSupportedNetworks();
    v5 = [v4 valueForKey:v1];
    v2 = [v5 integerValue];
  }

  return v2;
}

__CFString *PKPaymentNetworkNameForPaymentCredentialType(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      v1 = &PKPaymentNetworkAmex;
      goto LABEL_48;
    case 2:
      v1 = &PKPaymentNetworkDiscover;
      goto LABEL_48;
    case 3:
      v1 = &PKPaymentNetworkMasterCard;
      goto LABEL_48;
    case 4:
      v1 = &PKPaymentNetworkVisa;
      goto LABEL_48;
    case 5:
    case 7:
    case 8:
    case 23:
    case 27:
LABEL_29:
      v2 = PKAdditionalNetworkNameForIndex(a1);
      goto LABEL_49;
    case 6:
      v1 = &PKPaymentNetworkJCB;
      goto LABEL_48;
    case 9:
      v1 = &PKPaymentNetworkCartesBancaires;
      goto LABEL_48;
    case 10:
      v1 = &PKPaymentNetworkDankort;
      goto LABEL_48;
    case 11:
      v1 = &PKPaymentNetworkChinaUnionPay;
      goto LABEL_48;
    case 12:
      v1 = &PKPaymentNetworkEftpos;
      goto LABEL_48;
    case 13:
      v1 = &PKPaymentNetworkInterac;
      goto LABEL_48;
    case 14:
      v1 = &PKPaymentNetworkMada;
      goto LABEL_48;
    case 15:
      v1 = &PKPaymentNetworkMaestro;
      goto LABEL_48;
    case 16:
      v1 = &PKPaymentNetworkElectron;
      goto LABEL_48;
    case 17:
      v1 = &PKPaymentNetworkVPay;
      goto LABEL_48;
    case 18:
      v1 = &PKPaymentNetworkGirocard;
      goto LABEL_48;
    case 19:
      v1 = &PKPaymentNetworkMir;
      goto LABEL_48;
    case 20:
      v1 = &PKPaymentNetworkPagoBancomat;
      goto LABEL_48;
    case 21:
      v1 = &PKPaymentNetworkBancontact;
      goto LABEL_48;
    case 22:
      v1 = &PKPaymentNetworkPostFinance;
      goto LABEL_48;
    case 24:
      v1 = PKPaymentNetworkBankAxept;
      goto LABEL_48;
    case 25:
      v1 = PKPaymentNetworkMeeza;
      goto LABEL_48;
    case 26:
      v1 = PKPaymentNetworkNAPAS;
      goto LABEL_48;
    case 28:
      v1 = PKPaymentNetworkHimyan;
      goto LABEL_48;
    case 29:
      v1 = PKPaymentNetworkJaywan;
      goto LABEL_48;
    case 30:
      v1 = PKPaymentNetworkMyDebit;
LABEL_48:
      v2 = *v1;
LABEL_49:

      return v2;
    default:
      switch(a1)
      {
        case 100:
          v1 = &PKPaymentNetworkPrivateLabel;
          goto LABEL_48;
        case 103:
          v1 = &PKPaymentNetworkSuica;
          goto LABEL_48;
        case 105:
          v1 = &PKPaymentNetworkQuicPay;
          goto LABEL_48;
        case 106:
          v1 = &PKPaymentNetworkIDCredit;
          goto LABEL_48;
        case 107:
          v1 = PKPaymentNetworkHID;
          goto LABEL_48;
        case 108:
          v1 = PKPaymentNetworkBMAC;
          goto LABEL_48;
        case 109:
          v1 = PKPaymentNetworkSPTCC;
          goto LABEL_48;
        case 112:
          v1 = &PKPaymentNetworkElo;
          goto LABEL_48;
        case 113:
          v1 = PKPaymentNetworkCEMVMasterCard;
          goto LABEL_48;
        case 114:
          v1 = PKPaymentNetworkCubicMiFareDESFire;
          goto LABEL_48;
        case 115:
          v1 = PKPaymentNetworkCubicMiFarePlus;
          goto LABEL_48;
        case 116:
          v1 = PKPaymentNetworkMOT;
          goto LABEL_48;
        case 117:
          v1 = PKPaymentNetworkOctopus;
          goto LABEL_48;
        case 122:
          v1 = PKPaymentNetworkMOTPioneer;
          goto LABEL_48;
        case 123:
          v1 = &PKPaymentNetworkBarcode;
          goto LABEL_48;
        case 127:
          v1 = &PKPaymentNetworkWaon;
          goto LABEL_48;
        case 128:
          v1 = &PKPaymentNetworkNanaco;
          goto LABEL_48;
        case 131:
          v1 = PKPaymentNetworkNavigo;
          goto LABEL_48;
        case 136:
          v1 = &PKPaymentNetworkTmoney;
          goto LABEL_48;
        default:
          goto LABEL_29;
      }
  }
}

id PKDisplayablePaymentNetworkNameForPaymentCredentialType(uint64_t a1)
{
  v2 = 0;
  switch(a1)
  {
    case 0:
    case 108:
    case 109:
    case 110:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 122:
    case 129:
    case 130:
    case 131:
    case 133:
    case 135:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
      break;
    case 1:
      v3 = @"NETWORK_NAME_AMEX";
      goto LABEL_41;
    case 2:
      v3 = @"NETWORK_NAME_DISCOVER";
      goto LABEL_41;
    case 3:
      v3 = @"NETWORK_NAME_MASTERCARD";
      goto LABEL_41;
    case 4:
      v3 = @"NETWORK_NAME_VISA";
      goto LABEL_41;
    case 5:
      v3 = @"NETWORK_NAME_BANKCARD";
      goto LABEL_41;
    case 6:
      v3 = @"NETWORK_NAME_JCB";
      goto LABEL_41;
    case 7:
      v3 = @"NETWORK_NAME_DINERSCLUB";
      goto LABEL_41;
    case 8:
      v3 = @"NETWORK_NAME_CARTEBLEUE";
      goto LABEL_41;
    case 9:
      v3 = @"NETWORK_NAME_CARTEBANCAIRES";
      goto LABEL_41;
    case 10:
      v3 = @"NETWORK_NAME_DANKORT";
      goto LABEL_41;
    case 11:
      v3 = @"NETWORK_NAME_CHINAUNIONPAY";
      goto LABEL_41;
    case 12:
      v3 = @"NETWORK_NAME_EFTPOS";
      goto LABEL_41;
    case 13:
      v3 = @"NETWORK_NAME_INTERAC";
      goto LABEL_41;
    case 14:
      v3 = @"NETWORK_NAME_MADA";
      goto LABEL_41;
    case 15:
      v3 = @"NETWORK_NAME_MAESTRO";
      goto LABEL_41;
    case 16:
      v3 = @"NETWORK_NAME_ELECTRON";
      goto LABEL_41;
    case 17:
      v3 = @"NETWORK_NAME_VPAY";
      goto LABEL_41;
    case 18:
      v3 = @"NETWORK_NAME_GIROCARD";
      goto LABEL_41;
    case 19:
      v3 = @"NETWORK_NAME_MIR";
      goto LABEL_41;
    case 20:
      v3 = @"NETWORK_NAME_BANCOMAT";
      goto LABEL_41;
    case 21:
      v3 = @"NETWORK_NAME_BANCONTACT";
      goto LABEL_41;
    case 22:
      v3 = @"NETWORK_NAME_POSTFINANCE";
      goto LABEL_41;
    case 23:
    case 27:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 101:
    case 102:
    case 104:
    case 111:
    case 118:
    case 119:
    case 120:
    case 121:
    case 124:
    case 125:
    case 126:
    case 132:
    case 134:
      goto LABEL_4;
    case 24:
      v3 = @"NETWORK_NAME_BANKAXEPT";
      goto LABEL_41;
    case 25:
      v3 = @"NETWORK_NAME_MEEZA";
      goto LABEL_41;
    case 26:
      v3 = @"NETWORK_NAME_NAPAS";
      goto LABEL_41;
    case 28:
      v3 = @"NETWORK_NAME_HIMYAN";
      goto LABEL_41;
    case 29:
      v3 = @"NETWORK_NAME_JAYWAN";
      goto LABEL_41;
    case 30:
      v3 = @"NETWORK_NAME_MYDEBIT";
      goto LABEL_41;
    case 100:
      v3 = @"NETWORK_NAME_PRIVATELABEL";
      goto LABEL_41;
    case 103:
      v3 = @"NETWORK_NAME_SUICA";
      goto LABEL_41;
    case 105:
      v3 = @"NETWORK_NAME_QUICPAY";
      goto LABEL_41;
    case 106:
      v3 = @"NETWORK_NAME_ID";
      goto LABEL_41;
    case 107:
      v3 = @"NETWORK_NAME_HID";
      goto LABEL_41;
    case 112:
      v3 = @"NETWORK_NAME_ELO";
      goto LABEL_41;
    case 123:
      v2 = PKLocalizedAquamanString(&cfstr_NetworkNameBar.isa, 0);
      break;
    case 127:
      v3 = @"NETWORK_NAME_WAON";
      goto LABEL_41;
    case 128:
      v3 = @"NETWORK_NAME_NANACO";
LABEL_41:
      v2 = PKLocalizedPaymentString(&v3->isa, 0);
      break;
    default:
      if (a1 != 301)
      {
LABEL_4:
        v2 = PKAdditionalNetworkNameForIndex(a1);
      }

      break;
  }

  return v2;
}

id PKDisplayablePaymentNetworkCardNameForPaymentCredentialType(uint64_t a1)
{
  if (a1 <= 99)
  {
    switch(a1)
    {
      case 1:
        v1 = @"NETWORK_NAME_AMEX_CARD_NAME";
        break;
      case 2:
        v1 = @"NETWORK_NAME_DISCOVER_CARD_NAME";
        break;
      case 3:
        v1 = @"NETWORK_NAME_MASTERCARD_CARD_NAME";
        break;
      case 4:
        v1 = @"NETWORK_NAME_VISA_CARD_NAME";
        break;
      case 5:
        v1 = @"NETWORK_NAME_BANKCARD_CARD_NAME";
        break;
      case 6:
        v1 = @"NETWORK_NAME_JCB_CARD_NAME";
        break;
      case 7:
        v1 = @"NETWORK_NAME_DINERSCLUB";
        break;
      case 8:
        v1 = @"NETWORK_NAME_CARTEBLEUE_CARD_NAME";
        break;
      case 9:
        v1 = @"NETWORK_NAME_CARTEBANCAIRES_CARD_NAME";
        break;
      case 10:
        v1 = @"NETWORK_NAME_DANKORT_CARD_NAME";
        break;
      case 11:
        v1 = @"NETWORK_NAME_CHINAUNIONPAY_CARD_NAME";
        break;
      case 12:
        v1 = @"NETWORK_NAME_EFTPOS_CARD_NAME";
        break;
      case 13:
        v1 = @"NETWORK_NAME_INTERAC_CARD_NAME";
        break;
      case 14:
        v1 = @"NETWORK_NAME_MADA_CARD_NAME";
        break;
      case 15:
        v1 = @"NETWORK_NAME_MAESTRO_CARD_NAME";
        break;
      case 16:
        v1 = @"NETWORK_NAME_ELECTRON_CARD_NAME";
        break;
      case 17:
        v1 = @"NETWORK_NAME_VPAY_CARD_NAME";
        break;
      case 18:
        v1 = @"NETWORK_NAME_GIROCARD_CARD_NAME";
        break;
      case 19:
        v1 = @"NETWORK_NAME_MIR_CARD_NAME";
        break;
      case 20:
        v1 = @"NETWORK_NAME_BANCOMAT";
        break;
      case 21:
        v1 = @"NETWORK_NAME_BANCONTACT";
        break;
      case 22:
        v1 = @"NETWORK_NAME_POSTFINANCE_CARD_NAME";
        break;
      case 24:
        v1 = @"NETWORK_NAME_BANKAXEPT_CARD_NAME";
        break;
      case 25:
        v1 = @"NETWORK_NAME_MEEZA_CARD_NAME";
        break;
      case 26:
        v1 = @"NETWORK_NAME_NAPAS_CARD_NAME";
        break;
      case 28:
        v1 = @"NETWORK_NAME_HIMYAN_CARD_NAME";
        break;
      case 29:
        v1 = @"NETWORK_NAME_JAYWAN_CARD_NAME";
        break;
      case 30:
        v1 = @"NETWORK_NAME_MYDEBIT_CARD_NAME";
        break;
      default:
        goto LABEL_54;
    }

    goto LABEL_55;
  }

  if (a1 > 111)
  {
    if (a1 <= 126)
    {
      if (a1 == 112)
      {
        v1 = @"NETWORK_NAME_ELO_CARD_NAME";
        goto LABEL_55;
      }

      if (a1 == 123)
      {
        v2 = PKLocalizedAquamanString(&cfstr_NetworkNameBar_0.isa, 0);
        goto LABEL_56;
      }
    }

    else
    {
      switch(a1)
      {
        case 127:
          v1 = @"NETWORK_NAME_WAON_CARD_NAME";
          goto LABEL_55;
        case 128:
          v1 = @"NETWORK_NAME_NANACO_CARD_NAME";
          goto LABEL_55;
        case 135:
          v2 = PKLocalizedAppleBalanceString(&cfstr_NetworkNameApp.isa, 0);
          goto LABEL_56;
      }
    }

    goto LABEL_54;
  }

  if (a1 <= 104)
  {
    if (a1 == 100)
    {
      v1 = @"NETWORK_NAME_PRIVATELABEL_CARD_NAME";
      goto LABEL_55;
    }

    if (a1 == 103)
    {
      v1 = @"NETWORK_NAME_SUICA_CARD_NAME";
      goto LABEL_55;
    }

LABEL_54:
    v1 = @"NETWORK_NAME_GENERIC_CARD_NAME";
    goto LABEL_55;
  }

  if (a1 == 105)
  {
    v1 = @"NETWORK_NAME_QUICPAY_CARD_NAME";
    goto LABEL_55;
  }

  if (a1 == 106)
  {
    v1 = @"NETWORK_NAME_ID_CARD_NAME";
    goto LABEL_55;
  }

  if (a1 != 107)
  {
    goto LABEL_54;
  }

  v1 = @"NETWORK_NAME_HID_CARD_NAME";
LABEL_55:
  v2 = PKLocalizedPaymentString(&v1->isa, 0);
LABEL_56:

  return v2;
}

id PKPaymentNetworkNamesForPaymentCredentialTypes(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = PKPaymentNetworkNameForPaymentCredentialType([*(*(&v11 + 1) + 8 * i) integerValue]);
        if (v8)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [MEMORY[0x1E695DEC8] arrayWithArray:v2];

  return v9;
}

id PKPaymentCredentialTypesForPaymentNetworkNames(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = MEMORY[0x1E696AD98];
        v9 = PKPaymentCredentialTypeForPaymentNetworkName(*(*(&v13 + 1) + 8 * i));
        v10 = [v8 numberWithInteger:{v9, v13}];
        [v2 addObject:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = [MEMORY[0x1E695DEC8] arrayWithArray:v2];

  return v11;
}

id PKDefaultPaymentNetworkNameForPaymentPass(void *a1)
{
  v1 = [a1 devicePrimaryPaymentApplication];
  v2 = v1;
  if (v1)
  {
    v3 = PKPaymentNetworkNameForPaymentCredentialType([v1 paymentNetworkIdentifier]);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id PKDictionaryFromJSONString(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 dataUsingEncoding:4];
  if (v2)
  {
    v7 = 0;
    v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v2 options:0 error:&v7];
    v4 = v7;
    if (v4)
    {
      v5 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v9 = v4;
        v10 = 2112;
        v11 = v1;
        _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Error decoding string into NSDictionary with error: %@, string: %@", buf, 0x16u);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_9;
      }
    }
  }

  v3 = 0;
LABEL_9:

  return v3;
}

uint64_t PKSupportsNestedInAppPaymentSheet()
{
  if (qword_1ED6D1250 != -1)
  {
    dispatch_once(&qword_1ED6D1250, &__block_literal_global_323);
  }

  if (byte_1ED6D11C9)
  {
    v0 = 1;
  }

  else
  {
    if (qword_1ED6D1260 != -1)
    {
      dispatch_once(&qword_1ED6D1260, &__block_literal_global_333);
    }

    v0 = byte_1ED6D11CB;
  }

  return v0 & 1;
}

__CFString *PKLegacyTransitNetworkIdentifierForCredentialType(uint64_t a1)
{
  if (a1 > 107)
  {
    if (a1 == 109)
    {
      v1 = PKTransitNetworkIdentifierSPTCC;
      goto LABEL_13;
    }

    if (a1 == 108)
    {
      v1 = PKTransitNetworkIdentifierBMAC;
      goto LABEL_13;
    }

LABEL_8:
    if ((a1 - 1) <= 0x62 && (PKPaymentNetworkNameForPaymentCredentialType(a1), (v2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v3 = v2;
      v4 = MEMORY[0x1E696AEC0];
      v5 = [v2 lowercaseString];
      v6 = [v4 stringWithFormat:@"%@.emv.%@", @"com.apple.transit", v5];
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_14;
  }

  if (a1 == 1)
  {
    v1 = PKTransitNetworkIdentifierAmericanExpress;
    goto LABEL_13;
  }

  if (a1 != 103)
  {
    goto LABEL_8;
  }

  v1 = PKTransitNetworkIdentifierSuica;
LABEL_13:
  v6 = *v1;
LABEL_14:

  return v6;
}

__CFString *PKPaymentTransitAppletFormatForPaymentNetwork(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Suica"])
  {
    v2 = PKPaymentAppletDataFormatSuica;
LABEL_7:
    v3 = *v2;
    goto LABEL_8;
  }

  if ([v1 isEqualToString:@"BMAC"])
  {
    v2 = PKTransitAppletDataFormatBMAC;
    goto LABEL_7;
  }

  if ([v1 isEqualToString:@"SPTCC"])
  {
    v2 = PKTransitAppletDataFormatSPTCC;
    goto LABEL_7;
  }

  v3 = 0;
LABEL_8:

  return v3;
}

__CFString *PKPaymentPaymentNetworkForTransitAppletFormat(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"transit.felica.suica"])
  {
    v2 = &PKPaymentNetworkSuica;
LABEL_7:
    v3 = *v2;
    goto LABEL_8;
  }

  if ([v1 isEqualToString:@"transit.apple.bmac"])
  {
    v2 = PKPaymentNetworkBMAC;
    goto LABEL_7;
  }

  if ([v1 isEqualToString:@"transit.apple.sptcc"])
  {
    v2 = PKPaymentNetworkSPTCC;
    goto LABEL_7;
  }

  v3 = 0;
LABEL_8:

  return v3;
}

uint64_t PKUnpredictableNumberFromNonce(void *a1)
{
  v2 = 0;
  [a1 getBytes:&v2 length:4];
  return bswap32(v2);
}

id PKInAppSupportedPaymentNetworks()
{
  v6[33] = *MEMORY[0x1E69E9840];
  v6[0] = @"AmEx";
  v6[1] = @"Bancomat";
  v6[2] = @"PagoBancomat";
  v6[3] = @"Bancontact";
  v6[4] = @"CarteBancaire";
  v6[5] = @"CarteBancaires";
  v6[6] = @"CartesBancaires";
  v6[7] = @"ChinaUnionPay";
  v6[8] = @"Dankort";
  v6[9] = @"Discover";
  v6[10] = @"Eftpos";
  v6[11] = @"Electron";
  v6[12] = @"Elo";
  v6[13] = @"Interac";
  v6[14] = @"girocard";
  v6[15] = @"mada";
  v6[16] = @"Maestro";
  v6[17] = @"MasterCard";
  v6[18] = @"PrivateLabel";
  v6[19] = @"Visa";
  v6[20] = @"VPay";
  v6[21] = @"JCB";
  v6[22] = @"iD";
  v6[23] = @"QUICPay";
  v6[24] = @"Mir";
  v6[25] = @"PostFinanceAG";
  v6[26] = @"Meeza";
  v6[27] = @"NAPAS";
  v6[28] = @"BankAxept";
  v6[29] = @"Barcode";
  v6[30] = @"Himyan";
  v6[31] = @"Jaywan";
  v6[32] = @"MyDebit";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:33];
  v1 = PKAdditionalSupportedNetworks();
  v2 = v1;
  if (v1)
  {
    v3 = [v1 allKeys];
    v4 = [v0 arrayByAddingObjectsFromArray:v3];
  }

  else
  {
    v4 = v0;
  }

  return v4;
}

uint64_t PKNearFieldRadioIsAvailable()
{
  if (qword_1ED6D12A8 != -1)
  {
    dispatch_once(&qword_1ED6D12A8, &__block_literal_global_684);
  }

  return byte_1ED6D11CC;
}

uint64_t __PKNearFieldRadioIsAvailable_block_invoke()
{
  result = MGGetBoolAnswer();
  if (result)
  {
    result = PKGetClassNFHardwareManager();
    v1 = result != 0;
  }

  else
  {
    v1 = 0;
  }

  byte_1ED6D11CC = v1;
  return result;
}

uint64_t PKIsSRD()
{
  if (qword_1ED6D12B0 != -1)
  {
    dispatch_once(&qword_1ED6D12B0, &__block_literal_global_689);
  }

  return byte_1ED6D11CD;
}

uint64_t __PKIsSRD_block_invoke()
{
  result = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], "IODeviceTree:/chosen");
  if (result)
  {
    v1 = result;
    CFProperty = IORegistryEntryCreateCFProperty(result, @"research-enabled", 0, 0);
    if (CFProperty)
    {
      v3 = CFProperty;
      v4 = CFGetTypeID(CFProperty);
      if (v4 == CFDataGetTypeID() && CFDataGetLength(v3) == 4)
      {
        byte_1ED6D11CD = *CFDataGetBytePtr(v3) == 1;
      }

      CFRelease(v3);
    }

    return IOObjectRelease(v1);
  }

  return result;
}

uint64_t PKIsBeneficiaryAccount()
{
  if (PKPaymentSetupForceIsBeneficiaryAccountEnabled())
  {
    v0 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v0, OS_LOG_TYPE_DEFAULT, "Forcing isBeneficiaryAccount", buf, 2u);
    }

    v1 = 1;
  }

  else
  {
    v0 = [MEMORY[0x1E698DC80] sharedInstance];
    v2 = [v0 primaryAuthKitAccount];
    if (v2)
    {
      v1 = [v0 isBeneficiaryForAccount:v2];
    }

    else
    {
      v3 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Unable to find primary apple account for isBeneficiary check", v5, 2u);
      }

      v1 = 0;
    }
  }

  return v1;
}

uint64_t PKIsBeneficiaryAccountWithAltDsid(void *a1)
{
  v1 = a1;
  if (PKPaymentSetupForceIsBeneficiaryAccountEnabled())
  {
    v2 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Forcing isBeneficiaryAccount", buf, 2u);
    }

    v3 = 1;
  }

  else
  {
    v2 = [MEMORY[0x1E698DC80] sharedInstance];
    v4 = [v2 authKitAccountWithAltDSID:v1];
    if (v4)
    {
      v3 = [v2 isBeneficiaryForAccount:v4];
    }

    else
    {
      v5 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Unable to find apple account for altDsid for isBeneficiary check", v7, 2u);
      }

      v3 = 0;
    }
  }

  return v3;
}

void PKSecureElementIsAvailableWithCompletion(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_1ED6D12C0 != -1)
  {
    dispatch_once(&qword_1ED6D12C0, &__block_literal_global_700);
  }

  v4 = qword_1ED6D12C8;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __PKSecureElementIsAvailableWithCompletion_block_invoke_2;
  v6[3] = &unk_1E79C8958;
  v7 = v3;
  v8 = a1;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __PKSecureElementIsAvailableWithCompletion_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.passkit.secureelement.available", 0);
  v1 = qword_1ED6D12C8;
  qword_1ED6D12C8 = v0;

  v2 = dispatch_queue_create("com.apple.passkit.secureelement.reply", MEMORY[0x1E69E96A8]);
  v3 = qword_1ED6D12D0;
  qword_1ED6D12D0 = v2;
}

void __PKSecureElementIsAvailableWithCompletion_block_invoke_2(uint64_t a1)
{
  v2 = PKSecureElementAvailableFlags();
  if (v2)
  {
    v4 = qword_1ED6D12D0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __PKSecureElementIsAvailableWithCompletion_block_invoke_3;
    block[3] = &unk_1E79C8958;
    v10 = *(a1 + 32);
    v11 = v2;
    dispatch_async(v4, block);
    v3 = v10;
  }

  else
  {
    v3 = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v6 = __PKSecureElementIsAvailableWithCompletion_block_invoke_4;
    v7 = &unk_1E79C89A8;
    v8 = *(a1 + 32);
    if (qword_1ED6D12B8 != -1)
    {
      dispatch_once(&qword_1ED6D12B8, &__block_literal_global_695);
    }

    v6(v5, 1u, byte_1ED6D11CE != 0);
  }
}

uint64_t __PKSecureElementIsAvailableWithCompletion_block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, (*(a1 + 40) >> 1) & 1);
  }

  return result;
}

void __PKSecureElementIsAvailableWithCompletion_block_invoke_4(uint64_t a1, unsigned int a2, int a3)
{
  v3 = a3;
  v4 = a2;
  v6 = 2;
  if (!a3)
  {
    v6 = 0;
  }

  PKSetSecureElementAvailableFlags(v6 | a2);
  v7 = qword_1ED6D12D0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __PKSecureElementIsAvailableWithCompletion_block_invoke_5;
  v8[3] = &unk_1E79C8980;
  v9 = *(a1 + 32);
  v10 = v4;
  v11 = v3;
  dispatch_async(v7, v8);
}

uint64_t __PKSecureElementIsAvailableWithCompletion_block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40), *(a1 + 41));
  }

  return result;
}

uint64_t PKHomeButtonIsAvailable()
{
  if (qword_1ED6D12D8 != -1)
  {
    dispatch_once(&qword_1ED6D12D8, &__block_literal_global_705);
  }

  return byte_1ED6D11CF;
}

uint64_t __PKHomeButtonIsAvailable_block_invoke()
{
  result = MGGetSInt32Answer();
  byte_1ED6D11CF = result != 2;
  return result;
}

uint64_t PKLandscapePearlIsSupported()
{
  if (qword_1ED6D12F8 != -1)
  {
    dispatch_once(&qword_1ED6D12F8, &__block_literal_global_725);
  }

  return byte_1ED6D11D3;
}

uint64_t __PKLandscapePearlIsSupported_block_invoke()
{
  result = MGGetBoolAnswer();
  byte_1ED6D11D3 = result;
  return result;
}

uint64_t PKSystemApertureIsAvailable()
{
  if (qword_1ED6D1300 != -1)
  {
    dispatch_once(&qword_1ED6D1300, &__block_literal_global_730);
  }

  return byte_1ED6D11D4;
}

uint64_t __PKSystemApertureIsAvailable_block_invoke()
{
  result = SBSIsSystemApertureAvailable();
  byte_1ED6D11D4 = result;
  return result;
}

double PKFrontCameraNormalizedReferencePosition()
{
  if (qword_1ED6D1308 != -1)
  {
    dispatch_once(&qword_1ED6D1308, &__block_literal_global_732);
  }

  return *&qword_1ED6D1310;
}

void __PKFrontCameraNormalizedReferencePosition_block_invoke()
{
  qword_1ED6D1310 = 0x3FE0000000000000;
  *algn_1ED6D1318 = 0x3FE0000000000000;
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = MGGetSInt32Answer();
    v3 = MGGetSInt32Answer();
    v4 = MGGetSInt32Answer();
    v5 = CFGetTypeID(v1);
    if (v5 == CFArrayGetTypeID() && CFArrayGetCount(v1) >= 2 && v2 >= 1 && v3 >= 1 && v4 >= 1)
    {
      v6 = v2 / 25.4;
      [CFArrayGetValueAtIndex(v1 0)];
      v8 = v7;
      [CFArrayGetValueAtIndex(v1 1)];
      *&qword_1ED6D1310 = *&qword_1ED6D1310 - v6 * v9 / v3;
      *algn_1ED6D1318 = *algn_1ED6D1318 - v6 * v8 / v4;
    }

    CFRelease(v1);
  }
}

uint64_t PKFrontFaceCameraIsWithinScreen()
{
  if (qword_1ED6D1300 != -1)
  {
    dispatch_once(&qword_1ED6D1300, &__block_literal_global_730);
  }

  return byte_1ED6D11D4;
}

uint64_t PKDeviceHasInternalBatteryAndIsUnplugged()
{
  result = MGGetBoolAnswer();
  if (result)
  {
    return MGGetBoolAnswer() ^ 1;
  }

  return result;
}

uint64_t PKWebServiceFeaturesCredential(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 targetDevice];
  v5 = [v4 deviceRegion];

  v6 = [v3 context];

  v7 = [v6 configuration];
  v8 = [v7 paymentSetupFeaturedNetworksForRegion:v5];

  v9 = PKPaymentNetworkNameForPaymentCredentialType(a2);
  v10 = [v8 containsObject:v9];

  return v10;
}

uint64_t PKDeviceSupportsFelicaDebitWithWebService(void *a1)
{
  v1 = a1;
  v2 = PKWebServiceFeaturesCredential(v1, 103);
  v3 = [v1 targetDevice];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v1 targetDevice];
    v5 = [v4 felicaSecureElementIsAvailable];
  }

  else
  {
    v5 = 0;
  }

  return (v2 == 0) | ((v5 & 1) == 0);
}

uint64_t PKDeviceSupportsTransitWithWebService(void *a1)
{
  v1 = a1;
  if (qword_1ED6D1260 != -1)
  {
    dispatch_once(&qword_1ED6D1260, &__block_literal_global_333);
  }

  if ((byte_1ED6D11CB & 1) == 0)
  {
    v3 = [v1 targetDevice];
    v4 = [v3 deviceRegion];
    v5 = [v1 context];
    v6 = [v5 configuration];

    v7 = [v6 paymentSetupBrowsableProductTypesForRegion:v4];
    if ([v7 containsObject:&unk_1F23B4A60])
    {
      if ([v4 isEqualToString:@"CN"])
      {
        if (objc_opt_respondsToSelector())
        {
          if ([v3 supportsCredentialType:108])
          {
            v2 = 1;
          }

          else
          {
            v2 = [v3 supportsCredentialType:109];
          }

          goto LABEL_28;
        }
      }

      else
      {
        if ([v4 isEqualToString:@"JP"])
        {
          v8 = PKWebServiceFeaturesCredential(v1, 103);
          if (objc_opt_respondsToSelector())
          {
            v9 = [v3 felicaSecureElementIsAvailable];
          }

          else
          {
            v9 = 0;
          }

          v2 = (v8 != 0) & v9;
          goto LABEL_28;
        }

        if ([v4 isEqualToString:@"HK"])
        {
          v10 = PKWebServiceFeaturesCredential(v1, 117);
          if (objc_opt_respondsToSelector())
          {
            v11 = [v3 supportsCredentialType:117] ^ 1;
          }

          else
          {
            LOBYTE(v11) = 1;
          }

          v12 = (objc_opt_respondsToSelector() & 1) != 0 ? [v3 felicaSecureElementIsAvailable] : 0;
          v13 = (objc_opt_respondsToSelector() & 1) != 0 ? [v3 supportsExpressForAutomaticSelectionTechnologyType:6] : 0;
          if (!((v10 == 0) | v11 & 1))
          {
            v2 = v12 & v13;
            goto LABEL_28;
          }
        }
      }
    }

    v2 = 0;
LABEL_28:

    goto LABEL_29;
  }

  v2 = 0;
LABEL_29:

  return v2;
}

uint64_t PKTargetDeviceSupportsExpress(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [v1 secureElementSupportsExpressMode];
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "BOOL PKTargetDeviceSupportsExpress(__strong id<PKPaymentWebServiceTargetDeviceProtocol>)";
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Error - %s called with nil target device, returning NO", &v5, 0xCu);
    }

    v2 = 0;
  }

  return v2;
}

uint64_t PKFelicaSecureElementIsAvailable()
{
  if (qword_1ED6D1320 != -1)
  {
    dispatch_once(&qword_1ED6D1320, &__block_literal_global_770);
  }

  return byte_1ED6D11D5;
}

void __PKFelicaSecureElementIsAvailable_block_invoke()
{
  if (qword_1ED6D12B8 != -1)
  {
    dispatch_once(&qword_1ED6D12B8, &__block_literal_global_695);
  }

  byte_1ED6D11D5 = byte_1ED6D11CE;
  if (byte_1ED6D11CE)
  {
    v0 = +[PKSecureElement sharedSecureElement];
    byte_1ED6D11D5 = ([v0 supportedTechnologies] & 4) != 0;
  }
}

uint64_t PKDeviceSupportsReaderMode()
{
  if (qword_1ED6D1328 != -1)
  {
    dispatch_once(&qword_1ED6D1328, &__block_literal_global_773);
  }

  return byte_1ED6D11D6;
}

void __PKDeviceSupportsReaderMode_block_invoke()
{
  v0 = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
  byte_1ED6D11D6 = [v0 areFeaturesSupported:1 outError:0];
}

uint64_t PKDeviceSupportsBackgroundTagReading()
{
  if (qword_1ED6D1330 != -1)
  {
    dispatch_once(&qword_1ED6D1330, &__block_literal_global_775);
  }

  return byte_1ED6D11D7;
}

void __PKDeviceSupportsBackgroundTagReading_block_invoke()
{
  v0 = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
  byte_1ED6D11D7 = [v0 areFeaturesSupported:64 outError:0];
}

uint64_t PKGetSecureElementOwnershipState(void *a1)
{
  v1 = a1;
  v2 = +[PKSecureElement sharedSecureElement];
  if (!v1)
  {
    v1 = PKCurrentUserUUID();
  }

  v3 = [v2 ownershipStateForUserUUID:v1];

  return v3;
}

uint64_t PKSetSecureElementOwnerUserUUID(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[PKSecureElement sharedSecureElement];
  v6 = [v5 setOwnerUserUUID:v4 keybagUUID:v3];

  return v6;
}

id PKGetSecureElementOwnerUserUUID()
{
  v0 = +[PKSecureElement sharedSecureElement];
  v1 = [v0 ownerUserUUID];

  return v1;
}

void PKRootVolumeIsBootVolume(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 1);
  }

  else
  {
    __break(1u);
  }
}

id PKCreateTapToRadarURL(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a6;
  v14 = MEMORY[0x1E696AF20];
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = objc_alloc_init(v14);
  [v18 setScheme:@"tap-to-radar"];
  [v18 setHost:@"new"];
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"BundleID" value:@"com.apple.Passbook"];
  [v19 addObject:v20];

  v21 = objc_alloc(MEMORY[0x1E696AF60]);
  if (v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = @"675055";
  }

  v23 = [v21 initWithName:@"ComponentID" value:v22];

  [v19 addObject:v23];
  v24 = objc_alloc(MEMORY[0x1E696AF60]);
  if (v17)
  {
    v25 = v17;
  }

  else
  {
    v25 = @"UI/Usability";
  }

  v26 = [v24 initWithName:@"Classification" value:v25];

  [v19 addObject:v26];
  v27 = objc_alloc(MEMORY[0x1E696AF60]);
  if (v16)
  {
    v28 = v16;
  }

  else
  {
    v28 = @"I Didn't Try";
  }

  v29 = [v27 initWithName:@"Reproducibility" value:v28];

  [v19 addObject:v29];
  if (v11 && [v11 length])
  {
    v30 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Title" value:v11];
    [v19 addObject:v30];
  }

  if (v12 && [v12 length])
  {
    v31 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Description" value:v12];
    [v19 addObject:v31];
  }

  if (v13 && [v13 count])
  {
    v32 = objc_alloc(MEMORY[0x1E696AF60]);
    v33 = [v13 componentsJoinedByString:{@", "}];
    v34 = [v32 initWithName:@"Attachments" value:v33];
    [v19 addObject:v34];
  }

  [v18 setQueryItems:v19];
  v35 = [v18 URL];

  return v35;
}

void PKSetEnvironment(void *a1, void *a2, void *a3)
{
  v11 = a1;
  v5 = a2;
  v6 = a3;
  if (v11 && [v11 caseInsensitiveCompare:@"PROD"])
  {
    PKSetStockholmEnvironmentName(v11);
    PKSetStockholmConfigURL(v5);
    PKSetMerchantServicesURL(v6);
  }

  else
  {
    PKSetStockholmEnvironmentName(0);
    PKSetStockholmConfigURL(0);
    PKSetMerchantServicesURL(0);
    PKClearPreferencesDomain(@"com.apple.stockholm");
  }

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = PKSharedWebServiceContextPath();
  [v7 removeItemAtPath:v8 error:0];

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = PKBackgroundWebServiceContextPath();
  [v9 removeItemAtPath:v10 error:0];
}

uint64_t PKIsPairedWithWatch()
{
  v0 = [(objc_class *)getNRPairedDeviceRegistryClass() sharedInstance];
  v1 = [v0 isPaired];

  return v1;
}

uint64_t PKHasPairedWatchSupportingFeatureIdentifier(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (PKIsPairedWithWatch())
  {
    v2 = PKPairedOrPairingDevice();
    v3 = _MergedGlobals_168();
    v4 = [v2 valueForProperty:v3];

    if ([v4 containsObject:v1])
    {
      v5 = PKFeatureIdentifierToString(2);
      v6 = [(__CFString *)v1 isEqualToString:v5];

      if (!v6)
      {
        v10 = 1;
        goto LABEL_15;
      }

      v7 = off_1ED6D1058();
      v8 = [v2 valueForProperty:v7];

      v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"DC264F98-B0E2-4D96-9248-663A801E4FB1"];
      v10 = [v2 supportsCapability:v9];

      v11 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = @"NO";
        if (v10)
        {
          v12 = @"YES";
        }

        v14 = 138412546;
        v15 = v8;
        v16 = 2112;
        v17 = v12;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "(account-pass-feature-check) watchOSVersion %@ supports Apple card capability %@", &v14, 0x16u);
      }
    }

    else
    {
      v8 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412546;
        v15 = v4;
        v16 = 2112;
        v17 = v1;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Paired device supported features %@ does not include %@", &v14, 0x16u);
      }

      v10 = 0;
    }

LABEL_15:
    goto LABEL_16;
  }

  v10 = 0;
LABEL_16:

  return v10;
}

uint64_t PKIsDeviceParing(void *a1)
{
  v1 = off_1ED6D1060;
  v2 = a1;
  v3 = v1();
  v4 = [v2 valueForProperty:v3];

  v5 = off_1ED6D1068();
  v6 = [v2 valueForProperty:v5];

  if ([v4 BOOLValue])
  {
    v7 = [v6 BOOLValue] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t PKIsAltAccountPairedOrPairing()
{
  v0 = PKPairedOrPairingDevice();
  HasAltAccount = PKNRDeviceHasAltAccount(v0);

  return HasAltAccount;
}

uint64_t PKNRDeviceHasAltAccount(void *a1)
{
  v1 = getNRDevicePropertyIsAltAccount[0];
  v2 = a1;
  v3 = v1();
  v4 = [v2 valueForProperty:v3];

  v5 = [v4 BOOLValue];
  return v5;
}

id PKSerialNumberFromNRDevice(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = getNRDevicePropertySerialNumber[0]();
  v3 = [v1 valueForProperty:v2];

  if (!v3)
  {
    v4 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v1;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Unable to fetch companion serial number from given device:%@", &v6, 0xCu);
    }
  }

  return v3;
}

double PKScreenScaleFromNRDevice(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = getNRDevicePropertyScreenScale[0]();
  v3 = [v1 valueForProperty:v2];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v3 floatValue];
    v5 = v4;
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v1;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "We couldn't get screen scale from given device %@, falling back to @3x", &v8, 0xCu);
    }

    v5 = 3.0;
  }

  return v5;
}

id PKDeviceClassFromNRDevice(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = getNRDevicePropertyClass[0]();
  v3 = [v1 valueForProperty:v2];

  if (!v3)
  {
    v4 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v1;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Unable to fetch device class from given device:%@", &v6, 0xCu);
    }
  }

  return v3;
}

id PKOSVersionFromNRDevice(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = off_1ED6D1058();
  v3 = [v1 valueForProperty:v2];

  if (!v3)
  {
    v4 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v1;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Unable to fetch OS version from given device:%@", &v6, 0xCu);
    }
  }

  return v3;
}

id PKProductTypeFromNRDevice(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = getNRDevicePropertyProductType[0]();
  v3 = [v1 valueForProperty:v2];

  if (!v3)
  {
    v4 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v1;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Unable to fetch device class from given device:%@", &v6, 0xCu);
    }
  }

  return v3;
}

id PKSerialNumberFromPairedOrPairingDevice()
{
  v0 = PKPairedOrPairingDevice();
  v1 = PKSerialNumberFromNRDevice(v0);

  return v1;
}

id PKFormattedStringForPAN(void *a1)
{
  v1 = [a1 mutableCopy];
  [v1 replaceOccurrencesOfString:@" " withString:&stru_1F227FD28 options:0 range:{0, objc_msgSend(v1, "length")}];
  v2 = [v1 length];
  v3 = v2;
  if (v2 > 15)
  {
    if (v2 == 16 && [v1 hasPrefix:@"56"])
    {
      goto LABEL_16;
    }

LABEL_10:
    v5 = v3 >> 2;
    v6 = v5 + 1;
    v7 = 4 * v5;
    do
    {
      if (v7 < v3)
      {
        [v1 insertString:@" " atIndex:v7];
      }

      --v6;
      v7 -= 4;
    }

    while (v6 > 1);
    goto LABEL_21;
  }

  if (([v1 hasPrefix:@"34"] & 1) != 0 || objc_msgSend(v1, "hasPrefix:", @"37"))
  {
    if ([v1 length] >= 0xB)
    {
      [v1 insertString:@" " atIndex:10];
    }

    if ([v1 length] > 4)
    {
      v4 = 4;
LABEL_20:
      [v1 insertString:@" " atIndex:v4];
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  if (([v1 hasPrefix:@"56"] & 1) == 0)
  {
    if (v3 < 4)
    {
      goto LABEL_21;
    }

    goto LABEL_10;
  }

LABEL_16:
  if ([v1 length] >= 0xB)
  {
    [v1 insertString:@" " atIndex:10];
  }

  if ([v1 length] > 6)
  {
    v4 = 6;
    goto LABEL_20;
  }

LABEL_21:

  return v1;
}

id PKFPANSuffixFromFPAN(void *a1)
{
  v1 = a1;
  if ([v1 length] < 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 substringFromIndex:{objc_msgSend(v1, "length") - 4}];
  }

  return v2;
}

id PKApplyFormatToString(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5 && [v6 length] && objc_msgSend(v7, "count"))
  {
    v8 = MEMORY[0x1E696AB08];
    v9 = [v7 componentsJoinedByString:&stru_1F227FD28];
    v10 = [v8 characterSetWithCharactersInString:v9];

    v11 = [v5 componentsSeparatedByCharactersInSet:v10];
    v12 = [v11 componentsJoinedByString:&stru_1F227FD28];

    v13 = [v6 rangeOfCharacterFromSet:v10 options:12];
    v15 = v14;
    v16 = [v12 mutableCopy];
    v17 = [v6 length];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __PKApplyFormatToString_block_invoke;
    v23 = &unk_1E79C89D0;
    v24 = v7;
    v25 = v16;
    v26 = v13;
    v27 = v15;
    v18 = v16;
    [v6 enumerateSubstringsInRange:0 options:v17 usingBlock:{2, &v20}];
    v5 = [v18 copy];
  }

  return v5;
}

void __PKApplyFormatToString_block_invoke(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v12 = a2;
  v10 = [*(a1 + 32) containsObject:v12];
  v11 = v12;
  if (v10)
  {
    if (a3 < [*(a1 + 40) length] || a3 >= *(a1 + 48))
    {
      [*(a1 + 40) insertString:v12 atIndex:a3];
    }

    else
    {
      *a7 = 1;
    }

    v11 = v12;
  }
}

id PKFormattedSanitizedPAN(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AE88] scannerWithString:a1];
  v2 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"*"];
  v3 = [MEMORY[0x1E696AD60] string];
  if (([v1 isAtEnd] & 1) == 0)
  {
    do
    {
      v9 = 0;
      v4 = [v1 scanUpToCharactersFromSet:v2 intoString:&v9];
      v5 = v9;
      if (v4)
      {
        [v3 appendString:v5];
      }

      v6 = [v2 invertedSet];
      v7 = [v1 scanUpToCharactersFromSet:v6 intoString:0];

      if (v7)
      {
        [v3 appendFormat:@" %@ ", @"••••"];
      }
    }

    while (![v1 isAtEnd]);
  }

  return v3;
}

id PKSanitizedPrimaryAccountRepresentationForPaymentCredential(void *a1)
{
  v1 = a1;
  v2 = [v1 sanitizedPrimaryAccountName];
  if (![v2 length])
  {
    v3 = [v1 sanitizedPrimaryAccountNumber];
    v4 = PKMaskedPaymentPAN(v3);

    v2 = v4;
  }

  return v2;
}

id PKSanitizedDeviceAccountNumberForPass(void *a1)
{
  v1 = [a1 devicePrimaryPaymentApplication];
  v2 = PKSanitizedDeviceAccountNumberForPaymentApplication(v1);

  return v2;
}

id PKSanitizedDeviceAccountNumberForPaymentApplication(void *a1)
{
  v1 = a1;
  v2 = [v1 paymentNetworkIdentifier];
  if (v2 != 117 && v2 != 11)
  {
    v5 = [v1 dpanSuffix];
    v6 = PKMaskedPaymentPAN(v5);
LABEL_8:
    v7 = v6;

    goto LABEL_10;
  }

  v4 = [v1 sanitizedDPAN];

  if (v4)
  {
    v5 = [v1 sanitizedDPAN];
    v6 = PKFormattedSanitizedPAN(v5);
    goto LABEL_8;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

id PKSanitizedBankAccountNumber(void *a1)
{
  v1 = a1;
  if ([v1 length] > 4)
  {
    v3 = [v1 substringFromIndex:{objc_msgSend(v1, "length") - 4}];
    v4 = [&stru_1F227FD28 stringByPaddingToLength:objc_msgSend(v1 withString:"length") - 4 startingAtIndex:{@"•", 0}];
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v4, v3];
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

__CFString *PKDisplayableStringForPaymentApplicationState(uint64_t a1)
{
  v3 = a1 - 2;
  if (a1 - 2) <= 8 && ((0x13Fu >> v3))
  {
    v4 = PKLocalizedPaymentString(&off_1E79C8CB8[v3]->isa, 0, v1);
  }

  else
  {
    v4 = &stru_1F227FD28;
  }

  return v4;
}

uint64_t __PKSortedPaymentApplicationsByAID_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) applicationIdentifier];
  v8 = [v5 applicationIdentifier];
  v9 = [v6 applicationIdentifier];
  v10 = [v8 caseInsensitiveCompare:v9];
  if (!v10)
  {
    if (([v5 supportsComboCard] & 1) != 0 || objc_msgSend(v6, "supportsComboCard"))
    {
      v16 = [v5 paymentType];
      if (v16 == [v5 auxiliaryPaymentType])
      {
        v17 = 1;
      }

      else
      {
        v17 = -1;
      }
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_25;
  }

  v11 = v10;
  v12 = v8;
  v13 = v7;
  v14 = v13;
  if (v12 == v13)
  {

    goto LABEL_13;
  }

  if (!v13 || !v12)
  {

    goto LABEL_15;
  }

  v15 = [v12 isEqualToString:v13];

  if (v15)
  {
LABEL_13:
    v18 = *(a1 + 40) == 0;
    v19 = -1;
    goto LABEL_22;
  }

LABEL_15:
  v20 = v9;
  v21 = v14;
  v22 = v21;
  if (v20 == v21)
  {

LABEL_21:
    v18 = *(a1 + 40) == 0;
    v19 = 1;
LABEL_22:
    if (v18)
    {
      v17 = -v19;
    }

    else
    {
      v17 = v19;
    }

    goto LABEL_25;
  }

  if (v14 && v20)
  {
    v23 = [v20 isEqualToString:v21];

    if (!v23)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

LABEL_28:
  v25 = *(a1 + 40);
  if (v11 != -1 || *(a1 + 40))
  {
    if (v11 != 1)
    {
      v25 = 1;
    }

    if (v25)
    {
      v17 = v11;
    }

    else
    {
      v17 = -1;
    }
  }

  else
  {
    v17 = 1;
  }

LABEL_25:

  return v17;
}

id PKSortedPaymentApplicationsBySupportedInAppMerchantCountryCode(void *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __PKSortedPaymentApplicationsBySupportedInAppMerchantCountryCode_block_invoke;
  v7[3] = &unk_1E79C8A20;
  v8 = v3;
  v4 = v3;
  v5 = [a1 sortedArrayUsingComparator:v7];

  return v5;
}

uint64_t __PKSortedPaymentApplicationsBySupportedInAppMerchantCountryCode_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 isRequiredForMerchantInCountry:v5];
  v8 = [v6 isRequiredForMerchantInCountry:*(a1 + 32)];

  v9 = 1;
  if (!v7)
  {
    v9 = -1;
  }

  if (v7 != v8)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t PKValueAddedServicesEnabledForPass(void *a1)
{
  v1 = a1;
  if (PKValueAddedServicesEnabled() && [v1 hasValidNFCPayload])
  {
    v2 = [v1 isValid];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PKValueAddedServicesAutomaticSelectionDefaultForPass(void *a1)
{
  v1 = a1;
  if ([v1 passType] == 1)
  {
    v2 = [v1 secureElementPass];
    if ([v2 availableForAutomaticPresentationUsingInAppOrWebContext] & 1) != 0 || (objc_msgSend(v2, "availableForAutomaticPresentationUsingVASContext"))
    {
      v3 = 1;
    }

    else
    {
      v3 = [v1 availableForAutomaticPresentationUsingBeaconContext];
    }

    v4 = (PKValueAddedServicesEnabled() != 0) & v3;
  }

  else if ([v1 hasValidNFCPayload] && objc_msgSend(v1, "isValid"))
  {
    v4 = [v1 hasStoredValue] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL PKBarcodePassSharingEnabled(void *a1)
{
  v1 = a1;
  if ([v1 supportsSharing])
  {
    v2 = [v1 sharingMethod] != -1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PKInAppPaymentAllowed()
{
  if (qword_1ED6D11F8 != -1)
  {
    dispatch_once(&qword_1ED6D11F8, &__block_literal_global_12);
  }

  if (_MergedGlobals_27)
  {
    return 0;
  }

  v1 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v0 = [v1 isInAppPaymentAllowed];

  return v0;
}

id PKShortExpiration(void *a1)
{
  v1 = a1;
  v2 = [v1 componentsSeparatedByString:@"/"];
  if ([v2 count] == 2)
  {
    v3 = [v2 objectAtIndex:0];
    v4 = [v2 objectAtIndex:1];
    if ([v4 length] == 4)
    {
      v5 = [v4 substringFromIndex:{objc_msgSend(v4, "length") - 2}];
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v3, v5];

      goto LABEL_6;
    }
  }

  v6 = v1;
LABEL_6:

  return v6;
}

id PKDateStringForExpiredPass(void *a1)
{
  v1 = a1;
  v2 = [v1 expirationDate];
  v3 = [v1 relevantDates];

  if (v2)
  {
    v4 = PKMediumDateString(v2, 0);
  }

  else if ([v3 count])
  {
    v5 = [PKPassRelevantDate findDateFromDates:v3 option:0];
    v6 = [PKPassRelevantDate findDateFromDates:v3 option:1];
    if (([(NSDate *)v5 isEqual:v6]& 1) != 0)
    {
      PKMediumDateString(v5, 0);
    }

    else
    {
      PKDateRangeStringFromDateToDate(v5, v6, 0, 1, 0, 0);
    }
    v4 = ;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id PKDisplayTitleStringForPass(void *a1)
{
  v1 = a1;
  if (([v1 style] == 4 || objc_msgSend(v1, "style") == 10) && objc_msgSend(v1, "transitType") == 1)
  {
    v2 = [v1 stringForSemanticKey:@"departureAirportCode"];
    v3 = [v2 pk_uppercaseStringForPreferredLocale];

    v4 = [v1 stringForSemanticKey:@"destinationAirportCode"];
    v5 = [v4 pk_uppercaseStringForPreferredLocale];

    if ([v3 length] && objc_msgSend(v5, "length"))
    {
      v6 = PKLocalizedString(&cfstr_SearchBoarding.isa, &stru_1F22903C8.isa, v3, v5);
    }

    else
    {
      v8 = [v1 primaryFields];
      v9 = [v8 count];

      if (v9 < 2)
      {
        v6 = 0;
      }

      else
      {
        v10 = [v1 primaryFields];
        v11 = [v10 objectAtIndex:0];
        v12 = [v11 value];

        v13 = [v1 primaryFields];
        v14 = [v13 objectAtIndex:1];
        v15 = [v14 value];

        if ([v12 length] && objc_msgSend(v15, "length"))
        {
          v6 = PKLocalizedString(&cfstr_SearchBoarding.isa, &stru_1F22903C8.isa, v12, v15);
        }

        else
        {
          v6 = 0;
        }
      }
    }

LABEL_20:
    if (v6)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if ([v1 style] == 2 || objc_msgSend(v1, "style") == 9)
  {
    v7 = [v1 stringForSemanticKey:@"eventName"];
    if ([v7 length])
    {
      v3 = v7;
      v6 = v3;
      goto LABEL_20;
    }
  }

LABEL_21:
  v6 = [v1 localizedDescription];
LABEL_22:

  return v6;
}

void *PKPassTypeDisplayStringForPaymentPass(void *a1)
{
  v1 = a1;
  v2 = [v1 passLocalizedStringForKey:@"PASS_DETAIL_PASS_SUBTITLE_TEXT"];
  v3 = v2;
  if (!v2 || ![v2 isEqual:@"PASS_DETAIL_PASS_SUBTITLE_TEXT"])
  {
    goto LABEL_20;
  }

  if ([v1 isTransitPass])
  {
    v4 = @"TRANSIT_CARD";
LABEL_5:
    v5 = PKLocalizedPaymentString(&v4->isa, 0);
LABEL_19:
    v9 = v5;

    v3 = v9;
    goto LABEL_20;
  }

  if ([v1 isIdentityPass])
  {
    v6 = [v1 identityType];
    if (v6 <= 5)
    {
      if (((1 << v6) & 0x39) != 0)
      {
        v7 = @"ID_CARD";
      }

      else
      {
        v7 = @"GOVERNMENT_ID";
      }

      v5 = PKLocalizedIdentityString(&v7->isa, 0);
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if ([v1 supportsBarcodePayment])
  {
    v5 = PKLocalizedAquamanString(&cfstr_QrPaymentPass.isa, 0);
    goto LABEL_19;
  }

  if ([v1 isAccessPass])
  {
    v8 = [v1 accessType];
    if (v8 > 2)
    {
      if (v8 > 4)
      {
        if (v8 == 5)
        {
          v4 = @"RESIDENT_KEY_PASS";
          goto LABEL_5;
        }

        if (v8 != 6)
        {
          goto LABEL_20;
        }
      }

      else if (v8 != 3)
      {
        v5 = PKLocalizedCredentialString(&cfstr_CarKeyPass.isa, 0);
        goto LABEL_19;
      }

      goto LABEL_31;
    }

    if (v8)
    {
      if (v8 == 1)
      {
LABEL_31:
        v4 = @"GENERIC_KEY_PASS";
        goto LABEL_5;
      }

      if (v8 != 2)
      {
        goto LABEL_20;
      }
    }

    v4 = @"ACCESS_BADGE";
    goto LABEL_5;
  }

  if (![v1 isAppleBalancePass])
  {
    v4 = @"PAYMENT_CARD";
    goto LABEL_5;
  }

  v12 = +[PKAppleAccountManager sharedInstance];
  v13 = [v12 appleAccountInformation];
  v14 = [v13 appleID];

  v3 = v14;
  if (!v14)
  {
    v3 = PKLocalizedPaymentString(&cfstr_PaymentCard.isa, 0);
  }

LABEL_20:
  v10 = v3;

  return v3;
}

uint64_t PKUniqueNumber()
{
  v0 = CFUUIDCreate(0);
  v1 = *&CFUUIDGetUUIDBytes(v0);
  CFRelease(v0);
  v2 = MEMORY[0x1E696AD98];

  return [v2 numberWithLongLong:v1];
}

id PKGenerateTransactionReceiptUniqueID(void *a1, void *a2)
{
  v11 = 30;
  v3 = MEMORY[0x1E695DF88];
  v4 = a2;
  v5 = [a1 dataUsingEncoding:4];
  v6 = [v3 dataWithData:v5];

  [v6 appendBytes:&v11 length:1];
  v7 = [v4 dataUsingEncoding:4];

  [v6 appendData:v7];
  v8 = [v6 SHA1Hash];
  v9 = [v8 fileSafeBase64Encoding];

  return v9;
}

id PKGenerateFlightIdentifier(void *a1, __int16 a2, void *a3)
{
  v20 = 30;
  v5 = MEMORY[0x1E695DF88];
  v6 = a3;
  v7 = [a1 dataUsingEncoding:4];
  v8 = [v5 dataWithData:v7];

  [v8 appendBytes:&v20 length:1];
  v19 = a2;
  [v8 appendBytes:&v19 length:2];
  [v8 appendBytes:&v20 length:1];
  v9 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v10 = [v9 components:65764 fromDate:v6];

  v18 = [v10 year];
  [v8 appendBytes:&v18 length:2];
  v17 = [v10 dayOfYear];
  [v8 appendBytes:&v17 length:2];
  v16 = [v10 hour];
  [v8 appendBytes:&v16 length:1];
  v15 = [v10 minute];
  [v8 appendBytes:&v15 length:1];
  v14 = [v10 second];
  [v8 appendBytes:&v14 length:1];
  v11 = [v8 SHA1Hash];
  v12 = [v11 fileSafeBase64Encoding];

  return v12;
}

void PKTemporaryItemPrepareDirectory()
{
  v13[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AC08] defaultManager];
  v1 = PKTemporaryItemDirectoryURL();
  v12 = *MEMORY[0x1E696A370];
  v13[0] = &unk_1F23B4A78;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v7 = 0;
  v3 = [v0 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:v2 error:&v7];
  v4 = v7;

  if ((v3 & 1) == 0)
  {
    v5 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PKTemporaryItemDirectoryURL();
      *buf = 138543618;
      v9 = v6;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "PKTemporaryItem: failed to create temporary directory at %{public}@ - %@.", buf, 0x16u);
    }
  }
}

id PKTemporaryItemDirectoryURL()
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = NSTemporaryDirectory();
  v2 = [v0 fileURLWithPath:v1 isDirectory:1];

  v3 = [v2 URLByAppendingPathComponent:@"com.apple.Passbook" isDirectory:1];

  return v3;
}

const __CFUUID *PKTemporaryItemNameWithExtension(void *a1)
{
  v1 = a1;
  v2 = CFUUIDCreate(0);
  if (v2)
  {
    v3 = CFUUIDCreateString(0, v2);
    CFRelease(v2);
    if (v3)
    {
      if (v1 && [v1 length])
      {
        v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.%@", v3, v1];
      }

      else
      {
        v4 = v3;
      }

      v2 = v4;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

id PKTemporaryItemURLWithExtension(void *a1, uint64_t a2)
{
  v3 = PKTemporaryItemNameWithExtension(a1);
  v4 = PKTemporaryItemDirectoryURL();
  v5 = [v4 URLByAppendingPathComponent:v3 isDirectory:a2];

  return v5;
}

id PKCacheItemPathWithExtension(void *a1)
{
  v1 = a1;
  PKTemporaryItemPrepareDirectory();
  v2 = PKTemporaryItemURLWithExtension(v1, 0);

  v3 = [v2 path];

  return v3;
}

void PKSetDisplayProperties(double a1, double a2, double a3)
{
  if (a1 <= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = a1;
  }

  if (a1 <= a2)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  os_unfair_lock_lock(&__displayPropertiesLock);
  qword_1ED6D1338 = *&v5;
  unk_1ED6D1340 = *&v4;
  __displayProperties_2 = *&a3;
  __displayPropertiesSet = 1;

  os_unfair_lock_unlock(&__displayPropertiesLock);
}

uint64_t PKPasscodeEnabled()
{
  v0 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v1 = [v0 isPasscodeSet];

  return v1;
}

id PKPrimaryAppleAccountFormattedUsername()
{
  v0 = +[PKAppleAccountManager sharedInstance];
  v1 = [v0 accountStore];

  v2 = [v1 aa_primaryAppleAccount];
  v3 = [v2 aa_formattedUsername];

  return v3;
}

uint64_t PKHasVerifiedPrimaryAppleAccount()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = +[PKAppleAccountManager sharedInstance];
  v1 = [v0 accountStore];

  v2 = [v1 aa_primaryAppleAccount];
  v3 = [v2 aa_isPrimaryEmailVerified];
  if (!v2)
  {
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "No Primary Apple Account available.", &v8, 2u);
    }

    goto LABEL_8;
  }

  if ((v3 & 1) == 0)
  {
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v2 username];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Primary Apple Account %@ is unverified.", &v8, 0xCu);
    }

LABEL_8:

    v4 = 0;
    goto LABEL_9;
  }

  v4 = 1;
LABEL_9:

  return v4;
}

uint64_t PKIsManagedAppleID()
{
  if (PKSimulateIsManagedAccount())
  {
    return 1;
  }

  v1 = +[PKAppleAccountManager sharedInstance];
  v2 = [v1 accountStore];

  v3 = [v2 aa_primaryAppleAccount];
  v0 = [v3 aa_isManagedAppleID];

  return v0;
}

id PKPrimaryAppleAccountEmail()
{
  if (PKHasVerifiedPrimaryAppleAccount())
  {
    v0 = +[PKAppleAccountManager sharedInstance];
    v1 = [v0 accountStore];

    v2 = [v1 aa_primaryAppleAccount];
    v3 = [v2 aa_primaryEmail];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL PKLuhnCheck(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v3 = [v2 invertedSet];
  v4 = [v1 rangeOfCharacterFromSet:v3];

  v5 = [v1 length];
  v6 = 0;
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v5;
    if ((v5 - 100) >= 0xFFFFFFFFFFFFFF9FLL)
    {
      v8 = [v1 UTF8String];
      v9 = 0;
      v10 = v7 - 1;
      do
      {
        LOBYTE(v11) = *(v8 + v10) - 48;
        if (((v10 ^ v7) & 1) == 0)
        {
          v11 = (2 * v11);
          if (v11 >= 10)
          {
            v11 = v11 - 10 * (v11 / 0xAu) + v11 / 0xAu;
          }
        }

        v9 += v11;
        v12 = v10-- + 1;
      }

      while (v12 > 1);
      HIDWORD(v13) = -858993459 * v9 + 429496728;
      LODWORD(v13) = HIDWORD(v13);
      v6 = (v13 >> 1) < 0x19999999;
    }
  }

  return v6;
}

uint64_t PKPANHasBinPrefix(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F227FD28];
  v5 = [v3 count];
  v6 = [v3 indexOfObject:v4 inSortedRange:0 options:v5 usingComparator:{1280, &__block_literal_global_933}];
  v7 = 0;
  if (v6 < v5)
  {
    v7 = [v3 objectAtIndex:v6];
  }

  if ([v7 isEqual:v4])
  {
    v8 = 1;
  }

  else if (v6 - 1 >= v5)
  {
    v8 = 0;
  }

  else
  {
    v9 = [v3 objectAtIndex:?];
    v8 = [v4 hasPrefix:v9];
  }

  return v8;
}

uint64_t PKPaymentApplicationStateIndicatesAppletPresence(uint64_t a1)
{
  if ((a1 - 1) > 0xE)
  {
    return 0;
  }

  else
  {
    return byte_1ADB99478[a1 - 1];
  }
}

id PKPaymentPassCommuteRouteExpirationDate(void *a1)
{
  v1 = [a1 fieldForKey:@"commuter_route_expiration"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 unformattedValue];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL PKPaymentPassCommuteRouteIsValid(void *a1)
{
  v1 = PKPaymentPassCommuteRouteExpirationDate(a1);
  if (v1)
  {
    v2 = [MEMORY[0x1E695DF00] date];
    v3 = [v2 compare:v1] == -1;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

__CFString *PKExpressPassCategoryIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isTransitPass])
  {
    v2 = [v1 devicePrimaryPaymentApplication];

    v3 = [v2 paymentNetworkIdentifier];
    v4 = [v2 supportedTransitNetworkIdentifiers];
    if ([v4 count])
    {
      v5 = v4;
    }

    else
    {
      v5 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
    }

    v7 = v5;
  }

  else
  {
    v6 = [v1 isAccessPass];

    if (v6)
    {
      v7 = @"com.apple.passkit.access";
    }

    else
    {
      v7 = @"com.apple.passkit.payment";
    }
  }

  return v7;
}

id PKCurrentMobileCarrierRegion()
{
  KnownNetworkCountryCode = CPPhoneNumberCopyNetworkCountryCode();
  if (!KnownNetworkCountryCode)
  {
    KnownNetworkCountryCode = CPPhoneNumberCopyLastKnownNetworkCountryCode();
  }

  v1 = [KnownNetworkCountryCode uppercaseString];

  return v1;
}

uint64_t PKRegistrationSupportedInCurrentRegionForWebService(void *a1)
{
  v1 = a1;
  v2 = [v1 targetDevice];
  v3 = [v2 deviceRegion];
  v4 = PKRegistrationSupportedInRegionForWebService(v3, v1);

  return v4;
}

uint64_t PKRegistrationSupportedInRegionForWebService(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 context];
  v6 = [v5 configuration];
  v7 = [v4 targetDevice];

  v8 = [v7 osVersion];
  v9 = [v7 deviceClass];
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = [v6 supportedRegionsForOSVersion:v8 deviceClass:v9];
  if (v11)
  {
    [v10 addObjectsFromArray:v11];
  }

  v12 = [v6 unsupportedRegionsForOSVersion:v8 deviceClass:v9];
  if (v12)
  {
    [v10 addObjectsFromArray:v12];
  }

  v13 = PKStockholmSetupSupportedInRegion(v3, v10);
  if (![v11 containsObject:v3] || v13 != 1)
  {
    [v7 deviceVersion];
    v14 = v16 = v5;
    if ([v6 hasFeatureRequiringRegistrationInRegion:v3 osVersion:v14 deviceClass:v9])
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    v5 = v16;
  }

  return v13;
}

uint64_t PKStockholmSetupSupportedInCurrentRegion(void *a1)
{
  v1 = a1;
  v2 = PKCurrentRegion();
  v3 = PKStockholmSetupSupportedInRegion(v2, v1);

  return v3;
}

id PKLocalizedEnvironmentHint(void *a1)
{
  v1 = a1;
  v2 = PKStockholmEnvironmentDisplayName();
  if (!v2)
  {
    goto LABEL_6;
  }

  if (qword_1ED6D12B8 != -1)
  {
    dispatch_once(&qword_1ED6D12B8, &__block_literal_global_695);
  }

  if (!byte_1ED6D11CE || (PKSuppressSecureElementUIHinting() & 1) != 0)
  {
LABEL_6:
    v3 = 0;
    goto LABEL_7;
  }

  if (!os_variant_has_internal_ui())
  {
    v5 = PKLocalizedPaymentString(&cfstr_EnvSandbox.isa, 0);
    goto LABEL_17;
  }

  if (!v1)
  {
    v6 = +[PKSecureElement sharedSecureElement];
    v7 = [v6 isProductionSigned];

    if (v7)
    {
      goto LABEL_13;
    }

LABEL_16:
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Dev SE - %@", v2];
    goto LABEL_17;
  }

  if (![v1 BOOLValue])
  {
    goto LABEL_16;
  }

LABEL_13:
  v5 = v2;
LABEL_17:
  v3 = v5;
LABEL_7:

  return v3;
}

uint64_t PKDeviceUILocked()
{
  os_unfair_lock_lock(&PKDeviceUILocked_lock);
  if (PKDeviceUILocked_token == -1)
  {
    v0 = [@"com.apple.springboard.lockstate" UTF8String];
    if (notify_register_dispatch(v0, &PKDeviceUILocked_token, MEMORY[0x1E69E96A0], &__block_literal_global_948) && PKDeviceUILocked_token != -1)
    {
      notify_cancel(PKDeviceUILocked_token);
      PKDeviceUILocked_token = -1;
    }
  }

  v2 = 1;
  atomic_compare_exchange_strong(PKDeviceUILocked_dirty, &v2, 0);
  if (v2 == 1)
  {
    v3 = SBSGetScreenLockStatus() != 0;
    PKDeviceUILocked_locked = v3;
  }

  else
  {
    v3 = PKDeviceUILocked_locked;
  }

  os_unfair_lock_unlock(&PKDeviceUILocked_lock);
  return v3;
}

BOOL PKDeviceBacklightActive()
{
  v0 = @"com.apple.backboardd.backlight.changed";
  v1 = v0;
  if (v0)
  {
    v2 = atomic_load(PKDeviceBacklightActive_token);
    if (v2 == -1)
    {
      v3 = -1;
      out_token = -1;
      if (!notify_register_check([(__CFString *)v0 UTF8String], &out_token) && out_token != -1)
      {
        atomic_compare_exchange_strong(PKDeviceBacklightActive_token, &v3, out_token);
        if (v3 != -1)
        {
          notify_cancel(out_token);
        }
      }
    }
  }

  v8 = 0;
  v5 = atomic_load(PKDeviceBacklightActive_token);
  if (v5 != -1)
  {
    v6 = atomic_load(PKDeviceBacklightActive_token);
    notify_get_state(v6, &v8);
  }

  return v8 != 0;
}

uint64_t PKProcessHasNetworkPrivilegies()
{
  if (qword_1ED6D1360 != -1)
  {
    dispatch_once(&qword_1ED6D1360, &__block_literal_global_957);
  }

  return byte_1ED6D11DB;
}

void __PKProcessHasNetworkPrivilegies_block_invoke()
{
  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v5 bundleIdentifier];
  v1 = @"com.apple.Passbook.QuicklookPreviewExtension";
  v2 = v1;
  if (v0 == v1)
  {
    v4 = 0;
  }

  else
  {
    if (v0)
    {
      v3 = v1 == 0;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = [(__CFString *)v0 isEqualToString:v1]^ 1;
    }
  }

  byte_1ED6D11DB = v4;
}

uint64_t PKRunningInViewService()
{
  if (qword_1ED6D1368 != -1)
  {
    dispatch_once(&qword_1ED6D1368, &__block_literal_global_959);
  }

  return byte_1ED6D11DC;
}

void __PKRunningInViewService_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v2 = [v0 bundleIdentifier];

  if ([v2 isEqualToString:@"com.apple.PassbookUIService"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"com.apple.CredentialSharingService"))
  {
    v1 = 1;
  }

  else
  {
    v1 = [v2 isEqualToString:@"com.apple.SubcredentialUIService"];
  }

  byte_1ED6D11DC = v1;
}

uint64_t PKRunningInLockScreenPlugin()
{
  if (qword_1ED6D1370 != -1)
  {
    dispatch_once(&qword_1ED6D1370, &__block_literal_global_961);
  }

  return byte_1ED6D11DD;
}

void __PKRunningInLockScreenPlugin_block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  byte_1ED6D11DD = [v0 isEqualToString:@"com.apple.springboard"];
}

uint64_t PKRunningInPassKitThumbnailExtension()
{
  if (qword_1ED6D1378 != -1)
  {
    dispatch_once(&qword_1ED6D1378, &__block_literal_global_963);
  }

  return byte_1ED6D11DE;
}

void __PKRunningInPassKitThumbnailExtension_block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  byte_1ED6D11DE = [v0 isEqualToString:@"com.apple.PassKit.PassKitThumbnailExtension"];
}

void PKRangeEnumeratePartitions(unint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v10 = v5;
    if (a2 >= a1)
    {
      (*(v5 + 2))(v5, 0, a1);
      v5 = v10;
    }

    else
    {
      v6 = 0;
      v7 = a1;
      do
      {
        v8 = v7 - a2;
        if (v7 >= a2)
        {
          v9 = a2;
        }

        else
        {
          v9 = v7;
        }

        (*(v5 + 2))(v10, v6, v9);
        v5 = v10;
        v6 += a2;
        v7 = v8;
      }

      while (v6 < a1);
    }
  }
}

unint64_t PKMakeRangeForIndicesInStackOrder(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a1 + a2;
  if ((a1 + a2) < 2)
  {
    v6 = 0;
    v5 = 0;
    v7 = a4 - 1;
  }

  else
  {
    v5 = v4 - 1;
    if (v4 - 1 >= a3)
    {
      v5 = a3;
    }

    v6 = v4 + ~v5;
    v7 = a4 - 1;
    if (a4 != 1)
    {
      v8 = v7 - (v7 >> 1);
      if (v8 >= v5)
      {
        v8 = v5;
      }

      v9 = v5 - v8;
      v10 = v7 - v8;
      if (v5)
      {
        v5 = v9;
        v7 = v10;
      }
    }
  }

  if (v7 >= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v7)
  {
    v12 = v6 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  v14 = v7 - v13;
  if (v7 - v13 >= v5)
  {
    v14 = v5;
  }

  if (v7 == v13 || v5 == 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  return v5 - v16;
}