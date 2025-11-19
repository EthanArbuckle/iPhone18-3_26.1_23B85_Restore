int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  v4 = +[NSXPCListener serviceListener];
  v5 = objc_alloc_init(TLServiceAgent);
  [v4 setDelegate:v5];
  [v4 resume];
  [v4 setDelegate:0];

  objc_autoreleasePoolPop(v3);
  return 0;
}

void sub_1000010E8(uint64_t a1, void *a2, void *a3, const __CFString **a4)
{
  if (a2 && a3 && a4)
  {
    v8 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v9 = *(a1 + 32);
      v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v27;
        while (2)
        {
          v13 = 0;
          do
          {
            if (*v27 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v26 + 1) + 8 * v13);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v23 = v14;
              *a3 = v14;
              v24 = @"key of user generated vibration pattern wrapper";
              goto LABEL_29;
            }

            v13 = v13 + 1;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v9 = [*(a1 + 32) objectForKey:@"Name"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [*(a1 + 32) objectForKey:@"Pattern"];
        if (![TLVibrationPattern isValidVibrationPatternPropertyListRepresentation:v15])
        {
          *a2 = [NSError tl_errorWithDomain:@"TLServiceValidationErrorDomain" description:@"Invalid vibration pattern: %@", *(a1 + 32)];
        }
      }

      else
      {
        v25 = v9;
        *a3 = v9;
        v24 = @"name of user generated vibration pattern";
LABEL_29:
        *a4 = v24;
      }
    }

    else
    {
      *a3 = *(a1 + 32);
      *a4 = @"user generated vibration pattern wrapper";
    }
  }

  else
  {
    v16 = TLLogGeneral();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);

    if (v17)
    {
      v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Vibrations/TLVibrationPersistenceUtilities.m"];
      v19 = TLLogGeneral();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v18 lastPathComponent];
        v21 = +[NSThread callStackSymbols];
        *buf = 136381443;
        v32 = "+[TLVibrationPersistenceUtilities _objectIsValidUserGeneratedVibrationPattern:error:]_block_invoke";
        v33 = 2113;
        v34 = v20;
        v35 = 2049;
        v36 = 71;
        v37 = 2113;
        v38 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
      }
    }

    else
    {
      v18 = TLLogGeneral();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100003944();
      }
    }

    v22 = TLLogGeneral();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100003978();
    }
  }
}

void sub_100001510(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (!a2 || !a3 || !a4)
  {
    v18 = TLLogGeneral();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);

    if (v19)
    {
      v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Vibrations/TLVibrationPersistenceUtilities.m"];
      v21 = TLLogGeneral();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v20 lastPathComponent];
        v23 = +[NSThread callStackSymbols];
        *buf = 136381443;
        v35 = "+[TLVibrationPersistenceUtilities objectIsValidUserGeneratedVibrationPatternsDictionary:error:]_block_invoke";
        v36 = 2113;
        v37 = v22;
        v38 = 2049;
        v39 = 109;
        v40 = 2113;
        v41 = v23;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
      }
    }

    else
    {
      v20 = TLLogGeneral();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100003944();
      }
    }

    v24 = TLLogGeneral();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100003978();
    }

    return;
  }

  v8 = *(a1 + 32);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    *a3 = *(a1 + 32);
    *a4 = @"root object";
    return;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = *(a1 + 32);
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v10)
  {
    goto LABEL_31;
  }

  v11 = v10;
  v27 = a2;
  v12 = *v30;
  while (2)
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v30 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v29 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = v14;
        *a3 = v14;
        *a4 = @"key object";
        goto LABEL_31;
      }

      if (![v14 hasPrefix:@"usergeneratedvibration:"])
      {
        v17 = [NSError tl_errorWithDomain:@"TLServiceValidationErrorDomain" description:@"Invalid key object: %@. All key objects need to start with %@", v14, @"usergeneratedvibration:"];

        if (!v17)
        {
          return;
        }

        goto LABEL_30;
      }

      v15 = *(a1 + 40);
      v16 = [*(a1 + 32) objectForKey:v14];
      v28 = 0;
      [v15 _objectIsValidUserGeneratedVibrationPattern:v16 error:&v28];
      v17 = v28;

      if (v17)
      {

LABEL_30:
        v26 = v17;
        *v27 = v17;
        v9 = v17;
        goto LABEL_31;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_31:
}

void sub_100001910(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100001B6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v11;
      *(v11 + 24) = 1;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v7 = v11;
      if (isKindOfClass)
      {
        *(v11 + 24) = 1;
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_100001CD8;
        v9[3] = &unk_1000082C0;
        v9[4] = &v10;
        [v6 enumerateKeysAndObjectsUsingBlock:v9];
        v7 = v11;
      }
    }

    if (*(v7 + 24) == 1)
    {
      [*(a1 + 32) setObject:v6 forKey:v5];
    }

    _Block_object_dispose(&v10, 8);
  }
}

void sub_100001CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001CD8(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

BOOL sub_10000212C(uint64_t a1, uint64_t a2)
{
  result = [TLVibrationPersistenceUtilities objectIsValidUserGeneratedVibrationPatternsDictionary:*(a1 + 32) error:a2];
  if (result)
  {
    v4 = +[TLVibrationPersistenceUtilities userGeneratedVibrationStoreFileURL];
    v5 = [*(a1 + 32) writeToURL:v4 atomically:1];

    return v5;
  }

  return result;
}

BOOL sub_1000021A0(id a1, id *a2)
{
  v3 = +[TLVibrationPersistenceUtilities userGeneratedVibrationStoreFileURL];
  v4 = +[NSFileManager defaultManager];
  LOBYTE(a2) = [v4 removeItemAtURL:v3 error:a2];

  return a2;
}

uint64_t TLLogGeneral()
{
  if (qword_10000C9F0 != -1)
  {
    sub_100003B3C();
  }

  return qword_10000C9D0;
}

uint64_t TLLogVibrationManagement()
{
  if (qword_10000C9F0 != -1)
  {
    sub_100003B3C();
  }

  return qword_10000C9E8;
}

void sub_100002748(id a1)
{
  qword_10000C9D0 = os_log_create("com.apple.ToneLibrary", "General");
  qword_10000C9D8 = os_log_create("com.apple.ToneLibrary", "Playback");
  qword_10000C9E0 = os_log_create("com.apple.ToneLibrary", "ToneManagement");
  qword_10000C9E8 = os_log_create("com.apple.ToneLibrary", "VibrationManagement");
}

BOOL sub_10000388C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v12 = 0;
  if (a2 && (isKindOfClass & 1) != 0)
  {
    v13 = [v10 objCType];
    if (!strcmp(v13, a2))
    {
      v12 = 1;
    }

    else
    {
      v16 = &a9;
      do
      {
        v14 = v16++;
        v12 = *v14 != 0;
      }

      while (*v14 && strcmp(v13, *v14));
    }
  }

  return v12;
}

void sub_1000039AC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to create directory containing user generated vibration store file. Error: %{public}@", &v2, 0xCu);
}

void sub_100003AAC(void *a1, NSObject *a2)
{
  v3 = 134217984;
  v4 = [a1 processIdentifier];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Rejecting connection with process identifier %ld because it doesn't have any of the possible required entitlements to use the ToneLibrary service agent.", &v3, 0xCu);
}