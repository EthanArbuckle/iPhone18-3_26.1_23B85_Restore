@interface WBSCreditCardData
- (BOOL)expirationYearIsOlderThan:(id)than;
- (BOOL)hasSameCreditCardInformationAs:(id)as;
- (BOOL)isCardBalanceZeroOrNegative;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToImportedCard:(id)card;
- (BOOL)isVirtualCard;
- (BOOL)representsSameCreditCardAs:(id)as;
- (BOOL)shouldHide;
- (BOOL)shouldShowWalletIconNextToCardDisplayText;
- (NSDictionary)dictionaryRepresentation;
- (NSString)cardDisplayText;
- (NSString)displayableCardNumberOrSuffix;
- (WBSCreditCardData)initWithCardName:(id)name number:(id)number cardholderName:(id)cardholderName expirationDate:(id)date securityCode:(id)code;
- (WBSCreditCardData)initWithCoder:(id)coder;
- (WBSCreditCardData)initWithCreditCardCredential:(id)credential creditCard:(id)card;
- (WBSCreditCardData)initWithCreditCardDescriptor:(id)descriptor;
- (WBSCreditCardData)initWithKeychainRepresentation:(id)representation;
- (WBSCreditCardData)initWithVirtualCard:(id)card;
- (WBSCreditCardData)initWithVirtualCardCredentials:(id)credentials virtualCard:(id)card;
- (id)_expirationDateFormatter;
- (id)_expirationDateFromPKVirtualCard:(id)card;
- (id)_expirationDateFromPKVirtualCardCredentials:(id)credentials;
- (id)creditCardDataByMergingOtherAttributesBesidesCardNumberFromCard:(id)card mergeSecurityCode:(BOOL)code updateExpirationDate:(BOOL)date;
- (id)creditCardDataByUpdatingLastUsedDate:(id)date;
- (id)initWalletCardWithCardNumber:(id)number cardholderName:(id)name expirationDate:(id)date securityCode:(id)code;
- (id)keychainRepresentationByMigratingExistingKeychainData:(id)data;
- (id)keychainRepresentationForNewCard;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)test_setBalance:(id)balance;
- (void)test_setLastUsedDate:(id)date;
@end

@implementation WBSCreditCardData

- (WBSCreditCardData)initWithCardName:(id)name number:(id)number cardholderName:(id)cardholderName expirationDate:(id)date securityCode:(id)code
{
  nameCopy = name;
  numberCopy = number;
  cardholderNameCopy = cardholderName;
  dateCopy = date;
  codeCopy = code;
  v30.receiver = self;
  v30.super_class = WBSCreditCardData;
  v17 = [(WBSCreditCardData *)&v30 init];
  if (v17)
  {
    v18 = [dateCopy copy];
    expirationDate = v17->_expirationDate;
    v17->_expirationDate = v18;

    if (nameCopy)
    {
      v20 = [nameCopy copy];
    }

    else
    {
      v20 = &stru_1F3A5E418;
    }

    cardName = v17->_cardName;
    v17->_cardName = &v20->isa;

    if (numberCopy)
    {
      v22 = [numberCopy copy];
    }

    else
    {
      v22 = &stru_1F3A5E418;
    }

    cardNumber = v17->_cardNumber;
    v17->_cardNumber = &v22->isa;

    if (cardholderNameCopy)
    {
      v24 = [cardholderNameCopy copy];
    }

    else
    {
      v24 = &stru_1F3A5E418;
    }

    cardholderName = v17->_cardholderName;
    v17->_cardholderName = &v24->isa;

    if (codeCopy)
    {
      v26 = [codeCopy copy];
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

- (WBSCreditCardData)initWithCreditCardDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  displayableLastFour = [descriptorCopy displayableLastFour];
  cardNickname = [descriptorCopy cardNickname];
  v8 = [(WBSCreditCardData *)self initWithCardName:cardNickname number:displayableLastFour cardholderName:0 expirationDate:0];

  if (v8)
  {
    objc_storeStrong(&v8->_cardDescriptor, descriptor);
    lastUsage = [descriptorCopy lastUsage];
    if (lastUsage)
    {
      [descriptorCopy lastUsage];
    }

    else
    {
      [MEMORY[0x1E695DF00] now];
    }
    v10 = ;
    lastUsedDate = v8->_lastUsedDate;
    v8->_lastUsedDate = v10;

    if ([descriptorCopy type] == 3 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      balance = [descriptorCopy balance];
      balance = v8->_balance;
      v8->_balance = balance;
    }

    v14 = v8;
  }

  return v8;
}

- (WBSCreditCardData)initWithCreditCardCredential:(id)credential creditCard:(id)card
{
  credentialCopy = credential;
  cardCopy = card;
  primaryAccountNumber = [credentialCopy primaryAccountNumber];
  v10 = [primaryAccountNumber stringByReplacingOccurrencesOfString:@" " withString:&stru_1F3A5E418];

  cardholderName = [credentialCopy cardholderName];
  cardName = [cardCopy cardName];
  expirationDate = [credentialCopy expirationDate];
  securityCode = [credentialCopy securityCode];
  v15 = [(WBSCreditCardData *)self initWithCardName:cardName number:v10 cardholderName:cardholderName expirationDate:expirationDate securityCode:securityCode];

  if (v15)
  {
    objc_storeStrong(&v15->_cardCredential, credential);
    cardDescriptor = [cardCopy cardDescriptor];
    cardDescriptor = v15->_cardDescriptor;
    v15->_cardDescriptor = cardDescriptor;

    lastUsedDate = [cardCopy lastUsedDate];
    lastUsedDate = v15->_lastUsedDate;
    v15->_lastUsedDate = lastUsedDate;

    balance = [cardCopy balance];
    balance = v15->_balance;
    v15->_balance = balance;

    v22 = v15;
  }

  return v15;
}

- (id)initWalletCardWithCardNumber:(id)number cardholderName:(id)name expirationDate:(id)date securityCode:(id)code
{
  numberCopy = number;
  nameCopy = name;
  dateCopy = date;
  codeCopy = code;
  v14 = [(WBSCreditCardData *)self initWithCardName:&stru_1F3A5E418 number:numberCopy cardholderName:nameCopy expirationDate:dateCopy securityCode:codeCopy];
  v15 = v14;
  if (v14)
  {
    _expirationDateFormatter = [(WBSCreditCardData *)v14 _expirationDateFormatter];
    v17 = [_expirationDateFormatter stringFromDate:dateCopy];

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
    v21 = [[v19 alloc] initWithCardholderName:nameCopy pan:numberCopy expiration:v17 securityCode:codeCopy billingAddress:0];
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

- (WBSCreditCardData)initWithVirtualCard:(id)card
{
  cardCopy = card;
  v6 = [(WBSCreditCardData *)self _expirationDateFromPKVirtualCard:cardCopy];
  displayablePANSuffix = [cardCopy displayablePANSuffix];
  displayName = [cardCopy displayName];
  cardholderName = [cardCopy cardholderName];
  v10 = [(WBSCreditCardData *)self initWithCardName:displayName number:displayablePANSuffix cardholderName:cardholderName expirationDate:v6];

  if (v10)
  {
    lastAutoFilledBySafari = [cardCopy lastAutoFilledBySafari];

    if (!lastAutoFilledBySafari)
    {
      [cardCopy setLastAutoFilledBySafariWithCompletion:&__block_literal_global_33];
    }

    lastAutoFilledBySafari2 = [cardCopy lastAutoFilledBySafari];
    if (lastAutoFilledBySafari2)
    {
      [cardCopy lastAutoFilledBySafari];
    }

    else
    {
      [MEMORY[0x1E695DF00] now];
    }
    v13 = ;
    lastUsedDate = v10->_lastUsedDate;
    v10->_lastUsedDate = v13;

    objc_storeStrong(&v10->_virtualCard, card);
    balance = [cardCopy balance];
    balance = v10->_balance;
    v10->_balance = balance;

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

- (WBSCreditCardData)initWithVirtualCardCredentials:(id)credentials virtualCard:(id)card
{
  v29[1] = *MEMORY[0x1E69E9840];
  credentialsCopy = credentials;
  cardCopy = card;
  if ([cardCopy type] == 2)
  {
    billingAddress = [cardCopy billingAddress];

    if (billingAddress)
    {
      v9 = MEMORY[0x1E695CD80];
      billingAddress2 = [cardCopy billingAddress];
      v11 = [v9 stringFromContact:billingAddress2 style:0];
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

    v13 = [(WBSCreditCardData *)self _expirationDateFromPKVirtualCardCredentials:credentialsCopy];
  }

  else
  {
    cardholderName = [cardCopy cardholderName];
    v13 = [(WBSCreditCardData *)self _expirationDateFromPKVirtualCard:cardCopy];
    v11 = cardholderName;
  }

  primaryAccountNumber = [credentialsCopy primaryAccountNumber];
  v19 = [primaryAccountNumber stringByReplacingOccurrencesOfString:@" " withString:&stru_1F3A5E418];

  displayName = [cardCopy displayName];
  cardSecurityCode = [credentialsCopy cardSecurityCode];
  v22 = [(WBSCreditCardData *)self initWithCardName:displayName number:v19 cardholderName:v11 expirationDate:v13 securityCode:cardSecurityCode];

  if (v22)
  {
    lastAutoFilledBySafari = [cardCopy lastAutoFilledBySafari];
    lastUsedDate = v22->_lastUsedDate;
    v22->_lastUsedDate = lastAutoFilledBySafari;

    objc_storeStrong(&v22->_virtualCard, card);
    balance = [cardCopy balance];
    balance = v22->_balance;
    v22->_balance = balance;

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

  amount = [(PKCurrencyAmount *)balance amount];
  zero = [MEMORY[0x1E696AB90] zero];
  v5 = [amount compare:zero] != 1;

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

  type = [(PKAutoFillCardDescriptor *)cardDescriptor type];
  if (type < 4)
  {
    v5 = 0xCu >> (type & 0xF);
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
    formattedStringValue = [(PKCurrencyAmount *)balance formattedStringValue];
  }

  else
  {
    v5 = WBSLastDigitsOfCreditCardNumber();
    if (([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled] & 1) != 0 || -[WBSCreditCardData isVirtualCard](self, "isVirtualCard"))
    {
      formattedStringValue = WBSDisplayTextForCreditCardNumber();
    }

    else
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = _WBSLocalizedString();
      formattedStringValue = [v6 localizedStringWithFormat:v7, v5];
    }
  }

  return formattedStringValue;
}

- (NSString)displayableCardNumberOrSuffix
{
  if ([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled])
  {
    displayableLastFour = [(PKAutoFillCardDescriptor *)self->_cardDescriptor displayableLastFour];
  }

  else if ([(WBSCreditCardData *)self isVirtualCard])
  {
    displayableLastFour = [(PKVirtualCard *)self->_virtualCard displayablePANSuffix];
  }

  else
  {
    displayableLastFour = self->_cardNumber;
  }

  return displayableLastFour;
}

- (BOOL)shouldShowWalletIconNextToCardDisplayText
{
  if ([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled])
  {
    return 0;
  }

  return [(WBSCreditCardData *)self isVirtualCard];
}

- (id)_expirationDateFromPKVirtualCardCredentials:(id)credentials
{
  credentialsCopy = credentials;
  _expirationDateFormatter = [(WBSCreditCardData *)self _expirationDateFormatter];
  expiration = [credentialsCopy expiration];
  v7 = [_expirationDateFormatter dateFromString:expiration];

  return v7;
}

- (id)_expirationDateFromPKVirtualCard:(id)card
{
  cardCopy = card;
  _expirationDateFormatter = [(WBSCreditCardData *)self _expirationDateFormatter];
  expiration = [cardCopy expiration];
  v7 = [_expirationDateFormatter dateFromString:expiration];

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

- (WBSCreditCardData)initWithKeychainRepresentation:(id)representation
{
  representationCopy = representation;
  if (representationCopy)
  {
    v5 = [MEMORY[0x1E696AE40] propertyListWithData:representationCopy options:0 format:0 error:0];
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
          bOOLValue = [v21 BOOLValue];
        }

        else
        {
          bOOLValue = 1;
        }

        [(WBSCreditCardData *)self setPromptToSaveSecurityCode:bOOLValue];
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
  dictionaryRepresentation = [(WBSCreditCardData *)self dictionaryRepresentation];
  v4 = [v2 dataWithPropertyList:dictionaryRepresentation format:200 options:0 error:0];

  return v4;
}

- (NSDictionary)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_cardName forKeyedSubscript:@"CardNameUIString"];
  [dictionary setObject:self->_cardholderName forKeyedSubscript:@"CardholderName"];
  [dictionary setObject:self->_cardNumber forKeyedSubscript:@"CardNumber"];
  expirationDate = self->_expirationDate;
  if (expirationDate)
  {
    [dictionary setObject:expirationDate forKeyedSubscript:@"ExpirationDate"];
  }

  lastUsedDate = self->_lastUsedDate;
  if (lastUsedDate)
  {
    [dictionary setObject:lastUsedDate forKeyedSubscript:@"LastUsedDate"];
  }

  cardSecurityCode = self->_cardSecurityCode;
  if (cardSecurityCode)
  {
    [dictionary setObject:cardSecurityCode forKeyedSubscript:@"CardSecurityCode"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_promptToSaveSecurityCode];
  [dictionary setObject:v7 forKeyedSubscript:@"PromptToSaveSecurityCode"];

  v8 = [dictionary copy];

  return v8;
}

- (id)keychainRepresentationByMigratingExistingKeychainData:(id)data
{
  v40[7] = *MEMORY[0x1E69E9840];
  dataCopy = data;
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
              cardNumber = [dataCopy cardNumber];
              v19 = [v17 isEqualToString:cardNumber];

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

- (BOOL)expirationYearIsOlderThan:(id)than
{
  thanCopy = than;
  if (thanCopy)
  {
    v5 = gregorianYearFromDate(self->_expirationDate);
    v6 = v5 < gregorianYearFromDate(thanCopy);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)creditCardDataByMergingOtherAttributesBesidesCardNumberFromCard:(id)card mergeSecurityCode:(BOOL)code updateExpirationDate:(BOOL)date
{
  dateCopy = date;
  codeCopy = code;
  cardCopy = card;
  v9 = self->_cardSecurityCode;
  v10 = v9;
  if (codeCopy)
  {
    v11 = [(NSString *)v9 length];
    if (v11)
    {
      codeCopy = [cardCopy cardSecurityCode];
      if ([v10 isEqualToString:codeCopy])
      {
        goto LABEL_8;
      }
    }

    cardSecurityCode = [cardCopy cardSecurityCode];
    v13 = [cardSecurityCode length];

    if (v11)
    {
    }

    if (v13)
    {
      [cardCopy cardSecurityCode];
      v10 = codeCopy = v10;
LABEL_8:
    }
  }

  cardholderName = self->_cardholderName;
  cardholderName = [cardCopy cardholderName];
  if (![(NSString *)cardholderName isEqualToString:cardholderName])
  {
LABEL_14:

    goto LABEL_15;
  }

  expirationDate = self->_expirationDate;
  expirationDate = [cardCopy expirationDate];
  if (![(NSDate *)expirationDate isEqualToDate:expirationDate])
  {

    goto LABEL_14;
  }

  cardSecurityCode = self->_cardSecurityCode;
  cardSecurityCode2 = [cardCopy cardSecurityCode];
  LODWORD(cardSecurityCode) = [(NSString *)cardSecurityCode isEqualToString:cardSecurityCode2];

  if (cardSecurityCode)
  {
    selfCopy = self;
    goto LABEL_50;
  }

LABEL_15:
  if (dateCopy)
  {
    expirationDate2 = [cardCopy expirationDate];
    if (expirationDate2)
    {
      expirationDate3 = [cardCopy expirationDate];
      if ([(WBSCreditCardData *)self expirationYearIsOlderThan:expirationDate3])
      {
        expirationDate4 = [cardCopy expirationDate];
      }

      else
      {
        expirationDate4 = self->_expirationDate;
      }

      v24 = expirationDate4;
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
      cardholderName2 = self->_cardholderName;
    }

    else
    {
      cardholderName2 = [cardCopy cardholderName];
    }

    [(NSDate *)v25 setCardholderName:cardholderName2];
    if (!v26)
    {
    }

    if (objc_opt_respondsToSelector())
    {
      [(NSDate *)v25 setExpirationDate:v24];
    }

    else
    {
      _expirationDateFormatter = [(WBSCreditCardData *)self _expirationDateFormatter];
      v36 = [_expirationDateFormatter stringFromDate:v24];
      [(NSDate *)v25 setExpiration:v36];
    }

    [(NSDate *)v25 setSecurityCode:v10];
    v37 = [WBSCreditCardData alloc];
    cardNumber = self->_cardNumber;
    cardName = self->_cardName;
    v40 = [(NSString *)self->_cardholderName length];
    if (v40)
    {
      cardholderName3 = self->_cardholderName;
    }

    else
    {
      cardholderName3 = [cardCopy cardholderName];
    }

    v42 = [(WBSCreditCardData *)v37 initWithCardName:cardName number:cardNumber cardholderName:cardholderName3 expirationDate:v24 securityCode:v10];
    if (!v40)
    {
    }

    [(WBSCreditCardData *)v42 setCardDescriptor:self->_cardDescriptor];
    v43 = [WBSCreditCardData alloc];
    v44 = [(NSDate *)v25 copy];
    selfCopy = [(WBSCreditCardData *)v43 initWithCreditCardCredential:v44 creditCard:v42];
  }

  else
  {
    lastUsedDate = [cardCopy lastUsedDate];
    v25 = lastUsedDate;
    if (!lastUsedDate || self->_lastUsedDate && [(NSDate *)lastUsedDate compare:?]== NSOrderedAscending)
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
      cardholderName4 = self->_cardholderName;
    }

    else
    {
      cardholderName4 = [cardCopy cardholderName];
    }

    selfCopy = [(WBSCreditCardData *)v30 initWithCardName:v32 number:v31 cardholderName:cardholderName4 expirationDate:v24 securityCode:v10];
    if (!v33)
    {
    }

    [(WBSCreditCardData *)selfCopy setLastUsedDate:v25];
    -[WBSCreditCardData setPromptToSaveSecurityCode:](selfCopy, "setPromptToSaveSecurityCode:", [cardCopy promptToSaveSecurityCode]);
  }

LABEL_50:

  return selfCopy;
}

- (id)creditCardDataByUpdatingLastUsedDate:(id)date
{
  dateCopy = date;
  v5 = [[WBSCreditCardData alloc] initWithCardName:self->_cardName number:self->_cardNumber cardholderName:self->_cardholderName expirationDate:self->_expirationDate securityCode:self->_cardSecurityCode];
  if ([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled])
  {
    [(WBSCreditCardData *)v5 setCardDescriptor:self->_cardDescriptor];
    [(WBSCreditCardData *)v5 setCardCredential:self->_cardCredential];
  }

  [(WBSCreditCardData *)v5 setLastUsedDate:dateCopy];
  [(WBSCreditCardData *)v5 setPromptToSaveSecurityCode:self->_promptToSaveSecurityCode];

  return v5;
}

- (BOOL)representsSameCreditCardAs:(id)as
{
  asCopy = as;
  if ([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled])
  {
    cardDescriptor = [asCopy cardDescriptor];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      cardDescriptor2 = [asCopy cardDescriptor];
      identifier = [cardDescriptor2 identifier];
      identifier2 = [(PKAutoFillCardDescriptor *)self->_cardDescriptor identifier];
      v10 = [identifier isEqualToString:identifier2];
LABEL_7:
      v11 = v10;

      goto LABEL_8;
    }
  }

  if (([asCopy isEqual:self] & 1) == 0)
  {
    cardDescriptor2 = [asCopy virtualCard];
    identifier = [cardDescriptor2 identifier];
    identifier2 = [(PKVirtualCard *)self->_virtualCard identifier];
    v10 = [identifier isEqualToString:identifier2];
    goto LABEL_7;
  }

  v11 = 1;
LABEL_8:

  return v11;
}

- (BOOL)hasSameCreditCardInformationAs:(id)as
{
  cardNumber = [as cardNumber];
  if (cardNumber)
  {
    v5 = [(NSString *)self->_cardNumber isEqualToString:cardNumber];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToImportedCard:(id)card
{
  cardCopy = card;
  cardName = [cardCopy cardName];
  if (WBSIsEqual())
  {
    cardholderName = [cardCopy cardholderName];
    if (WBSIsEqual())
    {
      cardNumber = [cardCopy cardNumber];
      if (WBSIsEqual())
      {
        expirationDate = [cardCopy expirationDate];
        if (WBSIsEqual())
        {
          lastUsedDate = [cardCopy lastUsedDate];
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

- (void)test_setBalance:(id)balance
{
  balanceCopy = balance;
  if ([MEMORY[0x1E69C8880] isInternalInstall])
  {
    objc_storeStrong(&self->_balance, balance);
  }
}

- (void)test_setLastUsedDate:(id)date
{
  dateCopy = date;
  if ([MEMORY[0x1E69C8880] isInternalInstall])
  {
    objc_storeStrong(&self->_lastUsedDate, date);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      balance = [(WBSCreditCardData *)v5 balance];
      v7 = WBSIsEqual();

      if (v7)
      {
        cardName = [(WBSCreditCardData *)v5 cardName];
        if (WBSIsEqual())
        {
          cardholderName = [(WBSCreditCardData *)v5 cardholderName];
          if (WBSIsEqual())
          {
            cardNumber = [(WBSCreditCardData *)v5 cardNumber];
            if (WBSIsEqual())
            {
              expirationDate = [(WBSCreditCardData *)v5 expirationDate];
              if (WBSIsEqual())
              {
                cardSecurityCode = [(WBSCreditCardData *)v5 cardSecurityCode];
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
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"DebugSkipCreditCardValidation"];

  if (v4)
  {
    return 0;
  }

  [(NSDate *)self->_expirationDate timeIntervalSinceNow];
  return v6 < -31536000.0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_cardName forKey:@"CardNameUIString"];
  [coderCopy encodeObject:self->_cardholderName forKey:@"CardholderName"];
  [coderCopy encodeObject:self->_cardNumber forKey:@"CardNumber"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"ExpirationDate"];
  [coderCopy encodeObject:self->_lastUsedDate forKey:@"LastUsedDate"];
  [coderCopy encodeObject:self->_cardSecurityCode forKey:@"CardSecurityCode"];
  [coderCopy encodeObject:self->_virtualCard forKey:@"VirtualCard"];
}

- (WBSCreditCardData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = coderCopy;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v6 = getPKVirtualCardClass(void)::softClass;
  v19 = getPKVirtualCardClass(void)::softClass;
  if (!getPKVirtualCardClass(void)::softClass)
  {
    PassKitCoreLibraryCore(coderCopy);
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