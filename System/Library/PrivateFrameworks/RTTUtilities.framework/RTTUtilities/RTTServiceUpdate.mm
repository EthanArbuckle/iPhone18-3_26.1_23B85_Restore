@interface RTTServiceUpdate
- (BOOL)isEqual:(id)equal;
- (RTTServiceUpdate)initWithServiceUpdateType:(id)type options:(id)options;
- (id)description;
- (id)optionValueForKey:(id)key;
@end

@implementation RTTServiceUpdate

- (RTTServiceUpdate)initWithServiceUpdateType:(id)type options:(id)options
{
  typeCopy = type;
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = RTTServiceUpdate;
  v9 = [(RTTServiceUpdate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceUpdateType, type);
    objc_storeStrong(&v10->_options, options);
  }

  return v10;
}

- (id)optionValueForKey:(id)key
{
  keyCopy = key;
  options = [(RTTServiceUpdate *)self options];

  if (options)
  {
    options2 = [(RTTServiceUpdate *)self options];
    v7 = [options2 objectForKey:keyCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    serviceUpdateType = [equalCopy serviceUpdateType];
    v6 = [serviceUpdateType isEqualToString:self->_serviceUpdateType];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = RTTServiceUpdate;
  v4 = [(RTTServiceUpdate *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ %@", v4, self->_serviceUpdateType];

  return v5;
}

@end