@interface WCAKeyValueItem
- (BOOL)BOOLValue;
- (NSArray)arrayValue;
- (NSData)bytesValue;
- (NSDictionary)dictionaryValue;
- (NSError)error;
- (NSString)stringValue;
- (WCAKeyValueItem)initWithCoder:(id)a3;
- (WCAKeyValueItem)initWithKey:(id)a3 error:(id)a4;
- (WCAKeyValueItem)initWithKey:(id)a3 value:(id)a4;
- (double)doubleValue;
- (float)floatValue;
- (id)description;
- (int)int32Value;
- (int64_t)int64Value;
- (unint64_t)uint64Value;
- (unsigned)uint32Value;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WCAKeyValueItem

- (WCAKeyValueItem)initWithKey:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = WCAKeyValueItem;
  v8 = [(WCAKeyValueItem *)&v13 init];
  key = v8->_key;
  v8->_key = v6;
  v10 = v6;

  value = v8->_value;
  v8->_value = v7;

  return v8;
}

- (WCAKeyValueItem)initWithKey:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = WCAKeyValueItem;
  v8 = [(WCAKeyValueItem *)&v13 init];
  key = v8->_key;
  v8->_key = v6;
  v10 = v6;

  value = v8->_value;
  v8->_value = v7;

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ : %p ", v5, self];

  [v6 appendFormat:@"key: %@", self->_key];
  v7 = [self->_value description];
  [v6 appendFormat:@", value: %@", v7];

  [v6 appendString:@">"];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  key = self->_key;
  v5 = a3;
  [v5 encodeObject:key forKey:@"_key"];
  [v5 encodeObject:self->_value forKey:@"_value"];
}

- (WCAKeyValueItem)initWithCoder:(id)a3
{
  v17.receiver = self;
  v17.super_class = WCAKeyValueItem;
  v3 = a3;
  v4 = [(WCAKeyValueItem *)&v17 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"_key"];
  key = v4->_key;
  v4->_key = v5;

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v7 setWithObjects:{v8, v9, v10, v11, v12, objc_opt_class(), 0, v17.receiver, v17.super_class}];
  v14 = [v3 decodeObjectOfClasses:v13 forKey:@"_value"];

  value = v4->_value;
  v4->_value = v14;

  return v4;
}

- (NSDictionary)dictionaryValue
{
  value = self->_value;
  v4 = [MEMORY[0x277CBEB68] null];
  v5 = v4;
  if (value == v4)
  {
  }

  else
  {
    v6 = self->_value;
    objc_opt_class();
    LOBYTE(v6) = objc_opt_isKindOfClass();

    if ((v6 & 1) == 0)
    {
      NSLog(&cfstr_FailedToConver.isa, self->_value);
    }
  }

  v7 = self->_value;

  return v7;
}

- (NSArray)arrayValue
{
  value = self->_value;
  v4 = [MEMORY[0x277CBEB68] null];
  v5 = v4;
  if (value == v4)
  {
  }

  else
  {
    v6 = self->_value;
    objc_opt_class();
    LOBYTE(v6) = objc_opt_isKindOfClass();

    if ((v6 & 1) == 0)
    {
      NSLog(&cfstr_FailedToConver_0.isa, self->_value);
    }
  }

  v7 = self->_value;

  return v7;
}

- (double)doubleValue
{
  value = self->_value;
  v4 = [MEMORY[0x277CBEB68] null];
  v5 = v4;
  if (value == v4)
  {
  }

  else
  {
    v6 = self->_value;
    objc_opt_class();
    LOBYTE(v6) = objc_opt_isKindOfClass();

    if ((v6 & 1) == 0)
    {
      NSLog(&cfstr_FailedToConver_1.isa, self->_value);
    }
  }

  v7 = self->_value;

  [v7 doubleValue];
  return result;
}

- (float)floatValue
{
  value = self->_value;
  v4 = [MEMORY[0x277CBEB68] null];
  v5 = v4;
  if (value == v4)
  {
  }

  else
  {
    v6 = self->_value;
    objc_opt_class();
    LOBYTE(v6) = objc_opt_isKindOfClass();

    if ((v6 & 1) == 0)
    {
      NSLog(&cfstr_FailedToConver_1.isa, self->_value);
    }
  }

  v7 = self->_value;

  [v7 floatValue];
  return result;
}

- (int)int32Value
{
  value = self->_value;
  v4 = [MEMORY[0x277CBEB68] null];
  v5 = v4;
  if (value == v4)
  {
  }

  else
  {
    v6 = self->_value;
    objc_opt_class();
    LOBYTE(v6) = objc_opt_isKindOfClass();

    if ((v6 & 1) == 0)
    {
      NSLog(&cfstr_FailedToConver_1.isa, self->_value);
    }
  }

  v7 = self->_value;

  return [v7 intValue];
}

- (int64_t)int64Value
{
  value = self->_value;
  v4 = [MEMORY[0x277CBEB68] null];
  v5 = v4;
  if (value == v4)
  {
  }

  else
  {
    v6 = self->_value;
    objc_opt_class();
    LOBYTE(v6) = objc_opt_isKindOfClass();

    if ((v6 & 1) == 0)
    {
      NSLog(&cfstr_FailedToConver_1.isa, self->_value);
    }
  }

  v7 = self->_value;

  return [v7 longLongValue];
}

- (unsigned)uint32Value
{
  value = self->_value;
  v4 = [MEMORY[0x277CBEB68] null];
  v5 = v4;
  if (value == v4)
  {
  }

  else
  {
    v6 = self->_value;
    objc_opt_class();
    LOBYTE(v6) = objc_opt_isKindOfClass();

    if ((v6 & 1) == 0)
    {
      NSLog(&cfstr_FailedToConver_1.isa, self->_value);
    }
  }

  v7 = self->_value;

  return [v7 unsignedIntValue];
}

- (unint64_t)uint64Value
{
  value = self->_value;
  v4 = [MEMORY[0x277CBEB68] null];
  v5 = v4;
  if (value == v4)
  {
  }

  else
  {
    v6 = self->_value;
    objc_opt_class();
    LOBYTE(v6) = objc_opt_isKindOfClass();

    if ((v6 & 1) == 0)
    {
      NSLog(&cfstr_FailedToConver_1.isa, self->_value);
    }
  }

  v7 = self->_value;

  return [v7 unsignedLongLongValue];
}

- (BOOL)BOOLValue
{
  value = self->_value;
  v4 = [MEMORY[0x277CBEB68] null];
  v5 = v4;
  if (value == v4)
  {
  }

  else
  {
    v6 = self->_value;
    objc_opt_class();
    LOBYTE(v6) = objc_opt_isKindOfClass();

    if ((v6 & 1) == 0)
    {
      NSLog(&cfstr_FailedToConver_1.isa, self->_value);
    }
  }

  v7 = self->_value;

  return [v7 BOOLValue];
}

- (NSString)stringValue
{
  value = self->_value;
  v4 = [MEMORY[0x277CBEB68] null];
  v5 = v4;
  if (value == v4)
  {
  }

  else
  {
    v6 = self->_value;
    objc_opt_class();
    LOBYTE(v6) = objc_opt_isKindOfClass();

    if ((v6 & 1) == 0)
    {
      NSLog(&cfstr_FailedToConver_2.isa, self->_value);
    }
  }

  v7 = self->_value;

  return v7;
}

- (NSData)bytesValue
{
  value = self->_value;
  v4 = [MEMORY[0x277CBEB68] null];
  v5 = v4;
  if (value == v4)
  {
  }

  else
  {
    v6 = self->_value;
    objc_opt_class();
    LOBYTE(v6) = objc_opt_isKindOfClass();

    if ((v6 & 1) == 0)
    {
      NSLog(&cfstr_FailedToConver_3.isa, self->_value);
    }
  }

  v7 = self->_value;

  return v7;
}

- (NSError)error
{
  value = self->_value;
  v4 = [MEMORY[0x277CBEB68] null];
  v5 = v4;
  if (value == v4)
  {
  }

  else
  {
    v6 = self->_value;
    objc_opt_class();
    LOBYTE(v6) = objc_opt_isKindOfClass();

    if ((v6 & 1) == 0)
    {
      NSLog(&cfstr_FailedToConver_4.isa, self->_value);
    }
  }

  v7 = self->_value;

  return v7;
}

@end