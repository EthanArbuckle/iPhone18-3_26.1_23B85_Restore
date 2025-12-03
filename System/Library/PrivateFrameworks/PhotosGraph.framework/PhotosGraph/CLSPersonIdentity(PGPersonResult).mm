@interface CLSPersonIdentity(PGPersonResult)
- (BOOL)isInferredChild;
- (id)keywordDescription;
- (uint64_t)compareToPerson:()PGPersonResult;
@end

@implementation CLSPersonIdentity(PGPersonResult)

- (BOOL)isInferredChild
{
  birthdayDate = [self birthdayDate];
  if (birthdayDate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:birthdayDate];
    v4 = v3;

    v5 = v4 < 410248800.0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)compareToPerson:()PGPersonResult
{
  type = [objc_opt_class() type];
  type2 = [objc_opt_class() type];
  v2 = 1;
  if (type)
  {
    v2 = -1;
  }

  if (type == type2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

- (id)keywordDescription
{
  fullName = [self fullName];
  if ([fullName length])
  {
    contactIdentifier = fullName;
  }

  else
  {
    contactIdentifier = [self contactIdentifier];
  }

  v4 = contactIdentifier;
  if (contactIdentifier)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] %@", @"CLSPersonIdentity", contactIdentifier];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]", @"CLSPersonIdentity", v7];
  }
  v5 = ;

  return v5;
}

@end