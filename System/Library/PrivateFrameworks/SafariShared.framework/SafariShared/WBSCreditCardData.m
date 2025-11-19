@interface WBSCreditCardData
- (BOOL)expirationYearIsOlderThan:(id)a3;
- (BOOL)hasSameCreditCardInformationAs:(id)a3;
- (BOOL)isCardBalanceZeroOrNegative;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToImportedCard:(id)a3;
- (BOOL)isVirtualCard;
- (BOOL)representsSameCreditCardAs:(id)a3;
- (BOOL)shouldHide;
- (BOOL)shouldShowWalletIconNextToCardDisplayText;
- (NSDictionary)dictionaryRepresentation;
- (NSString)cardDisplayText;
- (NSString)displayableCardNumberOrSuffix;
- (WBSCreditCardData)initWithCardName:(id)a3 number:(id)a4 cardholderName:(id)a5 expirationDate:(id)a6 securityCode:(id)a7;
- (WBSCreditCardData)initWithCoder:(id)a3;
- (WBSCreditCardData)initWithCreditCardCredential:(id)a3 creditCard:(id)a4;
- (WBSCreditCardData)initWithCreditCardDescriptor:(id)a3;
- (WBSCreditCardData)initWithKeychainRepresentation:(id)a3;
- (WBSCreditCardData)initWithVirtualCard:(id)a3;
- (WBSCreditCardData)initWithVirtualCardCredentials:(id)a3 virtualCard:(id)a4;
- (id)_expirationDateFormatter;
- (id)_expirationDateFromPKVirtualCard:(id)a3;
- (id)_expirationDateFromPKVirtualCardCredentials:(id)a3;
- (id)creditCardDataByMergingOtherAttributesBesidesCardNumberFromCard:(id)a3 mergeSecurityCode:(BOOL)a4 updateExpirationDate:(BOOL)a5;
- (id)creditCardDataByUpdatingLastUsedDate:(id)a3;
- (id)initWalletCardWithCardNumber:(id)a3 cardholderName:(id)a4 expirationDate:(id)a5 securityCode:(id)a6;
- (id)keychainRepresentationByMigratingExistingKeychainData:(id)a3;
- (id)keychainRepresentationForNewCard;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)test_setBalance:(id)a3;
- (void)test_setLastUsedDate:(id)a3;
@end

@implementation WBSCreditCardData

- (WBSCreditCardData)initWithCardName:(id)a3 number:(id)a4 cardholderName:(id)a5 expirationDate:(id)a6 securityCode:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v30.receiver = self;
  v30.super_class = WBSCreditCardData;
  v17 = [(WBSCreditCardData *)&v30 init];
  if (v17)
  {
    v18 = [v15 copy];
    expirationDate = v17->_expirationDate;
    v17->_expirationDate = v18;

    if (v12)
    {
      v20 = [v12 copy];
    }

    else
    {
      v20 = &stru_1F3A5E418;
    }

    cardName = v17->_cardName;
    v17->_cardName = &v20->isa;

    if (v13)
    {
      v22 = [v13 copy];
    }

    else
    {
      v22 = &stru_1F3A5E418;
    }

    cardNumber = v17->_cardNumber;
    v17->_cardNumber = &v22->isa;

    if (v14)
    {
      v24 = [v14 copy];
    }

    else
    {
      v24 = &stru_1F3A5E418;
    }

    cardholderName = v17->_cardholderName;
    v17->_cardholderName = &v24->isa;

    if (v16)
    {
      v26 = [v16 copy];
    }

    else
    {
      v26 = &stru_1F3A5E418;
    }

    cardSecurityCode = v17->_cardSecurityCode;
    v17->_cardSecurityCode = &v26->isa;

    v17->_promptToSaveSecurityCode = 1;
    v28 = v17;
  }

  return v17;
}

- (WBSCreditCardData)initWithCreditCardDescriptor:(id)a3
{
  v5 = a3;
  v6 = [v5 displayableLastFour];
  v7 = [v5 cardNickname];
  v8 = [(WBSCreditCardData *)self initWithCardName:v7 number:v6 cardholderName:0 expirationDate:0];

  if (v8)
  {
    objc_storeStrong(&v8->_cardDescriptor, a3);
    v9 = [v5 lastUsage];
    if (v9)
    {
      [v5 lastUsage];
    }

    else
    {
      [MEMORY[0x1E695DF00] now];
    }
    v10 = ;
    lastUsedDate = v8->_lastUsedDate;
    v8->_lastUsedDate = v10;

    if ([v5 type] == 3 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v12 = [v5 balance];
      balance = v8->_balance;
      v8->_balance = v12;
    }

    v14 = v8;
  }

  return v8;
}

- (WBSCreditCardData)initWithCreditCardCredential:(id)a3 creditCard:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 primaryAccountNumber];
  v10 = [v9 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F3A5E418];

  v11 = [v7 cardholderName];
  v12 = [v8 cardName];
  v13 = [v7 expirationDate];
  v14 = [v7 securityCode];
  v15 = [(WBSCreditCardData *)self initWithCardName:v12 number:v10 cardholderName:v11 expirationDate:v13 securityCode:v14];

  if (v15)
  {
    objc_storeStrong(&v15->_cardCredential, a3);
    v16 = [v8 cardDescriptor];
    cardDescriptor = v15->_cardDescriptor;
    v15->_cardDescriptor = v16;

    v18 = [v8 lastUsedDate];
    lastUsedDate = v15->_lastUsedDate;
    v15->_lastUsedDate = v18;

    v20 = [v8 balance];
    balance = v15->_balance;
    v15->_balance = v20;

    v22 = v15;
  }

  return v15;
}

- (id)initWalletCardWithCardNumber:(id)a3 cardholderName:(id)a4 expirationDate:(id)a5 securityCode:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(WBSCreditCardData *)self initWithCardName:&stru_1F3A5E418 number:v10 cardholderName:v11 expirationDate:v12 securityCode:v13];
  v15 = v14;
  if (v14)
  {
    v16 = [(WBSCreditCardData *)v14 _expirationDateFormatter];
    v17 = [v16 stringFromDate:v12];

    v30 = 0;
    v31 = &v30;
    v32 = 0x2050000000;
    v19 = getPKAutoFillCardCredentialClass(void)::softClass;
    v33 = getPKAutoFillCardCredentialClass(void)::softClass;
    if (!getPKAutoFillCardCredentialClass(void)::softClass)
    {
      PassKitCoreLibraryCore(v18);
      v31[3] = objc_getClass("PKAutoFillCardCredential");
      getPKAutoFillCardCredentialClass(void)::softClass = v31[3];
      v19 = v31[3];
    }

    v20 = v19;
    _Block_object_dispose(&v30, 8);
    v21 = [[v19 alloc] initWithCardholderName:v11 pan:v10 expiration:v17 securityCode:v13 billingAddress:0];
    cardCredential = v15->_cardCredential;
    v15->_cardCredential = v21;

    v30 = 0;
    v31 = &v30;
    v32 = 0x2050000000;
    v24 = getPKFPANCardDescriptorClass(void)::softClass;
    v33 = getPKFPANCardDescriptorClass(void)::softClass;
    if (!getPKFPANCardDescriptorClass(void)::softClass)
    {
      PassKitCoreLibraryCore(v23);
      v31[3] = objc_getClass("PKFPANCardDescriptor");
      getPKFPANCardDescriptorClass(void)::softClass = v31[3];
      v24 = v31[3];
    }

    v25 = v24;
    _Block_object_dispose(&v30, 8);
    v26 = [v24 descriptorWithCardNickname:&stru_1F3A5E418 credential:v15->_cardCredential];
    cardDescriptor = v15->_cardDescriptor;
    v15->_cardDescriptor = v26;

    v28 = v15;
  }

  return v15;
}

- (WBSCreditCardData)initWithVirtualCard:(id)a3
{
  v5 = a3;
  v6 = [(WBSCreditCardData *)self _expirationDateFromPKVirtualCard:v5];
  v7 = [v5 displayablePANSuffix];
  v8 = [v5 displayName];
  v9 = [v5 cardholderName];
  v10 = [(WBSCreditCardData *)self initWithCardName:v8 number:v7 cardholderName:v9 expirationDate:v6];

  if (v10)
  {
    v11 = [v5 lastAutoFilledBySafari];

    if (!v11)
    {
      [v5 setLastAutoFilledBySafariWithCompletion:&__block_literal_global_33];
    }

    v12 = [v5 lastAutoFilledBySafari];
    if (v12)
    {
      [v5 lastAutoFilledBySafari];
    }

    else
    {
      [MEMORY[0x1E695DF00] now];
    }
    v13 = ;
    lastUsedDate = v10->_lastUsedDate;
    v10->_lastUsedDate = v13;

    objc_storeStrong(&v10->_virtualCard, a3);
    v15 = [v5 balance];
    balance = v10->_balance;
    v10->_balance = v15;

    v17 = v10;
  }

  return v10;
}

void __41__WBSCreditCardData_initWithVirtualCard___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [v2 safari_privacyPreservingDescription];
      __41__WBSCreditCardData_initWithVirtualCard___block_invoke_cold_1(v4, v5, v3);
    }
  }
}

- (WBSCreditCardData)initWithVirtualCardCredentials:(id)a3 virtualCard:(id)a4
{
  v29[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v7 type] == 2)
  {
    v8 = [v7 billingAddress];

    if (v8)
    {
      v9 = MEMORY[0x1E695CD80];
      v10 = [v7 billingAddress];
      v11 = [v9 stringFromContact:v10 style:0];
    }

    else if ([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] == 3)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695CE18]);
      v15 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
      v29[0] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      v17 = [v14 _ios_meContactWithKeysToFetch:v16 error:0];

      if (v17)
      {
        v11 = [MEMORY[0x1E695CD80] stringFromContact:v17 style:0];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v13 = [(WBSCreditCardData *)self _expirationDateFromPKVirtualCardCredentials:v6];
  }

  else
  {
    v12 = [v7 cardholderName];
    v13 = [(WBSCreditCardData *)self _expirationDateFromPKVirtualCard:v7];
    v11 = v12;
  }

  v18 = [v6 primaryAccountNumber];
  v19 = [v18 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F3A5E418];

  v20 = [v7 displayName];
  v21 = [v6 cardSecurityCode];
  v22 = [(WBSCreditCardData *)self initWithCardName:v20 number:v19 cardholderName:v11 expirationDate:v13 securityCode:v21];

  if (v22)
  {
    v23 = [v7 lastAutoFilledBySafari];
    lastUsedDate = v22->_lastUsedDate;
    v22->_lastUsedDate = v23;

    objc_storeStrong(&v22->_virtualCard, a4);
    v25 = [v7 balance];
    balance = v22->_balance;
    v22->_balance = v25;

    v27 = v22;
  }

  return v22;
}

- (BOOL)isCardBalanceZeroOrNegative
{
  balance = self->_balance;
  if (!balance)
  {
    return 0;
  }

  v3 = [(PKCurrencyAmount *)balance amount];
  v4 = [MEMORY[0x1E696AB90] zero];
  v5 = [v3 compare:v4] != 1;

  return v5;
}

- (BOOL)isVirtualCard
{
  if (![MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled])
  {
    goto LABEL_5;
  }

  cardDescriptor = self->_cardDescriptor;
  if (!cardDescriptor)
  {
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  v4 = [(PKAutoFillCardDescriptor *)cardDescriptor type];
  if (v4 < 4)
  {
    v5 = 0xCu >> (v4 & 0xF);
  }

  else
  {
LABEL_5:
    LOBYTE(v5) = self->_virtualCard != 0;
  }

  return v5 & 1;
}

- (NSString)cardDisplayText
{
  balance = self->_balance;
  if (balance)
  {
    v4 = [(PKCurrencyAmount *)balance formattedStringValue];
  }

  else
  {
    v5 = WBSLastDigitsOfCreditCardNumber();
    if (([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled] & 1) != 0 || -[WBSCreditCardData isVirtualCard](self, "isVirtualCard"))
    {
      v4 = WBSDisplayTextForCreditCardNumber();
    }

    else
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = _WBSLocalizedString();
      v4 = [v6 localizedStringWithFormat:v7, v5];
    }
  }

  return v4;
}

- (NSString)displayableCardNumberOrSuffix
{
  if ([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled])
  {
    v3 = [(PKAutoFillCardDescriptor *)self->_cardDescriptor displayableLastFour];
  }

  else if ([(WBSCreditCardData *)self isVirtualCard])
  {
    v3 = [(PKVirtualCard *)self->_virtualCard displayablePANSuffix];
  }

  else
  {
    v3 = self->_cardNumber;
  }

  return v3;
}

- (BOOL)shouldShowWalletIconNextToCardDisplayText
{
  if ([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled])
  {
    return 0;
  }

  return [(WBSCreditCardData *)self isVirtualCard];
}

- (id)_expirationDateFromPKVirtualCardCredentials:(id)a3
{
  v4 = a3;
  v5 = [(WBSCreditCardData *)self _expirationDateFormatter];
  v6 = [v4 expiration];
  v7 = [v5 dateFromString:v6];

  return v7;
}

- (id)_expirationDateFromPKVirtualCard:(id)a3
{
  v4 = a3;
  v5 = [(WBSCreditCardData *)self _expirationDateFormatter];
  v6 = [v4 expiration];
  v7 = [v5 dateFromString:v6];

  return v7;
}

- (id)_expirationDateFormatter
{
  if ([WBSCreditCardData _expirationDateFormatter]::onceToken != -1)
  {
    [WBSCreditCardData _expirationDateFormatter];
  }

  v3 = [WBSCreditCardData _expirationDateFormatter]::expirationDateFormatter;

  return v3;
}

uint64_t __45__WBSCreditCardData__expirationDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = [WBSCreditCardData _expirationDateFormatter]::expirationDateFormatter;
  [WBSCreditCardData _expirationDateFormatter]::expirationDateFormatter = v0;

  v2 = WBSLocaleForCreditCardExpirationDate();
  [-[WBSCreditCardData _expirationDateFormatter]::expirationDateFormatter setLocale:v2];

  v3 = [WBSCreditCardData _expirationDateFormatter]::expirationDateFormatter;

  return [v3 setDateFormat:@"MM/yyyy"];
}

- (WBSCreditCardData)initWithKeychainRepresentation:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E696AE40] propertyListWithData:v4 options:0 format:0 error:0];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = [v5 objectForKeyedSubscript:@"CardNameUIString"];
      v7 = [v5 objectForKeyedSubscript:@"CardholderName"];
      v8 = [v5 objectForKeyedSubscript:@"CardNumber"];
      v9 = [v5 objectForKeyedSubscript:@"ExpirationDate"];
      v10 = [v5 objectForKeyedSubscript:@"LastUsedDate"];
      v11 = [v5 objectForKeyedSubscript:@"CardSecurityCode"];
      if (v8 && (v12 = objc_opt_class(), isNilOrKindOfClass(v6, v12)) && (v13 = objc_opt_class(), isNilOrKindOfClass(v8, v13)) && (v14 = objc_opt_class(), isNilOrKindOfClass(v7, v14)) && (v15 = objc_opt_class(), isNilOrKindOfClass(v9, v15)) && (v16 = objc_opt_class(), (isNilOrKindOfClass(v11, v16) & 1) != 0))
      {
        self = [(WBSCreditCardData *)self initWithCardName:v6 number:v8 cardholderName:v7 expirationDate:v9 securityCode:v11];
        v17 = [v5 objectForKey:@"PromptToSaveSecurityCode"];
        if (v17)
        {
          v21 = [v5 objectForKey:@"PromptToSaveSecurityCode"];
          v18 = [v21 BOOLValue];
        }

        else
        {
          v18 = 1;
        }

        [(WBSCreditCardData *)self setPromptToSaveSecurityCode:v18];
        if (v17)
        {
        }

        v19 = [(WBSCreditCardData *)self creditCardDataByUpdatingLastUsedDate:v10];
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)keychainRepresentationForNewCard
{
  v2 = MEMORY[0x1E696AE40];
  v3 = [(WBSCreditCardData *)self dictionaryRepresentation];
  v4 = [v2 dataWithPropertyList:v3 format:200 options:0 error:0];

  return v4;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_cardName forKeyedSubscript:@"CardNameUIString"];
  [v3 setObject:self->_cardholderName forKeyedSubscript:@"CardholderName"];
  [v3 setObject:self->_cardNumber forKeyedSubscript:@"CardNumber"];
  expirationDate = self->_expirationDate;
  if (expirationDate)
  {
    [v3 setObject:expirationDate forKeyedSubscript:@"ExpirationDate"];
  }

  lastUsedDate = self->_lastUsedDate;
  if (lastUsedDate)
  {
    [v3 setObject:lastUsedDate forKeyedSubscript:@"LastUsedDate"];
  }

  cardSecurityCode = self->_cardSecurityCode;
  if (cardSecurityCode)
  {
    [v3 setObject:cardSecurityCode forKeyedSubscript:@"CardSecurityCode"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_promptToSaveSecurityCode];
  [v3 setObject:v7 forKeyedSubscript:@"PromptToSaveSecurityCode"];

  v8 = [v3 copy];

  return v8;
}

- (id)keychainRepresentationByMigratingExistingKeychainData:(id)a3
{
  v40[7] = *MEMORY[0x1E69E9840];
  v30 = a3;
  v3 = *MEMORY[0x1E697AEB0];
  v39[0] = *MEMORY[0x1E697ABD0];
  v39[1] = v3;
  v40[0] = @"com.apple.safari.credit-cards";
  v40[1] = MEMORY[0x1E695E118];
  v4 = *MEMORY[0x1E697B008];
  v5 = *MEMORY[0x1E697AE88];
  v39[2] = *MEMORY[0x1E697AFF8];
  v39[3] = v5;
  v40[2] = v4;
  v40[3] = @"SafariCreditCardEntries";
  v6 = *MEMORY[0x1E697B268];
  v7 = *MEMORY[0x1E697B320];
  v39[4] = *MEMORY[0x1E697B260];
  v39[5] = v7;
  v40[4] = v6;
  v40[5] = MEMORY[0x1E695E118];
  v39[6] = *MEMORY[0x1E697B318];
  v40[6] = MEMORY[0x1E695E118];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:7];
  v29 = result = 0;
  v8 = SecItemCopyMatching(v29, &result);
  v9 = v8;
  if (v8 == -25300)
  {
LABEL_18:
    v21 = 0;
    goto LABEL_27;
  }

  if (v8)
  {
    v20 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(WBSCreditCardData *)v9 keychainRepresentationByMigratingExistingKeychainData:v20];
    }

    goto LABEL_18;
  }

  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = result;
  v10 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v10)
  {
    v11 = *v34;
    v12 = *MEMORY[0x1E697B3C0];
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [*(*(&v33 + 1) + 8 * i) objectForKeyedSubscript:v12];
        if (v14)
        {
          v32 = 0;
          v15 = [MEMORY[0x1E696AE40] propertyListWithData:v14 options:0 format:0 error:&v32];
          v16 = v32;
          if (v15)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [v15 safari_stringForKey:@"CardNumber"];
              v18 = [v30 cardNumber];
              v19 = [v17 isEqualToString:v18];

              if (v19)
              {

                goto LABEL_20;
              }
            }
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_20:

  v22 = [v15 mutableCopy];
  [v22 setObject:self->_cardName forKeyedSubscript:@"CardNameUIString"];
  [v22 setObject:self->_cardholderName forKeyedSubscript:@"CardholderName"];
  [v22 setObject:self->_cardNumber forKeyedSubscript:@"CardNumber"];
  expirationDate = self->_expirationDate;
  if (expirationDate)
  {
    [v22 setObject:expirationDate forKeyedSubscript:@"ExpirationDate"];
  }

  lastUsedDate = self->_lastUsedDate;
  if (lastUsedDate)
  {
    [v22 setObject:lastUsedDate forKeyedSubscript:@"LastUsedDate"];
  }

  cardSecurityCode = self->_cardSecurityCode;
  if (cardSecurityCode)
  {
    [v22 setObject:cardSecurityCode forKeyedSubscript:@"CardSecurityCode"];
  }

  v26 = [MEMORY[0x1E696AD98] numberWithBool:self->_promptToSaveSecurityCode];
  [v22 setObject:v26 forKeyedSubscript:@"PromptToSaveSecurityCode"];

  v21 = [MEMORY[0x1E696AE40] dataWithPropertyList:v22 format:200 options:0 error:0];

LABEL_27:

  return v21;
}

- (BOOL)expirationYearIsOlderThan:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = gregorianYearFromDate(self->_expirationDate);
    v6 = v5 < gregorianYearFromDate(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)creditCardDataByMergingOtherAttributesBesidesCardNumberFromCard:(id)a3 mergeSecurityCode:(BOOL)a4 updateExpirationDate:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = self->_cardSecurityCode;
  v10 = v9;
  if (v6)
  {
    v11 = [(NSString *)v9 length];
    if (v11)
    {
      v6 = [v8 cardSecurityCode];
      if ([v10 isEqualToString:v6])
      {
        goto LABEL_8;
      }
    }

    v12 = [v8 cardSecurityCode];
    v13 = [v12 length];

    if (v11)
    {
    }

    if (v13)
    {
      [v8 cardSecurityCode];
      v10 = v6 = v10;
LABEL_8:
    }
  }

  cardholderName = self->_cardholderName;
  v15 = [v8 cardholderName];
  if (![(NSString *)cardholderName isEqualToString:v15])
  {
LABEL_14:

    goto LABEL_15;
  }

  expirationDate = self->_expirationDate;
  v17 = [v8 expirationDate];
  if (![(NSDate *)expirationDate isEqualToDate:v17])
  {

    goto LABEL_14;
  }

  cardSecurityCode = self->_cardSecurityCode;
  v19 = [v8 cardSecurityCode];
  LODWORD(cardSecurityCode) = [(NSString *)cardSecurityCode isEqualToString:v19];

  if (cardSecurityCode)
  {
    v20 = self;
    goto LABEL_50;
  }

LABEL_15:
  if (v5)
  {
    v21 = [v8 expirationDate];
    if (v21)
    {
      v22 = [v8 expirationDate];
      if ([(WBSCreditCardData *)self expirationYearIsOlderThan:v22])
      {
        v23 = [v8 expirationDate];
      }

      else
      {
        v23 = self->_expirationDate;
      }

      v24 = v23;
    }

    else
    {
      v24 = self->_expirationDate;
    }
  }

  else
  {
    v24 = self->_expirationDate;
  }

  if ([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled])
  {
    v25 = [(PKAutoFillCardCredential *)self->_cardCredential mutableCopy];
    v26 = [(NSString *)self->_cardholderName length];
    if (v26)
    {
      v27 = self->_cardholderName;
    }

    else
    {
      v27 = [v8 cardholderName];
    }

    [(NSDate *)v25 setCardholderName:v27];
    if (!v26)
    {
    }

    if (objc_opt_respondsToSelector())
    {
      [(NSDate *)v25 setExpirationDate:v24];
    }

    else
    {
      v35 = [(WBSCreditCardData *)self _expirationDateFormatter];
      v36 = [v35 stringFromDate:v24];
      [(NSDate *)v25 setExpiration:v36];
    }

    [(NSDate *)v25 setSecurityCode:v10];
    v37 = [WBSCreditCardData alloc];
    cardNumber = self->_cardNumber;
    cardName = self->_cardName;
    v40 = [(NSString *)self->_cardholderName length];
    if (v40)
    {
      v41 = self->_cardholderName;
    }

    else
    {
      v41 = [v8 cardholderName];
    }

    v42 = [(WBSCreditCardData *)v37 initWithCardName:cardName number:cardNumber cardholderName:v41 expirationDate:v24 securityCode:v10];
    if (!v40)
    {
    }

    [(WBSCreditCardData *)v42 setCardDescriptor:self->_cardDescriptor];
    v43 = [WBSCreditCardData alloc];
    v44 = [(NSDate *)v25 copy];
    v20 = [(WBSCreditCardData *)v43 initWithCreditCardCredential:v44 creditCard:v42];
  }

  else
  {
    v28 = [v8 lastUsedDate];
    v25 = v28;
    if (!v28 || self->_lastUsedDate && [(NSDate *)v28 compare:?]== NSOrderedAscending)
    {
      v29 = self->_lastUsedDate;

      v25 = v29;
    }

    v30 = [WBSCreditCardData alloc];
    v31 = self->_cardNumber;
    v32 = self->_cardName;
    v33 = [(NSString *)self->_cardholderName length];
    if (v33)
    {
      v34 = self->_cardholderName;
    }

    else
    {
      v34 = [v8 cardholderName];
    }

    v20 = [(WBSCreditCardData *)v30 initWithCardName:v32 number:v31 cardholderName:v34 expirationDate:v24 securityCode:v10];
    if (!v33)
    {
    }

    [(WBSCreditCardData *)v20 setLastUsedDate:v25];
    -[WBSCreditCardData setPromptToSaveSecurityCode:](v20, "setPromptToSaveSecurityCode:", [v8 promptToSaveSecurityCode]);
  }

LABEL_50:

  return v20;
}

- (id)creditCardDataByUpdatingLastUsedDate:(id)a3
{
  v4 = a3;
  v5 = [[WBSCreditCardData alloc] initWithCardName:self->_cardName number:self->_cardNumber cardholderName:self->_cardholderName expirationDate:self->_expirationDate securityCode:self->_cardSecurityCode];
  if ([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled])
  {
    [(WBSCreditCardData *)v5 setCardDescriptor:self->_cardDescriptor];
    [(WBSCreditCardData *)v5 setCardCredential:self->_cardCredential];
  }

  [(WBSCreditCardData *)v5 setLastUsedDate:v4];
  [(WBSCreditCardData *)v5 setPromptToSaveSecurityCode:self->_promptToSaveSecurityCode];

  return v5;
}

- (BOOL)representsSameCreditCardAs:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled])
  {
    v5 = [v4 cardDescriptor];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [v4 cardDescriptor];
      v8 = [v7 identifier];
      v9 = [(PKAutoFillCardDescriptor *)self->_cardDescriptor identifier];
      v10 = [v8 isEqualToString:v9];
LABEL_7:
      v11 = v10;

      goto LABEL_8;
    }
  }

  if (([v4 isEqual:self] & 1) == 0)
  {
    v7 = [v4 virtualCard];
    v8 = [v7 identifier];
    v9 = [(PKVirtualCard *)self->_virtualCard identifier];
    v10 = [v8 isEqualToString:v9];
    goto LABEL_7;
  }

  v11 = 1;
LABEL_8:

  return v11;
}

- (BOOL)hasSameCreditCardInformationAs:(id)a3
{
  v4 = [a3 cardNumber];
  if (v4)
  {
    v5 = [(NSString *)self->_cardNumber isEqualToString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToImportedCard:(id)a3
{
  v3 = a3;
  v4 = [v3 cardName];
  if (WBSIsEqual())
  {
    v5 = [v3 cardholderName];
    if (WBSIsEqual())
    {
      v6 = [v3 cardNumber];
      if (WBSIsEqual())
      {
        v7 = [v3 expirationDate];
        if (WBSIsEqual())
        {
          v8 = [v3 lastUsedDate];
          v9 = WBSIsEqual();
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)test_setBalance:(id)a3
{
  v5 = a3;
  if ([MEMORY[0x1E69C8880] isInternalInstall])
  {
    objc_storeStrong(&self->_balance, a3);
  }
}

- (void)test_setLastUsedDate:(id)a3
{
  v5 = a3;
  if ([MEMORY[0x1E69C8880] isInternalInstall])
  {
    objc_storeStrong(&self->_lastUsedDate, a3);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(WBSCreditCardData *)v5 balance];
      v7 = WBSIsEqual();

      if (v7)
      {
        v8 = [(WBSCreditCardData *)v5 cardName];
        if (WBSIsEqual())
        {
          v9 = [(WBSCreditCardData *)v5 cardholderName];
          if (WBSIsEqual())
          {
            v10 = [(WBSCreditCardData *)v5 cardNumber];
            if (WBSIsEqual())
            {
              v11 = [(WBSCreditCardData *)v5 expirationDate];
              if (WBSIsEqual())
              {
                v12 = [(WBSCreditCardData *)v5 cardSecurityCode];
                v13 = WBSIsEqual();
              }

              else
              {
                v13 = 0;
              }
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_cardName hash];
  v4 = [(NSString *)self->_cardholderName hash]^ v3;
  v5 = [(NSString *)self->_cardNumber hash];
  v6 = v4 ^ v5 ^ [(NSDate *)self->_expirationDate hash];
  return v6 ^ [(NSString *)self->_cardSecurityCode hash];
}

- (BOOL)shouldHide
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 BOOLForKey:@"DebugSkipCreditCardValidation"];

  if (v4)
  {
    return 0;
  }

  [(NSDate *)self->_expirationDate timeIntervalSinceNow];
  return v6 < -31536000.0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_cardName forKey:@"CardNameUIString"];
  [v4 encodeObject:self->_cardholderName forKey:@"CardholderName"];
  [v4 encodeObject:self->_cardNumber forKey:@"CardNumber"];
  [v4 encodeObject:self->_expirationDate forKey:@"ExpirationDate"];
  [v4 encodeObject:self->_lastUsedDate forKey:@"LastUsedDate"];
  [v4 encodeObject:self->_cardSecurityCode forKey:@"CardSecurityCode"];
  [v4 encodeObject:self->_virtualCard forKey:@"VirtualCard"];
}

- (WBSCreditCardData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = v4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v6 = getPKVirtualCardClass(void)::softClass;
  v19 = getPKVirtualCardClass(void)::softClass;
  if (!getPKVirtualCardClass(void)::softClass)
  {
    PassKitCoreLibraryCore(v4);
    v17[3] = objc_getClass("PKVirtualCard");
    getPKVirtualCardClass(void)::softClass = v17[3];
    v6 = v17[3];
  }

  v7 = v6;
  _Block_object_dispose(&v16, 8);
  v8 = [v5 decodeObjectOfClass:v6 forKey:@"VirtualCard"];
  if (v8)
  {
    v9 = [(WBSCreditCardData *)self initWithVirtualCard:v8];
  }

  else
  {
    v8 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"CardNameUIString"];
    v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"CardholderName"];
    v11 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"CardNumber"];
    v12 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"ExpirationDate"];
    v13 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"LastUsedDate"];
    v14 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"CardSecurityCode"];
    v9 = [(WBSCreditCardData *)self initWithCardName:v8 number:v11 cardholderName:v10 expirationDate:v12 securityCode:v14];
    [(WBSCreditCardData *)v9 setLastUsedDate:v13];
  }

  return v9;
}

void __41__WBSCreditCardData_initWithVirtualCard___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Failed to update last used date on virtual card %{public}@", buf, 0xCu);
}

- (void)keychainRepresentationByMigratingExistingKeychainData:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "SecItemCopyMatching failed fetching credit cards with error %d", v2, 8u);
}

@end