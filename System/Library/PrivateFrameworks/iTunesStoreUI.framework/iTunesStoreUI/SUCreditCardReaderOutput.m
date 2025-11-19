@interface SUCreditCardReaderOutput
+ (id)webScriptNameForKeyName:(id)a3;
+ (void)initialize;
- (SUCreditCardReaderOutput)initWithCoder:(id)a3;
- (SUCreditCardReaderOutput)initWithXPCEncoding:(id)a3;
- (id)copyXPCEncoding;
- (id)scriptAttributeKeys;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUCreditCardReaderOutput

- (id)scriptAttributeKeys
{
  v5.receiver = self;
  v5.super_class = SUCreditCardReaderOutput;
  v2 = [(SUScriptObject *)&v5 scriptAttributeKeys];
  v3 = [__KeyMapping_75 allKeys];
  [v2 addObjectsFromArray:v3];

  return v2;
}

+ (id)webScriptNameForKeyName:(id)a3
{
  v4 = a3;
  v5 = [__KeyMapping_75 objectForKey:v4];
  if (!v5)
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SUCreditCardReaderOutput;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForKeyName_, v4);
  }

  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, "1", self->_cancelled);
  MEMORY[0x1C69164B0](v3, "2", self->_cardCardholderName);
  MEMORY[0x1C69164B0](v3, "3", self->_cardExpirationDay);
  MEMORY[0x1C69164B0](v3, "4", self->_cardExpirationMonth);
  MEMORY[0x1C69164B0](v3, "5", self->_cardExpirationYear);
  MEMORY[0x1C69164B0](v3, "7", self->_cardNumber);
  MEMORY[0x1C69164B0](v3, "8", self->_error);
  xpc_dictionary_set_BOOL(v3, "9", self->_manualEntrySelected);
  return v3;
}

- (SUCreditCardReaderOutput)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1C6917030](v4) == MEMORY[0x1E69E9E80])
  {
    v27.receiver = self;
    v27.super_class = SUCreditCardReaderOutput;
    v6 = [(SUScriptObject *)&v27 init];
    if (v6)
    {
      v6->_cancelled = xpc_dictionary_get_BOOL(v5, "1");
      v8 = objc_opt_class();
      v9 = MEMORY[0x1C69164A0](v5, "2", v8);
      cardCardholderName = v6->_cardCardholderName;
      v6->_cardCardholderName = v9;

      v11 = objc_opt_class();
      v12 = MEMORY[0x1C69164A0](v5, "3", v11);
      cardExpirationDay = v6->_cardExpirationDay;
      v6->_cardExpirationDay = v12;

      v14 = objc_opt_class();
      v15 = MEMORY[0x1C69164A0](v5, "4", v14);
      cardExpirationMonth = v6->_cardExpirationMonth;
      v6->_cardExpirationMonth = v15;

      v17 = objc_opt_class();
      v18 = MEMORY[0x1C69164A0](v5, "5", v17);
      cardExpirationYear = v6->_cardExpirationYear;
      v6->_cardExpirationYear = v18;

      v20 = objc_opt_class();
      v21 = MEMORY[0x1C69164A0](v5, "7", v20);
      cardNumber = v6->_cardNumber;
      v6->_cardNumber = v21;

      v23 = objc_alloc(MEMORY[0x1E696ABC0]);
      v24 = xpc_dictionary_get_value(v5, "8");
      v25 = [v23 initWithXPCEncoding:v24];
      error = v6->_error;
      v6->_error = v25;

      v6->_manualEntrySelected = xpc_dictionary_get_BOOL(v5, "9");
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  cancelled = self->_cancelled;
  v5 = a3;
  [v5 encodeBool:cancelled forKey:@"1"];
  [v5 encodeObject:self->_cardCardholderName forKey:@"2"];
  [v5 encodeObject:self->_cardExpirationDay forKey:@"3"];
  [v5 encodeObject:self->_cardExpirationMonth forKey:@"4"];
  [v5 encodeObject:self->_cardExpirationYear forKey:@"5"];
  [v5 encodeObject:self->_cardNumber forKey:@"7"];
  [v5 encodeObject:self->_error forKey:@"8"];
  [v5 encodeBool:self->_manualEntrySelected forKey:@"9"];
}

- (SUCreditCardReaderOutput)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SUCreditCardReaderOutput;
  v5 = [(SUScriptObject *)&v19 init];
  if (v5)
  {
    v5->_cancelled = [v4 decodeBoolForKey:@"1"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"2"];
    cardCardholderName = v5->_cardCardholderName;
    v5->_cardCardholderName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"3"];
    cardExpirationDay = v5->_cardExpirationDay;
    v5->_cardExpirationDay = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"4"];
    cardExpirationMonth = v5->_cardExpirationMonth;
    v5->_cardExpirationMonth = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"5"];
    cardExpirationYear = v5->_cardExpirationYear;
    v5->_cardExpirationYear = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"7"];
    cardNumber = v5->_cardNumber;
    v5->_cardNumber = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"8"];
    error = v5->_error;
    v5->_error = v16;

    v5->_manualEntrySelected = [v4 decodeBoolForKey:@"9"];
  }

  return v5;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __KeyMapping_75 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"cardNumber", @"cardCardholderName", @"cardCardholderName", @"cardExpirationDay", @"cardExpirationDay", @"cardExpirationMonth", @"cardExpirationMonth", @"cardExpirationYear", @"cardExpirationYear", @"cardExpirationStringValue", @"cardExpirationStringValue", @"cancelled", @"cancelled", @"manualEntrySelected", @"manualEntrySelected", 0}];

    MEMORY[0x1EEE66BB8]();
  }
}

@end