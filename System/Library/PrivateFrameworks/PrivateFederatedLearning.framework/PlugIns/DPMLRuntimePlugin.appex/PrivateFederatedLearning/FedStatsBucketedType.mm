@interface FedStatsBucketedType
+ (id)createFromDict:(id)dict possibleError:(id *)error;
- (FedStatsBucketedType)initWithBucketBoundaries:(id)boundaries;
- (FedStatsBucketedType)initWithMinValue:(id)value maxValue:(id)maxValue bucketCount:(id)count;
- (id)decodeFromIndex:(id)index possibleError:(id *)error;
- (id)encodeToIndex:(id)index possibleError:(id *)error;
- (id)indexToInterval:(id)interval;
- (id)sampleForIndex:(unint64_t)index;
- (unint64_t)classCount;
@end

@implementation FedStatsBucketedType

- (FedStatsBucketedType)initWithBucketBoundaries:(id)boundaries
{
  boundariesCopy = boundaries;
  v13.receiver = self;
  v13.super_class = FedStatsBucketedType;
  v5 = -[FedStatsBoundedULongType initWithBound:](&v13, "initWithBound:", [boundariesCopy count]);
  v6 = v5;
  if (v5)
  {
    minValue = v5->_minValue;
    v5->_minValue = 0;

    maxValue = v6->_maxValue;
    v6->_maxValue = 0;

    bucketCount = v6->_bucketCount;
    v6->_bucketCount = 0;

    v10 = [NSArray arrayWithArray:boundariesCopy];
    bucketBoundaries = v6->_bucketBoundaries;
    v6->_bucketBoundaries = v10;

    v6->_version = 1;
  }

  return v6;
}

- (FedStatsBucketedType)initWithMinValue:(id)value maxValue:(id)maxValue bucketCount:(id)count
{
  valueCopy = value;
  maxValueCopy = maxValue;
  countCopy = count;
  v24.receiver = self;
  v24.super_class = FedStatsBucketedType;
  v12 = -[FedStatsBoundedULongType initWithBound:](&v24, "initWithBound:", [countCopy unsignedLongValue] + 1);
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_minValue, value);
    objc_storeStrong(&v13->_maxValue, maxValue);
    objc_storeStrong(&v13->_bucketCount, count);
    [maxValueCopy floatValue];
    v15 = v14;
    [valueCopy floatValue];
    v17 = v15 - v16;
    [countCopy floatValue];
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

+ (id)createFromDict:(id)dict possibleError:(id *)error
{
  dictCopy = dict;
  v7 = [dictCopy objectForKey:@"bucketBoundaries"];
  v8 = [dictCopy objectForKey:@"minValue"];
  v9 = [dictCopy objectForKey:@"maxValue"];
  v10 = [dictCopy objectForKey:@"bucketCount"];
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
    if (!error)
    {
      goto LABEL_37;
    }

    v15 = [NSString stringWithFormat:@"You can either have %@ or the triple (%@, %@, %@) as keys, not all", @"bucketBoundaries", @"minValue", @"maxValue", @"bucketCount"];
    v16 = 301;
LABEL_35:
    *error = [FedStatsError errorWithCode:v16 description:v15];

LABEL_36:
    error = 0;
    goto LABEL_37;
  }

  if (!v7)
  {
    [v10 floatValue];
    if (v24 != [v11 intValue] || (v42 = self, v25 = objc_msgSend(v11, "unsignedIntValue"), v25 != objc_msgSend(v11, "intValue")) || !objc_msgSend(v11, "unsignedIntValue"))
    {
      if (!error)
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

  selfCopy = self;
  errorCopy = error;
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
          if (errorCopy)
          {
            v23 = [NSString stringWithFormat:@"The item %@ in the list for %@ is not a number", v22, @"bucketBoundaries"];
            *errorCopy = [FedStatsError errorWithCode:302 description:v23];
          }

          error = 0;
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
    error = errorCopy;
    if (!errorCopy)
    {
      goto LABEL_37;
    }

    [NSString stringWithFormat:@"You must have at least 2 elements for %@", @"bucketBoundaries", v40];
    goto LABEL_49;
  }

  error = errorCopy;
  if ([v17 count] < 2)
  {
LABEL_44:
    v29 = [[selfCopy alloc] initWithBucketBoundaries:v17];
LABEL_45:
    error = v29;
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

  if (errorCopy)
  {
    [NSString stringWithFormat:@"The entries for %@ must be monotonically increasing", @"bucketBoundaries", v40];
    v39 = LABEL_49:;
    *error = [FedStatsError errorWithCode:302 description:v39];

    goto LABEL_36;
  }

LABEL_37:

  return error;
}

- (id)encodeToIndex:(id)index possibleError:(id *)error
{
  indexCopy = index;
  v7 = +[NSNull null];
  v8 = [indexCopy isEqual:v7];

  if (v8)
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v18 = @"The encoder can only work with a number type";
      v19 = 401;
LABEL_11:
      [FedStatsError errorWithCode:v19 description:v18];
      *error = v9 = 0;
      goto LABEL_32;
    }

LABEL_19:
    v9 = 0;
    goto LABEL_32;
  }

  [indexCopy floatValue];
  v11 = v10;
  if ([(FedStatsBucketedType *)self version]== 1)
  {
    bucketBoundaries = [(FedStatsBucketedType *)self bucketBoundaries];
    firstObject = [bucketBoundaries firstObject];
    [firstObject floatValue];
    if (v11 < v14)
    {
LABEL_8:

LABEL_2:
      v9 = &off_100030430;
      goto LABEL_32;
    }

    bucketBoundaries2 = [(FedStatsBucketedType *)self bucketBoundaries];
    lastObject = [bucketBoundaries2 lastObject];
    [lastObject floatValue];
    if (v11 > v17)
    {

      goto LABEL_8;
    }

    bucketBoundaries3 = [(FedStatsBucketedType *)self bucketBoundaries];
    lastObject2 = [bucketBoundaries3 lastObject];
    [lastObject2 floatValue];
    v30 = v29;

    if (v11 == v30)
    {
      bucketBoundaries4 = [(FedStatsBucketedType *)self bucketBoundaries];
      v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [bucketBoundaries4 count] - 1);

      goto LABEL_32;
    }

    bucketBoundaries5 = [(FedStatsBucketedType *)self bucketBoundaries];
    v37 = [bucketBoundaries5 count] - 1;

    if (v37 >= 2)
    {
      v38 = 0;
      do
      {
        bucketBoundaries6 = [(FedStatsBucketedType *)self bucketBoundaries];
        v40 = [bucketBoundaries6 objectAtIndex:&v37[v38] >> 1];
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
    if (error)
    {
      v18 = @"The encoder is malformed";
      v19 = 900;
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  minValue = [(FedStatsBucketedType *)self minValue];
  [minValue floatValue];
  v22 = v21;

  maxValue = [(FedStatsBucketedType *)self maxValue];
  [maxValue floatValue];
  v25 = v24;

  v9 = &off_100030430;
  if (v11 >= v22 && v11 <= v25)
  {
    if (v11 == v25)
    {
      bucketCount = [(FedStatsBucketedType *)self bucketCount];
LABEL_31:
      v9 = bucketCount;
      goto LABEL_32;
    }

    stepSize = [(FedStatsBucketedType *)self stepSize];
    [stepSize floatValue];
    v34 = ((v11 - v22) / v33);

    v35 = (v34 + 1);
LABEL_30:
    bucketCount = [NSNumber numberWithUnsignedLong:v35];
    goto LABEL_31;
  }

LABEL_32:

  return v9;
}

- (id)decodeFromIndex:(id)index possibleError:(id *)error
{
  indexCopy = index;
  v7 = indexCopy;
  if (!indexCopy)
  {
    if (error)
    {
      v11 = @"The decoder can only work with a number type";
LABEL_9:
      [FedStatsError errorWithCode:500 description:v11];
      *error = v10 = 0;
      goto LABEL_12;
    }

LABEL_10:
    v10 = 0;
    goto LABEL_12;
  }

  unsignedLongValue = [indexCopy unsignedLongValue];
  if (unsignedLongValue >= [(FedStatsBucketedType *)self classCount])
  {
    if (error)
    {
      v11 = @"The decoder requires a number less than the class count";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  unsignedLongValue2 = [v7 unsignedLongValue];
  if (unsignedLongValue2)
  {
    v10 = [(FedStatsBucketedType *)self sampleForIndex:unsignedLongValue2];
  }

  else
  {
    v10 = &off_100030448;
  }

LABEL_12:

  return v10;
}

- (id)indexToInterval:(id)interval
{
  intervalCopy = interval;
  if (intervalCopy)
  {
    if ([(FedStatsBucketedType *)self version]== 1)
    {
      bucketBoundaries = [(FedStatsBucketedType *)self bucketBoundaries];
      stepSize2 = [bucketBoundaries objectAtIndex:{objc_msgSend(intervalCopy, "unsignedLongValue") - 1}];
      v22[0] = stepSize2;
      bucketBoundaries2 = [(FedStatsBucketedType *)self bucketBoundaries];
      v8 = [bucketBoundaries2 objectAtIndex:{objc_msgSend(intervalCopy, "unsignedLongValue")}];
      v22[1] = v8;
      v9 = [NSArray arrayWithObjects:v22 count:2];

LABEL_6:
      goto LABEL_8;
    }

    if ([(FedStatsBucketedType *)self version]== 2)
    {
      minValue = [(FedStatsBucketedType *)self minValue];
      [minValue floatValue];
      v12 = v11;
      v13 = ([intervalCopy unsignedLongValue] - 1);
      stepSize = [(FedStatsBucketedType *)self stepSize];
      [stepSize floatValue];
      v16 = v12 + (v13 * v15);

      *&v17 = v16;
      bucketBoundaries = [NSNumber numberWithFloat:v17];
      v21[0] = bucketBoundaries;
      stepSize2 = [(FedStatsBucketedType *)self stepSize];
      [stepSize2 floatValue];
      *&v19 = v16 + v18;
      bucketBoundaries2 = [NSNumber numberWithFloat:v19];
      v21[1] = bucketBoundaries2;
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
  version = [(FedStatsBucketedType *)self version];
  if (version == 2)
  {
    bucketCount = [(FedStatsBucketedType *)self bucketCount];
    v5 = [bucketCount unsignedIntValue] + 1;
  }

  else
  {
    if (version != 1)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    bucketCount = [(FedStatsBucketedType *)self bucketBoundaries];
    v5 = [bucketCount count];
  }

  return v5;
}

- (id)sampleForIndex:(unint64_t)index
{
  version = [(FedStatsBucketedType *)self version];
  if (version == 1)
  {
    bucketBoundaries = [(FedStatsBucketedType *)self bucketBoundaries];
    minValue = bucketBoundaries;
    if (!index)
    {
      lastObject = [bucketBoundaries lastObject];
      [lastObject floatValue];
      *&v11 = *&v11 + 1.0;
      goto LABEL_10;
    }

    v13 = [bucketBoundaries objectAtIndex:index - 1];
    [v13 floatValue];
    v15 = v14;
    bucketBoundaries2 = [(FedStatsBucketedType *)self bucketBoundaries];
    v17 = [bucketBoundaries2 objectAtIndex:index];
    [v17 floatValue];
    *&v19 = (v15 + v18) * 0.5;
    v20 = [NSNumber numberWithFloat:v19];
  }

  else
  {
    if (version != 2)
    {
      v20 = 0;
      goto LABEL_12;
    }

    if (index)
    {
      minValue = [(FedStatsBucketedType *)self minValue];
      [minValue floatValue];
      v8 = v7;
      lastObject = [(FedStatsBucketedType *)self stepSize];
      [lastObject floatValue];
      v11 = v8 + (index + -0.5) * v10;
      *&v11 = v11;
LABEL_10:
      v20 = [NSNumber numberWithFloat:v11];

      goto LABEL_11;
    }

    minValue = [(FedStatsBucketedType *)self maxValue];
    [minValue floatValue];
    *&v22 = v21 + 1.0;
    v20 = [NSNumber numberWithFloat:v22];
  }

LABEL_11:

LABEL_12:

  return v20;
}

@end