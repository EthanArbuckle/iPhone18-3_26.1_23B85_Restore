@interface PHPerson(PGPersonResult)
- (id)keywordDescription;
- (uint64_t)compareToPerson:()PGPersonResult;
@end

@implementation PHPerson(PGPersonResult)

- (uint64_t)compareToPerson:()PGPersonResult
{
  v4 = a3;
  v5 = [objc_opt_class() type];
  if (v5 == [objc_opt_class() type])
  {
    v6 = v4;
    v7 = [a1 faceCount];
    v8 = [v6 faceCount];
    if (v7 <= v8)
    {
      if (v7 < v8)
      {
        v9 = 1;
      }

      else
      {
        v10 = [a1 uuid];
        v11 = [v6 uuid];
        v9 = [v10 compare:v11];
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
  v2 = [a1 name];
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = [a1 localIdentifier];
  }

  v4 = v3;
  if (v3)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] %@", @"PHPerson", v3];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]", @"PHPerson", v7];
  }
  v5 = ;

  return v5;
}

@end