@interface KeyStore
- (void)RotateKeys:(void *)keys;
@end

@implementation KeyStore

- (void)RotateKeys:(void *)keys
{
  if (!self->super.super._singleFileMode)
  {
    keyStorePath = self->super.super._keyStorePath;
    v110 = 0;
    v6 = sub_100012B20(keyStorePath, &v110, 420);
    v7 = v110;
    v8 = v7;
    if ((v6 & 1) == 0)
    {
      log_handle = self->super.super._log_handle;
      if (os_log_type_enabled(log_handle, OS_LOG_TYPE_ERROR))
      {
        v113[0] = 138412290;
        *&v113[1] = v8;
        _os_log_error_impl(&_mh_execute_header, log_handle, OS_LOG_TYPE_ERROR, "Failed to setup the key-store directory.Error: %@", v113, 0xCu);
      }

      v13 = 0;
      goto LABEL_69;
    }

    keysCopy = keys;
    v90 = v7;
    v9 = +[NSFileManager defaultManager];
    v10 = [v9 contentsOfDirectoryAtPath:self->super.super._keyStorePath error:0];

    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v11 = v10;
    v94 = v11;
    v99 = [v11 countByEnumeratingWithState:&v106 objects:v114 count:16];
    if (!v99)
    {

      v13 = 0;
      v39 = 0;
      v95 = 0;
      v96 = 0;
      v93 = 0;
      goto LABEL_38;
    }

    v93 = 0;
    v95 = 0;
    v96 = 0;
    v13 = 0;
    v14 = *v107;
    v97 = 0;
    v98 = v14;
    *&v12 = 138412290;
    v92 = v12;
    *&v12 = 138412546;
    v91 = v12;
    do
    {
      v15 = 0;
      do
      {
        if (*v107 != v98)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v106 + 1) + 8 * v15);
        v17 = self->super.super._keyStorePath;
        v18 = [NSString stringWithFormat:@"%@/%@", v17, v16];
        v111 = 0;
        v105 = 0;
        v19 = [(ReadOnlyKeyStore *)self readKeyFile:v18];
        v20 = v105;
        v21 = v20;
        if (v19)
        {
          if (v111 == 1)
          {
            fileCreationDate = [v20 fileCreationDate];
            if (!v97 || [v95 compare:fileCreationDate] == 1)
            {
              v23 = v18;

              v24 = fileCreationDate;
              v95 = v24;
              v97 = v23;
            }

            if (!v96 || [v93 compare:fileCreationDate] == -1)
            {
              v25 = v18;

              v26 = fileCreationDate;
              v93 = v26;
              v96 = v25;
            }
          }

          else
          {
            v32 = self->super.super._log_handle;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v113[0]) = 0;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Current key does not match expected key format. Skipping", v113, 2u);
            }
          }
        }

        else
        {
          v27 = self->super.super._log_handle;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v113[0] = v92;
            *&v113[1] = v16;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Deleting unparseable file '%@'", v113, 0xCu);
          }

          v28 = +[NSFileManager defaultManager];
          v104 = v13;
          v29 = [v28 removeItemAtPath:v16 error:&v104];
          v30 = v104;

          if ((v29 & 1) == 0)
          {
            v31 = self->super.super._log_handle;
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v33 = v31;
              localizedDescription = [v30 localizedDescription];
              v113[0] = v91;
              *&v113[1] = v16;
              LOWORD(v113[3]) = 2112;
              *(&v113[3] + 2) = localizedDescription;
              _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to delete file '%@'. Error: %@", v113, 0x16u);
            }
          }

          v13 = v30;
          v11 = v94;
        }

        v15 = (v15 + 1);
      }

      while (v99 != v15);
      v35 = [v11 countByEnumeratingWithState:&v106 objects:v114 count:16];
      v99 = v35;
    }

    while (v35);

    if (v96)
    {
      [v93 timeIntervalSinceNow];
      v37 = fabs(v36) > 432000.0;
    }

    else
    {
      v37 = 1;
    }

    v39 = v97;
    if (v97 && ([v97 isEqualToString:v96] & 1) == 0)
    {
      unlink([v97 UTF8String]);
      if (v37)
      {
LABEL_38:
        v97 = v39;
        v40 = self->super.super._log_handle;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v113[0]) = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Creating a new key file", v113, 2u);
        }

        v41 = [(ReadOnlyKeyStore *)self getEccFormat:1];
        v99 = &keysCopy;
        v42 = (32 * v41->var0) | 0x10;
        __chkstk_darwin(v41);
        v44 = (&keysCopy - v43);
        v45 = ccrng(0);
        ccecdh_generate_key(v41, v45, v44);
        v46 = 3 * ((cczp_bitlen(v41) + 7) >> 3);
        v47 = (cczp_bitlen(v41) + 7) >> 2;
        v48 = [NSMutableData dataWithLength:v46 + 1];
        v49 = [NSMutableData dataWithLength:v47 | 1];
        ccec_x963_export(1, [v48 mutableBytes], v44);
        ccec_x963_export(0, [v49 mutableBytes], v44);
        cc_clear((32 * v41->var0) | 0x10, v44);
        memset(v113, 0, 32);
        v50 = ccsha256_di();
        ccdigest(v50, [v49 length], objc_msgSend(v49, "bytes"), v113);
        v51 = [NSData dataWithBytes:v113 length:32];
        v52 = +[NSMutableDictionary dictionary];
        v53 = [NSNumber numberWithUnsignedLongLong:0x4D414749434B4559];
        [v52 setObject:v53 forKeyedSubscript:@"magic"];

        v54 = [NSNumber numberWithUnsignedInt:1];
        [v52 setObject:v54 forKeyedSubscript:@"version"];

        v55 = [NSNumber numberWithInt:1];
        [v52 setObject:v55 forKeyedSubscript:@"key_format"];

        v56 = [v51 base64EncodedStringWithOptions:0];
        [v52 setObject:v56 forKeyedSubscript:@"public_key_hash"];

        v57 = [v48 base64EncodedStringWithOptions:0];
        [v52 setObject:v57 forKeyedSubscript:@"full_key"];

        v58 = self->super.super._keyStorePath;
        v59 = +[NSDate date];
        [v59 timeIntervalSince1970];
        v61 = [NSString stringWithFormat:@"%@/%llu.key", v58, v60];

        v103 = v13;
        v62 = [NSJSONSerialization dataWithJSONObject:v52 options:0 error:&v103];
        v63 = v103;

        if (!v62)
        {
          v67 = self->super.super._log_handle;
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            v83 = v67;
            [v63 localizedDescription];
            v84 = v48;
            v86 = v85 = v51;
            v111 = 138412290;
            v112 = v86;
            _os_log_error_impl(&_mh_execute_header, v83, OS_LOG_TYPE_ERROR, "Failed to generate JSON data for key file. Error: %@", &v111, 0xCu);

            v51 = v85;
            v48 = v84;
          }

          v13 = v63;
          goto LABEL_53;
        }

        v98 = v48;
        v64 = v51;
        v102 = v63;
        v65 = [v62 writeToFile:v61 options:0x40000000 error:&v102];
        v13 = v102;

        if (v65)
        {
          if ((keysCopy(v49) & 1) == 0)
          {
            v66 = self->super.super._log_handle;
            v51 = v64;
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v111) = 0;
              _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "Failed to call the new public key callback", &v111, 2u);
            }

            unlink([v61 UTF8String]);
            goto LABEL_52;
          }
        }

        else
        {
          v68 = self->super.super._log_handle;
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            v87 = v68;
            localizedDescription2 = [v13 localizedDescription];
            v111 = 138412290;
            v112 = localizedDescription2;
            _os_log_error_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "Failed to write to the new key file. Error: %@", &v111, 0xCu);
          }
        }

        v51 = v64;
LABEL_52:
        v48 = v98;
LABEL_53:

        v11 = v94;
LABEL_68:

        v8 = v90;
LABEL_69:

        return;
      }
    }

    else if (v37)
    {
      goto LABEL_38;
    }

    v69 = self->super.super._log_handle;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v113[0]) = 0;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Reusing an existing key file", v113, 2u);
    }

    v111 = 0;
    v100 = 0;
    v101 = 0;
    v70 = [(ReadOnlyKeyStore *)self readKeyFile:v96];
    v71 = v101;
    v72 = v100;
    if (v70)
    {
      v73 = [(ReadOnlyKeyStore *)self getEccFormat:v111];
      v74 = (32 * v73->var0) | 0x10;
      __chkstk_darwin(v73);
      v76 = &keysCopy - v75;
      v77 = ccec_x963_import_priv(&v73->var0, [v72 length], objc_msgSend(v72, "bytes"), (&keysCopy - v75));
      if (v77)
      {
        v78 = v77;
        cc_clear(24 * v73->var0 + 16, v76);
        v79 = self->super.super._log_handle;
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          v113[0] = 67109120;
          v113[1] = v78;
          _os_log_error_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "Failed to parse the current private key. CoreCrypto error %d", v113, 8u);
        }
      }

      else
      {
        v81 = [NSMutableData dataWithLength:((cczp_bitlen(v73) + 7) >> 2) | 1];
        ccec_x963_export(0, [v81 mutableBytes], v76);
        cc_clear(24 * v73->var0 + 16, v76);
        if ((keysCopy(v81) & 1) == 0)
        {
          v82 = self->super.super._log_handle;
          if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v113[0]) = 0;
            _os_log_error_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "Failed to call the new public key callback with an existing key", v113, 2u);
          }
        }
      }
    }

    else
    {
      v80 = self->super.super._log_handle;
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v113[0]) = 0;
        _os_log_error_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "Failed to read existing key file", v113, 2u);
      }
    }

    goto LABEL_68;
  }
}

@end