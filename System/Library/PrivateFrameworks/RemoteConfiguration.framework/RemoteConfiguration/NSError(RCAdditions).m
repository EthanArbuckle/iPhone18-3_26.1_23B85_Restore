@interface NSError(RCAdditions)
- (BOOL)rc_isCancellationError;
- (BOOL)rc_isOperationThrottledError;
- (BOOL)rc_isServiceUnavailableError;
- (uint64_t)rc_isNetworkUnavailableError;
- (uint64_t)rc_isOfflineErrorOfflineReason:()RCAdditions;
- (uint64_t)rc_shouldRetry;
@end

@implementation NSError(RCAdditions)

- (uint64_t)rc_shouldRetry
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"NSErrorRCAdditionsShouldRetry"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (uint64_t)rc_isNetworkUnavailableError
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"NSErrorRCAdditionsIsNetworkUnavailable"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)rc_isCancellationError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x277CCA738]] && objc_msgSend(a1, "code") == -999)
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 domain];
    if ([v4 isEqualToString:@"RCErrorDomain"])
    {
      v3 = [a1 code] == 1;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (BOOL)rc_isServiceUnavailableError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:@"RCErrorDomain"])
  {
    v3 = [a1 userInfo];
    v4 = [v3 objectForKeyedSubscript:@"RCErrorHTTPStatusCode"];
    v5 = [v4 unsignedIntegerValue] == 503;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)rc_isOperationThrottledError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:@"RCErrorDomain"])
  {
    v3 = [a1 code] == 8;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)rc_isOfflineErrorOfflineReason:()RCAdditions
{
  v5 = [a1 domain];
  v6 = [a1 code];
  v13 = 0;
  if (![v5 isEqualToString:@"RCErrorDomain"])
  {
    if ([v5 isEqualToString:*MEMORY[0x277CCA738]] && (v6 == -1018 || v6 == -1009))
    {
      goto LABEL_8;
    }

LABEL_9:
    v10 = [a1 userInfo];
    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    if (v11)
    {
      v9 = [v11 rc_isOfflineErrorOfflineReason:&v13];
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_13;
  }

  if (v6 != 7)
  {
    goto LABEL_9;
  }

  v7 = [a1 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"RCErrorOfflineReasonKey"];

  v13 = [v8 unsignedIntegerValue];
  if (v13)
  {
    v9 = 1;
    goto LABEL_13;
  }

LABEL_8:
  v9 = 1;
  v13 = 1;
LABEL_13:
  if (a3)
  {
    *a3 = v13;
  }

  return v9;
}

@end