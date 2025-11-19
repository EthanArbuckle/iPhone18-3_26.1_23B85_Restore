@interface NSDictionary(UserNotificationsCore)
- (__CFString)unc_safeCastNonNilStringForKey:()UserNotificationsCore;
- (id)unc_nonEmptyCopy;
- (id)unc_nonNilSetForKey:()UserNotificationsCore;
- (id)unc_safeCastObjectForKey:()UserNotificationsCore class:;
- (id)unc_safeCastObjectForKey:()UserNotificationsCore classes:;
- (void)unc_nonNilArrayForKey:()UserNotificationsCore;
- (void)unc_nonNilDictionaryForKey:()UserNotificationsCore;
@end

@implementation NSDictionary(UserNotificationsCore)

- (id)unc_safeCastObjectForKey:()UserNotificationsCore class:
{
  v1 = [a1 objectForKey:?];
  v2 = UNSafeCast();

  return v2;
}

- (id)unc_safeCastObjectForKey:()UserNotificationsCore classes:
{
  v6 = a4;
  v7 = [a1 objectForKey:a3];
  v8 = UNSafeCastAny();

  return v8;
}

- (id)unc_nonEmptyCopy
{
  v2 = [a1 count];
  if (v2)
  {
    v2 = [a1 copy];
  }

  return v2;
}

- (void)unc_nonNilArrayForKey:()UserNotificationsCore
{
  v1 = [a1 objectForKey:?];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = v3;

  return v3;
}

- (void)unc_nonNilDictionaryForKey:()UserNotificationsCore
{
  v1 = [a1 objectForKey:?];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F8];
  }

  v4 = v3;

  return v3;
}

- (id)unc_nonNilSetForKey:()UserNotificationsCore
{
  v1 = [a1 objectForKey:?];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFD8] set];
  }

  v4 = v3;

  return v4;
}

- (__CFString)unc_safeCastNonNilStringForKey:()UserNotificationsCore
{
  v4 = a3;
  v5 = [a1 unc_safeCastObjectForKey:v4 class:objc_opt_class()];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_1F563BF08;
  }

  v7 = v6;

  return v6;
}

@end