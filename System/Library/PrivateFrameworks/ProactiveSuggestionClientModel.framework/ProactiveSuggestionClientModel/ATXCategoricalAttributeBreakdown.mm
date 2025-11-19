@interface ATXCategoricalAttributeBreakdown
- (ATXCategoricalAttributeBreakdown)init;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXDeviceLevelMetricsCategoricalAttributeBreakdown:(id)a3;
- (double)normalizedCountForCategory:(id)a3;
- (unint64_t)countForCategory:(id)a3;
- (void)incrementCountForCategory:(id)a3 by:(unint64_t)a4;
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

- (unint64_t)countForCategory:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_counts objectForKeyedSubscript:a3];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (double)normalizedCountForCategory:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(NSMutableDictionary *)self->_counts allValues];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v9 = v9 + [*(*(&v14 + 1) + 8 * i) unsignedIntegerValue];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);

    v11 = 0.0;
    if (v9 != 0.0)
    {
      v11 = [(ATXCategoricalAttributeBreakdown *)self countForCategory:v4]/ v9;
    }
  }

  else
  {

    v11 = 0.0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)incrementCountForCategory:(id)a3 by:(unint64_t)a4
{
  counts = self->_counts;
  v7 = a3;
  v8 = [(NSMutableDictionary *)counts objectForKeyedSubscript:v7];
  v9 = MEMORY[0x1E696AD98];
  v11 = v8;
  if (v8)
  {
    a4 += [v8 unsignedIntegerValue];
  }

  v10 = [v9 numberWithUnsignedInteger:a4];
  [(NSMutableDictionary *)self->_counts setObject:v10 forKeyedSubscript:v7];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXCategoricalAttributeBreakdown *)self isEqualToATXDeviceLevelMetricsCategoricalAttributeBreakdown:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXDeviceLevelMetricsCategoricalAttributeBreakdown:(id)a3
{
  v4 = self->_counts;
  v5 = v4;
  if (v4 == *(a3 + 1))
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