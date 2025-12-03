@interface NSError(TSUAdditions)
+ (uint64_t)tsuErrorWithCode:()TSUAdditions;
+ (uint64_t)tsu_errorWithDomain:()TSUAdditions code:alertTitle:alertMessage:;
+ (uint64_t)tsu_errorWithDomain:()TSUAdditions code:alertTitle:alertMessage:underlyingError:;
+ (uint64_t)tsu_errorWithDomain:()TSUAdditions code:description:recoverySuggestion:;
- (uint64_t)tsu_isCancelError;
- (uint64_t)tsu_isOutOfSpaceError;
- (uint64_t)tsu_localizedAlertMessage;
- (uint64_t)tsu_localizedAlertTitle;
@end

@implementation NSError(TSUAdditions)

+ (uint64_t)tsu_errorWithDomain:()TSUAdditions code:description:recoverySuggestion:
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v12 = dictionary;
  if (a5)
  {
    [dictionary setObject:a5 forKey:*MEMORY[0x277CCA450]];
  }

  if (a6)
  {
    [v12 setObject:a6 forKey:*MEMORY[0x277CCA498]];
  }

  return [self errorWithDomain:a3 code:a4 userInfo:v12];
}

+ (uint64_t)tsuErrorWithCode:()TSUAdditions
{
  if (a3 >= 3)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSError(TSUAdditions) tsuErrorWithCode:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/NSError_TSUAdditions.m"), 48, @"Bad error code"}];
  }

  return [self tsu_errorWithDomain:@"com.apple.iWork.TSUtility" code:a3 description:0 recoverySuggestion:0];
}

+ (uint64_t)tsu_errorWithDomain:()TSUAdditions code:alertTitle:alertMessage:
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v12 = dictionary;
  if (a5)
  {
    [dictionary setObject:a5 forKey:*MEMORY[0x277CCA450]];
    [v12 setObject:a5 forKey:@"TSULocalizedErrorAlertTitle"];
  }

  if (a6)
  {
    [v12 setObject:a6 forKey:@"TSULocalizedErrorAlertMessage"];
  }

  return [self errorWithDomain:a3 code:a4 userInfo:v12];
}

+ (uint64_t)tsu_errorWithDomain:()TSUAdditions code:alertTitle:alertMessage:underlyingError:
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v14 = dictionary;
  if (a5)
  {
    [dictionary setObject:a5 forKey:*MEMORY[0x277CCA450]];
    [v14 setObject:a5 forKey:@"TSULocalizedErrorAlertTitle"];
  }

  if (a6)
  {
    [v14 setObject:a6 forKey:@"TSULocalizedErrorAlertMessage"];
  }

  if (a7)
  {
    [v14 setObject:a7 forKey:*MEMORY[0x277CCA7E8]];
  }

  return [self errorWithDomain:a3 code:a4 userInfo:v14];
}

- (uint64_t)tsu_localizedAlertTitle
{
  userInfo = [self userInfo];

  return [userInfo objectForKey:@"TSULocalizedErrorAlertTitle"];
}

- (uint64_t)tsu_localizedAlertMessage
{
  userInfo = [self userInfo];

  return [userInfo objectForKey:@"TSULocalizedErrorAlertMessage"];
}

- (uint64_t)tsu_isOutOfSpaceError
{
  if (self)
  {
    selfCopy = self;
    v2 = *MEMORY[0x277CCA050];
    v3 = *MEMORY[0x277CCA5B8];
    v4 = *MEMORY[0x277CCA7E8];
    while (1)
    {
      domain = [selfCopy domain];
      code = [selfCopy code];
      if (domain)
      {
        v7 = code;
        if ([domain isEqualToString:v2])
        {
          v8 = v7 == 640;
        }

        else
        {
          if (![domain isEqualToString:v3])
          {
            v10 = [domain isEqualToString:@"com.apple.iWork.TSUtility"];
            if (v7 == 2)
            {
              v9 = v10;
            }

            else
            {
              v9 = 0;
            }

            goto LABEL_15;
          }

          v8 = v7 == 28;
        }

        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

LABEL_15:
      v11 = [objc_msgSend(selfCopy "userInfo")];
      if (v11)
      {
        selfCopy = v11;
        if (!v9)
        {
          continue;
        }
      }

      return v9;
    }
  }

  return 0;
}

- (uint64_t)tsu_isCancelError
{
  if (result)
  {
    v1 = result;
    v2 = *MEMORY[0x277CCA050];
    v3 = *MEMORY[0x277CCA738];
    v4 = *MEMORY[0x277CCA7E8];
    do
    {
      domain = [v1 domain];
      code = [v1 code];
      if (domain)
      {
        if (code == 3072)
        {
          v7 = domain;
          v8 = v2;
        }

        else
        {
          if (code != -999)
          {
            goto LABEL_9;
          }

          v7 = domain;
          v8 = v3;
        }

        if ([v7 isEqualToString:v8])
        {
          return 1;
        }
      }

LABEL_9:
      result = [objc_msgSend(v1 "userInfo")];
      v1 = result;
    }

    while (result);
  }

  return result;
}

@end