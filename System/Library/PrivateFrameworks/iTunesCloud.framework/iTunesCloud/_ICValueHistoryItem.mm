@interface _ICValueHistoryItem
- (BOOL)isEqual:(id)a3;
- (_ICValueHistoryItem)initWithCoder:(id)a3;
- (_ICValueHistoryItem)initWithValue:(id)a3 timestamp:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _ICValueHistoryItem

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [[v4 alloc] initWithUnsignedLongLong:self->_timestamp];
  [v5 encodeObject:v6 forKey:@"timestamp"];
  [v5 encodeObject:self->_value forKey:@"value"];
}

- (_ICValueHistoryItem)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _ICValueHistoryItem;
  v5 = [(_ICValueHistoryItem *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    v5->_timestamp = [v6 unsignedLongLongValue];
    if (ICSecureCodingGetPropertyListClasses_sPropertyListTypesOnce != -1)
    {
      dispatch_once(&ICSecureCodingGetPropertyListClasses_sPropertyListTypesOnce, &__block_literal_global_9377);
    }

    v7 = ICSecureCodingGetPropertyListClasses_sPropertyListTypes;
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"value"];
    value = v5->_value;
    v5->_value = v8;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() && self->_timestamp == v4[1])
  {
    value = self->_value;
    v7 = v4[2];
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

- (_ICValueHistoryItem)initWithValue:(id)a3 timestamp:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _ICValueHistoryItem;
  v8 = [(_ICValueHistoryItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_timestamp = a4;
    objc_storeStrong(&v8->_value, a3);
  }

  return v9;
}

@end