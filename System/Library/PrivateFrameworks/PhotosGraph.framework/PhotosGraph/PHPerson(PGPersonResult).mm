@interface PHPerson(PGPersonResult)
- (id)keywordDescription;
- (uint64_t)compareToPerson:()PGPersonResult;
@end

@implementation PHPerson(PGPersonResult)

- (uint64_t)compareToPerson:()PGPersonResult
{
  v4 = a3;
  type = [objc_opt_class() type];
  if (type == [objc_opt_class() type])
  {
    v6 = v4;
    faceCount = [self faceCount];
    faceCount2 = [v6 faceCount];
    if (faceCount <= faceCount2)
    {
      if (faceCount < faceCount2)
      {
        v9 = 1;
      }

      else
      {
        uuid = [self uuid];
        uuid2 = [v6 uuid];
        v9 = [uuid compare:uuid2];
      }
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)keywordDescription
{
  name = [self name];
  if ([name length])
  {
    localIdentifier = name;
  }

  else
  {
    localIdentifier = [self localIdentifier];
  }

  v4 = localIdentifier;
  if (localIdentifier)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] %@", @"PHPerson", localIdentifier];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]", @"PHPerson", v7];
  }
  v5 = ;

  return v5;
}

@end