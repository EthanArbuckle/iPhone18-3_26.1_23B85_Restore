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
  v5 = -[FedStatsBoundedULongType initWithBound:](&v13, sel_initWithBound_, [v4 count]);
  v6 = v5;
  if (v5)
  {
    minValue = v5->_minValue;
    v5->_minValue = 0;

    maxValue = v6->_maxValue;
    v6->_maxValue = 0;

    bucketCount = v6->_bucketCount;
    v6->_bucketCount = 0;

    v10 = [MEMORY[0x277CBEA60] arrayWithArray:v4];
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
  v25.receiver = self;
  v25.super_class = FedStatsBucketedType;
  v12 = -[FedStatsBoundedULongType initWithBound:](&v25, sel_initWithBound_, [v11 unsignedLongValue] + 1);
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_minValue, a3);
    objc_storeStrong(&v13->_maxValue, a4);
    objc_storeStrong(&v13->_bucketCount, a5);
    v14 = MEMORY[0x277CCABB0];
    [v10 floatValue];
    v16 = v15;
    [v9 floatValue];
    v18 = v16 - v17;
    [v11 floatValue];
    *&v20 = v18 / v19;
    v21 = [v14 numberWithFloat:v20];
    stepSize = v13->_stepSize;
    v13->_stepSize = v21;

    bucketBoundaries = v13->_bucketBoundaries;
    v13->_bucketBoundaries = 0;

    v13->_version = 2;
  }

  return v13;
}

+ (id)createFromDict:(id)a3 possibleError:(id *)a4
{
  v50 = *MEMORY[0x277D85DE8];
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

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"You can either have %@ or the triple (%@, %@, %@) as keys, not all", @"bucketBoundaries", @"minValue", @"maxValue", @"bucketCount"];
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
    if (v24 != [v11 intValue] || (v43 = a1, v25 = objc_msgSend(v11, "unsignedIntValue"), v25 != objc_msgSend(v11, "intValue")) || !objc_msgSend(v11, "unsignedIntValue"))
    {
      if (!a4)
      {
        goto LABEL_37;
      }

      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"The value of %@ must be a positive integer", @"bucketCount"];
      v16 = 302;
      goto LABEL_35;
    }

    [v8 floatValue];
    v27 = v26;
    [v9 floatValue];
    if (v27 >= v28)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"The value of %@ must be less than the value of %@", @"minValue", @"maxValue"];
      goto LABEL_49;
    }

    v29 = [[v43 alloc] initWithMinValue:v8 maxValue:v9 bucketCount:v11];
    goto LABEL_45;
  }

  v42 = a1;
  v44 = a4;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v17 = v7;
  v18 = [v17 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v46;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v46 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v45 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v44)
          {
            v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"The item %@ in the list for %@ is not a number", v22, @"bucketBoundaries"];
            *v44 = [FedStatsError errorWithCode:302 description:v23];
          }

          a4 = 0;
          goto LABEL_37;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  if ([v17 count] < 2)
  {
    a4 = v44;
    if (!v44)
    {
      goto LABEL_37;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"You must have at least 2 elements for %@", @"bucketBoundaries", v41];
    goto LABEL_49;
  }

  a4 = v44;
  if ([v17 count] < 2)
  {
LABEL_44:
    v29 = [[v42 alloc] initWithBucketBoundaries:v17];
LABEL_45:
    a4 = v29;
    goto LABEL_37;
  }

  v32 = 1;
  while (1)
  {
    v33 = [v17 objectAtIndexedSubscript:v32];
    [v33 floatValue];
    v35 = v34;
    v36 = v32 - 1;
    v37 = [v17 objectAtIndexedSubscript:v36];
    [v37 floatValue];
    v39 = v38;

    if (v35 <= v39)
    {
      break;
    }

    v32 = v36 + 2;
    if ([v17 count] <= v32)
    {
      goto LABEL_44;
    }
  }

  if (v44)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"The entries for %@ must be monotonically increasing", @"bucketBoundaries", v41];
    v40 = LABEL_49:;
    *a4 = [FedStatsError errorWithCode:302 description:v40];

    goto LABEL_36;
  }

LABEL_37:

  v30 = *MEMORY[0x277D85DE8];

  return a4;
}

- (id)encodeToIndex:(id)a3 possibleError:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CBEB68] null];
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
      v9 = &unk_282B4B9D0;
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
      v31 = MEMORY[0x277CCABB0];
      v32 = [(FedStatsBucketedType *)self bucketBoundaries];
      v9 = [v31 numberWithUnsignedInteger:{objc_msgSend(v32, "count") - 1}];

      goto LABEL_32;
    }

    v38 = [(FedStatsBucketedType *)self bucketBoundaries];
    v39 = [v38 count] - 1;

    if (v39 >= 2)
    {
      v40 = 0;
      do
      {
        v41 = [(FedStatsBucketedType *)self bucketBoundaries];
        v42 = [v41 objectAtIndex:(v39 + v40) >> 1];
        [v42 floatValue];
        v44 = v43;

        if (v11 < v44)
        {
          v39 = (v39 + v40) >> 1;
        }

        else
        {
          v40 = (v39 + v40) >> 1;
        }
      }

      while (v39 - v40 > 1);
    }

    v36 = MEMORY[0x277CCABB0];
    v37 = v39;
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

  v9 = &unk_282B4B9D0;
  if (v11 >= v22 && v11 <= v25)
  {
    if (v11 == v25)
    {
      v26 = [(FedStatsBucketedType *)self bucketCount];
LABEL_31:
      v9 = v26;
      goto LABEL_32;
    }

    v33 = [(FedStatsBucketedType *)self stepSize];
    [v33 floatValue];
    v35 = ((v11 - v22) / v34);

    v36 = MEMORY[0x277CCABB0];
    v37 = v35 + 1;
LABEL_30:
    v26 = [v36 numberWithUnsignedLong:v37];
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
    v10 = &unk_282B4B9E8;
  }

LABEL_12:

  return v10;
}

- (id)indexToInterval:(id)a3
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    if ([(FedStatsBucketedType *)self version]== 1)
    {
      v5 = [(FedStatsBucketedType *)self bucketBoundaries];
      v6 = [v5 objectAtIndex:{objc_msgSend(v4, "unsignedLongValue") - 1}];
      v24[0] = v6;
      v7 = [(FedStatsBucketedType *)self bucketBoundaries];
      v8 = [v7 objectAtIndex:{objc_msgSend(v4, "unsignedLongValue")}];
      v24[1] = v8;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];

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
      v5 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
      v23[0] = v5;
      v18 = MEMORY[0x277CCABB0];
      v6 = [(FedStatsBucketedType *)self stepSize];
      [v6 floatValue];
      *&v20 = v16 + v19;
      v7 = [v18 numberWithFloat:v20];
      v23[1] = v7;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
      goto LABEL_6;
    }
  }

  v9 = 0;
LABEL_8:

  v21 = *MEMORY[0x277D85DE8];

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
    v6 = MEMORY[0x277CCABB0];
    v13 = [(FedStatsBucketedType *)self bucketBoundaries];
    v7 = v13;
    if (!a3)
    {
      v10 = [v13 lastObject];
      [v10 floatValue];
      *&v12 = *&v12 + 1.0;
      goto LABEL_10;
    }

    v14 = [v13 objectAtIndex:a3 - 1];
    [v14 floatValue];
    v16 = v15;
    v17 = [(FedStatsBucketedType *)self bucketBoundaries];
    v18 = [v17 objectAtIndex:a3];
    [v18 floatValue];
    *&v20 = (v16 + v19) * 0.5;
    v21 = [v6 numberWithFloat:v20];
  }

  else
  {
    if (v5 != 2)
    {
      v21 = 0;
      goto LABEL_12;
    }

    v6 = MEMORY[0x277CCABB0];
    if (a3)
    {
      v7 = [(FedStatsBucketedType *)self minValue];
      [v7 floatValue];
      v9 = v8;
      v10 = [(FedStatsBucketedType *)self stepSize];
      [v10 floatValue];
      v12 = v9 + (a3 + -0.5) * v11;
      *&v12 = v12;
LABEL_10:
      v21 = [v6 numberWithFloat:v12];

      goto LABEL_11;
    }

    v7 = [(FedStatsBucketedType *)self maxValue];
    [v7 floatValue];
    *&v23 = v22 + 1.0;
    v21 = [v6 numberWithFloat:v23];
  }

LABEL_11:

LABEL_12:

  return v21;
}

@end