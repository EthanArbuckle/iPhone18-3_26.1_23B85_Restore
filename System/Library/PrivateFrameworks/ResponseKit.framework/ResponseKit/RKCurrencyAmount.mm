@interface RKCurrencyAmount
- (RKCurrencyAmount)initWithCoder:(id)coder;
- (RKCurrencyAmount)initWithString:(id)string currency:(id)currency value:(double)value;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RKCurrencyAmount

- (RKCurrencyAmount)initWithString:(id)string currency:(id)currency value:(double)value
{
  stringCopy = string;
  currencyCopy = currency;
  v14.receiver = self;
  v14.super_class = RKCurrencyAmount;
  v11 = [(RKCurrencyAmount *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_string, string);
    objc_storeStrong(&v12->_currency, currency);
    v12->_value = value;
  }

  return v12;
}

- (RKCurrencyAmount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = RKCurrencyAmount;
  v5 = [(RKCurrencyAmount *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"string"];
    string = v5->_string;
    v5->_string = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currency"];
    currency = v5->_currency;
    v5->_currency = v8;

    [coderCopy decodeDoubleForKey:@"value"];
    v5->_value = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  string = self->_string;
  coderCopy = coder;
  [coderCopy encodeObject:string forKey:@"string"];
  [coderCopy encodeObject:self->_currency forKey:@"currency"];
  [coderCopy encodeDouble:@"value" forKey:self->_value];
}

@end