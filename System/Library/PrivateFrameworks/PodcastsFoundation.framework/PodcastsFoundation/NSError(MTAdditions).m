@interface NSError(MTAdditions)
- (BOOL)isMissingFileError;
- (uint64_t)isFileCorruptError;
- (void)collectErrorsAndThrow:()MTAdditions;
- (void)createErrorStackTraceForErrorCodes:()MTAdditions andThrow:;
- (void)logAndThrow:()MTAdditions printStackTrace:;
@end

@implementation NSError(MTAdditions)

- (void)logAndThrow:()MTAdditions printStackTrace:
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v6 = [a1 domain];
    *buf = 138412802;
    v42 = v6;
    v43 = 2048;
    v44 = [a1 code];
    v45 = 2112;
    v46 = a1;
    _os_log_impl(&dword_1D8CEC000, v5, OS_LOG_TYPE_FAULT, "Encountered application error (domain: %@, code: %ld) desc: %@", buf, 0x20u);
  }

  v7 = [a1 userInfo];
  v8 = [v7 objectForKey:*MEMORY[0x1E696A280]];

  if ([v8 count])
  {
    v34 = a3;
    v35 = a1;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v33 = v8;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v37;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v37 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v36 + 1) + 8 * i);
          v15 = _MTLogCategoryDefault();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [v14 domain];
            v17 = [v14 code];
            v18 = [v14 userInfo];
            v19 = [v18 description];
            *buf = 138412802;
            v42 = v16;
            v43 = 2048;
            v44 = v17;
            v45 = 2112;
            v46 = v19;
            _os_log_impl(&dword_1D8CEC000, v15, OS_LOG_TYPE_DEFAULT, "Detailed Error (domain: %@, code: %ld) userInfo: %@", buf, 0x20u);
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v11);
    }

    a1 = v35;
    a3 = v34;
    v8 = v33;
  }

  if (+[PFClientUtil isPodcastsApp])
  {
    [a1 recordMetrics];
  }

  if (a3)
  {
    v21 = MEMORY[0x1E696AEC0];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = [a1 domain];
    v25 = [v21 stringWithFormat:@"%@: %@ (%ld)", v23, v24, objc_msgSend(a1, "code")];

    v26 = MEMORY[0x1E696AEC0];
    v27 = [a1 localizedDescription];
    v28 = [a1 localizedFailureReason];
    v29 = [v26 stringWithFormat:@"%@ | %@", v27, v28];

    v30 = MEMORY[0x1E695DF30];
    v31 = [a1 userInfo];
    v32 = [v30 exceptionWithName:v25 reason:v29 userInfo:v31];

    [a1 collectErrorsAndThrow:v32];
    objc_exception_throw(v32);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)collectErrorsAndThrow:()MTAdditions
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = [a1 domain];
  v6 = *MEMORY[0x1E696A250];
  v7 = [v5 isEqual:*MEMORY[0x1E696A250]];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "code")}];
    [v4 addObject:v8];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [a1 userInfo];
  v10 = [v9 objectForKey:*MEMORY[0x1E696A280]];

  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [v15 domain];
        v17 = [v16 isEqual:v6];

        if (v17)
        {
          v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v15, "code")}];
          [v4 addObject:v18];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  [v20 createErrorStackTraceForErrorCodes:v4 andThrow:v21];
  v19 = *MEMORY[0x1E69E9840];
}

- (void)createErrorStackTraceForErrorCodes:()MTAdditions andThrow:
{
  v6 = a3;
  v7 = a4;
  if ([v6 containsObject:&unk_1F54BD7F0])
  {
    [v6 removeObject:&unk_1F54BD7F0];
    [a1 _NSManagedObjectValidationError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD808])
  {
    [v6 removeObject:&unk_1F54BD808];
    [a1 _NSManagedObjectConstraintValidationError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD820])
  {
    [v6 removeObject:&unk_1F54BD820];
    [a1 _NSValidationMultipleErrorsError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD838])
  {
    [v6 removeObject:&unk_1F54BD838];
    [a1 _NSValidationMissingMandatoryPropertyError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD850])
  {
    [v6 removeObject:&unk_1F54BD850];
    [a1 _NSValidationRelationshipLacksMinimumCountError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD868])
  {
    [v6 removeObject:&unk_1F54BD868];
    [a1 _NSValidationRelationshipExceedsMaximumCountError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD880])
  {
    [v6 removeObject:&unk_1F54BD880];
    [a1 _NSValidationRelationshipDeniedDeleteError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD898])
  {
    [v6 removeObject:&unk_1F54BD898];
    [a1 _NSValidationNumberTooLargeError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD8B0])
  {
    [v6 removeObject:&unk_1F54BD8B0];
    [a1 _NSValidationNumberTooSmallError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD8C8])
  {
    [v6 removeObject:&unk_1F54BD8C8];
    [a1 _NSValidationDateTooLateError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD8E0])
  {
    [v6 removeObject:&unk_1F54BD8E0];
    [a1 _NSValidationDateTooSoonError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD8F8])
  {
    [v6 removeObject:&unk_1F54BD8F8];
    [a1 _NSValidationInvalidDateError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD910])
  {
    [v6 removeObject:&unk_1F54BD910];
    [a1 _NSValidationStringTooLongError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD928])
  {
    [v6 removeObject:&unk_1F54BD928];
    [a1 _NSValidationStringTooShortError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD940])
  {
    [v6 removeObject:&unk_1F54BD940];
    [a1 _NSValidationStringPatternMatchingError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD958])
  {
    [v6 removeObject:&unk_1F54BD958];
    [a1 _NSValidationInvalidURIError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD970])
  {
    [v6 removeObject:&unk_1F54BD970];
    [a1 _NSManagedObjectContextLockingError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD988])
  {
    [v6 removeObject:&unk_1F54BD988];
    [a1 _NSPersistentStoreCoordinatorLockingError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD9A0])
  {
    [v6 removeObject:&unk_1F54BD9A0];
    [a1 _NSManagedObjectReferentialIntegrityError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD9B8])
  {
    [v6 removeObject:&unk_1F54BD9B8];
    [a1 _NSManagedObjectExternalRelationshipError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD9D0])
  {
    [v6 removeObject:&unk_1F54BD9D0];
    [a1 _NSManagedObjectMergeError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD9E8])
  {
    [v6 removeObject:&unk_1F54BD9E8];
    [a1 _NSManagedObjectConstraintMergeError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDA00])
  {
    [v6 removeObject:&unk_1F54BDA00];
    [a1 _NSPersistentStoreInvalidTypeError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDA18])
  {
    [v6 removeObject:&unk_1F54BDA18];
    [a1 _NSPersistentStoreTypeMismatchError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDA30])
  {
    [v6 removeObject:&unk_1F54BDA30];
    [a1 _NSPersistentStoreIncompatibleSchemaError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDA48])
  {
    [v6 removeObject:&unk_1F54BDA48];
    [a1 _NSPersistentStoreSaveError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDA60])
  {
    [v6 removeObject:&unk_1F54BDA60];
    [a1 _NSPersistentStoreIncompleteSaveError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDA78])
  {
    [v6 removeObject:&unk_1F54BDA78];
    [a1 _NSPersistentStoreSaveConflictsError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDA90])
  {
    [v6 removeObject:&unk_1F54BDA90];
    [a1 _NSCoreDataError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDAA8])
  {
    [v6 removeObject:&unk_1F54BDAA8];
    [a1 _NSPersistentStoreOperationError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDAC0])
  {
    [v6 removeObject:&unk_1F54BDAC0];
    [a1 _NSPersistentStoreOpenError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDAD8])
  {
    [v6 removeObject:&unk_1F54BDAD8];
    [a1 _NSPersistentStoreTimeoutError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDAF0])
  {
    [v6 removeObject:&unk_1F54BDAF0];
    [a1 _NSPersistentStoreUnsupportedRequestTypeError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDB08])
  {
    [v6 removeObject:&unk_1F54BDB08];
    [a1 _NSPersistentStoreIncompatibleVersionHashError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDB20])
  {
    [v6 removeObject:&unk_1F54BDB20];
    [a1 _NSMigrationError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDB38])
  {
    [v6 removeObject:&unk_1F54BDB38];
    [a1 _NSMigrationConstraintViolationError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDB50])
  {
    [v6 removeObject:&unk_1F54BDB50];
    [a1 _NSMigrationCancelledError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDB68])
  {
    [v6 removeObject:&unk_1F54BDB68];
    [a1 _NSMigrationMissingSourceModelError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDB80])
  {
    [v6 removeObject:&unk_1F54BDB80];
    [a1 _NSMigrationMissingMappingModelError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDB98])
  {
    [v6 removeObject:&unk_1F54BDB98];
    [a1 _NSMigrationManagerSourceStoreError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDBB0])
  {
    [v6 removeObject:&unk_1F54BDBB0];
    [a1 _NSMigrationManagerDestinationStoreError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDBC8])
  {
    [v6 removeObject:&unk_1F54BDBC8];
    [a1 _NSEntityMigrationPolicyError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDBE0])
  {
    [v6 removeObject:&unk_1F54BDBE0];
    [a1 _NSSQLiteError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDBF8])
  {
    [v6 removeObject:&unk_1F54BDBF8];
    [a1 _NSInferredMappingModelError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDC10])
  {
    [v6 removeObject:&unk_1F54BDC10];
    [a1 _NSExternalRecordImportError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDC28])
  {
    [v6 removeObject:&unk_1F54BDC28];
    [a1 _NSPersistentHistoryTokenExpiredError:v6 andThrow:v7];
  }

  objc_exception_throw(v7);
}

- (BOOL)isMissingFileError
{
  if ([a1 code] != 4)
  {
    return 0;
  }

  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x1E696A250]])
  {
    v3 = [a1 userInfo];
    v4 = [v3 valueForKey:*MEMORY[0x1E696A368]];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)isFileCorruptError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x1E696A250]])
  {
    v3 = [a1 code];

    if (v3 == 259)
    {
      return 1;
    }
  }

  else
  {
  }

  v4 = [a1 domain];
  if ([v4 isEqualToString:*MEMORY[0x1E695D488]])
  {
    v5 = [a1 code];

    if (v5 == 11)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

@end