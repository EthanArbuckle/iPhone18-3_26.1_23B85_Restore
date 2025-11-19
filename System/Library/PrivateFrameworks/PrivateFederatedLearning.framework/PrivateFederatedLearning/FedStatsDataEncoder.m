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
  v47 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v44.receiver = self;
  v44.super_class = FedStatsDataEncoder;
  v9 = [(FedStatsDataEncoder *)&v44 init];
  v10 = v9;
  if (v9)
  {
    v33 = v9;
    objc_storeStrong(&v9->_dataTypes, a3);
    v11 = [v8 allKeys];
    v12 = [v11 sortedArrayUsingComparator:&__block_literal_global_0];

    v13 = MEMORY[0x277CBEB58];
    v34 = v7;
    v14 = [v7 allKeys];
    v15 = [v13 setWithArray:v14];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v12;
    v16 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v41;
      do
      {
        v19 = 0;
        do
        {
          if (*v41 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v40 + 1) + 8 * v19);
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v21 = [v8 objectForKey:v20];
          v22 = [v21 typesInCombination];

          v23 = [v22 countByEnumeratingWithState:&v36 objects:v45 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v37;
            do
            {
              v26 = 0;
              do
              {
                if (*v37 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                [v15 removeObject:*(*(&v36 + 1) + 8 * v26++)];
              }

              while (v24 != v26);
              v24 = [v22 countByEnumeratingWithState:&v36 objects:v45 count:16];
            }

            while (v24);
          }

          [v15 removeObject:v20];
          ++v19;
        }

        while (v19 != v17);
        v17 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v17);
    }

    v27 = [v15 allObjects];
    v28 = [v27 sortedArrayUsingComparator:&__block_literal_global_0];
    v29 = [obj arrayByAddingObjectsFromArray:v28];
    v10 = v33;
    typeConfiguration = v33->_typeConfiguration;
    v33->_typeConfiguration = v29;

    v7 = v34;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)createWithDataTypeContent:(id)a3 possibleError:(id *)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (!v6 || ![v6 count])
  {
    if (a4)
    {
      [FedStatsError errorWithCode:100 description:@"Missing data type content"];
      *a4 = v31 = 0;
    }

    else
    {
      v31 = 0;
    }

    goto LABEL_42;
  }

  v48 = a4;
  v45 = [MEMORY[0x277CBEB18] array];
  v49 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v44 = v7;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  v11 = *v55;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v55 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v54 + 1) + 8 * i);
      v14 = [v8 objectForKey:v13];
      v15 = [v14 objectForKey:@"dataType"];
      if (!v15)
      {
        v32 = v48;
        if (!v48)
        {
          goto LABEL_39;
        }

        v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing data type specifier key %@", @"dataType"];
        v34 = 100;
        goto LABEL_35;
      }

      v16 = [FedStatsDataTypeFactory dataTypeFromString:v15];
      if (v16 != 99)
      {
        if (v16 != -1)
        {
          v17 = [FedStatsDataTypeFactory createFedStatsDataType:v15 dataTypeParams:v14 possibleError:v48];
          if (v17)
          {
            v18 = v17;
            [v49 setValue:v17 forKey:v13];

            goto LABEL_14;
          }

          if (v48)
          {
            v39 = [*v48 code];
            v40 = MEMORY[0x277CCACA8];
            v33 = [*v48 localizedDescription];
            v41 = [v40 stringWithFormat:@"Could not create data type %@: %@", v13, v33];
            *v48 = [FedStatsError errorWithCode:v39 description:v41];

            goto LABEL_38;
          }

LABEL_39:
          v31 = 0;
LABEL_40:
          v7 = v44;
          v30 = v49;
          goto LABEL_41;
        }

        v32 = v48;
        if (!v48)
        {
          goto LABEL_39;
        }

        v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"The data type %@ is not supported", v15];
        v34 = 101;
LABEL_35:
        *v32 = [FedStatsError errorWithCode:v34 description:v33];
LABEL_38:
        v7 = v44;
        v30 = v49;

        v31 = 0;
        goto LABEL_41;
      }

      [v45 addObject:v13];
LABEL_14:
    }

    v10 = [v8 countByEnumeratingWithState:&v54 objects:v61 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_16:

  v47 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v45, "count")}];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v14 = v45;
  v19 = [v14 countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (v19)
  {
    v20 = v19;
    v46 = *v51;
    while (2)
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v51 != v46)
        {
          objc_enumerationMutation(v14);
        }

        v22 = *(*(&v50 + 1) + 8 * j);
        v23 = MEMORY[0x277CBEB38];
        v24 = [v8 objectForKey:v22];
        v15 = [v23 dictionaryWithDictionary:v24];

        v25 = +[FedStatsCombinationType kAvailableTypes];
        v58 = v25;
        v59 = v49;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        [v15 addEntriesFromDictionary:v26];

        v27 = [FedStatsCombinationType createFromDict:v15 possibleError:v48];
        if (!v27)
        {
          if (v48)
          {
            v35 = [*v48 code];
            v36 = MEMORY[0x277CCACA8];
            v37 = [*v48 localizedDescription];
            v38 = [v36 stringWithFormat:@"Could not create data type %@: %@", v22, v37];
            *v48 = [FedStatsError errorWithCode:v35 description:v38];
          }

          v31 = 0;
          v8 = v47;
          goto LABEL_40;
        }

        v28 = v27;
        [v47 setValue:v27 forKey:v22];
        [v49 setValue:v28 forKey:v22];
      }

      v20 = [v14 countByEnumeratingWithState:&v50 objects:v60 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v29 = [a1 alloc];
  v30 = v49;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v49];
  v8 = v47;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v47];
  v31 = [v29 initWithDataTypes:v14 combinationTypes:v15];
  v7 = v44;
LABEL_41:

LABEL_42:
  v42 = *MEMORY[0x277D85DE8];

  return v31;
}

- (id)encodeToIndex:(id)a3 withType:(id)a4 error:(id *)a5
{
  v39 = *MEMORY[0x277D85DE8];
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
        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"The data type %@ is not valid", v9];
        *a5 = [FedStatsError errorWithCode:200 description:v26];
      }

      v25 = 0;
      goto LABEL_24;
    }

    if ([v11 dataType] == 99)
    {
      v31 = a5;
      v30 = v11;
      v12 = [v30 typesInCombination];
      v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v12, "count")}];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v35;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v35 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v34 + 1) + 8 * i);
            v20 = [v8 objectForKey:v19];
            [v13 setValue:v20 forKey:v19];
          }

          v16 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v16);
      }

      v21 = [v13 copy];
      v33 = 0;
      v22 = v30;
      v23 = [v30 encodeToIndex:v21 possibleError:&v33];
      v24 = v33;

      a5 = v31;
    }

    else
    {
      v22 = [v8 objectForKey:v9];
      v32 = 0;
      v23 = [v11 encodeToIndex:v22 possibleError:&v32];
      v24 = v32;
    }

    if (v23)
    {
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v11, "classCount")}];
      v25 = [FedStatsDataEncoderDimensionalResult resultWithIndex:v23 dimensionality:v27];
    }

    else
    {
      if (!a5)
      {
        v25 = 0;
        goto LABEL_23;
      }

      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot encode data to %@", v9];
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

  v28 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)encodeToBitVector:(id)a3 withType:(id)a4 possibleError:(id *)a5
{
  v34 = *MEMORY[0x277D85DE8];
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
        v28 = a5;
        v27 = v11;
        v12 = [v27 typesInCombination];
        v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v12, "count")}];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v14 = v12;
        v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v30;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v30 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v29 + 1) + 8 * i);
              v20 = [v8 objectForKey:v19];
              [v13 setValue:v20 forKey:v19];
            }

            v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
          }

          while (v16);
        }

        v21 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v13];
        v22 = [v27 encodeToOneHotVector:v21 possibleError:v28];
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
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"The data type %@ is not valid", v9];
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

  v25 = *MEMORY[0x277D85DE8];

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
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"The data type %@ is not valid", v9];
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
  v43 = *MEMORY[0x277D85DE8];
  v32 = a3;
  if (!v32)
  {
    if (a4)
    {
      [FedStatsError errorWithCode:401 description:@"Provided data is empty"];
      *a4 = v16 = 0;
      goto LABEL_30;
    }

    goto LABEL_14;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = [(FedStatsDataEncoder *)self typeConfiguration];
  v7 = [v6 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v38;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        v13 = [(FedStatsDataEncoder *)self dataTypes];
        v14 = [v13 objectForKey:v12];
        v9 += [v14 classCount];
      }

      v8 = [v6 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v8);

    if (v9 > 0x186A0)
    {
      if (a4)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Resulting dimensionality %lu is larger than max dimensionality %lu", v9, 100000];
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

  v17 = [MEMORY[0x277CBEB28] data];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v18 = [(FedStatsDataEncoder *)self typeConfiguration];
  v19 = [v18 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = *v34;
    while (2)
    {
      v23 = 0;
      v24 = v21;
      do
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v25 = *(*(&v33 + 1) + 8 * v23);
        v21 = [(FedStatsDataEncoder *)self encodeToBitVector:v32 withType:v25 possibleError:a4];

        if (!v21)
        {
          if (a4)
          {
            v26 = [*a4 code];
            v27 = MEMORY[0x277CCACA8];
            v28 = [*a4 localizedDescription];
            v29 = [v27 stringWithFormat:@"Error encoding %@ type: %@", v25, v28];
            *a4 = [FedStatsError errorWithCode:v26 description:v29];
          }

          v16 = 0;
          goto LABEL_29;
        }

        [v17 appendData:v21];
        ++v23;
        v24 = v21;
      }

      while (v20 != v23);
      v20 = [v18 countByEnumeratingWithState:&v33 objects:v41 count:16];
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
  v30 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)encodeToIndex:(id)a3 error:(id *)a4
{
  v39 = *MEMORY[0x277D85DE8];
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

  v32 = a4;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = [(FedStatsDataEncoder *)self dataTypes];
  v10 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
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
            if (v32)
            {
              v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Provided data does not contain a value for %@", v14];
              *v32 = [FedStatsError errorWithCode:200 description:v25];
            }

            goto LABEL_23;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v18 = [(FedStatsDataEncoder *)self typeConfiguration];
  v19 = [v18 firstObject];
  v33 = 0;
  v20 = [(FedStatsDataEncoder *)self encodeToIndex:v6 withType:v19 error:&v33];
  v21 = v33;

  if (v20)
  {
    v22 = v20;
  }

  else if (v32)
  {
    v26 = MEMORY[0x277CCACA8];
    v27 = [(FedStatsDataEncoder *)self typeConfiguration];
    v28 = [v27 firstObject];
    v29 = [v26 stringWithFormat:@"Cannot encode data to %@", v28];
    *v32 = [FedStatsError errorWithCode:401 underlyingError:v21 description:v29];
  }

LABEL_27:
  v30 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)decodeFromBitVector:(id)a3 possibleError:(id *)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v6 = MEMORY[0x277CBEB38];
  v7 = [(FedStatsDataEncoder *)self typeConfiguration];
  v24 = [v6 dictionaryWithCapacity:{objc_msgSend(v7, "count")}];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [(FedStatsDataEncoder *)self typeConfiguration];
  v26 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v26)
  {
    v8 = 0;
    v25 = *v30;
LABEL_3:
    v9 = 0;
    while (1)
    {
      v10 = a4;
      if (*v30 != v25)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v29 + 1) + 8 * v9);
      v12 = [(FedStatsDataEncoder *)self dataTypes];
      v13 = [v12 objectForKey:v11];

      v14 = [v13 classCount];
      v15 = [v27 subdataWithRange:{v8, v14}];
      v28 = 0;
      v16 = [(FedStatsDataEncoder *)self decodeFromBitVector:v15 withType:v11 possibleError:&v28];
      v17 = v28;
      if (v16)
      {
        break;
      }

      if (!v10)
      {
        goto LABEL_13;
      }

      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"The decoder for %@ failed", v11];
      a4 = v10;
      *v10 = [FedStatsError errorWithCode:500 underlyingError:v17 description:v18];

LABEL_14:
      if (!v16)
      {

        v20 = 0;
        v19 = v24;
        goto LABEL_19;
      }

      if (v26 == ++v9)
      {
        v26 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v26)
        {
          goto LABEL_3;
        }

        goto LABEL_17;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v24 addEntriesFromDictionary:v16];
    }

    else
    {
      [v24 setValue:v16 forKey:v11];
    }

    v8 += v14;
LABEL_13:
    a4 = v10;
    goto LABEL_14;
  }

LABEL_17:

  v19 = v24;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v24];
LABEL_19:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)encodeDataArray:(id)a3 dataTypeContent:(id)a4 resultType:(unint64_t *)a5 errorOut:(id *)a6
{
  v60 = *MEMORY[0x277D85DE8];
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

  v54 = 0;
  v11 = [FedStatsDataEncoder createWithDataTypeContent:v10 possibleError:&v54];
  v12 = v54;
  v13 = v12;
  if (v11)
  {
    v39 = v12;
    v40 = v10;
    v41 = v9;
    v14 = [FedStatsDataSampler pickSamplesFrom:v9 length:20];
    v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v14, "count")}];
    v16 = [v11 typeConfiguration];
    v17 = [v16 count];

    v38 = v14;
    if (v17 < 2)
    {
      *a5 = 1;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v27 = v14;
      v28 = [v27 countByEnumeratingWithState:&v45 objects:v58 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v46;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v46 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v45 + 1) + 8 * i);
            if (v32)
            {
              v42 = 0;
              v33 = [v11 encodeToIndex:v32 error:&v42];
              v34 = v42;
              if (v33)
              {
                [v15 addObject:v33];
              }

              else
              {
                v35 = +[FedStatsLog logger];
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                {
                  [FedStatsDataEncoder encodeDataArray:v34 dataTypeContent:&v57 resultType:v35 errorOut:?];
                }
              }
            }

            else
            {
              v34 = +[FedStatsLog logger];
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                [FedStatsDataEncoder encodeDataArray:v44 dataTypeContent:v34 resultType:? errorOut:?];
              }
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v45 objects:v58 count:16];
        }

        while (v29);
      }
    }

    else
    {
      *a5 = 2;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v18 = v14;
      v19 = [v18 countByEnumeratingWithState:&v50 objects:v59 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v51;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v51 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v50 + 1) + 8 * j);
            v49 = 0;
            v24 = [v11 encodeToBitVector:v23 possibleError:&v49];
            if (v24)
            {
              [v15 addObject:v24];
            }

            else
            {
              v25 = +[FedStatsLog logger];
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                [FedStatsDataEncoder encodeDataArray:v56 dataTypeContent:v25 resultType:? errorOut:?];
              }
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v50 objects:v59 count:16];
        }

        while (v20);
      }
    }

    v10 = v40;
    v9 = v41;
    v13 = v39;
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
  v36 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (BOOL)encodeDataArrayAndRecord:(id)a3 dataTypeContent:(id)a4 metadata:(id)a5 baseKey:(id)a6 errorOut:(id *)a7
{
  v81[1] = *MEMORY[0x277D85DE8];
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
      [FedStatsDataEncoder encodeDataArrayAndRecord:v20 dataTypeContent:v21 metadata:? baseKey:? errorOut:?];
    }

    v72 = 0;
    v73 = 0;
    v22 = [FedStatsDataEncoder encodeDataArray:v11 dataTypeContent:v12 resultType:&v73 errorOut:&v72];
    v23 = v72;
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
      [FedStatsDataEncoder encodeDataArrayAndRecord:v24 dataTypeContent:? metadata:? baseKey:? errorOut:?];
    }

    v63 = [objc_alloc(MEMORY[0x277D052E8]) initWithKey:v20];
    if (!v63)
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
      v80 = *MEMORY[0x277D05410];
      v81[0] = &stru_282B43830;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:&v80 count:1];
    }

    v62 = v25;
    if (![v22 count])
    {
      goto LABEL_26;
    }

    if (v73 == 1)
    {
      v56 = v23;
      v60 = v11;
      v61 = v20;
      v57 = v15;
      v58 = v13;
      v59 = v12;
      v27 = [MEMORY[0x277CBEB38] dictionary];
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v28 = v22;
      v29 = [v28 countByEnumeratingWithState:&v68 objects:v79 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v69;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v69 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v68 + 1) + 8 * i);
            v34 = [v33 dimensionality];
            v35 = [v27 objectForKey:v34];

            if (v35)
            {
              v36 = [v33 index];
              [v35 arrayByAddingObject:v36];
            }

            else
            {
              v37 = MEMORY[0x277CBEA60];
              v36 = [v33 index];
              [v37 arrayWithObject:v36];
            }
            v38 = ;
            v39 = [v33 dimensionality];
            [v27 setObject:v38 forKey:v39];
          }

          v30 = [v28 countByEnumeratingWithState:&v68 objects:v79 count:16];
        }

        while (v30);
      }

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v40 = v27;
      v41 = [v40 countByEnumeratingWithState:&v64 objects:v78 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v65;
        v44 = *MEMORY[0x277D05328];
        v45 = *MEMORY[0x277D05330];
        do
        {
          for (j = 0; j != v42; ++j)
          {
            if (*v65 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v47 = *(*(&v64 + 1) + 8 * j);
            v48 = +[FedStatsLog logger];
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v77 = v47;
              _os_log_debug_impl(&dword_21A3C2000, v48, OS_LOG_TYPE_DEBUG, "encodeDataArrayAndRecord recording with dimension = %@", buf, 0xCu);
            }

            v49 = [v62 mutableCopy];
            v74 = v44;
            v75 = v47;
            v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
            [v49 setObject:v50 forKey:v45];

            v51 = [v40 objectForKey:v47];
            v52 = [v63 record:v51 metadata:v49];

            if ((v52 & 1) == 0)
            {
              v53 = +[FedStatsLog logger];
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v77 = v61;
                _os_log_debug_impl(&dword_21A3C2000, v53, OS_LOG_TYPE_DEBUG, "encodeDataArrayAndRecord failed to record numbers for key '%@'", buf, 0xCu);
              }
            }
          }

          v42 = [v40 countByEnumeratingWithState:&v64 objects:v78 count:16];
        }

        while (v42);
      }

      v26 = 1;
      v12 = v59;
      v11 = v60;
      v15 = v57;
      v13 = v58;
      v20 = v61;
      v23 = v56;
    }

    else if (v73 == 2)
    {
      if ([v63 recordBitVectors:v22 metadata:v62])
      {
LABEL_26:
        v26 = 1;
LABEL_59:

LABEL_60:
LABEL_61:

        goto LABEL_62;
      }

      v40 = +[FedStatsLog logger];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        [FedStatsDataEncoder encodeDataArrayAndRecord:v20 dataTypeContent:v40 metadata:? baseKey:? errorOut:?];
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

      v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported result type %lu in data encoder", v73];
      [FedStatsError errorWithCode:900 description:v40];
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

  v54 = *MEMORY[0x277D85DE8];
  return v26;
}

+ (BOOL)encodeDataAndRecord:(id)a3 dataTypeContent:(id)a4 metadata:(id)a5 baseKey:(id)a6 errorOut:(id *)a7
{
  v20 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v11 = MEMORY[0x277CBEA60];
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [v11 arrayWithObjects:&v19 count:1];
  LOBYTE(a7) = [FedStatsDataEncoder encodeDataArrayAndRecord:v16 dataTypeContent:v14 metadata:v13 baseKey:v12 errorOut:a7, v19, v20];

  v17 = *MEMORY[0x277D85DE8];
  return a7;
}

+ (BOOL)encodeDataAndRecord:(id)a3 dataTypeContent:(id)a4 baseKey:(id)a5 errorOut:(id *)a6
{
  v17 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v9 = MEMORY[0x277CBEA60];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v9 arrayWithObjects:&v16 count:1];
  LOBYTE(a6) = [FedStatsDataEncoder encodeDataArrayAndRecord:v13 dataTypeContent:v11 baseKey:v10 errorOut:a6, v16, v17];

  v14 = *MEMORY[0x277D85DE8];
  return a6;
}

+ (BOOL)record:(id)a3 metadata:(id)a4 baseKey:(id)a5
{
  v7 = MEMORY[0x277D052E8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[v7 alloc] initWithKey:v8];

  LOBYTE(v8) = [v11 record:v10 metadata:v9];
  return v8;
}

+ (void)encodeDataArray:(uint8_t *)a1 dataTypeContent:(void *)a2 resultType:(void *)a3 errorOut:(NSObject *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 debugDescription];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_21A3C2000, a4, OS_LOG_TYPE_DEBUG, "Cannot process data point: '%@', skipping", a1, 0xCu);
}

+ (void)encodeDataArray:(os_log_t)log dataTypeContent:resultType:errorOut:.cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_21A3C2000, log, OS_LOG_TYPE_DEBUG, "Non-dictionary or nil in the input, skipping...", buf, 2u);
}

+ (void)encodeDataArray:(os_log_t)log dataTypeContent:resultType:errorOut:.cold.3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_21A3C2000, log, OS_LOG_TYPE_DEBUG, "Cannot process data point, skipping...", buf, 2u);
}

+ (void)encodeDataArrayAndRecord:(uint64_t)a1 dataTypeContent:(NSObject *)a2 metadata:baseKey:errorOut:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_21A3C2000, a2, OS_LOG_TYPE_DEBUG, "encodeDataArrayAndRecord with baseKey = %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)encodeDataArrayAndRecord:(uint64_t)a1 dataTypeContent:(NSObject *)a2 metadata:baseKey:errorOut:.cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_21A3C2000, a2, OS_LOG_TYPE_DEBUG, "encodeDataArrayAndRecord failed to record bit vectors for key '%@'", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end