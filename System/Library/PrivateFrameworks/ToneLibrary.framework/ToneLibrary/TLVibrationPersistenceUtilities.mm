@interface TLVibrationPersistenceUtilities
+ (BOOL)_objectIsValidUserGeneratedVibrationPattern:(id)pattern error:(id *)error;
+ (BOOL)_validateObjectWithError:(id *)error validationBlock:(id)block;
+ (BOOL)objectIsValidUserGeneratedVibrationPatternsDictionary:(id)dictionary error:(id *)error;
+ (NSURL)userGeneratedVibrationStoreFileURL;
@end

@implementation TLVibrationPersistenceUtilities

+ (BOOL)_validateObjectWithError:(id *)error validationBlock:(id)block
{
  v16 = 0;
  v17 = 0;
  v15 = 0;
  (*(block + 2))(block, &v17, &v16, &v15);
  v5 = v17;
  v6 = v16;
  v7 = v15;
  v8 = v7;
  if (!v5)
  {
    if (!(v6 | v7))
    {
      v10 = 1;
      goto LABEL_9;
    }

    if (error)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *error = [v11 tl_errorWithDomain:@"TLServiceValidationErrorDomain" description:{@"Unexpected type for %@: %@ (%@)", v8, v13, v6}];
    }

    goto LABEL_7;
  }

  if (!error)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_9;
  }

  v9 = v5;
  v10 = 0;
  *error = v5;
LABEL_9:

  return v10;
}

+ (BOOL)_objectIsValidUserGeneratedVibrationPattern:(id)pattern error:(id *)error
{
  patternCopy = pattern;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke;
  v9[3] = &unk_1E8578EB0;
  v10 = patternCopy;
  v7 = patternCopy;
  LOBYTE(error) = [self _validateObjectWithError:error validationBlock:v9];

  return error;
}

void __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke(uint64_t a1, void *a2, void *a3, __CFString **a4)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a2 && a3 && a4)
  {
    v8 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v9 = *(a1 + 32);
      v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v28;
        while (2)
        {
          v13 = 0;
          do
          {
            if (*v28 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v27 + 1) + 8 * v13);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v23 = v14;
              *a3 = v14;
              v24 = @"key of user generated vibration pattern wrapper";
              goto LABEL_29;
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          *a2 = [MEMORY[0x1E696ABC0] tl_errorWithDomain:@"TLServiceValidationErrorDomain" description:{@"Invalid vibration pattern: %@", *(a1 + 32)}];
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
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Vibrations/TLVibrationPersistenceUtilities.m"];
      v19 = TLLogGeneral();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v18 lastPathComponent];
        v21 = [MEMORY[0x1E696AF00] callStackSymbols];
        *buf = 136381443;
        v33 = "+[TLVibrationPersistenceUtilities _objectIsValidUserGeneratedVibrationPattern:error:]_block_invoke";
        v34 = 2113;
        v35 = v20;
        v36 = 2049;
        v37 = 71;
        v38 = 2113;
        v39 = v21;
        _os_log_impl(&dword_1D9356000, v19, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
      }
    }

    else
    {
      v18 = TLLogGeneral();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke_cold_1();
      }
    }

    v22 = TLLogGeneral();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke_cold_2();
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

+ (BOOL)objectIsValidUserGeneratedVibrationPatternsDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __95__TLVibrationPersistenceUtilities_objectIsValidUserGeneratedVibrationPatternsDictionary_error___block_invoke;
  v9[3] = &unk_1E8578ED8;
  v10 = dictionaryCopy;
  selfCopy = self;
  v7 = dictionaryCopy;
  LOBYTE(error) = [self _validateObjectWithError:error validationBlock:v9];

  return error;
}

void __95__TLVibrationPersistenceUtilities_objectIsValidUserGeneratedVibrationPatternsDictionary_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a2 || !a3 || !a4)
  {
    v18 = TLLogGeneral();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);

    if (v19)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Vibrations/TLVibrationPersistenceUtilities.m"];
      v21 = TLLogGeneral();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v20 lastPathComponent];
        v23 = [MEMORY[0x1E696AF00] callStackSymbols];
        *buf = 136381443;
        v36 = "+[TLVibrationPersistenceUtilities objectIsValidUserGeneratedVibrationPatternsDictionary:error:]_block_invoke";
        v37 = 2113;
        v38 = v22;
        v39 = 2049;
        v40 = 109;
        v41 = 2113;
        v42 = v23;
        _os_log_impl(&dword_1D9356000, v21, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
      }
    }

    else
    {
      v20 = TLLogGeneral();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke_cold_1();
      }
    }

    v24 = TLLogGeneral();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __85__TLVibrationPersistenceUtilities__objectIsValidUserGeneratedVibrationPattern_error___block_invoke_cold_2();
    }

    goto LABEL_32;
  }

  v8 = *(a1 + 32);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    *a3 = *(a1 + 32);
    *a4 = @"root object";
    goto LABEL_32;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = *(a1 + 32);
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v10)
  {
    goto LABEL_31;
  }

  v11 = v10;
  v28 = a2;
  v12 = *v31;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v31 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v30 + 1) + 8 * i);
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
        v17 = [MEMORY[0x1E696ABC0] tl_errorWithDomain:@"TLServiceValidationErrorDomain" description:{@"Invalid key object: %@. All key objects need to start with %@", v14, @"usergeneratedvibration:"}];

        if (!v17)
        {
          goto LABEL_32;
        }

        goto LABEL_30;
      }

      v15 = *(a1 + 40);
      v16 = [*(a1 + 32) objectForKey:v14];
      v29 = 0;
      [v15 _objectIsValidUserGeneratedVibrationPattern:v16 error:&v29];
      v17 = v29;

      if (v17)
      {

LABEL_30:
        v26 = v17;
        *v28 = v17;
        v9 = v17;
        goto LABEL_31;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_31:

LABEL_32:
  v27 = *MEMORY[0x1E69E9840];
}

+ (NSURL)userGeneratedVibrationStoreFileURL
{
  v2 = CPSharedResourcesDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Media/Vibrations/UserGeneratedVibrationPatterns.plist"];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end