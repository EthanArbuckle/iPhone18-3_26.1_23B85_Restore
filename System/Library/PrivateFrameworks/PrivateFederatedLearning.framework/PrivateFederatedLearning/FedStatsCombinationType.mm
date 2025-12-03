@interface FedStatsCombinationType
+ (id)createFromDict:(id)dict possibleError:(id *)error;
- (FedStatsCombinationType)initWithCombinationSpec:(id)spec;
- (id)decodeFromIndex:(id)index possibleError:(id *)error;
- (id)encodeToIndex:(id)index possibleError:(id *)error;
- (id)sampleForIndex:(unint64_t)index;
@end

@implementation FedStatsCombinationType

- (FedStatsCombinationType)initWithCombinationSpec:(id)spec
{
  v44 = *MEMORY[0x277D85DE8];
  specCopy = spec;
  v41.receiver = self;
  v41.super_class = FedStatsCombinationType;
  v6 = [(FedStatsCombinationType *)&v41 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_combinationSpec, spec);
    allKeys = [specCopy allKeys];
    v9 = [allKeys sortedArrayUsingComparator:&__block_literal_global_1];
    orderedKeys = v7->_orderedKeys;
    v7->_orderedKeys = v9;

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    orderedKeys = [(FedStatsCombinationType *)v7 orderedKeys];
    v12 = [orderedKeys countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v38;
      v15 = 1;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(orderedKeys);
          }

          v17 = [specCopy objectForKeyedSubscript:*(*(&v37 + 1) + 8 * i)];
          v15 *= [v17 classCount];
        }

        v13 = [orderedKeys countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v13);
    }

    else
    {
      v15 = 1;
    }

    v36.receiver = v7;
    v36.super_class = FedStatsCombinationType;
    [(FedStatsBoundedULongType *)&v36 setBound:v15 - 1];
    v7->_classCount = v15;
    v18 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(specCopy, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v31 = v7;
    orderedKeys2 = [(FedStatsCombinationType *)v7 orderedKeys];
    v20 = [orderedKeys2 countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v33;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(orderedKeys2);
          }

          v24 = *(*(&v32 + 1) + 8 * j);
          v25 = [specCopy objectForKeyedSubscript:v24];
          v15 /= [v25 classCount];

          v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v15];
          [v18 setObject:v26 forKeyedSubscript:v24];
        }

        v21 = [orderedKeys2 countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v21);
    }

    v27 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v18];
    v7 = v31;
    strides = v31->_strides;
    v31->_strides = v27;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)createFromDict:(id)dict possibleError:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v7 = [dictCopy objectForKey:@"structure"];
  if (!v7)
  {
    if (error)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing key %@", @"structure"];
      v9 = 300;
LABEL_11:
      *error = [FedStatsError errorWithCode:v9 description:v8];

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"The value of the key %@ must be an array", @"structure"];
      goto LABEL_10;
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  if ([v7 count] <= 1)
  {
    if (error)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"The value of the key %@ must have at least 2 elements", @"structure"];
      v8 = LABEL_10:;
      v9 = 302;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  selfCopy = self;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v48;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v48 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v47 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Every entry in the value of the key %@ must be a string", @"structure"];
            *error = [FedStatsError errorWithCode:302 description:v33];
          }

          goto LABEL_12;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v47 objects:v53 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v19 = [dictCopy objectForKey:@"availableTypes"];
  if (v19)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      allValues = [v19 allValues];
      v21 = [allValues countByEnumeratingWithState:&v43 objects:v52 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v44;
        while (2)
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v44 != v23)
            {
              objc_enumerationMutation(allValues);
            }

            if (([*(*(&v43 + 1) + 8 * j) conformsToProtocol:&unk_282B4D078] & 1) == 0)
            {
              v32 = v19;
              if (error)
              {
                v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Every value in the %@ dictionary must be a class conforming to %@", @"availableTypes", @"FedStatsDataTypeProtocol"];
                *error = [FedStatsError errorWithCode:302 description:v35];
              }

LABEL_57:
              v10 = 0;
              goto LABEL_58;
            }
          }

          v22 = [allValues countByEnumeratingWithState:&v43 objects:v52 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

      allValues = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v13, "count")}];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      obj = v13;
      v25 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v40;
        while (2)
        {
          for (k = 0; k != v26; ++k)
          {
            if (*v40 != v27)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v39 + 1) + 8 * k);
            v30 = [v19 objectForKey:v29];
            [allValues setObject:v30 forKeyedSubscript:v29];

            v31 = [allValues objectForKeyedSubscript:v29];

            if (!v31)
            {
              v32 = v19;
              if (error)
              {
                v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"There is no type defined for %@", v29];
                *error = [FedStatsError errorWithCode:302 description:v36];
              }

              goto LABEL_57;
            }
          }

          v26 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
          if (v26)
          {
            continue;
          }

          break;
        }
      }

      v32 = v19;

      v10 = [[selfCopy alloc] initWithCombinationSpec:allValues];
      goto LABEL_58;
    }

    v32 = v19;
    if (error)
    {
      allValues = [MEMORY[0x277CCACA8] stringWithFormat:@"The value of the key %@ must be a dictionary", @"availableTypes"];
      v34 = 302;
      goto LABEL_50;
    }
  }

  else
  {
    v32 = 0;
    if (error)
    {
      allValues = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing key %@", @"availableTypes"];
      v34 = 300;
LABEL_50:
      [FedStatsError errorWithCode:v34 description:allValues];
      *error = v10 = 0;
LABEL_58:

      goto LABEL_59;
    }
  }

  v10 = 0;
LABEL_59:

LABEL_13:
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)encodeToIndex:(id)index possibleError:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    orderedKeys = [(FedStatsCombinationType *)self orderedKeys];
    v8 = [orderedKeys countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v41;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v41 != v10)
          {
            objc_enumerationMutation(orderedKeys);
          }

          v12 = *(*(&v40 + 1) + 8 * i);
          v13 = [indexCopy objectForKey:v12];

          if (!v13)
          {
            if (error)
            {
              v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"The combination type requires the key %@ to be in the value dictionary", v12];
              *error = [FedStatsError errorWithCode:401 description:v26];
            }

            goto LABEL_27;
          }
        }

        v9 = [orderedKeys countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [(FedStatsCombinationType *)self orderedKeys];
    v34 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v34)
    {
      errorCopy = error;
      v14 = 0;
      v33 = *v37;
      while (2)
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v37 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v36 + 1) + 8 * j);
          combinationSpec = [(FedStatsCombinationType *)self combinationSpec];
          v18 = [combinationSpec objectForKey:v16];

          v19 = [indexCopy objectForKeyedSubscript:v16];
          v35 = 0;
          v20 = [v18 encodeToIndex:v19 possibleError:&v35];
          v21 = v35;

          if (!v20)
          {
            if (errorCopy)
            {
              code = [*errorCopy code];
              v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error with %@ value in the encoder.", v16];
              *errorCopy = [FedStatsError errorWithCode:code underlyingError:v21 description:v28];
            }

            goto LABEL_27;
          }

          strides = [(FedStatsCombinationType *)self strides];
          v23 = [strides objectForKey:v16];
          unsignedLongValue = [v23 unsignedLongValue];
          v14 += [v20 unsignedLongValue] * unsignedLongValue;
        }

        v34 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v34)
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

    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
  }

  else if (error)
  {
    [FedStatsError errorWithCode:401 description:@"The combination type encoder requires a dictionary to process."];
    *error = v25 = 0;
  }

  else
  {
LABEL_27:
    v25 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)decodeFromIndex:(id)index possibleError:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  v7 = indexCopy;
  if (!indexCopy)
  {
    if (error)
    {
      v27 = @"The decoder can only work with a valid number type";
LABEL_16:
      [FedStatsError errorWithCode:500 description:v27];
      *error = v26 = 0;
      goto LABEL_22;
    }

LABEL_17:
    v26 = 0;
    goto LABEL_22;
  }

  unsignedLongValue = [indexCopy unsignedLongValue];
  if (unsignedLongValue >= [(FedStatsCombinationType *)self classCount])
  {
    if (error)
    {
      v27 = @"The decoder requires a number less than the class count";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v34 = v7;
  unsignedLongValue2 = [v7 unsignedLongValue];
  v10 = MEMORY[0x277CBEB38];
  orderedKeys = [(FedStatsCombinationType *)self orderedKeys];
  v39 = [v10 dictionaryWithCapacity:{objc_msgSend(orderedKeys, "count")}];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [(FedStatsCombinationType *)self orderedKeys];
  v38 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v38)
  {
    selfCopy = self;
    v37 = *v42;
    while (2)
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v42 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v41 + 1) + 8 * i);
        strides = [(FedStatsCombinationType *)self strides];
        v15 = [strides objectForKey:v13];
        unsignedLongValue3 = [v15 unsignedLongValue];

        v40 = unsignedLongValue3;
        v17 = unsignedLongValue2 / unsignedLongValue3;
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:unsignedLongValue2 / unsignedLongValue3];
        combinationSpec = [(FedStatsCombinationType *)self combinationSpec];
        [combinationSpec objectForKey:v13];
        v21 = v20 = unsignedLongValue2;
        errorCopy = error;
        v23 = [v21 decodeFromIndex:v18 possibleError:error];
        [v39 setValue:v23 forKey:v13];

        v24 = [v39 objectForKey:v13];

        if (!v24)
        {
          if (errorCopy)
          {
            v28 = errorCopy;
            v29 = MEMORY[0x277CCACA8];
            localizedDescription = [*errorCopy localizedDescription];
            v31 = [v29 stringWithFormat:@"Could not decode %@ value in the combination: %@", v13, localizedDescription];
            *v28 = [FedStatsError errorWithCode:500 description:v31];
          }

          v26 = 0;
          v25 = v39;
          goto LABEL_21;
        }

        unsignedLongValue2 = v20 - v17 * v40;

        error = errorCopy;
        self = selfCopy;
      }

      v38 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v38)
      {
        continue;
      }

      break;
    }
  }

  v25 = v39;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v39];
LABEL_21:

  v7 = v34;
LABEL_22:

  v32 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)sampleForIndex:(unint64_t)index
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB38];
  orderedKeys = [(FedStatsCombinationType *)self orderedKeys];
  v21 = [v5 dictionaryWithCapacity:{objc_msgSend(orderedKeys, "count")}];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(FedStatsCombinationType *)self orderedKeys];
  v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v20 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        strides = [(FedStatsCombinationType *)self strides];
        v12 = [strides objectForKey:v10];
        unsignedLongValue = [v12 unsignedLongValue];

        combinationSpec = [(FedStatsCombinationType *)self combinationSpec];
        v15 = [combinationSpec objectForKey:v10];
        v16 = [v15 sampleForIndex:index / unsignedLongValue];
        [v21 setObject:v16 forKey:v10];

        index %= unsignedLongValue;
      }

      v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v21;
}

@end