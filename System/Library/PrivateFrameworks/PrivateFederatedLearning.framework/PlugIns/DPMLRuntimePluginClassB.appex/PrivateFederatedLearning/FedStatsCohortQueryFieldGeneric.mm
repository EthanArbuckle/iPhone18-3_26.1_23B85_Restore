@interface FedStatsCohortQueryFieldGeneric
+ (id)cohortQueryFieldWithKey:(id)key;
- (id)cohortKeyForParameters:(id)parameters possibleError:(id *)error;
- (id)initQueryFieldWithKey:(id)key;
@end

@implementation FedStatsCohortQueryFieldGeneric

- (id)initQueryFieldWithKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = FedStatsCohortQueryFieldGeneric;
  v6 = [(FedStatsCohortQueryFieldGeneric *)&v9 init];
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
  cohortName = [(FedStatsCohortQueryFieldGeneric *)self cohortName];
  v8 = [parametersCopy objectForKey:cohortName];

  if (v8)
  {
    v9 = [NSString stringWithFormat:@"%@", v8];
  }

  else
  {
    if (error)
    {
      cohortName2 = [(FedStatsCohortQueryFieldGeneric *)self cohortName];
      v11 = [NSString stringWithFormat:@"The data should have a value for key %@", cohortName2];
      v12 = [FedStatsError errorWithCode:100 description:v11];
      v13 = *error;
      *error = v12;
    }

    v9 = @"<null>";
  }

  return v9;
}

@end