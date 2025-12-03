@interface USOSpanProperty
- (USOSpanProperty)initWithCoder:(id)coder;
- (USOSpanProperty)initWithKey:(id)key;
- (USOSpanProperty)initWithKey:(id)key valueFloat:(float)float;
- (USOSpanProperty)initWithKey:(id)key valueString:(id)string;
- (void)encodeWithCoder:(id)coder;
@end

@implementation USOSpanProperty

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(USOSpanProperty *)self key];
  [coderCopy encodeObject:v5 forKey:@"key"];

  valueString = [(USOSpanProperty *)self valueString];
  [coderCopy encodeObject:valueString forKey:@"valueString"];

  valueInt = [(USOSpanProperty *)self valueInt];
  [coderCopy encodeObject:valueInt forKey:@"valueInt"];

  valueFloat = [(USOSpanProperty *)self valueFloat];
  [coderCopy encodeObject:valueFloat forKey:@"valueFloat"];
}

- (USOSpanProperty)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = USOSpanProperty;
  v5 = [(USOSpanProperty *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
    key = v5->_key;
    v5->_key = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"valueString"];
    valueString = v5->_valueString;
    v5->_valueString = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"valueInt"];
    valueInt = v5->_valueInt;
    v5->_valueInt = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"valueFloat"];
    valueFloat = v5->_valueFloat;
    v5->_valueFloat = v12;
  }

  return v5;
}

- (USOSpanProperty)initWithKey:(id)key valueFloat:(float)float
{
  keyCopy = key;
  v14.receiver = self;
  v14.super_class = USOSpanProperty;
  v8 = [(USOSpanProperty *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_key, key);
    *&v10 = float;
    v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
    valueFloat = v9->_valueFloat;
    v9->_valueFloat = v11;
  }

  return v9;
}

- (USOSpanProperty)initWithKey:(id)key valueString:(id)string
{
  keyCopy = key;
  stringCopy = string;
  v12.receiver = self;
  v12.super_class = USOSpanProperty;
  v9 = [(USOSpanProperty *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, key);
    objc_storeStrong(&v10->_valueString, string);
  }

  return v10;
}

- (USOSpanProperty)initWithKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = USOSpanProperty;
  v6 = [(USOSpanProperty *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_key, key);
  }

  return v7;
}

@end