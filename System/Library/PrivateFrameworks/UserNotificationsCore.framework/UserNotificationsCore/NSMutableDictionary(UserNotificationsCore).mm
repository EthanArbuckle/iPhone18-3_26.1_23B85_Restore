@interface NSMutableDictionary(UserNotificationsCore)
- (uint64_t)unc_safeSetObject:()UserNotificationsCore forKey:;
- (void)unc_safeSetNonEmptyArray:()UserNotificationsCore forKey:;
- (void)unc_safeSetNonEmptyDictionary:()UserNotificationsCore forKey:;
- (void)unc_safeSetNonEmptySet:()UserNotificationsCore forKey:;
- (void)unc_safeSetNonEmptyString:()UserNotificationsCore forKey:;
- (void)unc_safeSetNonEmptyString:()UserNotificationsCore withLimit:forKey:;
@end

@implementation NSMutableDictionary(UserNotificationsCore)

- (void)unc_safeSetNonEmptyArray:()UserNotificationsCore forKey:
{
  v7 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 count])
  {
    [self setObject:v7 forKey:v6];
  }

  else
  {
    [self removeObjectForKey:v6];
  }
}

- (void)unc_safeSetNonEmptyDictionary:()UserNotificationsCore forKey:
{
  v7 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 count])
  {
    [self setObject:v7 forKey:v6];
  }

  else
  {
    [self removeObjectForKey:v6];
  }
}

- (void)unc_safeSetNonEmptySet:()UserNotificationsCore forKey:
{
  v7 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 count])
  {
    [self setObject:v7 forKey:v6];
  }

  else
  {
    [self removeObjectForKey:v6];
  }
}

- (void)unc_safeSetNonEmptyString:()UserNotificationsCore forKey:
{
  v7 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 length])
  {
    [self setObject:v7 forKey:v6];
  }

  else
  {
    [self removeObjectForKey:v6];
  }
}

- (void)unc_safeSetNonEmptyString:()UserNotificationsCore withLimit:forKey:
{
  v11 = a3;
  v8 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 length])
  {
    if ([v11 length] <= a4)
    {
      v10 = v11;
    }

    else
    {
      v9 = [v11 substringWithRange:{0, a4}];

      v10 = v9;
    }

    v11 = v10;
    [self setObject:? forKey:?];
  }

  else
  {
    [self removeObjectForKey:v8];
  }
}

- (uint64_t)unc_safeSetObject:()UserNotificationsCore forKey:
{
  if (a3)
  {
    return [self setObject:? forKey:?];
  }

  else
  {
    return [self removeObjectForKey:a4];
  }
}

@end