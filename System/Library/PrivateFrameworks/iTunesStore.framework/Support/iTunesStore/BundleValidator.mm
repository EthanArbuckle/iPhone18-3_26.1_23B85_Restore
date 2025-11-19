@interface BundleValidator
- (BOOL)_extraMetaDataFromBOM:(id)a3 error:(id *)a4;
- (BOOL)_verifyBundleIdentfiier:(id)a3 bundleVersion:(id)a4 packagePath:(id)a5;
- (BOOL)validate:(id *)a3;
- (id)_createScratchDirectory;
- (id)_newBOMCopierOptions;
- (void)_removeScratchDirectory:(id)a3;
@end

@implementation BundleValidator

- (BOOL)validate:(id *)a3
{
  if (self->_sourceURL)
  {
    v4 = a3;
    v5 = +[NSFileManager defaultManager];
    v101 = 0;
    v6 = [v5 fileExistsAtPath:self->_sourceURL isDirectory:&v101];
    v7 = [NSURL URLWithString:self->_sourceURL];
    LOBYTE(value) = 110;
    v8 = getxattr([v7 fileSystemRepresentation], "com.apple.streamingzip.incomplete_extraction", &value, 1uLL, 0, 1);
    if (v8 == -1)
    {
      if (*__error() == 93)
      {
        goto LABEL_40;
      }

      if (*__error() == 34)
      {
LABEL_4:

        v9 = +[SSLogConfig sharedDaemonConfig];
        if (!v9)
        {
          v9 = +[SSLogConfig sharedConfig];
        }

        v10 = [v9 shouldLog];
        if ([v9 shouldLogToDisk])
        {
          v11 = v10 | 2;
        }

        else
        {
          v11 = v10;
        }

        v12 = [v9 OSLogObject];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = v11;
        }

        else
        {
          v13 = v11 & 2;
        }

        if (!v13)
        {
          goto LABEL_112;
        }

        goto LABEL_110;
      }
    }

    else if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    v23 = +[SSLogConfig sharedDaemonConfig];
    if (!v23)
    {
      v23 = +[SSLogConfig sharedConfig];
    }

    v24 = [v23 shouldLog];
    if ([v23 shouldLogToDisk])
    {
      v25 = v24 | 2;
    }

    else
    {
      v25 = v24;
    }

    v26 = [v23 OSLogObject];
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v25 &= 2u;
    }

    if (v25)
    {
      v27 = v5;
      v28 = v4;
      v29 = [v7 fileSystemRepresentation];
      v30 = __error();
      v31 = strerror(*v30);
      v103 = 136315650;
      *v104 = "com.apple.streamingzip.incomplete_extraction";
      *&v104[8] = 2080;
      v105 = v29;
      v4 = v28;
      v5 = v27;
      *v106 = 2080;
      *&v106[2] = v31;
      LODWORD(v99) = 32;
      v97 = &v103;
      v32 = _os_log_send_and_compose_impl();

      if (!v32)
      {
LABEL_39:

LABEL_40:
        if (v6)
        {
          if ((v101 & 1) == 0)
          {
            v33 = [NSURL URLWithString:self->_sourceURL];
            value = 0;
            v34 = open([v33 fileSystemRepresentation], 256);
            if ((v34 & 0x80000000) == 0)
            {
              v35 = v34;
              v36 = read(v34, &value, 4uLL);
              if (v36 == 4)
              {
                if (value == 67324752)
                {
                  close(v35);

                  v37 = [(BundleValidator *)self _createScratchDirectory];
                  if (v37)
                  {
                    v38 = [NSURL URLWithString:v37];
                    v100 = 0;
                    v39 = [(BundleValidator *)self _extraMetaDataFromBOM:v38 error:&v100];
                    v14 = v100;

                    if (v39)
                    {
                      if ([(BundleValidator *)self _verifyBundleIdentfiier:self->_bundleIdentifier bundleVersion:self->_bundleVersion packagePath:v37])
                      {
                        v40 = 1;
                      }

                      else
                      {
                        v96 = [NSError errorWithDomain:SSErrorDomain code:143 userInfo:0];

                        v40 = 0;
                        v14 = v96;
                      }

                      goto LABEL_146;
                    }

LABEL_131:
                    v87 = +[SSLogConfig sharedDaemonConfig];
                    if (!v87)
                    {
                      v87 = +[SSLogConfig sharedConfig];
                    }

                    v88 = [v87 shouldLog];
                    if ([v87 shouldLogToDisk])
                    {
                      v89 = v88 | 2;
                    }

                    else
                    {
                      v89 = v88;
                    }

                    v90 = [v87 OSLogObject];
                    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
                    {
                      v91 = v89;
                    }

                    else
                    {
                      v91 = v89 & 2;
                    }

                    if (v91)
                    {
                      v92 = objc_opt_class();
                      bundleIdentifier = self->_bundleIdentifier;
                      v103 = 138412546;
                      *v104 = v92;
                      *&v104[8] = 2112;
                      v105 = bundleIdentifier;
                      v94 = v92;
                      LODWORD(v99) = 22;
                      v97 = &v103;
                      v95 = _os_log_send_and_compose_impl();

                      if (!v95)
                      {
                        goto LABEL_143;
                      }

                      v90 = [NSString stringWithCString:v95 encoding:4, &v103, v99];
                      free(v95);
                      v97 = v90;
                      SSFileLog();
                    }

LABEL_143:
                    v40 = 0;
                    v22 = 0;
                    if (!v37)
                    {
LABEL_147:

                      if (v4)
                      {
LABEL_114:
                        if (!v22)
                        {
                          v75 = v14;
                          v22 = 0;
                          *v4 = v14;
                        }
                      }

LABEL_116:

                      goto LABEL_117;
                    }

LABEL_146:
                    [(BundleValidator *)self _removeScratchDirectory:v37, v97];
                    v22 = v40;
                    goto LABEL_147;
                  }

                  v77 = +[SSLogConfig sharedDaemonConfig];
                  if (!v77)
                  {
                    v77 = +[SSLogConfig sharedConfig];
                  }

                  v78 = [v77 shouldLog];
                  if ([v77 shouldLogToDisk])
                  {
                    v79 = v78 | 2;
                  }

                  else
                  {
                    v79 = v78;
                  }

                  v80 = [v77 OSLogObject];
                  if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
                  {
                    v81 = v79;
                  }

                  else
                  {
                    v81 = v79 & 2;
                  }

                  if (v81)
                  {
                    v82 = objc_opt_class();
                    v83 = self->_bundleIdentifier;
                    sourceURL = self->_sourceURL;
                    v103 = 138412802;
                    *v104 = v82;
                    *&v104[8] = 2112;
                    v105 = v83;
                    *v106 = 2112;
                    *&v106[2] = sourceURL;
                    v85 = v82;
                    LODWORD(v99) = 32;
                    v97 = &v103;
                    v86 = _os_log_send_and_compose_impl();

                    if (!v86)
                    {
LABEL_130:

                      v14 = 0;
                      goto LABEL_131;
                    }

                    v80 = [NSString stringWithCString:v86 encoding:4, &v103, v99];
                    free(v86);
                    v97 = v80;
                    SSFileLog();
                  }

                  goto LABEL_130;
                }

                v54 = +[SSLogConfig sharedDaemonConfig];
                if (!v54)
                {
                  v54 = +[SSLogConfig sharedConfig];
                }

                v64 = [v54 shouldLog];
                if ([v54 shouldLogToDisk])
                {
                  v65 = v64 | 2;
                }

                else
                {
                  v65 = v64;
                }

                v57 = [v54 OSLogObject];
                if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                {
                  v66 = v65;
                }

                else
                {
                  v66 = v65 & 2;
                }

                if (!v66)
                {
                  goto LABEL_99;
                }

                v103 = 67110912;
                *v104 = value;
                *&v104[4] = 1024;
                *&v104[6] = SBYTE1(value);
                LOWORD(v105) = 1024;
                *(&v105 + 2) = SBYTE2(value);
                HIWORD(v105) = 1024;
                *v106 = SHIBYTE(value);
                *&v106[4] = 1024;
                *&v106[6] = 80;
                v107 = 1024;
                *v108 = 75;
                *&v108[4] = 1024;
                *&v108[6] = 3;
                v109 = 1024;
                v110 = 4;
                LODWORD(v99) = 50;
                v98 = &v103;
                v63 = _os_log_send_and_compose_impl();

                if (!v63)
                {
LABEL_100:

                  close(v35);
LABEL_101:

                  v9 = +[SSLogConfig sharedDaemonConfig];
                  if (!v9)
                  {
                    v9 = +[SSLogConfig sharedConfig];
                  }

                  v67 = [v9 shouldLog];
                  if ([v9 shouldLogToDisk])
                  {
                    v68 = v67 | 2;
                  }

                  else
                  {
                    v68 = v67;
                  }

                  v12 = [v9 OSLogObject];
                  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
                  {
                    v69 = v68;
                  }

                  else
                  {
                    v69 = v68 & 2;
                  }

                  if (!v69)
                  {
                    goto LABEL_112;
                  }

                  goto LABEL_110;
                }
              }

              else
              {
                v53 = v36;
                v54 = +[SSLogConfig sharedDaemonConfig];
                if (!v54)
                {
                  v54 = +[SSLogConfig sharedConfig];
                }

                v55 = [v54 shouldLog];
                if ([v54 shouldLogToDisk])
                {
                  v56 = v55 | 2;
                }

                else
                {
                  v56 = v55;
                }

                v57 = [v54 OSLogObject];
                if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                {
                  v58 = v56;
                }

                else
                {
                  v58 = v56 & 2;
                }

                if (!v58)
                {
                  goto LABEL_99;
                }

                v59 = v4;
                v60 = [v33 fileSystemRepresentation];
                v61 = __error();
                v62 = strerror(*v61);
                v103 = 134218754;
                *v104 = 4;
                *&v104[8] = 2048;
                v105 = v53;
                *v106 = 2080;
                *&v106[2] = v60;
                v107 = 2080;
                *v108 = v62;
                LODWORD(v99) = 42;
                v98 = &v103;
                v63 = _os_log_send_and_compose_impl();

                v4 = v59;
                if (!v63)
                {
                  goto LABEL_100;
                }
              }

              v57 = [NSString stringWithCString:v63 encoding:4, &v103, v99];
              free(v63);
              v98 = v57;
              SSFileLog();
LABEL_99:

              goto LABEL_100;
            }

            v44 = +[SSLogConfig sharedDaemonConfig];
            if (!v44)
            {
              v44 = +[SSLogConfig sharedConfig];
            }

            v45 = [v44 shouldLog];
            if ([v44 shouldLogToDisk])
            {
              v46 = v45 | 2;
            }

            else
            {
              v46 = v45;
            }

            v47 = [v44 OSLogObject];
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              v48 = v46;
            }

            else
            {
              v48 = v46 & 2;
            }

            if (v48)
            {
              v49 = [v33 fileSystemRepresentation];
              v50 = __error();
              v51 = strerror(*v50);
              v103 = 136315394;
              *v104 = v49;
              *&v104[8] = 2080;
              v105 = v51;
              LODWORD(v99) = 22;
              v98 = &v103;
              v52 = _os_log_send_and_compose_impl();

              if (!v52)
              {
LABEL_76:

                goto LABEL_101;
              }

              v47 = [NSString stringWithCString:v52 encoding:4, &v103, v99];
              free(v52);
              v98 = v47;
              SSFileLog();
            }

            goto LABEL_76;
          }
        }

        else if ((v101 & 1) == 0)
        {
          v9 = +[SSLogConfig sharedDaemonConfig];
          if (!v9)
          {
            v9 = +[SSLogConfig sharedConfig];
          }

          v41 = [v9 shouldLog];
          if ([v9 shouldLogToDisk])
          {
            v42 = v41 | 2;
          }

          else
          {
            v42 = v41;
          }

          v12 = [v9 OSLogObject];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v43 = v42;
          }

          else
          {
            v43 = v42 & 2;
          }

          if (!v43)
          {
            goto LABEL_112;
          }

LABEL_110:
          v70 = objc_opt_class();
          v71 = self->_bundleIdentifier;
          v72 = self->_sourceURL;
          v103 = 138412802;
          *v104 = v70;
          *&v104[8] = 2112;
          v105 = v71;
          *v106 = 2112;
          *&v106[2] = v72;
          v73 = v70;
          LODWORD(v99) = 32;
          v74 = _os_log_send_and_compose_impl();

          if (!v74)
          {
            goto LABEL_113;
          }

          v12 = [NSString stringWithCString:v74 encoding:4, &v103, v99];
          free(v74);
          SSFileLog();
LABEL_112:

LABEL_113:
          v22 = 0;
          v14 = 0;
          if (v4)
          {
            goto LABEL_114;
          }

          goto LABEL_116;
        }

        if ([(BundleValidator *)self _verifyBundleIdentfiier:self->_bundleIdentifier bundleVersion:self->_bundleVersion packagePath:self->_sourceURL, v97])
        {
          v14 = 0;
          v22 = 1;
        }

        else
        {
          v14 = [NSError errorWithDomain:SSErrorDomain code:143 userInfo:0];
          v22 = 0;
          if (v4)
          {
            goto LABEL_114;
          }
        }

        goto LABEL_116;
      }

      v26 = [NSString stringWithCString:v32 encoding:4, &v103, v99];
      free(v32);
      v97 = v26;
      SSFileLog();
    }

    goto LABEL_39;
  }

  v14 = +[SSLogConfig sharedDaemonConfig];
  if (!v14)
  {
    v14 = +[SSLogConfig sharedConfig];
  }

  v15 = [v14 shouldLog];
  if ([v14 shouldLogToDisk])
  {
    v16 = v15 | 2;
  }

  else
  {
    v16 = v15;
  }

  v17 = [v14 OSLogObject];
  if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v16 &= 2u;
  }

  if (!v16)
  {
    goto LABEL_24;
  }

  v18 = objc_opt_class();
  v19 = self->_bundleIdentifier;
  v103 = 138412546;
  *v104 = v18;
  *&v104[8] = 2112;
  v105 = v19;
  v20 = v18;
  LODWORD(v99) = 22;
  v21 = _os_log_send_and_compose_impl();

  if (v21)
  {
    v17 = [NSString stringWithCString:v21 encoding:4, &v103, v99];
    free(v21);
    SSFileLog();
LABEL_24:
  }

  v22 = 0;
LABEL_117:

  return v22;
}

- (id)_createScratchDirectory
{
  v2 = +[NSFileManager defaultManager];
  if (qword_100384048 != -1)
  {
    sub_10027254C();
  }

  v3 = [NSString stringWithString:qword_100384040];
  v4 = +[NSUUID UUID];
  v5 = [v4 UUIDString];

  v6 = [v3 stringByAppendingPathComponent:v5];
  v19 = 0;
  v7 = [v2 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v19];
  v8 = v19;
  v9 = 0;
  if (v7)
  {
    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    v13 = [v10 OSLogObject];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v14 = objc_opt_class();
      v20 = 138412802;
      v21 = v14;
      v22 = 2112;
      v23 = v6;
      v24 = 1024;
      v25 = 1;
      v15 = v14;
      LODWORD(v18) = 28;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
LABEL_15:

        v9 = v6;
        goto LABEL_16;
      }

      v13 = [NSString stringWithCString:v16 encoding:4, &v20, v18];
      free(v16);
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_16:

  return v9;
}

- (BOOL)_extraMetaDataFromBOM:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!BOMCopierNew())
  {
    v26 = 0;
    v17 = 0;
    if (!a4)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  BOMCopierSetUserData();
  BOMCopierSetCopyFileStartedHandler();
  BOMCopierSetFatalErrorHandler();
  BOMCopierSetFatalFileErrorHandler();
  BOMCopierSetFileConflictErrorHandler();
  BOMCopierSetFileErrorHandler();
  v7 = [(NSString *)self->_sourceURL fileSystemRepresentation];
  v8 = [v6 fileSystemRepresentation];
  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  v10 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = v10 | 2;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v9 OSLogObject];
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v11 &= 2u;
  }

  if (v11)
  {
    v31 = 138412802;
    v32 = objc_opt_class();
    v33 = 2080;
    v34 = v7;
    v35 = 2080;
    v36 = v8;
    v13 = v32;
    LODWORD(v30) = 32;
    v29 = &v31;
    v14 = _os_log_send_and_compose_impl();

    if (!v14)
    {
      goto LABEL_13;
    }

    v12 = [NSString stringWithCString:v14 encoding:4, &v31, v30];
    free(v14);
    v29 = v12;
    SSFileLog();
  }

LABEL_13:
  v15 = [(BundleValidator *)self _newBOMCopierOptions];
  v16 = BOMCopierCopyWithOptions();
  v17 = v16 == 0;
  if (v16)
  {
    v18 = v16;
    v19 = +[SSLogConfig sharedDaemonConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    v20 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      v21 = v20 | 2;
    }

    else
    {
      v21 = v20;
    }

    v22 = [v19 OSLogObject];
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v21 &= 2u;
    }

    if (v21)
    {
      v23 = objc_opt_class();
      v31 = 138412546;
      v32 = v23;
      v33 = 1024;
      LODWORD(v34) = v18;
      v24 = v23;
      LODWORD(v30) = 18;
      v25 = _os_log_send_and_compose_impl();

      if (!v25)
      {
LABEL_25:

        v26 = ISError();
        goto LABEL_29;
      }

      v22 = [NSString stringWithCString:v25 encoding:4, &v31, v30];
      free(v25);
      SSFileLog();
    }

    goto LABEL_25;
  }

  v26 = 0;
LABEL_29:
  BOMCopierFree();

  if (a4)
  {
LABEL_30:
    v27 = v26;
    *a4 = v26;
  }

LABEL_31:

  return v17;
}

- (id)_newBOMCopierOptions
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(BundleValidator *)self bundleFileType];
  if (v4 == 1)
  {
    v5 = @"extractCPIO";
    goto LABEL_5;
  }

  if (!v4)
  {
    v5 = @"extractPKZip";
LABEL_5:
    [v3 setObject:kCFBooleanTrue forKey:v5];
  }

  return v3;
}

- (void)_removeScratchDirectory:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  [v4 removeItemAtPath:v3 error:0];
}

- (BOOL)_verifyBundleIdentfiier:(id)a3 bundleVersion:(id)a4 packagePath:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(NSFileManager);
  v82 = v9;
  v11 = [v9 stringByAppendingPathComponent:@"Payload"];
  v89 = 0;
  v81 = v10;
  v12 = [v10 contentsOfDirectoryAtPath:v11 error:&v89];
  v79 = v89;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v85 objects:v96 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v86;
LABEL_3:
    v17 = 0;
    while (1)
    {
      if (*v86 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v85 + 1) + 8 * v17);
      if ([v18 hasSuffix:@".app"])
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v85 objects:v96 count:16];
        if (v15)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v19 = [v18 copy];
    v20 = +[SSLogConfig sharedDaemonConfig];
    if (!v20)
    {
      v20 = +[SSLogConfig sharedConfig];
    }

    v21 = [v20 shouldLog];
    if ([v20 shouldLogToDisk])
    {
      v22 = v21 | 2;
    }

    else
    {
      v22 = v21;
    }

    v23 = [v20 OSLogObject];
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v22 &= 2u;
    }

    if (v22)
    {
      v24 = objc_opt_class();
      v90 = 138412546;
      v91 = v24;
      v92 = 2112;
      v93 = v19;
      v25 = v24;
      LODWORD(v74) = 22;
      v71 = &v90;
      v26 = _os_log_send_and_compose_impl();

      if (!v26)
      {
LABEL_21:

        goto LABEL_22;
      }

      v23 = [NSString stringWithCString:v26 encoding:4, &v90, v74];
      free(v26);
      v71 = v23;
      SSFileLog();
    }

    goto LABEL_21;
  }

LABEL_9:
  v19 = 0;
LABEL_22:

  v27 = +[SSLogConfig sharedDaemonConfig];
  if (!v27)
  {
    v27 = +[SSLogConfig sharedConfig];
  }

  v28 = [v27 shouldLog];
  if ([v27 shouldLogToDisk])
  {
    v29 = v28 | 2;
  }

  else
  {
    v29 = v28;
  }

  v30 = [v27 OSLogObject];
  if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v29 &= 2u;
  }

  if (v29)
  {
    v31 = objc_opt_class();
    v90 = 138412546;
    v91 = v31;
    v92 = 2112;
    v93 = v11;
    v32 = v31;
    LODWORD(v74) = 22;
    v72 = &v90;
    v33 = _os_log_send_and_compose_impl();

    if (!v33)
    {
      goto LABEL_33;
    }

    v30 = [NSString stringWithCString:v33 encoding:4, &v90, v74];
    free(v33);
    v72 = v30;
    SSFileLog();
  }

LABEL_33:
  v80 = v11;
  v78 = v19;
  if (v19)
  {
    v34 = [v11 stringByAppendingPathComponent:v19];
    v35 = [v34 stringByAppendingPathComponent:@"Info.plist"];
    v36 = +[SSLogConfig sharedDaemonConfig];
    if (!v36)
    {
      v36 = +[SSLogConfig sharedConfig];
    }

    v37 = [v36 shouldLog];
    if ([v36 shouldLogToDisk])
    {
      v38 = v37 | 2;
    }

    else
    {
      v38 = v37;
    }

    v39 = [v36 OSLogObject];
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v38 &= 2u;
    }

    if (v38)
    {
      v40 = objc_opt_class();
      v90 = 138412546;
      v91 = v40;
      v92 = 2112;
      v93 = v35;
      v41 = v40;
      LODWORD(v74) = 22;
      v73 = &v90;
      v42 = _os_log_send_and_compose_impl();

      if (!v42)
      {
        goto LABEL_45;
      }

      v39 = [NSString stringWithCString:v42 encoding:4, &v90, v74];
      free(v42);
      v73 = v39;
      SSFileLog();
    }

LABEL_45:
    v43 = [[NSDictionary alloc] initWithContentsOfFile:v35];
    v44 = v43;
    if (!v43)
    {
      v45 = +[SSLogConfig sharedDaemonConfig];
      if (!v45)
      {
        v45 = +[SSLogConfig sharedConfig];
      }

      v61 = [v45 shouldLog];
      if ([v45 shouldLogToDisk])
      {
        LODWORD(v59) = v61 | 2;
      }

      else
      {
        LODWORD(v59) = v61;
      }

      v46 = [v45 OSLogObject];
      if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v59) = v59 & 2;
      }

      if (v59)
      {
        v62 = objc_opt_class();
        bundleIdentifier = self->_bundleIdentifier;
        v90 = 138412546;
        v91 = v62;
        v92 = 2112;
        v93 = bundleIdentifier;
        v64 = v62;
        LODWORD(v74) = 22;
        v59 = _os_log_send_and_compose_impl();

        if (!v59)
        {
          v60 = v82;
          goto LABEL_95;
        }

        v46 = [NSString stringWithCString:v59 encoding:4, &v90, v74];
        free(v59);
        SSFileLog();
        LOBYTE(v59) = 0;
      }

      goto LABEL_94;
    }

    v45 = [v43 objectForKey:kCFBundleVersionKey];
    v46 = [v44 objectForKey:kCFBundleIdentifierKey];
    v76 = v8;
    v77 = v7;
    if (([v8 isEqualToString:v45]& 1) != 0)
    {
LABEL_82:
      LOBYTE(v59) = [v7 isEqualToString:v46, v73];
      if ((v59 & 1) == 0)
      {
        v65 = +[SSLogConfig sharedDaemonConfig];
        if (!v65)
        {
          v65 = +[SSLogConfig sharedConfig];
        }

        v66 = [v65 shouldLog];
        if ([v65 shouldLogToDisk])
        {
          v66 |= 2u;
        }

        v67 = [v65 OSLogObject];
        if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          v66 &= 2u;
        }

        if (v66)
        {
          v68 = objc_opt_class();
          v90 = 138412802;
          v91 = v68;
          v92 = 2112;
          v93 = v77;
          v94 = 2112;
          v95 = v46;
          v84 = v68;
          LODWORD(v74) = 32;
          v69 = _os_log_send_and_compose_impl();

          if (!v69)
          {
LABEL_93:

            v8 = v76;
            v7 = v77;
            goto LABEL_94;
          }

          v67 = [NSString stringWithCString:v69 encoding:4, &v90, v74];
          free(v69);
          SSFileLog();
        }

        goto LABEL_93;
      }

LABEL_94:
      v60 = v82;

LABEL_95:
      goto LABEL_96;
    }

    v47 = +[SSLogConfig sharedDaemonConfig];
    if (!v47)
    {
      v47 = +[SSLogConfig sharedConfig];
    }

    v48 = [v47 shouldLog];
    if ([v47 shouldLogToDisk])
    {
      v49 = v48 | 2;
    }

    else
    {
      v49 = v48;
    }

    v50 = [v47 OSLogObject];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = v49;
    }

    else
    {
      v51 = v49 & 2;
    }

    if (v51)
    {
      v52 = objc_opt_class();
      v90 = 138412802;
      v91 = v52;
      v92 = 2112;
      v93 = v76;
      v94 = 2112;
      v95 = v45;
      v75 = v52;
      LODWORD(v74) = 32;
      v73 = &v90;
      v8 = v76;
      v53 = _os_log_send_and_compose_impl();

      if (!v53)
      {
LABEL_81:

        v7 = v77;
        goto LABEL_82;
      }

      v50 = [NSString stringWithCString:v53 encoding:4, &v90, v74];
      free(v53);
      v73 = v50;
      SSFileLog();
    }

    else
    {
      v8 = v76;
    }

    goto LABEL_81;
  }

  v34 = +[SSLogConfig sharedDaemonConfig];
  if (!v34)
  {
    v34 = +[SSLogConfig sharedConfig];
  }

  v54 = [v34 shouldLog];
  if ([v34 shouldLogToDisk])
  {
    v54 |= 2u;
  }

  v35 = [v34 OSLogObject];
  if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v54 &= 2u;
  }

  if (!v54)
  {
LABEL_67:
    LOBYTE(v59) = 0;
    v60 = v82;
LABEL_96:

    goto LABEL_97;
  }

  v55 = objc_opt_class();
  v56 = self->_bundleIdentifier;
  v90 = 138412546;
  v91 = v55;
  v92 = 2112;
  v93 = v56;
  v57 = v55;
  LODWORD(v74) = 22;
  v58 = _os_log_send_and_compose_impl();

  if (v58)
  {
    v35 = [NSString stringWithCString:v58 encoding:4, &v90, v74];
    free(v58);
    SSFileLog();
    goto LABEL_67;
  }

  LOBYTE(v59) = 0;
  v60 = v82;
LABEL_97:

  return v59;
}

@end