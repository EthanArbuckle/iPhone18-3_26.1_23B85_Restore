@interface SSPaymentSheetPriceSectionItem
- (SSPaymentSheetPriceSectionItem)initWithDictionary:(id)a3;
- (SSPaymentSheetPriceSectionItem)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (void)_parseDictionary:(id)a3 withCaseControl:(BOOL)a4;
@end

@implementation SSPaymentSheetPriceSectionItem

- (SSPaymentSheetPriceSectionItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SSPaymentSheetPriceSectionItem;
  v5 = [(SSPaymentSheetPriceSectionItem *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"caseControl"];
    v7 = [v6 BOOLValue];

    [(SSPaymentSheetPriceSectionItem *)v5 _parseDictionary:v4 withCaseControl:v7];
  }

  return v5;
}

- (void)_parseDictionary:(id)a3 withCaseControl:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  v6 = [v12 objectForKeyedSubscript:@"header"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v4)
    {
      v7 = v6;
    }

    else
    {
      v7 = [v6 localizedUppercaseString];
    }

    label = self->_label;
    self->_label = v7;
  }

  v9 = [v12 objectForKeyedSubscript:@"value"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v4)
    {
      v10 = v9;
    }

    else
    {
      v10 = [v9 localizedUppercaseString];
    }

    price = self->_price;
    self->_price = v10;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(SSPaymentSheetPriceSectionItem);
  v6 = [(NSString *)self->_label copyWithZone:a3];
  label = v5->_label;
  v5->_label = v6;

  v8 = [(NSString *)self->_price copyWithZone:a3];
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

- (SSPaymentSheetPriceSectionItem)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1DA6E0380](v4) == MEMORY[0x1E69E9E80])
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