@interface WBSSingleCreditCardData
+ (id)stringForSingleCreditCardDataType:(int64_t)type;
- (WBSSingleCreditCardData)initWithCoder:(id)coder;
- (WBSSingleCreditCardData)initWithValue:(id)value type:(int64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSSingleCreditCardData

- (WBSSingleCreditCardData)initWithValue:(id)value type:(int64_t)type
{
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = WBSSingleCreditCardData;
  v8 = [(WBSSingleCreditCardData *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_value, value);
    v9->_type = type;
    v10 = v9;
  }

  return v9;
}

+ (id)stringForSingleCreditCardDataType:(int64_t)type
{
  if (type > 5)
  {
    return @"Invalid Modification Type";
  }

  else
  {
    return off_1E7FCA6B8[type];
  }
}

- (void)encodeWithCoder:(id)coder
{
  value = self->_value;
  coderCopy = coder;
  [coderCopy encodeObject:value forKey:@"value"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
}

- (WBSSingleCreditCardData)initWithCoder:(id)coder
{
  v11[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"value"];

  LODWORD(v7) = [coderCopy decodeIntForKey:@"type"];
  v9 = [(WBSSingleCreditCardData *)self initWithValue:v8 type:v7];

  return v9;
}

@end