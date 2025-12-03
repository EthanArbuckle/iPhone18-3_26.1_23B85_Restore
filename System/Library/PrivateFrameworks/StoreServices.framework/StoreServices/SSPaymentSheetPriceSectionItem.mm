@interface SSPaymentSheetPriceSectionItem
- (SSPaymentSheetPriceSectionItem)initWithDictionary:(id)dictionary;
- (SSPaymentSheetPriceSectionItem)initWithXPCEncoding:(id)encoding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (void)_parseDictionary:(id)dictionary withCaseControl:(BOOL)control;
@end

@implementation SSPaymentSheetPriceSectionItem

- (SSPaymentSheetPriceSectionItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = SSPaymentSheetPriceSectionItem;
  v5 = [(SSPaymentSheetPriceSectionItem *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"caseControl"];
    bOOLValue = [v6 BOOLValue];

    [(SSPaymentSheetPriceSectionItem *)v5 _parseDictionary:dictionaryCopy withCaseControl:bOOLValue];
  }

  return v5;
}

- (void)_parseDictionary:(id)dictionary withCaseControl:(BOOL)control
{
  controlCopy = control;
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"header"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (controlCopy)
    {
      localizedUppercaseString = v6;
    }

    else
    {
      localizedUppercaseString = [v6 localizedUppercaseString];
    }

    label = self->_label;
    self->_label = localizedUppercaseString;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"value"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (controlCopy)
    {
      localizedUppercaseString2 = v9;
    }

    else
    {
      localizedUppercaseString2 = [v9 localizedUppercaseString];
    }

    price = self->_price;
    self->_price = localizedUppercaseString2;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(SSPaymentSheetPriceSectionItem);
  v6 = [(NSString *)self->_label copyWithZone:zone];
  label = v5->_label;
  v5->_label = v6;

  v8 = [(NSString *)self->_price copyWithZone:zone];
  price = v5->_price;
  v5->_price = v8;

  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetObject(v3, "0", self->_label);
  SSXPCDictionarySetObject(v3, "1", self->_price);
  return v3;
}

- (SSPaymentSheetPriceSectionItem)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v14.receiver = self;
    v14.super_class = SSPaymentSheetPriceSectionItem;
    v6 = [(SSPaymentSheetPriceSectionItem *)&v14 init];
    if (v6)
    {
      v8 = objc_opt_class();
      v9 = SSXPCDictionaryCopyObjectWithClass(v5, "0", v8);
      label = v6->_label;
      v6->_label = v9;

      v11 = objc_opt_class();
      v12 = SSXPCDictionaryCopyObjectWithClass(v5, "1", v11);
      price = v6->_price;
      v6->_price = v12;
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

@end