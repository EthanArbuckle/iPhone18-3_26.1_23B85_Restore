@interface ReadOnlyKeyStore
- (BOOL)readKeyFile:(id)file :(id *)a4 :(int *)a5 :(id *)a6 :(id *)a7;
- (ReadOnlyKeyStore)initWithKeyStorePath:(id)path :(id)a4;
- (ccec_cp)getEccFormat:(int)format;
- (id)init:(id)init;
@end

@implementation ReadOnlyKeyStore

- (BOOL)readKeyFile:(id)file :(id *)a4 :(int *)a5 :(id *)a6 :(id *)a7
{
  fileCopy = file;
  v13 = +[NSFileManager defaultManager];
  v62 = 0;
  v14 = [v13 attributesOfItemAtPath:fileCopy error:&v62];
  v15 = v62;

  if (!v14)
  {
    log_handle = self->_log_handle;
    if (os_log_type_enabled(log_handle, OS_LOG_TYPE_ERROR))
    {
      v20 = log_handle;
      localizedDescription = [v15 localizedDescription];
      *buf = 138412290;
      v64 = localizedDescription;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to gather the file attributes for key file. Error: %@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  if (a4)
  {
    v16 = v14;
    *a4 = v14;
  }

  fileType = [v14 fileType];

  if (fileType == NSFileTypeRegular)
  {
    if ([v14 fileSize] > 0x2000)
    {
      v22 = self->_log_handle;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "File seems to be too large to be useful. Skipping", buf, 2u);
      }

      goto LABEL_12;
    }

    v61 = v15;
    v25 = [NSData dataWithContentsOfFile:fileCopy options:0 error:&v61];
    v26 = v61;

    if (!v25)
    {
      v37 = self->_log_handle;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v45 = v37;
        localizedDescription2 = [v26 localizedDescription];
        *buf = 138412290;
        v64 = localizedDescription2;
        _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Failed to read the file contents for key file. Error: %@", buf, 0xCu);
      }

      v23 = 0;
      v15 = v26;
      goto LABEL_73;
    }

    v60 = v26;
    v27 = [NSJSONSerialization JSONObjectWithData:v25 options:0 error:&v60];
    v59 = v60;

    if (v27)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v58 = v27;
        v28 = v27;
        v29 = [v28 objectForKeyedSubscript:@"magic"];
        v30 = v29;
        if (v29)
        {
          if ([v29 unsignedLongLongValue] == 0x4D414749434B4559)
          {
            v31 = [v28 objectForKeyedSubscript:@"version"];
            v57 = v31;
            if (v31)
            {
              if ([v31 unsignedIntValue] == 1)
              {
                v32 = [v28 objectForKeyedSubscript:@"key_format"];
                if (!v32)
                {
                  v48 = 0;
                  v49 = self->_log_handle;
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Misformatted key file. Key format not found", buf, 2u);
                  }

                  v23 = 0;
                  goto LABEL_69;
                }

                v56 = v32;
                intValue = [v32 intValue];
                if (!intValue || intValue >= 2)
                {
                  v50 = intValue;
                  v51 = self->_log_handle;
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109120;
                    LODWORD(v64) = v50;
                    _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Unsupported key format in key file: %d", buf, 8u);
                  }

                  goto LABEL_67;
                }

                *a5 = intValue;
                if (a6)
                {
                  v34 = [v28 objectForKeyedSubscript:@"public_key_hash"];
                  if (v34)
                  {
                    v35 = [[NSData alloc] initWithBase64EncodedString:v34 options:0];
                    *a6 = v35;
                    if (v35)
                    {

                      goto LABEL_28;
                    }

                    v52 = self->_log_handle;
                    if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_66;
                    }

                    *buf = 0;
                    v53 = "Failed to parse the Base64-encoded hash";
                  }

                  else
                  {
                    v52 = self->_log_handle;
                    if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_66;
                    }

                    *buf = 0;
                    v53 = "Misformatted key file. Public key hash not found";
                  }

LABEL_65:
                  _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, v53, buf, 2u);
                  goto LABEL_66;
                }

LABEL_28:
                if (!a7)
                {
LABEL_32:
                  v23 = 1;
LABEL_68:
                  v48 = v56;
LABEL_69:

                  goto LABEL_70;
                }

                v34 = [v28 objectForKeyedSubscript:@"full_key"];
                if (v34)
                {
                  v36 = [[NSData alloc] initWithBase64EncodedString:v34 options:0];
                  *a7 = v36;
                  if (v36)
                  {

                    goto LABEL_32;
                  }

                  v52 = self->_log_handle;
                  if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_66;
                  }

                  *buf = 0;
                  v53 = "Failed to parse the Base64-encoded key";
                  goto LABEL_65;
                }

                v52 = self->_log_handle;
                if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  v53 = "Misformatted key file. Full key not found";
                  goto LABEL_65;
                }

LABEL_66:

LABEL_67:
                v23 = 0;
                goto LABEL_68;
              }

              v47 = self->_log_handle;
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                v54 = v47;
                intValue2 = [v57 intValue];
                *buf = 67109120;
                LODWORD(v64) = intValue2;
                _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "Unknown file version %d", buf, 8u);
              }
            }

            else
            {
              v44 = self->_log_handle;
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Misformatted key file. Version not found", buf, 2u);
              }
            }

            v23 = 0;
LABEL_70:

            goto LABEL_71;
          }

          v42 = self->_log_handle;
          if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
LABEL_44:
            v23 = 0;
LABEL_71:

            v27 = v58;
            goto LABEL_72;
          }

          *buf = 0;
          v43 = "Misformatted key file. Mismatched magic";
        }

        else
        {
          v42 = self->_log_handle;
          if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_44;
          }

          *buf = 0;
          v43 = "Not a key file. Magic not found";
        }

        _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, v43, buf, 2u);
        goto LABEL_44;
      }

      v41 = self->_log_handle;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Failed to parse the file contents as a dictionary", buf, 2u);
      }
    }

    else
    {
      v38 = self->_log_handle;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = v38;
        localizedDescription3 = [v59 localizedDescription];
        *buf = 138412290;
        v64 = localizedDescription3;
        _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Failed to parse the file contents as JSON. Error: %@", buf, 0xCu);

        v27 = 0;
      }
    }

    v23 = 0;
LABEL_72:

    v15 = v59;
LABEL_73:

    goto LABEL_13;
  }

  v18 = self->_log_handle;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v64 = fileCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Skipping non-file type '%@'", buf, 0xCu);
  }

LABEL_12:
  v23 = 0;
LABEL_13:

  return v23;
}

- (ccec_cp)getEccFormat:(int)format
{
  if (format == 1)
  {

    return ccec_cp_256(self, a2);
  }

  else
  {
    log_handle = self->_log_handle;
    if (os_log_type_enabled(log_handle, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 67109120;
      v6[1] = format;
      _os_log_error_impl(&_mh_execute_header, log_handle, OS_LOG_TYPE_ERROR, "Unknown key format %d", v6, 8u);
    }

    return 0;
  }
}

- (id)init:(id)init
{
  initCopy = init;
  v5 = [NSString stringWithUTF8String:"/private/var/db/DumpPanic/Keys"];
  v6 = [(ReadOnlyKeyStore *)self initWithKeyStorePath:v5];

  return v6;
}

- (ReadOnlyKeyStore)initWithKeyStorePath:(id)path :(id)a4
{
  pathCopy = path;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = ReadOnlyKeyStore;
  v9 = [(ReadOnlyKeyStore *)&v18 init];
  v10 = v9;
  if (!v9)
  {
LABEL_7:

    return v10;
  }

  if (v8)
  {
    objc_storeStrong(&v9->_log_handle, a4);
    v11 = pathCopy;
    if (v11)
    {
      v12 = v11;

      objc_storeStrong(&v10->_keyStorePath, path);
      v10->_isDefaultKeyStorePath = [v12 isEqualToString:@"/private/var/db/DumpPanic/Keys"];
      v17 = 0;
      v13 = +[NSFileManager defaultManager];
      LODWORD(v12) = [v13 fileExistsAtPath:v12 isDirectory:&v17];

      v14 = v17 ^ 1;
      if (!v12)
      {
        v14 = 0;
      }

      v10->_singleFileMode = v14;
      v15 = v10;
      goto LABEL_7;
    }
  }

  else
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  _os_assert_log();
  result = _os_crash();
  __break(1u);
  return result;
}

@end