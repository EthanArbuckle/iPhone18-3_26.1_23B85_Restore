@interface REFeatureMap
- (BOOL)hasValueForFeature:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSArray)loggingValues;
- (NSSet)allFeatures;
- (NSSet)featureNames;
- (REFeatureMap)initWithFeatureMap:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)featureValueForFeature:(id)a3;
- (id)featureValueForName:(id)a3;
- (unint64_t)populatedFeatureCount;
- (unint64_t)valueForFeature:(id)a3;
- (void)dealloc;
- (void)enumerateBoolFeaturesUsingBlock:(id)a3;
- (void)enumerateDoubleFeaturesUsingBlock:(id)a3;
- (void)enumerateEmptyFeaturesUsingBlock:(id)a3;
- (void)enumerateFeatureValuesUsingBlock:(id)a3;
- (void)enumerateFeaturesUsingBlock:(id)a3;
- (void)enumerateInt64FeaturesUsingBlock:(id)a3;
- (void)enumerateInt64FeaturesUsingIndexedBlock:(id)a3 emptyFeatureBlock:(id)a4;
- (void)enumerateStringFeaturesUsingBlock:(id)a3;
- (void)logAllValues;
- (void)removeAllValues;
- (void)removeValueForFeature:(id)a3;
- (void)setFeatureValue:(id)a3 forFeature:(id)a4;
- (void)setValue:(unint64_t)a3 forFeature:(id)a4;
@end

@implementation REFeatureMap

- (REFeatureMap)initWithFeatureMap:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REFeatureMap;
  v6 = [(REFeatureMap *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_hash = 0;
    objc_storeStrong(&v6->_indices, a3);
    v7->_values = malloc_type_calloc([(REFeatureMap *)v7 _count], 8uLL, 0x100004000313F17uLL);
  }

  return v7;
}

- (void)dealloc
{
  if ([(REFeatureMap *)self _count])
  {
    v3 = 0;
    do
    {
      v4 = self->_values[v3];
      if (v4)
      {
        REReleaseFeatureValueTaggedPointer(v4);
        self->_values[v3] = 0;
      }

      ++v3;
    }

    while ([(REFeatureMap *)self _count]> v3);
  }

  free(self->_values);
  self->_values = 0;
  v5.receiver = self;
  v5.super_class = REFeatureMap;
  [(REFeatureMap *)&v5 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(REFeatureMap *)self _count];
      if (self->_indices == v5->_indices && (v7 = v6, v8 = [(REFeatureMap *)self _count], v8 == [(REFeatureMap *)v5 _count]))
      {
        if (v7)
        {
          for (i = 0; i != v7; ++i)
          {
            v10 = self->_values[i];
            if (v10 != v5->_values[i])
            {
              v11 = REFeatureValueForTaggedPointer(v10);
              v12 = REFeatureValueForTaggedPointer(v5->_values[i]);
              v13 = v12;
              if (v11 == v12)
              {
              }

              else
              {
                v14 = [v11 isEqual:v12];

                if ((v14 & 1) == 0)
                {
                  goto LABEL_16;
                }
              }
            }
          }
        }

        v15 = 1;
      }

      else
      {
LABEL_16:
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v4 + 8) = self->_hash;
  *(v4 + 16) = malloc_type_calloc([(REFeatureMap *)self _count], 8uLL, 0x100004000313F17uLL);
  v5 = [(REFeatureMap *)self _count];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v8 = REFeatureValueForTaggedPointer(self->_values[i]);
      *(*(v4 + 16) + 8 * i) = RECreateFeatureValueTaggedPointer(v8);
    }
  }

  objc_storeStrong((v4 + 24), self->_indices);
  return v4;
}

- (void)setValue:(unint64_t)a3 forFeature:(id)a4
{
  v6 = a4;
  v7 = [(NSDictionary *)self->_indices objectForKeyedSubscript:v6];
  if (!v7)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__REFeatureMap_setValue_forFeature___block_invoke;
    block[3] = &unk_2785F9AB8;
    v17 = v6;
    if (setValue_forFeature__onceToken != -1)
    {
      dispatch_once(&setValue_forFeature__onceToken, block);
    }

    v12 = v17;
    goto LABEL_11;
  }

  if (a3)
  {
    v8 = REFeatureValueTypeForTaggedPointer(a3);
    if ((REValidFeatureValueTypeForFeatureType(v8, [v6 featureType]) & 1) == 0)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __36__REFeatureMap_setValue_forFeature___block_invoke_2;
      v13[3] = &unk_2785F9C80;
      v14 = v6;
      v15 = a3;
      if (setValue_forFeature__onceToken_20 != -1)
      {
        dispatch_once(&setValue_forFeature__onceToken_20, v13);
      }

      v12 = v14;
LABEL_11:

      goto LABEL_12;
    }
  }

  RERetainFeatureValueTaggedPointer(a3);
  v9 = [v7 unsignedIntegerValue];
  v10 = REFeatureValueHashForTaggedPointer(self->_values[v9]);
  values = self->_values;
  self->_hash ^= v10;
  REReleaseFeatureValueTaggedPointer(values[v9]);
  self->_values[v9] = a3;
  self->_hash ^= REFeatureValueHashForTaggedPointer(a3);
LABEL_12:
}

void __36__REFeatureMap_setValue_forFeature___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x277CBE660];
  v8 = [*(a1 + 32) name];
  RERaiseInternalException(v1, @"Relevance Engine is not configured to support feature: %@", v2, v3, v4, v5, v6, v7, v8);
}

void __36__REFeatureMap_setValue_forFeature___block_invoke_2(uint64_t a1)
{
  v2 = *MEMORY[0x277CBE660];
  v10 = [*(a1 + 32) name];
  v9 = REDescriptionForTaggedPointer(*(a1 + 40));
  RERaiseInternalException(v2, @"Feature %@ does not support value %@", v3, v4, v5, v6, v7, v8, v10);
}

- (void)setFeatureValue:(id)a3 forFeature:(id)a4
{
  v6 = a4;
  v7 = RECreateFeatureValueTaggedPointer(a3);
  [(REFeatureMap *)self setValue:v7 forFeature:v6];

  REReleaseFeatureValueTaggedPointer(v7);
}

- (void)removeValueForFeature:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_indices objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntegerValue];
    v8 = REFeatureValueHashForTaggedPointer(self->_values[v7]);
    values = self->_values;
    self->_hash ^= v8;
    REReleaseFeatureValueTaggedPointer(values[v7]);
    self->_values[v7] = 0;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__REFeatureMap_removeValueForFeature___block_invoke;
    block[3] = &unk_2785F9AB8;
    v11 = v4;
    if (removeValueForFeature__onceToken != -1)
    {
      dispatch_once(&removeValueForFeature__onceToken, block);
    }
  }
}

void __38__REFeatureMap_removeValueForFeature___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x277CBE660];
  v8 = [*(a1 + 32) name];
  RERaiseInternalException(v1, @"Relevance Engine is not configured to support feature: %@", v2, v3, v4, v5, v6, v7, v8);
}

- (void)removeAllValues
{
  self->_hash = 0;
  if ([(REFeatureMap *)self _count])
  {
    v3 = 0;
    do
    {
      REReleaseFeatureValueTaggedPointer(self->_values[v3]);
      self->_values[v3++] = 0;
    }

    while (v3 < [(REFeatureMap *)self _count]);
  }
}

- (id)featureValueForFeature:(id)a3
{
  v3 = [(REFeatureMap *)self valueForFeature:a3];

  return REFeatureValueForTaggedPointer(v3);
}

- (unint64_t)valueForFeature:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_indices objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    values = self->_values;
    v8 = values[[v5 unsignedIntegerValue]];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__REFeatureMap_valueForFeature___block_invoke;
    block[3] = &unk_2785F9AB8;
    v11 = v4;
    if (valueForFeature__onceToken != -1)
    {
      dispatch_once(&valueForFeature__onceToken, block);
    }

    v8 = 0;
  }

  return v8;
}

void __32__REFeatureMap_valueForFeature___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x277CBE660];
  v8 = [*(a1 + 32) name];
  RERaiseInternalException(v1, @"Relevance Engine is not configured to support feature: %@", v2, v3, v4, v5, v6, v7, v8);
}

- (BOOL)hasValueForFeature:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_indices objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [(REFeatureMap *)self valueForFeature:v4]!= 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)enumerateFeaturesUsingBlock:(id)a3
{
  v4 = a3;
  indices = self->_indices;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__REFeatureMap_enumerateFeaturesUsingBlock___block_invoke;
  v7[3] = &unk_2785F9CA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NSDictionary *)indices enumerateKeysAndObjectsUsingBlock:v7];
}

void __44__REFeatureMap_enumerateFeaturesUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, *(*(*(a1 + 32) + 16) + 8 * [a3 unsignedIntegerValue]));
}

- (void)enumerateBoolFeaturesUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__REFeatureMap_enumerateBoolFeaturesUsingBlock___block_invoke;
  v6[3] = &unk_2785F9CD0;
  v7 = v4;
  v5 = v4;
  [(REFeatureMap *)self enumerateFeaturesUsingBlock:v6];
}

uint64_t __48__REFeatureMap_enumerateBoolFeaturesUsingBlock___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v10 = v5;
    v5 = REFeatureValueTypeForTaggedPointer(a3);
    v6 = v10;
    if (!v5)
    {
      v7 = *(a1 + 32);
      v8 = REBooleanValueForTaggedPointer(a3);
      v5 = (*(v7 + 16))(v7, v10, v8);
      v6 = v10;
    }
  }

  return MEMORY[0x2821F96F8](v5, v6);
}

- (void)enumerateInt64FeaturesUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__REFeatureMap_enumerateInt64FeaturesUsingBlock___block_invoke;
  v6[3] = &unk_2785F9CD0;
  v7 = v4;
  v5 = v4;
  [(REFeatureMap *)self enumerateFeaturesUsingBlock:v6];
}

void __49__REFeatureMap_enumerateInt64FeaturesUsingBlock___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v9 = v5;
    v6 = REFeatureValueTypeForTaggedPointer(a3) == 1;
    v5 = v9;
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = REIntegerValueForTaggedPointer(a3);
      (*(v7 + 16))(v7, v9, v8);
      v5 = v9;
    }
  }
}

- (void)enumerateDoubleFeaturesUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__REFeatureMap_enumerateDoubleFeaturesUsingBlock___block_invoke;
  v6[3] = &unk_2785F9CD0;
  v7 = v4;
  v5 = v4;
  [(REFeatureMap *)self enumerateFeaturesUsingBlock:v6];
}

void __50__REFeatureMap_enumerateDoubleFeaturesUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a3)
  {
    v10 = v5;
    v6 = REFeatureValueTypeForTaggedPointer(a3) == 2;
    v5 = v10;
    if (v6)
    {
      v8 = *(a1 + 32);
      v9 = REDoubleValueForTaggedPointer(a3, v7);
      (*(v8 + 16))(v8, v10, v9);
      v5 = v10;
    }
  }
}

- (void)enumerateStringFeaturesUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__REFeatureMap_enumerateStringFeaturesUsingBlock___block_invoke;
  v6[3] = &unk_2785F9CD0;
  v7 = v4;
  v5 = v4;
  [(REFeatureMap *)self enumerateFeaturesUsingBlock:v6];
}

void __50__REFeatureMap_enumerateStringFeaturesUsingBlock___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v9 = v5;
    v6 = REFeatureValueTypeForTaggedPointer(a3) == 3;
    v5 = v9;
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = REStringValueForTaggedPointer(a3);
      (*(v7 + 16))(v7, v9, v8);

      v5 = v9;
    }
  }
}

- (void)enumerateEmptyFeaturesUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__REFeatureMap_enumerateEmptyFeaturesUsingBlock___block_invoke;
  v6[3] = &unk_2785F9CD0;
  v7 = v4;
  v5 = v4;
  [(REFeatureMap *)self enumerateFeaturesUsingBlock:v6];
}

uint64_t __49__REFeatureMap_enumerateEmptyFeaturesUsingBlock___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)enumerateFeatureValuesUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__REFeatureMap_enumerateFeatureValuesUsingBlock___block_invoke;
  v6[3] = &unk_2785F9CD0;
  v7 = v4;
  v5 = v4;
  [(REFeatureMap *)self enumerateFeaturesUsingBlock:v6];
}

void __49__REFeatureMap_enumerateFeatureValuesUsingBlock___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = REFeatureValueForTaggedPointer(a3);
  (*(*(a1 + 32) + 16))();
}

- (NSSet)allFeatures
{
  v2 = [[_REFeatureMapFeatureSet alloc] initWithFeatureMap:self->_indices];

  return v2;
}

- (NSArray)loggingValues
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[REFeatureMap featureCount](self, "featureCount")}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__REFeatureMap_loggingValues__block_invoke;
  v7[3] = &unk_2785F9CF8;
  v8 = v3;
  v4 = v3;
  [(REFeatureMap *)self enumerateFeatureValuesUsingBlock:v7];
  v5 = [v4 copy];

  return v5;
}

void __29__REFeatureMap_loggingValues__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = MEMORY[0x277CCACA8];
  v6 = [a2 name];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"(null)";
  }

  if (v10)
  {
    v8 = REValueDescriptionStringFromFeatureValue(v10);
    v9 = [v5 stringWithFormat:@"%@ → %@", v7, v8];
  }

  else
  {
    v9 = [v5 stringWithFormat:@"%@ → %@", v7, @"(null)"];
  }

  [*(a1 + 32) addObject:v9];
}

- (void)logAllValues
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = RELogForDomain(3);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

  if (v4)
  {
    v5 = RELogForDomain(3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(REFeatureMap *)v5 logAllValues];
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(REFeatureMap *)self loggingValues];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          v12 = RELogForDomain(3);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v19 = v11;
            _os_log_debug_impl(&dword_22859F000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v8);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (NSSet)featureNames
{
  if (featureNames_onceToken != -1)
  {
    [REFeatureMap(REFeatureProvider) featureNames];
  }

  v3 = featureNames_DefaultFeatureNames;

  return v3;
}

uint64_t __47__REFeatureMap_REFeatureProvider__featureNames__block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObject:@"RootFeature"];
  v1 = featureNames_DefaultFeatureNames;
  featureNames_DefaultFeatureNames = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)featureValueForName:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  if ([a3 isEqualToString:@"RootFeature"])
  {
    v4 = objc_alloc(MEMORY[0x277CBFF48]);
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[REFeatureMap featureCount](self, "featureCount")}];
    v19[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v18 = 0;
    v7 = [v4 initWithShape:v6 dataType:131104 error:&v18];
    v8 = v18;

    if (v7)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __55__REFeatureMap_REFeatureProvider__featureValueForName___block_invoke;
      v16[3] = &unk_2785F9D28;
      v17 = v7;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __55__REFeatureMap_REFeatureProvider__featureValueForName___block_invoke_2;
      v14[3] = &unk_2785F9D50;
      v9 = v17;
      v15 = v9;
      [(REFeatureMap *)self enumerateInt64FeaturesUsingIndexedBlock:v16 emptyFeatureBlock:v14];
      v10 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:v9];

      v11 = v17;
    }

    else
    {
      v11 = RELogForDomain(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(REFeatureMap(REFeatureProvider) *)v8 featureValueForName:v11];
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

void __55__REFeatureMap_REFeatureProvider__featureValueForName___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
  [*(a1 + 32) setObject:v6 atIndexedSubscript:a3];
}

void __55__REFeatureMap_REFeatureProvider__featureValueForName___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCABB0];
  v7 = [REFeatureValue nullValueForFeature:a2];
  v6 = [v5 numberWithUnsignedLongLong:{objc_msgSend(v7, "int64Value")}];
  [*(a1 + 32) setObject:v6 atIndexedSubscript:a3];
}

- (unint64_t)populatedFeatureCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__REFeatureMap_REFeatureProvider__populatedFeatureCount__block_invoke;
  v4[3] = &unk_2785F9D78;
  v4[4] = &v5;
  [(REFeatureMap *)self enumerateFeaturesUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __56__REFeatureMap_REFeatureProvider__populatedFeatureCount__block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    ++*(*(*(result + 32) + 8) + 24);
  }

  return result;
}

- (void)enumerateInt64FeaturesUsingIndexedBlock:(id)a3 emptyFeatureBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    indices = self->_indices;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __93__REFeatureMap_REFeatureProvider__enumerateInt64FeaturesUsingIndexedBlock_emptyFeatureBlock___block_invoke;
    v9[3] = &unk_2785F9DA0;
    v9[4] = self;
    v10 = v6;
    v11 = v7;
    [(NSDictionary *)indices enumerateKeysAndObjectsUsingBlock:v9];
  }
}

void __93__REFeatureMap_REFeatureProvider__enumerateInt64FeaturesUsingIndexedBlock_emptyFeatureBlock___block_invoke(void *a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = [a3 unsignedIntegerValue];
  v6 = v5;
  v7 = *(a1[4] + 16);
  v8 = *(v7 + 8 * v5);
  if (v8 && REFeatureValueTypeForTaggedPointer(*(v7 + 8 * v5)) == 1)
  {
    v9 = a1[5];
    v10 = REIntegerValueForTaggedPointer(v8);
    (*(v9 + 16))(v9, v11, v6, v10);
  }

  else
  {
    (*(a1[6] + 16))();
  }
}

@end