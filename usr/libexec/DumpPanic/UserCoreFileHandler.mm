@interface UserCoreFileHandler
- (UserCoreFileHandler)initWithCoreFilePath:(const char *)path :(const char *)a4;
- (id)saveUserSpaceCoreToDisk:(double)disk;
- (void)dealloc;
@end

@implementation UserCoreFileHandler

- (id)saveUserSpaceCoreToDisk:(double)disk
{
  if (!self->_input_core)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_60;
  }

  selfCopy = self;
  v13 = self->_input_corefile_name;
  if (!v13)
  {
LABEL_60:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_61;
  }

  v14 = selfCopy->_input_corefile_path;
  if (!v14)
  {
LABEL_61:
    _os_assert_log();
    v77 = _os_crash();
    __break(1u);
LABEL_62:
    if (v77)
    {
      input_corefile_name = selfCopy->_input_corefile_name;
      v86 = v8;
      uTF8String = [(NSString *)input_corefile_name UTF8String];
      *buf = 136315138;
      v105 = uTF8String;
      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "Removing original %s core", buf, 0xCu);
    }

    uTF8String2 = [(NSString *)selfCopy->_input_corefile_path UTF8String];
    remove(uTF8String2, v89);
    goto LABEL_65;
  }

  v103 = 0;
  v15 = sub_100012B20(@"/private/var/mobile/Library/Logs/CrashReporter/Panics", &v103, 493);
  v16 = v103;
  v17 = v16;
  if ((v15 & 1) == 0)
  {
    v38 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      v49 = v17;
      v50 = v38;
      uTF8String3 = [v17 UTF8String];
      *buf = 136315138;
      v105 = uTF8String3;
      _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "failed to setup corefile output directory with error: %s", buf, 0xCu);
    }

    v39 = 0;
    v7 = 0;
    v40 = 0;
    v3 = v17;
    goto LABEL_38;
  }

  v102 = v16;
  v18 = sub_100012B20(@"/private/var/mobile/Library/Logs/CrashReporter/Panics/staged", &v102, 493);
  v3 = v102;

  if ((v18 & 1) == 0)
  {
    v41 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      v52 = v3;
      v53 = v41;
      uTF8String4 = [v3 UTF8String];
      *buf = 136315138;
      v105 = uTF8String4;
      _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "failed to setup corefile stage directory with error: %s", buf, 0xCu);
    }

    v39 = 0;
    v7 = 0;
    v40 = 0;
    goto LABEL_38;
  }

  v4 = [NSURL fileURLWithPath:@"/private/var/mobile/Library/Logs/CrashReporter/Panics"];
  v11 = &selRef_absoluteString;
  v5 = [[CoresPruner alloc] initWithCorefileURL:v4 CoresToKeep:1 userspaceCorefileName:selfCopy->_input_corefile_name];
  [(CoresPruner *)v5 prune];
  v19 = malloc_type_malloc(0x20000uLL, 0xB8C4D073uLL);
  v10 = &unk_100042000;
  v20 = qword_100042B28;
  if (!v19)
  {
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      v42 = selfCopy->_input_corefile_name;
      v43 = v20;
      uTF8String5 = [(NSString *)v42 UTF8String];
      *buf = 136315138;
      v105 = uTF8String5;
      _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Failed to allocate compression buffer for %s core", buf, 0xCu);
    }

    goto LABEL_35;
  }

  v21 = v19;
  if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v105 = "/private/var/mobile/Library/Logs/CrashReporter/Panics/staged/tempUserSpaceCore.XXX";
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "gzopen %s", buf, 0xCu);
  }

  v22 = gzopen("/private/var/mobile/Library/Logs/CrashReporter/Panics/staged/tempUserSpaceCore.XXX", "w");
  if (!v22)
  {
    v47 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      v59 = selfCopy->_input_corefile_name;
      v60 = v47;
      uTF8String6 = [(NSString *)v59 UTF8String];
      v62 = __error();
      v63 = strerror(*v62);
      *buf = 136315394;
      v105 = uTF8String6;
      v106 = 2080;
      v107 = v63;
      _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "Failed to open %s core compressed output file with error %s", buf, 0x16u);
    }

    fclose(selfCopy->_input_core);
    selfCopy->_input_core = 0;
    free(v21);
LABEL_35:
    v39 = 0;
    v7 = 0;
    goto LABEL_36;
  }

  v23 = v22;
  do
  {
    v24 = fread(v21, 1uLL, 0x20000uLL, selfCopy->_input_core);
    if (v24)
    {
      v25 = v24;
      v26 = 0;
      v27 = 0;
      while (1)
      {
        v28 = gzwrite(v23, &v21[v26], v25 - v27);
        if (!v28)
        {
          break;
        }

        v27 += v28;
        v26 = v27;
        if (v25 <= v27)
        {
          goto LABEL_17;
        }
      }

      v45 = qword_100042B28;
      if (!os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      v55 = selfCopy->_input_corefile_name;
      v56 = v45;
      uTF8String7 = [(NSString *)v55 UTF8String];
      *buf = 136315138;
      v105 = uTF8String7;
      v58 = "gzwrite failed to write %s core";
      goto LABEL_42;
    }

    if (!feof(selfCopy->_input_core))
    {
      v64 = qword_100042B28;
      if (!os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      v65 = selfCopy->_input_corefile_name;
      v56 = v64;
      uTF8String8 = [(NSString *)v65 UTF8String];
      *buf = 136315138;
      v105 = uTF8String8;
      v58 = "Failed to read content from %s core";
LABEL_42:
      _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, v58, buf, 0xCu);

LABEL_31:
      fclose(selfCopy->_input_core);
      free(v21);
      gzclose(v23);
      remove("/private/var/mobile/Library/Logs/CrashReporter/Panics/staged/tempUserSpaceCore.XXX", v46);
      fclose(selfCopy->_input_core);
      goto LABEL_35;
    }

LABEL_17:
    ;
  }

  while (!feof(selfCopy->_input_core));
  free(v21);
  fclose(selfCopy->_input_core);
  selfCopy->_input_core = 0;
  v29 = gzclose(v23);
  if (v29)
  {
    v30 = v29;
    if (v29 == -1)
    {
      v31 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        v33 = selfCopy->_input_corefile_name;
        v34 = v31;
        uTF8String9 = [(NSString *)v33 UTF8String];
        v36 = __error();
        v37 = strerror(*v36);
        *buf = 136315394;
        v105 = uTF8String9;
        v106 = 2080;
        v107 = v37;
        _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Failed to close compressed %s core with error : %s", buf, 0x16u);
      }
    }

    else
    {
      v75 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        v95 = selfCopy->_input_corefile_name;
        v96 = v75;
        uTF8String10 = [(NSString *)v95 UTF8String];
        *buf = 136315394;
        v105 = uTF8String10;
        v106 = 1024;
        LODWORD(v107) = v30;
        _os_log_error_impl(&_mh_execute_header, v96, OS_LOG_TYPE_ERROR, "Failed to close compressed %s core with error : %d", buf, 0x12u);
      }
    }

    remove("/private/var/mobile/Library/Logs/CrashReporter/Panics/staged/tempUserSpaceCore.XXX", v32);
    goto LABEL_35;
  }

  v67 = sub_10001906C(disk);
  v7 = [NSString stringWithFormat:@"%@.%s%@.core.gz", v67, "", selfCopy->_input_corefile_name];

  v68 = [NSString stringWithFormat:@"%s/%@", "/private/var/mobile/Library/Logs/CrashReporter/Panics/staged", v7];
  uTF8String11 = [v68 UTF8String];
  rename("/private/var/mobile/Library/Logs/CrashReporter/Panics/staged/tempUserSpaceCore.XXX", uTF8String11, v70);
  v72 = v71;

  if (v72)
  {
    v73 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      v98 = selfCopy->_input_corefile_name;
      v99 = v73;
      uTF8String12 = [(NSString *)v98 UTF8String];
      uTF8String13 = [v7 UTF8String];
      *buf = 136315650;
      v105 = uTF8String12;
      v106 = 2080;
      v107 = "/private/var/mobile/Library/Logs/CrashReporter/Panics/staged/tempUserSpaceCore.XXX";
      v108 = 2080;
      v109 = uTF8String13;
      _os_log_error_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "Failed to rename compressed %s from %s to %s", buf, 0x20u);
    }

    remove("/private/var/mobile/Library/Logs/CrashReporter/Panics/staged/tempUserSpaceCore.XXX", v74);
    goto LABEL_49;
  }

  v9 = &IOIteratorIsValid_ptr;
  v76 = sub_10000CC80();
  v8 = qword_100042B28;
  v77 = os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT);
  if (!v76)
  {
    goto LABEL_62;
  }

  if (v77)
  {
    v78 = selfCopy->_input_corefile_name;
    v79 = v8;
    uTF8String14 = [(NSString *)v78 UTF8String];
    *buf = 136315138;
    v105 = uTF8String14;
    _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Detected stress rack device, setting xattr on original %s core", buf, 0xCu);
  }

  if (!setxattr([(NSString *)selfCopy->_input_corefile_path UTF8String], "UserSpaceCoreCompressed", "YES", 4uLL, 0, 0))
  {
LABEL_65:
    v90 = [objc_alloc((v11 + 415)) initWithCorefileURL:v4 CoresToKeep:1 userspaceCorefileName:selfCopy->_input_corefile_name];

    [(CoresPruner *)v90 prune];
    v39 = [v9[288] stringWithFormat:@"%s/%@", "/private/var/mobile/Library/Logs/CrashReporter/Panics", v7];
    v91 = +[NSFileManager defaultManager];
    v92 = [v91 fileExistsAtPath:v39];

    v93 = *(v10 + 357);
    if (v92)
    {
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        v94 = selfCopy->_input_corefile_name;
        *buf = 138412546;
        v105 = v94;
        v106 = 2112;
        v107 = v39;
        _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Finished processing %@ core, available at %@", buf, 0x16u);
      }

      v39 = v39;
      v5 = v90;
      v40 = v39;
    }

    else
    {
      if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v105 = v39;
        _os_log_error_impl(&_mh_execute_header, v93, OS_LOG_TYPE_ERROR, "Cannot find %@", buf, 0xCu);
      }

      v40 = 0;
      v5 = v90;
    }

    goto LABEL_37;
  }

  v81 = qword_100042B28;
  if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
  {
    v82 = v81;
    v83 = __error();
    v84 = strerror(*v83);
    *buf = 136315394;
    v105 = "UserSpaceCoreCompressed";
    v106 = 2080;
    v107 = v84;
    _os_log_error_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "Failed to set %s xattr returned error : %s", buf, 0x16u);
  }

LABEL_49:
  v39 = 0;
LABEL_36:
  v40 = 0;
LABEL_37:

LABEL_38:

  return v40;
}

- (void)dealloc
{
  input_core = self->_input_core;
  if (input_core)
  {
    fclose(input_core);
    self->_input_core = 0;
  }

  v4.receiver = self;
  v4.super_class = UserCoreFileHandler;
  [(UserCoreFileHandler *)&v4 dealloc];
}

- (UserCoreFileHandler)initWithCoreFilePath:(const char *)path :(const char *)a4
{
  self->_input_core = 0;
  v35 = 0;
  value = 0;
  v7 = [NSString stringWithUTF8String:a4];
  input_corefile_path = self->_input_corefile_path;
  self->_input_corefile_path = v7;

  v9 = [NSString stringWithUTF8String:path];
  input_corefile_name = self->_input_corefile_name;
  self->_input_corefile_name = v9;

  input_core = fopen(a4, "r");
  self->_input_core = input_core;
  if (input_core)
  {
    goto LABEL_2;
  }

  if (*__error() == 2)
  {
    v17 = qword_100042B28;
    if (!os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
    {
LABEL_17:
      selfCopy = 0;
      goto LABEL_22;
    }

    v18 = self->_input_corefile_name;
    v19 = v17;
    *buf = 136315394;
    uTF8String = [(NSString *)v18 UTF8String];
    v38 = 2080;
    v39 = a4;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "No %s core found at %s", buf, 0x16u);
LABEL_8:

    goto LABEL_17;
  }

  input_core = self->_input_core;
  if (!input_core)
  {
    v26 = qword_100042B28;
    if (!os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v19 = v26;
    v30 = __error();
    v31 = strerror(*v30);
    *buf = 136315394;
    uTF8String = a4;
    v38 = 2080;
    v39 = v31;
    _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "open %s failed with error: %s", buf, 0x16u);
    goto LABEL_8;
  }

LABEL_2:
  v12 = feof(input_core);
  v13 = qword_100042B28;
  v14 = os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      v15 = self->_input_corefile_name;
      v16 = v13;
      *buf = 136315138;
      uTF8String = [(NSString *)v15 UTF8String];
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s core is empty", buf, 0xCu);
    }

    goto LABEL_21;
  }

  if (v14)
  {
    v20 = self->_input_corefile_name;
    v21 = v13;
    *buf = 136315394;
    uTF8String = [(NSString *)v20 UTF8String];
    v38 = 2080;
    v39 = a4;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Found %s core at %s", buf, 0x16u);
  }

  if (getxattr(a4, "UserSpaceCoreCompressed", &value, 5uLL, 0, 0) != -1)
  {
    v22 = qword_100042B28;
    if (!os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
    {
LABEL_21:
      fclose(self->_input_core);
      selfCopy = 0;
      self->_input_core = 0;
      goto LABEL_22;
    }

    v23 = self->_input_corefile_name;
    v24 = v22;
    uTF8String2 = [(NSString *)v23 UTF8String];
    *buf = 136315138;
    uTF8String = uTF8String2;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s core already compressed, skipping collection", buf, 0xCu);
LABEL_14:

    goto LABEL_21;
  }

  if (*__error() != 93)
  {
    v28 = qword_100042B28;
    if (!os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v24 = v28;
    v32 = __error();
    v33 = strerror(*v32);
    *buf = 136315394;
    uTF8String = "UserSpaceCoreCompressed";
    v38 = 2080;
    v39 = v33;
    _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "getxattr %s returned error : %s", buf, 0x16u);
    goto LABEL_14;
  }

  selfCopy = self;
LABEL_22:

  return selfCopy;
}

@end