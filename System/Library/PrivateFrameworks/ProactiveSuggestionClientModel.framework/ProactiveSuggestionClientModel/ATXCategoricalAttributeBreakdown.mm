@interface ATXCategoricalAttributeBreakdown
- (ATXCategoricalAttributeBreakdown)init;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXDeviceLevelMetricsCategoricalAttributeBreakdown:(id)breakdown;
- (double)normalizedCountForCategory:(id)category;
- (unint64_t)countForCategory:(id)category;
- (void)incrementCountForCategory:(id)category by:(unint64_t)by;
@end

@implementation ATXCategoricalAttributeBreakdown

- (ATXCategoricalAttributeBreakdown)init
{
  v6.receiver = self;
  v6.super_class = ATXCategoricalAttributeBreakdown;
  v2 = [(ATXCategoricalAttributeBreakdown *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    counts = v2->_counts;
    v2->_counts = v3;
  }

  return v2;
}

- (unint64_t)countForCategory:(id)category
{
  v3 = [(NSMutableDictionary *)self->_counts objectForKeyedSubscript:category];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (double)normalizedCountForCategory:(id)category
{
  v19 = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allValues = [(NSMutableDictionary *)self->_counts allValues];
  v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = v9 + [*(*(&v14 + 1) + 8 * i) unsignedIntegerValue];
      }

      v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);

    v11 = 0.0;
    if (v9 != 0.0)
    {
      v11 = [(ATXCategoricalAttributeBreakdown *)self countForCategory:categoryCopy]/ v9;
    }
  }

  else
  {

    v11 = 0.0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)incrementCountForCategory:(id)category by:(unint64_t)by
{
  counts = self->_counts;
  categoryCopy = category;
  v8 = [(NSMutableDictionary *)counts objectForKeyedSubscript:categoryCopy];
  v9 = MEMORY[0x1E696AD98];
  v11 = v8;
  if (v8)
  {
    by += [v8 unsignedIntegerValue];
  }

  v10 = [v9 numberWithUnsignedInteger:by];
  [(NSMutableDictionary *)self->_counts setObject:v10 forKeyedSubscript:categoryCopy];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXCategoricalAttributeBreakdown *)self isEqualToATXDeviceLevelMetricsCategoricalAttributeBreakdown:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXDeviceLevelMetricsCategoricalAttributeBreakdown:(id)breakdown
{
  v4 = self->_counts;
  v5 = v4;
  if (v4 == *(breakdown + 1))
  {
    v6 = 1;
  }

  else
  {
    v6 = [(NSMutableDictionary *)v4 isEqual:?];
  }

  return v6;
}

@end