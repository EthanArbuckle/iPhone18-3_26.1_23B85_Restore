@interface SBKStoreError
+ (id)keyValueStoreDisabledErrorWithTransaction:(id)transaction underlyingError:(id)error;
+ (id)keyValueStoreErrorWithCode:(int64_t)code localizedDescription:(id)description transaction:(id)transaction underlyingError:(id)error;
+ (id)killSwitchErrorWithTransaction:(id)transaction underlyingError:(id)error;
+ (id)networkingBlockedErrorWithTransaction:(id)transaction underlyingError:(id)error;
+ (id)noStoreAccountErrorWithTransaction:(id)transaction underlyingError:(id)error;
+ (id)serverClampErrorWithTransaction:(id)transaction retrySeconds:(double)seconds underlyingError:(id)error;
+ (id)storeAccountMismatchErrorWithPreviousStoreAccountName:(id)name currentStoreAccountName:(id)accountName transaction:(id)transaction underlyingError:(id)error;
+ (id)storeAccountSessionExpiredWithTransaction:(id)transaction underlyingError:(id)error;
+ (id)storeGenericErrorWithTransaction:(id)transaction underlyingError:(id)error;
+ (id)storeLoggedOutErrorWithPreviousStoreAccountName:(id)name transaction:(id)transaction underlyingError:(id)error;
+ (id)storeValidationErrorWithTransaction:(id)transaction underlyingError:(id)error;
+ (id)transactionCancelledErrorWithTransaction:(id)transaction code:(int64_t)code underlyingError:(id)error;
+ (id)transactionMissingDomainErrorWithTransaction:(id)transaction underlyingError:(id)error;
+ (id)transactionMissingURLErrorWithTransaction:(id)transaction underlyingError:(id)error;
+ (id)unknownErrorWithTransaction:(id)transaction underlyingError:(id)error;
+ (id)userCancelledSignInErrorWithTransaction:(id)transaction underlyingError:(id)error;
+ (id)userClampErrorWithTransaction:(id)transaction retrySeconds:(double)seconds underlyingError:(id)error;
+ (id)userEnteredWrongCredentialsErrorWithTransaction:(id)transaction underlyingError:(id)error;
- (BOOL)isRecoverableError;
- (NSString)currentStoreAccountName;
- (NSString)previousStoreAccountName;
- (double)retrySeconds;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation SBKStoreError

- (double)retrySeconds
{
  userInfo = [(SBKStoreError *)self userInfo];
  v3 = [userInfo valueForKey:@"SBKStoreErrorUserInfoKeyRetrySeconds"];

  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (NSString)currentStoreAccountName
{
  userInfo = [(SBKStoreError *)self userInfo];
  v3 = [userInfo valueForKey:@"SBKStoreErrorUserInfoKeyCurrentStoreAccountName"];

  return v3;
}

- (NSString)previousStoreAccountName
{
  userInfo = [(SBKStoreError *)self userInfo];
  v3 = [userInfo valueForKey:@"SBKStoreErrorUserInfoKeyPreviousStoreAccountName"];

  return v3;
}

- (BOOL)isRecoverableError
{
  code = [(SBKStoreError *)self code];
  result = 1;
  if (code > -2007)
  {
    if ((code + 1008) >= 4 && (code + 2006) >= 2 && code != -1)
    {
      return result;
    }

    return 0;
  }

  if ((code + 4003) < 3 || (code + 3002) < 2)
  {
    return 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = SBKStoreError;
  v4 = [(SBKStoreError *)&v7 copyWithZone:zone];
  transaction = [(SBKStoreError *)self transaction];
  [v4 setTransaction:transaction];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  localizedDescription = [(SBKStoreError *)self localizedDescription];
  v7 = [v3 stringWithFormat:@"<%@:%p> %@", v5, self, localizedDescription];

  return v7;
}

+ (id)serverClampErrorWithTransaction:(id)transaction retrySeconds:(double)seconds underlyingError:(id)error
{
  errorCopy = error;
  v8 = MEMORY[0x277CBEB38];
  transactionCopy = transaction;
  dictionary = [v8 dictionary];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [mainBundle localizedStringForKey:@"SBKStoreErrorServerClamp" value:&stru_287C9CB50 table:0];
  [dictionary setValue:v12 forKey:*MEMORY[0x277CCA450]];

  if (fabs(seconds) > 0.00000011920929)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:seconds];
    [dictionary setValue:v13 forKey:@"SBKStoreErrorUserInfoKeyRetrySeconds"];
  }

  v14 = ErrorInfoWithUnderlyingError(dictionary, errorCopy);
  v15 = [SBKStoreError errorWithDomain:@"SBKStoreErrorDomain" code:-2002 userInfo:v14];

  [v15 setTransaction:transactionCopy];

  return v15;
}

+ (id)userClampErrorWithTransaction:(id)transaction retrySeconds:(double)seconds underlyingError:(id)error
{
  errorCopy = error;
  v8 = MEMORY[0x277CBEB38];
  transactionCopy = transaction;
  dictionary = [v8 dictionary];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [mainBundle localizedStringForKey:@"SBKStoreErrorUserClamp" value:&stru_287C9CB50 table:0];
  [dictionary setValue:v12 forKey:*MEMORY[0x277CCA450]];

  if (fabs(seconds) > 0.00000011920929)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:seconds];
    [dictionary setValue:v13 forKey:@"SBKStoreErrorUserInfoKeyRetrySeconds"];
  }

  v14 = ErrorInfoWithUnderlyingError(dictionary, errorCopy);
  v15 = [SBKStoreError errorWithDomain:@"SBKStoreErrorDomain" code:-2003 userInfo:v14];

  [v15 setTransaction:transactionCopy];

  return v15;
}

+ (id)transactionCancelledErrorWithTransaction:(id)transaction code:(int64_t)code underlyingError:(id)error
{
  errorCopy = error;
  transactionCopy = transaction;
  v9 = NSStringFromErrorCode(code);
  v10 = [SBKStoreError keyValueStoreErrorWithCode:code localizedDescription:v9 transaction:transactionCopy underlyingError:errorCopy];

  return v10;
}

+ (id)transactionMissingURLErrorWithTransaction:(id)transaction underlyingError:(id)error
{
  errorCopy = error;
  transactionCopy = transaction;
  v7 = NSStringFromErrorCode(-3001);
  v8 = [SBKStoreError keyValueStoreErrorWithCode:-3001 localizedDescription:v7 transaction:transactionCopy underlyingError:errorCopy];

  return v8;
}

+ (id)transactionMissingDomainErrorWithTransaction:(id)transaction underlyingError:(id)error
{
  errorCopy = error;
  transactionCopy = transaction;
  v7 = NSStringFromErrorCode(-3002);
  v8 = [SBKStoreError keyValueStoreErrorWithCode:-3002 localizedDescription:v7 transaction:transactionCopy underlyingError:errorCopy];

  return v8;
}

+ (id)storeAccountSessionExpiredWithTransaction:(id)transaction underlyingError:(id)error
{
  errorCopy = error;
  transactionCopy = transaction;
  v7 = NSStringFromErrorCode(-1004);
  v8 = [SBKStoreError keyValueStoreErrorWithCode:-1004 localizedDescription:v7 transaction:transactionCopy underlyingError:errorCopy];

  return v8;
}

+ (id)noStoreAccountErrorWithTransaction:(id)transaction underlyingError:(id)error
{
  errorCopy = error;
  transactionCopy = transaction;
  v7 = NSStringFromErrorCode(-1001);
  v8 = [SBKStoreError keyValueStoreErrorWithCode:-1001 localizedDescription:v7 transaction:transactionCopy underlyingError:errorCopy];

  return v8;
}

+ (id)userEnteredWrongCredentialsErrorWithTransaction:(id)transaction underlyingError:(id)error
{
  errorCopy = error;
  transactionCopy = transaction;
  v7 = NSStringFromErrorCode(-1006);
  v8 = [SBKStoreError keyValueStoreErrorWithCode:-1006 localizedDescription:v7 transaction:transactionCopy underlyingError:errorCopy];

  return v8;
}

+ (id)userCancelledSignInErrorWithTransaction:(id)transaction underlyingError:(id)error
{
  errorCopy = error;
  transactionCopy = transaction;
  v7 = NSStringFromErrorCode(-1005);
  v8 = [SBKStoreError keyValueStoreErrorWithCode:-1005 localizedDescription:v7 transaction:transactionCopy underlyingError:errorCopy];

  return v8;
}

+ (id)storeValidationErrorWithTransaction:(id)transaction underlyingError:(id)error
{
  v4 = MEMORY[0x277CCACA8];
  errorCopy = error;
  errorCopy = [v4 stringWithFormat:@"SBKStoreErrorCodeGeneric: Request Invalid: It's likely that there is something wrong with the request format (underlyingError = %@).\n\t*** Please file a radar against 'Purple StoreBookkeeper / 1.0'\n\t*** - enable logging in Settings->Internal: iTunes Store->Verbose and iPod->Bookmark Syncing->Verbose\n\t*** - reproduce, then run > 'ituneskvsTool -debug' and attach console and PurplePod output\n", errorCopy];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:errorCopy forKey:*MEMORY[0x277CCA450]];
  v8 = ErrorInfoWithUnderlyingError(v7, errorCopy);

  v9 = [SBKStoreError errorWithDomain:@"SBKStoreErrorDomain" code:-1007 userInfo:v8];

  return v9;
}

+ (id)storeGenericErrorWithTransaction:(id)transaction underlyingError:(id)error
{
  v4 = MEMORY[0x277CCACA8];
  errorCopy = error;
  errorCopy = [v4 stringWithFormat:@"SBKStoreErrorCodeGeneric: An unspecified server-side error was encountered (underlyingError = %@).\n\t*** Please file a radar against 'Purple StoreBookkeeper / 1.0'\n\t*** - enable logging in Settings->Internal: iTunes Store->Verbose and iPod->Bookmark Syncing->Verbose\n\t*** - reproduce, then run > 'ituneskvsTool -debug' and attach console and PurplePod output\n", errorCopy];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:errorCopy forKey:*MEMORY[0x277CCA450]];
  v8 = ErrorInfoWithUnderlyingError(v7, errorCopy);

  v9 = [SBKStoreError errorWithDomain:@"SBKStoreErrorDomain" code:-1007 userInfo:v8];

  return v9;
}

+ (id)storeAccountMismatchErrorWithPreviousStoreAccountName:(id)name currentStoreAccountName:(id)accountName transaction:(id)transaction underlyingError:(id)error
{
  v9 = MEMORY[0x277CBEB38];
  errorCopy = error;
  transactionCopy = transaction;
  accountNameCopy = accountName;
  nameCopy = name;
  dictionary = [v9 dictionary];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v16 = [mainBundle localizedStringForKey:@"SBKStoreErrorStoreAccountMismatch" value:&stru_287C9CB50 table:0];
  [dictionary setValue:v16 forKey:*MEMORY[0x277CCA450]];

  [dictionary setValue:nameCopy forKey:@"SBKStoreErrorUserInfoKeyPreviousStoreAccountName"];
  [dictionary setValue:accountNameCopy forKey:@"SBKStoreErrorUserInfoKeyCurrentStoreAccountName"];

  v17 = ErrorInfoWithUnderlyingError(dictionary, errorCopy);

  v18 = [SBKStoreError errorWithDomain:@"SBKStoreErrorDomain" code:-1003 userInfo:v17];

  [v18 setTransaction:transactionCopy];

  return v18;
}

+ (id)storeLoggedOutErrorWithPreviousStoreAccountName:(id)name transaction:(id)transaction underlyingError:(id)error
{
  v7 = MEMORY[0x277CBEB38];
  errorCopy = error;
  transactionCopy = transaction;
  nameCopy = name;
  dictionary = [v7 dictionary];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v13 = [mainBundle localizedStringForKey:@"SBKStoreErrorStoreAccountLoggedOut" value:&stru_287C9CB50 table:0];
  [dictionary setValue:v13 forKey:*MEMORY[0x277CCA450]];

  [dictionary setValue:nameCopy forKey:@"SBKStoreErrorUserInfoKeyPreviousStoreAccountName"];
  v14 = ErrorInfoWithUnderlyingError(dictionary, errorCopy);

  v15 = [SBKStoreError errorWithDomain:@"SBKStoreErrorDomain" code:-1002 userInfo:v14];

  [v15 setTransaction:transactionCopy];

  return v15;
}

+ (id)killSwitchErrorWithTransaction:(id)transaction underlyingError:(id)error
{
  errorCopy = error;
  transactionCopy = transaction;
  v7 = NSStringFromErrorCode(-2005);
  v8 = [SBKStoreError keyValueStoreErrorWithCode:-2005 localizedDescription:v7 transaction:transactionCopy underlyingError:errorCopy];

  return v8;
}

+ (id)networkingBlockedErrorWithTransaction:(id)transaction underlyingError:(id)error
{
  errorCopy = error;
  transactionCopy = transaction;
  v7 = NSStringFromErrorCode(-2004);
  v8 = [SBKStoreError keyValueStoreErrorWithCode:-2004 localizedDescription:v7 transaction:transactionCopy underlyingError:errorCopy];

  return v8;
}

+ (id)keyValueStoreDisabledErrorWithTransaction:(id)transaction underlyingError:(id)error
{
  errorCopy = error;
  transactionCopy = transaction;
  v7 = NSStringFromErrorCode(-2006);
  v8 = [SBKStoreError keyValueStoreErrorWithCode:-2006 localizedDescription:v7 transaction:transactionCopy underlyingError:errorCopy];

  return v8;
}

+ (id)unknownErrorWithTransaction:(id)transaction underlyingError:(id)error
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277CCA450];
  v4 = MEMORY[0x277CCACA8];
  errorCopy = error;
  v6 = [v4 stringWithFormat:@"SBKTransactionErorGeneric: An unknown server error occurred. (underlyingError = %@) \n\t*** Please file a radar against 'Purple StoreBookkeeper / 1.0'\n\t*** - enable logging in Settings->Internal: iTunes Store->Verbose and iPod->Bookmark Syncing->Verbose\n\t*** - reproduce, then run > 'ituneskvsTool -debug' and attach console and PurplePod output\n", errorCopy, v12];
  v13[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v8 = ErrorInfoWithUnderlyingError(v7, errorCopy);

  v9 = [SBKStoreError errorWithDomain:@"SBKStoreErrorDomain" code:-1 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)keyValueStoreErrorWithCode:(int64_t)code localizedDescription:(id)description transaction:(id)transaction underlyingError:(id)error
{
  v9 = MEMORY[0x277CBEAC0];
  v10 = *MEMORY[0x277CCA450];
  errorCopy = error;
  transactionCopy = transaction;
  v13 = [v9 dictionaryWithObject:description forKey:v10];
  v14 = ErrorInfoWithUnderlyingError(v13, errorCopy);

  v15 = [SBKStoreError errorWithDomain:@"SBKStoreErrorDomain" code:code userInfo:v14];

  [v15 setTransaction:transactionCopy];

  return v15;
}

@end