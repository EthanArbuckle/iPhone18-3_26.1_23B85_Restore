@interface NSString(ReminderKitAdditions)
+ (uint64_t)rem_isFirstString:()ReminderKitAdditions equalToSecondString:;
- (id)rem_addingMailto;
- (id)rem_addingTel;
- (id)rem_removingMailto;
- (id)rem_removingTel;
@end

@implementation NSString(ReminderKitAdditions)

- (id)rem_addingMailto
{
  if ([a1 rem_hasMailto])
  {
    v2 = a1;
  }

  else
  {
    v2 = [@"mailto:" stringByAppendingString:a1];
  }

  return v2;
}

- (id)rem_removingMailto
{
  v1 = a1;
  if ([v1 rem_hasMailto])
  {
    v2 = [v1 substringFromIndex:7];

    v1 = v2;
  }

  return v1;
}

- (id)rem_addingTel
{
  if ([a1 rem_hasTel])
  {
    v2 = a1;
  }

  else
  {
    v2 = [@"tel:" stringByAppendingString:a1];
  }

  return v2;
}

- (id)rem_removingTel
{
  v1 = a1;
  if ([v1 rem_hasTel])
  {
    v2 = [v1 substringFromIndex:4];

    v1 = v2;
  }

  return v1;
}

+ (uint64_t)rem_isFirstString:()ReminderKitAdditions equalToSecondString:
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 | v6)
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

@end