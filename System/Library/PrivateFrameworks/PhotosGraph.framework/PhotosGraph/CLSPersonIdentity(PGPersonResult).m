@interface CLSPersonIdentity(PGPersonResult)
- (BOOL)isInferredChild;
- (id)keywordDescription;
- (uint64_t)compareToPerson:()PGPersonResult;
@end

@implementation CLSPersonIdentity(PGPersonResult)

- (BOOL)isInferredChild
{
  v1 = [a1 birthdayDate];
  if (v1)
  {
    v2 = [MEMORY[0x277CBEAA8] date];
    [v2 timeIntervalSinceDate:v1];
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
  v0 = [objc_opt_class() type];
  v1 = [objc_opt_class() type];
  v2 = 1;
  if (v0)
  {
    v2 = -1;
  }

  if (v0 == v1)
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
  v2 = [a1 fullName];
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = [a1 contactIdentifier];
  }

  v4 = v3;
  if (v3)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] %@", @"CLSPersonIdentity", v3];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]", @"CLSPersonIdentity", v7];
  }
  v5 = ;

  return v5;
}

@end