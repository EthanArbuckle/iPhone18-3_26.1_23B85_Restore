@interface RMModelConfigurationBase
+ (BOOL)usesKeychainAssets;
+ (id)assetTypes;
+ (id)combineArrayAppend:(id)append other:(id)other;
+ (id)combineBooleanAnd:(id)and other:(id)other;
+ (id)combineBooleanOr:(id)or other:(id)other;
+ (id)combineDictionary:(id)dictionary other:(id)other;
+ (id)combineEnumFirst:(id)first other:(id)other enums:(id)enums;
+ (id)combineEnumLast:(id)last other:(id)other enums:(id)enums;
+ (id)combineFirst:(id)first other:(id)other;
+ (id)combineMergeDictionary:(id)dictionary other:(id)other;
+ (id)combineNumberMax:(id)max other:(id)other;
+ (id)combineNumberMin:(id)min other:(id)other;
+ (id)combineSetIntersection:(id)intersection other:(id)other;
+ (id)combineSetUnion:(id)union other:(id)other;
- (id)assetReferencesFromKeyPaths:(id)paths payloadObject:(id)object;
- (void)_addAssetReference:(id)reference identifier:(id)identifier keyPath:(id)path result:(id)result processedIdentifiers:(id)identifiers;
- (void)_walkObject:(id)object keyPath:(id)path assetReference:(id)reference result:(id)result processedIdentifiers:(id)identifiers;
@end

@implementation RMModelConfigurationBase

+ (BOOL)usesKeychainAssets
{
  if (usesKeychainAssets_onceToken != -1)
  {
    +[RMModelConfigurationBase usesKeychainAssets];
  }

  v3 = usesKeychainAssets_keychainTypes;
  assetTypes = [self assetTypes];
  LOBYTE(v3) = [v3 intersectsSet:assetTypes];

  return v3;
}

uint64_t __46__RMModelConfigurationBase_usesKeychainAssets__block_invoke()
{
  usesKeychainAssets_keychainTypes = [MEMORY[0x277CBEB98] setWithArray:&unk_287466C20];

  return MEMORY[0x2821F96F8]();
}

+ (id)assetTypes
{
  v2 = objc_opt_new();

  return v2;
}

- (id)assetReferencesFromKeyPaths:(id)paths payloadObject:(id)object
{
  selfCopy = self;
  v29 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  objectCopy = object;
  v22 = objc_opt_new();
  v21 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = pathsCopy;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        keyPath = [v11 keyPath];
        v13 = [keyPath componentsSeparatedByString:@"."];

        firstObject = [v13 firstObject];
        v15 = [firstObject isEqualToString:@"$"];

        if (v15)
        {
          v16 = [v13 subarrayWithRange:{1, objc_msgSend(v13, "count") - 1}];
          [(RMModelConfigurationBase *)selfCopy _walkObject:objectCopy keyPath:v16 assetReference:v11 result:v22 processedIdentifiers:v21];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  v17 = [v22 copy];
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)_walkObject:(id)object keyPath:(id)path assetReference:(id)reference result:(id)result processedIdentifiers:(id)identifiers
{
  v70 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  pathCopy = path;
  referenceCopy = reference;
  resultCopy = result;
  identifiersCopy = identifiers;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject = [pathCopy firstObject];
    v17 = [firstObject isEqualToString:@"*"];

    if (v17)
    {
      if ([pathCopy count] == 1)
      {
        v18 = pathCopy;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v48 = objectCopy;
        allValues = [objectCopy allValues];
        v20 = [allValues countByEnumeratingWithState:&v62 objects:v69 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v63;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v63 != v22)
              {
                objc_enumerationMutation(allValues);
              }

              v24 = *(*(&v62 + 1) + 8 * i);
              v25 = [v18 objectAtIndexedSubscript:0];
              [(RMModelConfigurationBase *)self _addAssetReference:referenceCopy identifier:v24 keyPath:v25 result:resultCopy processedIdentifiers:identifiersCopy];
            }

            v21 = [allValues countByEnumeratingWithState:&v62 objects:v69 count:16];
          }

          while (v21);
        }

LABEL_11:

        objectCopy = v48;
LABEL_42:
        pathCopy = v18;
        goto LABEL_43;
      }

      v18 = pathCopy;
      v37 = [pathCopy subarrayWithRange:{1, objc_msgSend(pathCopy, "count") - 1}];
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      allValues2 = [objectCopy allValues];
      v39 = [allValues2 countByEnumeratingWithState:&v58 objects:v68 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v59;
        do
        {
          for (j = 0; j != v40; ++j)
          {
            if (*v59 != v41)
            {
              objc_enumerationMutation(allValues2);
            }

            [(RMModelConfigurationBase *)self _walkObject:*(*(&v58 + 1) + 8 * j) keyPath:v37 assetReference:referenceCopy result:resultCopy processedIdentifiers:identifiersCopy];
          }

          v40 = [allValues2 countByEnumeratingWithState:&v58 objects:v68 count:16];
        }

        while (v40);
      }

      goto LABEL_41;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    firstObject2 = [pathCopy firstObject];
    v27 = [objectCopy valueForKey:firstObject2];

    if ([pathCopy count] == 1)
    {
      if (v27)
      {
        v28 = [pathCopy objectAtIndexedSubscript:0];
        [(RMModelConfigurationBase *)self _addAssetReference:referenceCopy identifier:v27 keyPath:v28 result:resultCopy processedIdentifiers:identifiersCopy];
LABEL_19:
      }
    }

    else if (v27)
    {
      v28 = [pathCopy subarrayWithRange:{1, objc_msgSend(pathCopy, "count") - 1}];
      [(RMModelConfigurationBase *)self _walkObject:v27 keyPath:v28 assetReference:referenceCopy result:resultCopy processedIdentifiers:identifiersCopy];
      goto LABEL_19;
    }

    goto LABEL_43;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject3 = [pathCopy firstObject];
    v30 = [firstObject3 isEqualToString:@"*"];

    if (v30)
    {
      if ([pathCopy count] == 1)
      {
        v18 = pathCopy;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v48 = objectCopy;
        allValues = objectCopy;
        v31 = [allValues countByEnumeratingWithState:&v54 objects:v67 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v55;
          do
          {
            for (k = 0; k != v32; ++k)
            {
              if (*v55 != v33)
              {
                objc_enumerationMutation(allValues);
              }

              v35 = *(*(&v54 + 1) + 8 * k);
              v36 = [v18 objectAtIndexedSubscript:{0, v48}];
              [(RMModelConfigurationBase *)self _addAssetReference:referenceCopy identifier:v35 keyPath:v36 result:resultCopy processedIdentifiers:identifiersCopy];
            }

            v32 = [allValues countByEnumeratingWithState:&v54 objects:v67 count:16];
          }

          while (v32);
        }

        goto LABEL_11;
      }

      v18 = pathCopy;
      v37 = [pathCopy subarrayWithRange:{1, objc_msgSend(pathCopy, "count") - 1}];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      allValues2 = objectCopy;
      v44 = [allValues2 countByEnumeratingWithState:&v50 objects:v66 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v51;
        do
        {
          for (m = 0; m != v45; ++m)
          {
            if (*v51 != v46)
            {
              objc_enumerationMutation(allValues2);
            }

            [(RMModelConfigurationBase *)self _walkObject:*(*(&v50 + 1) + 8 * m) keyPath:v37 assetReference:referenceCopy result:resultCopy processedIdentifiers:identifiersCopy];
          }

          v45 = [allValues2 countByEnumeratingWithState:&v50 objects:v66 count:16];
        }

        while (v45);
      }

LABEL_41:

      goto LABEL_42;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RMModelConfigurationBase _walkObject:referenceCopy keyPath:? assetReference:? result:? processedIdentifiers:?];
  }

LABEL_43:

  v43 = *MEMORY[0x277D85DE8];
}

- (void)_addAssetReference:(id)reference identifier:(id)identifier keyPath:(id)path result:(id)result processedIdentifiers:(id)identifiers
{
  referenceCopy = reference;
  identifierCopy = identifier;
  pathCopy = path;
  resultCopy = result;
  identifiersCopy = identifiers;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([identifiersCopy containsObject:identifierCopy] & 1) == 0)
    {
      v16 = [RMModelAssetReference alloc];
      assetTypes = [referenceCopy assetTypes];
      v18 = [(RMModelAssetReference *)v16 initWithIdentifier:identifierCopy assetTypes:assetTypes];
      [resultCopy addObject:v18];

      [identifiersCopy addObject:identifierCopy];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RMModelConfigurationBase _addAssetReference:referenceCopy identifier:? keyPath:? result:? processedIdentifiers:?];
  }
}

+ (id)combineBooleanOr:(id)or other:(id)other
{
  orCopy = or;
  otherCopy = other;
  v7 = otherCopy;
  if (orCopy)
  {
    if (otherCopy)
    {
      v8 = MEMORY[0x277CCABB0];
      if ([orCopy BOOLValue])
      {
        bOOLValue = 1;
      }

      else
      {
        bOOLValue = [v7 BOOLValue];
      }

      v10 = [v8 numberWithBool:bOOLValue];
    }

    else
    {
      v10 = orCopy;
    }
  }

  else
  {
    v10 = otherCopy;
  }

  v11 = v10;

  return v11;
}

+ (id)combineBooleanAnd:(id)and other:(id)other
{
  andCopy = and;
  otherCopy = other;
  v7 = otherCopy;
  if (andCopy)
  {
    if (otherCopy)
    {
      v8 = MEMORY[0x277CCABB0];
      if ([andCopy BOOLValue])
      {
        bOOLValue = [v7 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }

      v10 = [v8 numberWithBool:bOOLValue];
    }

    else
    {
      v10 = andCopy;
    }
  }

  else
  {
    v10 = otherCopy;
  }

  v11 = v10;

  return v11;
}

+ (id)combineNumberMin:(id)min other:(id)other
{
  minCopy = min;
  otherCopy = other;
  v7 = otherCopy;
  v8 = otherCopy;
  if (minCopy)
  {
    v8 = minCopy;
    if (otherCopy)
    {
      if ([minCopy compare:otherCopy] == -1)
      {
        v8 = minCopy;
      }

      else
      {
        v8 = v7;
      }
    }
  }

  v9 = v8;

  return v9;
}

+ (id)combineNumberMax:(id)max other:(id)other
{
  maxCopy = max;
  otherCopy = other;
  v7 = otherCopy;
  v8 = otherCopy;
  if (maxCopy)
  {
    v8 = maxCopy;
    if (otherCopy)
    {
      if ([maxCopy compare:otherCopy] == 1)
      {
        v8 = maxCopy;
      }

      else
      {
        v8 = v7;
      }
    }
  }

  v9 = v8;

  return v9;
}

+ (id)combineEnumFirst:(id)first other:(id)other enums:(id)enums
{
  firstCopy = first;
  otherCopy = other;
  enumsCopy = enums;
  v10 = enumsCopy;
  if (firstCopy)
  {
    if (!otherCopy || (v11 = [enumsCopy indexOfObject:firstCopy], v12 = objc_msgSend(v10, "indexOfObject:", otherCopy), v12 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v13 = firstCopy;
      goto LABEL_7;
    }

    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v11 >= v12)
      {
        v16 = v12;
      }

      else
      {
        v16 = v11;
      }

      v13 = [v10 objectAtIndexedSubscript:v16];
      goto LABEL_7;
    }
  }

  v13 = otherCopy;
LABEL_7:
  v14 = v13;

  return v14;
}

+ (id)combineEnumLast:(id)last other:(id)other enums:(id)enums
{
  lastCopy = last;
  otherCopy = other;
  enumsCopy = enums;
  v10 = enumsCopy;
  if (lastCopy)
  {
    if (!otherCopy || (v11 = [enumsCopy indexOfObject:lastCopy], v12 = objc_msgSend(v10, "indexOfObject:", otherCopy), v12 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v13 = lastCopy;
      goto LABEL_7;
    }

    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v11 <= v12)
      {
        v16 = v12;
      }

      else
      {
        v16 = v11;
      }

      v13 = [v10 objectAtIndexedSubscript:v16];
      goto LABEL_7;
    }
  }

  v13 = otherCopy;
LABEL_7:
  v14 = v13;

  return v14;
}

+ (id)combineFirst:(id)first other:(id)other
{
  if (first)
  {
    return first;
  }

  else
  {
    return other;
  }
}

+ (id)combineArrayAppend:(id)append other:(id)other
{
  appendCopy = append;
  otherCopy = other;
  v7 = otherCopy;
  if (appendCopy)
  {
    if (otherCopy)
    {
      v8 = [appendCopy arrayByAddingObjectsFromArray:otherCopy];
    }

    else
    {
      v8 = appendCopy;
    }
  }

  else
  {
    v8 = otherCopy;
  }

  v9 = v8;

  return v9;
}

+ (id)combineSetUnion:(id)union other:(id)other
{
  unionCopy = union;
  otherCopy = other;
  v7 = otherCopy;
  if (unionCopy)
  {
    if (otherCopy)
    {
      v8 = [MEMORY[0x277CBEB58] setWithArray:unionCopy];
      v9 = [MEMORY[0x277CBEB98] setWithArray:v7];
      [v8 unionSet:v9];
      allObjects = [v8 allObjects];

      goto LABEL_7;
    }

    v11 = unionCopy;
  }

  else
  {
    v11 = otherCopy;
  }

  allObjects = v11;
LABEL_7:

  return allObjects;
}

+ (id)combineSetIntersection:(id)intersection other:(id)other
{
  intersectionCopy = intersection;
  otherCopy = other;
  v7 = otherCopy;
  if (intersectionCopy)
  {
    if (otherCopy)
    {
      v8 = [MEMORY[0x277CBEB58] setWithArray:intersectionCopy];
      v9 = [MEMORY[0x277CBEB98] setWithArray:v7];
      [v8 intersectSet:v9];
      allObjects = [v8 allObjects];

      goto LABEL_7;
    }

    v11 = intersectionCopy;
  }

  else
  {
    v11 = otherCopy;
  }

  allObjects = v11;
LABEL_7:

  return allObjects;
}

+ (id)combineDictionary:(id)dictionary other:(id)other
{
  dictionaryCopy = dictionary;
  otherCopy = other;
  v7 = otherCopy;
  if (dictionaryCopy)
  {
    if (otherCopy)
    {
      [dictionaryCopy combineWithOther:otherCopy];
    }

    v8 = dictionaryCopy;
  }

  else
  {
    v8 = [otherCopy copyWithZone:0];
  }

  v9 = v8;

  return v9;
}

+ (id)combineMergeDictionary:(id)dictionary other:(id)other
{
  v29 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  otherCopy = other;
  v7 = otherCopy;
  if (!dictionaryCopy)
  {
    v19 = [otherCopy copyWithZone:0];
LABEL_19:
    v18 = v19;
    goto LABEL_20;
  }

  if (!otherCopy)
  {
    v19 = dictionaryCopy;
    goto LABEL_19;
  }

  v23 = dictionaryCopy;
  v8 = [dictionaryCopy mutableCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v22 = v7;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        v15 = [v8 objectForKeyedSubscript:{v14, v22}];
        v16 = [v9 objectForKeyedSubscript:v14];
        v17 = v16;
        if (v15)
        {
          if (v16 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v15 combineWithOther:v17];
          }
        }

        else
        {
          [v8 setObject:v16 forKeyedSubscript:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  v18 = [v8 copy];
  v7 = v22;
  dictionaryCopy = v23;
LABEL_20:

  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)_walkObject:(void *)a1 keyPath:assetReference:result:processedIdentifiers:.cold.1(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = [a1 keyPath];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_261DAE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Asset reference key path failed: %{public}@ at %{public}@", v3, 0x16u);

  v2 = *MEMORY[0x277D85DE8];
}

- (void)_addAssetReference:(void *)a1 identifier:keyPath:result:processedIdentifiers:.cold.1(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = [a1 keyPath];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_261DAE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Asset reference key wrong type: %{public}@ at %{public}@", v3, 0x16u);

  v2 = *MEMORY[0x277D85DE8];
}

@end