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
    domain = [self domain];
    *buf = 138412802;
    v42 = domain;
    v43 = 2048;
    code = [self code];
    v45 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1D8CEC000, v5, OS_LOG_TYPE_FAULT, "Encountered application error (domain: %@, code: %ld) desc: %@", buf, 0x20u);
  }

  userInfo = [self userInfo];
  v8 = [userInfo objectForKey:*MEMORY[0x1E696A280]];

  if ([v8 count])
  {
    v34 = a3;
    selfCopy2 = self;
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
            domain2 = [v14 domain];
            code2 = [v14 code];
            userInfo2 = [v14 userInfo];
            v19 = [userInfo2 description];
            *buf = 138412802;
            v42 = domain2;
            v43 = 2048;
            code = code2;
            v45 = 2112;
            selfCopy = v19;
            _os_log_impl(&dword_1D8CEC000, v15, OS_LOG_TYPE_DEFAULT, "Detailed Error (domain: %@, code: %ld) userInfo: %@", buf, 0x20u);
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v11);
    }

    self = selfCopy2;
    a3 = v34;
    v8 = v33;
  }

  if (+[PFClientUtil isPodcastsApp])
  {
    [self recordMetrics];
  }

  if (a3)
  {
    v21 = MEMORY[0x1E696AEC0];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    domain3 = [self domain];
    v25 = [v21 stringWithFormat:@"%@: %@ (%ld)", v23, domain3, objc_msgSend(self, "code")];

    v26 = MEMORY[0x1E696AEC0];
    localizedDescription = [self localizedDescription];
    localizedFailureReason = [self localizedFailureReason];
    v29 = [v26 stringWithFormat:@"%@ | %@", localizedDescription, localizedFailureReason];

    v30 = MEMORY[0x1E695DF30];
    userInfo3 = [self userInfo];
    v32 = [v30 exceptionWithName:v25 reason:v29 userInfo:userInfo3];

    [self collectErrorsAndThrow:v32];
    objc_exception_throw(v32);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)collectErrorsAndThrow:()MTAdditions
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v4 = [MEMORY[0x1E695DFA8] set];
  domain = [self domain];
  v6 = *MEMORY[0x1E696A250];
  v7 = [domain isEqual:*MEMORY[0x1E696A250]];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "code")}];
    [v4 addObject:v8];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  userInfo = [self userInfo];
  v10 = [userInfo objectForKey:*MEMORY[0x1E696A280]];

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
        domain2 = [v15 domain];
        v17 = [domain2 isEqual:v6];

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
    [self _NSManagedObjectValidationError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD808])
  {
    [v6 removeObject:&unk_1F54BD808];
    [self _NSManagedObjectConstraintValidationError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD820])
  {
    [v6 removeObject:&unk_1F54BD820];
    [self _NSValidationMultipleErrorsError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD838])
  {
    [v6 removeObject:&unk_1F54BD838];
    [self _NSValidationMissingMandatoryPropertyError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD850])
  {
    [v6 removeObject:&unk_1F54BD850];
    [self _NSValidationRelationshipLacksMinimumCountError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD868])
  {
    [v6 removeObject:&unk_1F54BD868];
    [self _NSValidationRelationshipExceedsMaximumCountError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD880])
  {
    [v6 removeObject:&unk_1F54BD880];
    [self _NSValidationRelationshipDeniedDeleteError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD898])
  {
    [v6 removeObject:&unk_1F54BD898];
    [self _NSValidationNumberTooLargeError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD8B0])
  {
    [v6 removeObject:&unk_1F54BD8B0];
    [self _NSValidationNumberTooSmallError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD8C8])
  {
    [v6 removeObject:&unk_1F54BD8C8];
    [self _NSValidationDateTooLateError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD8E0])
  {
    [v6 removeObject:&unk_1F54BD8E0];
    [self _NSValidationDateTooSoonError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD8F8])
  {
    [v6 removeObject:&unk_1F54BD8F8];
    [self _NSValidationInvalidDateError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD910])
  {
    [v6 removeObject:&unk_1F54BD910];
    [self _NSValidationStringTooLongError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD928])
  {
    [v6 removeObject:&unk_1F54BD928];
    [self _NSValidationStringTooShortError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD940])
  {
    [v6 removeObject:&unk_1F54BD940];
    [self _NSValidationStringPatternMatchingError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD958])
  {
    [v6 removeObject:&unk_1F54BD958];
    [self _NSValidationInvalidURIError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD970])
  {
    [v6 removeObject:&unk_1F54BD970];
    [self _NSManagedObjectContextLockingError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD988])
  {
    [v6 removeObject:&unk_1F54BD988];
    [self _NSPersistentStoreCoordinatorLockingError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD9A0])
  {
    [v6 removeObject:&unk_1F54BD9A0];
    [self _NSManagedObjectReferentialIntegrityError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD9B8])
  {
    [v6 removeObject:&unk_1F54BD9B8];
    [self _NSManagedObjectExternalRelationshipError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD9D0])
  {
    [v6 removeObject:&unk_1F54BD9D0];
    [self _NSManagedObjectMergeError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BD9E8])
  {
    [v6 removeObject:&unk_1F54BD9E8];
    [self _NSManagedObjectConstraintMergeError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDA00])
  {
    [v6 removeObject:&unk_1F54BDA00];
    [self _NSPersistentStoreInvalidTypeError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDA18])
  {
    [v6 removeObject:&unk_1F54BDA18];
    [self _NSPersistentStoreTypeMismatchError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDA30])
  {
    [v6 removeObject:&unk_1F54BDA30];
    [self _NSPersistentStoreIncompatibleSchemaError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDA48])
  {
    [v6 removeObject:&unk_1F54BDA48];
    [self _NSPersistentStoreSaveError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDA60])
  {
    [v6 removeObject:&unk_1F54BDA60];
    [self _NSPersistentStoreIncompleteSaveError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDA78])
  {
    [v6 removeObject:&unk_1F54BDA78];
    [self _NSPersistentStoreSaveConflictsError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDA90])
  {
    [v6 removeObject:&unk_1F54BDA90];
    [self _NSCoreDataError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDAA8])
  {
    [v6 removeObject:&unk_1F54BDAA8];
    [self _NSPersistentStoreOperationError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDAC0])
  {
    [v6 removeObject:&unk_1F54BDAC0];
    [self _NSPersistentStoreOpenError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDAD8])
  {
    [v6 removeObject:&unk_1F54BDAD8];
    [self _NSPersistentStoreTimeoutError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDAF0])
  {
    [v6 removeObject:&unk_1F54BDAF0];
    [self _NSPersistentStoreUnsupportedRequestTypeError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDB08])
  {
    [v6 removeObject:&unk_1F54BDB08];
    [self _NSPersistentStoreIncompatibleVersionHashError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDB20])
  {
    [v6 removeObject:&unk_1F54BDB20];
    [self _NSMigrationError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDB38])
  {
    [v6 removeObject:&unk_1F54BDB38];
    [self _NSMigrationConstraintViolationError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDB50])
  {
    [v6 removeObject:&unk_1F54BDB50];
    [self _NSMigrationCancelledError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDB68])
  {
    [v6 removeObject:&unk_1F54BDB68];
    [self _NSMigrationMissingSourceModelError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDB80])
  {
    [v6 removeObject:&unk_1F54BDB80];
    [self _NSMigrationMissingMappingModelError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDB98])
  {
    [v6 removeObject:&unk_1F54BDB98];
    [self _NSMigrationManagerSourceStoreError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDBB0])
  {
    [v6 removeObject:&unk_1F54BDBB0];
    [self _NSMigrationManagerDestinationStoreError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDBC8])
  {
    [v6 removeObject:&unk_1F54BDBC8];
    [self _NSEntityMigrationPolicyError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDBE0])
  {
    [v6 removeObject:&unk_1F54BDBE0];
    [self _NSSQLiteError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDBF8])
  {
    [v6 removeObject:&unk_1F54BDBF8];
    [self _NSInferredMappingModelError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDC10])
  {
    [v6 removeObject:&unk_1F54BDC10];
    [self _NSExternalRecordImportError:v6 andThrow:v7];
  }

  if ([v6 containsObject:&unk_1F54BDC28])
  {
    [v6 removeObject:&unk_1F54BDC28];
    [self _NSPersistentHistoryTokenExpiredError:v6 andThrow:v7];
  }

  objc_exception_throw(v7);
}

- (BOOL)isMissingFileError
{
  if ([self code] != 4)
  {
    return 0;
  }

  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    userInfo = [self userInfo];
    v4 = [userInfo valueForKey:*MEMORY[0x1E696A368]];
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
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    code = [self code];

    if (code == 259)
    {
      return 1;
    }
  }

  else
  {
  }

  domain2 = [self domain];
  if ([domain2 isEqualToString:*MEMORY[0x1E695D488]])
  {
    code2 = [self code];

    if (code2 == 11)
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