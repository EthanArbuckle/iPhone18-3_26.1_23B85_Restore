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
  result = [self hasOnlySingleTextInputAction];
  if (result)
  {
    return [self hasAttachments] ^ 1;
  }

  return result;
}

- (BOOL)hasOnlySingleTextInputAction
{
  defaultEnvironmentActions = [self defaultEnvironmentActions];
  if ([defaultEnvironmentActions count] == 1)
  {
    firstObject = [defaultEnvironmentActions firstObject];
    v3 = [firstObject behavior] == 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)defaultEnvironmentActions
{
  supplementaryActions = [self supplementaryActions];
  v2 = [supplementaryActions objectForKey:*MEMORY[0x277D77DA0]];

  return v2;
}

- (BOOL)hasAttachments
{
  userNotification = [self userNotification];
  request = [userNotification request];
  content = [request content];
  attachments = [content attachments];
  v5 = [attachments count] != 0;

  return v5;
}

- (BOOL)hasOnlySingleMinimalTextInputAction
{
  minimalEnvironmentActions = [self minimalEnvironmentActions];
  if ([minimalEnvironmentActions count] == 1)
  {
    firstObject = [minimalEnvironmentActions firstObject];
    v3 = [firstObject behavior] == 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)minimalEnvironmentActions
{
  supplementaryActions = [self supplementaryActions];
  v2 = [supplementaryActions objectForKey:*MEMORY[0x277D77DA8]];

  return v2;
}

@end