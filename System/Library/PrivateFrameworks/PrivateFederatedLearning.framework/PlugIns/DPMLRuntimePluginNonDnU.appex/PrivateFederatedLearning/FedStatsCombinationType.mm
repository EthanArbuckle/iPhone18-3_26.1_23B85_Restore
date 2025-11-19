@interface FedStatsCombinationType
+ (id)createFromDict:(id)a3 possibleError:(id *)a4;
- (FedStatsCombinationType)initWithCombinationSpec:(id)a3;
- (id)decodeFromIndex:(id)a3 possibleError:(id *)a4;
- (id)encodeToIndex:(id)a3 possibleError:(id *)a4;
- (id)sampleForIndex:(unint64_t)a3;
@end

@implementation FedStatsCombinationType

- (FedStatsCombinationType)initWithCombinationSpec:(id)a3
{
  v5 = a3;
  v40.receiver = self;
  v40.super_class = FedStatsCombinationType;
  v6 = [(FedStatsCombinationType *)&v40 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_combinationSpec, a3);
    v8 = [v5 allKeys];
    v9 = [v8 sortedArrayUsingComparator:&stru_100030710];
    orderedKeys = v7->_orderedKeys;
    v7->_orderedKeys = v9;

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = [(FedStatsCombinationType *)v7 orderedKeys];
    v12 = [v11 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v37;
      v15 = 1;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = [v5 objectForKeyedSubscript:*(*(&v36 + 1) + 8 * i)];
          v15 *= [v17 classCount];
        }

        v13 = [v11 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v13);
    }

    else
    {
      v15 = 1;
    }

    v35.receiver = v7;
    v35.super_class = FedStatsCombinationType;
    [(FedStatsBoundedULongType *)&v35 setBound:v15 - 1];
    v7->_classCount = v15;
    v18 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v5 count]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v30 = v7;
    v19 = [(FedStatsCombinationType *)v7 orderedKeys];
    v20 = [v19 countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v32;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v31 + 1) + 8 * j);
          v25 = [v5 objectForKeyedSubscript:v24];
          v15 /= [v25 classCount];

          v26 = [NSNumber numberWithUnsignedLong:v15];
          [v18 setObject:v26 forKeyedSubscript:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v21);
    }

    v27 = [NSDictionary dictionaryWithDictionary:v18];
    v7 = v30;
    strides = v30->_strides;
    v30->_strides = v27;
  }

  return v7;
}

+ (id)createFromDict:(id)a3 possibleError:(id *)a4
{
  v6 = a3;
  v7 = [v6 objectForKey:@"structure"];
  if (!v7)
  {
    if (a4)
    {
      v8 = [NSString stringWithFormat:@"Missing key %@", @"structure"];
      v9 = 300;
LABEL_11:
      *a4 = [FedStatsError errorWithCode:v9 description:v8];

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      [NSString stringWithFormat:@"The value of the key %@ must be an array", @"structure"];
      goto LABEL_10;
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  if ([v7 count] <= 1)
  {
    if (a4)
    {
      [NSString stringWithFormat:@"The value of the key %@ must have at least 2 elements", @"structure"];
      v8 = LABEL_10:;
      v9 = 302;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v37 = a1;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v47;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v47 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v46 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a4)
          {
            v32 = [NSString stringWithFormat:@"Every entry in the value of the key %@ must be a string", @"structure"];
            *a4 = [FedStatsError errorWithCode:302 description:v32];
          }

          goto LABEL_12;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v18 = [v6 objectForKey:@"availableTypes"];
  if (v18)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v19 = [v18 allValues];
      v20 = [v19 countByEnumeratingWithState:&v42 objects:v51 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v43;
        while (2)
        {
          for (j = 0; j != v21; j = j + 1)
          {
            if (*v43 != v22)
            {
              objc_enumerationMutation(v19);
            }

            if (([*(*(&v42 + 1) + 8 * j) conformsToProtocol:&OBJC_PROTOCOL___FedStatsDataTypeProtocol] & 1) == 0)
            {
              v31 = v18;
              if (a4)
              {
                v34 = [NSString stringWithFormat:@"Every value in the %@ dictionary must be a class conforming to %@", @"availableTypes", @"FedStatsDataTypeProtocol"];
                *a4 = [FedStatsError errorWithCode:302 description:v34];
              }

LABEL_57:
              v10 = 0;
              goto LABEL_58;
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v42 objects:v51 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      v19 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v12 count]);
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      obj = v12;
      v24 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v39;
        while (2)
        {
          for (k = 0; k != v25; k = k + 1)
          {
            if (*v39 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v38 + 1) + 8 * k);
            v29 = [v18 objectForKey:v28];
            [v19 setObject:v29 forKeyedSubscript:v28];

            v30 = [v19 objectForKeyedSubscript:v28];

            if (!v30)
            {
              v31 = v18;
              if (a4)
              {
                v35 = [NSString stringWithFormat:@"There is no type defined for %@", v28];
                *a4 = [FedStatsError errorWithCode:302 description:v35];
              }

              goto LABEL_57;
            }
          }

          v25 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }
      }

      v31 = v18;

      v10 = [[v37 alloc] initWithCombinationSpec:v19];
      goto LABEL_58;
    }

    v31 = v18;
    if (a4)
    {
      v19 = [NSString stringWithFormat:@"The value of the key %@ must be a dictionary", @"availableTypes"];
      v33 = 302;
      goto LABEL_50;
    }
  }

  else
  {
    v31 = 0;
    if (a4)
    {
      v19 = [NSString stringWithFormat:@"Missing key %@", @"availableTypes"];
      v33 = 300;
LABEL_50:
      [FedStatsError errorWithCode:v33 description:v19];
      *a4 = v10 = 0;
LABEL_58:

      goto LABEL_59;
    }
  }

  v10 = 0;
LABEL_59:

LABEL_13:

  return v10;
}

- (id)encodeToIndex:(id)a3 possibleError:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v7 = [(FedStatsCombinationType *)self orderedKeys];
    v8 = [v7 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v40;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v40 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v39 + 1) + 8 * i);
          v13 = [v6 objectForKey:v12];

          if (!v13)
          {
            if (a4)
            {
              v26 = [NSString stringWithFormat:@"The combination type requires the key %@ to be in the value dictionary", v12];
              *a4 = [FedStatsError errorWithCode:401 description:v26];
            }

            goto LABEL_27;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v39 objects:v44 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [(FedStatsCombinationType *)self orderedKeys];
    v33 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v33)
    {
      v30 = a4;
      v14 = 0;
      v32 = *v36;
      while (2)
      {
        for (j = 0; j != v33; j = j + 1)
        {
          if (*v36 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v35 + 1) + 8 * j);
          v17 = [(FedStatsCombinationType *)self combinationSpec];
          v18 = [v17 objectForKey:v16];

          v19 = [v6 objectForKeyedSubscript:v16];
          v34 = 0;
          v20 = [v18 encodeToIndex:v19 possibleError:&v34];
          v21 = v34;

          if (!v20)
          {
            if (v30)
            {
              v27 = [*v30 code];
              v28 = [NSString stringWithFormat:@"Error with %@ value in the encoder.", v16];
              *v30 = [FedStatsError errorWithCode:v27 underlyingError:v21 description:v28];
            }

            goto LABEL_27;
          }

          v22 = [(FedStatsCombinationType *)self strides];
          v23 = [v22 objectForKey:v16];
          v24 = [v23 unsignedLongValue];
          v14 += [v20 unsignedLongValue] * v24;
        }

        v33 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v33)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v14 = 0;
    }

    v25 = [NSNumber numberWithUnsignedInteger:v14];
  }

  else if (a4)
  {
    [FedStatsError errorWithCode:401 description:@"The combination type encoder requires a dictionary to process."];
    *a4 = v25 = 0;
  }

  else
  {
LABEL_27:
    v25 = 0;
  }

  return v25;
}

- (id)decodeFromIndex:(id)a3 possibleError:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    if (a4)
    {
      v26 = @"The decoder can only work with a valid number type";
LABEL_16:
      [FedStatsError errorWithCode:500 description:v26];
      *a4 = v25 = 0;
      goto LABEL_22;
    }

LABEL_17:
    v25 = 0;
    goto LABEL_22;
  }

  v8 = [v6 unsignedLongValue];
  if (v8 >= [(FedStatsCombinationType *)self classCount])
  {
    if (a4)
    {
      v26 = @"The decoder requires a number less than the class count";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v31 = v7;
  v9 = [v7 unsignedLongValue];
  v10 = [(FedStatsCombinationType *)self orderedKeys];
  v36 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v10 count]);

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [(FedStatsCombinationType *)self orderedKeys];
  v35 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v35)
  {
    v33 = self;
    v34 = *v39;
    while (2)
    {
      for (i = 0; i != v35; i = i + 1)
      {
        if (*v39 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v38 + 1) + 8 * i);
        v13 = [(FedStatsCombinationType *)self strides];
        v14 = [v13 objectForKey:v12];
        v15 = [v14 unsignedLongValue];

        v37 = v15;
        v16 = v9 / v15;
        v17 = [NSNumber numberWithUnsignedLong:v9 / v15];
        v18 = [(FedStatsCombinationType *)self combinationSpec];
        [v18 objectForKey:v12];
        v20 = v19 = v9;
        v21 = a4;
        v22 = [v20 decodeFromIndex:v17 possibleError:a4];
        [v36 setValue:v22 forKey:v12];

        v23 = [v36 objectForKey:v12];

        if (!v23)
        {
          if (v21)
          {
            v27 = v21;
            v28 = [*v21 localizedDescription];
            v29 = [NSString stringWithFormat:@"Could not decode %@ value in the combination: %@", v12, v28];
            *v27 = [FedStatsError errorWithCode:500 description:v29];
          }

          v25 = 0;
          v24 = v36;
          goto LABEL_21;
        }

        v9 = v19 - v16 * v37;

        a4 = v21;
        self = v33;
      }

      v35 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v35)
      {
        continue;
      }

      break;
    }
  }

  v24 = v36;
  v25 = [NSDictionary dictionaryWithDictionary:v36];
LABEL_21:

  v7 = v31;
LABEL_22:

  return v25;
}

- (id)sampleForIndex:(unint64_t)a3
{
  v5 = [(FedStatsCombinationType *)self orderedKeys];
  v19 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v5 count]);

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(FedStatsCombinationType *)self orderedKeys];
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v18 = *v21;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [(FedStatsCombinationType *)self strides];
        v11 = [v10 objectForKey:v9];
        v12 = [v11 unsignedLongValue];

        v13 = [(FedStatsCombinationType *)self combinationSpec];
        v14 = [v13 objectForKey:v9];
        v15 = [v14 sampleForIndex:a3 / v12];
        [v19 setObject:v15 forKey:v9];

        a3 %= v12;
      }

      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  return v19;
}

@end