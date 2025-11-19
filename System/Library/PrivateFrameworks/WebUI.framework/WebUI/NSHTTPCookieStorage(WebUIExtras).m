@interface NSHTTPCookieStorage(WebUIExtras)
- (__CFString)webui_safariCookieAcceptPolicy;
- (float)_safariCookieAcceptPolicyFloatValue;
- (uint64_t)webui_safariCookieAcceptPolicyEnumValue;
- (void)webui_applySafariCookieAcceptPolicy;
@end

@implementation NSHTTPCookieStorage(WebUIExtras)

- (void)webui_applySafariCookieAcceptPolicy
{
  v2 = [a1 webui_safariCookieAcceptPolicy];
  v4 = v2;
  if (!v2 || ([v2 isEqualToString:@"only from main document domain"] & 1) != 0)
  {
    v3 = 2;
LABEL_4:
    [a1 setCookieAcceptPolicy:v3];
    goto LABEL_5;
  }

  if ([v4 isEqualToString:@"always"])
  {
    v3 = 0;
    goto LABEL_4;
  }

  if ([v4 isEqualToString:@"never"])
  {
    v3 = 1;
    goto LABEL_4;
  }

LABEL_5:
}

- (__CFString)webui_safariCookieAcceptPolicy
{
  [a1 _safariCookieAcceptPolicyFloatValue];
  v2 = @"only from main document domain";
  v3 = @"never";
  if (v1 == 1.0)
  {
    v3 = @"only from main document domain";
  }

  if (v1 != 1.5)
  {
    v2 = v3;
  }

  if (v1 == 2.0)
  {
    return @"always";
  }

  else
  {
    return v2;
  }
}

- (float)_safariCookieAcceptPolicyFloatValue
{
  v0 = [MEMORY[0x277D262A0] sharedConnection];
  v1 = [v0 effectiveValueForSetting:*MEMORY[0x277D26020]];
  v2 = v1;
  if (v1)
  {
    [v1 floatValue];
    v4 = v3;
  }

  else
  {
    v5 = WBS_LOG_CHANNEL_PREFIXCookiePolicy();
    v4 = 1.5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(NSHTTPCookieStorage(WebUIExtras) *)v5 _safariCookieAcceptPolicyFloatValue];
    }
  }

  return v4;
}

- (uint64_t)webui_safariCookieAcceptPolicyEnumValue
{
  [a1 _safariCookieAcceptPolicyFloatValue];
  if (v1 == 2.0)
  {
    return 0;
  }

  v3 = 2;
  if (v1 != 1.0)
  {
    v3 = 1;
  }

  if (v1 == 1.5)
  {
    return 2;
  }

  else
  {
    return v3;
  }
}

@end