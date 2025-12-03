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
  if ([self rem_hasMailto])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [@"mailto:" stringByAppendingString:self];
  }

  return selfCopy;
}

- (id)rem_removingMailto
{
  selfCopy = self;
  if ([selfCopy rem_hasMailto])
  {
    v2 = [selfCopy substringFromIndex:7];

    selfCopy = v2;
  }

  return selfCopy;
}

- (id)rem_addingTel
{
  if ([self rem_hasTel])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [@"tel:" stringByAppendingString:self];
  }

  return selfCopy;
}

- (id)rem_removingTel
{
  selfCopy = self;
  if ([selfCopy rem_hasTel])
  {
    v2 = [selfCopy substringFromIndex:4];

    selfCopy = v2;
  }

  return selfCopy;
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