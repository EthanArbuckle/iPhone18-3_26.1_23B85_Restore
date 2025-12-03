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
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"NSErrorRCAdditionsShouldRetry"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (uint64_t)rc_isNetworkUnavailableError
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"NSErrorRCAdditionsIsNetworkUnavailable"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)rc_isCancellationError
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x277CCA738]] && objc_msgSend(self, "code") == -999)
  {
    v3 = 1;
  }

  else
  {
    domain2 = [self domain];
    if ([domain2 isEqualToString:@"RCErrorDomain"])
    {
      v3 = [self code] == 1;
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
  domain = [self domain];
  if ([domain isEqualToString:@"RCErrorDomain"])
  {
    userInfo = [self userInfo];
    v4 = [userInfo objectForKeyedSubscript:@"RCErrorHTTPStatusCode"];
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
  domain = [self domain];
  if ([domain isEqualToString:@"RCErrorDomain"])
  {
    v3 = [self code] == 8;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)rc_isOfflineErrorOfflineReason:()RCAdditions
{
  domain = [self domain];
  code = [self code];
  unsignedIntegerValue = 0;
  if (![domain isEqualToString:@"RCErrorDomain"])
  {
    if ([domain isEqualToString:*MEMORY[0x277CCA738]] && (code == -1018 || code == -1009))
    {
      goto LABEL_8;
    }

LABEL_9:
    userInfo = [self userInfo];
    v11 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    if (v11)
    {
      v9 = [v11 rc_isOfflineErrorOfflineReason:&unsignedIntegerValue];
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_13;
  }

  if (code != 7)
  {
    goto LABEL_9;
  }

  userInfo2 = [self userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:@"RCErrorOfflineReasonKey"];

  unsignedIntegerValue = [v8 unsignedIntegerValue];
  if (unsignedIntegerValue)
  {
    v9 = 1;
    goto LABEL_13;
  }

LABEL_8:
  v9 = 1;
  unsignedIntegerValue = 1;
LABEL_13:
  if (a3)
  {
    *a3 = unsignedIntegerValue;
  }

  return v9;
}

@end