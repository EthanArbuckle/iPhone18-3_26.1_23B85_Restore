@interface USOSpanProperty
- (USOSpanProperty)initWithCoder:(id)a3;
- (USOSpanProperty)initWithKey:(id)a3;
- (USOSpanProperty)initWithKey:(id)a3 valueFloat:(float)a4;
- (USOSpanProperty)initWithKey:(id)a3 valueString:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation USOSpanProperty

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(USOSpanProperty *)self key];
  [v4 encodeObject:v5 forKey:@"key"];

  v6 = [(USOSpanProperty *)self valueString];
  [v4 encodeObject:v6 forKey:@"valueString"];

  v7 = [(USOSpanProperty *)self valueInt];
  [v4 encodeObject:v7 forKey:@"valueInt"];

  v8 = [(USOSpanProperty *)self valueFloat];
  [v4 encodeObject:v8 forKey:@"valueFloat"];
}

- (USOSpanProperty)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = USOSpanProperty;
  v5 = [(USOSpanProperty *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
    key = v5->_key;
    v5->_key = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"valueString"];
    valueString = v5->_valueString;
    v5->_valueString = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"valueInt"];
    valueInt = v5->_valueInt;
    v5->_valueInt = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"valueFloat"];
    valueFloat = v5->_valueFloat;
    v5->_valueFloat = v12;
  }

  return v5;
}

- (USOSpanProperty)initWithKey:(id)a3 valueFloat:(float)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = USOSpanProperty;
  v8 = [(USOSpanProperty *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_key, a3);
    *&v10 = a4;
    v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
    valueFloat = v9->_valueFloat;
    v9->_valueFloat = v11;
  }

  return v9;
}

- (USOSpanProperty)initWithKey:(id)a3 valueString:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = USOSpanProperty;
  v9 = [(USOSpanProperty *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, a3);
    objc_storeStrong(&v10->_valueString, a4);
  }

  return v10;
}

- (USOSpanProperty)initWithKey:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = USOSpanProperty;
  v6 = [(USOSpanProperty *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_key, a3);
  }

  return v7;
}

@end