void sub_1001F2E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001F2E98(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v7 = [NSNumber numberWithLong:Current];
    v32 = 138543362;
    v33 = v7;
    LODWORD(v31) = 12;
    v29 = &v32;
    v8 = _os_log_send_and_compose_impl();

    if (!v8)
    {
      goto LABEL_12;
    }

    v6 = [NSString stringWithCString:v8 encoding:4, &v32, v31];
    free(v8);
    v29 = v6;
    SSFileLog();
  }

LABEL_12:
  HIBYTE(v31) = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"BiometricTokenUpdateTime", kSSUserDefaultsIdentifier, &v31 + 7);
  v10 = HIBYTE(v31);
  v11 = +[SSLogConfig sharedDaemonConfig];
  v12 = v11;
  if (v10)
  {
    if (!v11)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    v13 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    v15 = [v12 OSLogObject];
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v16 = [NSNumber numberWithLong:AppIntegerValue];
      v32 = 138543362;
      v33 = v16;
      LODWORD(v31) = 12;
      v30 = &v32;
      v17 = _os_log_send_and_compose_impl();

      if (!v17)
      {
        goto LABEL_24;
      }

      v15 = [NSString stringWithCString:v17 encoding:4, &v32, v31];
      free(v17);
      v30 = v15;
      SSFileLog();
    }

LABEL_24:
    if (Current - AppIntegerValue > 59)
    {
      return;
    }

    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    v19 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v20 = v19 | 2;
    }

    else
    {
      v20 = v19;
    }

    v21 = [v18 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v20;
    }

    else
    {
      v22 = v20 & 2;
    }

    if (v22)
    {
      LOWORD(v32) = 0;
      LODWORD(v31) = 2;
      v23 = _os_log_send_and_compose_impl();

      if (!v23)
      {
LABEL_37:

        *(*(*(a1 + 32) + 8) + 24) = 1;
        return;
      }

      v21 = [NSString stringWithCString:v23 encoding:4, &v32, v31];
      free(v23);
      SSFileLog();
    }

    goto LABEL_37;
  }

  if (!v11)
  {
    v12 = +[SSLogConfig sharedConfig];
  }

  v24 = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    v25 = v24 | 2;
  }

  else
  {
    v25 = v24;
  }

  v26 = [v12 OSLogObject];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = v25;
  }

  else
  {
    v27 = v25 & 2;
  }

  if (!v27)
  {
    goto LABEL_49;
  }

  LOWORD(v32) = 0;
  LODWORD(v31) = 2;
  v28 = _os_log_send_and_compose_impl();

  if (v28)
  {
    v26 = [NSString stringWithCString:v28 encoding:4, &v32, v31];
    free(v28);
    SSFileLog();
LABEL_49:
  }
}

void sub_1001F3604(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = objc_alloc_init(NSMutableDictionary);
  if (a2)
  {
    objc_opt_class();
    v7 = SSXPCDictionaryCopyObjectWithClass();
    objc_opt_class();
    v8 = SSXPCDictionaryCopyObjectWithClass();
    v9 = xpc_dictionary_get_BOOL(*(a1 + 32), "3");
    if (v7)
    {
      v10 = v9;
      v11 = +[SSLogConfig sharedDaemonConfig];
      v12 = v11;
      if (v8)
      {
        if (!v11)
        {
          v12 = +[SSLogConfig sharedConfig];
        }

        v13 = [v12 shouldLog];
        if ([v12 shouldLogToDisk])
        {
          v14 = v13 | 2;
        }

        else
        {
          v14 = v13;
        }

        v15 = [v12 OSLogObject];
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v14 &= 2u;
        }

        v39 = v8;
        if (v14)
        {
          v40 = 138543874;
          v41 = objc_opt_class();
          v42 = 2114;
          v43 = v7;
          v44 = 2112;
          v45 = v8;
          v16 = v41;
          LODWORD(v36) = 32;
          v35 = &v40;
          v17 = _os_log_send_and_compose_impl();

          if (!v17)
          {
LABEL_15:

            v12 = +[ISBiometricStore sharedInstance];
            v37 = v7;
            v18 = [v12 fetchContextFromCacheWithToken:v7 evict:v10];
            v38 = [v18 challenge];
            v19 = [v18 signature];
            v20 = [v18 xAppleAMDHeader];
            v21 = [v18 xAppleAMDMHeader];
            v22 = [v12 publicKeyDataForAccountIdentifier:v39 purpose:objc_msgSend(v18 error:{"isExtendedAction"), 0}];
            v23 = v22;
            if (v22)
            {
              [v22 bytes];
              [v23 length];
              v24 = ISCopyEncodedBase64();
            }

            else
            {
              v24 = 0;
            }

            v33 = ISBiometricsHTTPHeaderValueForBiometricStateWithStore();
            if (v38)
            {
              [v6 setObject:v38 forKeyedSubscript:SSHTTPHeaderXAppleTouchIDChallenge];
            }

            if (v19)
            {
              [v6 setObject:v19 forKeyedSubscript:SSHTTPHeaderXAppleTouchIDSignature];
            }

            [v6 setObject:@"1" forKeyedSubscript:{SSHTTPHeaderXAppleTouchIDSignatureVersion, v35}];
            if (v24)
            {
              [v6 setObject:v24 forKeyedSubscript:SSHTTPHeaderXAppleTouchIDPublicKey];
            }

            if (v33)
            {
              [v6 setObject:v33 forKeyedSubscript:SSHTTPHeaderXAppleTouchIDState];
            }

            if (v20)
            {
              [v6 setObject:v20 forKeyedSubscript:SSHTTPHeaderXAppleAMD];
            }

            if (v21)
            {
              [v6 setObject:v21 forKeyedSubscript:SSHTTPHeaderXAppleAMDM];
            }

            v7 = v37;
            v8 = v39;
            goto LABEL_52;
          }

          v15 = [NSString stringWithCString:v17 encoding:4, &v40, v36];
          free(v17);
          v35 = v15;
          SSFileLog();
        }

        goto LABEL_15;
      }

      if (!v11)
      {
        v12 = +[SSLogConfig sharedConfig];
      }

      v29 = [v12 shouldLog];
      if ([v12 shouldLogToDisk])
      {
        v30 = v29 | 2;
      }

      else
      {
        v30 = v29;
      }

      v28 = [v12 OSLogObject];
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v30 &= 2u;
      }

      if (!v30)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v12 = +[SSLogConfig sharedDaemonConfig];
      if (!v12)
      {
        v12 = +[SSLogConfig sharedConfig];
      }

      v26 = [v12 shouldLog];
      if ([v12 shouldLogToDisk])
      {
        v27 = v26 | 2;
      }

      else
      {
        v27 = v26;
      }

      v28 = [v12 OSLogObject];
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v27 &= 2u;
      }

      if (!v27)
      {
        goto LABEL_37;
      }
    }

    v40 = 138543362;
    v41 = objc_opt_class();
    v31 = v41;
    LODWORD(v36) = 12;
    v35 = &v40;
    v32 = _os_log_send_and_compose_impl();

    if (!v32)
    {
LABEL_52:

      v25 = 0;
      goto LABEL_53;
    }

    v28 = [NSString stringWithCString:v32 encoding:4, &v40, v36];
    free(v32);
    v35 = v28;
    SSFileLog();
LABEL_37:

    goto LABEL_52;
  }

  v25 = SSError();
LABEL_53:
  v34 = [NSDictionary dictionaryWithDictionary:v6, v35];
  SSXPCDictionarySetObject();

  SSXPCDictionarySetObject();
}

void sub_1001F3CE4(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    v5 = a3;
    objc_opt_class();
    v6 = SSXPCDictionaryCopyObjectWithClass();
    v7 = xpc_dictionary_get_BOOL(*(a1 + 32), "2");
    v8 = +[SSLogConfig sharedDaemonConfig];
    v9 = v8;
    if (v6)
    {
      if (!v8)
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
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v11 &= 2u;
      }

      if (v11)
      {
        *v24 = 138543618;
        *&v24[4] = objc_opt_class();
        *&v24[12] = 2114;
        *&v24[14] = v6;
        v13 = *&v24[4];
        LODWORD(v23) = 22;
        v14 = _os_log_send_and_compose_impl();

        if (!v14)
        {
LABEL_14:

          v9 = +[ISBiometricStore sharedInstance];
          v15 = [v9 fetchContextFromCacheWithToken:v6 evict:v7];
LABEL_28:

          v17 = 0;
          goto LABEL_29;
        }

        v12 = [NSString stringWithCString:v14 encoding:4, v24, v23, *v24, *&v24[16]];
        free(v14);
        SSFileLog();
      }

      goto LABEL_14;
    }

    if (!v8)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v18 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v19 = v18 | 2;
    }

    else
    {
      v19 = v18;
    }

    v20 = [v9 OSLogObject];
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v19 &= 2u;
    }

    if (v19)
    {
      *v24 = 138543362;
      *&v24[4] = objc_opt_class();
      v21 = *&v24[4];
      LODWORD(v23) = 12;
      v22 = _os_log_send_and_compose_impl();

      if (!v22)
      {
LABEL_27:
        v15 = 0;
        goto LABEL_28;
      }

      v20 = [NSString stringWithCString:v22 encoding:4, v24, v23, *v24, *&v24[8]];
      free(v22);
      SSFileLog();
    }

    goto LABEL_27;
  }

  v16 = a3;
  v17 = SSError();
  v15 = 0;
LABEL_29:
  SSXPCDictionarySetObject();
  SSXPCDictionarySetObject();
}

void sub_1001F4118(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    v5 = a3;
    objc_opt_class();
    v6 = SSXPCDictionaryCopyObjectWithClass();
    objc_opt_class();
    v7 = SSXPCDictionaryCopyObjectWithClass();
    v8 = xpc_dictionary_get_BOOL(*(a1 + 32), "3");
    if (v6)
    {
      v9 = v8;
      v10 = +[SSLogConfig sharedDaemonConfig];
      v11 = v10;
      if (v7)
      {
        if (!v10)
        {
          v11 = +[SSLogConfig sharedConfig];
        }

        v12 = [v11 shouldLog];
        if ([v11 shouldLogToDisk])
        {
          v13 = v12 | 2;
        }

        else
        {
          v13 = v12;
        }

        v14 = [v11 OSLogObject];
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v13 &= 2u;
        }

        if (v13)
        {
          *v32 = 138543874;
          *&v32[4] = objc_opt_class();
          *&v32[12] = 2114;
          *&v32[14] = v6;
          *&v32[22] = 2112;
          v33 = v7;
          v15 = *&v32[4];
          LODWORD(v31) = 32;
          v16 = _os_log_send_and_compose_impl();

          if (!v16)
          {
LABEL_15:

            v11 = +[ISBiometricStore sharedInstance];
            v17 = [v11 fetchContextFromCacheWithToken:v6 evict:v9];
            v18 = [v17 challenge];
            v19 = [v17 signature];
            v20 = [v11 publicKeyDataForAccountIdentifier:v7 purpose:objc_msgSend(v17 error:{"isExtendedAction"), 0}];
            v21 = v20;
            if (v20)
            {
              [v20 bytes];
              [v21 length];
              v22 = ISCopyEncodedBase64();
            }

            else
            {
              v22 = 0;
            }

            goto LABEL_41;
          }

          v14 = [NSString stringWithCString:v16 encoding:4, v32, v31, *v32, *&v32[16], v33];
          free(v16);
          SSFileLog();
        }

        goto LABEL_15;
      }

      if (!v10)
      {
        v11 = +[SSLogConfig sharedConfig];
      }

      v28 = [v11 shouldLog];
      if ([v11 shouldLogToDisk])
      {
        v29 = v28 | 2;
      }

      else
      {
        v29 = v28;
      }

      v27 = [v11 OSLogObject];
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v29 &= 2u;
      }

      if (!v29)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v11 = +[SSLogConfig sharedDaemonConfig];
      if (!v11)
      {
        v11 = +[SSLogConfig sharedConfig];
      }

      v25 = [v11 shouldLog];
      if ([v11 shouldLogToDisk])
      {
        v26 = v25 | 2;
      }

      else
      {
        v26 = v25;
      }

      v27 = [v11 OSLogObject];
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v26 &= 2u;
      }

      if (!v26)
      {
        goto LABEL_37;
      }
    }

    *v32 = 138543362;
    *&v32[4] = objc_opt_class();
    v30 = *&v32[4];
    LODWORD(v31) = 12;
    v18 = _os_log_send_and_compose_impl();

    if (!v18)
    {
      v22 = 0;
      v19 = 0;
      goto LABEL_41;
    }

    v27 = [NSString stringWithCString:v18 encoding:4, v32, v31, *v32, *&v32[8]];
    free(v18);
    SSFileLog();
LABEL_37:

    v22 = 0;
    v19 = 0;
    v18 = 0;
LABEL_41:

    v24 = 0;
    goto LABEL_42;
  }

  v23 = a3;
  v24 = SSError();
  v22 = 0;
  v19 = 0;
  v18 = 0;
LABEL_42:
  SSXPCDictionarySetObject();
  SSXPCDictionarySetObject();
  SSXPCDictionarySetObject();
  SSXPCDictionarySetObject();
  SSXPCDictionarySetObject();
}

void sub_1001F472C(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = a3;
    v6 = xpc_dictionary_get_BOOL(v4, "1");
    v7 = objc_alloc_init(SSBiometricAuthenticationContext);
    v8 = +[ACAccountStore ams_sharedAccountStore];
    v9 = [v8 ams_activeiTunesAccount];
    v10 = [v9 ams_DSID];

    [v7 setAccountIdentifier:v10];
    [v7 setIsPayment:v6];
    [v7 setIsExtendedAction:v6 ^ 1];
    v11 = objc_alloc_init(DaemonBiometricKeychain);
    v16 = 0;
    v12 = [(DaemonBiometricKeychain *)v11 copyAccessControlListForPrivateKeyWithBiometricAuthenticationContext:v7 error:&v16];
    v13 = v16;
    if (v12)
    {
      v14 = [SecAccessControlGetConstraints() copy];
      CFRelease(v12);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v15 = a3;
    v13 = SSError();
    v14 = 0;
  }

  SSXPCDictionarySetObject();
  SSXPCDictionarySetObject();
}

void sub_1001F48C8(id a1, BOOL a2, OS_xpc_object *a3)
{
  v4 = a3;
  if (a2)
  {
    v5 = objc_alloc_init(SSBiometricAuthenticationContext);
    v6 = +[ACAccountStore ams_sharedAccountStore];
    v7 = [v6 ams_activeiTunesAccount];
    v8 = [v7 ams_DSID];

    [v5 setAccountIdentifier:v8];
    [v5 setIsPayment:1];
    v9 = objc_alloc_init(DaemonBiometricKeychain);
    v13 = 0;
    v10 = [(DaemonBiometricKeychain *)v9 copyAccessControlListForPrivateKeyWithBiometricAuthenticationContext:v5 error:&v13];
    v11 = v13;
    if (v10)
    {
      v12 = [AMSBiometrics ACLVersionForAccessControl:v10];
      CFRelease(v10);
    }

    else
    {
      v12 = 0;
    }

    SSXPCDictionarySetObject();
    SSXPCDictionarySetObject();
  }

  else
  {
    v11 = SSError();
  }
}

void sub_1001F4AA0(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = a3;
    v6 = objc_alloc_init(v4);
    v7 = [v6 identityMap];
    v8 = [v7 count];

    v11 = 0;
  }

  else
  {
    v9 = a3;
    v11 = SSError();
    v8 = 0;
  }

  v10 = [NSNumber numberWithUnsignedInteger:v8];
  SSXPCDictionarySetObject();

  SSXPCDictionarySetObject();
}

void sub_1001F4C40(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    v4 = a3;
    objc_opt_class();
    v5 = SSXPCDictionaryCopyObjectWithClass();
    if (v5)
    {
      v6 = objc_alloc_init(DaemonBiometricStore);
      v7 = [(DaemonBiometricStore *)v6 keyCountForAccountIdentifier:v5];

LABEL_17:
      v9 = 0;
      goto LABEL_18;
    }

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
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      LODWORD(v17) = 138543362;
      *(&v17 + 4) = objc_opt_class();
      v14 = *(&v17 + 4);
      LODWORD(v16) = 12;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
LABEL_16:

        v7 = 0;
        goto LABEL_17;
      }

      v13 = [NSString stringWithCString:v15 encoding:4, &v17, v16, v17];
      free(v15);
      SSFileLog();
    }

    goto LABEL_16;
  }

  v8 = a3;
  v9 = SSError();
  v7 = 0;
LABEL_18:
  xpc_dictionary_set_uint64(a3, "0", v7);
  SSXPCDictionarySetObject();
}

void sub_1001F4F04(uint64_t a1, char a2, void *a3)
{
  if ((a2 & 1) == 0)
  {
    v32 = a3;
    v31 = SSError();
    v12 = 5;
    goto LABEL_43;
  }

  v4 = *(a1 + 32);
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v6 biometricState];
  v8 = 5;
  v9 = v7 == 0;
  if (!v7)
  {
    v8 = 2;
  }

  if (v7 == 1)
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = v7 != 2 && v7 == 1;
  v11 = v7 != 2 && v9;
  if (v7 == 2)
  {
    v12 = 1;
  }

  else
  {
    v12 = v8;
  }

  v13 = +[SSLogConfig sharedDaemonConfig];
  if (!v13)
  {
    v13 = +[SSLogConfig sharedConfig];
  }

  v14 = [v13 shouldLog];
  if ([v13 shouldLogToDisk])
  {
    v15 = v14 | 2;
  }

  else
  {
    v15 = v14;
  }

  v16 = [v13 OSLogObject];
  if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v15 &= 2u;
  }

  if (!v15)
  {
    goto LABEL_25;
  }

  v17 = v6;
  v18 = objc_opt_class();
  v35 = v10;
  v19 = v11;
  v20 = v18;
  v21 = [NSNumber numberWithInteger:v12];
  v36 = 138543618;
  v37 = v18;
  v6 = v17;
  v38 = 2114;
  v39 = v21;
  LODWORD(v34) = 22;
  v33 = &v36;
  v22 = _os_log_send_and_compose_impl();

  v10 = v35;
  v11 = v19;

  if (v22)
  {
    v16 = [NSString stringWithCString:v22 encoding:4, &v36, v34];
    free(v22);
    v33 = v16;
    SSFileLog();
LABEL_25:
  }

  if (!v10 && !v11 || ([v6 canPerformBiometricOptIn] & 1) != 0)
  {
    goto LABEL_41;
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
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = v25;
  }

  else
  {
    v27 = v25 & 2;
  }

  if (!v27)
  {
    goto LABEL_39;
  }

  v28 = objc_opt_class();
  v36 = 138543362;
  v37 = v28;
  v29 = v28;
  LODWORD(v34) = 12;
  v30 = _os_log_send_and_compose_impl();

  if (v30)
  {
    v26 = [NSString stringWithCString:v30 encoding:4, &v36, v34];
    free(v30);
    SSFileLog();
LABEL_39:
  }

  v12 = 5;
LABEL_41:

  v31 = 0;
LABEL_43:
  xpc_dictionary_set_int64(a3, "0", v12);
  SSXPCDictionarySetObject();
}

void sub_1001F5394(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    v4 = *(a1 + 40);
    v5 = a3;
    v6 = objc_alloc_init(v4);
    objc_opt_class();
    v7 = SSXPCDictionaryCopyObjectWithClass();
    v8 = [v6 isIdentityMapValidForAccountIdentifier:v7];

    v10 = 0;
  }

  else
  {
    v9 = a3;
    v10 = SSError();
    v8 = 0;
  }

  xpc_dictionary_set_BOOL(a3, "0", v8);
  SSXPCDictionarySetObject();
}

void sub_1001F5560(uint64_t a1, BOOL a2, void *a3)
{
  if (a2)
  {
    v6 = a3;
    objc_opt_class();
    v7 = SSXPCDictionaryCopyObjectWithClass();
    [*(a1 + 48) _resetAccount:v7 withConnection:*(a1 + 40)];

    v9 = 0;
  }

  else
  {
    v8 = a3;
    v9 = SSError();
  }

  xpc_dictionary_set_BOOL(a3, "0", a2);
  SSXPCDictionarySetObject();
}

void sub_1001F5700(uint64_t a1, BOOL a2, void *a3)
{
  if (a2)
  {
    v6 = a3;
    v7 = +[SSAccountStore defaultStore];
    v8 = [v7 activeAccount];

    v9 = *(a1 + 40);
    v10 = [v8 uniqueIdentifier];
    [v9 _resetAccount:v10 withConnection:*(a1 + 32)];

    v12 = 0;
  }

  else
  {
    v11 = a3;
    v12 = SSError();
  }

  xpc_dictionary_set_BOOL(a3, "0", a2);
  SSXPCDictionarySetObject();
}

void sub_1001F58B8(uint64_t a1, BOOL a2, void *a3)
{
  if (a2)
  {
    v6 = a3;
    objc_opt_class();
    v7 = SSXPCDictionaryCopyObjectWithClass();
    v8 = objc_alloc_init(*(a1 + 40));
    v9 = [v8 identityMap];
    [v8 saveIdentityMap:v9 forAccountIdentifier:v7];

    v11 = 0;
  }

  else
  {
    v10 = a3;
    v11 = SSError();
  }

  xpc_dictionary_set_BOOL(a3, "0", a2);
  SSXPCDictionarySetObject();
}

void sub_1001F59E0(id a1, BOOL a2, OS_xpc_object *a3)
{
  v3 = a3;
  v4 = SSError();
  xpc_dictionary_set_BOOL(v3, "0", 0);
  SSXPCDictionarySetObject();
}

void sub_1001F5B6C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_1001F6090;
  v34 = sub_1001F60A0;
  v35 = 0;
  if (a2)
  {
    v6 = objc_alloc_init(*(a1 + 48));
    v7 = SSXPCConnectionCopyClientIdentifier();
    if (xpc_dictionary_get_BOOL(*(a1 + 40), "1"))
    {
      v8 = +[SSLogConfig sharedDaemonConfig];
      if (!v8)
      {
        v8 = +[SSLogConfig sharedConfig];
      }

      v9 = [v8 shouldLog];
      v10 = [v8 shouldLogToDisk];
      v11 = [v8 OSLogObject];
      v12 = v11;
      if (v10)
      {
        v9 |= 2u;
      }

      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v9 &= 2u;
      }

      if (v9)
      {
        v13 = objc_opt_class();
        v40 = 138543618;
        v41 = v13;
        v42 = 2114;
        v43 = v7;
        v14 = v13;
        LODWORD(v28) = 22;
        v27 = &v40;
        v15 = _os_log_send_and_compose_impl();

        if (!v15)
        {
LABEL_13:

          v16 = objc_alloc_init(DaemonBiometricOptInOperation);
          if ([v7 isEqualToString:@"com.apple.purplebuddy"])
          {
            [(DaemonBiometricOptInOperation *)v16 setRequiresStoreAuthentication:0];
          }

          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_1001F60A8;
          v29[3] = &unk_10032C140;
          v29[4] = &v36;
          v29[5] = &v30;
          [(DaemonBiometricOptInOperation *)v16 setResultBlock:v29, v27];
          v17 = +[StoreServicesRequestQueue sharedInstance];
          [v17 addOperation:v16];

          [(DaemonBiometricOptInOperation *)v16 waitUntilFinished];
          goto LABEL_28;
        }

        v12 = [NSString stringWithCString:v15 encoding:4, &v40, v28];
        free(v15);
        v27 = v12;
        SSFileLog();
      }

      goto LABEL_13;
    }

    v19 = +[SSLogConfig sharedDaemonConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    v20 = [v19 shouldLog];
    v21 = [v19 shouldLogToDisk];
    v22 = [v19 OSLogObject];
    v23 = v22;
    if (v21)
    {
      v20 |= 2u;
    }

    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v24 = objc_opt_class();
      v40 = 138543618;
      v41 = v24;
      v42 = 2114;
      v43 = v7;
      v25 = v24;
      LODWORD(v28) = 22;
      v26 = _os_log_send_and_compose_impl();

      if (!v26)
      {
LABEL_27:

        [v6 setBiometricState:1];
        *(v37 + 24) = 1;
LABEL_28:

        goto LABEL_29;
      }

      v23 = [NSString stringWithCString:v26 encoding:4, &v40, v28];
      free(v26);
      SSFileLog();
    }

    goto LABEL_27;
  }

  v18 = SSError();
  v6 = v31[5];
  v31[5] = v18;
LABEL_29:

  xpc_dictionary_set_BOOL(v5, "0", *(v37 + 24));
  SSXPCDictionarySetObject();
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);
}

void sub_1001F6030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001F6090(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1001F60A8(uint64_t a1, char a2, void *a3)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  v4 = [a3 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return _objc_release_x1(v4, v6);
}

void sub_1001F61DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1001F61F8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2)
  {
    objc_opt_class();
    v6 = SSXPCDictionaryCopyObjectWithClass();
    [objc_opt_class() tokenUpdateDidFinishWithLogKey:v6];

    v7 = 0;
  }

  else
  {
    v7 = SSError();
  }

  SSXPCDictionarySetObject();
}

void sub_1001F63BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1001F63D8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2)
  {
    objc_opt_class();
    v6 = SSXPCDictionaryCopyObjectWithClass();
    v7 = [objc_opt_class() tokenUpdateShouldStartWithLogKey:v6];

    v8 = 0;
  }

  else
  {
    v8 = SSError();
    v7 = 1;
  }

  xpc_dictionary_set_BOOL(v5, "0", v7);
  SSXPCDictionarySetObject();
}

void sub_1001F65A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001F65C0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2)
  {
    v6 = [objc_opt_class() tokenUpdateState];
    v7 = 0;
  }

  else
  {
    v7 = SSError();
    v6 = 0;
  }

  xpc_dictionary_set_int64(v5, "0", v6);
  SSXPCDictionarySetObject();
}

void sub_1001F678C(uint64_t a1)
{
  if ((SSXPCConnectionHasEntitlement() & 1) == 0 && (SSXPCConnectionHasEntitlement() & 1) == 0)
  {
    v2 = +[SSLogConfig sharedDaemonConfig];
    if (!v2)
    {
      v2 = +[SSLogConfig sharedConfig];
    }

    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      v4 = v3 | 2;
    }

    else
    {
      v4 = v3;
    }

    v5 = [v2 OSLogObject];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v4 &= 2u;
    }

    if (v4)
    {
      LODWORD(v10) = 138543362;
      *(&v10 + 4) = objc_opt_class();
      v6 = *(&v10 + 4);
      LODWORD(v9) = 12;
      v7 = _os_log_send_and_compose_impl();

      if (!v7)
      {
LABEL_15:

        goto LABEL_16;
      }

      v5 = [NSString stringWithCString:v7 encoding:4, &v10, v9, v10];
      free(v7);
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_16:
  reply = xpc_dictionary_create_reply(*(a1 + 40));
  (*(*(a1 + 48) + 16))();
  xpc_connection_send_message(*(a1 + 32), reply);
}

void sub_1001F6DF0(id a1)
{
  v1 = dispatch_queue_create("com.apple.itunesstored.DaemonBiometricStore.updateToken", 0);
  v2 = qword_100384108;
  qword_100384108 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001F70B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001F70C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001F70E0(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 objectForKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = dispatch_semaphore_create(0);
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [v9 setObject:*(*(*(a1 + 40) + 8) + 40) forKey:*(a1 + 32)];
  }
}

void sub_1001F727C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001F7294(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 objectForKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    [v9 removeObjectForKey:*(a1 + 32)];
  }

  else
  {
    v6 = dispatch_semaphore_create(0);
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [v9 setObject:*(*(*(a1 + 40) + 8) + 40) forKey:*(a1 + 32)];
  }
}

void sub_1001F76F4(id a1)
{
  v1 = dispatch_queue_create("com.apple.itunesstored.DelayedGotoSemaphore", 0);
  v2 = qword_100384118;
  qword_100384118 = v1;

  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = qword_100384120;
  qword_100384120 = v3;

  _objc_release_x1(v3, v4);
}

uint64_t sub_1001F7A68(uint64_t a1)
{
  if ((a1 - 1) >= 5)
  {
    return 0;
  }

  else
  {
    return 6 - a1;
  }
}

uint64_t sub_1001F80E0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ([result isEqualToString:SSDownloadPhaseWaiting])
    {
      return 0;
    }

    else if ([v1 isEqualToString:SSDownloadPhaseCanceled])
    {
      return 1;
    }

    else if ([v1 isEqualToString:SSDownloadPhaseFailed])
    {
      return 2;
    }

    else if ([v1 isEqualToString:SSDownloadPhaseFinished])
    {
      return 3;
    }

    else if ([v1 isEqualToString:SSDownloadPhasePaused])
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  return result;
}

void sub_1001F81E8(id a1)
{
  v1 = objc_alloc_init(RestoreManager);
  v2 = qword_100384130;
  qword_100384130 = v1;

  _objc_release_x1(v1, v2);
}

BOOL sub_1001F8580(id a1, DownloadsTransaction *a2)
{
  v2 = a2;
  v3 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_restore" equalToValue:&__kCFBooleanTrue];
  v26[0] = v3;
  v25[0] = SSDownloadPhaseWaiting;
  v25[1] = SSDownloadPhaseDownloading;
  v4 = [NSArray arrayWithObjects:v25 count:2];
  v5 = [SSSQLiteContainsPredicate containsPredicateWithProperty:@"IFNULL(download_state.phase values:SSDownloadPhaseWaiting)", v4];
  v26[1] = v5;
  v6 = [NSArray arrayWithObjects:v26 count:2];
  v7 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v6];

  v8 = [(DownloadsSession *)v2 database];
  v9 = [DownloadEntity queryWithDatabase:v8 predicate:v7];

  v10 = [v9 copyEntityIdentifiers];
  if (![v10 count])
  {
    v18 = 0;
    goto LABEL_15;
  }

  v11 = +[SSLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  v12 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v13 = v12 | 2;
  }

  else
  {
    v13 = v12;
  }

  v14 = [v11 OSLogObject];
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v13 &= 2u;
  }

  if (!v13)
  {
    goto LABEL_12;
  }

  v15 = [v10 count];
  v16 = [v10 array];
  [v16 componentsJoinedByString:{@", "}];
  v21 = 134218242;
  v22 = v15;
  v24 = v23 = 2114;
  LODWORD(v20) = 22;
  v17 = _os_log_send_and_compose_impl();

  if (v17)
  {
    v14 = [NSString stringWithCString:v17 encoding:4, &v21, v20];
    free(v17);
    SSFileLog();
LABEL_12:
  }

  v18 = [(DownloadsTransaction *)v2 restartDownloadsWithIdentifiers:v10];
LABEL_15:

  return v18;
}

void sub_1001F8950(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F8A1C;
  block[3] = &unk_1003281A0;
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void sub_1001F8A1C(void *a1)
{
  if (a1[4])
  {
    v2 = +[SSLogConfig sharedDaemonConfig];
    if (!v2)
    {
      v2 = +[SSLogConfig sharedConfig];
    }

    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      v4 = v3 | 2;
    }

    else
    {
      v4 = v3;
    }

    v5 = [v2 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v4;
    }

    else
    {
      v6 = v4 & 2;
    }

    if (v6)
    {
      v7 = a1[4];
      v12 = 138543362;
      v13 = v7;
      LODWORD(v11) = 12;
      v8 = _os_log_send_and_compose_impl();

      if (!v8)
      {
LABEL_14:

        return;
      }

      v5 = [NSString stringWithCString:v8 encoding:4, &v12, v11];
      free(v8);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v10 = a1[5];
  v9 = a1[6];
  if (!*(v10 + 8))
  {
    if (!v9)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (!v9)
  {
LABEL_17:
    +[RestoreManager _applyRestoreCellularAccess];
    v10 = a1[5];
    v9 = a1[6];
  }

LABEL_18:
  objc_storeStrong((v10 + 8), v9);
}

id sub_1001F8FE0(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v4;
  }

  else
  {
    v6 = v4 & 2;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v10[0] = 0;
  LODWORD(v9) = 2;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    v5 = [NSString stringWithCString:v7 encoding:4, v10, v9];
    free(v7);
    SSFileLog();
LABEL_12:
  }

  return [*(a1 + 32) _queue_fetchRestoreCellularAccess];
}

intptr_t sub_1001FA134(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setSuccess:a2];
  [*(a1 + 32) setError:v6];

  v7 = *(a1 + 40);

  return dispatch_semaphore_signal(v7);
}

void sub_1001FA96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FA994(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001FA9AC(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_1001FBA18(void *a1)
{
  v1 = a1;
  v2 = [LSApplicationProxy applicationProxyForIdentifier:v1];
  v3 = [v2 shortVersionString];
  if (v3 || ([v2 bundleVersion], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
  }

  else
  {
    v8 = [LSBundleProxy bundleProxyForIdentifier:v1];
    v9 = [v8 bundleVersion];

    if (v9)
    {
      v4 = v9;
    }

    else
    {
      v4 = @"1.0";
    }
  }

  v5 = +[SSDevice currentDevice];
  v6 = [v5 userAgentWithBundleIdentifier:v1 version:v4];

  return v6;
}

void sub_1001FC6AC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1001FC5F4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001FCBEC(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 32) addObject:v3];
    v4 = v6;
  }

  return _objc_release_x1(v3, v4);
}

void sub_1001FE054(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [*(a1 + 32) _newSoftwareLibraryItemWithApplicationRecord:v5];
  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }

  objc_autoreleasePoolPop(v3);
}

id sub_1001FE910(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 componentsSeparatedByString:@"$$"];
  v6 = [v5 count];
  if (v6 < 2)
  {
    v10 = v4;
  }

  else
  {
    v7 = 0;
    v8 = v6 - 1;
    do
    {
      v9 = [v5 objectAtIndex:v7];
      v10 = [v4 objectForKey:v9];
      if (!v10)
      {
        v10 = +[NSMutableDictionary dictionary];
        [v4 setObject:v10 forKey:v9];
      }

      ++v7;
      v4 = v10;
    }

    while (v8 != v7);
  }

  v11 = [a3 isEqual:{+[NSNull null](NSNull, "null")}];
  v12 = [v5 lastObject];
  if (v11)
  {

    return [v10 removeObjectForKey:v12];
  }

  else
  {

    return [v10 setObject:a3 forKey:v12];
  }
}

void sub_100201218(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 OSLogObject];
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v8 &= 2u;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  *v13 = 138543874;
  *&v13[4] = objc_opt_class();
  *&v13[12] = 2112;
  *&v13[14] = v4;
  *&v13[22] = 2112;
  v14 = v5;
  v10 = *&v13[4];
  LODWORD(v12) = 32;
  v11 = _os_log_send_and_compose_impl();

  if (v11)
  {
    v9 = [NSString stringWithCString:v11 encoding:4, v13, v12, *v13, *&v13[16], v14];
    free(v11);
    SSFileLog();
LABEL_11:
  }
}

void sub_1002013D0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 OSLogObject];
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v8 &= 2u;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  *v13 = 138543874;
  *&v13[4] = objc_opt_class();
  *&v13[12] = 2112;
  *&v13[14] = v4;
  *&v13[22] = 2112;
  v14 = v5;
  v10 = *&v13[4];
  LODWORD(v12) = 32;
  v11 = _os_log_send_and_compose_impl();

  if (v11)
  {
    v9 = [NSString stringWithCString:v11 encoding:4, v13, v12, *v13, *&v13[16], v14];
    free(v11);
    SSFileLog();
LABEL_11:
  }
}

void sub_100201588(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 OSLogObject];
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v8 &= 2u;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  *v13 = 138543874;
  *&v13[4] = objc_opt_class();
  *&v13[12] = 2112;
  *&v13[14] = v4;
  *&v13[22] = 2112;
  v14 = v5;
  v10 = *&v13[4];
  LODWORD(v12) = 32;
  v11 = _os_log_send_and_compose_impl();

  if (v11)
  {
    v9 = [NSString stringWithCString:v11 encoding:4, v13, v12, *v13, *&v13[16], v14];
    free(v11);
    SSFileLog();
LABEL_11:
  }
}

void sub_100201F00(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 OSLogObject];
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v8 &= 2u;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  *v13 = 138543874;
  *&v13[4] = objc_opt_class();
  *&v13[12] = 2112;
  *&v13[14] = v4;
  *&v13[22] = 2112;
  v14 = v5;
  v10 = *&v13[4];
  LODWORD(v12) = 32;
  v11 = _os_log_send_and_compose_impl();

  if (v11)
  {
    v9 = [NSString stringWithCString:v11 encoding:4, v13, v12, *v13, *&v13[16], v14];
    free(v11);
    SSFileLog();
LABEL_11:
  }
}

void sub_1002024D8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = +[SSLogConfig sharedDaemonConfig];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v7 &= 2u;
    }

    if (!v7)
    {
      goto LABEL_22;
    }

    *v14 = 138543618;
    *&v14[4] = objc_opt_class();
    *&v14[12] = 2112;
    *&v14[14] = v3;
    v9 = *&v14[4];
    LODWORD(v13) = 22;
  }

  else
  {
    if (!v4)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v10 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    v8 = [v5 OSLogObject];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 &= 2u;
    }

    if (!v11)
    {
      goto LABEL_22;
    }

    *v14 = 138543362;
    *&v14[4] = objc_opt_class();
    v9 = *&v14[4];
    LODWORD(v13) = 12;
  }

  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    v8 = [NSString stringWithCString:v12 encoding:4, v14, v13, *v14];
    free(v12);
    SSFileLog();
LABEL_22:
  }
}

uint64_t DaemonPBFusePreferencesReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((*&v12 & 0x7FFF8) == 8)
      {
        v13 = objc_alloc_init(DaemonPBFuseItemPreference);
        [a1 addPreferences:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !DaemonPBFuseItemPreferenceReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_100207A38()
{
  result = objc_alloc_init(objc_opt_class());
  qword_100384138 = result;
  return result;
}

void sub_100207B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_100207BB4(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = a2;
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

uint64_t sub_100207C8C()
{
  if (SSXPCConnectionHasEntitlement())
  {
    return 1;
  }

  return SSXPCConnectionHasEntitlement();
}

void sub_100207F24(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  objc_opt_class();
  v3 = SSXPCDictionaryCopyCFObjectWithClass();
  if (v3)
  {
    v4 = v3;
    value = xpc_dictionary_get_value(*(a1 + 32), "2");
    if (value)
    {
      v6 = value;
      if (xpc_get_type(value) == &_xpc_type_array)
      {
        v7 = *(*(a1 + 40) + 16);
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_100208040;
        v8[3] = &unk_10032C418;
        v8[4] = v6;
        v8[5] = v4;
        v8[6] = v2;
        [v7 readUsingSessionBlock:v8];
      }
    }
  }

  SSXPCDictionarySetCFObject();
}

BOOL sub_100208040(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_1002080BC;
  applier[3] = &unk_10032C3F0;
  applier[4] = a2;
  v5 = *(a1 + 40);
  return xpc_array_apply(v2, applier);
}

uint64_t sub_1002080BC(uint64_t a1, int a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_string)
  {
    v4 = SSXPCCreateCFObjectFromXPCObject();
    v5 = [*(a1 + 32) copyDataForDomain:*(a1 + 40) key:v4];
    if (v5)
    {
      v6 = v5;
      [*(a1 + 48) setObject:v5 forKey:v4];
    }
  }

  return 1;
}

id sub_1002081F8(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  xpc_release(*(a1 + 32));
  xpc_release(*(a1 + 40));
  v2 = +[Daemon daemon];

  return [v2 releaseKeepAliveAssertion:@"com.apple.itunesstored.KeyValueStore"];
}

id sub_100208318(uint64_t a1)
{
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, reply);
  }

  xpc_connection_send_message(*(a1 + 40), reply);
  xpc_release(reply);
  xpc_release(*(a1 + 32));
  xpc_release(*(a1 + 40));
  v4 = +[Daemon daemon];

  return [v4 releaseKeepAliveAssertion:@"com.apple.itunesstored.KeyValueStore"];
}

void sub_100208414(uint64_t a1)
{
  if (sub_100207C8C())
  {
    objc_opt_class();
    v2 = SSXPCDictionaryCopyCFObjectWithClass();
    [*(*(a1 + 48) + 16) removeAccountFromDomain:v2];
  }
}

void sub_100208510(uint64_t a1, void *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (sub_100207C8C())
  {
    v4 = dispatch_semaphore_create(0);
    v5 = *(*(a1 + 40) + 16);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100208624;
    v6[3] = &unk_10032C468;
    v6[4] = v4;
    v6[5] = &v7;
    [v5 removeAllValuesWithCompletionBlock:v6];
    dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v4);
  }

  xpc_dictionary_set_BOOL(a2, "0", *(v8 + 24));
  _Block_object_dispose(&v7, 8);
}

void sub_100208608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002086A8(uint64_t a1, void *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (sub_100207C8C())
  {
    objc_opt_class();
    v4 = SSXPCDictionaryCopyCFObjectWithClass();
    if (v4)
    {
      v5 = dispatch_semaphore_create(0);
      v6 = *(*(a1 + 48) + 16);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1002087F4;
      v7[3] = &unk_10032C468;
      v7[4] = v5;
      v7[5] = &v8;
      [v6 removeAllValuesForDomain:v4 completionBlock:v7];
      dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v5);
    }
  }

  xpc_dictionary_set_BOOL(a2, "0", *(v9 + 24));
  _Block_object_dispose(&v8, 8);
}

void sub_1002087D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100208878(uint64_t a1, void *a2)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  if (sub_100207C8C())
  {
    objc_opt_class();
    v4 = SSXPCDictionaryCopyCFObjectWithClass();
    if (v4)
    {
      value = xpc_dictionary_get_value(*(a1 + 40), "2");
      v6 = value;
      if (value)
      {
        if (xpc_get_type(value) == &_xpc_type_dictionary)
        {
          v7 = *(*(a1 + 48) + 16);
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_100208B60;
          v18[3] = &unk_10032C4B8;
          v18[5] = v4;
          v18[6] = &v19;
          v18[4] = v6;
          [v7 modifyUsingTransactionBlock:v18];
          if (*(v20 + 24) == 1 && xpc_array_get_count(v6) >= 2 && [v4 isEqualToString:kSSLockdownDomainITunesStoreDaemon])
          {
            v8 = +[SSLogConfig sharedDaemonConfig];
            if (!v8)
            {
              v8 = +[SSLogConfig sharedConfig];
            }

            v9 = [v8 shouldLog];
            v10 = [v8 shouldLogToDisk];
            v11 = [v8 OSLogObject];
            if (v10)
            {
              v9 |= 2u;
            }

            if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              v9 &= 2u;
            }

            if (v9)
            {
              v12 = objc_opt_class();
              v23 = 138412290;
              v24 = v12;
              LODWORD(v17) = 12;
              v16 = &v23;
              v13 = _os_log_send_and_compose_impl();
              if (v13)
              {
                v14 = v13;
                v15 = [NSString stringWithCString:v13 encoding:4, &v23, v17];
                free(v14);
                v16 = v15;
                SSFileLog();
              }
            }

            [+[SSAccountStore defaultStore](SSAccountStore defaultStore];
          }
        }
      }
    }
  }

  xpc_dictionary_set_BOOL(a2, "0", *(v20 + 24));
  _Block_object_dispose(&v19, 8);
}

void sub_100208B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100208B60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_100208BF0;
  applier[3] = &unk_10032C490;
  applier[4] = a2;
  v6 = *(a1 + 40);
  xpc_dictionary_apply(v3, applier);
  return *(*(*(a1 + 48) + 8) + 24);
}

uint64_t sub_100208BF0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [[NSString alloc] initWithUTF8String:a2];
  type = xpc_get_type(a3);
  if (type == &_xpc_type_null)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) setData:0 forDomain:*(a1 + 40) key:v5];
  }

  else if (type == &_xpc_type_data)
  {
    v7 = SSXPCCreateCFObjectFromXPCObject();
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) setData:v7 forDomain:*(a1 + 40) key:v5];
  }

  return *(*(*(a1 + 48) + 8) + 24);
}

void sub_10020926C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100209284(uint64_t a1)
{
  result = [objc_msgSend(qword_100384150 objectForKeyedSubscript:{objc_msgSend(*(a1 + 32), "bundleIdentifier")), "timeIntervalSinceNow"}];
  if (v3 <= 0.0)
  {
    v4 = qword_100384150;
    v5 = [*(a1 + 32) bundleIdentifier];

    return [v4 setObject:0 forKeyedSubscript:v5];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void sub_10020A328(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SSSQLiteComparisonPredicate predicateWithProperty:@"wake_up_on_finish" equalToLongLong:1];
  v5 = [v3 database];

  v6 = [PersistentDownloadManagerEntity queryWithDatabase:v5 predicate:v4];

  v9 = @"client_id";
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10020A488;
  v7[3] = &unk_100327958;
  v8 = *(a1 + 32);
  [v6 enumeratePersistentIDsAndProperties:&v9 count:1 usingBlock:v7];
}

void sub_10020A488(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    v5 = [[NSNumber alloc] initWithLongLong:a2];
    [*(a1 + 32) setObject:v5 forKey:*a3];
  }
}

void sub_10020A508(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [LSApplicationProxy applicationProxyForIdentifier:a2];
  if (!v5)
  {
    [*(a1 + 32) addObject:v6];
  }
}

uint64_t sub_10020A57C(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (![v3 deletePersistentDownloadManagerWithID:{objc_msgSend(*(*(&v11 + 1) + 8 * v8), "longLongValue", v11)}])
        {
          v9 = 0;
          goto LABEL_11;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

uint64_t sub_10020A888(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [NSDate dateWithTimeIntervalSinceNow:-900.0];
  [v3 timeIntervalSince1970];
  v5 = v4;

  v6 = [NSNumber numberWithDouble:v5];
  v7 = [SSSQLiteComparisonPredicate predicateWithProperty:@"timestamp" value:v6 comparisonType:4];

  v8 = [SSSQLiteComparisonPredicate predicateWithProperty:@"kind" equalToValue:SSDownloadKindSoftwareApplication];
  [SSSQLiteComparisonPredicate predicateWithProperty:@"is_purchase" equalToValue:&__kCFBooleanFalse];
  v32 = v8;
  v33 = v7;
  v45[0] = v7;
  v31 = v45[1] = v8;
  v45[2] = v31;
  v9 = [NSArray arrayWithObjects:v45 count:3];
  v10 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v9];

  v34 = v2;
  v11 = [v2 database];
  v12 = [DownloadEntity queryWithDatabase:v11 predicate:v10];

  v30 = v12;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [v12 copyEntityIdentifiers];
  v13 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v37;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v36 + 1) + 8 * i);
        v18 = [SSLogConfig sharedDaemonConfig:v28];
        if (!v18)
        {
          v18 = +[SSLogConfig sharedConfig];
        }

        v19 = [v18 shouldLog];
        if ([v18 shouldLogToDisk])
        {
          v20 = v19 | 2;
        }

        else
        {
          v20 = v19;
        }

        v21 = [v18 OSLogObject];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = v20;
        }

        else
        {
          v22 = v20 & 2;
        }

        if (v22)
        {
          v23 = objc_opt_class();
          v24 = v23;
          v25 = [v17 longLongValue];
          v40 = 138412546;
          v41 = v23;
          v42 = 2048;
          v43 = v25;
          LODWORD(v29) = 22;
          v28 = &v40;
          v26 = _os_log_send_and_compose_impl();

          if (!v26)
          {
            goto LABEL_18;
          }

          v21 = [NSString stringWithCString:v26 encoding:4, &v40, v29];
          free(v26);
          v28 = v21;
          SSFileLog();
        }

LABEL_18:
      }

      v14 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v14);
  }

  [v30 deleteAllEntities];
  return 1;
}

void sub_10020B3B4(uint64_t a1, void *a2)
{
  v3 = [a2 database];
  v4 = [DownloadEntity queryWithDatabase:v3 predicate:0];

  v13 = @"download_state.phase";
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10020B510;
  v10[3] = &unk_1003285F8;
  *&v5 = *(a1 + 32);
  *(&v5 + 1) = *(a1 + 40);
  v9 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  [v4 enumeratePersistentIDsAndProperties:&v13 count:1 usingBlock:v10];
}

void sub_10020B510(uint64_t a1, uint64_t a2, id *a3, uint64_t a4, BOOL *a5)
{
  v8 = *a3;
  if (v8)
  {
    v9 = [NSNumber numberWithLongLong:a2];
    if (([v8 isEqualToString:SSDownloadPhaseCanceled] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", SSDownloadPhaseFinished))
    {
      v10 = [NSNumber numberWithLongLong:a2];
      if (![*(a1 + 32) containsObject:v10])
      {
LABEL_54:

        goto LABEL_55;
      }

      v11 = +[SSLogConfig sharedDaemonConfig];
      if (!v11)
      {
        v11 = +[SSLogConfig sharedConfig];
      }

      v12 = [v11 shouldLog];
      if ([v11 shouldLogToDisk])
      {
        v13 = v12 | 2;
      }

      else
      {
        v13 = v12;
      }

      v14 = [v11 OSLogObject];
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v13 &= 2u;
      }

      if (v13)
      {
        v41 = 138412802;
        v42 = objc_opt_class();
        v43 = 2048;
        v44 = a2;
        v45 = 2112;
        v46 = v8;
        v15 = v42;
        LODWORD(v37) = 32;
        v36 = &v41;
        v16 = _os_log_send_and_compose_impl();

        if (!v16)
        {
LABEL_16:

          goto LABEL_54;
        }

        v14 = [NSString stringWithCString:v16 encoding:4, &v41, v37];
        free(v16);
        v36 = v14;
        SSFileLog();
      }

      goto LABEL_16;
    }

    if (![v8 isEqualToString:SSDownloadPhaseFailed])
    {
      if (![*(a1 + 32) containsObject:v9])
      {
LABEL_55:

        goto LABEL_56;
      }

      [*(a1 + 32) removeObject:v9];
      v10 = +[SSLogConfig sharedDaemonConfig];
      if (!v10)
      {
        v10 = +[SSLogConfig sharedConfig];
      }

      v26 = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        v27 = v26 | 2;
      }

      else
      {
        v27 = v26;
      }

      v11 = [v10 OSLogObject];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v27 &= 2u;
      }

      if (v27)
      {
        v41 = 138412802;
        v42 = objc_opt_class();
        v43 = 2048;
        v44 = a2;
        v45 = 2112;
        v46 = v8;
        v28 = v42;
        LODWORD(v37) = 32;
        v36 = &v41;
        v29 = _os_log_send_and_compose_impl();

        if (!v29)
        {
          goto LABEL_54;
        }

        v11 = [NSString stringWithCString:v29 encoding:4, &v41, v37];
        free(v29);
        v36 = v11;
        SSFileLog();
      }

      goto LABEL_16;
    }

    v17 = *(a1 + 48);
    v18 = [v9 stringValue];
    v10 = [v17 stringByAppendingPathComponent:v18];

    v19 = [*(a1 + 56) attributesOfItemAtPath:v10 error:0];
    if (!v19)
    {
LABEL_53:

      goto LABEL_54;
    }

    v39 = v19;
    v40 = [v19 objectForKey:NSFileModificationDate];
    [v40 timeIntervalSinceNow];
    if (v20 >= -1814400.0)
    {
      [*(a1 + 32) removeObject:v9];
      v21 = +[SSLogConfig sharedDaemonConfig];
      if (!v21)
      {
        v21 = +[SSLogConfig sharedConfig];
      }

      v30 = [v21 shouldLog];
      if ([v21 shouldLogToDisk])
      {
        v30 |= 2u;
      }

      v24 = [v21 OSLogObject];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v31 = v30;
      }

      else
      {
        v31 = v30 & 2;
      }

      if (v31)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v21 = +[SSLogConfig sharedDaemonConfig];
      if (!v21)
      {
        v21 = +[SSLogConfig sharedConfig];
      }

      v22 = [v21 shouldLog];
      if ([v21 shouldLogToDisk])
      {
        v23 = v22 | 2;
      }

      else
      {
        v23 = v22;
      }

      v24 = [v21 OSLogObject];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = v23;
      }

      else
      {
        v25 = v23 & 2;
      }

      if (v25)
      {
LABEL_49:
        v32 = objc_opt_class();
        v38 = v32;
        [v40 timeIntervalSinceNow];
        v41 = 138413058;
        v42 = v32;
        v43 = 2048;
        v44 = a2;
        v45 = 2112;
        v46 = v8;
        v47 = 2048;
        v48 = -v33;
        LODWORD(v37) = 42;
        v36 = &v41;
        v34 = _os_log_send_and_compose_impl();

        if (v34)
        {
          v35 = [NSString stringWithCString:v34 encoding:4, &v41, v37];
          free(v34);
          v36 = v35;
          SSFileLog();
        }

        goto LABEL_52;
      }
    }

LABEL_52:
    v19 = v39;
    goto LABEL_53;
  }

LABEL_56:
  *a5 = [*(a1 + 32) count] == 0;
}

void sub_10020C6D4(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[SSLogConfig sharedDaemonConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    v6 = [v3 OSLogObject];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v5 &= 2u;
    }

    if (v5)
    {
      *v10 = 138412546;
      *&v10[4] = objc_opt_class();
      *&v10[12] = 2112;
      *&v10[14] = v2;
      v7 = *&v10[4];
      LODWORD(v9) = 22;
      v8 = _os_log_send_and_compose_impl();

      if (!v8)
      {
LABEL_13:

        goto LABEL_14;
      }

      v6 = [NSString stringWithCString:v8 encoding:4, v10, v9, *v10, *&v10[16]];
      free(v8);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
}

void sub_10020C870(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[SSLogConfig sharedDaemonConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    v6 = [v3 OSLogObject];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v5 &= 2u;
    }

    if (v5)
    {
      *v10 = 138412546;
      *&v10[4] = objc_opt_class();
      *&v10[12] = 2112;
      *&v10[14] = v2;
      v7 = *&v10[4];
      LODWORD(v9) = 22;
      v8 = _os_log_send_and_compose_impl();

      if (!v8)
      {
LABEL_13:

        goto LABEL_14;
      }

      v6 = [NSString stringWithCString:v8 encoding:4, v10, v9, *v10, *&v10[16]];
      free(v8);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
}

id sub_10020D0F8()
{
  result = objc_alloc_init(objc_opt_class());
  qword_100384158 = result;
  return result;
}

void sub_10020D198(uint64_t a1)
{
  v2 = [*(a1 + 32) valueForSessionProperty:SSErrorSessionPropertyFailureType];
  if (v2 && (v3 = v2, v26 = 0u, v27 = 0u, v24 = 0u, v25 = 0u, v4 = *(*(a1 + 40) + 8), (v5 = [v4 countByEnumeratingWithState:&v24 objects:v34 count:16]) != 0))
  {
    v6 = v5;
    v7 = *v25;
LABEL_4:
    v8 = 0;
    while (1)
    {
      if (*v25 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v24 + 1) + 8 * v8);
      if ([objc_msgSend(v9 "failureTypes")])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v24 objects:v34 count:16];
        if (v6)
        {
          goto LABEL_4;
        }

        goto LABEL_25;
      }
    }

    if (!v9)
    {
      goto LABEL_25;
    }

    v10 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(*(a1 + 32), "sessionIdentifier")}];
    if (!*(*(a1 + 40) + 16))
    {
      *(*(a1 + 40) + 16) = objc_alloc_init(NSMutableDictionary);
    }

    v11 = [*(a1 + 48) copy];
    [*(*(a1 + 40) + 16) setObject:v11 forKey:v10];

    v12 = +[SSLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    v13 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    if (!os_log_type_enabled([v12 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v15 = objc_opt_class();
      v28 = 138412802;
      v29 = v15;
      v30 = 2112;
      v31 = v10;
      v32 = 2112;
      v33 = v9;
      LODWORD(v22) = 32;
      v21 = &v28;
      v16 = _os_log_send_and_compose_impl();
      if (v16)
      {
        v17 = v16;
        v18 = [NSString stringWithCString:v16 encoding:4, &v28, v22];
        free(v17);
        v21 = v18;
        SSFileLog();
      }
    }

    [v9 addSession:{*(a1 + 32), v21}];
    v19 = SSXPCCreateMessageDictionary();
    SSXPCDictionarySetCFObject();
    [*(a1 + 32) sessionProperties];
    SSXPCDictionarySetCFObject();
    [objc_msgSend(v9 "outputConnection")];
    xpc_release(v19);
  }

  else
  {
LABEL_25:
    v20 = *(*(a1 + 40) + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10020D4F4;
    block[3] = &unk_100327FD8;
    block[4] = *(a1 + 48);
    dispatch_async(v20, block);
  }
}

void sub_10020D4F4(uint64_t a1)
{
  v2 = objc_alloc_init(ErrorHandlerResponse);
  [(ErrorHandlerResponse *)v2 setResponseType:0];
  (*(*(a1 + 32) + 16))();
}

uint64_t sub_10020D6B0(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [*(*(a1 + 40) + 8) indexOfObjectIdenticalTo:v2];
    if (result != 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = [v2 popAllSessions];
      v5 = +[SSLogConfig sharedDaemonConfig];
      if (!v5)
      {
        v5 = +[SSLogConfig sharedConfig];
      }

      v6 = [v5 shouldLog];
      if ([v5 shouldLogToDisk])
      {
        v7 = v6 | 2;
      }

      else
      {
        v7 = v6;
      }

      if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v7 &= 2u;
      }

      if (v7)
      {
        v27 = 138412802;
        v28 = objc_opt_class();
        v29 = 2112;
        v30 = v2;
        v31 = 2048;
        v32 = [v4 count];
        LODWORD(v20) = 32;
        v19 = &v27;
        v8 = _os_log_send_and_compose_impl();
        if (v8)
        {
          v9 = v8;
          v10 = [NSString stringWithCString:v8 encoding:4, &v27, v20];
          free(v9);
          v19 = v10;
          SSFileLog();
        }
      }

      v11 = objc_alloc_init(NSMutableArray);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v4);
            }

            v16 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(*(*(&v22 + 1) + 8 * i), "sessionIdentifier")}];
            v17 = [*(*(a1 + 40) + 16) objectForKey:v16];
            if (v17)
            {
              [v11 addObject:v17];
              [*(*(a1 + 40) + 16) removeObjectForKey:v16];
            }
          }

          v13 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v13);
      }

      if ([v11 count])
      {
        v18 = *(*(a1 + 40) + 24);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10020D9F0;
        block[3] = &unk_100327378;
        block[4] = v11;
        dispatch_async(v18, block);
      }

      return [*(*(a1 + 40) + 8) removeObjectIdenticalTo:v2];
    }
  }

  return result;
}

void sub_10020D9F0(uint64_t a1)
{
  v2 = objc_alloc_init(ErrorHandlerResponse);
  [(ErrorHandlerResponse *)v2 setResponseType:0];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v8 + 1) + 8 * v7) + 16))();
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

uint64_t sub_10020DC88(uint64_t a1, void *a2)
{
  if (SSXPCConnectionHasEntitlement())
  {
    if ([*(a1 + 40) _clientForConnection:*(a1 + 32)])
    {
      v4 = +[SSLogConfig sharedDaemonConfig];
      if (!v4)
      {
        v4 = +[SSLogConfig sharedConfig];
      }

      v5 = [v4 shouldLog];
      if ([v4 shouldLogToDisk])
      {
        v6 = v5 | 2;
      }

      else
      {
        v6 = v5;
      }

      v7 = 1;
      if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v6 &= 2u;
      }

      if (v6)
      {
        v55 = 138412290;
        v56 = objc_opt_class();
        LODWORD(v50) = 12;
        v8 = _os_log_send_and_compose_impl();
        if (v8)
        {
          [NSString stringWithCString:v8 encoding:4, &v55, v50];
          free(v8);
          SSFileLog();
        }
      }

      goto LABEL_39;
    }

    value = xpc_dictionary_get_value(*(a1 + 48), "1");
    objc_opt_class();
    v15 = SSXPCDictionaryCopyCFObjectWithClass();
    if (value && xpc_get_type(value) == &_xpc_type_endpoint)
    {
      if ([v15 count])
      {
        v22 = [[NSSet alloc] initWithArray:v15];
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v23 = *(*(a1 + 40) + 8);
        v24 = [v23 countByEnumeratingWithState:&v51 objects:v61 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v52;
LABEL_43:
          v27 = 0;
          while (1)
          {
            if (*v52 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v51 + 1) + 8 * v27);
            if ([objc_msgSend(v28 "failureTypes")])
            {
              break;
            }

            if (v25 == ++v27)
            {
              v25 = [v23 countByEnumeratingWithState:&v51 objects:v61 count:16];
              if (v25)
              {
                goto LABEL_43;
              }

              goto LABEL_62;
            }
          }

          v29 = v28;
          if (!v29)
          {
            goto LABEL_62;
          }

          v30 = v29;
          v31 = +[SSLogConfig sharedDaemonConfig];
          if (!v31)
          {
            v31 = +[SSLogConfig sharedConfig];
          }

          v32 = [v31 shouldLog];
          if ([v31 shouldLogToDisk])
          {
            v33 = v32 | 2;
          }

          else
          {
            v33 = v32;
          }

          if (!os_log_type_enabled([v31 OSLogObject], OS_LOG_TYPE_DEFAULT))
          {
            v33 &= 2u;
          }

          if (v33)
          {
            v34 = objc_opt_class();
            v55 = 138412290;
            v56 = v34;
            LODWORD(v50) = 12;
            v35 = _os_log_send_and_compose_impl();
            if (v35)
            {
              v36 = v35;
              [NSString stringWithCString:v35 encoding:4, &v55, v50];
              free(v36);
              SSFileLog();
            }
          }

          SSError();
          v7 = 0;
        }

        else
        {
LABEL_62:
          v37 = [(XPCClient *)[ErrorHandlerClient alloc] initWithInputConnection:*(a1 + 32)];
          [(ErrorHandlerClient *)v37 setFailureTypes:[NSSet setWithArray:v15]];
          v38 = xpc_connection_create_from_endpoint(value);
          [(XPCClient *)v37 setOutputConnectionWithConnection:v38];
          xpc_release(v38);
          v39 = *(*(a1 + 40) + 8);
          if (!v39)
          {
            *(*(a1 + 40) + 8) = objc_alloc_init(NSMutableArray);
            v39 = *(*(a1 + 40) + 8);
          }

          [v39 addObject:v37];
          v40 = +[SSLogConfig sharedDaemonConfig];
          if (!v40)
          {
            v40 = +[SSLogConfig sharedConfig];
          }

          v41 = [v40 shouldLog];
          if ([v40 shouldLogToDisk])
          {
            v42 = v41 | 2;
          }

          else
          {
            v42 = v41;
          }

          if (!os_log_type_enabled([v40 OSLogObject], OS_LOG_TYPE_INFO))
          {
            v42 &= 2u;
          }

          if (v42)
          {
            v43 = objc_opt_class();
            v55 = 138412802;
            v56 = v43;
            v57 = 2112;
            v58 = v37;
            v59 = 2112;
            v60 = v15;
            LODWORD(v50) = 32;
            v44 = _os_log_send_and_compose_impl();
            if (v44)
            {
              v45 = v44;
              [NSString stringWithCString:v44 encoding:4, &v55, v50];
              free(v45);
              SSFileLog();
            }
          }

          v46 = xpc_dictionary_create(0, 0, 0);
          [(SSXPCConnection *)[(XPCClient *)v37 outputConnection] sendMessage:v46];
          xpc_release(v46);

          v30 = 0;
          v7 = 1;
        }

        goto LABEL_38;
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

      if (!os_log_type_enabled([v47 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v49 &= 2u;
      }

      if (!v49)
      {
LABEL_37:
        SSError();
        v7 = 0;
LABEL_38:

        goto LABEL_39;
      }
    }

    else
    {
      v16 = +[SSLogConfig sharedDaemonConfig];
      if (!v16)
      {
        v16 = +[SSLogConfig sharedConfig];
      }

      v17 = [v16 shouldLog];
      if ([v16 shouldLogToDisk])
      {
        v18 = v17 | 2;
      }

      else
      {
        v18 = v17;
      }

      if (!os_log_type_enabled([v16 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v18 &= 2u;
      }

      if (!v18)
      {
        goto LABEL_37;
      }
    }

    v55 = 138412290;
    v56 = objc_opt_class();
    LODWORD(v50) = 12;
    v19 = _os_log_send_and_compose_impl();
    if (v19)
    {
      v20 = v19;
      [NSString stringWithCString:v19 encoding:4, &v55, v50];
      free(v20);
      SSFileLog();
    }

    goto LABEL_37;
  }

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

  if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v11 &= 2u;
  }

  if (v11)
  {
    v55 = 138412290;
    v56 = objc_opt_class();
    LODWORD(v50) = 12;
    v12 = _os_log_send_and_compose_impl();
    if (v12)
    {
      v13 = v12;
      [NSString stringWithCString:v12 encoding:4, &v55, v50];
      free(v13);
      SSFileLog();
    }
  }

  SSError();
  v7 = 0;
LABEL_39:
  xpc_dictionary_set_BOOL(a2, "1", v7);
  return SSXPCDictionarySetCFObject();
}

id sub_10020E5F4(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  xpc_release(*(a1 + 32));
  xpc_release(*(a1 + 40));
  v2 = +[Daemon daemon];

  return [v2 releaseKeepAliveAssertion:@"com.apple.itunesstored.ErrorHandlerManager"];
}

id sub_10020E714(uint64_t a1)
{
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  (*(*(a1 + 48) + 16))();
  xpc_connection_send_message(*(a1 + 40), reply);
  xpc_release(reply);
  xpc_release(*(a1 + 32));
  xpc_release(*(a1 + 40));
  v3 = +[Daemon daemon];

  return [v3 releaseKeepAliveAssertion:@"com.apple.itunesstored.ErrorHandlerManager"];
}

void sub_10020E80C(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForConnection:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    int64 = xpc_dictionary_get_int64(*(a1 + 48), "1");
    [v3 popSessionWithIdentifier:int64];
    v5 = +[SSLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v20 = 138412802;
      v21 = objc_opt_class();
      v22 = 2048;
      v23 = int64;
      v24 = 2112;
      v25 = v3;
      LODWORD(v18) = 32;
      v17 = &v20;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        v10 = [NSString stringWithCString:v8 encoding:4, &v20, v18];
        free(v9);
        v17 = v10;
        SSFileLog();
      }
    }

    v11 = [NSNumber numberWithLongLong:int64, v17];
    v12 = [*(*(a1 + 32) + 16) objectForKey:v11];
    [*(*(a1 + 32) + 16) removeObjectForKey:v11];
    if (v12)
    {
      v13 = objc_alloc_init(ErrorHandlerResponse);
      v14 = xpc_dictionary_get_int64(*(a1 + 48), "2");
      [(ErrorHandlerResponse *)v13 setResponseType:v14];
      if (v14 == 1)
      {
        v15 = [[NSURL alloc] initWithXPCEncoding:{xpc_dictionary_get_value(*(a1 + 48), "3")}];
        [(ErrorHandlerResponse *)v13 setURL:v15];
      }

      v16 = *(*(a1 + 32) + 24);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10020EAC8;
      block[3] = &unk_1003289F0;
      block[4] = v13;
      block[5] = v12;
      dispatch_async(v16, block);
    }
  }
}

void sub_10020EBCC(uint64_t a1)
{
  if (!*(*(a1 + 32) + 144))
  {
    *(*(a1 + 32) + 144) = objc_alloc_init(NSMutableDictionary);
  }

  v2 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(*(a1 + 40), "sessionIdentifier")}];
  [*(*(a1 + 32) + 144) setObject:*(a1 + 40) forKey:v2];
}

void sub_10020ED54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10020ED88(uint64_t a1)
{
  result = *(*(a1 + 32) + 136);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_10020EEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10020EEC4(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 144) allValues];
  v2 = *(*(a1 + 32) + 144);

  return [v2 removeAllObjects];
}

void sub_10020F008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10020F020(void *a1)
{
  v2 = [[NSNumber alloc] initWithLongLong:a1[6]];
  *(*(a1[5] + 8) + 40) = [*(a1[4] + 144) objectForKey:v2];
  [*(a1[4] + 144) removeObjectForKey:v2];
}

void *sub_10020F12C(void *result)
{
  v1 = *(result[4] + 136);
  if (v1 != result[5])
  {
    v2 = result;

    result = [v2[5] copy];
    *(v2[4] + 136) = result;
  }

  return result;
}

id sub_10020F36C(void *a1)
{
  v1 = a1;
  if (SSDownloadKindIsPodcastKind())
  {
    v2 = [[NSArray alloc] initWithObjects:{CPSharedResourcesDirectory(), @"Media", @"Podcasts", 0, v8}];
LABEL_5:
    v3 = v2;
    v4 = [NSString pathWithComponents:v2];

    goto LABEL_10;
  }

  if (SSDownloadKindIsEBookKind())
  {
    v2 = [[NSArray alloc] initWithObjects:{CPSharedResourcesDirectory(), @"Media", @"Books", @"Purchases", 0}];
    goto LABEL_5;
  }

  if (([v1 isEqualToString:SSDownloadKindMusic] & 1) != 0 || objc_msgSend(v1, "isEqualToString:", SSDownloadKindMusicVideo))
  {
    v5 = 250;
  }

  else
  {
    if (!SSDownloadKindIsVideosAppKind())
    {
      v2 = [[NSArray alloc] initWithObjects:{CPSharedResourcesDirectory(), @"Media", @"Purchases", 0, v8}];
      goto LABEL_5;
    }

    v5 = 500;
  }

  v4 = [ML3MusicLibrary pathForBaseLocationPath:v5];
LABEL_10:
  v6 = objc_alloc_init(NSFileManager);
  [v6 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];

  return v4;
}

void sub_1002102A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_1002102D4(uint64_t a1, void *a2)
{
  v4 = [a2 responseType];
  [*(a1 + 32) setErrorHandlerResponseType:v4];
  if (v4 == 2)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else if (v4 == 1)
  {
    v5 = [a2 URL];
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v20 = 138412546;
      v21 = objc_opt_class();
      v22 = 2112;
      v23 = v5;
      LODWORD(v19) = 22;
      v18 = &v20;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        v11 = [NSString stringWithCString:v9 encoding:4, &v20, v19];
        free(v10);
        v18 = v11;
        SSFileLog();
      }
    }

    [*(a1 + 32) setRedirectURL:{v5, v18}];
    *(*(*(a1 + 48) + 8) + 24) = v5 != 0;
    return dispatch_semaphore_signal(*(a1 + 40));
  }

  v12 = +[SSLogConfig sharedDaemonConfig];
  if (!v12)
  {
    v12 = +[SSLogConfig sharedConfig];
  }

  v13 = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    v14 = v13 | 2;
  }

  else
  {
    v14 = v13;
  }

  if (!os_log_type_enabled([v12 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v14 &= 2u;
  }

  if (v14)
  {
    v20 = 138412546;
    v21 = objc_opt_class();
    v22 = 2048;
    v23 = v4;
    LODWORD(v19) = 22;
    v15 = _os_log_send_and_compose_impl();
    if (v15)
    {
      v16 = v15;
      [NSString stringWithCString:v15 encoding:4, &v20, v19];
      free(v16);
      SSFileLog();
    }
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100210734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10021076C(uint64_t a1, void *a2)
{
  v5 = [[NSArray alloc] initWithObjects:{@"kind", @"store_account_id", @"store_download_key", @"store_transaction_id", 0}];
  v4 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", *(*(a1 + 32) + 96), [a2 database]);
  *(*(*(a1 + 40) + 8) + 40) = [[Download alloc] initWithDatabaseEntity:v4 properties:v5];
}

void sub_100210E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002120E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002122C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002122F8(uint64_t a1, void *a2)
{
  v5 = [[NSArray alloc] initWithObjects:{@"preferred_asset_flavor", @"store_account_id", @"store_item_id", @"store_redownload_parameters", 0}];
  v4 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", *(*(a1 + 32) + 96), [a2 database]);
  *(*(*(a1 + 40) + 8) + 40) = [[Download alloc] initWithDatabaseEntity:v4 properties:v5];
}

void sub_10021281C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002132D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002132F0(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 installType] == 7)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void sub_1002134D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 160) & 1) == 0)
  {
    v3 = +[SSLogConfig sharedDaemonConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    if (!os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v6 = objc_opt_class();
      v7 = [*(a1 + 40) logUUID];
      v41 = 138543618;
      v42 = v6;
      v43 = 2114;
      v44 = v7;
      LODWORD(v37) = 22;
      v35 = &v41;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        v10 = [NSString stringWithCString:v8 encoding:4, &v41, v37];
        free(v9);
        v35 = v10;
        SSFileLog();
      }
    }

    v11 = *(a1 + 48);
    v12 = SSError();
    (*(v11 + 16))(v11, 0, v12);
    v2 = *(a1 + 32);
  }

  if (*(v2 + 40))
  {
    v13 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v13, "0", 1100);
    v14 = [*(a1 + 40) copyXPCEncoding];
    if (v14)
    {
      v15 = v14;
      xpc_dictionary_set_value(v13, "1", v14);
      xpc_release(v15);
    }

    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    if (!os_log_type_enabled([v16 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v19 = objc_opt_class();
      v20 = [*(a1 + 40) logUUID];
      v41 = 138543618;
      v42 = v19;
      v43 = 2114;
      v44 = v20;
      LODWORD(v37) = 22;
      v36 = &v41;
      v21 = _os_log_send_and_compose_impl();
      if (v21)
      {
        v22 = v21;
        v23 = [NSString stringWithCString:v21 encoding:4, &v41, v37];
        free(v22);
        v36 = v23;
        SSFileLog();
      }
    }

    v24 = *(a1 + 32);
    v25 = *(*(a1 + 32) + 40);
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1002139C0;
    v38[3] = &unk_10032C5C0;
    v39 = v24;
    v40 = *(a1 + 48);
    [v25 sendMessage:v13 withReply:{v38, v36}];
    xpc_release(v13);
  }

  else
  {
    v26 = +[SSLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    v27 = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      v28 = v27 | 2;
    }

    else
    {
      v28 = v27;
    }

    if (!os_log_type_enabled([v26 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v28 &= 2u;
    }

    if (v28)
    {
      v29 = objc_opt_class();
      v30 = [*(a1 + 40) logUUID];
      v41 = 138543618;
      v42 = v29;
      v43 = 2114;
      v44 = v30;
      LODWORD(v37) = 22;
      v31 = _os_log_send_and_compose_impl();
      if (v31)
      {
        v32 = v31;
        [NSString stringWithCString:v31 encoding:4, &v41, v37];
        free(v32);
        SSFileLog();
      }
    }

    v33 = *(a1 + 48);
    v34 = SSError();
    (*(v33 + 16))(v33, 0, v34);
  }
}

void sub_1002139C0(uint64_t a1, xpc_object_t object)
{
  if (object == &_xpc_error_connection_invalid || object == &_xpc_error_connection_interrupted)
  {
    v4 = +[SSLogConfig sharedDaemonConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v7 = objc_opt_class();
      v8 = [*(a1 + 40) logUUID];
      v31 = 138543618;
      v32 = v7;
      v33 = 2114;
      v34 = v8;
      LODWORD(v30) = 22;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        [NSString stringWithCString:v9 encoding:4, &v31, v30];
        free(v10);
        SSFileLog();
      }
    }

    v11 = *(a1 + 48);
    goto LABEL_30;
  }

  if (!object || xpc_get_type(object) != &_xpc_type_dictionary)
  {
    v13 = +[SSLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    v14 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = v14 | 2;
    }

    else
    {
      v15 = v14;
    }

    if (!os_log_type_enabled([v13 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v16 = objc_opt_class();
      v17 = [*(a1 + 40) logUUID];
      v31 = 138543618;
      v32 = v16;
      v33 = 2114;
      v34 = v17;
      LODWORD(v30) = 22;
      v18 = _os_log_send_and_compose_impl();
      if (v18)
      {
        v19 = v18;
        [NSString stringWithCString:v18 encoding:4, &v31, v30];
        free(v19);
        SSFileLog();
      }
    }

    v11 = *(a1 + 48);
LABEL_30:
    v20 = SSError();
    (*(v11 + 16))(v11, 0, v20);
    return;
  }

  v21 = +[SSLogConfig sharedDaemonConfig];
  if (!v21)
  {
    v21 = +[SSLogConfig sharedConfig];
  }

  v22 = [v21 shouldLog];
  if ([v21 shouldLogToDisk])
  {
    v23 = v22 | 2;
  }

  else
  {
    v23 = v22;
  }

  if (!os_log_type_enabled([v21 OSLogObject], OS_LOG_TYPE_DEBUG))
  {
    v23 &= 2u;
  }

  if (v23)
  {
    v24 = objc_opt_class();
    v25 = [*(a1 + 40) logUUID];
    v31 = 138543618;
    v32 = v24;
    v33 = 2114;
    v34 = v25;
    LODWORD(v30) = 22;
    v26 = _os_log_send_and_compose_impl();
    if (v26)
    {
      v27 = v26;
      [NSString stringWithCString:v26 encoding:4, &v31, v30];
      free(v27);
      SSFileLog();
    }
  }

  v28 = [[SSAuthenticateResponse alloc] initWithXPCEncoding:{xpc_dictionary_get_value(object, "0")}];
  v29 = *(a1 + 48);
  if (v29)
  {
    (*(v29 + 16))(v29, v28, 0);
  }
}

id sub_100213FCC(id *a1)
{
  if (*(a1[4] + 5) && [a1[5] count])
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v2, "0", 1101);
    v3 = xpc_array_create(0, 0);
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = a1[5];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [a1[6] setPurchase:*(*(&v10 + 1) + 8 * i)];
          SSXPCArraySetCFObject();
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    xpc_dictionary_set_value(v2, "1", v3);
    xpc_release(v3);
    [*(a1[4] + 5) sendMessage:v2];
    xpc_release(v2);
  }

  result = [a1[5] count];
  if (result)
  {
    return [a1[4] postNotificationWithResponse:a1[6]];
  }

  return result;
}

void sub_1002141FC(uint64_t a1)
{
  if (*(*(a1 + 32) + 40))
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v2, "0", 1101);
    v3 = xpc_array_create(0, 0);
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = *(a1 + 40);
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * i);
          SSXPCArraySetCFObject();
          [*(a1 + 32) postNotificationWithResponse:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    xpc_dictionary_set_value(v2, "1", v3);
    xpc_release(v3);
    [*(*(a1 + 32) + 40) sendMessage:v2];
    xpc_release(v2);
  }
}

id sub_100214C60()
{
  result = objc_alloc_init(objc_opt_class());
  qword_100384168 = result;
  return result;
}

void sub_100214DEC(uint64_t a1)
{
  v1 = +[SSLogConfig sharedDaemonConfig];
  if (!v1)
  {
    v1 = +[SSLogConfig sharedConfig];
  }

  v2 = [v1 shouldLog];
  if ([v1 shouldLogToDisk])
  {
    v3 = v2 | 2;
  }

  else
  {
    v3 = v2;
  }

  if (os_log_type_enabled([v1 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v4 = v3;
  }

  else
  {
    v4 = v3 & 2;
  }

  if (v4)
  {
    v5 = objc_opt_class();
    v6 = [*(a1 + 40) count];
    *v30 = 138412546;
    *&v30[4] = v5;
    *&v30[12] = 2048;
    *&v30[14] = v6;
    LODWORD(v19) = 22;
    v18 = v30;
    v7 = _os_log_send_and_compose_impl();
    if (v7)
    {
      v8 = v7;
      v9 = [NSString stringWithCString:v7 encoding:4, v30, v19];
      free(v8);
      v18 = v9;
      SSFileLog();
    }
  }

  v21 = objc_alloc_init(SSPurchaseResponse);
  [v21 setError:SSError()];
  v20 = [*(a1 + 32) _newEncodedPurchaseEntityPropertiesWithResponse:v21];
  [v20 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", 2), @"state"}];
  v10 = objc_alloc_init(NSMutableSet);
  obj = objc_alloc_init(NSMutableSet);
  v11 = +[DownloadsDatabase downloadsDatabase];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100215244;
  v29[3] = &unk_10032C610;
  v29[4] = *(a1 + 40);
  v29[5] = obj;
  v29[6] = *(a1 + 32);
  v29[7] = v10;
  v29[8] = v20;
  [v11 modifyUsingPurchaseTransactionBlock:v29];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = [obj countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v12)
  {
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        if (([v10 containsObject:{v15, v18}] & 1) == 0)
        {
          *v30 = 0;
          *&v30[8] = v30;
          *&v30[16] = 0x3052000000;
          v31 = sub_100215494;
          v32 = sub_1002154A4;
          v33 = 0;
          v16 = [*(a1 + 32) _clientForUniqueIdentifier:{objc_msgSend(v15, "longLongValue")}];
          v17 = +[DownloadsDatabase downloadsDatabase];
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_1002154B0;
          v24[3] = &unk_10032C638;
          v24[5] = v16;
          v24[6] = v30;
          v24[4] = *(a1 + 32);
          [v17 readUsingTransactionBlock:v24];
          if ([*(*&v30[8] + 40) count])
          {
            [v16 sendResponses:*(*&v30[8] + 40)];
          }

          _Block_object_dispose(v30, 8);
        }
      }

      v12 = [obj countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v12);
  }
}

uint64_t sub_100215244(uint64_t a1, void *a2)
{
  v4 = [a2 database];
  v5 = +[DownloadEntity queryWithDatabase:predicate:](DownloadEntity, "queryWithDatabase:predicate:", [a2 database], +[SSSQLiteContainsPredicate containsPredicateWithProperty:values:](SSSQLiteContainsPredicate, "containsPredicateWithProperty:values:", SSSQLEntityPropertyPersistentID, objc_msgSend(*(a1 + 32), "allObjects")));
  v11 = @"purchase_id";
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100215380;
  v8[3] = &unk_10032C5E8;
  v8[4] = v4;
  v6 = *(a1 + 56);
  v9 = *(a1 + 40);
  v10 = v6;
  [v5 enumeratePersistentIDsAndProperties:&v11 count:1 usingBlock:v8];
  return 1;
}

void sub_100215380(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = -[PurchaseEntity initWithPersistentID:inDatabase:]([PurchaseEntity alloc], "initWithPersistentID:inDatabase:", [*a3 longLongValue], *(a1 + 32));
  if (v4)
  {
    v7 = v4;
    v5 = [(PurchaseEntity *)v4 valueForProperty:@"client_id"];
    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = v5;
    if (([*(a1 + 40) containsObject:v5] & 1) == 0)
    {
      [*(a1 + 40) addObject:v6];
      if ([objc_msgSend(*(a1 + 48) _clientForUniqueIdentifier:{objc_msgSend(v6, "longLongValue")), "finishesPurchases"}])
      {
        [*(a1 + 56) addObject:v6];
      }
    }

    if ([*(a1 + 56) containsObject:v6])
    {
      [(PurchaseEntity *)v7 setValuesWithDictionary:*(a1 + 64)];
    }

    else
    {
LABEL_8:
      [(PurchaseEntity *)v7 deleteFromDatabase];
    }
  }
}

id sub_1002154B0(uint64_t a1, void *a2)
{
  result = [*(a1 + 32) _newResponsesToPurchasesForClient:*(a1 + 40) inDatabase:{objc_msgSend(a2, "database")}];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

void sub_100215604(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    [*(a1 + 40) _addEncodedPurchases:xpc_dictionary_get_value(*(a1 + 32) forClient:{"2"), a2}];

    xpc_dictionary_set_BOOL(a3, "0", 1);
  }

  else
  {
    SSError();

    SSXPCDictionarySetCFObject();
  }
}

void sub_100215754(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    [*(a1 + 32) _cancelEncodedPurchases:xpc_dictionary_get_value(*(a1 + 40) forClient:{"2"), a2}];

    xpc_dictionary_set_BOOL(a3, "0", 1);
  }

  else
  {
    SSError();

    SSXPCDictionarySetCFObject();
  }
}

void sub_1002158A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    value = xpc_dictionary_get_value(*(a1 + 32), "2");
    if (value)
    {
      v5 = value;
      if (xpc_get_type(value) == &_xpc_type_endpoint)
      {
        v6 = xpc_connection_create_from_endpoint(v5);
        if (v6)
        {
          v7 = v6;
          [*(a1 + 40) _connectClient:a2 withOutputConnection:v6];

          xpc_release(v7);
        }
      }
    }
  }
}

void sub_100215990(id a1, PurchaseManagerClient *a2, OS_xpc_object *a3)
{
  if (a2)
  {
    v4 = [(PurchaseManagerClient *)a2 uniqueIdentifier];
    if (v4)
    {
      v5 = v4;
      v6 = xpc_array_create(0, 0);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100215AC0;
      v7[3] = &unk_10032C6C8;
      v7[4] = v6;
      v7[5] = v5;
      [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];
      xpc_dictionary_set_value(a3, "2", v6);
      xpc_release(v6);
    }

    xpc_dictionary_set_BOOL(a3, "0", 1);
  }

  else
  {
    SSError();

    SSXPCDictionarySetCFObject();
  }
}

id sub_100215AC0(uint64_t a1, void *a2)
{
  v4 = [SSSQLiteComparisonPredicate predicateWithProperty:@"client_id" equalToLongLong:*(a1 + 40)];
  v9 = @"order_id";
  v5 = +[PurchaseEntity queryWithDatabase:predicate:orderingProperties:](PurchaseEntity, "queryWithDatabase:predicate:orderingProperties:", [a2 database], v4, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v9, 1));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100215BF4;
  v7[3] = &unk_100327288;
  v7[4] = *(a1 + 32);
  v8 = @"encoded_data";
  return [v5 enumeratePersistentIDsAndProperties:&v8 count:1 usingBlock:v7];
}

void sub_100215BF4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [SSPurchase newPurchaseWithDatabaseEncoding:*a3];
  if (v4)
  {
    v5 = v4;
    [v4 setUniqueIdentifier:a2];
    SSXPCArraySetCFObject();
  }
}

void sub_100215D04(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    [*(a1 + 40) _finishEncodedPurchaseIdentifiers:xpc_dictionary_get_value(*(a1 + 32) forClient:{"2"), a2}];

    xpc_dictionary_set_BOOL(a3, "0", 1);
  }

  else
  {
    SSError();

    SSXPCDictionarySetCFObject();
  }
}

void sub_100215E54(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    value = xpc_dictionary_get_value(*(a1 + 32), "2");
    [*(a1 + 40) _insertEncodedPurchases:value afterPurchaseID:xpc_dictionary_get_int64(*(a1 + 32) forClient:{"3"), a2}];

    xpc_dictionary_set_BOOL(a3, "0", 1);
  }

  else
  {
    SSError();

    SSXPCDictionarySetCFObject();
  }
}

void sub_100215FBC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    value = xpc_dictionary_get_value(*(a1 + 32), "2");
    [*(a1 + 40) _moveEncodedPurchaseIDs:value afterPurchaseID:xpc_dictionary_get_int64(*(a1 + 32) forClient:{"3"), a2}];

    xpc_dictionary_set_BOOL(a3, "0", 1);
  }

  else
  {
    SSError();

    SSXPCDictionarySetCFObject();
  }
}

uint64_t sub_1002163C8(uint64_t a1, void *a2)
{
  v3 = [a2 database];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100216454;
  v6[3] = &unk_10032C6F0;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  v6[5] = v3;
  xpc_array_apply(v4, v6);
  return 1;
}

uint64_t sub_100216454(uint64_t a1, int a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_int64)
  {
    value = xpc_int64_get_value(object);
    v6 = [[NSNumber alloc] initWithLongLong:value];
    if ([*(*(a1 + 32) + 64) containsObject:v6])
    {
      [*(a1 + 32) _markInFlightCanceledPurchaseIdentifier:v6];
    }

    else
    {
      v7 = [[PurchaseEntity alloc] initWithPersistentID:value inDatabase:*(a1 + 40)];
      [(PurchaseEntity *)v7 deleteFromDatabase];
    }
  }

  return 1;
}

void sub_100216780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1002167A0(uint64_t a1, void *a2)
{
  result = [*(a1 + 32) _newResponsesToPurchasesForClient:*(a1 + 40) inDatabase:{objc_msgSend(a2, "database")}];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

uint64_t sub_1002169EC(uint64_t a1, void *a2)
{
  v3 = [a2 database];
  v4 = *(a1 + 32);
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_100216A78;
  applier[3] = &unk_100327FB0;
  applier[4] = v3;
  xpc_array_apply(v4, applier);
  return 1;
}

uint64_t sub_100216A78(uint64_t a1, int a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_int64)
  {
    v5 = [[PurchaseEntity alloc] initWithPersistentID:xpc_int64_get_value(object) inDatabase:*(a1 + 32)];
    if ([-[PurchaseEntity valueForProperty:](v5 valueForProperty:{@"state", "integerValue"}] == 2)
    {
      [(PurchaseEntity *)v5 deleteFromDatabase];
    }
  }

  return 1;
}

void sub_100216F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Unwind_Resume(a1);
}

id sub_100216FA8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100217050;
  v7[3] = &unk_10032C768;
  v7[4] = v4;
  v7[5] = a2;
  v8 = *(a1 + 56);
  [v4 _filterPurchases:v5 withTransaction:a2 block:v7];
  return [a2 insertPurchases:*(*(*(a1 + 64) + 8) + 40) afterPurchaseWithIdentifier:*(a1 + 72) forClient:*(a1 + 48)];
}

id sub_100217050(uint64_t a1, void *a2, void *a3)
{
  if ([a3 count])
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v16 = 138412546;
      v17 = objc_opt_class();
      v18 = 2048;
      v19 = [a3 count];
      LODWORD(v15) = 22;
      v14 = &v16;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        v11 = [NSString stringWithCString:v9 encoding:4, &v16, v15];
        free(v10);
        v14 = v11;
        SSFileLog();
      }
    }

    v12 = [[NSOrderedSet alloc] initWithArray:{objc_msgSend(a3, "allKeys")}];
    [*(a1 + 40) resetDownloadsWithIdentifiers:v12];
  }

  *(*(*(a1 + 48) + 8) + 40) = [a3 copy];
  result = [a2 copy];
  *(*(*(a1 + 56) + 8) + 40) = result;
  return result;
}

void sub_10021723C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(SSPurchaseResponse);
  v7 = a2;
  [v6 setDownloadIdentifiers:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v7, 1)}];
  [*(a1 + 32) sendResponse:v6 forPurchases:a3];
}

void sub_1002176CC(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = [SSPurchase newPurchaseWithDatabaseEncoding:*a3];
  [v9 setUniqueIdentifier:a2];
  if (v9)
  {
    v6 = objc_alloc_init(SSPurchaseResponse);
    [v6 setPurchase:v9];
    if (a3[1])
    {
      objc_opt_class();
      ObjectWithArchivedData = SSCodingCreateObjectWithArchivedData();
      [v6 setError:ObjectWithArchivedData];
    }

    if (a3[2])
    {
      v8 = [[SSURLConnectionResponse alloc] initWithDatabaseEncoding:a3[2]];
      [v6 setURLResponse:v8];
    }

    [*(a1 + 32) addObject:v6];
  }
}

void sub_100217CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 176), 8);
  _Unwind_Resume(a1);
}

id sub_100217D24(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100217DCC;
  v7[3] = &unk_10032C768;
  v7[4] = v4;
  v7[5] = a2;
  v8 = *(a1 + 56);
  [v4 _filterPurchases:v5 withTransaction:a2 block:v7];
  return [a2 addPurchases:*(*(*(a1 + 64) + 8) + 40) forClient:*(a1 + 48)];
}

id sub_100217DCC(uint64_t a1, void *a2, void *a3)
{
  if ([a3 count])
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v16 = 138412546;
      v17 = objc_opt_class();
      v18 = 2048;
      v19 = [a3 count];
      LODWORD(v15) = 22;
      v14 = &v16;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        v11 = [NSString stringWithCString:v9 encoding:4, &v16, v15];
        free(v10);
        v14 = v11;
        SSFileLog();
      }
    }

    v12 = [[NSOrderedSet alloc] initWithArray:{objc_msgSend(a3, "allKeys")}];
    [*(a1 + 40) resetDownloadsWithIdentifiers:v12];
  }

  *(*(*(a1 + 48) + 8) + 40) = [a3 copy];
  result = a2;
  *(*(*(a1 + 56) + 8) + 40) = result;
  return result;
}

void sub_100217FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(SSPurchaseResponse);
  v7 = a2;
  [v6 setDownloadIdentifiers:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v7, 1)}];
  [*(a1 + 32) sendResponse:v6 forPurchases:a3];
}

id sub_10021824C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) object];
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);

  return [v6 _finishAuthenticationRequestForBatchIdentifier:v7 client:v8 withAccountID:a2 error:a3];
}

void sub_10021861C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_alloc_init(NSMutableArray);
  v9 = objc_alloc_init(NSMutableArray);
  v10 = +[SSLogConfig sharedDaemonConfig];
  v11 = v10;
  v38 = a1;
  if (a2)
  {
    if (!v10)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    if (os_log_type_enabled([v11 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 & 2;
    }

    if (v14)
    {
      v45 = 138412290;
      v46 = objc_opt_class();
      LODWORD(v37) = 12;
      v36 = &v45;
      v15 = _os_log_send_and_compose_impl();
      if (v15)
      {
        v16 = v15;
        v17 = [NSString stringWithCString:v15 encoding:4, &v45, v37];
        free(v16);
        v36 = v17;
        SSFileLog();
      }
    }

    [v9 addObjectsFromArray:{*(a1 + 40), v36}];
    goto LABEL_38;
  }

  if (!v10)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  v18 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v19 = v18 | 2;
  }

  else
  {
    v19 = v18;
  }

  if (os_log_type_enabled([v11 OSLogObject], OS_LOG_TYPE_DEBUG))
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 & 2;
  }

  if (v20)
  {
    v45 = 138412802;
    v46 = objc_opt_class();
    v47 = 2048;
    v48 = a3;
    v49 = 2112;
    v50 = a4;
    LODWORD(v37) = 32;
    v36 = &v45;
    v21 = _os_log_send_and_compose_impl();
    if (v21)
    {
      v22 = v21;
      v23 = [NSString stringWithCString:v21 encoding:4, &v45, v37];
      free(v22);
      v36 = v23;
      SSFileLog();
    }
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v24 = *(a1 + 40);
  v25 = [v24 countByEnumeratingWithState:&v40 objects:v44 count:{16, v36}];
  if (v25)
  {
    v26 = v25;
    v27 = 0;
    v28 = *v41;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(v24);
        }

        v30 = *(*(&v40 + 1) + 8 * i);
        if (([v30 createsDownloads] & 1) == 0)
        {
          v32 = v9;
          goto LABEL_34;
        }

        v31 = [v30 expectedDownloadFileSize];
        if (v31 > a3 - v27)
        {
          v32 = v8;
LABEL_34:
          [v32 addObject:v30];
          continue;
        }

        v33 = v31;
        [v9 addObject:v30];
        v27 += v33;
      }

      v26 = [v24 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v26);
  }

LABEL_38:
  v34 = *(v38 + 32);
  v35 = *(v34 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100218A00;
  block[3] = &unk_10032AE90;
  block[4] = v8;
  block[5] = v34;
  block[6] = *(v38 + 48);
  block[7] = v9;
  dispatch_async(v35, block);
}

id sub_100218A00(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = +[SSLogConfig sharedDaemonConfig];
    if (!v2)
    {
      v2 = +[SSLogConfig sharedConfig];
    }

    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      v4 = v3 | 2;
    }

    else
    {
      v4 = v3;
    }

    if (!os_log_type_enabled([v2 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v4 &= 2u;
    }

    if (v4)
    {
      v5 = objc_opt_class();
      v6 = *(a1 + 32);
      v21 = 138412546;
      v22 = v5;
      v23 = 2112;
      v24 = v6;
      LODWORD(v20) = 22;
      v19 = &v21;
      v7 = _os_log_send_and_compose_impl();
      if (v7)
      {
        v8 = v7;
        v9 = [NSString stringWithCString:v7 encoding:4, &v21, v20];
        free(v8);
        v19 = v9;
        SSFileLog();
      }
    }

    [*(a1 + 40) _cancelPurchasesForLackOfDiskSpace:*(a1 + 32) client:{*(a1 + 48), v19}];
  }

  result = [*(a1 + 56) count];
  if (result)
  {
    v11 = +[SSLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    if (!os_log_type_enabled([v11 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v14 = objc_opt_class();
      v15 = *(a1 + 56);
      v21 = 138412546;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      LODWORD(v20) = 22;
      v19 = &v21;
      v16 = _os_log_send_and_compose_impl();
      if (v16)
      {
        v17 = v16;
        v18 = [NSString stringWithCString:v16 encoding:4, &v21, v20];
        free(v17);
        v19 = v18;
        SSFileLog();
      }
    }

    [*(a1 + 40) _authenticateForPurchases:*(a1 + 56) client:{*(a1 + 48), v19}];
    return [*(a1 + 40) _enqueueNextPurchase];
  }

  return result;
}

uint64_t sub_100218D6C(uint64_t a1, void *a2)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  v6 = *v10;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v10 != v6)
    {
      objc_enumerationMutation(v3);
    }

    result = [a2 cancelPurchaseWithIdentifier:objc_msgSend(*(*(&v9 + 1) + 8 * v7) applyingProperties:{"uniqueIdentifier"), 0}];
    if (!result)
    {
      return result;
    }

    if (v5 == ++v7)
    {
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        goto LABEL_3;
      }

      return 1;
    }
  }
}

void sub_100218FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100218FD8(uint64_t a1, void *a2)
{
  v4 = +[PurchaseEntity queryWithDatabase:predicate:](PurchaseEntity, "queryWithDatabase:predicate:", [a2 database], +[SSSQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SSSQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"batch_id", *(a1 + 56)));
  v11[0] = @"client_id";
  v11[1] = @"encoded_data";
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100219114;
  v7[3] = &unk_10032C880;
  v9 = *(a1 + 56);
  v5 = *(a1 + 32);
  v10 = *(a1 + 64);
  v7[4] = v5;
  v7[5] = a2;
  v8 = *(a1 + 40);
  [v4 enumeratePersistentIDsAndProperties:v11 count:2 usingBlock:v7];
  return *(*(*(a1 + 48) + 8) + 24);
}

void sub_100219114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v10 = [SSPurchase newPurchaseWithDatabaseEncoding:*(a3 + 8)];
  [v10 setBatchIdentifier:*(a1 + 64)];
  [v10 setUniqueIdentifier:a2];
  if (v10)
  {
    [*(a1 + 32) addObject:v10];
  }

  v8 = *(a1 + 40);
  if (*(a1 + 72) == 1)
  {
    v9 = [v8 deletePurchaseWithIdentifier:a2];
  }

  else
  {
    v9 = [v8 cancelPurchaseWithIdentifier:a2 applyingProperties:*(a1 + 48)];
  }

  *(*(*(a1 + 56) + 8) + 24) = v9;
  *a5 = *(*(*(a1 + 56) + 8) + 24) ^ 1;
}

uint64_t sub_1002196FC(uint64_t a1, void *a2)
{
  v4 = [SSSQLiteComparisonPredicate predicateWithProperty:@"process_id" equalToValue:*(a1 + 32)];
  v5 = [SSSQLiteComparisonPredicate predicateWithProperty:@"manager_id" equalToValue:*(a1 + 40)];
  v10[0] = v4;
  v10[1] = v5;
  v6 = +[PurchaseManagerEntity anyInDatabase:predicate:](PurchaseManagerEntity, "anyInDatabase:predicate:", [a2 database], +[SSSQLiteCompoundPredicate predicateMatchingAllPredicates:](SSSQLiteCompoundPredicate, "predicateMatchingAllPredicates:", +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v10, 2)));
  if (!v6)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    [v7 setObject:*(a1 + 40) forKey:@"manager_id"];
    [v7 setObject:*(a1 + 32) forKey:@"process_id"];
    [*(a1 + 48) URLBagType];
    [v7 setObject:SSGetStringForURLBagType() forKey:@"url_bag_type"];
    v8 = [*(a1 + 48) clientIdentifierHeader];
    if (v8)
    {
      [v7 setObject:v8 forKey:@"client_id_header"];
    }

    v6 = -[PurchaseManagerEntity initWithPropertyValues:inDatabase:]([PurchaseManagerEntity alloc], "initWithPropertyValues:inDatabase:", v7, [a2 database]);
  }

  [*(a1 + 48) setFinishesPurchases:1];
  [*(a1 + 48) setUniqueIdentifier:{-[PurchaseManagerEntity persistentID](v6, "persistentID")}];

  return 1;
}

id sub_100219AA8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[32] & 1) == 0)
  {
    [v2 _garbageCollectInflightPurchases];
    *(*(a1 + 32) + 32) = 1;
  }

  (*(*(a1 + 40) + 16))();
  v3 = +[Daemon daemon];

  return [v3 releaseKeepAliveAssertion:@"com.apple.itunesstored.PurchaseController"];
}

void sub_100219D8C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100219DBC(uint64_t a1, void *a2)
{
  v3 = [a2 database];
  v10 = @"order_id";
  v4 = [PurchaseEntity queryWithDatabase:v3 predicate:[SSSQLiteComparisonPredicate predicateWithProperty:@"state" equalToLongLong:0] orderingProperties:[NSArray arrayWithObjects:&v10 count:1]];
  v9[0] = @"batch_id";
  v9[1] = @"client_id";
  v9[2] = @"encoded_data";
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100219F18;
  v7[3] = &unk_10032C920;
  v5 = *(a1 + 32);
  v8 = *(a1 + 40);
  v7[4] = v5;
  v7[5] = v3;
  [v4 enumeratePersistentIDsAndProperties:v9 count:3 usingBlock:v7];
  return 1;
}

void sub_100219F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = [*a3 integerValue];
  if (([*(*(a1 + 32) + 16) containsIndex:v9] & 1) == 0)
  {
    v10 = [SSPurchase newPurchaseWithDatabaseEncoding:*(a3 + 16)];
    if (v10)
    {
      v17 = v10;
      [v10 setBatchIdentifier:v9];
      [v17 setUniqueIdentifier:a2];
      *(*(*(a1 + 48) + 8) + 40) = [[PurchaseManagerOperation alloc] initWithPurchase:v17];
      *(*(*(a1 + 56) + 8) + 24) = [*(a3 + 8) longLongValue];
      if (*(*(*(a1 + 56) + 8) + 24))
      {
        v11 = [*(a1 + 32) _clientForUniqueIdentifier:?];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 URLBagType];
          [*(*(*(a1 + 48) + 8) + 40) setClientIdentifier:{objc_msgSend(v12, "clientIdentifier")}];
          [*(*(*(a1 + 48) + 8) + 40) setClientIdentifierHeader:{objc_msgSend(v12, "clientIdentifierHeader")}];
          [*(*(*(a1 + 48) + 8) + 40) setUseRemoteAuthentication:{objc_msgSend(v12, "useRemoteAuthentication")}];
        }

        else
        {
          v14 = [[PurchaseManagerEntity alloc] initWithPersistentID:*(*(*(a1 + 56) + 8) + 24) inDatabase:*(a1 + 40)];
          [*(*(*(a1 + 48) + 8) + 40) setClientIdentifierHeader:{-[PurchaseManagerEntity valueForProperty:](v14, "valueForProperty:", @"client_id_header"}];
          [(PurchaseManagerEntity *)v14 valueForProperty:@"url_bag_type"];
          v13 = SSURLBagTypeForString();
        }
      }

      else
      {
        v13 = 0;
      }

      [v17 buyParametersValueForKey:@"originatingBundleID"];
      v15 = ISClientIdentifierForBundleIdentifier();
      if ([v15 length])
      {
        [*(*(*(a1 + 48) + 8) + 40) setClientIdentifierHeader:v15];
      }

      if ([v17 requestProperties])
      {
        v13 = [objc_msgSend(v17 "requestProperties")];
      }

      [*(*(*(a1 + 48) + 8) + 40) setURLBagType:v13];
      v16 = [[PurchaseEntity alloc] initWithPersistentID:a2 inDatabase:*(a1 + 40)];
      [(PurchaseEntity *)v16 setValue:[NSNumber forProperty:"numberWithInteger:" numberWithInteger:?], @"state"];

      *a5 = 1;
    }
  }
}

id sub_10021A1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) object];
  v7 = *(*(*(a1 + 40) + 8) + 24);

  return [v6 _sendAuthenticateRequestForClientUniqueID:v7 withContext:a2 responseHandler:a3];
}

id sub_10021A21C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) object];
  v5 = *(*(*(a1 + 40) + 8) + 24);

  return [v4 _finishPurchaseRequestForClientUniqueID:v5 withResponse:a2];
}

id sub_10021A650(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = +[DownloadsDatabase downloadsDatabase];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10021A850;
    v13[3] = &unk_10032C9B8;
    v13[4] = *(a1 + 64);
    [v2 modifyUsingPurchaseTransactionBlock:v13];
  }

  else
  {
    v3 = +[SSLogConfig sharedDaemonConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    if (!os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v14 = 138412290;
      v15 = objc_opt_class();
      LODWORD(v12) = 12;
      v11 = &v14;
      v6 = _os_log_send_and_compose_impl();
      if (v6)
      {
        v7 = v6;
        v8 = [NSString stringWithCString:v6 encoding:4, &v14, v12];
        free(v7);
        v11 = v8;
        SSFileLog();
      }
    }

    v9 = objc_alloc_init(SSPurchaseResponse);
    [v9 setError:*(a1 + 48)];
    [*(a1 + 40) _cancelPurchasesWithBatchIdentifier:*(a1 + 64) client:*(a1 + 56) response:v9];
  }

  [*(*(a1 + 40) + 16) removeIndex:{*(a1 + 64), v11}];
  return [*(a1 + 40) _enqueueNextPurchase];
}

uint64_t sub_10021A850(uint64_t a1, void *a2)
{
  v3 = [a2 database];
  v4 = [PurchaseEntity queryWithDatabase:v3 predicate:[SSSQLiteComparisonPredicate predicateWithProperty:@"batch_id" equalToLongLong:*(a1 + 32)]];
  v7 = @"encoded_data";
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10021A94C;
  v6[3] = &unk_100327288;
  v6[4] = v3;
  [v4 enumeratePersistentIDsAndProperties:&v7 count:1 usingBlock:v6];
  return 1;
}

void sub_10021A94C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [SSPurchase newPurchaseWithDatabaseEncoding:*a3];
  if (v5)
  {
    v6 = v5;
    [v5 setUniqueIdentifier:a2];
    [v6 setPreauthenticated:1];
    v7 = [[PurchaseEntity alloc] initWithPersistentID:a2 inDatabase:*(a1 + 32)];
    v8 = @"encoded_data";
    v9 = [v6 databaseEncoding];
    [(PurchaseEntity *)v7 setValuesWithDictionary:[NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1]];
  }
}

id sub_10021AAAC(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForUniqueIdentifier:*(a1 + 56)];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 sendAuthenticateRequestWithContext:v3 responseHandler:v4];
}

void sub_10021AB5C(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForUniqueIdentifier:*(a1 + 48)];
  v3 = [v2 clientIdentifier];
  v4 = [*(a1 + 40) purchase];
  v5 = [v4 uniqueIdentifier];
  v6 = [[NSNumber alloc] initWithLongLong:v5];
  v7 = [v4 valueForDownloadProperty:SSDownloadPropertyKind];
  v8 = [v7 isEqual:@"book"];
  if ([*(a1 + 40) cancelsPurchaseBatch])
  {
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

    if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v27 = 138412290;
      v28 = objc_opt_class();
      LODWORD(v18) = 12;
      v17 = &v27;
      v12 = _os_log_send_and_compose_impl();
      if (v12)
      {
        v13 = v12;
        v14 = [NSString stringWithCString:v12 encoding:4, &v27, v18];
        free(v13);
        v17 = v14;
        SSFileLog();
      }
    }

    [*(a1 + 32) _cancelPurchasesWithBatchIdentifier:objc_msgSend(v4 client:"batchIdentifier" response:{v17), v2, *(a1 + 40)}];
  }

  else
  {
    v15 = [*(*(a1 + 32) + 48) containsObject:v6];
    v16 = +[DownloadsDatabase downloadsDatabase];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10021AE4C;
    v19[3] = &unk_10032CA08;
    v25 = v15;
    v19[4] = v2;
    v20 = *(a1 + 32);
    v21 = v7;
    v22 = v4;
    v23 = v3;
    v24 = v5;
    v26 = v8;
    [v16 modifyUsingPurchaseTransactionBlock:v19];
    if ((v15 & 1) == 0)
    {
      [v2 sendResponse:*(a1 + 40)];
    }
  }

  if ([objc_msgSend(*(a1 + 40) "decodedResponse")])
  {
    [*(a1 + 32) _checkStoreDownloadQueuesForPurchase:v4 response:{objc_msgSend(*(a1 + 40), "decodedResponse")}];
  }

  [*(*(a1 + 32) + 48) removeObject:v6];
  [*(*(a1 + 32) + 64) removeObject:v6];
  [*(a1 + 32) _enqueueNextPurchase];
}

uint64_t sub_10021AE4C(uint64_t a1, void *a2)
{
  if (*(a1 + 88) == 1)
  {
    [a2 deletePurchaseWithIdentifier:*(a1 + 80)];
  }

  else
  {
    v4 = -[PurchaseEntity initWithPersistentID:inDatabase:]([PurchaseEntity alloc], "initWithPersistentID:inDatabase:", *(a1 + 80), [a2 database]);
    v5 = *(a1 + 32);
    if (v5 && ([v5 finishesPurchases] & 1) == 0)
    {
      [(PurchaseEntity *)v4 deleteFromDatabase];
    }

    else
    {
      v6 = [*(a1 + 40) _newEncodedPurchaseEntityPropertiesWithResponse:*(a1 + 48)];
      [v6 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", 2), @"state"}];
      [(PurchaseEntity *)v4 setValuesWithDictionary:v6];
    }
  }

  if ((SSDownloadKindIsSoftwareKind() & 1) == 0 && ([*(a1 + 64) createsDownloads] & 1) != 0 || SSDownloadKindIsSoftwareKind() && objc_msgSend(*(a1 + 64), "createsJobs"))
  {
    if ([a2 placeholderDownloadCanceledForPurchaseIdentifier:*(a1 + 80)])
    {
      v7 = +[SSLogConfig sharedDaemonConfig];
      if (!v7)
      {
        v7 = +[SSLogConfig sharedConfig];
      }

      v8 = [v7 shouldLog];
      if ([v7 shouldLogToDisk])
      {
        v9 = v8 | 2;
      }

      else
      {
        v9 = v8;
      }

      if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v9 &= 2u;
      }

      if (v9)
      {
        v16 = 138412290;
        v17 = objc_opt_class();
        LODWORD(v15) = 12;
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          v11 = v10;
          [NSString stringWithCString:v10 encoding:4, &v16, v15];
          free(v11);
          SSFileLog();
        }
      }
    }

    else
    {
      v12 = [a2 replacePurchase:objc_msgSend(*(a1 + 48) withDownloadQueueResponse:"purchase") withClientIdentifier:{objc_msgSend(*(a1 + 48), "decodedResponse"), *(a1 + 72)}];
      v13 = v12;
      if (*(a1 + 89) == 1)
      {
        [*(a1 + 48) setDownloadIdentifiers:{objc_msgSend(v12, "array")}];
      }

      if (*(a1 + 88) == 1 && [v13 count])
      {
        [a2 finishDownloadsWithIdentifiers:v13 finalPhase:SSDownloadPhaseCanceled];
      }
    }
  }

  return 1;
}

uint64_t sub_10021B19C(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(NSMutableDictionary);
  v26 = 0;
  v27 = &v26;
  v28 = 0x3052000000;
  v29 = sub_100215494;
  v30 = sub_1002154A4;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v5 = objc_alloc_init(SSPurchaseResponse);
  [v5 setError:SSError()];
  v6 = [*(a1 + 32) _newEncodedPurchaseEntityPropertiesWithResponse:v5];
  v7 = +[PurchaseEntity queryWithDatabase:predicate:](PurchaseEntity, "queryWithDatabase:predicate:", [a2 database], +[SSSQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SSSQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"state", 1));
  v36[0] = @"client_id";
  v36[1] = @"encoded_data";
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10021B590;
  v21[3] = &unk_10032CA30;
  v21[4] = v4;
  v21[5] = a2;
  v21[6] = v6;
  v21[7] = &v26;
  v21[8] = &v22;
  [v7 enumeratePersistentIDsAndProperties:v36 count:2 usingBlock:v21];
  if (v23[3] >= 1)
  {
    v8 = +[SSLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    v10 = [v8 shouldLogToDisk];
    v11 = [v8 OSLogObject];
    if (v10)
    {
      v9 |= 2u;
    }

    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v12 = objc_opt_class();
      v13 = v23[3];
      v32 = 138412546;
      v33 = v12;
      v34 = 2048;
      v35 = v13;
      LODWORD(v19) = 22;
      v18 = &v32;
      v14 = _os_log_send_and_compose_impl();
      if (v14)
      {
        v15 = v14;
        v16 = [NSString stringWithCString:v14 encoding:4, &v32, v19];
        free(v15);
        v18 = v16;
        SSFileLog();
      }
    }

    [*(a1 + 32) _showPurchasesFailedDialogWithFirstTitle:v27[5] count:{v23[3], v18}];
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10021B68C;
  v20[3] = &unk_10032CA58;
  v20[4] = *(a1 + 32);
  v20[5] = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v20];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  return 1;
}

void sub_10021B548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

id sub_10021B590(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [SSPurchase newPurchaseWithDatabaseEncoding:a3[1]];
  [v6 setUniqueIdentifier:a2];
  if (v6)
  {
    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      *(*(*(a1 + 56) + 8) + 40) = [v6 valueForDownloadProperty:SSDownloadPropertyTitle];
    }

    if (*a3)
    {
      v7 = [*(a1 + 32) objectForKey:?];
      if (!v7)
      {
        v7 = objc_alloc_init(NSMutableArray);
        [*(a1 + 32) setObject:v7 forKey:*a3];
      }

      [v7 addObject:v6];
    }
  }

  result = [*(a1 + 40) cancelPurchaseWithIdentifier:a2 applyingProperties:*(a1 + 48)];
  ++*(*(*(a1 + 64) + 8) + 24);
  return result;
}

id sub_10021B68C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [*(a1 + 32) _clientForUniqueIdentifier:{objc_msgSend(a2, "longLongValue")}];
  v6 = *(a1 + 40);

  return [v5 sendResponse:v6 forPurchases:a3];
}

void sub_10021B78C(uint64_t a1)
{
  [*(a1 + 32) _clientForMessage:*(a1 + 40) connection:*(a1 + 48)];
  reply = xpc_dictionary_create_reply(*(a1 + 40));
  (*(*(a1 + 56) + 16))();
  xpc_connection_send_message(*(a1 + 48), reply);
  xpc_release(reply);
  xpc_release(*(a1 + 40));
  v3 = *(a1 + 48);

  xpc_release(v3);
}

uint64_t sub_10021B964(uint64_t a1, int a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_int64)
  {
    v5 = [[NSNumber alloc] initWithLongLong:xpc_int64_get_value(object)];
    [*(a1 + 32) addObject:v5];
  }

  return 1;
}

uint64_t sub_10021BAB0(uint64_t a1)
{
  v2 = [SSPurchase newPurchaseWithXPCEncoding:?];
  if (v2)
  {
    v3 = v2;
    SSVPurchaseAddDownloadPropertiesForBuyParameters();
    [v3 setDefaultUserAgent:*(a1 + 32)];
    [*(a1 + 40) addObject:v3];
  }

  return 1;
}

void sub_10021BF8C(id a1, unint64_t a2)
{
  if (!a2)
  {
    v4 = [[ISOpenURLRequest alloc] initWithURL:{+[NSURL URLWithString:](NSURL, "URLWithString:", @"prefs:root=General&path=USAGE"}];
    [v4 setITunesStoreURL:0];
    v3 = [[ISOpenURLOperation alloc] initWithOpenURLRequest:v4];
    [+[ISOperationQueue mainQueue](ISOperationQueue "mainQueue")];
  }
}

void sub_10021EDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10021EDBC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10021EDD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SSSQLiteComparisonPredicate predicateWithProperty:SSAppPurchaseHistoryEntryStoreID equalToValue:*(a1 + 32)];
  v5 = [v3 database];
  v6 = [SSAppPurchaseHistoryEntry queryWithDatabase:v5 predicate:v4];

  v10[0] = SSAppPurchaseHistoryEntryRedownloadParams;
  v10[1] = SSAppPurchaseHistoryEntryAccountUniqueIdentifier;
  v10[2] = SSAppPurchaseHistoryEntryIsFamilyShareable;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10021EF60;
  v9[3] = &unk_100327328;
  v9[4] = *(a1 + 40);
  [v6 enumeratePersistentIDsAndProperties:v10 count:3 usingBlock:v9];
  for (i = 2; i != -1; --i)
  {
  }

  return 1;
}

void sub_10021EF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (*a3 && *(a3 + 8))
  {
    v8 = +[SSAccountStore defaultStore];
    v9 = [v8 activeAccount];
    v10 = [v9 uniqueIdentifier];

    v11 = [*(a3 + 8) isEqualToNumber:v10];
    v12 = *(a3 + 16);
    v13 = v12;
    if (v12)
    {
      LODWORD(v12) = [v12 BOOLValue];
    }

    if ((v11 | v12))
    {
      v14 = [[NSString alloc] initWithFormat:@"%@&ownerDsid=%@", *a3, *(a3 + 8)];
      v15 = *(*(a1 + 32) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }
  }

  else
  {
    v17 = [*a3 copy];
    v18 = *(*(a1 + 32) + 8);
    v10 = *(v18 + 40);
    *(v18 + 40) = v17;
  }

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a5 = 1;
  }
}

void sub_10021F1DC(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) remoteAuthenticationHandler];
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, v9, v5);
  }

  else
  {
    v8 = SSError();
    v5[2](v5, 0, v8);
  }
}

void sub_10021FF84(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    goto LABEL_23;
  }

  v4 = objc_alloc_init(ISLoadURLBagOperation);
  v5 = +[ISOperationQueue mainQueue];
  v37 = v4;
  v6 = [NSArray arrayWithObjects:&v37 count:1];
  [v5 addOperations:v6 waitUntilFinished:1];

  if ([v4 success])
  {
    v7 = [v4 URLBag];
    v8 = [v7 valueForKey:@"install-attribution-max-cache-age"];

    v9 = -2592000.0;
    if (v8 && [v8 integerValue])
    {
      v9 = (-86400 * [v8 integerValue]);
    }

    goto LABEL_19;
  }

  v8 = +[SSLogConfig sharediTunesStoreConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  v10 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v11 = v10 | 2;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v8 OSLogObject];
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
    goto LABEL_17;
  }

  v35 = 138543362;
  v36 = objc_opt_class();
  v14 = v36;
  LODWORD(v33) = 12;
  v15 = _os_log_send_and_compose_impl();

  if (v15)
  {
    v12 = [NSString stringWithCString:v15 encoding:4, &v35, v33];
    free(v15);
    SSFileLog();
LABEL_17:
  }

  v9 = -2592000.0;
LABEL_19:

  v16 = [NSDate dateWithTimeIntervalSinceNow:v9];
  [v16 timeIntervalSince1970];
  v18 = (v17 * 1000.0);
  v19 = [v3 localTimestamp];
  v20 = [v19 longLongValue];

  if (v20 >= v18)
  {
    v22 = [v3 adNetworkId];
    v23 = [v3 campaignId];
    [v3 appAdamId];
    v34 = v4;
    v25 = v24 = a1;
    v26 = [v3 impressionId];
    v27 = [v3 timestamp];
    v28 = [v3 attributionSignature];
    v29 = [NSString stringWithFormat:@"{ ad-network-id = %@ campaign-id = %@; adam-id = %@; impression-id = %@; timestamp = %@; signature = %@; }", v22, v23, v25, v26, v27, v28];;

    a1 = v24;
    v4 = v34;

    v21 = [NSURL escapedStringForString:v29];

    v30 = [*(*(*(a1 + 48) + 8) + 40) stringByAppendingFormat:@"&%@=%@", @"ad-network", v21];
    v31 = *(*(a1 + 48) + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v30;
  }

  else
  {
    v21 = +[PurchaseActionsManager sharedInstance];
    [v21 removeInstallAttributionParamsBeforeDate:v16];
  }

LABEL_23:
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1002214C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002214F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10022150C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [v7 valueForProperty:@"is_purchase"];
  if ([v8 BOOLValue])
  {
    v9 = [v7 valueForProperty:@"purchase_id"];
    if (!v9)
    {
LABEL_5:

      goto LABEL_6;
    }

    v10 = [PurchaseEntity alloc];
    v11 = [v9 longLongValue];
    v12 = [*(a1 + 32) database];
    v13 = [(PurchaseEntity *)v10 initWithPersistentID:v11 inDatabase:v12];

    if (([(PurchaseEntity *)v13 existsInDatabase]& 1) != 0)
    {

      goto LABEL_5;
    }

    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v19 = [v16 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = v18;
    }

    else
    {
      v20 = v18 & 2;
    }

    if (v20)
    {
      v25[0] = 0;
      LODWORD(v24) = 2;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
LABEL_20:

        v22 = *(a1 + 32);
        v23 = [v7 databaseID];
        [v22 finishDownloadWithID:v23 finalPhase:SSDownloadPhaseCanceled updatePipeline:0];

        goto LABEL_21;
      }

      v19 = [NSString stringWithCString:v21 encoding:4, v25, v24];
      free(v21);
      SSFileLog();
    }

    goto LABEL_20;
  }

LABEL_6:
  v14 = [v7 valueForProperty:{@"IFNULL(download_state.phase, SSDownloadPhaseWaiting)"}];
  IsFinishedPhase = SSDownloadPhaseIsFinishedPhase();

  if ((IsFinishedPhase & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }

LABEL_21:
}

void sub_100222050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100222090(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  context = objc_autoreleasePoolPush();
  v7 = v6;
  v8 = [v7 kind];
  IsSoftwareKind = SSDownloadKindIsSoftwareKind();

  if (IsSoftwareKind)
  {
    v10 = [v7 requiredDeviceCapabilities];
    if (v10)
    {
      v11 = +[ISDevice sharedInstance];
      LODWORD(v12) = [v11 checkCapabilities:v10 withMismatches:0];
    }

    else
    {
      LODWORD(v12) = 1;
    }
  }

  else
  {
    LODWORD(v12) = 1;
  }

  v13 = [[Download alloc] initWithStoreDownload:v7];
  v14 = &CFDictionaryGetValue_ptr;
  v15 = [NSNumber numberWithBool:0];
  [(Download *)v13 setValue:v15 forProperty:@"is_purchase"];

  v16 = [NSNumber numberWithBool:1];
  [(Download *)v13 setValue:v16 forProperty:@"is_from_store"];

  [(Download *)v13 setValue:*(a1 + 32) forProperty:@"store_account_id"];
  v17 = [(Download *)v13 valueForProperty:@"is_store_queued"];
  if (!v17)
  {
    v18 = [NSNumber numberWithBool:1];
    [(Download *)v13 setValue:v18 forProperty:@"is_store_queued"];
  }

  v19 = [*(a1 + 40) downloadForStoreDownload:v7];
  if (!SSDebugShouldUseAppstored() || ([v7 kind], v20 = objc_claimAutoreleasedReturnValue(), v21 = SSDownloadKindIsSoftwareKind(), v20, !v21))
  {
    v28 = [v7 kind];
    IsBookToShimKind = SSDownloadKindIsBookToShimKind();

    if (IsBookToShimKind)
    {
      [*(a1 + 56) addObject:v7];
      goto LABEL_104;
    }

    v98 = v12;
    if (v19)
    {
      v30 = [v19 valueForProperty:@"download_state.phase"];
      v109[0] = SSDownloadPhaseDownloading;
      v109[1] = SSDownloadPhaseProcessing;
      v109[2] = SSDownloadPhaseDataRestore;
      v109[3] = SSDownloadPhaseInstalling;
      v93 = [NSArray arrayWithObjects:v109 count:4];
      v96 = v30;
      v31 = [v93 containsObject:v30];
      v32 = +[SSLogConfig sharedDaemonConfig];
      v33 = v32;
      if (v31)
      {
        if (!v32)
        {
          v33 = +[SSLogConfig sharedConfig];
        }

        v34 = [v33 shouldLog];
        if ([v33 shouldLogToDisk])
        {
          v35 = v34 | 2;
        }

        else
        {
          v35 = v34;
        }

        v36 = [v33 OSLogObject];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = v35;
        }

        else
        {
          v37 = v35 & 2;
        }

        if (!v37)
        {
          goto LABEL_95;
        }

        v94 = a4;
        v38 = objc_opt_class();
        v39 = v38;
        v101 = 138412802;
        v102 = v38;
        v103 = 2048;
        v104 = [v19 persistentID];
        v105 = 2112;
        v106 = v96;
        LODWORD(v91) = 32;
        v90 = &v101;
        v40 = _os_log_send_and_compose_impl();

        if (!v40)
        {
          a4 = v94;
          v14 = &CFDictionaryGetValue_ptr;
          LOBYTE(v12) = v98;
          goto LABEL_97;
        }

        v36 = [NSString stringWithCString:v40 encoding:4, &v101, v91];
        free(v40);
        v90 = v36;
        SSFileLog();
LABEL_94:
        a4 = v94;
LABEL_95:
        v14 = &CFDictionaryGetValue_ptr;
        LOBYTE(v12) = v98;
        goto LABEL_96;
      }

      if (!v32)
      {
        v33 = +[SSLogConfig sharedConfig];
      }

      v53 = [v33 shouldLog];
      if ([v33 shouldLogToDisk])
      {
        v54 = v53 | 2;
      }

      else
      {
        v54 = v53;
      }

      v55 = [v33 OSLogObject];
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        v56 = v54;
      }

      else
      {
        v56 = v54 & 2;
      }

      v94 = a4;
      if (v56)
      {
        v12 = objc_opt_class();
        v57 = v12;
        v101 = 138412802;
        v102 = v12;
        v103 = 2048;
        v104 = [v19 persistentID];
        v105 = 2112;
        v106 = v96;
        LODWORD(v91) = 32;
        v90 = &v101;
        v58 = _os_log_send_and_compose_impl();

        a4 = v94;
        LOBYTE(v12) = v98;
        if (!v58)
        {
          goto LABEL_82;
        }

        v55 = [NSString stringWithCString:v58 encoding:4, &v101, v91];
        free(v58);
        v90 = v55;
        SSFileLog();
      }

      else
      {
        LOBYTE(v12) = v98;
      }

LABEL_82:
      *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 40) updateDownloadEntityWithIdentifier:objc_msgSend(v19 withDownload:{"persistentID"), v13}];
      v14 = &CFDictionaryGetValue_ptr;
      if (*(*(*(a1 + 80) + 8) + 24) != 1)
      {
LABEL_98:

        goto LABEL_104;
      }

      v65 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v19 persistentID]);
      v33 = [NSOrderedSet orderedSetWithObjects:v65, 0];

      *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 40) restartDownloadsWithIdentifiers:v33];
      v36 = +[SSLogConfig sharedDaemonConfig];
      if (!v36)
      {
        v36 = +[SSLogConfig sharedConfig];
      }

      v66 = [v36 shouldLog];
      if ([v36 shouldLogToDisk])
      {
        v66 |= 2u;
      }

      v67 = [v36 OSLogObject];
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        v68 = v66;
      }

      else
      {
        v68 = v66 & 2;
      }

      if (v68)
      {
        v69 = objc_opt_class();
        v92 = v69;
        v70 = [v19 persistentID];
        v71 = *(*(*(a1 + 80) + 8) + 24);
        v101 = 138413058;
        v102 = v69;
        v103 = 2048;
        v104 = v70;
        v105 = 2112;
        v106 = v96;
        v107 = 1024;
        v108 = v71;
        LODWORD(v91) = 38;
        v90 = &v101;
        v72 = _os_log_send_and_compose_impl();

        if (!v72)
        {
          goto LABEL_94;
        }

        v67 = [NSString stringWithCString:v72 encoding:4, &v101, v91];
        free(v72);
        v90 = v67;
        SSFileLog();
      }

      LOBYTE(v12) = v98;

      a4 = v94;
      v14 = &CFDictionaryGetValue_ptr;
LABEL_96:

LABEL_97:
      goto LABEL_98;
    }

    v41 = v17;
    v42 = +[SSLogConfig sharedDaemonConfig];
    if (!v42)
    {
      v42 = +[SSLogConfig sharedConfig];
    }

    v43 = [v42 shouldLog];
    if ([v42 shouldLogToDisk])
    {
      v44 = v43 | 2;
    }

    else
    {
      v44 = v43;
    }

    v45 = [v42 OSLogObject];
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v44 &= 2u;
    }

    if (v44)
    {
      v101 = 138412546;
      v102 = objc_opt_class();
      v103 = 2112;
      v104 = v7;
      v46 = v102;
      LODWORD(v91) = 22;
      v90 = &v101;
      v47 = _os_log_send_and_compose_impl();

      if (!v47)
      {
LABEL_50:

        v48 = [(Download *)v13 valueForProperty:@"store_preorder_id"];
        if (v48 && SSGetItemIdentifierFromValue())
        {
          [(Download *)v13 setValue:SSDownloadPhasePaused forProperty:@"download_state.phase"];
          [*(a1 + 64) addObject:v48];
        }

        LOBYTE(v12) = v98;
        if (v13)
        {
          v49 = *(a1 + 40);
          v50 = [NSArray arrayWithObject:v13];
          v51 = [v49 addDownloads:v50];
          v52 = a1 + 80;
          *(*(*(a1 + 80) + 8) + 24) = v51 != 0;
        }

        else
        {
          v52 = a1 + 80;
          *(*(*(a1 + 80) + 8) + 24) = 0;
        }

        v17 = v41;
        v14 = &CFDictionaryGetValue_ptr;
        if (*(*(*v52 + 8) + 24) == 1)
        {
          v19 = [*(a1 + 40) downloadForStoreDownload:v7];
          if (v19)
          {
            v95 = a4;
            v59 = +[SSLogConfig sharedDaemonConfig];
            if (!v59)
            {
              v59 = +[SSLogConfig sharedConfig];
            }

            v60 = [v59 shouldLog];
            if ([v59 shouldLogToDisk])
            {
              v60 |= 2u;
            }

            v61 = [v59 OSLogObject];
            if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
            {
              v62 = v60;
            }

            else
            {
              v62 = v60 & 2;
            }

            if (v62)
            {
              v12 = objc_opt_class();
              v97 = v12;
              v63 = [v19 persistentID];
              v101 = 138412546;
              v102 = v12;
              v103 = 2048;
              v104 = v63;
              LODWORD(v91) = 22;
              v90 = &v101;
              v64 = _os_log_send_and_compose_impl();

              LOBYTE(v12) = v98;
              if (!v64)
              {
LABEL_102:

                a4 = v95;
                v14 = &CFDictionaryGetValue_ptr;
                goto LABEL_103;
              }

              v61 = [NSString stringWithCString:v64 encoding:4, &v101, v91];
              free(v64);
              v90 = v61;
              SSFileLog();
            }

            else
            {
              LOBYTE(v12) = v98;
            }

            goto LABEL_102;
          }
        }

        else
        {
          v19 = 0;
        }

LABEL_103:

        goto LABEL_104;
      }

      v45 = [NSString stringWithCString:v47 encoding:4, &v101, v91];
      free(v47);
      v90 = v45;
      SSFileLog();
    }

    goto LABEL_50;
  }

  if (v12)
  {
    v22 = +[SSLogConfig sharedDaemonConfig];
    if (!v22)
    {
      v22 = +[SSLogConfig sharedConfig];
    }

    v23 = [v22 shouldLog];
    if ([v22 shouldLogToDisk])
    {
      v24 = v23 | 2;
    }

    else
    {
      v24 = v23;
    }

    v25 = [v22 OSLogObject];
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v24 &= 2u;
    }

    if (v24)
    {
      v101 = 138412546;
      v102 = objc_opt_class();
      v103 = 2112;
      v104 = v7;
      v26 = v102;
      LODWORD(v91) = 22;
      v90 = &v101;
      v27 = _os_log_send_and_compose_impl();

      v14 = &CFDictionaryGetValue_ptr;
      if (!v27)
      {
LABEL_23:

        [*(a1 + 48) addObject:v13];
        LOBYTE(v12) = 0;
        goto LABEL_104;
      }

      v25 = [NSString stringWithCString:v27 encoding:4, &v101, v91];
      free(v27);
      v90 = v25;
      SSFileLog();
    }

    goto LABEL_23;
  }

LABEL_104:
  if (*(*(*(a1 + 80) + 8) + 24) == 1 && v19)
  {
    v73 = [objc_alloc(v14[170]) initWithLongLong:{objc_msgSend(v19, "persistentID")}];
    if (v12)
    {
      v74 = [v19 persistentID];
      v75 = [v7 kind];
      v76 = [ScratchManager directoryPathForDownloadID:v74 kind:v75 createIfNeeded:1];
      v77 = [v76 stringByAppendingPathComponent:@"iTunesMetadata.plist"];

      [v7 writeToFile:v77 options:0 error:0];
      [*(a1 + 72) removeObject:v73];

LABEL_120:
      goto LABEL_121;
    }

    v78 = +[SSLogConfig sharedDaemonConfig];
    if (!v78)
    {
      v78 = +[SSLogConfig sharedConfig];
    }

    v79 = [v78 shouldLog];
    if ([v78 shouldLogToDisk])
    {
      v80 = v79 | 2;
    }

    else
    {
      v80 = v79;
    }

    v81 = [v78 OSLogObject];
    if (!os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      v80 &= 2u;
    }

    if (v80)
    {
      v82 = objc_opt_class();
      v101 = 138412546;
      v102 = v82;
      v103 = 2112;
      v104 = v7;
      v99 = v7;
      v83 = v13;
      v84 = a1;
      v85 = v17;
      v86 = v19;
      v87 = a4;
      v88 = v82;
      LODWORD(v91) = 22;
      v89 = _os_log_send_and_compose_impl();

      a4 = v87;
      v19 = v86;
      v17 = v85;
      a1 = v84;
      v13 = v83;
      v7 = v99;

      if (!v89)
      {
LABEL_119:

        [*(a1 + 72) addObject:v73];
        goto LABEL_120;
      }

      v81 = [NSString stringWithCString:v89 encoding:4, &v101, v91];
      free(v89);
      SSFileLog();
    }

    goto LABEL_119;
  }

LABEL_121:

  objc_autoreleasePoolPop(context);
  *a4 = *(*(*(a1 + 80) + 8) + 24) ^ 1;
}

void sub_1002243FC(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 valueForProperty:@"asset_type"];
  v4 = [v3 isEqualToString:SSDownloadAssetTypeMedia];

  if (v4)
  {
    [v5 setValue:*(a1 + 32) forProperty:@"protection_type"];
  }
}

void sub_100224A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100224A6C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) finishDownloadWithID:a2 finalPhase:SSDownloadPhaseCanceled];
  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;

  objc_autoreleasePoolPop(v7);
}

void sub_100224D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100224DAC(uint64_t a1, uint64_t a2, id *a3, uint64_t a4, _BYTE *a5)
{
  result = [*a3 doubleValue];
  *(*(*(a1 + 32) + 8) + 24) = v8;
  *a5 = 1;
  return result;
}

void sub_100224F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_100224F80(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = objc_autoreleasePoolPush();
  [v9 setBatchIdentifier:*(a1 + 64)];
  v7 = [*(a1 + 32) _addEntityForPurchase:v9 managerIdentifier:*(a1 + 72) orderIdentifier:*(*(*(a1 + 48) + 8) + 24)];
  if (v7)
  {
    v8 = [v9 valueForDownloadProperty:SSDownloadPropertyStorePreorderIdentifier];
    if ([v9 createsDownloads] && !objc_msgSend(v8, "longLongValue"))
    {
      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _addPlaceholderDownloadForPurchase:v9 clientIdentifier:*(a1 + 40)];
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = *(a1 + 80) + *(*(*(a1 + 48) + 8) + 24);
  *a4 = *(*(*(a1 + 56) + 8) + 24) ^ 1;

  objc_autoreleasePoolPop(v6);
}

void sub_100226110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, char a25)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

void sub_100226204(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v5;
  }

  else
  {
    v7 = v5 & 2;
  }

  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = *(a1 + 32);
  v11 = 138543362;
  v12 = v8;
  LODWORD(v10) = 12;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    v6 = [NSString stringWithCString:v9 encoding:4, &v11, v10];
    free(v9);
    SSFileLog();
LABEL_12:
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  dispatch_semaphore_signal(WeakRetained);
}

void sub_100226A3C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[SSLogConfig sharedDaemonConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    v6 = [v3 OSLogObject];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v5 &= 2u;
    }

    if (v5)
    {
      *v10 = 138543618;
      *&v10[4] = objc_opt_class();
      *&v10[12] = 2114;
      *&v10[14] = v2;
      v7 = *&v10[4];
      LODWORD(v9) = 22;
      v8 = _os_log_send_and_compose_impl();

      if (!v8)
      {
LABEL_13:

        goto LABEL_14;
      }

      v6 = [NSString stringWithCString:v8 encoding:4, v10, v9, *v10, *&v10[16]];
      free(v8);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
}

void sub_100226BD8(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[SSLogConfig sharedDaemonConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    v6 = [v3 OSLogObject];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v5 &= 2u;
    }

    if (v5)
    {
      *v10 = 138543618;
      *&v10[4] = objc_opt_class();
      *&v10[12] = 2114;
      *&v10[14] = v2;
      v7 = *&v10[4];
      LODWORD(v9) = 22;
      v8 = _os_log_send_and_compose_impl();

      if (!v8)
      {
LABEL_13:

        goto LABEL_14;
      }

      v6 = [NSString stringWithCString:v8 encoding:4, v10, v9, *v10, *&v10[16]];
      free(v8);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
}

id sub_100227C3C(uint64_t a1)
{
  result = objc_alloc_init(*(a1 + 32));
  qword_100384178 = result;
  return result;
}

void sub_100227DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100227E2C(uint64_t a1)
{
  v2 = [*(a1 + 32) _wifiInterfaceName];
  if (v2)
  {
    v3 = v2;
    v9 = 0;
    v4 = getifaddrs(&v9);
    v5 = v9;
    if (v4)
    {
      if (!v9)
      {
        return;
      }

LABEL_12:
      freeifaddrs(v5);
      return;
    }

    if (v9)
    {
      do
      {
        if (v5->ifa_addr->sa_family == 2)
        {
          v6 = [[NSString alloc] initWithUTF8String:v5->ifa_name];
          if ([v6 isEqualToString:v3])
          {

            v7 = [NSString alloc];
            v8.s_addr = *&v5->ifa_addr->sa_data[2];
            *(*(*(a1 + 40) + 8) + 40) = [v7 initWithUTF8String:inet_ntoa(v8)];
          }
        }

        v5 = v5->ifa_next;
      }

      while (v5);
      v5 = v9;
      if (v9)
      {
        goto LABEL_12;
      }
    }
  }
}

uint64_t sub_100227F9C(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 8) != v2)
  {
    v3 = result;
    *(v1 + 8) = v2;
    v4 = [*(result + 32) _wifiClientTypeForManagerType:*(*(result + 32) + 8)];
    v5 = +[SSLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v11 = 138412546;
      v12 = objc_opt_class();
      v13 = 1024;
      v14 = v4;
      LODWORD(v10) = 18;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        [NSString stringWithCString:v8 encoding:4, &v11, v10];
        free(v9);
        SSFileLog();
      }
    }

    if (*(*(v3 + 32) + 24))
    {
      return WiFiManagerClientSetType();
    }

    else
    {
      result = WiFiManagerClientCreate();
      *(*(v3 + 32) + 24) = result;
    }
  }

  return result;
}

uint64_t DaemonPBFuseItemPreferenceReadFrom(uint64_t a1, void *a2)
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
        v46 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v46 & 0x7F) << v5;
        if ((v46 & 0x80) == 0)
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

      v13 = (v12 >> 3);
      if (v13 <= 2)
      {
        break;
      }

      if (v13 != 3)
      {
        if (v13 == 4)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 40) |= 2u;
          while (1)
          {
            v49 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v49 & 0x7F) << v30;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_65;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v32;
          }

LABEL_65:
          v43 = 16;
LABEL_79:
          *(a1 + v43) = v27;
          goto LABEL_80;
        }

        if (v13 != 5)
        {
          goto LABEL_60;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 40) |= 4u;
        while (1)
        {
          v47 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v47 & 0x7F) << v14;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_73;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_73:
        v44 = 36;
LABEL_74:
        *(a1 + v44) = v20;
        goto LABEL_80;
      }

      v28 = PBReaderReadString();
      v29 = *(a1 + 24);
      *(a1 + 24) = v28;

LABEL_80:
      v45 = [a2 position];
      if (v45 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 != 1)
    {
      if (v13 != 2)
      {
LABEL_60:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_80;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        v50 = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v50 & 0x7F) << v21;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          v27 = 0;
          goto LABEL_78;
        }
      }

      if ([a2 hasError])
      {
        v27 = 0;
      }

      else
      {
        v27 = v23;
      }

LABEL_78:
      v43 = 8;
      goto LABEL_79;
    }

    v36 = 0;
    v37 = 0;
    v38 = 0;
    while (1)
    {
      v48 = 0;
      v39 = [a2 position] + 1;
      if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
      {
        v41 = [a2 data];
        [v41 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v38 |= (v48 & 0x7F) << v36;
      if ((v48 & 0x80) == 0)
      {
        break;
      }

      v36 += 7;
      v11 = v37++ >= 9;
      if (v11)
      {
        v20 = 0;
        goto LABEL_69;
      }
    }

    if ([a2 hasError])
    {
      v20 = 0;
    }

    else
    {
      v20 = v38;
    }

LABEL_69:
    v44 = 32;
    goto LABEL_74;
  }

  return [a2 hasError] ^ 1;
}

void sub_10022A5D4(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  *v12 = 138543874;
  *&v12[4] = objc_opt_class();
  *&v12[12] = 1024;
  *&v12[14] = a2;
  *&v12[18] = 2112;
  *&v12[20] = v4;
  v9 = *&v12[4];
  LODWORD(v11) = 28;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    v8 = [NSString stringWithCString:v10 encoding:4, v12, v11, *v12, *&v12[16]];
    free(v10);
    SSFileLog();
LABEL_11:
  }
}

void sub_10022AADC(uint64_t a1, int a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = +[SSLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 OSLogObject];
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_11;
  }

  v12 = objc_opt_class();
  v13 = v12;
  [v6 componentsJoinedByString:{@", "}];
  v16 = 138544130;
  v17 = v12;
  v18 = 1024;
  v19 = a2;
  v21 = v20 = 2114;
  v22 = 2112;
  v23 = v7;
  LODWORD(v15) = 38;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    v11 = [NSString stringWithCString:v14 encoding:4, &v16, v15];
    free(v14);
    SSFileLog();
LABEL_11:
  }
}

uint64_t sub_10022B5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3 == 0);
  }

  return result;
}

void sub_10022BB0C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  *v10 = 138543618;
  *&v10[4] = objc_opt_class();
  *&v10[12] = 2112;
  *&v10[14] = v2;
  v7 = *&v10[4];
  LODWORD(v9) = 22;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    v6 = [NSString stringWithCString:v8 encoding:4, v10, v9, *v10, *&v10[16]];
    free(v8);
    SSFileLog();
LABEL_11:
  }
}

void sub_10022C070(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[SSLogConfig sharedDaemonConfig];
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v9 &= 2u;
    }

    if (!v9)
    {
      goto LABEL_22;
    }

    *v20 = 138543618;
    *&v20[4] = objc_opt_class();
    *&v20[12] = 2114;
    *&v20[14] = v5;
    v11 = *&v20[4];
    LODWORD(v19) = 22;
    v12 = _os_log_send_and_compose_impl();

    if (!v12)
    {
      goto LABEL_23;
    }

LABEL_21:
    v10 = [NSString stringWithCString:v12 encoding:4, v20, v19, *v20, *&v20[16]];
    free(v12);
    SSFileLog();
LABEL_22:

    goto LABEL_23;
  }

  if (!v6)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v13 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v14 = v13 | 2;
  }

  else
  {
    v14 = v13;
  }

  v15 = [v7 OSLogObject];
  if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v14 &= 2u;
  }

  if (!v14)
  {

    goto LABEL_23;
  }

  v16 = objc_opt_class();
  v17 = *(a1 + 32);
  v18 = v16;
  *v20 = 138543874;
  *&v20[4] = v16;
  *&v20[12] = 2048;
  *&v20[14] = [v17 count];
  *&v20[22] = 1024;
  v21 = a2;
  LODWORD(v19) = 28;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    goto LABEL_21;
  }

LABEL_23:
}

void sub_10022CBEC(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 copyJobActivity];
  v4 = [v3 clientID];

  if (!v4)
  {
    [v3 setClientID:*(a1 + 32)];
  }

  v5 = [v3 storeAccountID];

  if (!v5)
  {
    v6 = [*(a1 + 40) uniqueIdentifier];
    [v3 setStoreAccountID:v6];
  }

  v7 = [v3 storeAccountName];

  if (!v7)
  {
    v8 = [*(a1 + 40) accountName];
    [v3 setStoreAccountName:v8];
  }

  v9 = [v13 databaseID];
  v10 = *(a1 + 48);
  if (v9)
  {
    v11 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v13 databaseID]);
    [v10 addActivity:v3 withIdentifier:v11];
  }

  else
  {
    v12 = [v10 addActivity:v3];
  }
}

void sub_10022CFD8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
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
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v11 &= 2u;
  }

  if (v11)
  {
    v13 = objc_opt_class();
    v14 = v13;
    [v7 componentsJoinedByString:{@", "}];
    v18 = 138544130;
    v19 = v13;
    v20 = 1024;
    v21 = a2;
    v23 = v22 = 2114;
    v24 = 2112;
    v25 = v8;
    LODWORD(v17) = 38;
    v15 = _os_log_send_and_compose_impl();

    if (!v15)
    {
      goto LABEL_12;
    }

    v12 = [NSString stringWithCString:v15 encoding:4, &v18, v17];
    free(v15);
    SSFileLog();
  }

LABEL_12:
  v16 = *(a1 + 32);
  if (v16)
  {
    (*(v16 + 16))(v16, a2, v7, v8);
  }
}

void sub_10022D35C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = +[SSLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 OSLogObject];
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_11;
  }

  v12 = objc_opt_class();
  v13 = *(a1 + 32);
  v14 = v12;
  [v6 componentsJoinedByString:{@", "}];
  v17 = 138544130;
  v18 = v12;
  v19 = 2114;
  v20 = v13;
  v22 = v21 = 2112;
  v23 = 2112;
  v24 = v7;
  LODWORD(v16) = 42;
  v15 = _os_log_send_and_compose_impl();

  if (v15)
  {
    v11 = [NSString stringWithCString:v15 encoding:4, &v17, v16];
    free(v15);
    SSFileLog();
LABEL_11:
  }
}

uint64_t sub_10022D5EC(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100384188;
  qword_100384188 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_10022DBB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    if (a2)
    {
      v5 = 0;
    }

    else
    {
      v5 = SSError();
      v3 = *(a1 + 32);
    }

    v6 = v5;
    (*(v3 + 16))(v3, a2);
  }
}

void sub_10022DF20(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v13 = +[SSLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    v14 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = v14 | 2;
    }

    else
    {
      v15 = v14;
    }

    v16 = [v13 OSLogObject];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v52 = 138412290;
      v53 = v18;
      LODWORD(v51) = 12;
      v49 = &v52;
      v19 = _os_log_send_and_compose_impl();

      if (!v19)
      {
        goto LABEL_27;
      }

      v16 = [NSString stringWithCString:v19 encoding:4, &v52, v51];
      free(v19);
      v49 = v16;
      SSFileLog();
    }

LABEL_27:
    v6 = objc_alloc_init(ISLoadURLBagOperation);
    v20 = +[ISOperationQueue mainQueue];
    v56 = v6;
    v21 = [NSArray arrayWithObjects:&v56 count:1];
    [v20 addOperations:v21 waitUntilFinished:1];

    if ([v6 success])
    {
      v22 = [v6 URLBag];
      v23 = [v22 valueForKey:@"install-attribution-max-cache-age"];

      v24 = -2592000.0;
      if (v23 && [v23 integerValue])
      {
        v24 = (-86400 * [v23 integerValue]);
      }

      v25 = [v6 URLBag];
      v26 = [v25 valueForKey:@"install-attribution-max-pingback-cache-age"];

      v27 = -5184000.0;
      if (v26 && [v26 integerValue])
      {
        v27 = (-86400 * [v26 integerValue]);
      }
    }

    else
    {
      v23 = +[SSLogConfig sharediTunesStoreConfig];
      if (!v23)
      {
        v23 = +[SSLogConfig sharedConfig];
      }

      v34 = [v23 shouldLog];
      if ([v23 shouldLogToDisk])
      {
        v35 = v34 | 2;
      }

      else
      {
        v35 = v34;
      }

      v26 = [v23 OSLogObject];
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v35 &= 2u;
      }

      if (v35)
      {
        v36 = objc_opt_class();
        v52 = 138543362;
        v53 = v36;
        v37 = v36;
        LODWORD(v51) = 12;
        v50 = &v52;
        v38 = _os_log_send_and_compose_impl();

        if (!v38)
        {
          v24 = -2592000.0;
          v27 = -5184000.0;
LABEL_56:

          v39 = +[PurchaseActionsManager sharedInstance];
          v40 = [NSDate dateWithTimeIntervalSinceNow:v24];
          [v39 removeInstallAttributionParamsBeforeDate:v40];

          v41 = +[PurchaseActionsManager sharedInstance];
          v42 = [NSDate dateWithTimeIntervalSinceNow:v27];
          [v41 removeNonPendingInstallAttributionPingbacksBeforeDate:v42];

          if (xpc_activity_set_state(v3, 5))
          {
            goto LABEL_70;
          }

          v33 = +[SSLogConfig sharedDaemonConfig];
          if (!v33)
          {
            v33 = +[SSLogConfig sharedConfig];
          }

          v43 = [v33 shouldLog];
          if ([v33 shouldLogToDisk])
          {
            v44 = v43 | 2;
          }

          else
          {
            v44 = v43;
          }

          v45 = [v33 OSLogObject];
          if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            v44 &= 2u;
          }

          if (v44)
          {
            v46 = objc_opt_class();
            v47 = NSStringFromClass(v46);
            v52 = 138412290;
            v53 = v47;
            LODWORD(v51) = 12;
            v48 = _os_log_send_and_compose_impl();

            if (!v48)
            {
              goto LABEL_68;
            }

            v45 = [NSString stringWithCString:v48 encoding:4, &v52, v51];
            free(v48);
            SSFileLog();
          }

          goto LABEL_68;
        }

        v26 = [NSString stringWithCString:v38 encoding:4, &v52, v51];
        free(v38);
        v50 = v26;
        SSFileLog();
      }

      v24 = -2592000.0;
      v27 = -5184000.0;
    }

    goto LABEL_56;
  }

  v5 = state;
  if (state)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v28 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v29 = v28 | 2;
    }

    else
    {
      v29 = v28;
    }

    v30 = [v6 OSLogObject];
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v29 &= 2u;
    }

    if (!v29)
    {

      goto LABEL_70;
    }

    v31 = objc_opt_class();
    NSStringFromClass(v31);
    v53 = v52 = 138412546;
    v54 = 1024;
    v55 = v5;
    LODWORD(v51) = 18;
    v32 = _os_log_send_and_compose_impl();

    if (!v32)
    {
      goto LABEL_70;
    }

    v33 = [NSString stringWithCString:v32 encoding:4, &v52, v51];
    free(v32);
    SSFileLog();
LABEL_68:

    goto LABEL_70;
  }

  v6 = xpc_activity_copy_criteria(v3);
  if (!v6)
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      NSStringFromClass(v11);
      v53 = v52 = 138412290;
      LODWORD(v51) = 12;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_15:

        xpc_activity_set_criteria(v3, *(a1 + 32));
        goto LABEL_70;
      }

      v10 = [NSString stringWithCString:v12 encoding:4, &v52, v51];
      free(v12);
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_70:
}

void sub_10022EAC0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (![v2 count])
  {
    +[PurchaseActionsManager unregisterInstallAttributionPingbackRetryTask];
    goto LABEL_26;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v30 = v2;
  obj = v2;
  v33 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (!v33)
  {
    goto LABEL_24;
  }

  v32 = *v40;
  do
  {
    for (i = 0; i != v33; i = i + 1)
    {
      if (*v40 != v32)
      {
        objc_enumerationMutation(obj);
      }

      v4 = *(*(&v39 + 1) + 8 * i);
      v5 = [v4 appAdamId];
      v6 = [v5 copy];

      v7 = [NSMutableURLRequest alloc];
      v8 = [v4 pingbackUrl];
      v9 = [v7 initWithURL:v8 cachePolicy:1 timeoutInterval:60.0];

      [v9 setHTTPMethod:@"POST"];
      v49[0] = @"ad-network-id";
      v10 = [v4 adNetworkId];
      v50[0] = v10;
      v50[1] = v6;
      v49[1] = @"app-id";
      v49[2] = @"campaign-id";
      v11 = [v4 campaignId];
      v50[2] = v11;
      v49[3] = @"transaction-id";
      v12 = [v4 transactionId];
      v50[3] = v12;
      v49[4] = @"attribution-signature";
      v13 = [v4 attributionSignature];
      v50[4] = v13;
      v14 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:5];

      v38 = 0;
      v15 = [NSJSONSerialization dataWithJSONObject:v14 options:1 error:&v38];
      v16 = v38;
      if (v16)
      {
        v17 = +[SSLogConfig sharedDaemonConfig];
        if (!v17)
        {
          v17 = +[SSLogConfig sharedConfig];
        }

        v18 = [v17 shouldLog];
        if ([v17 shouldLogToDisk])
        {
          v19 = v18 | 2;
        }

        else
        {
          v19 = v18;
        }

        v20 = [v17 OSLogObject];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = v19;
        }

        else
        {
          v21 = v19 & 2;
        }

        if (v21)
        {
          v22 = objc_opt_class();
          v43 = 138543874;
          v44 = v22;
          v45 = 2112;
          v46 = v6;
          v47 = 2114;
          v48 = v16;
          v23 = v22;
          LODWORD(v29) = 32;
          v28 = &v43;
          v24 = _os_log_send_and_compose_impl();

          if (v24)
          {
            v20 = [NSString stringWithCString:v24 encoding:4, &v43, v29];
            free(v24);
            v28 = v20;
            SSFileLog();
            goto LABEL_19;
          }
        }

        else
        {
LABEL_19:
        }

        [*(*(a1 + 32) + 8) removeInstallAttributionPingbackForApp:v6];
        goto LABEL_22;
      }

      [v9 setHTTPBody:v15];
      [v9 setValue:@"App Store" forHTTPHeaderField:@"User-Agent"];
      [v9 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
      v25 = [v4 retryCount] + 1 >= *(a1 + 40);
      v26 = +[NSURLSession sharedSession];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10022EFCC;
      v35[3] = &unk_10032CDF8;
      v35[4] = *(a1 + 32);
      v36 = v6;
      v37 = v25;
      v27 = [v26 dataTaskWithRequest:v9 completionHandler:v35];

      [v27 resume];
LABEL_22:
    }

    v33 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
  }

  while (v33);
LABEL_24:

  v2 = v30;
LABEL_26:
}

void sub_10022EFCC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v18 = *(a1 + 40);
    v19 = *(*(a1 + 32) + 8);
    goto LABEL_16;
  }

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
  if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v12 &= 2u;
  }

  if (v12)
  {
    v14 = objc_opt_class();
    v15 = *(a1 + 40);
    *v22 = 138543874;
    *&v22[4] = v14;
    *&v22[12] = 2112;
    *&v22[14] = v15;
    *&v22[22] = 2114;
    v23 = v9;
    v16 = v14;
    LODWORD(v21) = 32;
    v20 = v22;
    v17 = _os_log_send_and_compose_impl();

    if (!v17)
    {
      goto LABEL_13;
    }

    v13 = [NSString stringWithCString:v17 encoding:4, v22, v21, *v22, *&v22[16], v23];
    free(v17);
    v20 = v13;
    SSFileLog();
  }

LABEL_13:
  v18 = *(a1 + 40);
  v19 = *(*(a1 + 32) + 8);
  if (*(a1 + 48) == 1)
  {
LABEL_16:
    [v19 removeInstallAttributionPingbackForApp:{v18, v20}];
    goto LABEL_17;
  }

  [v19 incrementPingbackRetryCountForApp:v18];
LABEL_17:
}

void sub_10022F2F8(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state != 2)
  {
    v5 = state;
    if (!state)
    {
      v6 = xpc_activity_copy_criteria(v3);
      if (!v6)
      {
        v7 = +[SSLogConfig sharedDaemonConfig];
        if (!v7)
        {
          v7 = +[SSLogConfig sharedConfig];
        }

        v8 = [v7 shouldLog];
        if ([v7 shouldLogToDisk])
        {
          v9 = v8 | 2;
        }

        else
        {
          v9 = v8;
        }

        v10 = [v7 OSLogObject];
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v9 &= 2u;
        }

        if (v9)
        {
          v11 = objc_opt_class();
          NSStringFromClass(v11);
          v34 = v33 = 138412290;
          LODWORD(v32) = 12;
          v12 = _os_log_send_and_compose_impl();

          if (!v12)
          {
LABEL_15:

            xpc_activity_set_criteria(v3, *(a1 + 32));
            goto LABEL_50;
          }

          v10 = [NSString stringWithCString:v12 encoding:4, &v33, v32];
          free(v12);
          SSFileLog();
        }

        goto LABEL_15;
      }

LABEL_50:

      goto LABEL_51;
    }

    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v27 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v28 = v27 | 2;
    }

    else
    {
      v28 = v27;
    }

    v29 = [v6 OSLogObject];
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v28 &= 2u;
    }

    if (!v28)
    {

      goto LABEL_50;
    }

    v30 = objc_opt_class();
    NSStringFromClass(v30);
    v34 = v33 = 138412546;
    v35 = 1024;
    v36 = v5;
    LODWORD(v32) = 18;
    v26 = _os_log_send_and_compose_impl();

    if (!v26)
    {
      goto LABEL_50;
    }

    goto LABEL_47;
  }

  v13 = +[SSLogConfig sharedDaemonConfig];
  if (!v13)
  {
    v13 = +[SSLogConfig sharedConfig];
  }

  v14 = [v13 shouldLog];
  if ([v13 shouldLogToDisk])
  {
    v15 = v14 | 2;
  }

  else
  {
    v15 = v14;
  }

  v16 = [v13 OSLogObject];
  if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v15 &= 2u;
  }

  if (v15)
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v33 = 138412290;
    v34 = v18;
    LODWORD(v32) = 12;
    v31 = &v33;
    v19 = _os_log_send_and_compose_impl();

    if (!v19)
    {
      goto LABEL_27;
    }

    v16 = [NSString stringWithCString:v19 encoding:4, &v33, v32];
    free(v19);
    v31 = v16;
    SSFileLog();
  }

LABEL_27:
  v20 = +[PurchaseActionsManager sharedInstance];
  [v20 sendPendingPingbacks];

  if (!xpc_activity_set_state(v3, 5))
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v21 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v22 = v21 | 2;
    }

    else
    {
      v22 = v21;
    }

    v23 = [v6 OSLogObject];
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v22 &= 2u;
    }

    if (!v22)
    {
      goto LABEL_48;
    }

    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v33 = 138412290;
    v34 = v25;
    LODWORD(v32) = 12;
    v26 = _os_log_send_and_compose_impl();

    if (!v26)
    {
      goto LABEL_50;
    }

LABEL_47:
    v23 = [NSString stringWithCString:v26 encoding:4, &v33, v32];
    free(v26);
    SSFileLog();
LABEL_48:

    goto LABEL_50;
  }

LABEL_51:
}

void sub_10022FBC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10022FBE4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleBackgroundTaskEvent:v4];
}

void sub_10022FDF8(uint64_t a1)
{
  if (![*(*(a1 + 32) + 40) operationCount])
  {
    v24 = a1;
    v2 = +[SSLogConfig sharedDaemonConfig];
    if (!v2)
    {
      v2 = +[SSLogConfig sharedConfig];
    }

    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      v4 = v3 | 2;
    }

    else
    {
      v4 = v3;
    }

    v5 = [v2 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = v4;
    }

    else
    {
      v6 = v4 & 2;
    }

    if (v6)
    {
      v7 = objc_opt_class();
      v8 = *(*(v24 + 32) + 56);
      v9 = v7;
      *location = 138412546;
      *&location[4] = v7;
      v33 = 2048;
      v34 = [v8 count];
      LODWORD(v23) = 22;
      v22 = location;
      v10 = _os_log_send_and_compose_impl();

      if (v10)
      {
        v11 = [NSString stringWithCString:v10 encoding:4, location, v23];
        free(v10);
        v22 = v11;
        SSFileLog();
      }
    }

    else
    {
    }

    v12 = objc_alloc_init(NSMutableDictionary);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = *(*(v24 + 32) + 56);
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v14)
    {
      v15 = *v28;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v27 + 1) + 8 * i);
          v18 = [v17 sourceApplicationIdentifier];
          if (v18)
          {
            v19 = v18;
          }

          else
          {
            v19 = &stru_10033CC30;
          }

          v20 = [v12 objectForKey:v19];
          v21 = v20;
          if (v20)
          {
            [v20 addObject:v17];
          }

          else
          {
            v21 = objc_alloc_init(NSMutableArray);
            [v21 addObject:v17];
            [v12 setObject:v21 forKey:v19];
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v14);
    }

    objc_initWeak(location, *(v24 + 32));
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100230194;
    v25[3] = &unk_10032CE70;
    objc_copyWeak(&v26, location);
    v25[4] = *(v24 + 32);
    [v12 enumerateKeysAndObjectsUsingBlock:v25];
    objc_destroyWeak(&v26);
    objc_destroyWeak(location);
  }
}

void sub_100230170(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_100230194(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [[MediaSocialStatusPollOperation alloc] initWithStatusPollRequests:v6];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1002302A4;
  v12 = &unk_10032CE48;
  objc_copyWeak(&v14, (a1 + 40));
  v8 = v6;
  v13 = v8;
  [(MediaSocialStatusPollOperation *)v7 setResponseBlock:&v9];
  [*(*(a1 + 32) + 40) addOperation:{v7, v9, v10, v11, v12}];

  objc_destroyWeak(&v14);
}

void sub_1002302A4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishRequests:*(a1 + 32) withResponses:v3];
}

void sub_10023064C(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v32;
    v29 = a1;
    do
    {
      v7 = 0;
      v30 = v5;
      do
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v31 + 1) + 8 * v7);
        v9 = *(a1 + 40);
        v10 = [v8 activityIdentifier];
        v11 = [v9 objectForKey:v10];

        if (v11)
        {
          Current = CFAbsoluteTimeGetCurrent();
          [v8 postCreateTime];
          v14 = v13;
          [v8 pollingDuration];
          v16 = v14 + v15;
          if (Current <= v16)
          {
            if ([v11 result] == 4)
            {
              goto LABEL_20;
            }
          }

          else
          {
            v17 = +[SSLogConfig sharedDaemonConfig];
            if (!v17)
            {
              v17 = +[SSLogConfig sharedConfig];
            }

            v18 = [v17 shouldLog];
            if ([v17 shouldLogToDisk])
            {
              v18 |= 2u;
            }

            v19 = [v17 OSLogObject];
            if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v18 &= 2u;
            }

            if (v18)
            {
              v20 = objc_opt_class();
              v35 = 138413058;
              v36 = v20;
              v37 = 2112;
              v38 = v8;
              v39 = 2048;
              v40 = Current;
              v41 = 2048;
              v42 = v16;
              v21 = v6;
              v22 = v3;
              v23 = v2;
              v24 = v20;
              LODWORD(v28) = 42;
              v27 = &v35;
              v25 = _os_log_send_and_compose_impl();

              v2 = v23;
              v3 = v22;
              v6 = v21;
              a1 = v29;

              if (v25)
              {
                v19 = [NSString stringWithCString:v25 encoding:4, &v35, v28];
                free(v25);
                v27 = v19;
                SSFileLog();
                goto LABEL_17;
              }
            }

            else
            {
LABEL_17:
            }

            [v11 setResult:5];
            v5 = v30;
LABEL_20:
            [*(*(a1 + 48) + 56) removeObject:{v8, v27}];
          }

          [v2 addObject:v11];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v5);
  }

  if (*(a1 + 56) == 1 && [*(*(a1 + 48) + 56) count])
  {
    *(*(a1 + 48) + 32) = CFAbsoluteTimeGetCurrent() + *(*(a1 + 48) + 48);
    [*(a1 + 48) _addBackgroundTaskJob];
  }

  v26 = [*(a1 + 48) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v26 pollingCoordinator:*(a1 + 48) didPollWithResponses:v2];
  }
}