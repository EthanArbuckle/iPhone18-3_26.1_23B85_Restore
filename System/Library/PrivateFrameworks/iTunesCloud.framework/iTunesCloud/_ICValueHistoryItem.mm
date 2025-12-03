@interface _ICValueHistoryItem
- (BOOL)isEqual:(id)equal;
- (_ICValueHistoryItem)initWithCoder:(id)coder;
- (_ICValueHistoryItem)initWithValue:(id)value timestamp:(unint64_t)timestamp;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _ICValueHistoryItem

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [[v4 alloc] initWithUnsignedLongLong:self->_timestamp];
  [coderCopy encodeObject:v6 forKey:@"timestamp"];
  [coderCopy encodeObject:self->_value forKey:@"value"];
}

- (_ICValueHistoryItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _ICValueHistoryItem;
  v5 = [(_ICValueHistoryItem *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    v5->_timestamp = [v6 unsignedLongLongValue];
    if (ICSecureCodingGetPropertyListClasses_sPropertyListTypesOnce != -1)
    {
      dispatch_once(&ICSecureCodingGetPropertyListClasses_sPropertyListTypesOnce, &__block_literal_global_9377);
    }

    v7 = ICSecureCodingGetPropertyListClasses_sPropertyListTypes;
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"value"];
    value = v5->_value;
    v5->_value = v8;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() && self->_timestamp == equalCopy[1])
  {
    value = self->_value;
    v7 = equalCopy[2];
    if (value == v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = 0;
      if (value && v7)
      {
        v8 = [value isEqual:?];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (_ICValueHistoryItem)initWithValue:(id)value timestamp:(unint64_t)timestamp
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = _ICValueHistoryItem;
  v8 = [(_ICValueHistoryItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_timestamp = timestamp;
    objc_storeStrong(&v8->_value, value);
  }

  return v9;
}

@end