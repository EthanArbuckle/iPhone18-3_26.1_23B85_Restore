@interface FedStatsCohortQueryURLBits
+ (id)cohortQueryFieldWithKey:(id)a3;
- (id)cohortKeyForParameters:(id)a3 possibleError:(id *)a4;
- (id)initQueryFieldWithKey:(id)a3;
@end

@implementation FedStatsCohortQueryURLBits

- (id)initQueryFieldWithKey:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FedStatsCohortQueryURLBits;
  v6 = [(FedStatsCohortQueryURLBits *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cohortName, a3);
  }

  return v7;
}

+ (id)cohortQueryFieldWithKey:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[a1 alloc] initQueryFieldWithKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)cohortKeyForParameters:(id)a3 possibleError:(id *)a4
{
  v6 = a3;
  v7 = [(FedStatsCohortQueryURLBits *)self cohortName];
  v8 = [v6 objectForKey:v7];

  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([v8 length] < 9)
    {
      v9 = v8;
    }

    else
    {
      v9 = [v8 substringToIndex:8];
    }
  }

  else
  {
    if (a4)
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = [(FedStatsCohortQueryURLBits *)self cohortName];
      v12 = [v10 stringWithFormat:@"The data should have a String value for key %@", v11];
      v13 = [FedStatsError errorWithCode:100 description:v12];
      v14 = *a4;
      *a4 = v13;
    }

    v9 = @"<null>";
  }

  v15 = v9;

  return v15;
}

@end