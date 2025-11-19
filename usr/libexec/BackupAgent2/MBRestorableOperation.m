@interface MBRestorableOperation
+ (BOOL)restore:(id)a3 attributesToDestination:(id)a4 error:(id *)a5;
+ (id)move:(id)a3 fromSource:(id)a4 destination:(id)a5 destinationSize:(unint64_t)a6 conflictResolution:(int64_t)a7 error:(id *)a8;
+ (id)restore:(id)a3 directoryAtPath:(id)a4 settingDataProtection:(BOOL)a5 settingOwnershipAndFlags:(BOOL)a6;
+ (id)restore:(id)a3 regularFileAtPath:(id)a4 settingAttributes:(BOOL)a5;
+ (id)restore:(id)a3 symbolicLinkAtPath:(id)a4 withTarget:(id)a5 settingOwnershipAndFlags:(BOOL)a6;
@end

@implementation MBRestorableOperation

+ (BOOL)restore:(id)a3 attributesToDestination:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v30 = 0u;
  [v7 getNode:&v30];
  v9 = [v7 domain];
  if (!v9)
  {
    sub_10009FEA0();
  }

  if ([v9 adjustNodeOwnershipAndPermissionsForDataMigratorPlugIn:&v30 path:v8])
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v36 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "=restorable= Fixing ownership at %@", buf, 0xCu);
      _MBLog();
    }
  }

  v11 = sub_10008E61C(&v30);
  v12 = sub_10007AFEC(&v30);
  if (!v12)
  {
    goto LABEL_22;
  }

  v13 = v12;
  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *v36 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "=restorable= Restoring BSD flags: 0x%x", buf, 8u);
    _MBLog();
  }

  if (lchflags([v8 fileSystemRepresentation], v13))
  {
    v15 = *__error();
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109634;
      *v36 = v13;
      *&v36[4] = 2112;
      *&v36[6] = v8;
      v37 = 1024;
      v38 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=restorable= Failed to restore BSD flags (0x%x) at %@: %{errno}d", buf, 0x18u);
      _MBLog();
    }

    if (a5)
    {
      [MBError posixErrorWithCode:102 path:v8 format:@"lchflags error"];
      *a5 = v17 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
LABEL_22:
    if (sub_10008E598(&v30))
    {
      v18 = [v7 extendedAttributes];
      v19 = [v18 objectForKeyedSubscript:@"com.apple.decmpfs"];

      sub_10007B058(v8, v19, 0);
    }

    v20 = WORD2(v34);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v25 = v31;
    v26 = v32;
    v22[2] = sub_10007B2BC;
    v22[3] = &unk_1000FE558;
    v27 = v33;
    v28 = v34;
    v24 = v30;
    v29 = v11;
    v23 = v8;
    v17 = [v23 mb_openatWithMode:v20 error:a5 setupDir:v22 itemAccessor:0];
  }

  return v17;
}

+ (id)move:(id)a3 fromSource:(id)a4 destination:(id)a5 destinationSize:(unint64_t)a6 conflictResolution:(int64_t)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if (!_os_feature_enabled_impl())
  {
    v21 = 0;
    goto LABEL_52;
  }

  if (!a7)
  {
    sub_10009FEFC();
  }

  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  memset(v47, 0, sizeof(v47));
  [v13 getNode:v47];
  if (*(&v48 + 1) == a6)
  {
    v16 = +[MBDigest sha256];
    v17 = [v16 digestForFileAtPath:v15 error:0];

    v18 = +[MBDigest sha256];
    v19 = [v18 digestForFileAtPath:v14 error:0];

    if (v17 && v19 && [v17 isEqualToData:v19])
    {
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = v15;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=restorable= The hashes of existing file and restoring file are the same. Skip re-restoring On My iPhone file at %@", buf, 0xCu);
        _MBLog();
      }

      v21 = v15;
      goto LABEL_51;
    }
  }

  v43 = a8;
  v44 = v13;
  v19 = [v15 pathExtension];
  v45 = +[NSFileManager defaultManager];
  v17 = 0;
  v22 = 2;
  while (1)
  {
    if ([v19 length])
    {
      v23 = [v15 stringByDeletingPathExtension];
      v24 = [NSString stringWithFormat:@"%@ %d", v23, v22];
      v25 = [v24 stringByAppendingPathExtension:v19];

      v17 = v25;
    }

    else
    {
      [NSString stringWithFormat:@"%@ %d", v15, v22];
      v17 = v23 = v17;
    }

    if (a7 != 3)
    {
      break;
    }

    v46 = 0;
    v32 = [v45 moveItemAtPath:v14 toPath:v17 error:&v46];
    v31 = v46;
    if (v32)
    {
      goto LABEL_36;
    }

    v33 = MBGetDefaultLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v52 = v14;
      v53 = 2112;
      v54 = v17;
      v55 = 2112;
      v56 = v31;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "=restorable= Failed to move from %@ to %@: %@", buf, 0x20u);
      v41 = v17;
      v42 = v31;
      v40 = v14;
      _MBLog();
    }

    v34 = [v31 domain];
    if (![v34 isEqualToString:NSCocoaErrorDomain])
    {

LABEL_36:
      LODWORD(v26) = 0;
      goto LABEL_37;
    }

    v35 = [v31 code];

    if (v35 == 516)
    {
      LODWORD(v26) = 17;
    }

    else
    {
      LODWORD(v26) = 0;
    }

LABEL_37:
    if (!v31)
    {
      goto LABEL_41;
    }

    if (v26 != 17)
    {
      if (v43)
      {
        v37 = v31;
        *v43 = v31;
      }

      v38 = MBGetDefaultLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v52 = v14;
        v53 = 2112;
        v54 = v15;
        v55 = 2048;
        v56 = a7;
        v57 = 2112;
        v58 = v31;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "=restorable= Failed to resolve On My iPhone file conflict from %@ to %@(%ld): %@", buf, 0x2Au);
        _MBLog();
      }

LABEL_49:
      v21 = 0;
      goto LABEL_50;
    }

    v22 = (v22 + 1);
    if (v22 == 0x7FFFFFFF)
    {
      goto LABEL_49;
    }
  }

  if (a7 == 2)
  {
    if (!link([v14 fileSystemRepresentation], objc_msgSend(v17, "fileSystemRepresentation")))
    {
      goto LABEL_41;
    }

    v26 = *__error();
    v30 = MBGetDefaultLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v52 = v14;
      v53 = 2112;
      v54 = v17;
      v55 = 1024;
      LODWORD(v56) = v26;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "=restorable= Failed to hardlink from %@ to %@: %{errno}d", buf, 0x1Cu);
      v41 = v17;
      v42 = v26;
      v40 = v14;
      _MBLog();
    }

    v28 = v26;
    v29 = @"Failed to hardlink file";
    goto LABEL_27;
  }

  if (a7 == 1 && clonefile([v14 fileSystemRepresentation], objc_msgSend(v17, "fileSystemRepresentation"), 0))
  {
    v26 = *__error();
    v27 = MBGetDefaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v52 = v14;
      v53 = 2112;
      v54 = v17;
      v55 = 1024;
      LODWORD(v56) = v26;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "=restorable= Failed to clone from %@ to %@: %{errno}d", buf, 0x1Cu);
      v41 = v17;
      v42 = v26;
      v40 = v14;
      _MBLog();
    }

    v28 = v26;
    v29 = @"Failed to clone file";
LABEL_27:
    v31 = [MBError errorWithErrno:v28 format:v29, v40, v41, v42];
    goto LABEL_37;
  }

LABEL_41:
  v36 = MBGetDefaultLog();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v52 = v14;
    v53 = 2112;
    v54 = v17;
    v55 = 2048;
    v56 = a7;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "=restorable= Successfully resolved On My iPhone file conflict from %@ to %@(%ld)", buf, 0x20u);
    _MBLog();
  }

  v21 = v17;
LABEL_50:
  v13 = v44;

LABEL_51:
LABEL_52:

  return v21;
}

+ (id)restore:(id)a3 symbolicLinkAtPath:(id)a4 withTarget:(id)a5 settingOwnershipAndFlags:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  [v9 getNode:&v38];
  if (!v10)
  {
    sub_10009FF28();
  }

  if (sub_10008E608(&v38))
  {
    if (v11)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_10009FF84();
    if (v11)
    {
      goto LABEL_5;
    }
  }

  sub_10009FFE0();
LABEL_5:
  v12 = [v9 domain];
  if (!v12)
  {
    sub_1000A003C();
  }

  v13 = [v12 rootPath];
  v14 = [v10 isEqualToString:v13];

  if (v14)
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v12 name];
      *buf = 138412546;
      v44 = v10;
      v45 = 2112;
      v46 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "=restorable= Cannot restore domain root %@ for %@ as symlink", buf, 0x16u);

      v23 = [v12 name];
      _MBLog();
    }

    v17 = [MBError errorWithCode:205 path:v10 format:@"Cannot restore domain root as symlink"];
  }

  else
  {
    if ([v12 adjustNodeOwnershipAndPermissionsForDataMigratorPlugIn:&v38 path:v10])
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44 = v10;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "=restorable= Fixing ownership at %@", buf, 0xCu);
        _MBLog();
      }
    }

    v37 = 0;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10007CAA8;
    v34[3] = &unk_1000FE580;
    v35 = v10;
    v36 = v11;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v29 = v39;
    v30 = v40;
    v31 = v41;
    v24[2] = sub_10007CDC8;
    v24[3] = &unk_1000FE5A8;
    v33 = a6;
    v32 = v42;
    v28 = v38;
    v25 = v35;
    v26 = v9;
    v27 = 0;
    v19 = [v25 mb_openatWithMode:40960 error:&v37 setupDir:v34 itemAccessor:v24];
    v20 = v37;
    v21 = v20;
    v17 = 0;
    if ((v19 & 1) == 0)
    {
      v17 = v20;
    }
  }

  return v17;
}

+ (id)restore:(id)a3 directoryAtPath:(id)a4 settingDataProtection:(BOOL)a5 settingOwnershipAndFlags:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  if (!v11)
  {
    sub_1000A0098();
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  [v10 getNode:&v40];
  if (!sub_10008E5E0(&v40))
  {
    sub_1000A0104();
  }

  v12 = [v10 domain];
  if (!v12)
  {
    sub_1000A0160();
  }

  if ([v12 adjustNodeOwnershipAndPermissionsForDataMigratorPlugIn:&v40 path:v11])
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v46 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "=restorable= Fixing ownership at %@", buf, 0xCu);
      _MBLog();
    }
  }

  v39 = 0;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v35 = v41;
  v36 = v42;
  v37 = v43;
  v32[2] = sub_10007D5D8;
  v32[3] = &unk_1000FE5D0;
  v38 = v44;
  v34 = v40;
  v33 = v11;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v26 = v41;
  v27 = v42;
  v28 = v43;
  v21[2] = sub_10007DA44;
  v21[3] = &unk_1000FE5F8;
  v29 = v44;
  v25 = v40;
  v30 = a6;
  v14 = v33;
  v22 = v14;
  v15 = v10;
  v31 = a5;
  v23 = v15;
  v24 = a1;
  v16 = [v14 mb_openatWithMode:0x4000 error:&v39 setupDir:v32 itemAccessor:v21];
  v17 = v39;
  v18 = v17;
  v19 = 0;
  if ((v16 & 1) == 0)
  {
    v19 = v17;
  }

  return v19;
}

+ (id)restore:(id)a3 regularFileAtPath:(id)a4 settingAttributes:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    sub_1000A02E0();
  }

  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  [v8 getNode:&v46];
  if (!sub_10008E5F4(&v46))
  {
    sub_1000A034C();
  }

  v10 = [v9 fileSystemRepresentation];
  if (v5)
  {
    v11 = [v8 domain];
    if (!v11)
    {
      sub_1000A03A8();
    }

    if ([v11 adjustNodeOwnershipAndPermissionsForDataMigratorPlugIn:&v46 path:v9])
    {
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v9;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "=restorable= Fixing ownership at %@", buf, 0xCu);
        v38 = v9;
        _MBLog();
      }
    }

    v13 = DWORD1(v46);
    v14 = DWORD2(v46);
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 67109634;
      *&buf[4] = v13;
      *&buf[8] = 1024;
      *&buf[10] = v14;
      *&buf[14] = 2112;
      *&buf[16] = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "=restorable= Restoring regular file ownership: %d:%d at %@", buf, 0x18u);
      v40 = v14;
      v42 = v9;
      v38 = v13;
      _MBLog();
    }

    if (lchown(v10, v13, v14))
    {
      v16 = [MBError posixErrorWithCode:102 path:v9 format:@"lchown error"];
      goto LABEL_54;
    }
  }

  v17 = [v8 extendedAttributes];
  if (!v17)
  {
    v20 = 0;
    v11 = 0;
    goto LABEL_28;
  }

  v18 = MBGetDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [v17 count];
    *buf = 134218242;
    *&buf[4] = v19;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "=restorable= Restoring regular file extended attributes (%ld) at %@", buf, 0x16u);
    v39 = [v17 count];
    v41 = v9;
    _MBLog();
  }

  if (sub_10008E598(&v46))
  {
    v20 = [v17 objectForKeyedSubscript:@"com.apple.decmpfs"];
    if (v20)
    {
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "=restorable= Not re-applying the com.apple.decmpfs xattr yet.", buf, 2u);
        _MBLog();
      }

      v22 = [v17 mutableCopy];
      [v22 removeObjectForKey:@"com.apple.decmpfs"];

      v17 = v22;
    }
  }

  else
  {
    v20 = 0;
  }

  v45 = 0;
  v23 = [MBExtendedAttributes setAttributes:v17 forPathFSR:v10 error:&v45, v39, v41];
  v11 = v45;
  if (v23)
  {
LABEL_28:
    if (v5)
    {
      v24 = sub_10007AFEC(&v46);
      if (v24)
      {
        v25 = v24;
        v26 = MBGetDefaultLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = v25;
          *&buf[8] = 2112;
          *&buf[10] = v9;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "=restorable= Restoring regular file BSD flags: 0x%x at %@", buf, 0x12u);
          v39 = v25;
          v41 = v9;
          _MBLog();
        }

        if (lchflags(v10, v25))
        {
          v27 = *__error();
          v28 = MBGetDefaultLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109634;
            *&buf[4] = v25;
            *&buf[8] = 2112;
            *&buf[10] = v9;
            *&buf[18] = 1024;
            *&buf[20] = v27;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "=restorable= Failed to restore regular file BSD flags (0x%x) at %@: %{errno}d", buf, 0x18u);
            v41 = v9;
            v43 = v27;
            v39 = v25;
            _MBLog();
          }

          v29 = @"lchflags error";
          goto LABEL_48;
        }
      }

      if (sub_10008E598(&v46))
      {
        v44 = v11;
        v31 = sub_10007B058(v9, v20, &v44);
        v32 = v44;

        if (!v31)
        {
          v30 = v32;
LABEL_51:
          v11 = v30;
          goto LABEL_52;
        }

        v11 = v32;
      }

      v33 = sub_10008E61C(&v46);
      v34 = MBGetDefaultLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = v33;
        *&buf[8] = 2112;
        *&buf[10] = v9;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "=restorable= Restoring regular file permissions: 0%3o at %@", buf, 0x12u);
        v39 = v33;
        v41 = v9;
        _MBLog();
      }

      if (lchmod(v10, v33))
      {
        v29 = @"lchmod error";
LABEL_48:
        v30 = [MBError posixErrorWithCode:102 path:v9 format:v29, v39, v41, v43];
        goto LABEL_52;
      }

      v35 = MBGetDefaultLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = [NSDate dateWithTimeIntervalSince1970:*(&v47 + 1)];
        *buf = 138412546;
        *&buf[4] = v36;
        *&buf[12] = 2112;
        *&buf[14] = v9;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "=restorable= Restoring last modified time (%@) at %@", buf, 0x16u);

        v39 = [NSDate dateWithTimeIntervalSince1970:*(&v47 + 1)];
        v41 = v9;
        _MBLog();
      }

      *buf = time(0);
      *&buf[8] = 0;
      *&buf[16] = *(&v47 + 1);
      v52 = 0;
      if (lutimes(v10, buf))
      {
        v29 = @"lutimes error";
        goto LABEL_48;
      }
    }

    v16 = [a1 _setProtectionClass:BYTE6(v50) withPath:{v9, v39, v41}];

    if (!v16)
    {
      v11 = 0;
      goto LABEL_53;
    }

    v30 = v16;
    goto LABEL_51;
  }

  v30 = [MBError errorWithCode:102 error:v11 format:@"setxattr error"];
LABEL_52:
  v16 = v30;
LABEL_53:

LABEL_54:

  return v16;
}

@end