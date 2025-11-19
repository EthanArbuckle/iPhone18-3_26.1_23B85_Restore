@interface WBSSingleCreditCardData
+ (id)stringForSingleCreditCardDataType:(int64_t)a3;
- (WBSSingleCreditCardData)initWithCoder:(id)a3;
- (WBSSingleCreditCardData)initWithValue:(id)a3 type:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSSingleCreditCardData

- (WBSSingleCreditCardData)initWithValue:(id)a3 type:(int64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = WBSSingleCreditCardData;
  v8 = [(WBSSingleCreditCardData *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_value, a3);
    v9->_type = a4;
    v10 = v9;
  }

  return v9;
}

+ (id)stringForSingleCreditCardDataType:(int64_t)a3
{
  if (a3 > 5)
  {
    return @"Invalid Modification Type";
  }

  else
  {
    return off_1E7FCA6B8[a3];
  }
}

- (void)encodeWithCoder:(id)a3
{
  value = self->_value;
  v5 = a3;
  [v5 encodeObject:value forKey:@"value"];
  [v5 encodeInteger:self->_type forKey:@"type"];
}

- (WBSSingleCreditCardData)initWithCoder:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"value"];

  LODWORD(v7) = [v5 decodeIntForKey:@"type"];
  v9 = [(WBSSingleCreditCardData *)self initWithValue:v8 type:v7];

  return v9;
}

@end