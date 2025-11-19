@interface SSPaymentSheet
+ (id)_attributedStringWithString:(id)a3 styles:(id)a4;
+ (id)_styleDictionaryWithName:(id)a3 styles:(id)a4;
+ (id)stringWithFormattedUsernameForString:(id)a3 username:(id)a4;
- (NSArray)salableInfo;
- (NSAttributedString)displayPriceLabel;
- (NSAttributedString)salableInfoLabel;
- (NSString)accountHeader;
- (NSString)buyParams;
- (NSString)displayPrice;
- (NSString)explanation;
- (NSString)paymentSummary;
- (NSString)presentingSceneIdentifier;
- (NSString)ratingHeader;
- (NSString)ratingValue;
- (NSString)salableIconURLString;
- (NSString)storeName;
- (NSURL)salableIconURL;
- (SSPaymentSheet)init;
- (SSPaymentSheet)initWithServerResponse:(id)a3;
- (SSPaymentSheet)initWithServerResponse:(id)a3 buyParams:(id)a4;
- (SSPaymentSheet)initWithXPCEncoding:(id)a3;
- (id)_attributedListForFlexList:(id)a3;
- (id)_attributedStringForAttributedArray:(id)a3;
- (id)_attributedStringForAttributedDictionary:(id)a3;
- (id)_attributedStringForSalableInfoStringArray:(id)a3;
- (id)_attributedStringForString:(id)a3;
- (id)_attributedStringForStringArray:(id)a3 useGrey:(BOOL)a4;
- (id)_displayPriceLabelForDisplayPrice:(id)a3;
- (id)_greyAttributedStringForAttributedString:(id)a3 range:(_NSRange)a4;
- (id)_replaceBreakingSpaceMarkupForMutableAttributedString:(id)a3;
- (id)_replaceMarkupForMutableAttributedString:(id)a3 markupType:(int64_t)a4;
- (id)authKitAuthenticationContextForAccount:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (id)defaultAuthKitAuthenticationContext;
- (int64_t)_confirmationTitleTypeForStringValue:(id)a3;
- (int64_t)_inferSalableIconTypeWithBuyParams:(id)a3;
- (int64_t)_payeeTypeForRequestorValue:(id)a3;
- (int64_t)_payeeTypeInferredFromEnumeratedTitle;
- (int64_t)_salableIconTypeForString:(id)a3;
- (void)_init;
- (void)_parseResponse:(id)a3;
- (void)_salableInfoItemsToUppercase;
- (void)_stringValuesToUppercase;
- (void)setAccountHeader:(id)a3;
- (void)setDisplayPrice:(id)a3;
- (void)setExplanation:(id)a3;
- (void)setPaymentSummary:(id)a3;
- (void)setPresentingSceneIdentifier:(id)a3;
- (void)setRatingHeader:(id)a3;
- (void)setRatingValue:(id)a3;
- (void)setSalableIconURLString:(id)a3;
- (void)setSalableInfo:(id)a3;
- (void)setStoreName:(id)a3;
@end

@implementation SSPaymentSheet

- (id)defaultAuthKitAuthenticationContext
{
  v3 = +[SSAccountStore defaultStore];
  v4 = [v3 activeAccount];
  v5 = [(SSPaymentSheet *)self authKitAuthenticationContextForAccount:v4];

  return v5;
}

- (id)authKitAuthenticationContextForAccount:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 accountName];
  if (!v5)
  {
    v6 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      LODWORD(v40) = 138543362;
      *(&v40 + 4) = objc_opt_class();
      v10 = *(&v40 + 4);
      LODWORD(v39) = 12;
      v38 = &v40;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
LABEL_13:

        goto LABEL_14;
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v40, v39, v40}];
      free(v11);
      SSFileLog(v6, @"%@", v12, v13, v14, v15, v16, v17, v9);
    }

    goto LABEL_13;
  }

LABEL_14:
  v18 = objc_alloc_init(MEMORY[0x1E698DCB8]);
  v19 = [v4 altDSID];
  [v18 setAltDSID:v19];

  v20 = [v4 uniqueIdentifier];

  v21 = [v20 stringValue];
  [v18 setDSID:v21];

  [v18 setIsUsernameEditable:v5 == 0];
  v22 = [(SSPaymentSheet *)self message];
  [v18 set_passwordPromptTitle:v22];

  v23 = [(SSPaymentSheet *)self explanation];
  [v18 setReason:v23];

  [v18 setShouldAllowAppleIDCreation:0];
  [v18 setAuthenticationType:2];
  [v18 setShouldUpdatePersistentServiceTokens:1];
  [v18 setUsername:v5];
  if (v18)
  {
    goto LABEL_27;
  }

  v24 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v24)
  {
    v24 = +[SSLogConfig sharedConfig];
  }

  v25 = [v24 shouldLog];
  if ([v24 shouldLogToDisk])
  {
    v26 = v25 | 2;
  }

  else
  {
    v26 = v25;
  }

  v27 = [v24 OSLogObject];
  if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v26 &= 2u;
  }

  if (!v26)
  {
    goto LABEL_25;
  }

  v28 = objc_opt_class();
  LODWORD(v40) = 138543362;
  *(&v40 + 4) = v28;
  v29 = v28;
  LODWORD(v39) = 12;
  v30 = _os_log_send_and_compose_impl();

  if (v30)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithCString:v30 encoding:{4, &v40, v39}];
    free(v30);
    SSFileLog(v24, @"%@", v31, v32, v33, v34, v35, v36, v27);
LABEL_25:
  }

LABEL_27:

  return v18;
}

- (SSPaymentSheet)init
{
  v5.receiver = self;
  v5.super_class = SSPaymentSheet;
  v2 = [(SSPaymentSheet *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SSPaymentSheet *)v2 _init];
  }

  return v3;
}

- (SSPaymentSheet)initWithServerResponse:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SSPaymentSheet;
  v5 = [(SSPaymentSheet *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SSPaymentSheet *)v5 _init];
    [(SSPaymentSheet *)v6 _parseResponse:v4];
  }

  return v6;
}

- (SSPaymentSheet)initWithServerResponse:(id)a3 buyParams:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SSPaymentSheet;
  v8 = [(SSPaymentSheet *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(SSPaymentSheet *)v8 _init];
    [(SSPaymentSheet *)v9 _parseResponse:v6];
    v10 = [v7 copy];
    buyParams = v9->_buyParams;
    v9->_buyParams = v10;

    v12 = [(SSPaymentSheet *)v9 _inferSalableIconTypeWithBuyParams:v7];
    if (v12)
    {
      [(SSPaymentSheet *)v9 setSalableIconType:v12];
    }
  }

  return v9;
}

- (void)_init
{
  self->_applePayClassic = 0;
  v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
  lock = self->_lock;
  self->_lock = v3;

  countryCode = self->_countryCode;
  self->_countryCode = @"US";

  currencyCode = self->_currencyCode;
  self->_currencyCode = @"USD";

  *&self->_shouldShowCardPicker = 0;
  self->_shouldUppercaseText = 1;
}

+ (id)stringWithFormattedUsernameForString:(id)a3 username:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v5;
  if ([v7 containsString:@"%%appleId%%"])
  {
    v8 = 1;
  }

  else
  {
    v9 = [@"%%appleId%%" localizedUppercaseString];
    v8 = [v7 containsString:v9];
  }

  if ([v7 containsString:@"%%APPLE_ID%%"])
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v11 = [@"%%APPLE_ID%%" localizedUppercaseString];
    v10 = [v7 containsString:v11];

    v12 = v7;
    if (((v8 | v10) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if (v6)
  {
    v13 = [MEMORY[0x1E698DE10] formattedUsernameFromUsername:v6];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v6;
    }

    v16 = v15;
    goto LABEL_24;
  }

  v17 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v17)
  {
    v17 = +[SSLogConfig sharedConfig];
  }

  v18 = [v17 shouldLog];
  if ([v17 shouldLogToDisk])
  {
    v19 = v18 | 2;
  }

  else
  {
    v19 = v18;
  }

  v20 = [v17 OSLogObject];
  if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v19 &= 2u;
  }

  if (!v19)
  {
    goto LABEL_22;
  }

  LODWORD(v36) = 138412290;
  *(&v36 + 4) = objc_opt_class();
  v21 = *(&v36 + 4);
  LODWORD(v35) = 12;
  v22 = _os_log_send_and_compose_impl();

  if (v22)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:{4, &v36, v35, v36}];
    free(v22);
    SSFileLog(v17, @"%@", v23, v24, v25, v26, v27, v28, v20);
LABEL_22:
  }

  v14 = 0;
  v16 = &stru_1F503F418;
LABEL_24:
  v12 = v7;
  if (v8)
  {
    v29 = [v7 stringByReplacingOccurrencesOfString:@"%%appleId%%" withString:v16];

    v30 = [@"%%appleId%%" localizedUppercaseString];
    v12 = [v29 stringByReplacingOccurrencesOfString:v30 withString:v16];
  }

  if (v10)
  {
    v31 = [(__CFString *)v16 localizedUppercaseString];
    v32 = [v12 stringByReplacingOccurrencesOfString:@"%%APPLE_ID%%" withString:v31];

    v33 = [@"%%APPLE_ID%%" localizedUppercaseString];
    v12 = [v32 stringByReplacingOccurrencesOfString:v33 withString:v31];
  }

LABEL_29:

  return v12;
}

- (NSString)accountHeader
{
  [(SSPaymentSheet *)self _lock];
  v3 = [(NSString *)self->_accountHeader copy];
  [(SSPaymentSheet *)self _unlock];

  return v3;
}

- (NSString)buyParams
{
  [(SSPaymentSheet *)self _lock];
  v3 = [(NSString *)self->_buyParams copy];
  [(SSPaymentSheet *)self _unlock];

  return v3;
}

- (NSString)displayPrice
{
  [(SSPaymentSheet *)self _lock];
  v3 = [(NSString *)self->_displayPrice copy];
  [(SSPaymentSheet *)self _unlock];

  return v3;
}

- (NSAttributedString)displayPriceLabel
{
  [(SSPaymentSheet *)self _lock];
  displayPriceLabel = self->_displayPriceLabel;
  if (!displayPriceLabel)
  {
    v4 = [(SSPaymentSheet *)self _displayPriceLabelForDisplayPrice:self->_displayPrice];
    v5 = self->_displayPriceLabel;
    self->_displayPriceLabel = v4;

    displayPriceLabel = self->_displayPriceLabel;
  }

  v6 = [(NSAttributedString *)displayPriceLabel copy];
  [(SSPaymentSheet *)self _unlock];

  return v6;
}

- (NSString)explanation
{
  [(SSPaymentSheet *)self _lock];
  v3 = [(NSString *)self->_explanation copy];
  [(SSPaymentSheet *)self _unlock];

  return v3;
}

- (NSString)paymentSummary
{
  [(SSPaymentSheet *)self _lock];
  v3 = [(NSString *)self->_paymentSummary copy];
  [(SSPaymentSheet *)self _unlock];

  return v3;
}

- (NSString)presentingSceneIdentifier
{
  [(SSPaymentSheet *)self _lock];
  v3 = [(NSString *)self->_presentingSceneIdentifier copy];
  [(SSPaymentSheet *)self _unlock];

  return v3;
}

- (NSString)ratingHeader
{
  [(SSPaymentSheet *)self _lock];
  v3 = [(NSString *)self->_ratingHeader copy];
  [(SSPaymentSheet *)self _unlock];

  return v3;
}

- (NSString)ratingValue
{
  [(SSPaymentSheet *)self _lock];
  v3 = [(NSString *)self->_ratingValue copy];
  [(SSPaymentSheet *)self _unlock];

  return v3;
}

- (NSURL)salableIconURL
{
  [(SSPaymentSheet *)self _lock];
  salableIconURL = self->_salableIconURL;
  if (!salableIconURL)
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:self->_salableIconURLString];
    v5 = self->_salableIconURL;
    self->_salableIconURL = v4;

    salableIconURL = self->_salableIconURL;
  }

  v6 = [(NSURL *)salableIconURL copy];
  [(SSPaymentSheet *)self _unlock];

  return v6;
}

- (NSString)salableIconURLString
{
  [(SSPaymentSheet *)self _lock];
  v3 = [(NSString *)self->_salableIconURLString copy];
  [(SSPaymentSheet *)self _unlock];

  return v3;
}

- (NSArray)salableInfo
{
  [(SSPaymentSheet *)self _lock];
  v3 = [(NSArray *)self->_salableInfo copy];
  [(SSPaymentSheet *)self _unlock];

  return v3;
}

- (NSAttributedString)salableInfoLabel
{
  [(SSPaymentSheet *)self _lock];
  salableInfoLabel = self->_salableInfoLabel;
  if (!salableInfoLabel)
  {
    if (self->_salableInfo)
    {
      v4 = [(SSPaymentSheet *)self _attributedStringForSalableInfoStringArray:?];
      v5 = self->_salableInfoLabel;
      self->_salableInfoLabel = v4;

      salableInfoLabel = self->_salableInfoLabel;
    }

    else
    {
      salableInfoLabel = 0;
    }
  }

  v6 = [(NSAttributedString *)salableInfoLabel copy];
  [(SSPaymentSheet *)self _unlock];

  return v6;
}

- (void)setAccountHeader:(id)a3
{
  v8 = a3;
  [(SSPaymentSheet *)self _lock];
  if (self->_accountHeader != v8)
  {
    v4 = [(NSString *)v8 copy];
    accountHeader = self->_accountHeader;
    self->_accountHeader = v4;

    if (self->_shouldUppercaseText)
    {
      v6 = [(NSString *)self->_accountHeader localizedUppercaseString];
      v7 = self->_accountHeader;
      self->_accountHeader = v6;
    }
  }

  [(SSPaymentSheet *)self _unlock];
}

- (void)setDisplayPrice:(id)a3
{
  v9 = a3;
  [(SSPaymentSheet *)self _lock];
  if (self->_displayPrice != v9)
  {
    v4 = [(NSString *)v9 copy];
    displayPrice = self->_displayPrice;
    self->_displayPrice = v4;

    if (self->_shouldUppercaseText)
    {
      v6 = [(NSString *)self->_displayPrice localizedUppercaseString];
      v7 = self->_displayPrice;
      self->_displayPrice = v6;
    }

    displayPriceLabel = self->_displayPriceLabel;
    self->_displayPriceLabel = 0;
  }

  [(SSPaymentSheet *)self _unlock];
}

- (void)setExplanation:(id)a3
{
  v10 = a3;
  [(SSPaymentSheet *)self _lock];
  if (self->_explanation != v10)
  {
    v4 = [(NSString *)v10 copy];
    v5 = [(SSPaymentSheet *)self accountName];
    if (!v5)
    {
      v6 = +[SSAccountStore defaultStore];
      v7 = [v6 activeAccount];
      v5 = [v7 accountName];
    }

    v8 = [objc_opt_class() stringWithFormattedUsernameForString:v4 username:v5];
    explanation = self->_explanation;
    self->_explanation = v8;
  }

  [(SSPaymentSheet *)self _unlock];
}

- (void)setPaymentSummary:(id)a3
{
  v8 = a3;
  [(SSPaymentSheet *)self _lock];
  if (self->_paymentSummary != v8)
  {
    v4 = [(NSString *)v8 copy];
    paymentSummary = self->_paymentSummary;
    self->_paymentSummary = v4;

    if (self->_shouldUppercaseText)
    {
      v6 = [(NSString *)self->_paymentSummary localizedUppercaseString];
      v7 = self->_paymentSummary;
      self->_paymentSummary = v6;
    }
  }

  [(SSPaymentSheet *)self _unlock];
}

- (void)setPresentingSceneIdentifier:(id)a3
{
  v6 = a3;
  [(SSPaymentSheet *)self _lock];
  if (self->_presentingSceneIdentifier != v6)
  {
    v4 = [(NSString *)v6 copy];
    presentingSceneIdentifier = self->_presentingSceneIdentifier;
    self->_presentingSceneIdentifier = v4;
  }

  [(SSPaymentSheet *)self _unlock];
}

- (void)setRatingHeader:(id)a3
{
  v8 = a3;
  [(SSPaymentSheet *)self _lock];
  if (self->_ratingHeader != v8)
  {
    v4 = [(NSString *)v8 copy];
    ratingHeader = self->_ratingHeader;
    self->_ratingHeader = v4;

    if (self->_shouldUppercaseText)
    {
      v6 = [(NSString *)self->_ratingHeader localizedUppercaseString];
      v7 = self->_ratingHeader;
      self->_ratingHeader = v6;
    }
  }

  [(SSPaymentSheet *)self _unlock];
}

- (void)setRatingValue:(id)a3
{
  v8 = a3;
  [(SSPaymentSheet *)self _lock];
  if (self->_ratingValue != v8)
  {
    v4 = [(NSString *)v8 copy];
    ratingValue = self->_ratingValue;
    self->_ratingValue = v4;

    if (self->_shouldUppercaseText)
    {
      v6 = [(NSString *)self->_ratingValue localizedUppercaseString];
      v7 = self->_ratingValue;
      self->_ratingValue = v6;
    }
  }

  [(SSPaymentSheet *)self _unlock];
}

- (void)setSalableIconURLString:(id)a3
{
  v7 = a3;
  [(SSPaymentSheet *)self _lock];
  if (self->_salableIconURLString != v7)
  {
    v4 = [(NSString *)v7 copy];
    salableIconURLString = self->_salableIconURLString;
    self->_salableIconURLString = v4;

    salableIconURL = self->_salableIconURL;
    self->_salableIconURL = 0;
  }

  [(SSPaymentSheet *)self _unlock];
}

- (void)setSalableInfo:(id)a3
{
  v7 = a3;
  [(SSPaymentSheet *)self _lock];
  if (self->_salableInfo != v7)
  {
    v4 = [(NSArray *)v7 copy];
    salableInfo = self->_salableInfo;
    self->_salableInfo = v4;

    if (self->_shouldUppercaseText)
    {
      [(SSPaymentSheet *)self _salableInfoItemsToUppercase];
    }

    salableInfoLabel = self->_salableInfoLabel;
    self->_salableInfoLabel = 0;
  }

  [(SSPaymentSheet *)self _unlock];
}

- (void)setStoreName:(id)a3
{
  v8 = a3;
  [(SSPaymentSheet *)self _lock];
  if (self->_storeName != v8)
  {
    v4 = [(NSString *)v8 copy];
    storeName = self->_storeName;
    self->_storeName = v4;

    if (self->_shouldUppercaseText)
    {
      v6 = [(NSString *)self->_storeName localizedUppercaseString];
      v7 = self->_storeName;
      self->_storeName = v6;
    }
  }

  [(SSPaymentSheet *)self _unlock];
}

- (NSString)storeName
{
  [(SSPaymentSheet *)self _lock];
  v3 = [(NSString *)self->_storeName copy];
  [(SSPaymentSheet *)self _unlock];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(NSString *)self->_accountHeader copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSArray *)self->_attributedList copyWithZone:a3];
  v9 = v5[19];
  v5[19] = v8;

  v5[20] = self->_confirmationTitleType;
  v10 = [(NSString *)self->_countryCode copyWithZone:a3];
  v11 = v5[21];
  v5[21] = v10;

  v12 = [(NSString *)self->_currencyCode copyWithZone:a3];
  v13 = v5[22];
  v5[22] = v12;

  v14 = [(NSNumber *)self->_designVersion copyWithZone:a3];
  v15 = v5[23];
  v5[23] = v14;

  v16 = [(NSString *)self->_dialogId copyWithZone:a3];
  v17 = v5[5];
  v5[5] = v16;

  v18 = [(NSString *)self->_displayPrice copyWithZone:a3];
  v19 = v5[6];
  v5[6] = v18;

  v20 = [(NSString *)self->_explanation copyWithZone:a3];
  v21 = v5[8];
  v5[8] = v20;

  v22 = [(NSArray *)self->_flexList copyWithZone:a3];
  v23 = v5[24];
  v5[24] = v22;

  v24 = [(NSArray *)self->_inlineImages copyWithZone:a3];
  v25 = v5[25];
  v5[25] = v24;

  *(v5 + 16) = self->_applePayClassic;
  v26 = [(NSDictionary *)self->_merchantSession copyWithZone:a3];
  v27 = v5[26];
  v5[26] = v26;

  v28 = [(NSString *)self->_message copyWithZone:a3];
  v29 = v5[27];
  v5[27] = v28;

  v5[28] = self->_payeeType;
  v30 = [(NSString *)self->_paymentSummary copyWithZone:a3];
  v31 = v5[9];
  v5[9] = v30;

  v32 = [(NSString *)self->_presentingSceneIdentifier copyWithZone:a3];
  v33 = v5[10];
  v5[10] = v32;

  v34 = [(NSNumber *)self->_price copyWithZone:a3];
  v35 = v5[29];
  v5[29] = v34;

  v36 = [(NSArray *)self->_priceSectionItems copyWithZone:a3];
  v37 = v5[30];
  v5[30] = v36;

  v38 = [(NSString *)self->_ratingHeader copyWithZone:a3];
  v39 = v5[11];
  v5[11] = v38;

  v40 = [(NSString *)self->_ratingValue copyWithZone:a3];
  v41 = v5[12];
  v5[12] = v40;

  v5[31] = self->_salableIconType;
  v42 = [(NSString *)self->_salableIconURLString copyWithZone:a3];
  v43 = v5[14];
  v5[14] = v42;

  v44 = [(NSArray *)self->_salableInfo copyWithZone:a3];
  v45 = v5[15];
  v5[15] = v44;

  *(v5 + 17) = self->_shouldShowCardPicker;
  *(v5 + 18) = self->_shouldSuppressPrice;
  *(v5 + 19) = self->_shouldUppercaseText;
  v46 = [(NSString *)self->_storeName copyWithZone:a3];
  v47 = v5[17];
  v5[17] = v46;

  v48 = [(NSString *)self->_title copyWithZone:a3];
  v49 = v5[33];
  v5[33] = v48;

  v5[34] = self->_titleType;
  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetObject(v3, "0", self->_accountHeader);
  xpc_dictionary_set_BOOL(v3, "25", self->_applePayClassic);
  SSXPCDictionarySetObject(v3, "28", self->_attributedList);
  SSXPCDictionarySetObject(v3, "20", self->_buyParams);
  xpc_dictionary_set_int64(v3, "1", self->_confirmationTitleType);
  SSXPCDictionarySetObject(v3, "2", self->_countryCode);
  SSXPCDictionarySetObject(v3, "3", self->_currencyCode);
  SSXPCDictionarySetObject(v3, "30", self->_designVersion);
  SSXPCDictionarySetObject(v3, "21", self->_dialogId);
  SSXPCDictionarySetObject(v3, "4", self->_displayPrice);
  SSXPCDictionarySetObject(v3, "5", self->_explanation);
  SSXPCDictionarySetObject(v3, "6", self->_flexList);
  SSXPCDictionarySetObject(v3, "22", self->_inlineImages);
  SSXPCDictionarySetObject(v3, "24", self->_merchantSession);
  SSXPCDictionarySetObject(v3, "7", self->_message);
  xpc_dictionary_set_int64(v3, "8", self->_payeeType);
  SSXPCDictionarySetObject(v3, "9", self->_paymentSummary);
  SSXPCDictionarySetObject(v3, "29", self->_presentingSceneIdentifier);
  SSXPCDictionarySetObject(v3, "10", self->_price);
  SSXPCDictionarySetObject(v3, "23", self->_priceSectionItems);
  SSXPCDictionarySetObject(v3, "11", self->_ratingHeader);
  SSXPCDictionarySetObject(v3, "12", self->_ratingValue);
  xpc_dictionary_set_int64(v3, "18", self->_salableIconType);
  SSXPCDictionarySetObject(v3, "13", self->_salableIconURLString);
  SSXPCDictionarySetObject(v3, "14", self->_salableInfo);
  xpc_dictionary_set_BOOL(v3, "26", self->_shouldShowCardPicker);
  xpc_dictionary_set_BOOL(v3, "27", self->_shouldSuppressPrice);
  xpc_dictionary_set_BOOL(v3, "19", self->_shouldUppercaseText);
  SSXPCDictionarySetObject(v3, "15", self->_storeName);
  SSXPCDictionarySetObject(v3, "16", self->_title);
  xpc_dictionary_set_int64(v3, "17", self->_titleType);
  return v3;
}

- (SSPaymentSheet)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1DA6E0380](v4) == MEMORY[0x1E69E9E80])
  {
    v77.receiver = self;
    v77.super_class = SSPaymentSheet;
    v6 = [(SSPaymentSheet *)&v77 init];
    if (v6)
    {
      v8 = objc_opt_class();
      v9 = SSXPCDictionaryCopyObjectWithClass(v5, "0", v8);
      accountHeader = v6->_accountHeader;
      v6->_accountHeader = v9;

      v11 = objc_opt_class();
      v12 = SSXPCDictionaryCopyObjectWithClass(v5, "28", v11);
      attributedList = v6->_attributedList;
      v6->_attributedList = v12;

      v14 = objc_opt_class();
      v15 = SSXPCDictionaryCopyObjectWithClass(v5, "20", v14);
      buyParams = v6->_buyParams;
      v6->_buyParams = v15;

      v6->_confirmationTitleType = xpc_dictionary_get_int64(v5, "1");
      v17 = objc_opt_class();
      v18 = SSXPCDictionaryCopyObjectWithClass(v5, "2", v17);
      countryCode = v6->_countryCode;
      v6->_countryCode = v18;

      v20 = objc_opt_class();
      v21 = SSXPCDictionaryCopyObjectWithClass(v5, "3", v20);
      currencyCode = v6->_currencyCode;
      v6->_currencyCode = v21;

      v23 = objc_opt_class();
      v24 = SSXPCDictionaryCopyObjectWithClass(v5, "30", v23);
      designVersion = v6->_designVersion;
      v6->_designVersion = v24;

      v26 = objc_opt_class();
      v27 = SSXPCDictionaryCopyObjectWithClass(v5, "21", v26);
      dialogId = v6->_dialogId;
      v6->_dialogId = v27;

      v29 = objc_opt_class();
      v30 = SSXPCDictionaryCopyObjectWithClass(v5, "4", v29);
      displayPrice = v6->_displayPrice;
      v6->_displayPrice = v30;

      v32 = objc_opt_class();
      v33 = SSXPCDictionaryCopyObjectWithClass(v5, "5", v32);
      explanation = v6->_explanation;
      v6->_explanation = v33;

      v35 = objc_opt_class();
      v36 = SSXPCDictionaryCopyObjectWithClass(v5, "6", v35);
      flexList = v6->_flexList;
      v6->_flexList = v36;

      v38 = objc_opt_class();
      v39 = SSXPCDictionaryCopyObjectWithClass(v5, "22", v38);
      inlineImages = v6->_inlineImages;
      v6->_inlineImages = v39;

      v6->_applePayClassic = xpc_dictionary_get_BOOL(v5, "25");
      v41 = objc_opt_class();
      v42 = SSXPCDictionaryCopyObjectWithClass(v5, "24", v41);
      merchantSession = v6->_merchantSession;
      v6->_merchantSession = v42;

      v44 = objc_opt_class();
      v45 = SSXPCDictionaryCopyObjectWithClass(v5, "7", v44);
      message = v6->_message;
      v6->_message = v45;

      v47 = objc_opt_class();
      v48 = SSXPCDictionaryCopyObjectWithClass(v5, "9", v47);
      paymentSummary = v6->_paymentSummary;
      v6->_paymentSummary = v48;

      v6->_payeeType = xpc_dictionary_get_int64(v5, "8");
      v50 = objc_opt_class();
      v51 = SSXPCDictionaryCopyObjectWithClass(v5, "29", v50);
      presentingSceneIdentifier = v6->_presentingSceneIdentifier;
      v6->_presentingSceneIdentifier = v51;

      v53 = objc_opt_class();
      v54 = SSXPCDictionaryCopyObjectWithClass(v5, "10", v53);
      price = v6->_price;
      v6->_price = v54;

      v56 = objc_opt_class();
      v57 = SSXPCDictionaryCopyObjectWithClass(v5, "23", v56);
      priceSectionItems = v6->_priceSectionItems;
      v6->_priceSectionItems = v57;

      v59 = objc_opt_class();
      v60 = SSXPCDictionaryCopyObjectWithClass(v5, "11", v59);
      ratingHeader = v6->_ratingHeader;
      v6->_ratingHeader = v60;

      v62 = objc_opt_class();
      v63 = SSXPCDictionaryCopyObjectWithClass(v5, "12", v62);
      ratingValue = v6->_ratingValue;
      v6->_ratingValue = v63;

      v6->_salableIconType = xpc_dictionary_get_int64(v5, "18");
      v65 = objc_opt_class();
      v66 = SSXPCDictionaryCopyObjectWithClass(v5, "13", v65);
      salableIconURLString = v6->_salableIconURLString;
      v6->_salableIconURLString = v66;

      v68 = objc_opt_class();
      v69 = SSXPCDictionaryCopyObjectWithClass(v5, "14", v68);
      salableInfo = v6->_salableInfo;
      v6->_salableInfo = v69;

      v6->_shouldShowCardPicker = xpc_dictionary_get_BOOL(v5, "26");
      v6->_shouldSuppressPrice = xpc_dictionary_get_BOOL(v5, "27");
      v6->_shouldUppercaseText = xpc_dictionary_get_BOOL(v5, "19");
      v71 = objc_opt_class();
      v72 = SSXPCDictionaryCopyObjectWithClass(v5, "15", v71);
      storeName = v6->_storeName;
      v6->_storeName = v72;

      v74 = objc_opt_class();
      v75 = SSXPCDictionaryCopyObjectWithClass(v5, "16", v74);
      title = v6->_title;
      v6->_title = v75;

      v6->_titleType = xpc_dictionary_get_int64(v5, "17");
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)_attributedStringForAttributedArray:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __54__SSPaymentSheet__attributedStringForAttributedArray___block_invoke;
  v16 = &unk_1E84B15C8;
  v17 = self;
  v18 = v5;
  v19 = v4;
  v20 = v6;
  v7 = v6;
  v8 = v4;
  v9 = v5;
  [v8 enumerateObjectsUsingBlock:&v13];
  v10 = objc_alloc(MEMORY[0x1E696AAB0]);
  v11 = [v10 initWithAttributedString:{v9, v13, v14, v15, v16, v17}];

  return v11;
}

void __54__SSPaymentSheet__attributedStringForAttributedArray___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [*(a1 + 32) _attributedStringForString:v7];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v5 = [*(a1 + 32) _attributedStringForAttributedDictionary:v7];
  }

  v6 = v5;
  [*(a1 + 40) appendAttributedString:v5];

LABEL_6:
  if ([*(a1 + 48) count] - 1 > a3)
  {
    [*(a1 + 40) appendAttributedString:*(a1 + 56)];
  }
}

- (id)_attributedStringForAttributedDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"value"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_alloc(MEMORY[0x1E696AD40]);
    v7 = [(SSPaymentSheet *)self _attributedStringForString:v5];
    v8 = [v6 initWithAttributedString:v7];

    v9 = [v4 objectForKeyedSubscript:@"size"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 isEqualToString:@"large"])
    {
      v10 = [v8 length];
      [v8 addAttribute:@"useLargeSize" value:MEMORY[0x1E695E118] range:{0, v10}];
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v8];

  return v11;
}

- (id)_attributedStringForSalableInfoStringArray:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __61__SSPaymentSheet__attributedStringForSalableInfoStringArray___block_invoke;
  v16 = &unk_1E84B15F0;
  v17 = self;
  v18 = v5;
  v19 = v4;
  v20 = v6;
  v7 = v6;
  v8 = v4;
  v9 = v5;
  [v8 enumerateObjectsUsingBlock:&v13];
  v10 = objc_alloc(MEMORY[0x1E696AAB0]);
  v11 = [v10 initWithAttributedString:{v9, v13, v14, v15, v16, v17}];

  return v11;
}

void __61__SSPaymentSheet__attributedStringForSalableInfoStringArray___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = [*(a1 + 32) _attributedStringForString:a2];
  v6 = v5;
  if (a3)
  {
    v8 = v5;
    v7 = [*(a1 + 32) _greyAttributedStringForAttributedString:v5 range:{0, objc_msgSend(v5, "length")}];

    v6 = v7;
  }

  v9 = v6;
  [*(a1 + 40) appendAttributedString:v6];
  if ([*(a1 + 48) count] - 1 > a3)
  {
    [*(a1 + 40) appendAttributedString:*(a1 + 56)];
  }
}

- (id)_attributedStringForString:(id)a3
{
  v4 = a3;
  v5 = [(SSPaymentSheet *)self accountName];
  if (!v5)
  {
    v6 = +[SSAccountStore defaultStore];
    v7 = [v6 activeAccount];
    v5 = [v7 accountName];
  }

  v8 = [objc_opt_class() stringWithFormattedUsernameForString:v4 username:v5];

  if (self->_shouldUppercaseText)
  {
    v9 = [v8 localizedUppercaseString];

    v8 = v9;
  }

  v10 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v8];
  v11 = [(SSPaymentSheet *)self _replaceMarkupForMutableAttributedString:v10 markupType:0];

  v12 = [(SSPaymentSheet *)self _replaceMarkupForMutableAttributedString:v11 markupType:1];

  v13 = [(SSPaymentSheet *)self _replaceBreakingSpaceMarkupForMutableAttributedString:v12];

  v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v13];

  return v14;
}

- (id)_attributedStringForStringArray:(id)a3 useGrey:(BOOL)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__SSPaymentSheet__attributedStringForStringArray_useGrey___block_invoke;
  v14[3] = &unk_1E84B1618;
  v18 = a4;
  v14[4] = self;
  v15 = v7;
  v16 = v6;
  v17 = v8;
  v9 = v8;
  v10 = v6;
  v11 = v7;
  [v10 enumerateObjectsUsingBlock:v14];
  v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v11];

  return v12;
}

void __58__SSPaymentSheet__attributedStringForStringArray_useGrey___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = [*(a1 + 32) _attributedStringForString:a2];
  v6 = v5;
  if (*(a1 + 64) == 1)
  {
    v8 = v5;
    v7 = [*(a1 + 32) _greyAttributedStringForAttributedString:v5 range:{0, objc_msgSend(v5, "length")}];

    v6 = v7;
  }

  v9 = v6;
  [*(a1 + 40) appendAttributedString:v6];
  if ([*(a1 + 48) count] - 1 > a3)
  {
    [*(a1 + 40) appendAttributedString:*(a1 + 56)];
  }
}

- (int64_t)_confirmationTitleTypeForStringValue:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"pay"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"confirm"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"get"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"install"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"rent"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"redeem"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_displayPriceLabelForDisplayPrice:(id)a3
{
  v3 = MEMORY[0x1E696AAB0];
  v4 = a3;
  v5 = [[v3 alloc] initWithString:v4];

  return v5;
}

- (id)_greyAttributedStringForAttributedString:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  v5 = a3;
  if (!_greyAttributedStringForAttributedString_range__kPKPaymentContentItemLightColorAttribute)
  {
    v6 = SSVPassKitFramework();
    v7 = SSVWeakLinkedStringConstantForString("PKPaymentContentItemLightColorAttribute", v6);
    v8 = _greyAttributedStringForAttributedString_range__kPKPaymentContentItemLightColorAttribute;
    _greyAttributedStringForAttributedString_range__kPKPaymentContentItemLightColorAttribute = v7;
  }

  v9 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v5];
  v10 = v9;
  if (_greyAttributedStringForAttributedString_range__kPKPaymentContentItemLightColorAttribute)
  {
    v11 = length == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    [v9 addAttribute:? value:? range:?];
  }

  v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v10];

  return v12;
}

- (int64_t)_inferSalableIconTypeWithBuyParams:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 rangeOfString:@"mtApp=com.apple.MobileSMS"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v4 rangeOfString:@"mtApp=com.apple.AppStore.BridgeStoreExtension"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = 0;
      }

      else
      {
        v5 = 3;
      }
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 4;
  }

  return v5;
}

- (void)_parseResponse:(id)a3
{
  v135 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKey:@"caseControl"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 lowercaseString];
    if ([v6 isEqualToString:@"true"])
    {
      self->_shouldUppercaseText = 0;
    }
  }

  v7 = [v4 objectForKey:@"title"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [v8 objectForKey:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v9 isEqualToString:@"text"])
      {
        self->_titleType = 0;
      }

      else
      {
        if ([v9 isEqualToString:@"enum"])
        {
          v12 = 1;
        }

        else
        {
          v12 = 2;
        }

        self->_titleType = v12;
      }
    }

    v13 = [v8 objectForKey:@"value"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      title = self->_title;
      self->_title = v14;
    }

    if (self->_titleType == 2)
    {
      v16 = [v8 objectForKey:@"fallback"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [v16 copy];
        v18 = self->_title;
        self->_title = v17;
      }
    }

    else
    {
      v16 = v13;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v7 copy];
      v11 = self->_title;
      self->_title = v10;

      self->_titleType = 0;
    }
  }

  v19 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v19)
  {
    v19 = +[SSLogConfig sharedConfig];
  }

  v20 = [v19 shouldLog];
  if ([v19 shouldLogToDisk])
  {
    v21 = v20 | 2;
  }

  else
  {
    v21 = v20;
  }

  v22 = [v19 OSLogObject];
  if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v21 &= 2u;
  }

  if (v21)
  {
    v23 = objc_opt_class();
    v24 = self->_title;
    v25 = [MEMORY[0x1E696AD98] numberWithInteger:self->_titleType];
    v129 = 138543874;
    v130 = v23;
    v131 = 2114;
    v132 = v24;
    v133 = 2114;
    v134 = v25;
    LODWORD(v118) = 32;
    v117 = &v129;
    v26 = _os_log_send_and_compose_impl();

    if (!v26)
    {
      goto LABEL_33;
    }

    v22 = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:{4, &v129, v118}];
    free(v26);
    SSFileLog(v19, @"%@", v27, v28, v29, v30, v31, v32, v22);
  }

LABEL_33:
  v33 = [v4 valueForKey:@"accountHeader"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = [v33 copy];
    accountHeader = self->_accountHeader;
    self->_accountHeader = v34;
  }

  v36 = [v4 valueForKey:{@"countryCode", v117}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = [v36 copy];
    countryCode = self->_countryCode;
    self->_countryCode = v37;
  }

  v39 = [v4 valueForKey:@"currency"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v40 = [v39 copy];
    currencyCode = self->_currencyCode;
    self->_currencyCode = v40;
  }

  v42 = [v4 valueForKey:@"designVersion"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v43 = [v42 copy];
    designVersion = self->_designVersion;
    self->_designVersion = v43;
  }

  v45 = [v4 valueForKey:@"price"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v46 = [v45 copy];
    price = self->_price;
    self->_price = v46;
  }

  v48 = [v4 valueForKey:@"displayPrice"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v49 = [v48 copy];
    displayPrice = self->_displayPrice;
    self->_displayPrice = v49;

    displayPriceLabel = self->_displayPriceLabel;
    self->_displayPriceLabel = 0;
  }

  v52 = [v4 valueForKey:@"suppressPrice"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v53 = [v52 lowercaseString];
    v54 = [v53 isEqualToString:@"true"];

    if (v54)
    {
      self->_shouldSuppressPrice = 1;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_shouldSuppressPrice = [v52 BOOLValue];
    }
  }

  v55 = [v4 valueForKey:@"priceSection"];

  if (!v55)
  {
    v55 = [v4 valueForKey:@"pricingSection"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v57 = v55;
    v124[0] = MEMORY[0x1E69E9820];
    v124[1] = 3221225472;
    v124[2] = __33__SSPaymentSheet__parseResponse___block_invoke;
    v124[3] = &unk_1E84B1640;
    v124[4] = self;
    v58 = v56;
    v125 = v58;
    [v57 enumerateObjectsUsingBlock:v124];
    v59 = [v58 copy];
    priceSectionItems = self->_priceSectionItems;
    self->_priceSectionItems = v59;
  }

  v61 = [v4 valueForKey:@"requestor"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v62 = [(SSPaymentSheet *)self _payeeTypeForRequestorValue:v61];
  }

  else
  {
    v62 = [(SSPaymentSheet *)self _payeeTypeInferredFromEnumeratedTitle];
  }

  self->_payeeType = v62;
  v63 = [v4 valueForKey:@"salableIcon"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v64 = [v63 copy];
    salableIconURLString = self->_salableIconURLString;
    self->_salableIconURLString = v64;

    salableIconURL = self->_salableIconURL;
    self->_salableIconURL = 0;
  }

  v67 = [v4 valueForKey:@"salableIconType"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v68 = [v67 lowercaseString];
    self->_salableIconType = [(SSPaymentSheet *)self _salableIconTypeForString:v68];
  }

  v69 = [v4 valueForKey:@"storeName"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v70 = [v69 copy];
    storeName = self->_storeName;
    self->_storeName = v70;
  }

  v72 = [v4 valueForKey:@"rating"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v73 = v72;
    v74 = [v73 valueForKey:@"header"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v75 = [v74 copy];
      ratingHeader = self->_ratingHeader;
      self->_ratingHeader = v75;
    }

    v77 = [v73 valueForKey:@"text"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v78 = [v77 copy];
      ratingValue = self->_ratingValue;
      self->_ratingValue = v78;
    }
  }

  v80 = [v4 valueForKey:@"confirmationTitle"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v81 = [v80 lowercaseString];
    self->_confirmationTitleType = [(SSPaymentSheet *)self _confirmationTitleTypeForStringValue:v81];
  }

  v82 = [v4 valueForKey:@"paymentSummary"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v83 = [v82 copy];
    paymentSummary = self->_paymentSummary;
    self->_paymentSummary = v83;
  }

  v85 = [v4 objectForKey:@"salableInfo"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v86 = [v85 copy];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_78;
    }

    v128 = v85;
    v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v128 count:1];
  }

  salableInfo = self->_salableInfo;
  self->_salableInfo = v86;

  salableInfoLabel = self->_salableInfoLabel;
  self->_salableInfoLabel = 0;

LABEL_78:
  v89 = [v4 objectForKey:@"images"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v90 = v89;
    v91 = [[SSPaymentSheetRatingImage alloc] initWithURLString:v90];
    v127 = v91;
    v92 = MEMORY[0x1E695DEC8];
    v93 = &v127;
LABEL_82:
    v94 = [v92 arrayWithObjects:v93 count:1];
LABEL_83:
    inlineImages = self->_inlineImages;
    self->_inlineImages = v94;

    goto LABEL_84;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v90 = v89;
    v91 = [[SSPaymentSheetRatingImage alloc] initWithDictionary:v90];
    v126 = v91;
    v92 = MEMORY[0x1E695DEC8];
    v93 = &v126;
    goto LABEL_82;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v90 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v91 = v89;
    if (![(SSPaymentSheetRatingImage *)v91 count])
    {
LABEL_105:
      v94 = [MEMORY[0x1E695DEC8] arrayWithArray:v90];
      goto LABEL_83;
    }

    v111 = [(SSPaymentSheetRatingImage *)v91 objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v112 = v91;
      v113 = v123;
      v123[0] = MEMORY[0x1E69E9820];
      v123[1] = 3221225472;
      v114 = &unk_1E84AE648;
      v115 = __33__SSPaymentSheet__parseResponse___block_invoke_2;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_104:

        goto LABEL_105;
      }

      v116 = v91;
      v113 = v122;
      v122[0] = MEMORY[0x1E69E9820];
      v122[1] = 3221225472;
      v114 = &unk_1E84B1668;
      v115 = __33__SSPaymentSheet__parseResponse___block_invoke_3;
    }

    v113[2] = v115;
    v113[3] = v114;
    v113[4] = v90;
    [(SSPaymentSheetRatingImage *)v91 enumerateObjectsUsingBlock:v113];

    goto LABEL_104;
  }

LABEL_84:
  v96 = [v4 objectForKey:@"styles"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v97 = v96;
  }

  else
  {
    v97 = 0;
  }

  v98 = v97;

  if (v98)
  {
    [(SSPaymentSheet *)self setStyles:v98];
  }

  v99 = [v4 objectForKey:@"flexList"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v100 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v101 = v99;
    v119[0] = MEMORY[0x1E69E9820];
    v119[1] = 3221225472;
    v119[2] = __33__SSPaymentSheet__parseResponse___block_invoke_4;
    v119[3] = &unk_1E84B16E0;
    v119[4] = self;
    v120 = v98;
    v102 = v100;
    v121 = v102;
    [v101 enumerateObjectsUsingBlock:v119];
    v103 = [v102 copy];
    flexList = self->_flexList;
    self->_flexList = v103;

    v105 = [(SSPaymentSheet *)self _attributedListForFlexList:v101];
    v106 = [v105 copy];
    attributedList = self->_attributedList;
    self->_attributedList = v106;
  }

  v108 = [v4 objectForKey:@"isApplePay"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v109 = [v108 lowercaseString];
    v110 = [v109 isEqualToString:@"true"];

    if (v110)
    {
      self->_applePayClassic = 1;
    }
  }

  if (self->_shouldUppercaseText)
  {
    [(SSPaymentSheet *)self _salableInfoItemsToUppercase];
    [(SSPaymentSheet *)self _stringValuesToUppercase];
  }
}

void __33__SSPaymentSheet__parseResponse___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a2;
  v7 = [[v3 alloc] initWithDictionary:v4];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:*(*(a1 + 32) + 19) ^ 1u];
  [v7 setObject:v5 forKeyedSubscript:@"caseControl"];

  v6 = [[SSPaymentSheetPriceSectionItem alloc] initWithDictionary:v7];
  [*(a1 + 40) addObject:v6];
}

void __33__SSPaymentSheet__parseResponse___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SSPaymentSheetRatingImage alloc] initWithURLString:v3];

  [*(a1 + 32) addObject:v4];
}

void __33__SSPaymentSheet__parseResponse___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SSPaymentSheetRatingImage alloc] initWithDictionary:v3];

  [*(a1 + 32) addObject:v4];
}

void __33__SSPaymentSheet__parseResponse___block_invoke_4(uint64_t a1, void *a2)
{
  v53[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) designVersion];
  v5 = [v4 isEqualToNumber:*MEMORY[0x1E698C758]];

  if (!v5)
  {
    v6 = [v3 objectForKey:@"header"];
    v9 = [v3 objectForKey:@"headerIcon"];
    v10 = [v3 objectForKey:@"value"];
    v12 = [v3 objectForKey:@"valueStyle"];
    if ([v12 isEqualToString:@"gray"])
    {
      v13 = 1;
    }

    else
    {
      v13 = [v12 isEqualToString:@"grey"];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    if (!v10)
    {
      goto LABEL_48;
    }

    v38 = v13;
    if (v6)
    {
      if (*(*(a1 + 32) + 19) == 1)
      {
        v16 = [v6 localizedUppercaseString];

        v6 = v16;
      }

      v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6];
      if (v9)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v17 = 0;
      if (v9)
      {
LABEL_20:
        v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v9];
        goto LABEL_31;
      }
    }

    v18 = 0;
LABEL_31:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = v9;
      v26 = *(a1 + 32);
      v49 = v10;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
      v27 = v17;
      v29 = v28 = v18;
      v30 = [v26 _attributedStringForStringArray:v29 useGrey:v38];

      v18 = v28;
      v17 = v27;
      if (!v27)
      {
        goto LABEL_38;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v30 = 0;
        goto LABEL_45;
      }

      v37 = v9;
      v30 = [*(a1 + 32) _attributedStringForStringArray:v10 useGrey:v38];
      if (!v17)
      {
        goto LABEL_38;
      }
    }

    if (v30)
    {
      v47[0] = @"header";
      v47[1] = @"value";
      v48[0] = v17;
      v48[1] = v30;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
      v9 = v37;
LABEL_41:
      [*(a1 + 48) addObject:v31];

LABEL_45:
LABEL_48:

      goto LABEL_49;
    }

LABEL_38:
    v9 = v37;
    if (!v18 || !v30)
    {
      goto LABEL_45;
    }

    v45[0] = @"headerIcon";
    v45[1] = @"value";
    v46[0] = v18;
    v46[1] = v30;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];
    goto LABEL_41;
  }

  v6 = [*(a1 + 32) accountName];
  if (!v6)
  {
    v7 = +[SSAccountStore defaultStore];
    v8 = [v7 activeAccount];
    v6 = [v8 accountName];
  }

  v9 = [v3 objectForKeyedSubscript:@"value"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = [v3 objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v19 = [v3 objectForKeyedSubscript:@"style"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = [objc_opt_class() _styleDictionaryWithName:v20 styles:*(a1 + 40)];
    if (v21)
    {
      v22 = [objc_opt_class() stringWithFormattedUsernameForString:v12 username:v6];

      v23 = [objc_opt_class() _attributedStringWithString:v22 styles:v21];
      v24 = v23;
      if (v23)
      {
        v52 = @"value";
        v53[0] = v23;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
        [v10 addEntriesFromDictionary:v25];
      }

      v12 = v22;
    }

    else
    {
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __33__SSPaymentSheet__parseResponse___block_invoke_5;
      v42[3] = &unk_1E84B1690;
      v42[4] = *(a1 + 32);
      v43 = v6;
      v44 = v10;
      [v3 enumerateKeysAndObjectsUsingBlock:v42];
    }

    v32 = *(a1 + 48);
    v33 = [v10 copy];
    [v32 addObject:v33];

    goto LABEL_48;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objc_alloc_init(MEMORY[0x1E696AD40]);
    v15 = [v3 objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v15;
    }

    else
    {
      v10 = 0;
    }

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __33__SSPaymentSheet__parseResponse___block_invoke_6;
    v39[3] = &unk_1E84B16B8;
    v39[4] = *(a1 + 32);
    v40 = v14;
    v41 = *(a1 + 48);
    v12 = v14;
    [v10 enumerateObjectsUsingBlock:v39];
    v34 = *(a1 + 48);
    v50 = @"value";
    v35 = [v12 copy];
    v51 = v35;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    [v34 addObject:v36];

    goto LABEL_48;
  }

LABEL_49:
}

void __33__SSPaymentSheet__parseResponse___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [objc_opt_class() stringWithFormattedUsernameForString:v5 username:*(a1 + 40)];

  v7 = [v10 isEqualToString:@"value"];
  v8 = *(a1 + 48);
  if (v7)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6];
    [v8 setObject:v9 forKey:v10];
  }

  else
  {
    [v8 setObject:v6 forKey:v10];
  }
}

void __33__SSPaymentSheet__parseResponse___block_invoke_6(id *a1, void *a2, unint64_t a3)
{
  v19 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = v19;
  if (isKindOfClass)
  {
    v7 = v19;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = [v8 objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v8 objectForKeyedSubscript:@"style"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = objc_opt_class();
    v14 = [a1[4] styles];
    v15 = [v13 _styleDictionaryWithName:v12 styles:v14];

    v16 = [objc_opt_class() _attributedStringWithString:v10 styles:v15];
    [a1[5] appendAttributedString:v16];
    if ([a1[6] count] - 1 > a3)
    {
      v17 = a1[5];
      v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\u2028"];
      [v17 appendAttributedString:v18];
    }

    v6 = v19;
  }
}

- (id)_attributedListForFlexList:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __45__SSPaymentSheet__attributedListForFlexList___block_invoke;
  v14[3] = &unk_1E84B1668;
  v8 = v7;
  v15 = v8;
  [v5 enumerateObjectsUsingBlock:v14];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__SSPaymentSheet__attributedListForFlexList___block_invoke_2;
  v12[3] = &unk_1E84B1640;
  v12[4] = self;
  v9 = v6;
  v13 = v9;
  [v8 enumerateObjectsUsingBlock:v12];
  if ([v9 count])
  {
    v10 = [v9 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __45__SSPaymentSheet__attributedListForFlexList___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v6;
  if (isKindOfClass)
  {
    v5 = [v6 objectForKeyedSubscript:@"attributedList"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) addObject:v5];
    }

    v4 = v6;
  }
}

void __45__SSPaymentSheet__attributedListForFlexList___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45__SSPaymentSheet__attributedListForFlexList___block_invoke_3;
    v5[3] = &unk_1E84B1708;
    v4 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v6 = v4;
    [v3 enumerateKeysAndObjectsUsingBlock:v5];
  }
}

void __45__SSPaymentSheet__attributedListForFlexList___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v5 isEqualToString:@"value"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v6;
        if (v8)
        {
          v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v11 = MEMORY[0x1E69E9820];
          v12 = 3221225472;
          v13 = __45__SSPaymentSheet__attributedListForFlexList___block_invoke_4;
          v14 = &unk_1E84B1640;
          v15 = *(a1 + 32);
          v10 = v9;
          v16 = v10;
          [v8 enumerateObjectsUsingBlock:&v11];
          if ([v10 count])
          {
            [v7 setObject:v10 forKeyedSubscript:@"value"];
          }
        }
      }
    }
  }

  if ([v7 count])
  {
    [*(a1 + 40) addObject:v7];
  }
}

void __45__SSPaymentSheet__attributedListForFlexList___block_invoke_4(uint64_t a1, void *a2)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = [v9 objectForKeyedSubscript:@"header"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4];
      [v3 setObject:v5 forKeyedSubscript:@"header"];
    }

    v6 = [v9 objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [*(a1 + 32) _attributedStringForAttributedDictionary:v6];
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v8 = [v9 objectForKeyedSubscript:@"value"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [*(a1 + 32) _attributedStringForAttributedArray:v8];
      }

      else
      {
        v7 = 0;
      }

      if (!v7)
      {
        goto LABEL_12;
      }
    }

    [v3 setObject:v7 forKeyedSubscript:@"value"];
LABEL_12:
    [*(a1 + 40) addObject:v3];
  }
}

- (int64_t)_payeeTypeForRequestorValue:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"AppStore"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"iTunes"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"AppleMusic"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"iBooks"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"AppleNews"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_payeeTypeInferredFromEnumeratedTitle
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    *v35 = 138412290;
    *&v35[4] = objc_opt_class();
    v7 = *&v35[4];
    LODWORD(v34) = 12;
    v33 = v35;
    v8 = _os_log_send_and_compose_impl();

    if (!v8)
    {
      goto LABEL_12;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, v35, v34, *v35}];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, v6);
  }

LABEL_12:
  if (self->_titleType != 1)
  {
    v16 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v19 = [v16 OSLogObject];
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v18 &= 2u;
    }

    if (!v18)
    {
      goto LABEL_26;
    }

    v20 = objc_opt_class();
    *v35 = 138412290;
    *&v35[4] = v20;
    v21 = v20;
    LODWORD(v34) = 12;
    goto LABEL_24;
  }

  if ([(NSString *)self->_title isEqualToString:@"AppStore"])
  {
    return 3;
  }

  if ([(NSString *)self->_title isEqualToString:@"iTunes"])
  {
    return 5;
  }

  if ([(NSString *)self->_title isEqualToString:@"AppleMusic"])
  {
    return 1;
  }

  if ([(NSString *)self->_title isEqualToString:@"iBooks"])
  {
    return 4;
  }

  if (![(NSString *)self->_title isEqualToString:@"AppleNews"])
  {
    v16 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    v29 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v30 = v29 | 2;
    }

    else
    {
      v30 = v29;
    }

    v19 = [v16 OSLogObject];
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v30 &= 2u;
    }

    if (!v30)
    {
      goto LABEL_26;
    }

    v31 = objc_opt_class();
    title = self->_title;
    *v35 = 138412546;
    *&v35[4] = v31;
    *&v35[12] = 2112;
    *&v35[14] = title;
    v21 = v31;
    LODWORD(v34) = 22;
LABEL_24:
    v22 = _os_log_send_and_compose_impl();

    if (!v22)
    {
LABEL_27:

      return 0;
    }

    v19 = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:{4, v35, v34}];
    free(v22);
    SSFileLog(v16, @"%@", v23, v24, v25, v26, v27, v28, v19);
LABEL_26:

    goto LABEL_27;
  }

  return 2;
}

- (id)_replaceBreakingSpaceMarkupForMutableAttributedString:(id)a3
{
  v3 = a3;
  v4 = [v3 string];
  v5 = [v4 lowercaseString];

  v6 = [v5 rangeOfString:@"[br/]"];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v6;
    v9 = 0;
    do
    {
      v10 = v5;
      [v3 replaceCharactersInRange:v8 withString:{v7, @"\n"}];
      v11 = [v3 string];
      v5 = [v11 lowercaseString];

      v12 = [v5 rangeOfString:@"[br/]"];
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v8 = v12;
    }

    while (v9++ < 9);
  }

  return v3;
}

- (id)_replaceMarkupForMutableAttributedString:(id)a3 markupType:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  v7 = @"[/i]";
  v8 = @"[b]";
  v9 = @"[/b]";
  if (a4)
  {
    v9 = 0;
    v8 = 0;
  }

  if (a4 != 1)
  {
    v7 = v9;
  }

  v31 = v7;
  if (a4 == 1)
  {
    v10 = @"[i]";
  }

  else
  {
    v10 = v8;
  }

  v11 = [v5 string];
  v12 = [v11 lowercaseString];

  if ([v12 rangeOfString:v10] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = SSVCoreText();
    v14 = SSVWeakLinkedSymbolForString("CTFontCreateWithName", v13);
    if (a4)
    {
      if (a4 != 1)
      {
        goto LABEL_22;
      }

      v15 = @"Helvetica-Italic";
    }

    else
    {
      v15 = @"Helvetica-Bold";
    }

    v16 = v14(v15, 0, 14.0);
    if (v16)
    {
      v17 = v16;
      v18 = [v12 rangeOfString:v10];
      v20 = v19;
      v21 = [v12 rangeOfString:v31];
      if (v18 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v23 = v21;
        if (v21 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v24 = 0;
          do
          {
            v25 = v12;
            [v6 replaceCharactersInRange:v23 withString:{v22, &stru_1F503F418}];
            [v6 replaceCharactersInRange:v18 withString:{v20, &stru_1F503F418}];
            v26 = [v6 string];
            v12 = [v26 lowercaseString];

            v18 = [v12 rangeOfString:v10];
            v20 = v27;
            v28 = [v12 rangeOfString:v31];
            if (v18 == 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }

            v23 = v28;
            if (v28 == 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }
          }

          while (v24++ < 9);
        }
      }

      CFRelease(v17);
    }
  }

LABEL_22:

  return v6;
}

- (int64_t)_salableIconTypeForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"app"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"merchant"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"messages"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"watch"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_salableInfoItemsToUppercase
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  salableInfo = self->_salableInfo;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__SSPaymentSheet__salableInfoItemsToUppercase__block_invoke;
  v8[3] = &unk_1E84AE648;
  v9 = v3;
  v5 = v3;
  [(NSArray *)salableInfo enumerateObjectsUsingBlock:v8];
  v6 = [MEMORY[0x1E695DEC8] arrayWithArray:v5];
  v7 = self->_salableInfo;
  self->_salableInfo = v6;
}

void __46__SSPaymentSheet__salableInfoItemsToUppercase__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 localizedUppercaseString];
  [v2 addObject:v3];
}

- (void)_stringValuesToUppercase
{
  v3 = [(NSString *)self->_accountHeader localizedUppercaseString];
  accountHeader = self->_accountHeader;
  self->_accountHeader = v3;

  v5 = [(NSString *)self->_displayPrice localizedUppercaseString];
  displayPrice = self->_displayPrice;
  self->_displayPrice = v5;

  v7 = [(NSString *)self->_paymentSummary localizedUppercaseString];
  paymentSummary = self->_paymentSummary;
  self->_paymentSummary = v7;

  v9 = [(NSString *)self->_ratingHeader localizedUppercaseString];
  ratingHeader = self->_ratingHeader;
  self->_ratingHeader = v9;

  v11 = [(NSString *)self->_ratingValue localizedUppercaseString];
  ratingValue = self->_ratingValue;
  self->_ratingValue = v11;

  v13 = [(NSString *)self->_storeName localizedUppercaseString];
  storeName = self->_storeName;
  self->_storeName = v13;
}

+ (id)_attributedStringWithString:(id)a3 styles:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!_attributedStringWithString_styles__kPKPaymentContentItemLightColorAttribute)
  {
    v7 = SSVPassKitFramework();
    v8 = SSVWeakLinkedStringConstantForString("PKPaymentContentItemLightColorAttribute", v7);
    v9 = _attributedStringWithString_styles__kPKPaymentContentItemLightColorAttribute;
    _attributedStringWithString_styles__kPKPaymentContentItemLightColorAttribute = v8;
  }

  v10 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v5];
  v11 = [v6 objectForKeyedSubscript:@"color"];
  if ([v11 isEqualToString:@"gray"])
  {
  }

  else
  {
    v12 = [v6 objectForKeyedSubscript:@"color"];
    v13 = [v12 isEqualToString:@"grey"];

    if (!v13)
    {
      goto LABEL_7;
    }
  }

  v14 = _attributedStringWithString_styles__kPKPaymentContentItemLightColorAttribute;
  v15 = [v5 length];
  [v10 addAttribute:v14 value:MEMORY[0x1E695E118] range:{0, v15}];
LABEL_7:
  if (!_attributedStringWithString_styles__kPKPaymentContentItemBoldAttribute)
  {
    v16 = SSVPassKitFramework();
    v17 = SSVWeakLinkedStringConstantForString("PKPaymentContentItemBoldAttribute", v16);
    v18 = _attributedStringWithString_styles__kPKPaymentContentItemBoldAttribute;
    _attributedStringWithString_styles__kPKPaymentContentItemBoldAttribute = v17;
  }

  v19 = [v6 objectForKeyedSubscript:@"bold"];
  if (([v19 isEqualToString:@"true"] & 1) != 0 || objc_msgSend(v19, "BOOLValue"))
  {
    v20 = _attributedStringWithString_styles__kPKPaymentContentItemBoldAttribute;
    v21 = [v5 length];
    [v10 addAttribute:v20 value:MEMORY[0x1E695E118] range:{0, v21}];
  }

  v22 = [v6 objectForKeyedSubscript:@"size"];
  v23 = [v22 isEqualToString:@"large"];

  if (v23)
  {
    [v10 addAttribute:*MEMORY[0x1E698C728] value:@"large" range:{0, objc_msgSend(v5, "length")}];
  }

  v24 = [v6 objectForKeyedSubscript:@"spacingAfter"];
  v25 = v24;
  if (v24)
  {
    if ([v24 isEqualToString:@"large"])
    {
      v26 = MEMORY[0x1E698C738];
    }

    else if ([v25 isEqualToString:@"small"])
    {
      v26 = MEMORY[0x1E698C748];
    }

    else
    {
      if (![v25 isEqualToString:@"medium"])
      {
        goto LABEL_22;
      }

      v26 = MEMORY[0x1E698C740];
    }

    [v10 addAttribute:*MEMORY[0x1E698C730] value:*v26 range:{0, objc_msgSend(v5, "length")}];
  }

LABEL_22:
  v27 = [v6 objectForKeyedSubscript:@"spacingBefore"];
  v28 = v27;
  if (!v27)
  {
    goto LABEL_30;
  }

  if ([v27 isEqualToString:@"large"])
  {
    v29 = MEMORY[0x1E698C738];
  }

  else if ([v28 isEqualToString:@"small"])
  {
    v29 = MEMORY[0x1E698C748];
  }

  else
  {
    if (![v28 isEqualToString:@"medium"])
    {
      goto LABEL_30;
    }

    v29 = MEMORY[0x1E698C740];
  }

  [v10 addAttribute:*MEMORY[0x1E698C750] value:*v29 range:{0, objc_msgSend(v5, "length")}];
LABEL_30:
  v30 = [v10 copy];

  return v30;
}

+ (id)_styleDictionaryWithName:(id)a3 styles:(id)a4
{
  v5 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__SSPaymentSheet__styleDictionaryWithName_styles___block_invoke;
  v10[3] = &unk_1E84B1730;
  v11 = v5;
  v6 = v5;
  v7 = [a4 ams_mapWithTransformIgnoresNil:v10];
  v8 = [v7 firstObject];

  return v8;
}

void *__50__SSPaymentSheet__styleDictionaryWithName_styles___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"name"];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

@end