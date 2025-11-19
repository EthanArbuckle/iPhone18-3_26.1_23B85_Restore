@interface REMError
+ (BOOL)_isCoreDataError:(id)a3;
+ (BOOL)catchObjCException:(id)a3 error:(id *)a4;
+ (BOOL)isNoSuchObjectError:(id)a3 forObjectID:(id)a4;
+ (id)_errorSanitizedForXPCFromError:(id)a3;
+ (id)_errorWithCode:(int64_t)a3 underlyingError:(id)a4;
+ (id)_errorWithCode:(int64_t)a3 userInfo:(id)a4 error:(id)a5 path:(id)a6 URL:(id)a7 description:(id)a8;
+ (id)accountStoreMissingError:(id)a3;
+ (id)babySatErrorWithOperationName:(id)a3;
+ (id)constraintConflictWithIdentifier:(id)a3 constraint:(id)a4;
+ (id)errorFromErrors:(id)a3;
+ (id)errorSanitizedForXPCFromError:(id)a3;
+ (id)internalErrorWithDebugDescription:(id)a3;
+ (id)invalidParameterErrorWithDescription:(id)a3;
+ (id)mismatchedObjectIDWithObjectID:(id)a3 expected:(Class)a4;
+ (id)noPrimaryActiveCloudKitAccountError;
+ (id)noSuchObjectErrorWithDACalendarItemUniqueIdentifier:(id)a3;
+ (id)noSuchObjectErrorWithExternalIdentifier:(id)a3;
+ (id)noSuchObjectErrorWithObjectID:(id)a3;
+ (id)noSuchSmartListErrorWithSmartListType:(id)a3;
+ (id)notSupportedErrorWithDebugDescription:(id)a3;
+ (id)nullifiedRelationshipErrorWithRelationshipName:(id)a3;
+ (id)retryLaterErrorWithInterval:(double)a3;
+ (id)saveErrorWithCoreDataError:(id)a3;
+ (id)sqliteErrorWithCode:(int64_t)a3 format:(id)a4;
+ (id)sqliteErrorWithCode:(int64_t)a3 path:(id)a4 format:(id)a5;
+ (id)throttledErrorWithRemainingTimeInterval:(double)a3;
+ (id)unauthorizedErrorWithMissingEntitlement:(id)a3;
+ (id)unauthorizedErrorWithMissingEntitlement:(id)a3 requestedAccessLevel:(id)a4 currentAccesslevel:(id)a5;
+ (id)unexpectedNilPropertyWithClass:(Class)a3 property:(id)a4;
+ (id)unexpectedNilPropertyWithObjectID:(id)a3 property:(id)a4;
+ (id)validationErrorDifferentZoneObjectID:(id)a3 zoneOwnerName:(id)a4 parentObjectID:(id)a5 parentZoneOwnerName:(id)a6;
+ (id)validationErrorListHasNoAccount:(id)a3;
+ (id)validationErrorMoveAcrossAccount:(id)a3;
+ (id)validationErrorMoveFromAccount:(id)a3 toAccount:(id)a4 objectID:(id)a5;
+ (id)validationErrorMoveReminderFromList:(id)a3 toList:(id)a4 inAccount:(id)a5;
+ (id)validationErrorNestedSubtask:(id)a3 parentReminderID:(id)a4;
+ (id)validationErrorNotCloudKitAccount:(id)a3;
+ (id)validationErrorRemoveAccountBeingActivated:(id)a3;
+ (id)validationErrorRemoveAccountBeingInserted:(id)a3;
+ (id)validationErrorSubtaskAndParentNotOnSameList:(id)a3 parentReminderID:(id)a4;
+ (id)validationErrorUndeleteHashtagFromAnotherReminder:(id)a3 expectedReminderID:(id)a4;
+ (id)xpcPerformerUnavailableErrorWithDescription:(id)a3;
@end

@implementation REMError

+ (id)errorSanitizedForXPCFromError:(id)a3
{
  v4 = a3;
  v5 = [a1 _errorSanitizedForXPCFromError:v4];
  v6 = [v5 domain];
  v7 = [v6 isEqualToString:@"com.apple.reminderkit"];

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    if ([a1 _isCoreDataError:v4])
    {
      v9 = a1;
      v10 = -3004;
    }

    else
    {
      v9 = a1;
      v10 = -1;
    }

    v8 = [v9 _errorWithCode:v10 underlyingError:v5];
  }

  v11 = v8;

  return v11;
}

+ (id)internalErrorWithDebugDescription:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v3 errorWithDomain:@"com.apple.reminderkit" code:-1 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)mismatchedObjectIDWithObjectID:(id)a3 expected:(Class)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[REMLogStore utility];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    [(REMError *)v5 mismatchedObjectIDWithObjectID:a4 expected:v6];
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Mismatched objectID type {objectID: %@, expected: %@}", v5, a4];
  v8 = MEMORY[0x1E696ABC0];
  v13 = *MEMORY[0x1E696A278];
  v14[0] = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [v8 errorWithDomain:@"com.apple.reminderkit" code:-1 userInfo:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)errorFromErrors:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = [v3 firstObject];
      goto LABEL_9;
    }

    v6 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A278];
    v14 = v3;
    v7 = MEMORY[0x1E695DF20];
    v8 = &v14;
    v9 = &v13;
  }

  else
  {
    v5 = +[REMLogStore utility];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [REMError errorFromErrors:v5];
    }

    v6 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A278];
    v16[0] = MEMORY[0x1E695E0F0];
    v7 = MEMORY[0x1E695DF20];
    v8 = v16;
    v9 = &v15;
  }

  v10 = [v7 dictionaryWithObjects:v8 forKeys:v9 count:1];
  v4 = [v6 errorWithDomain:@"com.apple.reminderkit" code:-2 userInfo:v10];

LABEL_9:
  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)sqliteErrorWithCode:(int64_t)a3 format:(id)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a4;
  v8 = [[v6 alloc] initWithFormat:v7 arguments:&v12];

  v9 = [a1 _errorWithCode:a3 userInfo:0 error:0 path:0 URL:0 description:v8];

  return v9;
}

+ (id)sqliteErrorWithCode:(int64_t)a3 path:(id)a4 format:(id)a5
{
  v8 = MEMORY[0x1E696AEC0];
  v9 = a5;
  v10 = a4;
  v11 = [[v8 alloc] initWithFormat:v9 arguments:&v15];

  v12 = [a1 _errorWithCode:a3 userInfo:0 error:0 path:v10 URL:0 description:v11];

  return v12;
}

+ (id)unauthorizedErrorWithMissingEntitlement:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing entitlement: %@", a3];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"com.apple.reminderkit" code:-1000 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)unauthorizedErrorWithMissingEntitlement:(id)a3 requestedAccessLevel:(id)a4 currentAccesslevel:(id)a5
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing entitlement: %@ {requestedAccessLevel: %@, currentAccesslevel: %@}", a3, a4, a5];
  v6 = MEMORY[0x1E696ABC0];
  v11 = *MEMORY[0x1E696A278];
  v12[0] = v5;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v6 errorWithDomain:@"com.apple.reminderkit" code:-1000 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)throttledErrorWithRemainingTimeInterval:(double)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Operation is throttled {remainingTime: %.4f}", *&a3];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"com.apple.reminderkit" code:-1002 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)babySatErrorWithOperationName:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Operation is babysat {operationName: %@}", a3];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"com.apple.reminderkit" code:-1003 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)retryLaterErrorWithInterval:(double)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v9 = @"REMErrorRetryAfterKey";
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:{fmax(a3, 0.0)}];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v3 errorWithDomain:@"com.apple.reminderkit" code:-1004 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)notSupportedErrorWithDebugDescription:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v3 errorWithDomain:@"com.apple.reminderkit" code:-1006 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (BOOL)isNoSuchObjectError:(id)a3 forObjectID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 domain];
  if ([v7 isEqualToString:@"com.apple.reminderkit"])
  {
    v8 = [v5 code];

    if (v8 == -3000)
    {
      v9 = [v5 userInfo];
      v10 = objc_opt_class();
      v11 = [v9 objectForKeyedSubscript:@"REMErrorObjectIDEntityNameKey"];
      v12 = REMDynamicCast(v10, v11);

      v13 = objc_opt_class();
      v14 = [v9 objectForKeyedSubscript:@"REMErrorObjectIDUUIDKey"];
      v15 = REMDynamicCast(v13, v14);

      if (v12 && v15)
      {
        v16 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v15];
        if (v16)
        {
          v17 = [v6 entityName];
          if ([v17 isEqualToString:v12])
          {
            v18 = [v6 uuid];
            v19 = [v18 isEqual:v16];
          }

          else
          {
            v19 = 0;
          }

          goto LABEL_18;
        }

        v20 = +[REMLog utility];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          [REMError isNoSuchObjectError:v15 forObjectID:v20];
        }
      }

      else
      {
        v16 = +[REMLog utility];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          [REMError isNoSuchObjectError:v9 forObjectID:v16];
        }
      }

      v19 = 1;
LABEL_18:

      goto LABEL_19;
    }
  }

  else
  {
  }

  v19 = 0;
LABEL_19:

  return v19;
}

+ (id)noSuchObjectErrorWithObjectID:(id)a3
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [v3 stringWithFormat:@"No such object error {objectID: %@}", v4];
  v6 = [v4 entityName];
  v7 = [v4 uuid];

  v8 = [v7 UUIDString];

  v13[0] = *MEMORY[0x1E696A278];
  v13[1] = @"REMErrorObjectIDEntityNameKey";
  v14[0] = v5;
  v14[1] = v6;
  v13[2] = @"REMErrorObjectIDUUIDKey";
  v14[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.reminderkit" code:-3000 userInfo:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)noSuchObjectErrorWithExternalIdentifier:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No such object error {externalIdentifier: %@}", a3];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"com.apple.reminderkit" code:-3000 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)noSuchObjectErrorWithDACalendarItemUniqueIdentifier:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No such object error {daCalendarItemUniqueIdentifier: %@}", a3];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"com.apple.reminderkit" code:-3000 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)noSuchSmartListErrorWithSmartListType:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No such smart list error {smartListType: %@}", a3];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"com.apple.reminderkit" code:-3006 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)noPrimaryActiveCloudKitAccountError
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No active CloudKit account is currently logged in or enabled"];
  v3 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A278];
  v9[0] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v3 errorWithDomain:@"com.apple.reminderkit" code:-3007 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)accountStoreMissingError:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Persistent store not found for some of the changed objects {accountIdentifiers: %@}", a3];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"com.apple.reminderkit" code:-3008 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)saveErrorWithCoreDataError:(id)a3
{
  v4 = [a1 _errorSanitizedForXPCFromError:a3];
  v5 = [a1 _errorWithCode:-3001 underlyingError:v4];

  return v5;
}

+ (id)validationErrorMoveAcrossAccount:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Moving object across is unsupported {objectID: %@}", a3];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"com.apple.reminderkit" code:-3002 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)validationErrorMoveFromAccount:(id)a3 toAccount:(id)a4 objectID:(id)a5
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Moving between accounts is unsupported {fromAccountID: %@, toAccountID: %@: objectID: %@}", a3, a4, a5];
  v6 = MEMORY[0x1E696ABC0];
  v11 = *MEMORY[0x1E696A278];
  v12[0] = v5;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v6 errorWithDomain:@"com.apple.reminderkit" code:-3002 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)validationErrorListHasNoAccount:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"List should not have nil account {listID: %@}", a3];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"com.apple.reminderkit" code:-3002 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)validationErrorMoveReminderFromList:(id)a3 toList:(id)a4 inAccount:(id)a5
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Moving between lists is unsupported in this account {fromListID: %@, toListID: %@, accountID: %@}", a3, a4, a5];
  v6 = MEMORY[0x1E696ABC0];
  v11 = *MEMORY[0x1E696A278];
  v12[0] = v5;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v6 errorWithDomain:@"com.apple.reminderkit" code:-3002 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)validationErrorNestedSubtask:(id)a3 parentReminderID:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Nested subtasks is unsupported {parentReminderID: %@, reminderID: %@}", a4, a3];
  v5 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v5 errorWithDomain:@"com.apple.reminderkit" code:-3002 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)validationErrorSubtaskAndParentNotOnSameList:(id)a3 parentReminderID:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Subtask has different list from its parent reminder {parentReminderID: %@, reminderID: %@}", a4, a3];
  v5 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v5 errorWithDomain:@"com.apple.reminderkit" code:-3002 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)validationErrorUndeleteHashtagFromAnotherReminder:(id)a3 expectedReminderID:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to undelete hashtag from another reminder {hashtagID: %@, reminderID: %@}", a3, a4];
  v5 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v5 errorWithDomain:@"com.apple.reminderkit" code:-3002 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)validationErrorNotCloudKitAccount:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Action is unavailable to non-CloudKit account {accountID: %@}", a3];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"com.apple.reminderkit" code:-3002 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)validationErrorRemoveAccountBeingInserted:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Removing an account at the same time inserting it is unsupported {accountID: %@}", a3];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"com.apple.reminderkit" code:-3002 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)validationErrorRemoveAccountBeingActivated:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Removing an account at the same time setting it as active is unsupported {accountID: %@}", a3];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"com.apple.reminderkit" code:-3002 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)validationErrorDifferentZoneObjectID:(id)a3 zoneOwnerName:(id)a4 parentObjectID:(id)a5 parentZoneOwnerName:(id)a6
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Object { id: %@, zoneOwner: %@} and its parent { id: %@, zoneOwner: %@} with different zones are unsupported", a3, a4, a5, a6];
  v7 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E696A278];
  v13[0] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v7 errorWithDomain:@"com.apple.reminderkit" code:-3002 userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)constraintConflictWithIdentifier:(id)a3 constraint:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unhandled constraint conflict {identifier: %@, constraint: %@}", a3, a4];
  v5 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v5 errorWithDomain:@"com.apple.reminderkit" code:-3003 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)nullifiedRelationshipErrorWithRelationshipName:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v3 errorWithDomain:@"com.apple.reminderkit" code:-3005 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)invalidParameterErrorWithDescription:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v3 errorWithDomain:@"com.apple.reminderkit" code:-4000 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)unexpectedNilPropertyWithClass:(Class)a3 property:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected nil property {class: %@, property: %@}", a3, a4];
  v5 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v5 errorWithDomain:@"com.apple.reminderkit" code:-4001 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)unexpectedNilPropertyWithObjectID:(id)a3 property:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected nil property {remObjectID: %@, property: %@}", a3, a4];
  v5 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v5 errorWithDomain:@"com.apple.reminderkit" code:-4001 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)xpcPerformerUnavailableErrorWithDescription:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v3 errorWithDomain:@"com.apple.reminderkit" code:-5000 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (BOOL)catchObjCException:(id)a3 error:(id *)a4
{
  v4 = a3;
  v4[2]();

  return 1;
}

+ (BOOL)_isCoreDataError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x1E696A250]])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 domain];
    v5 = [v6 isEqualToString:*MEMORY[0x1E695D488]];
  }

  return v5;
}

+ (id)_errorWithCode:(int64_t)a3 underlyingError:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v11 = *MEMORY[0x1E696AA08];
    v12[0] = v5;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.reminderkit" code:a3 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)_errorWithCode:(int64_t)a3 userInfo:(id)a4 error:(id)a5 path:(id)a6 URL:(id)a7 description:(id)a8
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = [v13 mutableCopy];
  v19 = v18;
  if (v14 || v15 || v16 || v17)
  {
    if (!v18)
    {
      v19 = objc_opt_new();
    }

    if (v14)
    {
      [v19 setObject:v14 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    }

    if (v15)
    {
      [v19 setObject:v15 forKeyedSubscript:*MEMORY[0x1E696A368]];
    }

    if (v16)
    {
      [v19 setObject:v16 forKeyedSubscript:*MEMORY[0x1E696A998]];
    }

    if (v17)
    {
      [v19 setObject:v17 forKeyedSubscript:*MEMORY[0x1E696A578]];
      [v19 setObject:v17 forKeyedSubscript:*MEMORY[0x1E696A278]];
    }
  }

  v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.reminderkit" code:a3 userInfo:v13];

  return v20;
}

+ (id)_errorSanitizedForXPCFromError:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [v3 userInfo];
  v6 = *MEMORY[0x1E696A578];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696A578]];

  if (v7)
  {
    v8 = [v3 userInfo];
    v9 = [v8 objectForKeyedSubscript:v6];
    [v4 setObject:v9 forKeyedSubscript:v6];
  }

  v10 = [v3 userInfo];
  v11 = *MEMORY[0x1E696A278];
  v12 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696A278]];

  if (v12)
  {
    v13 = [v3 userInfo];
    v14 = [v13 objectForKeyedSubscript:v11];
    [v4 setObject:v14 forKeyedSubscript:v11];
  }

  v15 = [v3 userInfo];
  v16 = [v15 objectForKeyedSubscript:@"REMErrorObjectIDEntityNameKey"];

  if (v16)
  {
    v17 = [v3 userInfo];
    v18 = [v17 objectForKeyedSubscript:@"REMErrorObjectIDEntityNameKey"];
    [v4 setObject:v18 forKeyedSubscript:@"REMErrorObjectIDEntityNameKey"];
  }

  v19 = [v3 userInfo];
  v20 = [v19 objectForKeyedSubscript:@"REMErrorObjectIDUUIDKey"];

  if (v20)
  {
    v21 = [v3 userInfo];
    v22 = [v21 objectForKeyedSubscript:@"REMErrorObjectIDUUIDKey"];
    [v4 setObject:v22 forKeyedSubscript:@"REMErrorObjectIDUUIDKey"];
  }

  v23 = [v3 userInfo];
  v24 = [v23 objectForKeyedSubscript:@"NSUnderlyingException"];

  if (v24)
  {
    v25 = MEMORY[0x1E696AEC0];
    v26 = [v24 name];
    v27 = [v24 reason];
    v28 = [v25 stringWithFormat:@"exception.name: %@, reason: %@", v26, v27];
    [v4 setObject:v28 forKeyedSubscript:v11];
  }

  v29 = MEMORY[0x1E696ABC0];
  v30 = [v3 domain];
  v31 = [v29 errorWithDomain:v30 code:objc_msgSend(v3 userInfo:{"code"), v4}];

  return v31;
}

+ (void)mismatchedObjectIDWithObjectID:(os_log_t)log expected:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&dword_19A0DB000, log, OS_LOG_TYPE_FAULT, "Mismatched objectID type {objectID: %@, expected: %@}", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)isNoSuchObjectError:(uint64_t)a1 forObjectID:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "noSuchObject REMError has unexpected keys {error.userInfo: %{public}@}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)isNoSuchObjectError:(uint64_t)a1 forObjectID:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "noSuchObject REMError has an invalid UUID string {errorUUIDString: %{public}@}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end