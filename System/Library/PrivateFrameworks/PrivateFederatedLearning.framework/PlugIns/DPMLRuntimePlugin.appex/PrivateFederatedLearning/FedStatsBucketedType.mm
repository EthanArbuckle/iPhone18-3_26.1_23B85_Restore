@interface FedStatsBucketedType
+ (id)createFromDict:(id)a3 possibleError:(id *)a4;
- (FedStatsBucketedType)initWithBucketBoundaries:(id)a3;
- (FedStatsBucketedType)initWithMinValue:(id)a3 maxValue:(id)a4 bucketCount:(id)a5;
- (id)decodeFromIndex:(id)a3 possibleError:(id *)a4;
- (id)encodeToIndex:(id)a3 possibleError:(id *)a4;
- (id)indexToInterval:(id)a3;
- (id)sampleForIndex:(unint64_t)a3;
- (unint64_t)classCount;
@end

@implementation FedStatsBucketedType

- (FedStatsBucketedType)initWithBucketBoundaries:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FedStatsBucketedType;
  v5 = -[FedStatsBoundedULongType initWithBound:](&v13, "initWithBound:", [v4 count]);
  v6 = v5;
  if (v5)
  {
    minValue = v5->_minValue;
    v5->_minValue = 0;

    maxValue = v6->_maxValue;
    v6->_maxValue = 0;

    bucketCount = v6->_bucketCount;
    v6->_bucketCount = 0;

    v10 = [NSArray arrayWithArray:v4];
    bucketBoundaries = v6->_bucketBoundaries;
    v6->_bucketBoundaries = v10;

    v6->_version = 1;
  }

  return v6;
}

- (FedStatsBucketedType)initWithMinValue:(id)a3 maxValue:(id)a4 bucketCount:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v24.receiver = self;
  v24.super_class = FedStatsBucketedType;
  v12 = -[FedStatsBoundedULongType initWithBound:](&v24, "initWithBound:", [v11 unsignedLongValue] + 1);
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_minValue, a3);
    objc_storeStrong(&v13->_maxValue, a4);
    objc_storeStrong(&v13->_bucketCount, a5);
    [v10 floatValue];
    v15 = v14;
    [v9 floatValue];
    v17 = v15 - v16;
    [v11 floatValue];
    *&v19 = v17 / v18;
    v20 = [NSNumber numberWithFloat:v19];
    stepSize = v13->_stepSize;
    v13->_stepSize = v20;

    bucketBoundaries = v13->_bucketBoundaries;
    v13->_bucketBoundaries = 0;

    v13->_version = 2;
  }

  return v13;
}

+ (id)createFromDict:(id)a3 possibleError:(id *)a4
{
  v6 = a3;
  v7 = [v6 objectForKey:@"bucketBoundaries"];
  v8 = [v6 objectForKey:@"minValue"];
  v9 = [v6 objectForKey:@"maxValue"];
  v10 = [v6 objectForKey:@"bucketCount"];
  v11 = v10;
  if (v8)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  v14 = v12 || v10 == 0;
  if ((v7 != 0) != v14)
  {
    if (!a4)
    {
      goto LABEL_37;
    }

    v15 = [NSString stringWithFormat:@"You can either have %@ or the triple (%@, %@, %@) as keys, not all", @"bucketBoundaries", @"minValue", @"maxValue", @"bucketCount"];
    v16 = 301;
LABEL_35:
    *a4 = [FedStatsError errorWithCode:v16 description:v15];

LABEL_36:
    a4 = 0;
    goto LABEL_37;
  }

  if (!v7)
  {
    [v10 floatValue];
    if (v24 != [v11 intValue] || (v42 = a1, v25 = objc_msgSend(v11, "unsignedIntValue"), v25 != objc_msgSend(v11, "intValue")) || !objc_msgSend(v11, "unsignedIntValue"))
    {
      if (!a4)
      {
        goto LABEL_37;
      }

      v15 = [NSString stringWithFormat:@"The value of %@ must be a positive integer", @"bucketCount"];
      v16 = 302;
      goto LABEL_35;
    }

    [v8 floatValue];
    v27 = v26;
    [v9 floatValue];
    if (v27 >= v28)
    {
      [NSString stringWithFormat:@"The value of %@ must be less than the value of %@", @"minValue", @"maxValue"];
      goto LABEL_49;
    }

    v29 = [[v42 alloc] initWithMinValue:v8 maxValue:v9 bucketCount:v11];
    goto LABEL_45;
  }

  v41 = a1;
  v43 = a4;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v17 = v7;
  v18 = [v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v45;
    while (2)
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v45 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v44 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v43)
          {
            v23 = [NSString stringWithFormat:@"The item %@ in the list for %@ is not a number", v22, @"bucketBoundaries"];
            *v43 = [FedStatsError errorWithCode:302 description:v23];
          }

          a4 = 0;
          goto LABEL_37;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  if ([v17 count] < 2)
  {
    a4 = v43;
    if (!v43)
    {
      goto LABEL_37;
    }

    [NSString stringWithFormat:@"You must have at least 2 elements for %@", @"bucketBoundaries", v40];
    goto LABEL_49;
  }

  a4 = v43;
  if ([v17 count] < 2)
  {
LABEL_44:
    v29 = [[v41 alloc] initWithBucketBoundaries:v17];
LABEL_45:
    a4 = v29;
    goto LABEL_37;
  }

  v31 = 1;
  while (1)
  {
    v32 = [v17 objectAtIndexedSubscript:v31];
    [v32 floatValue];
    v34 = v33;
    v35 = v31 - 1;
    v36 = [v17 objectAtIndexedSubscript:v35];
    [v36 floatValue];
    v38 = v37;

    if (v34 <= v38)
    {
      break;
    }

    v31 = v35 + 2;
    if ([v17 count] <= v31)
    {
      goto LABEL_44;
    }
  }

  if (v43)
  {
    [NSString stringWithFormat:@"The entries for %@ must be monotonically increasing", @"bucketBoundaries", v40];
    v39 = LABEL_49:;
    *a4 = [FedStatsError errorWithCode:302 description:v39];

    goto LABEL_36;
  }

LABEL_37:

  return a4;
}

- (id)encodeToIndex:(id)a3 possibleError:(id *)a4
{
  v6 = a3;
  v7 = +[NSNull null];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      v18 = @"The encoder can only work with a number type";
      v19 = 401;
LABEL_11:
      [FedStatsError errorWithCode:v19 description:v18];
      *a4 = v9 = 0;
      goto LABEL_32;
    }

LABEL_19:
    v9 = 0;
    goto LABEL_32;
  }

  [v6 floatValue];
  v11 = v10;
  if ([(FedStatsBucketedType *)self version]== 1)
  {
    v12 = [(FedStatsBucketedType *)self bucketBoundaries];
    v13 = [v12 firstObject];
    [v13 floatValue];
    if (v11 < v14)
    {
LABEL_8:

LABEL_2:
      v9 = &off_100030430;
      goto LABEL_32;
    }

    v15 = [(FedStatsBucketedType *)self bucketBoundaries];
    v16 = [v15 lastObject];
    [v16 floatValue];
    if (v11 > v17)
    {

      goto LABEL_8;
    }

    v27 = [(FedStatsBucketedType *)self bucketBoundaries];
    v28 = [v27 lastObject];
    [v28 floatValue];
    v30 = v29;

    if (v11 == v30)
    {
      v31 = [(FedStatsBucketedType *)self bucketBoundaries];
      v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v31 count] - 1);

      goto LABEL_32;
    }

    v36 = [(FedStatsBucketedType *)self bucketBoundaries];
    v37 = [v36 count] - 1;

    if (v37 >= 2)
    {
      v38 = 0;
      do
      {
        v39 = [(FedStatsBucketedType *)self bucketBoundaries];
        v40 = [v39 objectAtIndex:&v37[v38] >> 1];
        [v40 floatValue];
        v42 = v41;

        if (v11 < v42)
        {
          v37 = (&v37[v38] >> 1);
        }

        else
        {
          v38 = &v37[v38] >> 1;
        }
      }

      while (&v37[-v38] > 1);
    }

    v35 = v37;
    goto LABEL_30;
  }

  if ([(FedStatsBucketedType *)self version]!= 2)
  {
    if (a4)
    {
      v18 = @"The encoder is malformed";
      v19 = 900;
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  v20 = [(FedStatsBucketedType *)self minValue];
  [v20 floatValue];
  v22 = v21;

  v23 = [(FedStatsBucketedType *)self maxValue];
  [v23 floatValue];
  v25 = v24;

  v9 = &off_100030430;
  if (v11 >= v22 && v11 <= v25)
  {
    if (v11 == v25)
    {
      v26 = [(FedStatsBucketedType *)self bucketCount];
LABEL_31:
      v9 = v26;
      goto LABEL_32;
    }

    v32 = [(FedStatsBucketedType *)self stepSize];
    [v32 floatValue];
    v34 = ((v11 - v22) / v33);

    v35 = (v34 + 1);
LABEL_30:
    v26 = [NSNumber numberWithUnsignedLong:v35];
    goto LABEL_31;
  }

LABEL_32:

  return v9;
}

- (id)decodeFromIndex:(id)a3 possibleError:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    if (a4)
    {
      v11 = @"The decoder can only work with a number type";
LABEL_9:
      [FedStatsError errorWithCode:500 description:v11];
      *a4 = v10 = 0;
      goto LABEL_12;
    }

LABEL_10:
    v10 = 0;
    goto LABEL_12;
  }

  v8 = [v6 unsignedLongValue];
  if (v8 >= [(FedStatsBucketedType *)self classCount])
  {
    if (a4)
    {
      v11 = @"The decoder requires a number less than the class count";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v9 = [v7 unsignedLongValue];
  if (v9)
  {
    v10 = [(FedStatsBucketedType *)self sampleForIndex:v9];
  }

  else
  {
    v10 = &off_100030448;
  }

LABEL_12:

  return v10;
}

- (id)indexToInterval:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(FedStatsBucketedType *)self version]== 1)
    {
      v5 = [(FedStatsBucketedType *)self bucketBoundaries];
      v6 = [v5 objectAtIndex:{objc_msgSend(v4, "unsignedLongValue") - 1}];
      v22[0] = v6;
      v7 = [(FedStatsBucketedType *)self bucketBoundaries];
      v8 = [v7 objectAtIndex:{objc_msgSend(v4, "unsignedLongValue")}];
      v22[1] = v8;
      v9 = [NSArray arrayWithObjects:v22 count:2];

LABEL_6:
      goto LABEL_8;
    }

    if ([(FedStatsBucketedType *)self version]== 2)
    {
      v10 = [(FedStatsBucketedType *)self minValue];
      [v10 floatValue];
      v12 = v11;
      v13 = ([v4 unsignedLongValue] - 1);
      v14 = [(FedStatsBucketedType *)self stepSize];
      [v14 floatValue];
      v16 = v12 + (v13 * v15);

      *&v17 = v16;
      v5 = [NSNumber numberWithFloat:v17];
      v21[0] = v5;
      v6 = [(FedStatsBucketedType *)self stepSize];
      [v6 floatValue];
      *&v19 = v16 + v18;
      v7 = [NSNumber numberWithFloat:v19];
      v21[1] = v7;
      v9 = [NSArray arrayWithObjects:v21 count:2];
      goto LABEL_6;
    }
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (unint64_t)classCount
{
  v3 = [(FedStatsBucketedType *)self version];
  if (v3 == 2)
  {
    v4 = [(FedStatsBucketedType *)self bucketCount];
    v5 = [v4 unsignedIntValue] + 1;
  }

  else
  {
    if (v3 != 1)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = [(FedStatsBucketedType *)self bucketBoundaries];
    v5 = [v4 count];
  }

  return v5;
}

- (id)sampleForIndex:(unint64_t)a3
{
  v5 = [(FedStatsBucketedType *)self version];
  if (v5 == 1)
  {
    v12 = [(FedStatsBucketedType *)self bucketBoundaries];
    v6 = v12;
    if (!a3)
    {
      v9 = [v12 lastObject];
      [v9 floatValue];
      *&v11 = *&v11 + 1.0;
      goto LABEL_10;
    }

    v13 = [v12 objectAtIndex:a3 - 1];
    [v13 floatValue];
    v15 = v14;
    v16 = [(FedStatsBucketedType *)self bucketBoundaries];
    v17 = [v16 objectAtIndex:a3];
    [v17 floatValue];
    *&v19 = (v15 + v18) * 0.5;
    v20 = [NSNumber numberWithFloat:v19];
  }

  else
  {
    if (v5 != 2)
    {
      v20 = 0;
      goto LABEL_12;
    }

    if (a3)
    {
      v6 = [(FedStatsBucketedType *)self minValue];
      [v6 floatValue];
      v8 = v7;
      v9 = [(FedStatsBucketedType *)self stepSize];
      [v9 floatValue];
      v11 = v8 + (a3 + -0.5) * v10;
      *&v11 = v11;
LABEL_10:
      v20 = [NSNumber numberWithFloat:v11];

      goto LABEL_11;
    }

    v6 = [(FedStatsBucketedType *)self maxValue];
    [v6 floatValue];
    *&v22 = v21 + 1.0;
    v20 = [NSNumber numberWithFloat:v22];
  }

LABEL_11:

LABEL_12:

  return v20;
}

@end