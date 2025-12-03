@interface MBRestorableOperation
+ (BOOL)restore:(id)restore attributesToDestination:(id)destination error:(id *)error;
+ (id)move:(id)move fromSource:(id)source destination:(id)destination destinationSize:(unint64_t)size conflictResolution:(int64_t)resolution error:(id *)error;
+ (id)restore:(id)restore directoryAtPath:(id)path settingDataProtection:(BOOL)protection settingOwnershipAndFlags:(BOOL)flags;
+ (id)restore:(id)restore regularFileAtPath:(id)path settingAttributes:(BOOL)attributes;
+ (id)restore:(id)restore symbolicLinkAtPath:(id)path withTarget:(id)target settingOwnershipAndFlags:(BOOL)flags;
@end

@implementation MBRestorableOperation

+ (BOOL)restore:(id)restore attributesToDestination:(id)destination error:(id *)error
{
  restoreCopy = restore;
  destinationCopy = destination;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v30 = 0u;
  [restoreCopy getNode:&v30];
  domain = [restoreCopy domain];
  if (!domain)
  {
    sub_10009FEA0();
  }

  if ([domain adjustNodeOwnershipAndPermissionsForDataMigratorPlugIn:&v30 path:destinationCopy])
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v36 = destinationCopy;
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

  if (lchflags([destinationCopy fileSystemRepresentation], v13))
  {
    v15 = *__error();
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109634;
      *v36 = v13;
      *&v36[4] = 2112;
      *&v36[6] = destinationCopy;
      v37 = 1024;
      v38 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=restorable= Failed to restore BSD flags (0x%x) at %@: %{errno}d", buf, 0x18u);
      _MBLog();
    }

    if (error)
    {
      [MBError posixErrorWithCode:102 path:destinationCopy format:@"lchflags error"];
      *error = v17 = 0;
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
      extendedAttributes = [restoreCopy extendedAttributes];
      v19 = [extendedAttributes objectForKeyedSubscript:@"com.apple.decmpfs"];

      sub_10007B058(destinationCopy, v19, 0);
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
    v23 = destinationCopy;
    v17 = [v23 mb_openatWithMode:v20 error:error setupDir:v22 itemAccessor:0];
  }

  return v17;
}

+ (id)move:(id)move fromSource:(id)source destination:(id)destination destinationSize:(unint64_t)size conflictResolution:(int64_t)resolution error:(id *)error
{
  moveCopy = move;
  sourceCopy = source;
  destinationCopy = destination;
  if (!_os_feature_enabled_impl())
  {
    v21 = 0;
    goto LABEL_52;
  }

  if (!resolution)
  {
    sub_10009FEFC();
  }

  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  memset(v47, 0, sizeof(v47));
  [moveCopy getNode:v47];
  if (*(&v48 + 1) == size)
  {
    v16 = +[MBDigest sha256];
    v17 = [v16 digestForFileAtPath:destinationCopy error:0];

    v18 = +[MBDigest sha256];
    pathExtension = [v18 digestForFileAtPath:sourceCopy error:0];

    if (v17 && pathExtension && [v17 isEqualToData:pathExtension])
    {
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = destinationCopy;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=restorable= The hashes of existing file and restoring file are the same. Skip re-restoring On My iPhone file at %@", buf, 0xCu);
        _MBLog();
      }

      v21 = destinationCopy;
      goto LABEL_51;
    }
  }

  errorCopy = error;
  v44 = moveCopy;
  pathExtension = [destinationCopy pathExtension];
  v45 = +[NSFileManager defaultManager];
  v17 = 0;
  v22 = 2;
  while (1)
  {
    if ([pathExtension length])
    {
      stringByDeletingPathExtension = [destinationCopy stringByDeletingPathExtension];
      v24 = [NSString stringWithFormat:@"%@ %d", stringByDeletingPathExtension, v22];
      v25 = [v24 stringByAppendingPathExtension:pathExtension];

      v17 = v25;
    }

    else
    {
      [NSString stringWithFormat:@"%@ %d", destinationCopy, v22];
      v17 = stringByDeletingPathExtension = v17;
    }

    if (resolution != 3)
    {
      break;
    }

    v46 = 0;
    v32 = [v45 moveItemAtPath:sourceCopy toPath:v17 error:&v46];
    v31 = v46;
    if (v32)
    {
      goto LABEL_36;
    }

    v33 = MBGetDefaultLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v52 = sourceCopy;
      v53 = 2112;
      v54 = v17;
      v55 = 2112;
      resolutionCopy2 = v31;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "=restorable= Failed to move from %@ to %@: %@", buf, 0x20u);
      v41 = v17;
      v42 = v31;
      v40 = sourceCopy;
      _MBLog();
    }

    domain = [v31 domain];
    if (![domain isEqualToString:NSCocoaErrorDomain])
    {

LABEL_36:
      LODWORD(v26) = 0;
      goto LABEL_37;
    }

    code = [v31 code];

    if (code == 516)
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
      if (errorCopy)
      {
        v37 = v31;
        *errorCopy = v31;
      }

      v38 = MBGetDefaultLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v52 = sourceCopy;
        v53 = 2112;
        v54 = destinationCopy;
        v55 = 2048;
        resolutionCopy2 = resolution;
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

  if (resolution == 2)
  {
    if (!link([sourceCopy fileSystemRepresentation], objc_msgSend(v17, "fileSystemRepresentation")))
    {
      goto LABEL_41;
    }

    v26 = *__error();
    v30 = MBGetDefaultLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v52 = sourceCopy;
      v53 = 2112;
      v54 = v17;
      v55 = 1024;
      LODWORD(resolutionCopy2) = v26;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "=restorable= Failed to hardlink from %@ to %@: %{errno}d", buf, 0x1Cu);
      v41 = v17;
      v42 = v26;
      v40 = sourceCopy;
      _MBLog();
    }

    v28 = v26;
    v29 = @"Failed to hardlink file";
    goto LABEL_27;
  }

  if (resolution == 1 && clonefile([sourceCopy fileSystemRepresentation], objc_msgSend(v17, "fileSystemRepresentation"), 0))
  {
    v26 = *__error();
    v27 = MBGetDefaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v52 = sourceCopy;
      v53 = 2112;
      v54 = v17;
      v55 = 1024;
      LODWORD(resolutionCopy2) = v26;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "=restorable= Failed to clone from %@ to %@: %{errno}d", buf, 0x1Cu);
      v41 = v17;
      v42 = v26;
      v40 = sourceCopy;
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
    v52 = sourceCopy;
    v53 = 2112;
    v54 = v17;
    v55 = 2048;
    resolutionCopy2 = resolution;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "=restorable= Successfully resolved On My iPhone file conflict from %@ to %@(%ld)", buf, 0x20u);
    _MBLog();
  }

  v21 = v17;
LABEL_50:
  moveCopy = v44;

LABEL_51:
LABEL_52:

  return v21;
}

+ (id)restore:(id)restore symbolicLinkAtPath:(id)path withTarget:(id)target settingOwnershipAndFlags:(BOOL)flags
{
  restoreCopy = restore;
  pathCopy = path;
  targetCopy = target;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  [restoreCopy getNode:&v38];
  if (!pathCopy)
  {
    sub_10009FF28();
  }

  if (sub_10008E608(&v38))
  {
    if (targetCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_10009FF84();
    if (targetCopy)
    {
      goto LABEL_5;
    }
  }

  sub_10009FFE0();
LABEL_5:
  domain = [restoreCopy domain];
  if (!domain)
  {
    sub_1000A003C();
  }

  rootPath = [domain rootPath];
  v14 = [pathCopy isEqualToString:rootPath];

  if (v14)
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      name = [domain name];
      *buf = 138412546;
      v44 = pathCopy;
      v45 = 2112;
      v46 = name;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "=restorable= Cannot restore domain root %@ for %@ as symlink", buf, 0x16u);

      name2 = [domain name];
      _MBLog();
    }

    v17 = [MBError errorWithCode:205 path:pathCopy format:@"Cannot restore domain root as symlink"];
  }

  else
  {
    if ([domain adjustNodeOwnershipAndPermissionsForDataMigratorPlugIn:&v38 path:pathCopy])
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44 = pathCopy;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "=restorable= Fixing ownership at %@", buf, 0xCu);
        _MBLog();
      }
    }

    v37 = 0;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10007CAA8;
    v34[3] = &unk_1000FE580;
    v35 = pathCopy;
    v36 = targetCopy;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v29 = v39;
    v30 = v40;
    v31 = v41;
    v24[2] = sub_10007CDC8;
    v24[3] = &unk_1000FE5A8;
    flagsCopy = flags;
    v32 = v42;
    v28 = v38;
    v25 = v35;
    v26 = restoreCopy;
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

+ (id)restore:(id)restore directoryAtPath:(id)path settingDataProtection:(BOOL)protection settingOwnershipAndFlags:(BOOL)flags
{
  restoreCopy = restore;
  pathCopy = path;
  if (!pathCopy)
  {
    sub_1000A0098();
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  [restoreCopy getNode:&v40];
  if (!sub_10008E5E0(&v40))
  {
    sub_1000A0104();
  }

  domain = [restoreCopy domain];
  if (!domain)
  {
    sub_1000A0160();
  }

  if ([domain adjustNodeOwnershipAndPermissionsForDataMigratorPlugIn:&v40 path:pathCopy])
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v46 = pathCopy;
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
  v33 = pathCopy;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v26 = v41;
  v27 = v42;
  v28 = v43;
  v21[2] = sub_10007DA44;
  v21[3] = &unk_1000FE5F8;
  v29 = v44;
  v25 = v40;
  flagsCopy = flags;
  v14 = v33;
  v22 = v14;
  v15 = restoreCopy;
  protectionCopy = protection;
  v23 = v15;
  selfCopy = self;
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

+ (id)restore:(id)restore regularFileAtPath:(id)path settingAttributes:(BOOL)attributes
{
  attributesCopy = attributes;
  restoreCopy = restore;
  pathCopy = path;
  if (!pathCopy)
  {
    sub_1000A02E0();
  }

  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  [restoreCopy getNode:&v46];
  if (!sub_10008E5F4(&v46))
  {
    sub_1000A034C();
  }

  fileSystemRepresentation = [pathCopy fileSystemRepresentation];
  if (attributesCopy)
  {
    domain = [restoreCopy domain];
    if (!domain)
    {
      sub_1000A03A8();
    }

    if ([domain adjustNodeOwnershipAndPermissionsForDataMigratorPlugIn:&v46 path:pathCopy])
    {
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = pathCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "=restorable= Fixing ownership at %@", buf, 0xCu);
        v38 = pathCopy;
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
      *&buf[16] = pathCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "=restorable= Restoring regular file ownership: %d:%d at %@", buf, 0x18u);
      v40 = v14;
      v42 = pathCopy;
      v38 = v13;
      _MBLog();
    }

    if (lchown(fileSystemRepresentation, v13, v14))
    {
      v16 = [MBError posixErrorWithCode:102 path:pathCopy format:@"lchown error"];
      goto LABEL_54;
    }
  }

  extendedAttributes = [restoreCopy extendedAttributes];
  if (!extendedAttributes)
  {
    v20 = 0;
    domain = 0;
    goto LABEL_28;
  }

  v18 = MBGetDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [extendedAttributes count];
    *buf = 134218242;
    *&buf[4] = v19;
    *&buf[12] = 2112;
    *&buf[14] = pathCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "=restorable= Restoring regular file extended attributes (%ld) at %@", buf, 0x16u);
    v39 = [extendedAttributes count];
    v41 = pathCopy;
    _MBLog();
  }

  if (sub_10008E598(&v46))
  {
    v20 = [extendedAttributes objectForKeyedSubscript:@"com.apple.decmpfs"];
    if (v20)
    {
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "=restorable= Not re-applying the com.apple.decmpfs xattr yet.", buf, 2u);
        _MBLog();
      }

      v22 = [extendedAttributes mutableCopy];
      [v22 removeObjectForKey:@"com.apple.decmpfs"];

      extendedAttributes = v22;
    }
  }

  else
  {
    v20 = 0;
  }

  v45 = 0;
  v23 = [MBExtendedAttributes setAttributes:extendedAttributes forPathFSR:fileSystemRepresentation error:&v45, v39, v41];
  domain = v45;
  if (v23)
  {
LABEL_28:
    if (attributesCopy)
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
          *&buf[10] = pathCopy;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "=restorable= Restoring regular file BSD flags: 0x%x at %@", buf, 0x12u);
          v39 = v25;
          v41 = pathCopy;
          _MBLog();
        }

        if (lchflags(fileSystemRepresentation, v25))
        {
          v27 = *__error();
          v28 = MBGetDefaultLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109634;
            *&buf[4] = v25;
            *&buf[8] = 2112;
            *&buf[10] = pathCopy;
            *&buf[18] = 1024;
            *&buf[20] = v27;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "=restorable= Failed to restore regular file BSD flags (0x%x) at %@: %{errno}d", buf, 0x18u);
            v41 = pathCopy;
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
        v44 = domain;
        v31 = sub_10007B058(pathCopy, v20, &v44);
        v32 = v44;

        if (!v31)
        {
          v30 = v32;
LABEL_51:
          domain = v30;
          goto LABEL_52;
        }

        domain = v32;
      }

      v33 = sub_10008E61C(&v46);
      v34 = MBGetDefaultLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = v33;
        *&buf[8] = 2112;
        *&buf[10] = pathCopy;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "=restorable= Restoring regular file permissions: 0%3o at %@", buf, 0x12u);
        v39 = v33;
        v41 = pathCopy;
        _MBLog();
      }

      if (lchmod(fileSystemRepresentation, v33))
      {
        v29 = @"lchmod error";
LABEL_48:
        v30 = [MBError posixErrorWithCode:102 path:pathCopy format:v29, v39, v41, v43];
        goto LABEL_52;
      }

      v35 = MBGetDefaultLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = [NSDate dateWithTimeIntervalSince1970:*(&v47 + 1)];
        *buf = 138412546;
        *&buf[4] = v36;
        *&buf[12] = 2112;
        *&buf[14] = pathCopy;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "=restorable= Restoring last modified time (%@) at %@", buf, 0x16u);

        v39 = [NSDate dateWithTimeIntervalSince1970:*(&v47 + 1)];
        v41 = pathCopy;
        _MBLog();
      }

      *buf = time(0);
      *&buf[8] = 0;
      *&buf[16] = *(&v47 + 1);
      v52 = 0;
      if (lutimes(fileSystemRepresentation, buf))
      {
        v29 = @"lutimes error";
        goto LABEL_48;
      }
    }

    v16 = [self _setProtectionClass:BYTE6(v50) withPath:{pathCopy, v39, v41}];

    if (!v16)
    {
      domain = 0;
      goto LABEL_53;
    }

    v30 = v16;
    goto LABEL_51;
  }

  v30 = [MBError errorWithCode:102 error:domain format:@"setxattr error"];
LABEL_52:
  v16 = v30;
LABEL_53:

LABEL_54:

  return v16;
}

@end