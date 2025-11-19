@interface SBKStoreError
+ (id)keyValueStoreDisabledErrorWithTransaction:(id)a3 underlyingError:(id)a4;
+ (id)keyValueStoreErrorWithCode:(int64_t)a3 localizedDescription:(id)a4 transaction:(id)a5 underlyingError:(id)a6;
+ (id)killSwitchErrorWithTransaction:(id)a3 underlyingError:(id)a4;
+ (id)networkingBlockedErrorWithTransaction:(id)a3 underlyingError:(id)a4;
+ (id)noStoreAccountErrorWithTransaction:(id)a3 underlyingError:(id)a4;
+ (id)serverClampErrorWithTransaction:(id)a3 retrySeconds:(double)a4 underlyingError:(id)a5;
+ (id)storeAccountMismatchErrorWithPreviousStoreAccountName:(id)a3 currentStoreAccountName:(id)a4 transaction:(id)a5 underlyingError:(id)a6;
+ (id)storeAccountSessionExpiredWithTransaction:(id)a3 underlyingError:(id)a4;
+ (id)storeGenericErrorWithTransaction:(id)a3 underlyingError:(id)a4;
+ (id)storeLoggedOutErrorWithPreviousStoreAccountName:(id)a3 transaction:(id)a4 underlyingError:(id)a5;
+ (id)storeValidationErrorWithTransaction:(id)a3 underlyingError:(id)a4;
+ (id)transactionCancelledErrorWithTransaction:(id)a3 code:(int64_t)a4 underlyingError:(id)a5;
+ (id)transactionMissingDomainErrorWithTransaction:(id)a3 underlyingError:(id)a4;
+ (id)transactionMissingURLErrorWithTransaction:(id)a3 underlyingError:(id)a4;
+ (id)unknownErrorWithTransaction:(id)a3 underlyingError:(id)a4;
+ (id)userCancelledSignInErrorWithTransaction:(id)a3 underlyingError:(id)a4;
+ (id)userClampErrorWithTransaction:(id)a3 retrySeconds:(double)a4 underlyingError:(id)a5;
+ (id)userEnteredWrongCredentialsErrorWithTransaction:(id)a3 underlyingError:(id)a4;
- (BOOL)isRecoverableError;
- (NSString)currentStoreAccountName;
- (NSString)previousStoreAccountName;
- (double)retrySeconds;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation SBKStoreError

- (double)retrySeconds
{
  v2 = [(SBKStoreError *)self userInfo];
  v3 = [v2 valueForKey:@"SBKStoreErrorUserInfoKeyRetrySeconds"];

  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (NSString)currentStoreAccountName
{
  v2 = [(SBKStoreError *)self userInfo];
  v3 = [v2 valueForKey:@"SBKStoreErrorUserInfoKeyCurrentStoreAccountName"];

  return v3;
}

- (NSString)previousStoreAccountName
{
  v2 = [(SBKStoreError *)self userInfo];
  v3 = [v2 valueForKey:@"SBKStoreErrorUserInfoKeyPreviousStoreAccountName"];

  return v3;
}

- (BOOL)isRecoverableError
{
  v2 = [(SBKStoreError *)self code];
  result = 1;
  if (v2 > -2007)
  {
    if ((v2 + 1008) >= 4 && (v2 + 2006) >= 2 && v2 != -1)
    {
      return result;
    }

    return 0;
  }

  if ((v2 + 4003) < 3 || (v2 + 3002) < 2)
  {
    return 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = SBKStoreError;
  v4 = [(SBKStoreError *)&v7 copyWithZone:a3];
  v5 = [(SBKStoreError *)self transaction];
  [v4 setTransaction:v5];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SBKStoreError *)self localizedDescription];
  v7 = [v3 stringWithFormat:@"<%@:%p> %@", v5, self, v6];

  return v7;
}

+ (id)serverClampErrorWithTransaction:(id)a3 retrySeconds:(double)a4 underlyingError:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x277CBEB38];
  v9 = a3;
  v10 = [v8 dictionary];
  v11 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [v11 localizedStringForKey:@"SBKStoreErrorServerClamp" value:&stru_287C9CB50 table:0];
  [v10 setValue:v12 forKey:*MEMORY[0x277CCA450]];

  if (fabs(a4) > 0.00000011920929)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    [v10 setValue:v13 forKey:@"SBKStoreErrorUserInfoKeyRetrySeconds"];
  }

  v14 = ErrorInfoWithUnderlyingError(v10, v7);
  v15 = [SBKStoreError errorWithDomain:@"SBKStoreErrorDomain" code:-2002 userInfo:v14];

  [v15 setTransaction:v9];

  return v15;
}

+ (id)userClampErrorWithTransaction:(id)a3 retrySeconds:(double)a4 underlyingError:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x277CBEB38];
  v9 = a3;
  v10 = [v8 dictionary];
  v11 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [v11 localizedStringForKey:@"SBKStoreErrorUserClamp" value:&stru_287C9CB50 table:0];
  [v10 setValue:v12 forKey:*MEMORY[0x277CCA450]];

  if (fabs(a4) > 0.00000011920929)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    [v10 setValue:v13 forKey:@"SBKStoreErrorUserInfoKeyRetrySeconds"];
  }

  v14 = ErrorInfoWithUnderlyingError(v10, v7);
  v15 = [SBKStoreError errorWithDomain:@"SBKStoreErrorDomain" code:-2003 userInfo:v14];

  [v15 setTransaction:v9];

  return v15;
}

+ (id)transactionCancelledErrorWithTransaction:(id)a3 code:(int64_t)a4 underlyingError:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = NSStringFromErrorCode(a4);
  v10 = [SBKStoreError keyValueStoreErrorWithCode:a4 localizedDescription:v9 transaction:v8 underlyingError:v7];

  return v10;
}

+ (id)transactionMissingURLErrorWithTransaction:(id)a3 underlyingError:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = NSStringFromErrorCode(-3001);
  v8 = [SBKStoreError keyValueStoreErrorWithCode:-3001 localizedDescription:v7 transaction:v6 underlyingError:v5];

  return v8;
}

+ (id)transactionMissingDomainErrorWithTransaction:(id)a3 underlyingError:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = NSStringFromErrorCode(-3002);
  v8 = [SBKStoreError keyValueStoreErrorWithCode:-3002 localizedDescription:v7 transaction:v6 underlyingError:v5];

  return v8;
}

+ (id)storeAccountSessionExpiredWithTransaction:(id)a3 underlyingError:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = NSStringFromErrorCode(-1004);
  v8 = [SBKStoreError keyValueStoreErrorWithCode:-1004 localizedDescription:v7 transaction:v6 underlyingError:v5];

  return v8;
}

+ (id)noStoreAccountErrorWithTransaction:(id)a3 underlyingError:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = NSStringFromErrorCode(-1001);
  v8 = [SBKStoreError keyValueStoreErrorWithCode:-1001 localizedDescription:v7 transaction:v6 underlyingError:v5];

  return v8;
}

+ (id)userEnteredWrongCredentialsErrorWithTransaction:(id)a3 underlyingError:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = NSStringFromErrorCode(-1006);
  v8 = [SBKStoreError keyValueStoreErrorWithCode:-1006 localizedDescription:v7 transaction:v6 underlyingError:v5];

  return v8;
}

+ (id)userCancelledSignInErrorWithTransaction:(id)a3 underlyingError:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = NSStringFromErrorCode(-1005);
  v8 = [SBKStoreError keyValueStoreErrorWithCode:-1005 localizedDescription:v7 transaction:v6 underlyingError:v5];

  return v8;
}

+ (id)storeValidationErrorWithTransaction:(id)a3 underlyingError:(id)a4
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a4;
  v6 = [v4 stringWithFormat:@"SBKStoreErrorCodeGeneric: Request Invalid: It's likely that there is something wrong with the request format (underlyingError = %@).\n\t*** Please file a radar against 'Purple StoreBookkeeper / 1.0'\n\t*** - enable logging in Settings->Internal: iTunes Store->Verbose and iPod->Bookmark Syncing->Verbose\n\t*** - reproduce, then run > 'ituneskvsTool -debug' and attach console and PurplePod output\n", v5];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:*MEMORY[0x277CCA450]];
  v8 = ErrorInfoWithUnderlyingError(v7, v5);

  v9 = [SBKStoreError errorWithDomain:@"SBKStoreErrorDomain" code:-1007 userInfo:v8];

  return v9;
}

+ (id)storeGenericErrorWithTransaction:(id)a3 underlyingError:(id)a4
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a4;
  v6 = [v4 stringWithFormat:@"SBKStoreErrorCodeGeneric: An unspecified server-side error was encountered (underlyingError = %@).\n\t*** Please file a radar against 'Purple StoreBookkeeper / 1.0'\n\t*** - enable logging in Settings->Internal: iTunes Store->Verbose and iPod->Bookmark Syncing->Verbose\n\t*** - reproduce, then run > 'ituneskvsTool -debug' and attach console and PurplePod output\n", v5];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:*MEMORY[0x277CCA450]];
  v8 = ErrorInfoWithUnderlyingError(v7, v5);

  v9 = [SBKStoreError errorWithDomain:@"SBKStoreErrorDomain" code:-1007 userInfo:v8];

  return v9;
}

+ (id)storeAccountMismatchErrorWithPreviousStoreAccountName:(id)a3 currentStoreAccountName:(id)a4 transaction:(id)a5 underlyingError:(id)a6
{
  v9 = MEMORY[0x277CBEB38];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v9 dictionary];
  v15 = [MEMORY[0x277CCA8D8] mainBundle];
  v16 = [v15 localizedStringForKey:@"SBKStoreErrorStoreAccountMismatch" value:&stru_287C9CB50 table:0];
  [v14 setValue:v16 forKey:*MEMORY[0x277CCA450]];

  [v14 setValue:v13 forKey:@"SBKStoreErrorUserInfoKeyPreviousStoreAccountName"];
  [v14 setValue:v12 forKey:@"SBKStoreErrorUserInfoKeyCurrentStoreAccountName"];

  v17 = ErrorInfoWithUnderlyingError(v14, v10);

  v18 = [SBKStoreError errorWithDomain:@"SBKStoreErrorDomain" code:-1003 userInfo:v17];

  [v18 setTransaction:v11];

  return v18;
}

+ (id)storeLoggedOutErrorWithPreviousStoreAccountName:(id)a3 transaction:(id)a4 underlyingError:(id)a5
{
  v7 = MEMORY[0x277CBEB38];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 dictionary];
  v12 = [MEMORY[0x277CCA8D8] mainBundle];
  v13 = [v12 localizedStringForKey:@"SBKStoreErrorStoreAccountLoggedOut" value:&stru_287C9CB50 table:0];
  [v11 setValue:v13 forKey:*MEMORY[0x277CCA450]];

  [v11 setValue:v10 forKey:@"SBKStoreErrorUserInfoKeyPreviousStoreAccountName"];
  v14 = ErrorInfoWithUnderlyingError(v11, v8);

  v15 = [SBKStoreError errorWithDomain:@"SBKStoreErrorDomain" code:-1002 userInfo:v14];

  [v15 setTransaction:v9];

  return v15;
}

+ (id)killSwitchErrorWithTransaction:(id)a3 underlyingError:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = NSStringFromErrorCode(-2005);
  v8 = [SBKStoreError keyValueStoreErrorWithCode:-2005 localizedDescription:v7 transaction:v6 underlyingError:v5];

  return v8;
}

+ (id)networkingBlockedErrorWithTransaction:(id)a3 underlyingError:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = NSStringFromErrorCode(-2004);
  v8 = [SBKStoreError keyValueStoreErrorWithCode:-2004 localizedDescription:v7 transaction:v6 underlyingError:v5];

  return v8;
}

+ (id)keyValueStoreDisabledErrorWithTransaction:(id)a3 underlyingError:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = NSStringFromErrorCode(-2006);
  v8 = [SBKStoreError keyValueStoreErrorWithCode:-2006 localizedDescription:v7 transaction:v6 underlyingError:v5];

  return v8;
}

+ (id)unknownErrorWithTransaction:(id)a3 underlyingError:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277CCA450];
  v4 = MEMORY[0x277CCACA8];
  v5 = a4;
  v6 = [v4 stringWithFormat:@"SBKTransactionErorGeneric: An unknown server error occurred. (underlyingError = %@) \n\t*** Please file a radar against 'Purple StoreBookkeeper / 1.0'\n\t*** - enable logging in Settings->Internal: iTunes Store->Verbose and iPod->Bookmark Syncing->Verbose\n\t*** - reproduce, then run > 'ituneskvsTool -debug' and attach console and PurplePod output\n", v5, v12];
  v13[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v8 = ErrorInfoWithUnderlyingError(v7, v5);

  v9 = [SBKStoreError errorWithDomain:@"SBKStoreErrorDomain" code:-1 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)keyValueStoreErrorWithCode:(int64_t)a3 localizedDescription:(id)a4 transaction:(id)a5 underlyingError:(id)a6
{
  v9 = MEMORY[0x277CBEAC0];
  v10 = *MEMORY[0x277CCA450];
  v11 = a6;
  v12 = a5;
  v13 = [v9 dictionaryWithObject:a4 forKey:v10];
  v14 = ErrorInfoWithUnderlyingError(v13, v11);

  v15 = [SBKStoreError errorWithDomain:@"SBKStoreErrorDomain" code:a3 userInfo:v14];

  [v15 setTransaction:v12];

  return v15;
}

@end