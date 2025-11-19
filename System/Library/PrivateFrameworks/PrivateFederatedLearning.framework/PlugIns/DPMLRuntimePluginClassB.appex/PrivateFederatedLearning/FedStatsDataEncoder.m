@interface FedStatsDataEncoder
+ (BOOL)encodeDataAndRecord:(id)a3 dataTypeContent:(id)a4 baseKey:(id)a5 errorOut:(id *)a6;
+ (BOOL)encodeDataAndRecord:(id)a3 dataTypeContent:(id)a4 metadata:(id)a5 baseKey:(id)a6 errorOut:(id *)a7;
+ (BOOL)encodeDataArrayAndRecord:(id)a3 dataTypeContent:(id)a4 metadata:(id)a5 baseKey:(id)a6 errorOut:(id *)a7;
+ (BOOL)record:(id)a3 metadata:(id)a4 baseKey:(id)a5;
+ (id)createWithDataTypeContent:(id)a3 possibleError:(id *)a4;
+ (id)encodeDataArray:(id)a3 dataTypeContent:(id)a4 resultType:(unint64_t *)a5 errorOut:(id *)a6;
- (FedStatsDataEncoder)initWithDataTypes:(id)a3 combinationTypes:(id)a4;
- (id)decodeFromBitVector:(id)a3 possibleError:(id *)a4;
- (id)decodeFromBitVector:(id)a3 withType:(id)a4 possibleError:(id *)a5;
- (id)encodeToBitVector:(id)a3 possibleError:(id *)a4;
- (id)encodeToBitVector:(id)a3 withType:(id)a4 possibleError:(id *)a5;
- (id)encodeToIndex:(id)a3 error:(id *)a4;
- (id)encodeToIndex:(id)a3 withType:(id)a4 error:(id *)a5;
@end

@implementation FedStatsDataEncoder

- (FedStatsDataEncoder)initWithDataTypes:(id)a3 combinationTypes:(id)a4
{
  v7 = a3;
  v8 = a4;
  v42.receiver = self;
  v42.super_class = FedStatsDataEncoder;
  v9 = [(FedStatsDataEncoder *)&v42 init];
  v10 = v9;
  if (v9)
  {
    v31 = v9;
    objc_storeStrong(&v9->_dataTypes, a3);
    v11 = [v8 allKeys];
    v12 = [v11 sortedArrayUsingComparator:&stru_10002C880];

    v32 = v7;
    v13 = [v7 allKeys];
    v14 = [NSMutableSet setWithArray:v13];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v12;
    v15 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v39;
      do
      {
        v18 = 0;
        do
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v38 + 1) + 8 * v18);
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v20 = [v8 objectForKey:v19];
          v21 = [v20 typesInCombination];

          v22 = [v21 countByEnumeratingWithState:&v34 objects:v43 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v35;
            do
            {
              v25 = 0;
              do
              {
                if (*v35 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                [v14 removeObject:*(*(&v34 + 1) + 8 * v25)];
                v25 = v25 + 1;
              }

              while (v23 != v25);
              v23 = [v21 countByEnumeratingWithState:&v34 objects:v43 count:16];
            }

            while (v23);
          }

          [v14 removeObject:v19];
          v18 = v18 + 1;
        }

        while (v18 != v16);
        v16 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v16);
    }

    v26 = [v14 allObjects];
    v27 = [v26 sortedArrayUsingComparator:&stru_10002C880];
    v28 = [obj arrayByAddingObjectsFromArray:v27];
    v10 = v31;
    typeConfiguration = v31->_typeConfiguration;
    v31->_typeConfiguration = v28;

    v7 = v32;
  }

  return v10;
}

+ (id)createWithDataTypeContent:(id)a3 possibleError:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (!v6 || ![v6 count])
  {
    if (a4)
    {
      [FedStatsError errorWithCode:100 description:@"Missing data type content"];
      *a4 = v30 = 0;
    }

    else
    {
      v30 = 0;
    }

    goto LABEL_42;
  }

  v44 = a4;
  v41 = +[NSMutableArray array];
  v45 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v7 count]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v40 = v7;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  v11 = *v51;
  while (2)
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v51 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v50 + 1) + 8 * i);
      v14 = [v8 objectForKey:v13];
      v15 = [v14 objectForKey:@"dataType"];
      if (!v15)
      {
        v31 = v44;
        if (!v44)
        {
          goto LABEL_39;
        }

        v32 = [NSString stringWithFormat:@"Missing data type specifier key %@", @"dataType"];
        v33 = 100;
        goto LABEL_35;
      }

      v16 = [FedStatsDataTypeFactory dataTypeFromString:v15];
      if (v16 != 99)
      {
        if (v16 != -1)
        {
          v17 = [FedStatsDataTypeFactory createFedStatsDataType:v15 dataTypeParams:v14 possibleError:v44];
          if (v17)
          {
            v18 = v17;
            [v45 setValue:v17 forKey:v13];

            goto LABEL_14;
          }

          if (v44)
          {
            v37 = [*v44 code];
            v32 = [*v44 localizedDescription];
            v38 = [NSString stringWithFormat:@"Could not create data type %@: %@", v13, v32];
            *v44 = [FedStatsError errorWithCode:v37 description:v38];

            goto LABEL_38;
          }

LABEL_39:
          v30 = 0;
LABEL_40:
          v7 = v40;
          v29 = v45;
          goto LABEL_41;
        }

        v31 = v44;
        if (!v44)
        {
          goto LABEL_39;
        }

        v32 = [NSString stringWithFormat:@"The data type %@ is not supported", v15];
        v33 = 101;
LABEL_35:
        *v31 = [FedStatsError errorWithCode:v33 description:v32];
LABEL_38:
        v7 = v40;
        v29 = v45;

        v30 = 0;
        goto LABEL_41;
      }

      [v41 addObject:v13];
LABEL_14:
    }

    v10 = [v8 countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_16:

  v43 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v41 count]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v14 = v41;
  v19 = [v14 countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v19)
  {
    v20 = v19;
    v42 = *v47;
    while (2)
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v47 != v42)
        {
          objc_enumerationMutation(v14);
        }

        v22 = *(*(&v46 + 1) + 8 * j);
        v23 = [v8 objectForKey:v22];
        v15 = [NSMutableDictionary dictionaryWithDictionary:v23];

        v24 = +[FedStatsCombinationType kAvailableTypes];
        v54 = v24;
        v55 = v45;
        v25 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        [v15 addEntriesFromDictionary:v25];

        v26 = [FedStatsCombinationType createFromDict:v15 possibleError:v44];
        if (!v26)
        {
          if (v44)
          {
            v34 = [*v44 code];
            v35 = [*v44 localizedDescription];
            v36 = [NSString stringWithFormat:@"Could not create data type %@: %@", v22, v35];
            *v44 = [FedStatsError errorWithCode:v34 description:v36];
          }

          v30 = 0;
          v8 = v43;
          goto LABEL_40;
        }

        v27 = v26;
        [v43 setValue:v26 forKey:v22];
        [v45 setValue:v27 forKey:v22];
      }

      v20 = [v14 countByEnumeratingWithState:&v46 objects:v56 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v28 = [a1 alloc];
  v29 = v45;
  v14 = [NSDictionary dictionaryWithDictionary:v45];
  v8 = v43;
  v15 = [NSDictionary dictionaryWithDictionary:v43];
  v30 = [v28 initWithDataTypes:v14 combinationTypes:v15];
  v7 = v40;
LABEL_41:

LABEL_42:

  return v30;
}

- (id)encodeToIndex:(id)a3 withType:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [(FedStatsDataEncoder *)self dataTypes];
    v11 = [v10 objectForKey:v9];

    if (!v11)
    {
      if (a5)
      {
        v26 = [NSString stringWithFormat:@"The data type %@ is not valid", v9];
        *a5 = [FedStatsError errorWithCode:200 description:v26];
      }

      v25 = 0;
      goto LABEL_24;
    }

    if ([v11 dataType] == 99)
    {
      v30 = a5;
      v29 = v11;
      v12 = [v29 typesInCombination];
      v13 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v12 count]);
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v34;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v34 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v33 + 1) + 8 * i);
            v20 = [v8 objectForKey:v19];
            [v13 setValue:v20 forKey:v19];
          }

          v16 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v16);
      }

      v21 = [v13 copy];
      v32 = 0;
      v22 = v29;
      v23 = [v29 encodeToIndex:v21 possibleError:&v32];
      v24 = v32;

      a5 = v30;
    }

    else
    {
      v22 = [v8 objectForKey:v9];
      v31 = 0;
      v23 = [v11 encodeToIndex:v22 possibleError:&v31];
      v24 = v31;
    }

    if (v23)
    {
      v27 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v11 classCount]);
      v25 = [FedStatsDataEncoderDimensionalResult resultWithIndex:v23 dimensionality:v27];
    }

    else
    {
      if (!a5)
      {
        v25 = 0;
        goto LABEL_23;
      }

      v27 = [NSString stringWithFormat:@"Cannot encode data to %@", v9];
      [FedStatsError errorWithCode:401 underlyingError:v24 description:v27];
      *a5 = v25 = 0;
    }

LABEL_23:
LABEL_24:

    goto LABEL_25;
  }

  if (a5)
  {
    [FedStatsError errorWithCode:401 description:@"Provided data is empty"];
    *a5 = v25 = 0;
  }

  else
  {
    v25 = 0;
  }

LABEL_25:

  return v25;
}

- (id)encodeToBitVector:(id)a3 withType:(id)a4 possibleError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [(FedStatsDataEncoder *)self dataTypes];
    v11 = [v10 objectForKey:v9];

    if (v11)
    {
      if ([v11 dataType] == 99)
      {
        v27 = a5;
        v26 = v11;
        v12 = [v26 typesInCombination];
        v13 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v12 count]);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v14 = v12;
        v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v29;
          do
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v29 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v28 + 1) + 8 * i);
              v20 = [v8 objectForKey:v19];
              [v13 setValue:v20 forKey:v19];
            }

            v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
          }

          while (v16);
        }

        v21 = [NSDictionary dictionaryWithDictionary:v13];
        v22 = [v26 encodeToOneHotVector:v21 possibleError:v27];
      }

      else
      {
        v24 = [v8 objectForKey:v9];
        v22 = [v11 encodeToOneHotVector:v24 possibleError:a5];
      }
    }

    else
    {
      if (a5)
      {
        v23 = [NSString stringWithFormat:@"The data type %@ is not valid", v9];
        *a5 = [FedStatsError errorWithCode:200 description:v23];
      }

      v22 = 0;
    }
  }

  else if (a5)
  {
    [FedStatsError errorWithCode:401 description:@"Provided data is empty"];
    *a5 = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)decodeFromBitVector:(id)a3 withType:(id)a4 possibleError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [(FedStatsDataEncoder *)self dataTypes];
    v11 = [v10 objectForKey:v9];

    if (v11)
    {
      v12 = [v11 decodeFromOneHotVector:v8 possibleError:a5];
    }

    else
    {
      if (a5)
      {
        v13 = [NSString stringWithFormat:@"The data type %@ is not valid", v9];
        *a5 = [FedStatsError errorWithCode:200 description:v13];
      }

      v12 = 0;
    }
  }

  else if (a5)
  {
    [FedStatsError errorWithCode:401 description:@"Provided data is empty"];
    *a5 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)encodeToBitVector:(id)a3 possibleError:(id *)a4
{
  v30 = a3;
  if (!v30)
  {
    if (a4)
    {
      [FedStatsError errorWithCode:401 description:@"Provided data is empty"];
      *a4 = v16 = 0;
      goto LABEL_30;
    }

    goto LABEL_14;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = [(FedStatsDataEncoder *)self typeConfiguration];
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v36;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        v13 = [(FedStatsDataEncoder *)self dataTypes];
        v14 = [v13 objectForKey:v12];
        v9 += [v14 classCount];
      }

      v8 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v8);

    if (v9 > 0x186A0)
    {
      if (a4)
      {
        v15 = [NSString stringWithFormat:@"Resulting dimensionality %lu is larger than max dimensionality %lu", v9, 100000];
        *a4 = [FedStatsError errorWithCode:900 description:v15];
      }

LABEL_14:
      v16 = 0;
      goto LABEL_30;
    }
  }

  else
  {
  }

  v17 = +[NSMutableData data];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = [(FedStatsDataEncoder *)self typeConfiguration];
  v19 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = *v32;
    while (2)
    {
      v23 = 0;
      v24 = v21;
      do
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v25 = *(*(&v31 + 1) + 8 * v23);
        v21 = [(FedStatsDataEncoder *)self encodeToBitVector:v30 withType:v25 possibleError:a4];

        if (!v21)
        {
          if (a4)
          {
            v26 = [*a4 code];
            v27 = [*a4 localizedDescription];
            v28 = [NSString stringWithFormat:@"Error encoding %@ type: %@", v25, v27];
            *a4 = [FedStatsError errorWithCode:v26 description:v28];
          }

          v16 = 0;
          goto LABEL_29;
        }

        [v17 appendData:v21];
        v23 = v23 + 1;
        v24 = v21;
      }

      while (v20 != v23);
      v20 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v16 = v17;
LABEL_29:

LABEL_30:

  return v16;
}

- (id)encodeToIndex:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(FedStatsDataEncoder *)self typeConfiguration];
  v8 = [v7 count];

  if (v8 != 1)
  {
    if (a4)
    {
      v23 = @"This API is only available for single type in encoding schema";
      v24 = 900;
LABEL_19:
      [FedStatsError errorWithCode:v24 description:v23];
      *a4 = v20 = 0;
      goto LABEL_27;
    }

LABEL_23:
    v20 = 0;
    goto LABEL_27;
  }

  if (!v6)
  {
    if (a4)
    {
      v23 = @"Provided data is empty";
      v24 = 401;
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  v30 = a4;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = [(FedStatsDataEncoder *)self dataTypes];
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        v15 = [(FedStatsDataEncoder *)self dataTypes];
        v16 = [v15 objectForKey:v14];
        if ([v16 dataType] == 99)
        {
        }

        else
        {
          v17 = [v6 objectForKey:v14];

          if (!v17)
          {
            if (v30)
            {
              v25 = [NSString stringWithFormat:@"Provided data does not contain a value for %@", v14];
              *v30 = [FedStatsError errorWithCode:200 description:v25];
            }

            goto LABEL_23;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v18 = [(FedStatsDataEncoder *)self typeConfiguration];
  v19 = [v18 firstObject];
  v31 = 0;
  v20 = [(FedStatsDataEncoder *)self encodeToIndex:v6 withType:v19 error:&v31];
  v21 = v31;

  if (v20)
  {
    v22 = v20;
  }

  else if (v30)
  {
    v26 = [(FedStatsDataEncoder *)self typeConfiguration];
    v27 = [v26 firstObject];
    v28 = [NSString stringWithFormat:@"Cannot encode data to %@", v27];
    *v30 = [FedStatsError errorWithCode:401 underlyingError:v21 description:v28];
  }

LABEL_27:

  return v20;
}

- (id)decodeFromBitVector:(id)a3 possibleError:(id *)a4
{
  v25 = a3;
  v6 = [(FedStatsDataEncoder *)self typeConfiguration];
  v22 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v6 count]);

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(FedStatsDataEncoder *)self typeConfiguration];
  v24 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v24)
  {
    v7 = 0;
    v23 = *v28;
LABEL_3:
    v8 = 0;
    while (1)
    {
      v9 = a4;
      if (*v28 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v27 + 1) + 8 * v8);
      v11 = [(FedStatsDataEncoder *)self dataTypes];
      v12 = [v11 objectForKey:v10];

      v13 = [v12 classCount];
      v14 = [v25 subdataWithRange:{v7, v13}];
      v26 = 0;
      v15 = [(FedStatsDataEncoder *)self decodeFromBitVector:v14 withType:v10 possibleError:&v26];
      v16 = v26;
      if (v15)
      {
        break;
      }

      if (!v9)
      {
        goto LABEL_13;
      }

      v17 = [NSString stringWithFormat:@"The decoder for %@ failed", v10];
      a4 = v9;
      *v9 = [FedStatsError errorWithCode:500 underlyingError:v16 description:v17];

LABEL_14:
      if (!v15)
      {

        v19 = 0;
        v18 = v22;
        goto LABEL_19;
      }

      if (v24 == ++v8)
      {
        v24 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v24)
        {
          goto LABEL_3;
        }

        goto LABEL_17;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v22 addEntriesFromDictionary:v15];
    }

    else
    {
      [v22 setValue:v15 forKey:v10];
    }

    v7 += v13;
LABEL_13:
    a4 = v9;
    goto LABEL_14;
  }

LABEL_17:

  v18 = v22;
  v19 = [NSDictionary dictionaryWithDictionary:v22];
LABEL_19:

  return v19;
}

+ (id)encodeDataArray:(id)a3 dataTypeContent:(id)a4 resultType:(unint64_t *)a5 errorOut:(id *)a6
{
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    if (a6)
    {
      v26 = @"encodeDataArray missing data type content";
LABEL_22:
      [FedStatsError errorWithCode:400 description:v26];
      *a6 = v15 = 0;
      goto LABEL_44;
    }

LABEL_23:
    v15 = 0;
    goto LABEL_44;
  }

  if (!v9)
  {
    if (a6)
    {
      v26 = @"encodeDataArray missing data array";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v53 = 0;
  v11 = [FedStatsDataEncoder createWithDataTypeContent:v10 possibleError:&v53];
  v12 = v53;
  v13 = v12;
  if (v11)
  {
    v38 = v12;
    v39 = v10;
    v40 = v9;
    v14 = [FedStatsDataSampler pickSamplesFrom:v9 length:20];
    v15 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v14 count]);
    v16 = [v11 typeConfiguration];
    v17 = [v16 count];

    v37 = v14;
    if (v17 < 2)
    {
      *a5 = 1;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v27 = v14;
      v28 = [v27 countByEnumeratingWithState:&v44 objects:v57 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v45;
        do
        {
          for (i = 0; i != v29; i = i + 1)
          {
            if (*v45 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v44 + 1) + 8 * i);
            if (v32)
            {
              v41 = 0;
              v33 = [v11 encodeToIndex:v32 error:&v41];
              v34 = v41;
              if (v33)
              {
                [v15 addObject:v33];
              }

              else
              {
                v35 = +[FedStatsLog logger];
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                {
                  sub_10001CD90(&v54, v34, &v56, v35);
                }
              }
            }

            else
            {
              v34 = +[FedStatsLog logger];
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                sub_10001CE08(&buf, v43, v34);
              }
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v44 objects:v57 count:16];
        }

        while (v29);
      }
    }

    else
    {
      *a5 = 2;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v18 = v14;
      v19 = [v18 countByEnumeratingWithState:&v49 objects:v58 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v50;
        do
        {
          for (j = 0; j != v20; j = j + 1)
          {
            if (*v50 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v49 + 1) + 8 * j);
            v48 = 0;
            v24 = [v11 encodeToBitVector:v23 possibleError:&v48];
            if (v24)
            {
              [v15 addObject:v24];
            }

            else
            {
              v25 = +[FedStatsLog logger];
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                sub_10001CE48(&v54, v55, v25);
              }
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v49 objects:v58 count:16];
        }

        while (v20);
      }
    }

    v10 = v39;
    v9 = v40;
    v13 = v38;
  }

  else if (a6)
  {
    [FedStatsError errorWithCode:302 underlyingError:v12 description:@"encodeDataArray encoder construction failed"];
    *a6 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_44:

  return v15;
}

+ (BOOL)encodeDataArrayAndRecord:(id)a3 dataTypeContent:(id)a4 metadata:(id)a5 baseKey:(id)a6 errorOut:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (v14)
  {
    v16 = [v14 length];
    if (v16 >= [@"fedstats:" length] && (objc_msgSend(v15, "substringToIndex:", objc_msgSend(@"fedstats:", "length")), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqualToString:", @"fedstats:"), v17, (v18 & 1) != 0))
    {
      v19 = v15;
    }

    else
    {
      v19 = [@"fedstats:" stringByAppendingString:v15];
    }

    v20 = v19;
    v21 = +[FedStatsLog logger];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_10001CE88(v20, v21);
    }

    v70 = 0;
    v71 = 0;
    v22 = [FedStatsDataEncoder encodeDataArray:v11 dataTypeContent:v12 resultType:&v71 errorOut:&v70];
    v23 = v70;
    if (!v22)
    {
      if (a7)
      {
        [FedStatsError errorWithCode:401 underlyingError:v23 description:@"encodeDataArrayAndRecord failed at encoding"];
        *a7 = v26 = 0;
      }

      else
      {
        v26 = 0;
      }

      goto LABEL_61;
    }

    v24 = +[FedStatsLog logger];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_10001CF00(v24);
    }

    v61 = [[_DPBitValueRecorder alloc] initWithKey:v20];
    if (!v61)
    {
      if (a7)
      {
        [FedStatsError errorWithCode:600 description:@"encodeDataArrayAndRecord failed at recorder allocation"];
        *a7 = v26 = 0;
      }

      else
      {
        v26 = 0;
      }

      goto LABEL_60;
    }

    if ([v13 count])
    {
      v25 = v13;
    }

    else
    {
      v78 = kDPMetadataVersionHash;
      v79 = &stru_10002DE40;
      v25 = [NSDictionary dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    }

    v60 = v25;
    if (![v22 count])
    {
      goto LABEL_26;
    }

    if (v71 == 1)
    {
      v54 = v23;
      v58 = v11;
      v59 = v20;
      v55 = v15;
      v56 = v13;
      v57 = v12;
      v27 = +[NSMutableDictionary dictionary];
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v28 = v22;
      v29 = [v28 countByEnumeratingWithState:&v66 objects:v77 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v67;
        do
        {
          for (i = 0; i != v30; i = i + 1)
          {
            if (*v67 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v66 + 1) + 8 * i);
            v34 = [v33 dimensionality];
            v35 = [v27 objectForKey:v34];

            v36 = [v33 index];
            if (v35)
            {
              [v35 arrayByAddingObject:v36];
            }

            else
            {
              [NSArray arrayWithObject:v36];
            }
            v37 = ;
            v38 = [v33 dimensionality];
            [v27 setObject:v37 forKey:v38];
          }

          v30 = [v28 countByEnumeratingWithState:&v66 objects:v77 count:16];
        }

        while (v30);
      }

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v39 = v27;
      v40 = [v39 countByEnumeratingWithState:&v62 objects:v76 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v63;
        v43 = kDPMetadataAlgoParamDimensionality;
        v44 = kDPMetadataAlgorithmParameters;
        do
        {
          for (j = 0; j != v41; j = j + 1)
          {
            if (*v63 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v46 = *(*(&v62 + 1) + 8 * j);
            v47 = +[FedStatsLog logger];
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v75 = v46;
              _os_log_debug_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "encodeDataArrayAndRecord recording with dimension = %@", buf, 0xCu);
            }

            v48 = [v60 mutableCopy];
            v72 = v43;
            v73 = v46;
            v49 = [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1];
            [v48 setObject:v49 forKey:v44];

            v50 = [v39 objectForKey:v46];
            v51 = [v61 record:v50 metadata:v48];

            if ((v51 & 1) == 0)
            {
              v52 = +[FedStatsLog logger];
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v75 = v59;
                _os_log_debug_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "encodeDataArrayAndRecord failed to record numbers for key '%@'", buf, 0xCu);
              }
            }
          }

          v41 = [v39 countByEnumeratingWithState:&v62 objects:v76 count:16];
        }

        while (v41);
      }

      v26 = 1;
      v12 = v57;
      v11 = v58;
      v15 = v55;
      v13 = v56;
      v20 = v59;
      v23 = v54;
    }

    else if (v71 == 2)
    {
      if ([v61 recordBitVectors:v22 metadata:v60])
      {
LABEL_26:
        v26 = 1;
LABEL_59:

LABEL_60:
LABEL_61:

        goto LABEL_62;
      }

      v39 = +[FedStatsLog logger];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        sub_10001CF44(v20, v39);
      }

      v26 = 1;
    }

    else
    {
      if (!a7)
      {
        v26 = 0;
        goto LABEL_59;
      }

      v39 = [NSString stringWithFormat:@"Unsupported result type %lu in data encoder", v71];
      [FedStatsError errorWithCode:900 description:v39];
      *a7 = v26 = 0;
    }

    goto LABEL_59;
  }

  if (a7)
  {
    [FedStatsError errorWithCode:400 description:@"encodeDataArrayAndRecord missing collection ID key"];
    *a7 = v26 = 0;
  }

  else
  {
    v26 = 0;
  }

LABEL_62:

  return v26;
}

+ (BOOL)encodeDataAndRecord:(id)a3 dataTypeContent:(id)a4 metadata:(id)a5 baseKey:(id)a6 errorOut:(id *)a7
{
  v17 = a3;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [NSArray arrayWithObjects:&v17 count:1];
  LOBYTE(a7) = [FedStatsDataEncoder encodeDataArrayAndRecord:v15 dataTypeContent:v13 metadata:v12 baseKey:v11 errorOut:a7, v17];

  return a7;
}

+ (BOOL)encodeDataAndRecord:(id)a3 dataTypeContent:(id)a4 baseKey:(id)a5 errorOut:(id *)a6
{
  v14 = a3;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [NSArray arrayWithObjects:&v14 count:1];
  LOBYTE(a6) = [FedStatsDataEncoder encodeDataArrayAndRecord:v12 dataTypeContent:v10 baseKey:v9 errorOut:a6, v14];

  return a6;
}

+ (BOOL)record:(id)a3 metadata:(id)a4 baseKey:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[_DPBitValueRecorder alloc] initWithKey:v7];

  LOBYTE(v7) = [v10 record:v9 metadata:v8];
  return v7;
}

@end