@interface NCNotificationRequest(NCUIAdditions)
+ (id)requesterIdentifier;
- (BOOL)hasAttachments;
- (BOOL)hasOnlySingleMinimalTextInputAction;
- (BOOL)hasOnlySingleTextInputAction;
- (id)defaultEnvironmentActions;
- (id)minimalEnvironmentActions;
- (uint64_t)showsTextInputOnAppearance;
@end

@implementation NCNotificationRequest(NCUIAdditions)

+ (id)requesterIdentifier
{
  if (requesterIdentifier_onceToken_0 != -1)
  {
    +[NCNotificationRequest(NCUIAdditions) requesterIdentifier];
  }

  v1 = requesterIdentifier___requesterIdentifier_0;

  return v1;
}

- (uint64_t)showsTextInputOnAppearance
{
  result = [a1 hasOnlySingleTextInputAction];
  if (result)
  {
    return [a1 hasAttachments] ^ 1;
  }

  return result;
}

- (BOOL)hasOnlySingleTextInputAction
{
  v1 = [a1 defaultEnvironmentActions];
  if ([v1 count] == 1)
  {
    v2 = [v1 firstObject];
    v3 = [v2 behavior] == 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)defaultEnvironmentActions
{
  v1 = [a1 supplementaryActions];
  v2 = [v1 objectForKey:*MEMORY[0x277D77DA0]];

  return v2;
}

- (BOOL)hasAttachments
{
  v1 = [a1 userNotification];
  v2 = [v1 request];
  v3 = [v2 content];
  v4 = [v3 attachments];
  v5 = [v4 count] != 0;

  return v5;
}

- (BOOL)hasOnlySingleMinimalTextInputAction
{
  v1 = [a1 minimalEnvironmentActions];
  if ([v1 count] == 1)
  {
    v2 = [v1 firstObject];
    v3 = [v2 behavior] == 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)minimalEnvironmentActions
{
  v1 = [a1 supplementaryActions];
  v2 = [v1 objectForKey:*MEMORY[0x277D77DA8]];

  return v2;
}

@end