@interface FedStatsDataTypeFactory
+ (id)createFedStatsDataType:(id)a3 dataTypeParams:(id)a4 possibleError:(id *)a5;
+ (id)stringFromDataType:(int64_t)a3;
+ (int64_t)dataTypeFromString:(id)a3;
@end

@implementation FedStatsDataTypeFactory

+ (int64_t)dataTypeFromString:(id)a3
{
  v3 = [&unk_282B4BAD0 objectForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = -2;
  }

  return v5;
}

+ (id)stringFromDataType:(int64_t)a3
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v4 = [&unk_282B4BAF8 allKeysForObject:v3];

  if (v4 && [v4 count] == 1)
  {
    v5 = [v4 firstObject];
  }

  else
  {
    v5 = @"InvalidType";
  }

  return v5;
}

+ (id)createFedStatsDataType:(id)a3 dataTypeParams:(id)a4 possibleError:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [FedStatsDataTypeFactory dataTypeFromString:v7];
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
    if (!a5)
    {
      goto LABEL_19;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"The data type %@ is not defined", v7];
    v12 = 200;
LABEL_15:
    *a5 = [FedStatsError errorWithCode:v12 description:v11];

    a5 = 0;
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
    if (!a5)
    {
      goto LABEL_19;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"The data type %@ is not supported", v7];
    v12 = 900;
    goto LABEL_15;
  }

  v10 = FedStatsBoundedULongType;
LABEL_18:
  a5 = [(__objc2_class *)v10 createFromDict:v8 possibleError:a5];
LABEL_19:

  return a5;
}

@end