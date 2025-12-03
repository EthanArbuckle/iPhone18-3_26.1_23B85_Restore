@interface NSError(TSPersistence)
+ (id)tsp_errorWithCode:()TSPersistence underlyingError:;
+ (id)tsp_recoverableErrorWithCode:()TSPersistence;
+ (id)tsp_recoverableErrorWithError:()TSPersistence;
- (uint64_t)tsp_isRecoverable;
@end

@implementation NSError(TSPersistence)

+ (id)tsp_errorWithCode:()TSPersistence underlyingError:
{
  v6 = a4;
  if (a3 > 5)
  {
    if (a3 <= 8)
    {
      if (a3 != 6)
      {
        v7 = UnsafePointer();
        if (a3 == 7)
        {
          [v7 localizedStringForKey:@"To open this document value:download the latest version of the app from the App Store." table:{&stru_287D36338, @"TSPersistence"}];
        }

        else
        {
          [v7 localizedStringForKey:@"The document was created with an unsupported old application version" value:&stru_287D36338 table:@"TSPersistence"];
        }
        v8 = ;
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (a3 == 9)
    {
      v9 = 0;
      v10 = @"The document was created with an unsupported application version";
      goto LABEL_28;
    }

    if (a3 != 10)
    {
      if (a3 == 11)
      {
        v9 = 0;
        v10 = @"View state version UUID does not match document's.";
        goto LABEL_28;
      }

      goto LABEL_31;
    }

    v7 = UnsafePointer();
    v8 = [v7 localizedStringForKey:@"Can\\U2019t open document without password." value:&stru_287D36338 table:@"TSPersistence"];
    goto LABEL_27;
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_31;
      }

      v7 = UnsafePointer();
      v8 = [v7 localizedStringForKey:@"An error occurred while reading the document." value:&stru_287D36338 table:@"TSPersistence"];
    }

    else
    {
      v7 = UnsafePointer();
      v8 = [v7 localizedStringForKey:@"This document is corrupt." value:&stru_287D36338 table:@"TSPersistence"];
    }

LABEL_27:
    v10 = v8;

    v9 = 0;
    goto LABEL_28;
  }

  if ((a3 - 2) < 2)
  {
    v11 = UnsafePointer();
    v10 = [v11 localizedStringForKey:@"Couldn\\U2019t auto-save document." value:&stru_287D36338 table:@"TSPersistence"];

    v12 = UnsafePointer();
    if (a3 == 2)
    {
      [v12 localizedStringForKey:@"Your most recent changes might be lost." value:&stru_287D36338 table:@"TSPersistence"];
    }

    else
    {
      [v12 localizedStringForKey:@"The disk is full. Free up some space value:then return to your presentation. Your most recent changes might be lost." table:{&stru_287D36338, @"TSPersistence"}];
    }
    v9 = ;

    goto LABEL_28;
  }

  if (a3 == 4 || a3 == 5)
  {
LABEL_26:
    v7 = UnsafePointer();
    v8 = [v7 localizedStringForKey:@"Encountered a critical error." value:&stru_287D36338 table:@"TSPersistence"];
    goto LABEL_27;
  }

LABEL_31:
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSError(TSPersistence) tsp_errorWithCode:underlyingError:]"];
  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/NSError_TSPersistence.mm"];
  [currentHandler handleFailureInFunction:v16 file:v17 lineNumber:83 description:@"Bad error code"];

  v9 = 0;
  v10 = 0;
LABEL_28:
  v13 = [self tsu_errorWithDomain:@"com.apple.iWork.TSPersistence" code:a3 alertTitle:v10 alertMessage:v9 underlyingError:v6];

  return v13;
}

+ (id)tsp_recoverableErrorWithCode:()TSPersistence
{
  v2 = [self tsp_errorWithCode:?];
  v3 = [self tsp_recoverableErrorWithError:v2];

  return v3;
}

+ (id)tsp_recoverableErrorWithError:()TSPersistence
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
    userInfo = [v3 userInfo];
    if (userInfo)
    {
      userInfo2 = [v4 userInfo];
      v7 = [userInfo2 mutableCopy];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    }

    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"TSPErrorIsRecoverable"];
    v9 = MEMORY[0x277CCA9B8];
    domain = [v4 domain];
    v8 = [v9 errorWithDomain:domain code:objc_msgSend(v4 userInfo:{"code"), v7}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)tsp_isRecoverable
{
  code = [self code];
  if (code == 11)
  {
    domain = [self domain];
    if ([domain isEqualToString:@"com.apple.iWork.TSPersistence"])
    {
      bOOLValue = 1;
LABEL_5:

      return bOOLValue;
    }
  }

  userInfo = [self userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"TSPErrorIsRecoverable"];
  bOOLValue = [v6 BOOLValue];

  if (code == 11)
  {
    goto LABEL_5;
  }

  return bOOLValue;
}

@end