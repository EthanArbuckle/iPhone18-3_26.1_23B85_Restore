@interface FedStatsDataTypeFactory
+ (id)createFedStatsDataType:(id)type dataTypeParams:(id)params possibleError:(id *)error;
+ (id)stringFromDataType:(int64_t)type;
+ (int64_t)dataTypeFromString:(id)string;
@end

@implementation FedStatsDataTypeFactory

+ (int64_t)dataTypeFromString:(id)string
{
  v3 = [&off_100030608 objectForKey:string];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = -2;
  }

  return integerValue;
}

+ (id)stringFromDataType:(int64_t)type
{
  v3 = [NSNumber numberWithInteger:type];
  v4 = [&off_100030630 allKeysForObject:v3];

  if (v4 && [v4 count] == 1)
  {
    firstObject = [v4 firstObject];
  }

  else
  {
    firstObject = @"InvalidType";
  }

  return firstObject;
}

+ (id)createFedStatsDataType:(id)type dataTypeParams:(id)params possibleError:(id *)error
{
  typeCopy = type;
  paramsCopy = params;
  v9 = [FedStatsDataTypeFactory dataTypeFromString:typeCopy];
  if (v9 > 1)
  {
    switch(v9)
    {
      case 2:
        v10 = FedStatsBucketedType;
        goto LABEL_18;
      case 3:
        v10 = FedStatsCategoricalType;
        goto LABEL_18;
      case 99:
        v10 = FedStatsCombinationType;
        goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (v9 == -2)
  {
    if (!error)
    {
      goto LABEL_19;
    }

    typeCopy = [NSString stringWithFormat:@"The data type %@ is not defined", typeCopy];
    v12 = 200;
LABEL_15:
    *error = [FedStatsError errorWithCode:v12 description:typeCopy];

    error = 0;
    goto LABEL_19;
  }

  if (!v9)
  {
    v10 = FedStatsBooleanType;
    goto LABEL_18;
  }

  if (v9 != 1)
  {
LABEL_13:
    if (!error)
    {
      goto LABEL_19;
    }

    typeCopy = [NSString stringWithFormat:@"The data type %@ is not supported", typeCopy];
    v12 = 900;
    goto LABEL_15;
  }

  v10 = FedStatsBoundedULongType;
LABEL_18:
  error = [(__objc2_class *)v10 createFromDict:paramsCopy possibleError:error];
LABEL_19:

  return error;
}

@end