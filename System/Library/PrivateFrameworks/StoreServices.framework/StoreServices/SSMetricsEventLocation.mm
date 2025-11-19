@interface SSMetricsEventLocation
- (NSDictionary)reportingDictionary;
- (void)setValue:(id)a3 forLocationKey:(id)a4;
@end

@implementation SSMetricsEventLocation

- (NSDictionary)reportingDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_position];
  [v3 setObject:v4 forKey:@"locationPosition"];

  type = self->_type;
  if (type)
  {
    [v3 setObject:type forKey:@"locationType"];
  }

  if (self->_values)
  {
    [v3 addEntriesFromDictionary:?];
  }

  return v3;
}

- (void)setValue:(id)a3 forLocationKey:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = v12;
  v8 = v6;
  values = self->_values;
  if (v12)
  {
    if (!values)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v11 = self->_values;
      self->_values = v10;

      v7 = v12;
      values = self->_values;
    }

    [(NSMutableDictionary *)values setObject:v7 forKey:v8];
  }

  else
  {
    [(NSMutableDictionary *)values removeObjectForKey:v8];
  }
}

@end