@interface FedStatsCohortQueryURLBits
+ (id)cohortQueryFieldWithKey:(id)key;
- (id)cohortKeyForParameters:(id)parameters possibleError:(id *)error;
- (id)initQueryFieldWithKey:(id)key;
@end

@implementation FedStatsCohortQueryURLBits

- (id)initQueryFieldWithKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = FedStatsCohortQueryURLBits;
  v6 = [(FedStatsCohortQueryURLBits *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cohortName, key);
  }

  return v7;
}

+ (id)cohortQueryFieldWithKey:(id)key
{
  if (key)
  {
    keyCopy = key;
    v5 = [[self alloc] initQueryFieldWithKey:keyCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)cohortKeyForParameters:(id)parameters possibleError:(id *)error
{
  parametersCopy = parameters;
  cohortName = [(FedStatsCohortQueryURLBits *)self cohortName];
  v8 = [parametersCopy objectForKey:cohortName];

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
    if (error)
    {
      cohortName2 = [(FedStatsCohortQueryURLBits *)self cohortName];
      v11 = [NSString stringWithFormat:@"The data should have a String value for key %@", cohortName2];
      v12 = [FedStatsError errorWithCode:100 description:v11];
      v13 = *error;
      *error = v12;
    }

    v9 = @"<null>";
  }

  v14 = v9;

  return v14;
}

@end