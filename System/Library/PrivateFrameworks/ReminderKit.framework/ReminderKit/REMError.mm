@interface REMError
+ (BOOL)_isCoreDataError:(id)error;
+ (BOOL)catchObjCException:(id)exception error:(id *)error;
+ (BOOL)isNoSuchObjectError:(id)error forObjectID:(id)d;
+ (id)_errorSanitizedForXPCFromError:(id)error;
+ (id)_errorWithCode:(int64_t)code underlyingError:(id)error;
+ (id)_errorWithCode:(int64_t)code userInfo:(id)info error:(id)error path:(id)path URL:(id)l description:(id)description;
+ (id)accountStoreMissingError:(id)error;
+ (id)babySatErrorWithOperationName:(id)name;
+ (id)constraintConflictWithIdentifier:(id)identifier constraint:(id)constraint;
+ (id)errorFromErrors:(id)errors;
+ (id)errorSanitizedForXPCFromError:(id)error;
+ (id)internalErrorWithDebugDescription:(id)description;
+ (id)invalidParameterErrorWithDescription:(id)description;
+ (id)mismatchedObjectIDWithObjectID:(id)d expected:(Class)expected;
+ (id)noPrimaryActiveCloudKitAccountError;
+ (id)noSuchObjectErrorWithDACalendarItemUniqueIdentifier:(id)identifier;
+ (id)noSuchObjectErrorWithExternalIdentifier:(id)identifier;
+ (id)noSuchObjectErrorWithObjectID:(id)d;
+ (id)noSuchSmartListErrorWithSmartListType:(id)type;
+ (id)notSupportedErrorWithDebugDescription:(id)description;
+ (id)nullifiedRelationshipErrorWithRelationshipName:(id)name;
+ (id)retryLaterErrorWithInterval:(double)interval;
+ (id)saveErrorWithCoreDataError:(id)error;
+ (id)sqliteErrorWithCode:(int64_t)code format:(id)format;
+ (id)sqliteErrorWithCode:(int64_t)code path:(id)path format:(id)format;
+ (id)throttledErrorWithRemainingTimeInterval:(double)interval;
+ (id)unauthorizedErrorWithMissingEntitlement:(id)entitlement;
+ (id)unauthorizedErrorWithMissingEntitlement:(id)entitlement requestedAccessLevel:(id)level currentAccesslevel:(id)accesslevel;
+ (id)unexpectedNilPropertyWithClass:(Class)class property:(id)property;
+ (id)unexpectedNilPropertyWithObjectID:(id)d property:(id)property;
+ (id)validationErrorDifferentZoneObjectID:(id)d zoneOwnerName:(id)name parentObjectID:(id)iD parentZoneOwnerName:(id)ownerName;
+ (id)validationErrorListHasNoAccount:(id)account;
+ (id)validationErrorMoveAcrossAccount:(id)account;
+ (id)validationErrorMoveFromAccount:(id)account toAccount:(id)toAccount objectID:(id)d;
+ (id)validationErrorMoveReminderFromList:(id)list toList:(id)toList inAccount:(id)account;
+ (id)validationErrorNestedSubtask:(id)subtask parentReminderID:(id)d;
+ (id)validationErrorNotCloudKitAccount:(id)account;
+ (id)validationErrorRemoveAccountBeingActivated:(id)activated;
+ (id)validationErrorRemoveAccountBeingInserted:(id)inserted;
+ (id)validationErrorSubtaskAndParentNotOnSameList:(id)list parentReminderID:(id)d;
+ (id)validationErrorUndeleteHashtagFromAnotherReminder:(id)reminder expectedReminderID:(id)d;
+ (id)xpcPerformerUnavailableErrorWithDescription:(id)description;
@end

@implementation REMError

+ (id)errorSanitizedForXPCFromError:(id)error
{
  errorCopy = error;
  v5 = [self _errorSanitizedForXPCFromError:errorCopy];
  domain = [v5 domain];
  v7 = [domain isEqualToString:@"com.apple.reminderkit"];

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    if ([self _isCoreDataError:errorCopy])
    {
      selfCopy2 = self;
      v10 = -3004;
    }

    else
    {
      selfCopy2 = self;
      v10 = -1;
    }

    v8 = [selfCopy2 _errorWithCode:v10 underlyingError:v5];
  }

  v11 = v8;

  return v11;
}

+ (id)internalErrorWithDebugDescription:(id)description
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = description;
  v4 = MEMORY[0x1E695DF20];
  descriptionCopy = description;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v3 errorWithDomain:@"com.apple.reminderkit" code:-1 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)mismatchedObjectIDWithObjectID:(id)d expected:(Class)expected
{
  v14[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v6 = +[REMLogStore utility];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    [(REMError *)dCopy mismatchedObjectIDWithObjectID:expected expected:v6];
  }

  expected = [MEMORY[0x1E696AEC0] stringWithFormat:@"Mismatched objectID type {objectID: %@, expected: %@}", dCopy, expected];
  v8 = MEMORY[0x1E696ABC0];
  v13 = *MEMORY[0x1E696A278];
  v14[0] = expected;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [v8 errorWithDomain:@"com.apple.reminderkit" code:-1 userInfo:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)errorFromErrors:(id)errors
{
  v16[1] = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  if ([errorsCopy count])
  {
    if ([errorsCopy count] == 1)
    {
      firstObject = [errorsCopy firstObject];
      goto LABEL_9;
    }

    v6 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A278];
    v14 = errorsCopy;
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
  firstObject = [v6 errorWithDomain:@"com.apple.reminderkit" code:-2 userInfo:v10];

LABEL_9:
  v11 = *MEMORY[0x1E69E9840];

  return firstObject;
}

+ (id)sqliteErrorWithCode:(int64_t)code format:(id)format
{
  v6 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  v8 = [[v6 alloc] initWithFormat:formatCopy arguments:&v12];

  v9 = [self _errorWithCode:code userInfo:0 error:0 path:0 URL:0 description:v8];

  return v9;
}

+ (id)sqliteErrorWithCode:(int64_t)code path:(id)path format:(id)format
{
  v8 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  pathCopy = path;
  v11 = [[v8 alloc] initWithFormat:formatCopy arguments:&v15];

  v12 = [self _errorWithCode:code userInfo:0 error:0 path:pathCopy URL:0 description:v11];

  return v12;
}

+ (id)unauthorizedErrorWithMissingEntitlement:(id)entitlement
{
  v10[1] = *MEMORY[0x1E69E9840];
  entitlement = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing entitlement: %@", entitlement];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = entitlement;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"com.apple.reminderkit" code:-1000 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)unauthorizedErrorWithMissingEntitlement:(id)entitlement requestedAccessLevel:(id)level currentAccesslevel:(id)accesslevel
{
  v12[1] = *MEMORY[0x1E69E9840];
  accesslevel = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing entitlement: %@ {requestedAccessLevel: %@, currentAccesslevel: %@}", entitlement, level, accesslevel];
  v6 = MEMORY[0x1E696ABC0];
  v11 = *MEMORY[0x1E696A278];
  v12[0] = accesslevel;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v6 errorWithDomain:@"com.apple.reminderkit" code:-1000 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)throttledErrorWithRemainingTimeInterval:(double)interval
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Operation is throttled {remainingTime: %.4f}", *&interval];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"com.apple.reminderkit" code:-1002 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)babySatErrorWithOperationName:(id)name
{
  v10[1] = *MEMORY[0x1E69E9840];
  name = [MEMORY[0x1E696AEC0] stringWithFormat:@"Operation is babysat {operationName: %@}", name];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = name;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"com.apple.reminderkit" code:-1003 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)retryLaterErrorWithInterval:(double)interval
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v9 = @"REMErrorRetryAfterKey";
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:{fmax(interval, 0.0)}];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v3 errorWithDomain:@"com.apple.reminderkit" code:-1004 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)notSupportedErrorWithDebugDescription:(id)description
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = description;
  v4 = MEMORY[0x1E695DF20];
  descriptionCopy = description;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v3 errorWithDomain:@"com.apple.reminderkit" code:-1006 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (BOOL)isNoSuchObjectError:(id)error forObjectID:(id)d
{
  errorCopy = error;
  dCopy = d;
  domain = [errorCopy domain];
  if ([domain isEqualToString:@"com.apple.reminderkit"])
  {
    code = [errorCopy code];

    if (code == -3000)
    {
      userInfo = [errorCopy userInfo];
      v10 = objc_opt_class();
      v11 = [userInfo objectForKeyedSubscript:@"REMErrorObjectIDEntityNameKey"];
      v12 = REMDynamicCast(v10, v11);

      v13 = objc_opt_class();
      v14 = [userInfo objectForKeyedSubscript:@"REMErrorObjectIDUUIDKey"];
      v15 = REMDynamicCast(v13, v14);

      if (v12 && v15)
      {
        v16 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v15];
        if (v16)
        {
          entityName = [dCopy entityName];
          if ([entityName isEqualToString:v12])
          {
            uuid = [dCopy uuid];
            v19 = [uuid isEqual:v16];
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
          [REMError isNoSuchObjectError:userInfo forObjectID:v16];
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

+ (id)noSuchObjectErrorWithObjectID:(id)d
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  dCopy = d;
  dCopy = [v3 stringWithFormat:@"No such object error {objectID: %@}", dCopy];
  entityName = [dCopy entityName];
  uuid = [dCopy uuid];

  uUIDString = [uuid UUIDString];

  v13[0] = *MEMORY[0x1E696A278];
  v13[1] = @"REMErrorObjectIDEntityNameKey";
  v14[0] = dCopy;
  v14[1] = entityName;
  v13[2] = @"REMErrorObjectIDUUIDKey";
  v14[2] = uUIDString;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.reminderkit" code:-3000 userInfo:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)noSuchObjectErrorWithExternalIdentifier:(id)identifier
{
  v10[1] = *MEMORY[0x1E69E9840];
  identifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"No such object error {externalIdentifier: %@}", identifier];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = identifier;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"com.apple.reminderkit" code:-3000 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)noSuchObjectErrorWithDACalendarItemUniqueIdentifier:(id)identifier
{
  v10[1] = *MEMORY[0x1E69E9840];
  identifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"No such object error {daCalendarItemUniqueIdentifier: %@}", identifier];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = identifier;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"com.apple.reminderkit" code:-3000 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)noSuchSmartListErrorWithSmartListType:(id)type
{
  v10[1] = *MEMORY[0x1E69E9840];
  type = [MEMORY[0x1E696AEC0] stringWithFormat:@"No such smart list error {smartListType: %@}", type];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = type;
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

+ (id)accountStoreMissingError:(id)error
{
  v10[1] = *MEMORY[0x1E69E9840];
  error = [MEMORY[0x1E696AEC0] stringWithFormat:@"Persistent store not found for some of the changed objects {accountIdentifiers: %@}", error];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = error;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"com.apple.reminderkit" code:-3008 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)saveErrorWithCoreDataError:(id)error
{
  v4 = [self _errorSanitizedForXPCFromError:error];
  v5 = [self _errorWithCode:-3001 underlyingError:v4];

  return v5;
}

+ (id)validationErrorMoveAcrossAccount:(id)account
{
  v10[1] = *MEMORY[0x1E69E9840];
  account = [MEMORY[0x1E696AEC0] stringWithFormat:@"Moving object across is unsupported {objectID: %@}", account];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = account;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"com.apple.reminderkit" code:-3002 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)validationErrorMoveFromAccount:(id)account toAccount:(id)toAccount objectID:(id)d
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Moving between accounts is unsupported {fromAccountID: %@, toAccountID: %@: objectID: %@}", account, toAccount, d];
  v6 = MEMORY[0x1E696ABC0];
  v11 = *MEMORY[0x1E696A278];
  v12[0] = v5;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v6 errorWithDomain:@"com.apple.reminderkit" code:-3002 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)validationErrorListHasNoAccount:(id)account
{
  v10[1] = *MEMORY[0x1E69E9840];
  account = [MEMORY[0x1E696AEC0] stringWithFormat:@"List should not have nil account {listID: %@}", account];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = account;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"com.apple.reminderkit" code:-3002 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)validationErrorMoveReminderFromList:(id)list toList:(id)toList inAccount:(id)account
{
  v12[1] = *MEMORY[0x1E69E9840];
  account = [MEMORY[0x1E696AEC0] stringWithFormat:@"Moving between lists is unsupported in this account {fromListID: %@, toListID: %@, accountID: %@}", list, toList, account];
  v6 = MEMORY[0x1E696ABC0];
  v11 = *MEMORY[0x1E696A278];
  v12[0] = account;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v6 errorWithDomain:@"com.apple.reminderkit" code:-3002 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)validationErrorNestedSubtask:(id)subtask parentReminderID:(id)d
{
  v11[1] = *MEMORY[0x1E69E9840];
  subtask = [MEMORY[0x1E696AEC0] stringWithFormat:@"Nested subtasks is unsupported {parentReminderID: %@, reminderID: %@}", d, subtask];
  v5 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = subtask;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v5 errorWithDomain:@"com.apple.reminderkit" code:-3002 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)validationErrorSubtaskAndParentNotOnSameList:(id)list parentReminderID:(id)d
{
  v11[1] = *MEMORY[0x1E69E9840];
  list = [MEMORY[0x1E696AEC0] stringWithFormat:@"Subtask has different list from its parent reminder {parentReminderID: %@, reminderID: %@}", d, list];
  v5 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = list;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v5 errorWithDomain:@"com.apple.reminderkit" code:-3002 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)validationErrorUndeleteHashtagFromAnotherReminder:(id)reminder expectedReminderID:(id)d
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to undelete hashtag from another reminder {hashtagID: %@, reminderID: %@}", reminder, d];
  v5 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v5 errorWithDomain:@"com.apple.reminderkit" code:-3002 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)validationErrorNotCloudKitAccount:(id)account
{
  v10[1] = *MEMORY[0x1E69E9840];
  account = [MEMORY[0x1E696AEC0] stringWithFormat:@"Action is unavailable to non-CloudKit account {accountID: %@}", account];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = account;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"com.apple.reminderkit" code:-3002 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)validationErrorRemoveAccountBeingInserted:(id)inserted
{
  v10[1] = *MEMORY[0x1E69E9840];
  inserted = [MEMORY[0x1E696AEC0] stringWithFormat:@"Removing an account at the same time inserting it is unsupported {accountID: %@}", inserted];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = inserted;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"com.apple.reminderkit" code:-3002 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)validationErrorRemoveAccountBeingActivated:(id)activated
{
  v10[1] = *MEMORY[0x1E69E9840];
  activated = [MEMORY[0x1E696AEC0] stringWithFormat:@"Removing an account at the same time setting it as active is unsupported {accountID: %@}", activated];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = activated;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"com.apple.reminderkit" code:-3002 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)validationErrorDifferentZoneObjectID:(id)d zoneOwnerName:(id)name parentObjectID:(id)iD parentZoneOwnerName:(id)ownerName
{
  v13[1] = *MEMORY[0x1E69E9840];
  ownerName = [MEMORY[0x1E696AEC0] stringWithFormat:@"Object { id: %@, zoneOwner: %@} and its parent { id: %@, zoneOwner: %@} with different zones are unsupported", d, name, iD, ownerName];
  v7 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E696A278];
  v13[0] = ownerName;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v7 errorWithDomain:@"com.apple.reminderkit" code:-3002 userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)constraintConflictWithIdentifier:(id)identifier constraint:(id)constraint
{
  v11[1] = *MEMORY[0x1E69E9840];
  constraint = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unhandled constraint conflict {identifier: %@, constraint: %@}", identifier, constraint];
  v5 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = constraint;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v5 errorWithDomain:@"com.apple.reminderkit" code:-3003 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)nullifiedRelationshipErrorWithRelationshipName:(id)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = name;
  v4 = MEMORY[0x1E695DF20];
  nameCopy = name;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v3 errorWithDomain:@"com.apple.reminderkit" code:-3005 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)invalidParameterErrorWithDescription:(id)description
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = description;
  v4 = MEMORY[0x1E695DF20];
  descriptionCopy = description;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v3 errorWithDomain:@"com.apple.reminderkit" code:-4000 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)unexpectedNilPropertyWithClass:(Class)class property:(id)property
{
  v11[1] = *MEMORY[0x1E69E9840];
  property = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected nil property {class: %@, property: %@}", class, property];
  v5 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = property;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v5 errorWithDomain:@"com.apple.reminderkit" code:-4001 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)unexpectedNilPropertyWithObjectID:(id)d property:(id)property
{
  v11[1] = *MEMORY[0x1E69E9840];
  property = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected nil property {remObjectID: %@, property: %@}", d, property];
  v5 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = property;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v5 errorWithDomain:@"com.apple.reminderkit" code:-4001 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)xpcPerformerUnavailableErrorWithDescription:(id)description
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A278];
  v11[0] = description;
  v4 = MEMORY[0x1E695DF20];
  descriptionCopy = description;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v3 errorWithDomain:@"com.apple.reminderkit" code:-5000 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (BOOL)catchObjCException:(id)exception error:(id *)error
{
  exceptionCopy = exception;
  exceptionCopy[2]();

  return 1;
}

+ (BOOL)_isCoreDataError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    v5 = 1;
  }

  else
  {
    domain2 = [errorCopy domain];
    v5 = [domain2 isEqualToString:*MEMORY[0x1E695D488]];
  }

  return v5;
}

+ (id)_errorWithCode:(int64_t)code underlyingError:(id)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v6 = errorCopy;
  if (errorCopy)
  {
    v11 = *MEMORY[0x1E696AA08];
    v12[0] = errorCopy;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.reminderkit" code:code userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)_errorWithCode:(int64_t)code userInfo:(id)info error:(id)error path:(id)path URL:(id)l description:(id)description
{
  infoCopy = info;
  errorCopy = error;
  pathCopy = path;
  lCopy = l;
  descriptionCopy = description;
  v18 = [infoCopy mutableCopy];
  v19 = v18;
  if (errorCopy || pathCopy || lCopy || descriptionCopy)
  {
    if (!v18)
    {
      v19 = objc_opt_new();
    }

    if (errorCopy)
    {
      [v19 setObject:errorCopy forKeyedSubscript:*MEMORY[0x1E696AA08]];
    }

    if (pathCopy)
    {
      [v19 setObject:pathCopy forKeyedSubscript:*MEMORY[0x1E696A368]];
    }

    if (lCopy)
    {
      [v19 setObject:lCopy forKeyedSubscript:*MEMORY[0x1E696A998]];
    }

    if (descriptionCopy)
    {
      [v19 setObject:descriptionCopy forKeyedSubscript:*MEMORY[0x1E696A578]];
      [v19 setObject:descriptionCopy forKeyedSubscript:*MEMORY[0x1E696A278]];
    }
  }

  v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.reminderkit" code:code userInfo:infoCopy];

  return v20;
}

+ (id)_errorSanitizedForXPCFromError:(id)error
{
  errorCopy = error;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  userInfo = [errorCopy userInfo];
  v6 = *MEMORY[0x1E696A578];
  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A578]];

  if (v7)
  {
    userInfo2 = [errorCopy userInfo];
    v9 = [userInfo2 objectForKeyedSubscript:v6];
    [v4 setObject:v9 forKeyedSubscript:v6];
  }

  userInfo3 = [errorCopy userInfo];
  v11 = *MEMORY[0x1E696A278];
  v12 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x1E696A278]];

  if (v12)
  {
    userInfo4 = [errorCopy userInfo];
    v14 = [userInfo4 objectForKeyedSubscript:v11];
    [v4 setObject:v14 forKeyedSubscript:v11];
  }

  userInfo5 = [errorCopy userInfo];
  v16 = [userInfo5 objectForKeyedSubscript:@"REMErrorObjectIDEntityNameKey"];

  if (v16)
  {
    userInfo6 = [errorCopy userInfo];
    v18 = [userInfo6 objectForKeyedSubscript:@"REMErrorObjectIDEntityNameKey"];
    [v4 setObject:v18 forKeyedSubscript:@"REMErrorObjectIDEntityNameKey"];
  }

  userInfo7 = [errorCopy userInfo];
  v20 = [userInfo7 objectForKeyedSubscript:@"REMErrorObjectIDUUIDKey"];

  if (v20)
  {
    userInfo8 = [errorCopy userInfo];
    v22 = [userInfo8 objectForKeyedSubscript:@"REMErrorObjectIDUUIDKey"];
    [v4 setObject:v22 forKeyedSubscript:@"REMErrorObjectIDUUIDKey"];
  }

  userInfo9 = [errorCopy userInfo];
  v24 = [userInfo9 objectForKeyedSubscript:@"NSUnderlyingException"];

  if (v24)
  {
    v25 = MEMORY[0x1E696AEC0];
    name = [v24 name];
    reason = [v24 reason];
    v28 = [v25 stringWithFormat:@"exception.name: %@, reason: %@", name, reason];
    [v4 setObject:v28 forKeyedSubscript:v11];
  }

  v29 = MEMORY[0x1E696ABC0];
  domain = [errorCopy domain];
  v31 = [v29 errorWithDomain:domain code:objc_msgSend(errorCopy userInfo:{"code"), v4}];

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