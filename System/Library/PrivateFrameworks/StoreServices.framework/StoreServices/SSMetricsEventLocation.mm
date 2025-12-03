@interface SSMetricsEventLocation
- (NSDictionary)reportingDictionary;
- (void)setValue:(id)value forLocationKey:(id)key;
@end

@implementation SSMetricsEventLocation

- (NSDictionary)reportingDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_position];
  [dictionary setObject:v4 forKey:@"locationPosition"];

  type = self->_type;
  if (type)
  {
    [dictionary setObject:type forKey:@"locationType"];
  }

  if (self->_values)
  {
    [dictionary addEntriesFromDictionary:?];
  }

  return dictionary;
}

- (void)setValue:(id)value forLocationKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  v7 = valueCopy;
  v8 = keyCopy;
  values = self->_values;
  if (valueCopy)
  {
    if (!values)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v11 = self->_values;
      self->_values = v10;

      v7 = valueCopy;
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