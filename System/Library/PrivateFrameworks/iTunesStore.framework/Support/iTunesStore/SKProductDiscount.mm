@interface SKProductDiscount
- (SKProductDiscount)init;
- (SKProductDiscount)initWithDictionary:(id)dictionary;
- (SKProductDiscount)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)_setIdentifier:(id)identifier;
- (void)_setPrice:(id)price;
- (void)_setPriceLocale:(id)locale;
- (void)_setSubscriptionPeriod:(id)period;
@end

@implementation SKProductDiscount

- (SKProductDiscount)init
{
  v6.receiver = self;
  v6.super_class = SKProductDiscount;
  v2 = [(SKProductDiscount *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SKProductDiscountInternal);
    internal = v2->_internal;
    v2->_internal = v3;
  }

  return v2;
}

- (void)_setPrice:(id)price
{
  objc_storeStrong(self->_internal + 1, price);
  priceCopy = price;
}

- (void)_setPriceLocale:(id)locale
{
  objc_storeStrong(self->_internal + 2, locale);
  localeCopy = locale;
}

- (void)_setSubscriptionPeriod:(id)period
{
  objc_storeStrong(self->_internal + 4, period);
  periodCopy = period;
}

- (void)_setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  internal = self->_internal;
  v6 = internal[7];
  internal[7] = v4;

  _objc_release_x1(v4, v6);
}

- (SKProductDiscount)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(SKProductDiscount *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"pri"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = 0;
        goto LABEL_12;
      }

      v8 = [NSDecimalNumber alloc];
      stringValue = [v6 stringValue];
      v7 = [v8 initWithString:stringValue];

      if (!v7)
      {
        goto LABEL_12;
      }
    }

    v10 = [[NSDecimalNumberHandler alloc] initWithRoundingMode:0 scale:2 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
    v11 = [v7 decimalNumberByRoundingAccordingToBehavior:v10];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v7;
    }

    objc_storeStrong(v5->_internal + 1, v13);

LABEL_12:
    v14 = [dictionaryCopy objectForKeyedSubscript:@"per"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SKProductSubscriptionPeriod alloc] initWithISO8601String:v14];
      internal = v5->_internal;
      v17 = internal[4];
      internal[4] = v15;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"per-count"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(v5->_internal + 5) = [v18 unsignedIntegerValue];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"mod"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
      if (([(SKProductDiscount *)v20 isEqualToString:@"FreeTrial"]& 1) != 0)
      {
        v21 = 2;
      }

      else if (([(SKProductDiscount *)v20 isEqualToString:@"PayUpFront"]& 1) != 0)
      {
        v21 = 1;
      }

      else
      {
        if (![(SKProductDiscount *)v20 isEqualToString:@"PayAsYouGo"])
        {
          v22 = v5;
          goto LABEL_29;
        }

        v21 = 0;
      }

      *(v5->_internal + 3) = v21;
    }

    v22 = v5->_internal;
    if (v22->_internal && *(v5->_internal + 4))
    {
      v23 = *(v5->_internal + 5);

      if (v23)
      {
LABEL_31:

        goto LABEL_32;
      }

LABEL_30:

      v5 = 0;
      goto LABEL_31;
    }

    v20 = v5;
LABEL_29:

    v5 = v20;
    goto LABEL_30;
  }

LABEL_32:

  return v5;
}

- (SKProductDiscount)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && xpc_get_type(encodingCopy) == &_xpc_type_dictionary)
  {
    v6 = [(SKProductDiscount *)self init];
    if (!v6)
    {
      goto LABEL_5;
    }

    *(v6->_internal + 5) = xpc_dictionary_get_uint64(v5, "0");
    *(v6->_internal + 3) = xpc_dictionary_get_uint64(v5, "1");
    v8 = [SKProductSubscriptionPeriod alloc];
    v9 = xpc_dictionary_get_dictionary(v5, "4");
    v10 = [(SKProductSubscriptionPeriod *)v8 initWithXPCEncoding:v9];
    internal = v6->_internal;
    v12 = internal[4];
    internal[4] = v10;

    objc_opt_class();
    v13 = sub_10018E3FC(v5, "5");
    v14 = v6->_internal;
    v15 = v14[7];
    v14[7] = v13;

    *(v6->_internal + 6) = xpc_dictionary_get_uint64(v5, "6");
    v16 = sub_10018E3C4(v5, "2");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self = v16;
      if (!self)
      {
        goto LABEL_17;
      }

LABEL_12:
      v19 = [[NSDecimalNumberHandler alloc] initWithRoundingMode:0 scale:2 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
      v20 = [(SKProductDiscount *)self decimalNumberByRoundingAccordingToBehavior:v19];
      v21 = v20;
      if (v20)
      {
        selfCopy = v20;
      }

      else
      {
        selfCopy = self;
      }

      objc_storeStrong(v6->_internal + 1, selfCopy);

      goto LABEL_17;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [NSDecimalNumber alloc];
      stringValue = [(__CFDictionary *)v16 stringValue];
      self = [v17 initWithString:stringValue];

      if (self)
      {
        goto LABEL_12;
      }
    }

    else
    {
      self = 0;
    }

LABEL_17:

    goto LABEL_4;
  }

  v6 = 0;
LABEL_4:

LABEL_5:
  return v6;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v3, "0", *(self->_internal + 5));
  xpc_dictionary_set_uint64(v3, "1", *(self->_internal + 3));
  sub_10018E448(v3, "2", *(self->_internal + 1));
  copyXPCEncoding = [*(self->_internal + 4) copyXPCEncoding];
  xpc_dictionary_set_value(v3, "4", copyXPCEncoding);

  sub_10018E448(v3, "5", *(self->_internal + 7));
  xpc_dictionary_set_uint64(v3, "6", *(self->_internal + 6));
  return v3;
}

@end