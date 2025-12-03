@interface TRIAssetDecrypter
+ (BOOL)decryptAssetWithURL:(id)l destinationFileURL:(id)rL keyFileURL:(id)uRL;
@end

@implementation TRIAssetDecrypter

+ (BOOL)decryptAssetWithURL:(id)l destinationFileURL:(id)rL keyFileURL:(id)uRL
{
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  v12 = TRILogCategory_Archiving();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    path = [lCopy path];
    path2 = [rLCopy path];
    *buf = 138412546;
    v71 = path;
    v72 = 2112;
    v73 = path2;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Decrypting file with URL: %@ to destination: %@", buf, 0x16u);
  }

  path3 = [uRLCopy path];

  fileSystemRepresentation = [path3 fileSystemRepresentation];
  v17 = open(fileSystemRepresentation, 0);
  v18 = v17;
  if (v17 < 0)
  {
    v31 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v39 = __error();
      v40 = strerror(*v39);
      v41 = *__error();
      *buf = 136315650;
      v71 = fileSystemRepresentation;
      v72 = 2080;
      v73 = v40;
      v74 = 1024;
      v75 = v41;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Couldn't open the key file at path %s: %s (%d)", buf, 0x1Cu);
    }
  }

  else
  {
    v19 = read(v17, buf, 0x20uLL);
    v20 = TRILogCategory_Archiving();
    v21 = v20;
    if (v19 == 32)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v64 = 136315138;
        v65 = fileSystemRepresentation;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Found decryption key file at path: %s", v64, 0xCu);
      }

      close(v18);
      path4 = [lCopy path];
      if (!path4)
      {
        v62 = +[NSAssertionHandler currentHandler];
        [v62 handleFailureInMethod:a2 object:self file:@"TRIAssetDecrypter.m" lineNumber:52 description:{@"Expression was unexpectedly nil/false: %@", @"assetURL.path"}];
      }

      v23 = AAFileStreamOpenWithPath([path4 fileSystemRepresentation], 0, 0x1A4u);

      if (!v23)
      {
        v32 = TRILogCategory_Archiving();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          path5 = [lCopy path];
          v48 = __error();
          v49 = strerror(*v48);
          v50 = *__error();
          *v64 = 138412802;
          v65 = path5;
          v66 = 2080;
          v67 = v49;
          v68 = 1024;
          v69 = v50;
          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Error reading encrypted file for asset %@: %s (%d)", v64, 0x1Cu);
        }

        v30 = 0;
        goto LABEL_41;
      }

      v24 = AEAContextCreateWithEncryptedStream(v23);
      v25 = v24;
      if (v24)
      {
        if ((AEAContextSetFieldBlob(v24, 9u, 0, buf, 0x20uLL) & 0x80000000) == 0)
        {
          v26 = AEADecryptionInputStreamOpen(v23, v25, 0x4000000000000000uLL, 0);
          if (v26)
          {
            path6 = [rLCopy path];
            if (!path6)
            {
              v63 = +[NSAssertionHandler currentHandler];
              [v63 handleFailureInMethod:a2 object:self file:@"TRIAssetDecrypter.m" lineNumber:91 description:{@"Expression was unexpectedly nil/false: %@", @"destinationFileURL.path"}];
            }

            fileSystemRepresentation2 = [path6 fileSystemRepresentation];

            v29 = AAFileStreamOpenWithPath(fileSystemRepresentation2, 513, 0x1A4u);
            v30 = v29 != 0;
            if (v29)
            {
              AAByteStreamProcess(v26, v29);
            }

            else
            {
              v45 = TRILogCategory_Archiving();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                path7 = [rLCopy path];
                v59 = __error();
                v60 = strerror(*v59);
                v61 = *__error();
                *v64 = 138412802;
                v65 = path7;
                v66 = 2080;
                v67 = v60;
                v68 = 1024;
                v69 = v61;
                _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Error creating destination file %@: %s (%d)", v64, 0x1Cu);
              }
            }

            AAByteStreamClose(v29);
          }

          else
          {
            v38 = TRILogCategory_Archiving();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              path8 = [lCopy path];
              v55 = __error();
              v56 = strerror(*v55);
              v57 = *__error();
              *v64 = 138412802;
              v65 = path8;
              v66 = 2080;
              v67 = v56;
              v68 = 1024;
              v69 = v57;
              _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Error calling AEADecryptionInputStreamOpen for asset %@: %s (%d)", v64, 0x1Cu);
            }

            v30 = 0;
          }

          AAByteStreamClose(v26);
          goto LABEL_40;
        }

        v33 = TRILogCategory_Archiving();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v51 = __error();
          v52 = strerror(*v51);
          v53 = *__error();
          *v64 = 136315394;
          v65 = v52;
          v66 = 1024;
          LODWORD(v67) = v53;
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Decryption context setup failed: %s (%d)", v64, 0x12u);
        }
      }

      else
      {
        v33 = TRILogCategory_Archiving();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          path9 = [lCopy path];
          v35 = __error();
          v36 = strerror(*v35);
          v37 = *__error();
          *v64 = 138412802;
          v65 = path9;
          v66 = 2080;
          v67 = v36;
          v68 = 1024;
          v69 = v37;
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Decryption context creation failed for asset %@: %s (%d)", v64, 0x1Cu);
        }
      }

      v30 = 0;
LABEL_40:
      AEAContextDestroy(v25);
LABEL_41:
      AAByteStreamClose(v23);
      goto LABEL_42;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v42 = __error();
      v43 = strerror(*v42);
      v44 = *__error();
      *v64 = 136315650;
      v65 = fileSystemRepresentation;
      v66 = 2080;
      v67 = v43;
      v68 = 1024;
      v69 = v44;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Couldn't read the key file at path %s: %s (%d)", v64, 0x1Cu);
    }
  }

  close(v18);
  v30 = 0;
LABEL_42:

  return v30;
}

@end