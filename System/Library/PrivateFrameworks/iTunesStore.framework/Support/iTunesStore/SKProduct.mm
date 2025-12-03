@interface SKProduct
+ (id)productsFromDictionaries:(id)dictionaries;
+ (id)productsFromXPCEncodingsArray:(id)array;
- (SKProduct)init;
- (SKProduct)initWithDictionary:(id)dictionary;
- (SKProduct)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (id)initMinusLocaleWithDictionary:(id)dictionary;
- (id)initMinusLocaleWithXPCEncoding:(id)encoding;
- (void)_setContentVersion:(id)version;
- (void)_setDiscounts:(id)discounts;
- (void)_setDownloadContentLengths:(id)lengths;
- (void)_setIntroductoryPrice:(id)price;
- (void)_setLocale:(id)locale;
- (void)_setLocaleIdentifier:(id)identifier;
- (void)_setLocalizedDescription:(id)description;
- (void)_setLocalizedTitle:(id)title;
- (void)_setPrice:(id)price;
- (void)_setPriceLocale:(id)locale;
- (void)_setProductIdentifier:(id)identifier;
- (void)_setSubscriptionGroupIdentifier:(id)identifier;
- (void)_setSubscriptionPeriod:(id)period;
@end

@implementation SKProduct

- (SKProduct)init
{
  v6.receiver = self;
  v6.super_class = SKProduct;
  v2 = [(SKProduct *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SKProductInternal);
    internal = v2->_internal;
    v2->_internal = v3;
  }

  return v2;
}

+ (id)productsFromDictionaries:(id)dictionaries
{
  dictionariesCopy = dictionaries;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = objc_alloc_init(NSMutableArray);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = dictionariesCopy;
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [[SKProduct alloc] initMinusLocaleWithDictionary:v10];
        v12 = [v10 objectForKeyedSubscript:@"loc"];
        if (!v12 || ([v4 objectForKeyedSubscript:v12], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v14 = [[NSLocale alloc] initWithLocaleIdentifier:v12];
          v13 = v14;
          if (v12 && v14 != 0)
          {
            [v4 setObject:v14 forKeyedSubscript:v12];
          }
        }

        [v11 _setLocale:v13];
        introductoryPrice = [v11 introductoryPrice];
        [introductoryPrice _setPriceLocale:v13];

        [v5 addObject:v11];
      }

      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = [v5 copy];

  return v17;
}

- (id)initMinusLocaleWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(SKProduct *)self init];
  if (!v5)
  {
    goto LABEL_35;
  }

  v6 = [dictionaryCopy objectForKey:@"desc"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(v5->_internal + 6, v6);
  }

  v7 = [dictionaryCopy objectForKey:@"name"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(v5->_internal + 7, v7);
  }

  v8 = [dictionaryCopy objectForKey:@"id"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(v5->_internal + 10, v8);
  }

  v9 = [dictionaryCopy objectForKey:@"pri"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = 0;
      goto LABEL_18;
    }

    v11 = [NSDecimalNumber alloc];
    stringValue = [v9 stringValue];
    v10 = [v11 initWithString:stringValue];

    if (!v10)
    {
      goto LABEL_18;
    }

LABEL_13:
    v13 = [[NSDecimalNumberHandler alloc] initWithRoundingMode:0 scale:2 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
    v14 = [v10 decimalNumberByRoundingAccordingToBehavior:v13];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v10;
    }

    objc_storeStrong(v5->_internal + 8, v16);

    goto LABEL_18;
  }

  v10 = v9;
  if (v10)
  {
    goto LABEL_13;
  }

LABEL_18:
  v17 = [dictionaryCopy objectForKey:@"is-hosted"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v17 BOOLValue])
  {
    *(v5->_internal + 16) = 1;
    v18 = [dictionaryCopy objectForKey:@"hosted-version"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(v5->_internal + 1, v18);
    }

    v17 = [dictionaryCopy objectForKey:@"hosted-content-length"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = v17;
      v19 = [NSArray arrayWithObjects:&v34 count:1];
      internal = v5->_internal;
      v21 = internal[3];
      internal[3] = v19;
    }
  }

  else
  {
    *(v5->_internal + 16) = 0;
  }

  firstObject = [dictionaryCopy objectForKeyedSubscript:@"disc"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = firstObject;
    firstObject = v23;
    if ([v23 count])
    {
      firstObject = [v23 firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = [[SKProductDiscount alloc] initWithDictionary:firstObject];
        v25 = v5->_internal;
        v26 = v25[4];
        v25[4] = v24;
        v27 = v24;
      }
    }
  }

  v28 = [dictionaryCopy objectForKey:@"subscriptionFamilyId"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(v5->_internal + 11, v28);
  }

  v29 = [dictionaryCopy objectForKeyedSubscript:@"per"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = [[SKProductSubscriptionPeriod alloc] initWithISO8601String:v29];
    v31 = v5->_internal;
    v32 = v31[12];
    v31[12] = v30;
  }

LABEL_35:
  return v5;
}

- (SKProduct)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(SKProduct *)self initMinusLocaleWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"loc"];
    v7 = [[NSLocale alloc] initWithLocaleIdentifier:v6];
    [(SKProduct *)v5 _setLocale:v7];
    introductoryPrice = [(SKProduct *)v5 introductoryPrice];
    [introductoryPrice _setPriceLocale:v7];
  }

  return v5;
}

- (void)_setContentVersion:(id)version
{
  internal = self->_internal;
  if (internal[1] != version)
  {
    v7 = internal;
    v5 = [version copy];
    v6 = internal[1];
    internal[1] = v5;
  }
}

- (void)_setDownloadContentLengths:(id)lengths
{
  internal = self->_internal;
  if (internal[3] != lengths)
  {
    v7 = internal;
    v5 = [lengths copy];
    v6 = internal[3];
    internal[3] = v5;
  }
}

- (void)_setIntroductoryPrice:(id)price
{
  priceCopy = price;
  internal = self->_internal;
  v8 = *(internal + 4);
  v7 = (internal + 32);
  if (v8 != priceCopy)
  {
    v9 = priceCopy;
    objc_storeStrong(v7, price);
    priceCopy = v9;
  }

  _objc_release_x1(v7, priceCopy);
}

- (void)_setLocale:(id)locale
{
  internal = self->_internal;
  if (internal[9] != locale)
  {
    v7 = internal;
    v5 = [locale copy];
    v6 = internal[9];
    internal[9] = v5;
  }
}

- (void)_setLocaleIdentifier:(id)identifier
{
  internal = self->_internal;
  if (internal[5] != identifier)
  {
    v7 = internal;
    v5 = [identifier copy];
    v6 = internal[5];
    internal[5] = v5;
  }
}

- (void)_setLocalizedDescription:(id)description
{
  internal = self->_internal;
  if (internal[6] != description)
  {
    v7 = internal;
    v5 = [description copy];
    v6 = internal[6];
    internal[6] = v5;
  }
}

- (void)_setLocalizedTitle:(id)title
{
  internal = self->_internal;
  if (internal[7] != title)
  {
    v7 = internal;
    v5 = [title copy];
    v6 = internal[7];
    internal[7] = v5;
  }
}

- (void)_setPrice:(id)price
{
  priceCopy = price;
  internal = self->_internal;
  v8 = *(internal + 8);
  v7 = (internal + 64);
  if (v8 != priceCopy)
  {
    v9 = priceCopy;
    objc_storeStrong(v7, price);
    priceCopy = v9;
  }

  _objc_release_x1(v7, priceCopy);
}

- (void)_setPriceLocale:(id)locale
{
  localeCopy = locale;
  v5 = self->_internal;
  if (v5[9] != localeCopy)
  {
    objc_storeStrong(v5 + 9, locale);
  }

  [v5[4] _setPriceLocale:localeCopy];
}

- (void)_setProductIdentifier:(id)identifier
{
  internal = self->_internal;
  if (internal[10] != identifier)
  {
    v7 = internal;
    v5 = [identifier copy];
    v6 = internal[10];
    internal[10] = v5;
  }
}

- (void)_setSubscriptionGroupIdentifier:(id)identifier
{
  internal = self->_internal;
  if (internal[11] != identifier)
  {
    v7 = internal;
    v5 = [identifier copy];
    v6 = internal[11];
    internal[11] = v5;
  }
}

- (void)_setSubscriptionPeriod:(id)period
{
  periodCopy = period;
  internal = self->_internal;
  v8 = *(internal + 12);
  v7 = (internal + 96);
  if (v8 != periodCopy)
  {
    v9 = periodCopy;
    objc_storeStrong(v7, period);
    periodCopy = v9;
  }

  _objc_release_x1(v7, periodCopy);
}

- (void)_setDiscounts:(id)discounts
{
  v4 = [discounts copy];
  internal = self->_internal;
  v6 = internal[13];
  internal[13] = v4;

  _objc_release_x1(v4, v6);
}

+ (id)productsFromXPCEncodingsArray:(id)array
{
  arrayCopy = array;
  v4 = arrayCopy;
  if (arrayCopy && xpc_get_type(arrayCopy) == &_xpc_type_array)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1000CBF04;
    v13 = &unk_1003280D0;
    v14 = objc_alloc_init(NSMutableDictionary);
    v15 = v6;
    v7 = v6;
    v8 = v14;
    xpc_array_apply(v4, &v10);
    v5 = [v7 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)initMinusLocaleWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && xpc_get_type(encodingCopy) == &_xpc_type_dictionary)
  {
    v8 = [(SKProduct *)self init];
    v6 = v8;
    if (!v8)
    {
      goto LABEL_4;
    }

    v9 = v8->_internal;
    objc_opt_class();
    v10 = sub_10018E3FC(v5, "0");
    v11 = *(v9 + 1);
    *(v9 + 1) = v10;

    *(v9 + 16) = xpc_dictionary_get_BOOL(v5, "2");
    objc_opt_class();
    v12 = sub_10018E3FC(v5, "3");
    v13 = *(v9 + 3);
    *(v9 + 3) = v12;

    objc_opt_class();
    v14 = sub_10018E3FC(v5, "5");
    v15 = *(v9 + 5);
    *(v9 + 5) = v14;

    objc_opt_class();
    v16 = sub_10018E3FC(v5, "1");
    v17 = *(v9 + 6);
    *(v9 + 6) = v16;

    objc_opt_class();
    v18 = sub_10018E3FC(v5, "7");
    v19 = *(v9 + 7);
    *(v9 + 7) = v18;

    objc_opt_class();
    v20 = sub_10018E3FC(v5, "4");
    v21 = *(v9 + 10);
    *(v9 + 10) = v20;

    v22 = [SKProductSubscriptionPeriod alloc];
    v23 = xpc_dictionary_get_dictionary(v5, "8");
    v24 = [(SKProductSubscriptionPeriod *)v22 initWithXPCEncoding:v23];
    v25 = *(v9 + 12);
    *(v9 + 12) = v24;

    v26 = [SKProductDiscount alloc];
    v27 = xpc_dictionary_get_dictionary(v5, "9");
    v28 = [(SKProductDiscount *)v26 initWithXPCEncoding:v27];
    v29 = *(v9 + 4);
    *(v9 + 4) = v28;

    objc_opt_class();
    v30 = sub_10018E3FC(v5, "10");
    v31 = *(v9 + 11);
    *(v9 + 11) = v30;

    v32 = objc_opt_new();
    v33 = xpc_dictionary_get_array(v5, "11");
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_1000CC3E4;
    applier[3] = &unk_100328088;
    v34 = v32;
    v44 = v34;
    xpc_array_apply(v33, applier);
    v35 = sub_10018E3C4(v5, "6");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v35;
      if (!v36)
      {
        goto LABEL_16;
      }

LABEL_11:
      v39 = [[NSDecimalNumberHandler alloc] initWithRoundingMode:0 scale:2 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
      v40 = [(__CFDictionary *)v36 decimalNumberByRoundingAccordingToBehavior:v39];
      v41 = v40;
      if (v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = v36;
      }

      objc_storeStrong(v9 + 8, v42);

      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [NSDecimalNumber alloc];
      stringValue = [(__CFDictionary *)v35 stringValue];
      v36 = [v37 initWithString:stringValue];

      if (v36)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v36 = 0;
    }

LABEL_16:

    goto LABEL_4;
  }

  v6 = 0;
LABEL_4:

  return v6;
}

- (SKProduct)initWithXPCEncoding:(id)encoding
{
  v3 = [(SKProduct *)self initMinusLocaleWithXPCEncoding:encoding];
  v4 = v3;
  if (v3)
  {
    _localeIdentifier = [(SKProduct *)v3 _localeIdentifier];
    v6 = [[NSLocale alloc] initWithLocaleIdentifier:_localeIdentifier];
    [(SKProduct *)v4 _setPriceLocale:v6];
    [(SKProduct *)v4 _setLocaleIdentifier:0];
  }

  return v4;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = self->_internal;
  sub_10018E448(v3, "0", *(v4 + 1));
  sub_10018E448(v3, "1", *(v4 + 6));
  xpc_dictionary_set_BOOL(v3, "2", *(v4 + 16));
  sub_10018E448(v3, "3", *(v4 + 3));
  sub_10018E448(v3, "4", *(v4 + 10));
  sub_10018E448(v3, "5", *(v4 + 5));
  sub_10018E448(v3, "6", *(v4 + 8));
  sub_10018E448(v3, "7", *(v4 + 7));
  sub_10018E448(v3, "10", *(v4 + 11));
  copyXPCEncoding = [*(v4 + 12) copyXPCEncoding];
  if (copyXPCEncoding)
  {
    xpc_dictionary_set_value(v3, "8", copyXPCEncoding);
  }

  copyXPCEncoding2 = [*(v4 + 4) copyXPCEncoding];
  if (copyXPCEncoding2)
  {
    xpc_dictionary_set_value(v3, "9", copyXPCEncoding2);
  }

  v7 = xpc_array_create(0, 0);
  if (v7)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = *(v4 + 13);
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          copyXPCEncoding3 = [*(*(&v15 + 1) + 8 * v12) copyXPCEncoding];
          if (copyXPCEncoding3)
          {
            xpc_array_append_value(v7, copyXPCEncoding3);
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    xpc_dictionary_set_value(v3, "11", v7);
  }

  return v3;
}

@end