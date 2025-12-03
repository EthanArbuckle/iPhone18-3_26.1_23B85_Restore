@interface MicroPaymentProduct
+ (id)periodFromISO8601String:(id)string;
- (MicroPaymentProduct)initWithDictionary:(id)dictionary;
- (id)copyProduct;
- (void)dealloc;
@end

@implementation MicroPaymentProduct

- (MicroPaymentProduct)initWithDictionary:(id)dictionary
{
  v4 = [(MicroPaymentProduct *)self init];
  if (v4)
  {
    v5 = [dictionary objectForKey:@"icu-locale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MicroPaymentProduct *)v4 setLocaleIdentifier:v5];
    }

    v6 = [dictionary objectForKey:@"description"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MicroPaymentProduct *)v4 setLocalizedDescription:v6];
    }

    v7 = [dictionary objectForKey:@"is-hosted"];
    if (objc_opt_respondsToSelector())
    {
      -[MicroPaymentProduct setHosted:](v4, "setHosted:", [v7 BOOLValue]);
    }

    v8 = [dictionary objectForKey:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MicroPaymentProduct *)v4 setLocalizedTitle:v8];
    }

    v9 = [dictionary objectForKey:@"offerName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MicroPaymentProduct *)v4 setProductIdentifier:v9];
    }

    v10 = [dictionary objectForKey:@"version"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MicroPaymentProduct *)v4 setContentVersion:v10];
    }

    v11 = [dictionary objectForKey:@"subscriptionFamilyId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MicroPaymentProduct *)v4 setSubscriptionGroupIdentifier:v11];
    }

    v12 = [dictionary objectForKey:@"recurringSubscriptionPeriod"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MicroPaymentProduct setSubscriptionPeriod:](v4, "setSubscriptionPeriod:", [objc_opt_class() periodFromISO8601String:v12]);
    }

    v13 = [dictionary objectForKey:SSItemProtocolKeyStoreOffers];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 objectForKey:@"STDQ"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v14 objectForKey:@"price"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(MicroPaymentProduct *)v4 setPrice:v15];
        }

        v16 = [v14 objectForKey:@"size"];
        if (objc_opt_respondsToSelector())
        {
          -[MicroPaymentProduct setContentSize:](v4, "setContentSize:", [v16 longLongValue]);
        }
      }
    }

    v17 = [dictionary objectForKey:@"discounts"];
    v18 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v19 = [v17 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v33;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v23 = [[MicroPaymentProductDiscount alloc] initWithDictionary:*(*(&v32 + 1) + 8 * i)];
          if ([(MicroPaymentProductDiscount *)v23 type])
          {
            if ([(MicroPaymentProductDiscount *)v23 type]== 1)
            {
              [v18 addObject:v23];
            }
          }

          else
          {
            [(MicroPaymentProduct *)v4 setIntroductoryPrice:v23];
          }
        }

        v20 = [v17 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v20);
    }

    [(MicroPaymentProduct *)v4 setDiscounts:[NSArray arrayWithArray:v18]];

    if (!v4->_productIdentifier || !v4->_localeIdentifier || !v4->_price)
    {
      v24 = +[SSLogConfig sharedDaemonConfig];
      if (!v24)
      {
        v24 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v24 shouldLog];
      if ([v24 shouldLogToDisk])
      {
        v26 = shouldLog | 2;
      }

      else
      {
        v26 = shouldLog;
      }

      if (!os_log_type_enabled([v24 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v26 &= 2u;
      }

      if (v26)
      {
        v27 = objc_opt_class();
        v36 = 138412290;
        v37 = v27;
        LODWORD(v31) = 12;
        v28 = _os_log_send_and_compose_impl();
        if (v28)
        {
          v29 = v28;
          [NSString stringWithCString:v28 encoding:4, &v36, v31];
          free(v29);
          SSFileLog();
        }
      }

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MicroPaymentProduct;
  [(MicroPaymentProduct *)&v3 dealloc];
}

- (id)copyProduct
{
  v3 = objc_alloc_init(sub_1001FA264());
  price = [(MicroPaymentProduct *)self price];
  if ([(MicroPaymentProduct *)self isHosted])
  {
    [v3 _setContentVersion:{-[MicroPaymentProduct contentVersion](self, "contentVersion")}];
    [v3 _setDownloadable:1];
    [v3 _setDownloadContentLengths:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", -[MicroPaymentProduct contentSize](self, "contentSize")))}];
  }

  [v3 _setLocaleIdentifier:{-[MicroPaymentProduct localeIdentifier](self, "localeIdentifier")}];
  [v3 _setLocalizedDescription:{-[MicroPaymentProduct localizedDescription](self, "localizedDescription")}];
  [v3 _setLocalizedTitle:{-[MicroPaymentProduct localizedTitle](self, "localizedTitle")}];
  [v3 _setPrice:{+[NSDecimalNumber decimalNumberWithString:](NSDecimalNumber, "decimalNumberWithString:", -[NSNumber stringValue](price, "stringValue"))}];
  [v3 _setProductIdentifier:{-[MicroPaymentProduct productIdentifier](self, "productIdentifier")}];
  [v3 _setSubscriptionGroupIdentifier:{-[MicroPaymentProduct subscriptionGroupIdentifier](self, "subscriptionGroupIdentifier")}];
  v5 = objc_alloc_init(sub_1001FA258());
  [v5 _setUnit:{-[MicroPaymentProductSubscriptionPeriod unit](self->_subscriptionPeriod, "unit")}];
  [v5 _setNumberOfUnits:{-[MicroPaymentProductSubscriptionPeriod numberOfUnits](-[MicroPaymentProduct subscriptionPeriod](self, "subscriptionPeriod"), "numberOfUnits")}];
  [v3 _setSubscriptionPeriod:v5];
  [v3 _setIntroductoryPrice:{-[MicroPaymentProductDiscount copyProductDiscount](-[MicroPaymentProduct introductoryPrice](self, "introductoryPrice"), "copyProductDiscount")}];
  v6 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  discounts = [(MicroPaymentProduct *)self discounts];
  v8 = [(NSArray *)discounts countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(discounts);
        }

        [v6 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * v11), "copyProductDiscount")}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSArray *)discounts countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [v3 _setDiscounts:{+[NSArray arrayWithArray:](NSArray, "arrayWithArray:", v6)}];

  return v3;
}

+ (id)periodFromISO8601String:(id)string
{
  v3 = [NSScanner scannerWithString:string];
  v8 = 0;
  [(NSScanner *)v3 scanString:@"P" intoString:&v8];
  if (!v8)
  {
    return 0;
  }

  v7 = 0;
  [(NSScanner *)v3 scanInteger:&v7];
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  [(NSScanner *)v3 scanCharactersFromSet:[NSCharacterSet intoString:"characterSetWithCharactersInString:" characterSetWithCharactersInString:?], &v8];
  if (!v8 || [v8 length] != 1)
  {
    return 0;
  }

  if (([v8 isEqualToString:@"D"] & 1) == 0)
  {
    if ([v8 isEqualToString:@"W"])
    {
      v4 = 1;
      goto LABEL_13;
    }

    if ([v8 isEqualToString:@"M"])
    {
      v4 = 2;
      goto LABEL_13;
    }

    if ([v8 isEqualToString:@"Y"])
    {
      v4 = 3;
      goto LABEL_13;
    }

    return 0;
  }

  v4 = 0;
LABEL_13:
  v5 = objc_opt_new();
  [v5 setNumberOfUnits:v7];
  [v5 setUnit:v4];
  return v5;
}

@end