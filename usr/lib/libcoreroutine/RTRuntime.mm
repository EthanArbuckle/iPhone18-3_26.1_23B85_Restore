@interface RTRuntime
+ (double)footprint;
+ (id)classesFromImages:(id)images;
+ (id)directSubclassesOfClass:(Class)class images:(id)images includeParentClass:(BOOL)parentClass;
+ (id)objToDictionary:(id)dictionary filterProperties:(id)properties;
+ (id)objToString:(id)string filterProperties:(id)properties;
+ (id)routineClassStrings;
+ (id)routineClasses;
+ (id)routineSubclassesOfClass:(Class)class;
+ (id)subclassesOfClass:(Class)class images:(id)images includeParentClass:(BOOL)parentClass;
@end

@implementation RTRuntime

+ (id)subclassesOfClass:(Class)class images:(id)images includeParentClass:(BOOL)parentClass
{
  v6 = MEMORY[0x277CCAC30];
  if (parentClass)
  {
    v7 = v15;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v8 = __57__RTRuntime_subclassesOfClass_images_includeParentClass___block_invoke;
  }

  else
  {
    v7 = v14;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v8 = __57__RTRuntime_subclassesOfClass_images_includeParentClass___block_invoke_2;
  }

  v7[2] = v8;
  v7[3] = &__block_descriptor_40_e25_B24__0_8__NSDictionary_16lu32l8;
  v7[4] = class;
  imagesCopy = images;
  v10 = [v6 predicateWithBlock:v7];
  v11 = [self classesFromImages:imagesCopy];

  v12 = [v11 filteredArrayUsingPredicate:v10];

  return v12;
}

BOOL __57__RTRuntime_subclassesOfClass_images_includeParentClass___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSubclassOfClass:*(a1 + 32)])
  {
    v4 = *(a1 + 32) != v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)directSubclassesOfClass:(Class)class images:(id)images includeParentClass:(BOOL)parentClass
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = [self subclassesOfClass:class images:images includeParentClass:parentClass];
  v7 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if (class_getSuperclass(v13) == class)
        {
          [v7 addObject:{v13, v15}];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (id)classesFromImages:(id)images
{
  imagesCopy = images;
  v4 = objc_opt_new();
  outCount = 0;
  v5 = objc_copyImageNames(&outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5[i]];
      lastPathComponent = [v7 lastPathComponent];

      if ([imagesCopy containsObject:lastPathComponent])
      {
        v16 = 0;
        v9 = objc_copyClassNamesForImage(v5[i], &v16);
        if (v16)
        {
          for (j = 0; j < v16; ++j)
          {
            v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9[j]];
            v12 = v11;
            if (v11)
            {
              v13 = NSClassFromString(v11);
              if (v13)
              {
                [v4 addObject:v13];
              }
            }
          }
        }

        free(v9);
      }
    }
  }

  free(v5);
  allObjects = [v4 allObjects];

  return allObjects;
}

+ (id)objToString:(id)string filterProperties:(id)properties
{
  v31 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  propertiesCopy = properties;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  outCount = 0;
  v8 = objc_opt_class();
  v9 = class_copyPropertyList(v8, &outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      Name = property_getName(v9[i]);
      if (Name)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:Name];
        v13 = [stringCopy valueForKey:v12];
        [dictionary setObject:v13 forKeyedSubscript:v12];
      }
    }
  }

  free(v9);
  array = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  allKeys = [dictionary allKeys];
  v16 = [allKeys sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

  v17 = [v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v25 + 1) + 8 * j);
        if (([propertiesCopy containsObject:v21] & 1) == 0)
        {
          [array addObject:v21];
          v22 = [dictionary objectForKeyedSubscript:v21];
          [array addObject:v22];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v18);
  }

  v23 = [array componentsJoinedByString:{@", "}];

  return v23;
}

+ (id)objToDictionary:(id)dictionary filterProperties:(id)properties
{
  v30 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  propertiesCopy = properties;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  outCount = 0;
  v8 = objc_opt_class();
  v9 = class_copyPropertyList(v8, &outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      Name = property_getName(v9[i]);
      if (Name)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:Name];
        v13 = [dictionaryCopy valueForKey:v12];
        [dictionary setObject:v13 forKeyedSubscript:v12];
      }
    }
  }

  free(v9);
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  allKeys = [dictionary allKeys];
  v16 = [allKeys sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

  v17 = [v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v24 + 1) + 8 * j);
        if (([propertiesCopy containsObject:v21] & 1) == 0)
        {
          v22 = [dictionary objectForKeyedSubscript:v21];
          [dictionary2 setObject:v22 forKeyedSubscript:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v18);
  }

  return dictionary2;
}

+ (id)routineClassStrings
{
  outCount = 0;
  v3 = objc_copyImageNames(&outCount);
  v4 = objc_opt_new();
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3[i]];
      lastPathComponent = [v6 lastPathComponent];

      routineImageNames = [self routineImageNames];
      v9 = [routineImageNames containsObject:lastPathComponent];

      if (v9)
      {
        v15 = 0;
        v10 = objc_copyClassNamesForImage(v3[i], &v15);
        if (v15)
        {
          for (j = 0; j < v15; ++j)
          {
            v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10[j]];
            if (v12)
            {
              [v4 addObject:v12];
            }
          }
        }

        free(v10);
      }
    }
  }

  free(v3);
  allObjects = [v4 allObjects];

  return allObjects;
}

+ (id)routineSubclassesOfClass:(Class)class
{
  routineImageNames = [self routineImageNames];
  v5 = [RTRuntime subclassesOfClass:class images:routineImageNames includeParentClass:1];

  return v5;
}

+ (id)routineClasses
{
  routineImageNames = [self routineImageNames];
  v3 = [RTRuntime classesFromImages:routineImageNames];

  return v3;
}

+ (double)footprint
{
  v21 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = getpid();
  v3 = proc_pid_rusage(v2, 4, v5);
  result = *(&v6 + 1) * 0.0009765625 * 0.0009765625;
  if (v3)
  {
    return 0.0;
  }

  return result;
}

@end