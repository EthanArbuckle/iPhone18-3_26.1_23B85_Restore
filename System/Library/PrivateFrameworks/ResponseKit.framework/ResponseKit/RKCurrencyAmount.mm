@interface RKCurrencyAmount
- (RKCurrencyAmount)initWithCoder:(id)a3;
- (RKCurrencyAmount)initWithString:(id)a3 currency:(id)a4 value:(double)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RKCurrencyAmount

- (RKCurrencyAmount)initWithString:(id)a3 currency:(id)a4 value:(double)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = RKCurrencyAmount;
  v11 = [(RKCurrencyAmount *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_string, a3);
    objc_storeStrong(&v12->_currency, a4);
    v12->_value = a5;
  }

  return v12;
}

- (RKCurrencyAmount)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = RKCurrencyAmount;
  v5 = [(RKCurrencyAmount *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"string"];
    string = v5->_string;
    v5->_string = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currency"];
    currency = v5->_currency;
    v5->_currency = v8;

    [v4 decodeDoubleForKey:@"value"];
    v5->_value = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  string = self->_string;
  v5 = a3;
  [v5 encodeObject:string forKey:@"string"];
  [v5 encodeObject:self->_currency forKey:@"currency"];
  [v5 encodeDouble:@"value" forKey:self->_value];
}

@end