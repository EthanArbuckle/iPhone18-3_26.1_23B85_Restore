@interface SUCreditCardReaderOutput
+ (id)webScriptNameForKeyName:(id)name;
+ (void)initialize;
- (SUCreditCardReaderOutput)initWithCoder:(id)coder;
- (SUCreditCardReaderOutput)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (id)scriptAttributeKeys;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUCreditCardReaderOutput

- (id)scriptAttributeKeys
{
  v5.receiver = self;
  v5.super_class = SUCreditCardReaderOutput;
  scriptAttributeKeys = [(SUScriptObject *)&v5 scriptAttributeKeys];
  allKeys = [__KeyMapping_75 allKeys];
  [scriptAttributeKeys addObjectsFromArray:allKeys];

  return scriptAttributeKeys;
}

+ (id)webScriptNameForKeyName:(id)name
{
  nameCopy = name;
  v5 = [__KeyMapping_75 objectForKey:nameCopy];
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SUCreditCardReaderOutput;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForKeyName_, nameCopy);
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

- (SUCreditCardReaderOutput)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1C6917030](encodingCopy) == MEMORY[0x1E69E9E80])
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

- (void)encodeWithCoder:(id)coder
{
  cancelled = self->_cancelled;
  coderCopy = coder;
  [coderCopy encodeBool:cancelled forKey:@"1"];
  [coderCopy encodeObject:self->_cardCardholderName forKey:@"2"];
  [coderCopy encodeObject:self->_cardExpirationDay forKey:@"3"];
  [coderCopy encodeObject:self->_cardExpirationMonth forKey:@"4"];
  [coderCopy encodeObject:self->_cardExpirationYear forKey:@"5"];
  [coderCopy encodeObject:self->_cardNumber forKey:@"7"];
  [coderCopy encodeObject:self->_error forKey:@"8"];
  [coderCopy encodeBool:self->_manualEntrySelected forKey:@"9"];
}

- (SUCreditCardReaderOutput)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = SUCreditCardReaderOutput;
  v5 = [(SUScriptObject *)&v19 init];
  if (v5)
  {
    v5->_cancelled = [coderCopy decodeBoolForKey:@"1"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"2"];
    cardCardholderName = v5->_cardCardholderName;
    v5->_cardCardholderName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"3"];
    cardExpirationDay = v5->_cardExpirationDay;
    v5->_cardExpirationDay = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"4"];
    cardExpirationMonth = v5->_cardExpirationMonth;
    v5->_cardExpirationMonth = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"5"];
    cardExpirationYear = v5->_cardExpirationYear;
    v5->_cardExpirationYear = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"7"];
    cardNumber = v5->_cardNumber;
    v5->_cardNumber = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"8"];
    error = v5->_error;
    v5->_error = v16;

    v5->_manualEntrySelected = [coderCopy decodeBoolForKey:@"9"];
  }

  return v5;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __KeyMapping_75 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"cardNumber", @"cardCardholderName", @"cardCardholderName", @"cardExpirationDay", @"cardExpirationDay", @"cardExpirationMonth", @"cardExpirationMonth", @"cardExpirationYear", @"cardExpirationYear", @"cardExpirationStringValue", @"cardExpirationStringValue", @"cancelled", @"cancelled", @"manualEntrySelected", @"manualEntrySelected", 0}];

    MEMORY[0x1EEE66BB8]();
  }
}

@end