@interface FedStatsDataEncoder
+ (BOOL)encodeDataAndRecord:(id)record dataTypeContent:(id)content baseKey:(id)key errorOut:(id *)out;
+ (BOOL)encodeDataAndRecord:(id)record dataTypeContent:(id)content metadata:(id)metadata baseKey:(id)key errorOut:(id *)out;
+ (BOOL)encodeDataArrayAndRecord:(id)record dataTypeContent:(id)content metadata:(id)metadata baseKey:(id)key errorOut:(id *)out;
+ (BOOL)record:(id)record metadata:(id)metadata baseKey:(id)key;
+ (id)createWithDataTypeContent:(id)content possibleError:(id *)error;
+ (id)encodeDataArray:(id)array dataTypeContent:(id)content resultType:(unint64_t *)type errorOut:(id *)out;
- (FedStatsDataEncoder)initWithDataTypes:(id)types combinationTypes:(id)combinationTypes;
- (id)decodeFromBitVector:(id)vector possibleError:(id *)error;
- (id)decodeFromBitVector:(id)vector withType:(id)type possibleError:(id *)error;
- (id)encodeToBitVector:(id)vector possibleError:(id *)error;
- (id)encodeToBitVector:(id)vector withType:(id)type possibleError:(id *)error;
- (id)encodeToIndex:(id)index error:(id *)error;
- (id)encodeToIndex:(id)index withType:(id)type error:(id *)error;
@end

@implementation FedStatsDataEncoder

- (FedStatsDataEncoder)initWithDataTypes:(id)types combinationTypes:(id)combinationTypes
{
  v47 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  combinationTypesCopy = combinationTypes;
  v44.receiver = self;
  v44.super_class = FedStatsDataEncoder;
  v9 = [(FedStatsDataEncoder *)&v44 init];
  v10 = v9;
  if (v9)
  {
    v33 = v9;
    objc_storeStrong(&v9->_dataTypes, types);
    allKeys = [combinationTypesCopy allKeys];
    v12 = [allKeys sortedArrayUsingComparator:&__block_literal_global_0];

    v13 = MEMORY[0x277CBEB58];
    v34 = typesCopy;
    allKeys2 = [typesCopy allKeys];
    v15 = [v13 setWithArray:allKeys2];

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
          v21 = [combinationTypesCopy objectForKey:v20];
          typesInCombination = [v21 typesInCombination];

          v23 = [typesInCombination countByEnumeratingWithState:&v36 objects:v45 count:16];
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
                  objc_enumerationMutation(typesInCombination);
                }

                [v15 removeObject:*(*(&v36 + 1) + 8 * v26++)];
              }

              while (v24 != v26);
              v24 = [typesInCombination countByEnumeratingWithState:&v36 objects:v45 count:16];
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

    allObjects = [v15 allObjects];
    v28 = [allObjects sortedArrayUsingComparator:&__block_literal_global_0];
    v29 = [obj arrayByAddingObjectsFromArray:v28];
    v10 = v33;
    typeConfiguration = v33->_typeConfiguration;
    v33->_typeConfiguration = v29;

    typesCopy = v34;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)createWithDataTypeContent:(id)content possibleError:(id *)error
{
  v62 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  v7 = contentCopy;
  if (!contentCopy || ![contentCopy count])
  {
    if (error)
    {
      [FedStatsError errorWithCode:100 description:@"Missing data type content"];
      *error = v31 = 0;
    }

    else
    {
      v31 = 0;
    }

    goto LABEL_42;
  }

  errorCopy = error;
  array = [MEMORY[0x277CBEB18] array];
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
        v32 = errorCopy;
        if (!errorCopy)
        {
          goto LABEL_39;
        }

        localizedDescription = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing data type specifier key %@", @"dataType"];
        v34 = 100;
        goto LABEL_35;
      }

      v16 = [FedStatsDataTypeFactory dataTypeFromString:v15];
      if (v16 != 99)
      {
        if (v16 != -1)
        {
          v17 = [FedStatsDataTypeFactory createFedStatsDataType:v15 dataTypeParams:v14 possibleError:errorCopy];
          if (v17)
          {
            v18 = v17;
            [v49 setValue:v17 forKey:v13];

            goto LABEL_14;
          }

          if (errorCopy)
          {
            code = [*errorCopy code];
            v40 = MEMORY[0x277CCACA8];
            localizedDescription = [*errorCopy localizedDescription];
            v41 = [v40 stringWithFormat:@"Could not create data type %@: %@", v13, localizedDescription];
            *errorCopy = [FedStatsError errorWithCode:code description:v41];

            goto LABEL_38;
          }

LABEL_39:
          v31 = 0;
LABEL_40:
          v7 = v44;
          v30 = v49;
          goto LABEL_41;
        }

        v32 = errorCopy;
        if (!errorCopy)
        {
          goto LABEL_39;
        }

        localizedDescription = [MEMORY[0x277CCACA8] stringWithFormat:@"The data type %@ is not supported", v15];
        v34 = 101;
LABEL_35:
        *v32 = [FedStatsError errorWithCode:v34 description:localizedDescription];
LABEL_38:
        v7 = v44;
        v30 = v49;

        v31 = 0;
        goto LABEL_41;
      }

      [array addObject:v13];
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

  v47 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(array, "count")}];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v14 = array;
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

        v27 = [FedStatsCombinationType createFromDict:v15 possibleError:errorCopy];
        if (!v27)
        {
          if (errorCopy)
          {
            code2 = [*errorCopy code];
            v36 = MEMORY[0x277CCACA8];
            localizedDescription2 = [*errorCopy localizedDescription];
            v38 = [v36 stringWithFormat:@"Could not create data type %@: %@", v22, localizedDescription2];
            *errorCopy = [FedStatsError errorWithCode:code2 description:v38];
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

  v29 = [self alloc];
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

- (id)encodeToIndex:(id)index withType:(id)type error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  typeCopy = type;
  if (indexCopy)
  {
    dataTypes = [(FedStatsDataEncoder *)self dataTypes];
    v11 = [dataTypes objectForKey:typeCopy];

    if (!v11)
    {
      if (error)
      {
        typeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"The data type %@ is not valid", typeCopy];
        *error = [FedStatsError errorWithCode:200 description:typeCopy];
      }

      v25 = 0;
      goto LABEL_24;
    }

    if ([v11 dataType] == 99)
    {
      errorCopy = error;
      v30 = v11;
      typesInCombination = [v30 typesInCombination];
      v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(typesInCombination, "count")}];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v14 = typesInCombination;
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
            v20 = [indexCopy objectForKey:v19];
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

      error = errorCopy;
    }

    else
    {
      v22 = [indexCopy objectForKey:typeCopy];
      v32 = 0;
      v23 = [v11 encodeToIndex:v22 possibleError:&v32];
      v24 = v32;
    }

    if (v23)
    {
      typeCopy2 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v11, "classCount")}];
      v25 = [FedStatsDataEncoderDimensionalResult resultWithIndex:v23 dimensionality:typeCopy2];
    }

    else
    {
      if (!error)
      {
        v25 = 0;
        goto LABEL_23;
      }

      typeCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot encode data to %@", typeCopy];
      [FedStatsError errorWithCode:401 underlyingError:v24 description:typeCopy2];
      *error = v25 = 0;
    }

LABEL_23:
LABEL_24:

    goto LABEL_25;
  }

  if (error)
  {
    [FedStatsError errorWithCode:401 description:@"Provided data is empty"];
    *error = v25 = 0;
  }

  else
  {
    v25 = 0;
  }

LABEL_25:

  v28 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)encodeToBitVector:(id)vector withType:(id)type possibleError:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  typeCopy = type;
  if (vectorCopy)
  {
    dataTypes = [(FedStatsDataEncoder *)self dataTypes];
    v11 = [dataTypes objectForKey:typeCopy];

    if (v11)
    {
      if ([v11 dataType] == 99)
      {
        errorCopy = error;
        v27 = v11;
        typesInCombination = [v27 typesInCombination];
        v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(typesInCombination, "count")}];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v14 = typesInCombination;
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
              v20 = [vectorCopy objectForKey:v19];
              [v13 setValue:v20 forKey:v19];
            }

            v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
          }

          while (v16);
        }

        v21 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v13];
        v22 = [v27 encodeToOneHotVector:v21 possibleError:errorCopy];
      }

      else
      {
        v24 = [vectorCopy objectForKey:typeCopy];
        v22 = [v11 encodeToOneHotVector:v24 possibleError:error];
      }
    }

    else
    {
      if (error)
      {
        typeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"The data type %@ is not valid", typeCopy];
        *error = [FedStatsError errorWithCode:200 description:typeCopy];
      }

      v22 = 0;
    }
  }

  else if (error)
  {
    [FedStatsError errorWithCode:401 description:@"Provided data is empty"];
    *error = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)decodeFromBitVector:(id)vector withType:(id)type possibleError:(id *)error
{
  vectorCopy = vector;
  typeCopy = type;
  if (vectorCopy)
  {
    dataTypes = [(FedStatsDataEncoder *)self dataTypes];
    v11 = [dataTypes objectForKey:typeCopy];

    if (v11)
    {
      v12 = [v11 decodeFromOneHotVector:vectorCopy possibleError:error];
    }

    else
    {
      if (error)
      {
        typeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"The data type %@ is not valid", typeCopy];
        *error = [FedStatsError errorWithCode:200 description:typeCopy];
      }

      v12 = 0;
    }
  }

  else if (error)
  {
    [FedStatsError errorWithCode:401 description:@"Provided data is empty"];
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)encodeToBitVector:(id)vector possibleError:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  if (!vectorCopy)
  {
    if (error)
    {
      [FedStatsError errorWithCode:401 description:@"Provided data is empty"];
      *error = v16 = 0;
      goto LABEL_30;
    }

    goto LABEL_14;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  typeConfiguration = [(FedStatsDataEncoder *)self typeConfiguration];
  v7 = [typeConfiguration countByEnumeratingWithState:&v37 objects:v42 count:16];
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
          objc_enumerationMutation(typeConfiguration);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        dataTypes = [(FedStatsDataEncoder *)self dataTypes];
        v14 = [dataTypes objectForKey:v12];
        v9 += [v14 classCount];
      }

      v8 = [typeConfiguration countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v8);

    if (v9 > 0x186A0)
    {
      if (error)
      {
        100000 = [MEMORY[0x277CCACA8] stringWithFormat:@"Resulting dimensionality %lu is larger than max dimensionality %lu", v9, 100000];
        *error = [FedStatsError errorWithCode:900 description:100000];
      }

LABEL_14:
      v16 = 0;
      goto LABEL_30;
    }
  }

  else
  {
  }

  data = [MEMORY[0x277CBEB28] data];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  typeConfiguration2 = [(FedStatsDataEncoder *)self typeConfiguration];
  v19 = [typeConfiguration2 countByEnumeratingWithState:&v33 objects:v41 count:16];
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
          objc_enumerationMutation(typeConfiguration2);
        }

        v25 = *(*(&v33 + 1) + 8 * v23);
        v21 = [(FedStatsDataEncoder *)self encodeToBitVector:vectorCopy withType:v25 possibleError:error];

        if (!v21)
        {
          if (error)
          {
            code = [*error code];
            v27 = MEMORY[0x277CCACA8];
            localizedDescription = [*error localizedDescription];
            v29 = [v27 stringWithFormat:@"Error encoding %@ type: %@", v25, localizedDescription];
            *error = [FedStatsError errorWithCode:code description:v29];
          }

          v16 = 0;
          goto LABEL_29;
        }

        [data appendData:v21];
        ++v23;
        v24 = v21;
      }

      while (v20 != v23);
      v20 = [typeConfiguration2 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v16 = data;
LABEL_29:

LABEL_30:
  v30 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)encodeToIndex:(id)index error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  typeConfiguration = [(FedStatsDataEncoder *)self typeConfiguration];
  v8 = [typeConfiguration count];

  if (v8 != 1)
  {
    if (error)
    {
      v23 = @"This API is only available for single type in encoding schema";
      v24 = 900;
LABEL_19:
      [FedStatsError errorWithCode:v24 description:v23];
      *error = v20 = 0;
      goto LABEL_27;
    }

LABEL_23:
    v20 = 0;
    goto LABEL_27;
  }

  if (!indexCopy)
  {
    if (error)
    {
      v23 = @"Provided data is empty";
      v24 = 401;
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  errorCopy = error;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  dataTypes = [(FedStatsDataEncoder *)self dataTypes];
  v10 = [dataTypes countByEnumeratingWithState:&v34 objects:v38 count:16];
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
          objc_enumerationMutation(dataTypes);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        dataTypes2 = [(FedStatsDataEncoder *)self dataTypes];
        v16 = [dataTypes2 objectForKey:v14];
        if ([v16 dataType] == 99)
        {
        }

        else
        {
          v17 = [indexCopy objectForKey:v14];

          if (!v17)
          {
            if (errorCopy)
            {
              v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Provided data does not contain a value for %@", v14];
              *errorCopy = [FedStatsError errorWithCode:200 description:v25];
            }

            goto LABEL_23;
          }
        }
      }

      v11 = [dataTypes countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  typeConfiguration2 = [(FedStatsDataEncoder *)self typeConfiguration];
  firstObject = [typeConfiguration2 firstObject];
  v33 = 0;
  v20 = [(FedStatsDataEncoder *)self encodeToIndex:indexCopy withType:firstObject error:&v33];
  v21 = v33;

  if (v20)
  {
    v22 = v20;
  }

  else if (errorCopy)
  {
    v26 = MEMORY[0x277CCACA8];
    typeConfiguration3 = [(FedStatsDataEncoder *)self typeConfiguration];
    firstObject2 = [typeConfiguration3 firstObject];
    v29 = [v26 stringWithFormat:@"Cannot encode data to %@", firstObject2];
    *errorCopy = [FedStatsError errorWithCode:401 underlyingError:v21 description:v29];
  }

LABEL_27:
  v30 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)decodeFromBitVector:(id)vector possibleError:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  v6 = MEMORY[0x277CBEB38];
  typeConfiguration = [(FedStatsDataEncoder *)self typeConfiguration];
  v24 = [v6 dictionaryWithCapacity:{objc_msgSend(typeConfiguration, "count")}];

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
      errorCopy = error;
      if (*v30 != v25)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v29 + 1) + 8 * v9);
      dataTypes = [(FedStatsDataEncoder *)self dataTypes];
      v13 = [dataTypes objectForKey:v11];

      classCount = [v13 classCount];
      v15 = [vectorCopy subdataWithRange:{v8, classCount}];
      v28 = 0;
      v16 = [(FedStatsDataEncoder *)self decodeFromBitVector:v15 withType:v11 possibleError:&v28];
      v17 = v28;
      if (v16)
      {
        break;
      }

      if (!errorCopy)
      {
        goto LABEL_13;
      }

      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"The decoder for %@ failed", v11];
      error = errorCopy;
      *errorCopy = [FedStatsError errorWithCode:500 underlyingError:v17 description:v18];

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

    v8 += classCount;
LABEL_13:
    error = errorCopy;
    goto LABEL_14;
  }

LABEL_17:

  v19 = v24;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v24];
LABEL_19:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)encodeDataArray:(id)array dataTypeContent:(id)content resultType:(unint64_t *)type errorOut:(id *)out
{
  v60 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  contentCopy = content;
  if (!contentCopy)
  {
    if (out)
    {
      v26 = @"encodeDataArray missing data type content";
LABEL_22:
      [FedStatsError errorWithCode:400 description:v26];
      *out = v15 = 0;
      goto LABEL_44;
    }

LABEL_23:
    v15 = 0;
    goto LABEL_44;
  }

  if (!arrayCopy)
  {
    if (out)
    {
      v26 = @"encodeDataArray missing data array";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v54 = 0;
  v11 = [FedStatsDataEncoder createWithDataTypeContent:contentCopy possibleError:&v54];
  v12 = v54;
  v13 = v12;
  if (v11)
  {
    v39 = v12;
    v40 = contentCopy;
    v41 = arrayCopy;
    v14 = [FedStatsDataSampler pickSamplesFrom:arrayCopy length:20];
    v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v14, "count")}];
    typeConfiguration = [v11 typeConfiguration];
    v17 = [typeConfiguration count];

    v38 = v14;
    if (v17 < 2)
    {
      *type = 1;
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
      *type = 2;
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

    contentCopy = v40;
    arrayCopy = v41;
    v13 = v39;
  }

  else if (out)
  {
    [FedStatsError errorWithCode:302 underlyingError:v12 description:@"encodeDataArray encoder construction failed"];
    *out = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_44:
  v36 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (BOOL)encodeDataArrayAndRecord:(id)record dataTypeContent:(id)content metadata:(id)metadata baseKey:(id)key errorOut:(id *)out
{
  v81[1] = *MEMORY[0x277D85DE8];
  recordCopy = record;
  contentCopy = content;
  metadataCopy = metadata;
  keyCopy = key;
  v15 = keyCopy;
  if (keyCopy)
  {
    v16 = [keyCopy length];
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
    v22 = [FedStatsDataEncoder encodeDataArray:recordCopy dataTypeContent:contentCopy resultType:&v73 errorOut:&v72];
    v23 = v72;
    if (!v22)
    {
      if (out)
      {
        [FedStatsError errorWithCode:401 underlyingError:v23 description:@"encodeDataArrayAndRecord failed at encoding"];
        *out = v26 = 0;
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
      if (out)
      {
        [FedStatsError errorWithCode:600 description:@"encodeDataArrayAndRecord failed at recorder allocation"];
        *out = v26 = 0;
      }

      else
      {
        v26 = 0;
      }

      goto LABEL_60;
    }

    if ([metadataCopy count])
    {
      v25 = metadataCopy;
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
      v60 = recordCopy;
      v61 = v20;
      v57 = v15;
      v58 = metadataCopy;
      v59 = contentCopy;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
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
            dimensionality = [v33 dimensionality];
            v35 = [dictionary objectForKey:dimensionality];

            if (v35)
            {
              index = [v33 index];
              [v35 arrayByAddingObject:index];
            }

            else
            {
              v37 = MEMORY[0x277CBEA60];
              index = [v33 index];
              [v37 arrayWithObject:index];
            }
            v38 = ;
            dimensionality2 = [v33 dimensionality];
            [dictionary setObject:v38 forKey:dimensionality2];
          }

          v30 = [v28 countByEnumeratingWithState:&v68 objects:v79 count:16];
        }

        while (v30);
      }

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v40 = dictionary;
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
      contentCopy = v59;
      recordCopy = v60;
      v15 = v57;
      metadataCopy = v58;
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
      if (!out)
      {
        v26 = 0;
        goto LABEL_59;
      }

      v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported result type %lu in data encoder", v73];
      [FedStatsError errorWithCode:900 description:v40];
      *out = v26 = 0;
    }

    goto LABEL_59;
  }

  if (out)
  {
    [FedStatsError errorWithCode:400 description:@"encodeDataArrayAndRecord missing collection ID key"];
    *out = v26 = 0;
  }

  else
  {
    v26 = 0;
  }

LABEL_62:

  v54 = *MEMORY[0x277D85DE8];
  return v26;
}

+ (BOOL)encodeDataAndRecord:(id)record dataTypeContent:(id)content metadata:(id)metadata baseKey:(id)key errorOut:(id *)out
{
  v20 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v11 = MEMORY[0x277CBEA60];
  keyCopy = key;
  metadataCopy = metadata;
  contentCopy = content;
  recordCopy2 = record;
  v16 = [v11 arrayWithObjects:&recordCopy count:1];
  LOBYTE(out) = [FedStatsDataEncoder encodeDataArrayAndRecord:v16 dataTypeContent:contentCopy metadata:metadataCopy baseKey:keyCopy errorOut:out, recordCopy, v20];

  v17 = *MEMORY[0x277D85DE8];
  return out;
}

+ (BOOL)encodeDataAndRecord:(id)record dataTypeContent:(id)content baseKey:(id)key errorOut:(id *)out
{
  v17 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v9 = MEMORY[0x277CBEA60];
  keyCopy = key;
  contentCopy = content;
  recordCopy2 = record;
  v13 = [v9 arrayWithObjects:&recordCopy count:1];
  LOBYTE(out) = [FedStatsDataEncoder encodeDataArrayAndRecord:v13 dataTypeContent:contentCopy baseKey:keyCopy errorOut:out, recordCopy, v17];

  v14 = *MEMORY[0x277D85DE8];
  return out;
}

+ (BOOL)record:(id)record metadata:(id)metadata baseKey:(id)key
{
  v7 = MEMORY[0x277D052E8];
  keyCopy = key;
  metadataCopy = metadata;
  recordCopy = record;
  v11 = [[v7 alloc] initWithKey:keyCopy];

  LOBYTE(keyCopy) = [v11 record:recordCopy metadata:metadataCopy];
  return keyCopy;
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