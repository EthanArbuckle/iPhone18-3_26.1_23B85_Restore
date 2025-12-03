@interface PKVirtualCard
+ (id)cardsForPaymentPass:(id)pass;
+ (id)cardsForPaymentPass:(id)pass accordingToWebService:(id)service;
+ (id)demoVPANVirtualCards;
+ (int64_t)countOfVirtualCards;
+ (void)queryKeychainForVirtualCards:(id)cards;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSafariEntryWithPrimaryAccountNumber:(id)number expirationDate:(id)date;
- (BOOL)requiresAuthentication;
- (NSString)displayablePANSuffix;
- (PKVirtualCard)initWithCoder:(id)coder;
- (PKVirtualCard)initWithDictionary:(id)dictionary;
- (PKVirtualCard)initWithKeychainData:(id)data;
- (id)_wrapperWithType:(unint64_t)type identifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)generateHashWithPrimaryAccountNumber:(id)number expirationDate:(id)date;
- (id)keychainVirtualCard;
- (id)mergeVirtualCardWith:(id)with;
- (unint64_t)hash;
- (void)deleteKeychainVirtualCard;
- (void)deleteLocalKeychainVirtualCard;
- (void)encodeWithCoder:(id)coder;
- (void)setContactNameEnteredInSafari:(id)safari completion:(id)completion;
- (void)setLastAutoFilledBySafariWithCompletion:(id)completion;
- (void)setNameFromSafari:(id)safari;
- (void)writeKeychainVirtualCardToKeychain;
@end

@implementation PKVirtualCard

+ (id)cardsForPaymentPass:(id)pass
{
  passCopy = pass;
  v5 = +[PKPaymentWebService sharedService];
  v6 = [self cardsForPaymentPass:passCopy accordingToWebService:v5];

  return v6;
}

+ (id)cardsForPaymentPass:(id)pass accordingToWebService:(id)service
{
  passCopy = pass;
  serviceCopy = service;
  if ([passCopy supportsVirtualCardNumberAccordingToWebService:serviceCopy])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    devicePrimaryPaymentApplication = [passCopy devicePrimaryPaymentApplication];
    virtualCardIdentifier = [devicePrimaryPaymentApplication virtualCardIdentifier];
    if (virtualCardIdentifier)
    {
      v10 = objc_alloc_init(PKVirtualCard);
      [(PKVirtualCard *)v10 setIdentifier:virtualCardIdentifier];
      [(PKVirtualCard *)v10 setType:2];
      primaryAccountNumberSuffix = [passCopy primaryAccountNumberSuffix];
      [(PKVirtualCard *)v10 setFPANSuffix:primaryAccountNumberSuffix];

      dpanSuffix = [devicePrimaryPaymentApplication dpanSuffix];
      [(PKVirtualCard *)v10 setDPANSuffix:dpanSuffix];

      localizedDescription = [passCopy localizedDescription];
      [(PKVirtualCard *)v10 setDisplayName:localizedDescription];

      [(PKVirtualCard *)v10 setHasDynamicSecurityCode:1];
      [(PKVirtualCard *)v10 setState:1];
      v14 = +[PKPaymentOptionsDefaults defaults];
      paymentPass = [passCopy paymentPass];
      v16 = [v14 defaultBillingAddressForPaymentPass:paymentPass];
      [(PKVirtualCard *)v10 setBillingAddress:v16];

      -[PKVirtualCard setCredentialType:](v10, "setCredentialType:", [devicePrimaryPaymentApplication paymentNetworkIdentifier]);
      -[PKVirtualCard setRefreshType:](v10, "setRefreshType:", [devicePrimaryPaymentApplication vpanRefreshTypeAccordingToService:serviceCopy]);
      if ([passCopy isPeerPaymentPass])
      {
        [(PKVirtualCard *)v10 setBalanceSource:1];
      }

      [v7 addObject:v10];
    }

    v17 = [v7 copy];
  }

  else
  {
    v17 = [MEMORY[0x1E695DFD8] set];
  }

  return v17;
}

+ (id)demoVPANVirtualCards
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_ui())
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v3 = objc_alloc_init(PKVirtualCard);
    [(PKVirtualCard *)v3 setIdentifier:@"DEMO_VPAN_IDENTIFIER_1"];
    [(PKVirtualCard *)v3 setType:2];
    [(PKVirtualCard *)v3 setFPANSuffix:@"1111"];
    [(PKVirtualCard *)v3 setDPANSuffix:@"9876"];
    [(PKVirtualCard *)v3 setDisplayName:@"Demo Card 1"];
    [(PKVirtualCard *)v3 setHasDynamicSecurityCode:1];
    [(PKVirtualCard *)v3 setState:1];
    [(PKVirtualCard *)v3 setCredentialType:4];
    v4 = objc_alloc_init(MEMORY[0x1E695CF30]);
    [v4 setStreet:@"1 Infinite Loop"];
    [v4 setCity:@"Cupertino"];
    [v4 setState:@"CA"];
    [v4 setPostalCode:@"95014"];
    [v4 setCountry:@"United States"];
    [v4 setISOCountryCode:@"US"];
    v5 = objc_alloc(MEMORY[0x1E695CEE0]);
    v6 = [v5 initWithLabel:*MEMORY[0x1E695CB60] value:v4];
    v7 = objc_alloc_init(MEMORY[0x1E695CF18]);
    [v7 setGivenName:@"Johnny"];
    [v7 setFamilyName:@"Appleseed"];
    v19[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    [v7 setPostalAddresses:v8];

    [(PKVirtualCard *)v3 setBillingAddress:v7];
    [v2 addObject:v3];
    v9 = objc_alloc_init(PKVirtualCard);
    [(PKVirtualCard *)v9 setIdentifier:@"DEMO_VPAN_IDENTIFIER_2"];
    [(PKVirtualCard *)v9 setType:2];
    [(PKVirtualCard *)v9 setFPANSuffix:@"2222"];
    [(PKVirtualCard *)v9 setDPANSuffix:@"5432"];
    [(PKVirtualCard *)v9 setDisplayName:@"Demo Card 2"];
    [(PKVirtualCard *)v9 setHasDynamicSecurityCode:1];
    [(PKVirtualCard *)v9 setState:1];
    [(PKVirtualCard *)v9 setCredentialType:4];
    [v2 addObject:v9];
    v10 = objc_alloc_init(PKVirtualCard);
    [(PKVirtualCard *)v10 setIdentifier:@"DEMO_VPAN_IDENTIFIER_3"];
    [(PKVirtualCard *)v10 setType:2];
    [(PKVirtualCard *)v10 setFPANSuffix:@"3333"];
    [(PKVirtualCard *)v10 setDPANSuffix:@"1098"];
    [(PKVirtualCard *)v10 setDisplayName:@"Demo Card 3"];
    [(PKVirtualCard *)v10 setHasDynamicSecurityCode:1];
    [(PKVirtualCard *)v10 setState:1];
    [(PKVirtualCard *)v10 setCredentialType:4];
    [v2 addObject:v10];
    if (!_os_feature_enabled_impl())
    {
LABEL_9:
      v16 = [v2 copy];

      goto LABEL_11;
    }

    v18 = v6;
    v11 = objc_alloc_init(PKVirtualCard);
    [(PKVirtualCard *)v11 setIdentifier:@"DEMO_VPAN_IDENTIFIER_4"];
    [(PKVirtualCard *)v11 setType:2];
    [(PKVirtualCard *)v11 setDisplayName:@"Apple Cash"];
    [(PKVirtualCard *)v11 setDPANSuffix:@"7873"];
    [(PKVirtualCard *)v11 setHasDynamicSecurityCode:1];
    [(PKVirtualCard *)v11 setState:1];
    [(PKVirtualCard *)v11 setCredentialType:4];
    [(PKVirtualCard *)v11 setBalanceSource:1];
    v12 = PKVirtualCardFakeCashVPANBalance();
    if ([v12 length])
    {
      v13 = [objc_alloc(MEMORY[0x1E696AB90]) initWithString:v12];
      v14 = v13;
      if (v13 && ![v13 pk_isNotANumber])
      {
        goto LABEL_8;
      }
    }

    v14 = [objc_alloc(MEMORY[0x1E696AB90]) initWithString:@"12.34"];
LABEL_8:
    v15 = [[PKCurrencyAmount alloc] initWithAmount:v14 currency:@"USD" exponent:0];
    [(PKVirtualCard *)v11 setBalance:v15];
    [v2 addObject:v11];

    v6 = v18;
    goto LABEL_9;
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (PKVirtualCard)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v37.receiver = self;
  v37.super_class = PKVirtualCard;
  v5 = [(PKVirtualCard *)&v37 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [dictionaryCopy PKStringForKey:@"cardholderName"];
    cardholderName = v5->_cardholderName;
    v5->_cardholderName = v8;

    v10 = [dictionaryCopy PKStringForKey:@"state"];
    v5->_state = PKAccountVirtualCardStateFromString(v10);

    v11 = [dictionaryCopy PKStringForKey:@"type"];
    v5->_type = PKAccountVirtualCardTypeFromString(v11);

    v12 = [dictionaryCopy PKStringForKey:@"FPANSuffix"];
    FPANSuffix = v5->_FPANSuffix;
    v5->_FPANSuffix = v12;

    v14 = [dictionaryCopy PKStringForKey:@"dpanSuffix"];
    dpanSuffix = v5->_dpanSuffix;
    v5->_dpanSuffix = v14;

    v16 = [dictionaryCopy PKStringForKey:@"expiration"];
    expiration = v5->_expiration;
    v5->_expiration = v16;

    v18 = [dictionaryCopy PKDateForKey:@"lastUpdatedDate"];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = v18;

    v20 = [dictionaryCopy objectForKeyedSubscript:@"supportsLocalStorage"];
    if (v20)
    {
      v21 = [dictionaryCopy PKBoolForKey:@"supportsLocalStorage"];
    }

    else
    {
      v21 = 1;
    }

    v5->_supportsLocalStorage = v21;

    v22 = [dictionaryCopy PKStringForKey:@"securityCodeIdentifier"];
    securityCodeIdentifier = v5->_securityCodeIdentifier;
    v5->_securityCodeIdentifier = v22;

    v24 = [dictionaryCopy PKDateForKey:@"securityCodeExpiration"];
    securityCodeExpiration = v5->_securityCodeExpiration;
    v5->_securityCodeExpiration = v24;

    v26 = [dictionaryCopy objectForKeyedSubscript:@"hasDynamicSecurityCode"];
    v27 = v26;
    if (v26)
    {
      LOBYTE(v26) = [dictionaryCopy PKBoolForKey:@"hasDynamicSecurityCode"];
    }

    v5->_hasDynamicSecurityCode = v26;

    v28 = [dictionaryCopy PKDictionaryForKey:@"credentials"];
    v29 = v28;
    if (v28)
    {
      v30 = [v28 PKStringForKey:@"encryptedData"];
      v31 = [v29 PKStringForKey:@"ephemeralPublicKey"];
      v32 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v30 options:0];
      encryptedData = v5->_encryptedData;
      v5->_encryptedData = v32;

      v34 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v31 options:0];
      ephemeralPublicKey = v5->_ephemeralPublicKey;
      v5->_ephemeralPublicKey = v34;
    }
  }

  return v5;
}

- (id)mergeVirtualCardWith:(id)with
{
  withCopy = with;
  v5 = withCopy;
  if (withCopy)
  {
    if (self->_encryptedData && self->_ephemeralPublicKey)
    {
      encryptedData = [withCopy encryptedData];
      [v5 setEncryptedData:encryptedData];

      ephemeralPublicKey = [v5 ephemeralPublicKey];
      [v5 setEphemeralPublicKey:ephemeralPublicKey];
    }

    v8 = v5;
  }

  return v5;
}

- (NSString)displayablePANSuffix
{
  v3 = [(NSString *)self->_FPANSuffix length];
  v4 = 48;
  if (!v3)
  {
    v4 = 56;
  }

  v5 = *(&self->super.isa + v4);

  return v5;
}

- (BOOL)isEqualToSafariEntryWithPrimaryAccountNumber:(id)number expirationDate:(id)date
{
  numberCopy = number;
  dateCopy = date;
  if ([numberCopy length] >= 0x10)
  {
    pk_zString = [numberCopy pk_zString];
    if ([dateCopy length])
    {
      pk_zString2 = [dateCopy pk_zString];
    }

    else
    {
      pk_zString2 = 0;
    }

    primaryAccountNumber = [(PKVirtualCardCredentials *)self->_keychainCardCredentials primaryAccountNumber];
    pk_zString3 = [primaryAccountNumber pk_zString];

    v13 = [(PKVirtualCard *)self generateHashWithPrimaryAccountNumber:pk_zString expirationDate:pk_zString2];
    if (pk_zString2)
    {
      expiration = self->_expiration;
    }

    else
    {
      expiration = 0;
    }

    v15 = [(PKVirtualCard *)self generateHashWithPrimaryAccountNumber:pk_zString3 expirationDate:expiration];
    v8 = [v13 isEqualToData:v15];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)generateHashWithPrimaryAccountNumber:(id)number expirationDate:(id)date
{
  date = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", number, date];
  v5 = [date dataUsingEncoding:4];
  sHA256Hash = [v5 SHA256Hash];

  return sHA256Hash;
}

- (void)setLastAutoFilledBySafariWithCompletion:(id)completion
{
  completionCopy = completion;
  type = self->_type;
  if (type == 2)
  {
    date = [MEMORY[0x1E695DF00] date];
    lastAutoFilledBySafari = self->_lastAutoFilledBySafari;
    self->_lastAutoFilledBySafari = date;
    v10 = date;

    v11 = +[PKPaymentService paymentService];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __57__PKVirtualCard_setLastAutoFilledBySafariWithCompletion___block_invoke_2;
    v16[3] = &unk_1E79C4450;
    v17 = completionCopy;
    [v11 updateDateLastUsedBySafari:v10 forVirtualCard:self completion:v16];
  }

  else if (type == 1)
  {
    if (![(PKVirtualCard *)self hasSensitiveCredentials])
    {
      if (self->_keychainCardCredentials)
      {
        date2 = [MEMORY[0x1E695DF00] date];
        v13 = self->_lastAutoFilledBySafari;
        self->_lastAutoFilledBySafari = date2;

        [(PKVirtualCard *)self writeKeychainVirtualCardToKeychain];
        if (!completionCopy)
        {
          goto LABEL_9;
        }
      }

      else
      {
        keychainVirtualCard = [(PKVirtualCard *)self keychainVirtualCard];
        date3 = [MEMORY[0x1E695DF00] date];
        [keychainVirtualCard setLastAutoFilledBySafari:date3];

        [keychainVirtualCard writeKeychainVirtualCardToKeychain];
        if (!completionCopy)
        {
          goto LABEL_9;
        }
      }

      (*(completionCopy + 2))(completionCopy, 0);
      goto LABEL_9;
    }

    v6 = +[PKAccountService sharedInstance];
    identifier = self->_identifier;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __57__PKVirtualCard_setLastAutoFilledBySafariWithCompletion___block_invoke;
    v18[3] = &unk_1E79C4450;
    v19 = completionCopy;
    [v6 noteVirtualCardAutoFilledBySafari:identifier completion:v18];
  }

LABEL_9:
}

uint64_t __57__PKVirtualCard_setLastAutoFilledBySafariWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __57__PKVirtualCard_setLastAutoFilledBySafariWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setContactNameEnteredInSafari:(id)safari completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  safariCopy = safari;
  completionCopy = completion;
  v8 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = safariCopy;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Safari called setContactNameEnteredInSafari: with name %@", buf, 0xCu);
  }

  nameFromSafari = self->_nameFromSafari;
  self->_nameFromSafari = safariCopy;
  v10 = safariCopy;

  v11 = +[PKPaymentService paymentService];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__PKVirtualCard_setContactNameEnteredInSafari_completion___block_invoke;
  v13[3] = &unk_1E79C4450;
  v14 = completionCopy;
  v12 = completionCopy;
  [v11 updateCardholderNameFromSafari:v10 forVirtualCard:self completion:v13];
}

uint64_t __58__PKVirtualCard_setContactNameEnteredInSafari_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setNameFromSafari:(id)safari
{
  safariCopy = safari;
  v5 = safariCopy;
  if (!self->_billingAddress && [(NSString *)safariCopy length])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695CF18]);
    [(CNContact *)v6 setFamilyName:v5];
    billingAddress = self->_billingAddress;
    self->_billingAddress = v6;
  }

  nameFromSafari = self->_nameFromSafari;
  self->_nameFromSafari = v5;
}

- (BOOL)requiresAuthentication
{
  requiresAuthentication = self->_requiresAuthentication;
  if (!requiresAuthentication)
  {
    return self->_encryptedData && self->_ephemeralPublicKey || self->_type == 2;
  }

  return requiresAuthentication;
}

- (PKVirtualCard)initWithKeychainData:(id)data
{
  v4 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  v6 = [[v4 alloc] initForReadingFromData:dataCopy error:0];

  if (dataCopy && !v6)
  {
    v7 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Could not initialize unarchiver with keychain data.", v10, 2u);
    }

    goto LABEL_8;
  }

  if (!v6)
  {
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v8 = [v6 decodeTopLevelObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E696A508] error:0];
  [v6 finishDecoding];
LABEL_9:

  return v8;
}

+ (void)queryKeychainForVirtualCards:(id)cards
{
  v30 = *MEMORY[0x1E69E9840];
  cardsCopy = cards;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v4 setObject:*MEMORY[0x1E697B008] forKey:*MEMORY[0x1E697AFF8]];
  [v4 setObject:@"com.apple.passd.virtual.card" forKey:*MEMORY[0x1E697AE88]];
  [v4 setObject:@"com.apple.passd" forKey:*MEMORY[0x1E697ABD0]];
  v5 = *MEMORY[0x1E695E4D0];
  [v4 setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697AEB0]];
  [v4 setObject:*MEMORY[0x1E697B268] forKey:*MEMORY[0x1E697B260]];
  [v4 setObject:v5 forKey:*MEMORY[0x1E697B310]];
  [v4 setObject:v5 forKey:*MEMORY[0x1E697B318]];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v4];
  result = 0;
  v7 = SecItemCopyMatching(v6, &result);
  if (!v7 && result)
  {
    v20 = v6;
    v21 = cardsCopy;
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = result;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      v13 = *MEMORY[0x1E697B3C0];
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = [*(*(&v22 + 1) + 8 * i) objectForKey:{v13, v20}];
          v16 = [[PKVirtualCard alloc] initWithKeychainData:v15];
          if ([(PKVirtualCard *)v16 isValidFromKeychain])
          {
            [(PKVirtualCard *)v16 setRequiresAuthentication:0];
            [v8 addObject:v16];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v11);
    }

    if (result)
    {
      CFRelease(result);
    }

    cardsCopy = v21;
    if (v21)
    {
      v17 = [v8 copy];
      (v21)[2](v21, v17, 0);
    }

    v6 = v20;
    goto LABEL_21;
  }

  v18 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v29 = v7;
    _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Error fetching virtual cards from Keychain: %d", buf, 8u);
  }

  if (cardsCopy)
  {
    v19 = objc_alloc(MEMORY[0x1E696ABC0]);
    v8 = [v19 initWithDomain:*MEMORY[0x1E696A768] code:v7 userInfo:0];
    cardsCopy[2](cardsCopy, 0, v8);
LABEL_21:
  }
}

+ (int64_t)countOfVirtualCards
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v2 setObject:*MEMORY[0x1E697B008] forKey:*MEMORY[0x1E697AFF8]];
  [v2 setObject:@"com.apple.passd.virtual.card" forKey:*MEMORY[0x1E697AE88]];
  [v2 setObject:@"com.apple.passd" forKey:*MEMORY[0x1E697ABD0]];
  v3 = *MEMORY[0x1E695E4D0];
  [v2 setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697AEB0]];
  [v2 setObject:*MEMORY[0x1E697B268] forKey:*MEMORY[0x1E697B260]];
  [v2 setObject:v3 forKey:*MEMORY[0x1E697B310]];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v2];
  result = 0;
  v5 = SecItemCopyMatching(v4, &result);
  if (v5 || !result)
  {
    v7 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = v5;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Error fetching virtual cards from Keychain: %d", buf, 8u);
    }

    v6 = 0;
  }

  else
  {
    v6 = [result count];
    CFRelease(result);
  }

  return v6;
}

void __51__PKVirtualCard_deleteAllLocalKeychainVirtualCards__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        v8 = PKLogFacilityTypeGetObject(0xFuLL);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v14 = v7;
          _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Deleting local keychain virtual card %@", buf, 0xCu);
        }

        [v7 deleteLocalKeychainVirtualCard];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v15 count:16];
    }

    while (v4);
  }
}

- (void)writeKeychainVirtualCardToKeychain
{
  [(PKVirtualCardCredentials *)self->_keychainCardCredentials setCardSecurityCode:0];
  encryptedData = self->_encryptedData;
  self->_encryptedData = 0;

  ephemeralPublicKey = self->_ephemeralPublicKey;
  self->_ephemeralPublicKey = 0;

  self->_requiresAuthentication = 0;
  if (self->_hasDynamicSecurityCode)
  {
    securityCodeIdentifier = self->_securityCodeIdentifier;
    self->_securityCodeIdentifier = 0;

    securityCodeExpiration = self->_securityCodeExpiration;
    self->_securityCodeExpiration = 0;
  }

  v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v7 = [(PKVirtualCard *)self _wrapperWithType:1 identifier:self->_identifier];
  [v7 setObject:v8 forKey:*MEMORY[0x1E697B3C0]];
}

- (id)keychainVirtualCard
{
  v2 = [(PKVirtualCard *)self _wrapperWithType:1 identifier:self->_identifier];
  v3 = [v2 objectForKey:*MEMORY[0x1E697B3C0]];

  v4 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v3 error:0];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Could not initialize unarchiver with keychain data.", v10, 2u);
    }
  }

  else if (v4)
  {
    v7 = [v4 decodeTopLevelObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E696A508] error:0];
    [v5 finishDecoding];
    goto LABEL_11;
  }

  v7 = 0;
LABEL_11:

  return v7;
}

- (void)deleteKeychainVirtualCard
{
  v3 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Removing virtual card from Keychain", v5, 2u);
  }

  v4 = [(PKVirtualCard *)self _wrapperWithType:1 identifier:self->_identifier];
  [v4 resetKeychainItem];
}

- (void)deleteLocalKeychainVirtualCard
{
  v3 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Removing virtual card from Local Keychain", v5, 2u);
  }

  v4 = [(PKVirtualCard *)self _wrapperWithType:1 identifier:self->_identifier];
  [v4 resetLocalKeychainItem];
}

- (id)_wrapperWithType:(unint64_t)type identifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [[PKKeychainItemWrapper alloc] initWithIdentifier:identifierCopy accessGroup:@"com.apple.passd" serviceName:@"com.apple.passd.virtual.card" type:type invisible:0];

  [(PKKeychainItemWrapper *)v6 setLabel:@"com.apple.passd.virtual.card"];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKeyedSubscript:@"identifier"];
  }

  cardholderName = self->_cardholderName;
  if (cardholderName)
  {
    [v4 setObject:cardholderName forKeyedSubscript:@"cardholderName"];
  }

  state = self->_state;
  if (state > 4)
  {
    v8 = @"active";
  }

  else
  {
    v8 = off_1E79D58C8[state];
  }

  [v4 setObject:v8 forKeyedSubscript:@"state"];
  type = self->_type;
  v10 = @"primary";
  if (!type)
  {
    v10 = @"unknown";
  }

  if (type == 2)
  {
    v11 = @"vpan";
  }

  else
  {
    v11 = v10;
  }

  [v4 setObject:v11 forKeyedSubscript:@"type"];
  FPANSuffix = self->_FPANSuffix;
  if (FPANSuffix)
  {
    [v4 setObject:FPANSuffix forKeyedSubscript:@"FPANSuffix"];
  }

  dpanSuffix = self->_dpanSuffix;
  if (dpanSuffix)
  {
    [v4 setObject:dpanSuffix forKeyedSubscript:@"dpanSuffix"];
  }

  expiration = self->_expiration;
  if (expiration)
  {
    [v4 setObject:expiration forKeyedSubscript:@"expiration"];
  }

  lastUpdatedDate = self->_lastUpdatedDate;
  if (lastUpdatedDate)
  {
    v16 = [(NSDate *)lastUpdatedDate description];
    [v4 setObject:v16 forKeyedSubscript:@"lastUpdatedDate"];
  }

  if (self->_supportsLocalStorage)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v4 setObject:v17 forKeyedSubscript:@"supportsLocalStorage"];
  }

  securityCodeIdentifier = self->_securityCodeIdentifier;
  if (securityCodeIdentifier)
  {
    [v4 setObject:securityCodeIdentifier forKeyedSubscript:@"securityCodeIdentifier"];
  }

  securityCodeExpiration = self->_securityCodeExpiration;
  if (securityCodeExpiration)
  {
    v20 = [(NSDate *)securityCodeExpiration description];
    [v4 setObject:v20 forKeyedSubscript:@"securityCodeExpiration"];
  }

  if (self->_hasDynamicSecurityCode)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v4 setObject:v21 forKeyedSubscript:@"hasDynamicSecurityCode"];
  }

  nameFromSafari = self->_nameFromSafari;
  if (nameFromSafari)
  {
    [v4 setObject:nameFromSafari forKeyedSubscript:@"nameFromSafari"];
  }

  balance = self->_balance;
  if (balance)
  {
    minimalFormattedStringValue = [(PKCurrencyAmount *)balance minimalFormattedStringValue];
    [v4 setObject:minimalFormattedStringValue forKeyedSubscript:@"balance"];
  }

  v25 = [MEMORY[0x1E696AD98] numberWithInteger:self->_balanceSource];
  [v4 setObject:v25 forKeyedSubscript:@"balanceSource"];

  v26 = [v4 copy];

  return v26;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_84;
  }

  identifier = self->_identifier;
  v6 = equalCopy[2];
  if (identifier && v6)
  {
    if (([(NSString *)identifier isEqual:?]& 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (identifier != v6)
  {
    goto LABEL_84;
  }

  cardholderName = self->_cardholderName;
  v8 = equalCopy[3];
  if (cardholderName && v8)
  {
    if (([(NSString *)cardholderName isEqual:?]& 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (cardholderName != v8)
  {
    goto LABEL_84;
  }

  FPANSuffix = self->_FPANSuffix;
  v10 = equalCopy[6];
  if (FPANSuffix && v10)
  {
    if (([(NSString *)FPANSuffix isEqual:?]& 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (FPANSuffix != v10)
  {
    goto LABEL_84;
  }

  dpanSuffix = self->_dpanSuffix;
  v12 = equalCopy[7];
  if (dpanSuffix && v12)
  {
    if (([(NSString *)dpanSuffix isEqual:?]& 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (dpanSuffix != v12)
  {
    goto LABEL_84;
  }

  expiration = self->_expiration;
  v14 = equalCopy[8];
  if (expiration && v14)
  {
    if (([(NSString *)expiration isEqual:?]& 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (expiration != v14)
  {
    goto LABEL_84;
  }

  lastUpdatedDate = self->_lastUpdatedDate;
  v16 = equalCopy[9];
  if (lastUpdatedDate && v16)
  {
    if (([(NSDate *)lastUpdatedDate isEqual:?]& 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (lastUpdatedDate != v16)
  {
    goto LABEL_84;
  }

  encryptedData = self->_encryptedData;
  v18 = equalCopy[10];
  if (encryptedData && v18)
  {
    if (([(NSData *)encryptedData isEqual:?]& 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (encryptedData != v18)
  {
    goto LABEL_84;
  }

  ephemeralPublicKey = self->_ephemeralPublicKey;
  v20 = equalCopy[11];
  if (ephemeralPublicKey && v20)
  {
    if (([(NSData *)ephemeralPublicKey isEqual:?]& 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (ephemeralPublicKey != v20)
  {
    goto LABEL_84;
  }

  displayName = self->_displayName;
  v22 = equalCopy[12];
  if (displayName && v22)
  {
    if (([(NSString *)displayName isEqual:?]& 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (displayName != v22)
  {
    goto LABEL_84;
  }

  lastAutoFilledBySafari = self->_lastAutoFilledBySafari;
  v24 = equalCopy[13];
  if (lastAutoFilledBySafari && v24)
  {
    if (([(NSDate *)lastAutoFilledBySafari isEqual:?]& 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (lastAutoFilledBySafari != v24)
  {
    goto LABEL_84;
  }

  if (self->_state != equalCopy[4] || self->_type != equalCopy[5] || self->_supportsLocalStorage != *(equalCopy + 10))
  {
    goto LABEL_84;
  }

  securityCodeIdentifier = self->_securityCodeIdentifier;
  v26 = equalCopy[14];
  if (securityCodeIdentifier && v26)
  {
    if (([(NSString *)securityCodeIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (securityCodeIdentifier != v26)
  {
    goto LABEL_84;
  }

  securityCodeExpiration = self->_securityCodeExpiration;
  v28 = equalCopy[15];
  if (securityCodeExpiration && v28)
  {
    if (([(NSDate *)securityCodeExpiration isEqual:?]& 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (securityCodeExpiration != v28)
  {
    goto LABEL_84;
  }

  billingAddress = self->_billingAddress;
  v30 = equalCopy[16];
  if (billingAddress && v30)
  {
    if (([(CNContact *)billingAddress isEqual:?]& 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (billingAddress != v30)
  {
    goto LABEL_84;
  }

  if (self->_credentialType != equalCopy[17])
  {
    goto LABEL_84;
  }

  nameFromSafari = self->_nameFromSafari;
  v32 = equalCopy[20];
  if (nameFromSafari && v32)
  {
    if (([(NSString *)nameFromSafari isEqual:?]& 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (nameFromSafari != v32)
  {
    goto LABEL_84;
  }

  if (self->_refreshType != equalCopy[21])
  {
    goto LABEL_84;
  }

  balance = self->_balance;
  v34 = equalCopy[18];
  if (!balance || !v34)
  {
    if (balance == v34)
    {
      goto LABEL_82;
    }

LABEL_84:
    v35 = 0;
    goto LABEL_85;
  }

  if (![(PKCurrencyAmount *)balance isEqual:?])
  {
    goto LABEL_84;
  }

LABEL_82:
  if (self->_balanceSource != equalCopy[19])
  {
    goto LABEL_84;
  }

  v35 = self->_hasDynamicSecurityCode == *(equalCopy + 9);
LABEL_85:

  return v35;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_identifier];
  [array safelyAddObject:self->_cardholderName];
  [array safelyAddObject:self->_FPANSuffix];
  [array safelyAddObject:self->_dpanSuffix];
  [array safelyAddObject:self->_expiration];
  [array safelyAddObject:self->_lastUpdatedDate];
  [array safelyAddObject:self->_encryptedData];
  [array safelyAddObject:self->_ephemeralPublicKey];
  [array safelyAddObject:self->_displayName];
  [array safelyAddObject:self->_lastAutoFilledBySafari];
  [array safelyAddObject:self->_keychainCardCredentials];
  [array safelyAddObject:self->_securityCodeIdentifier];
  [array safelyAddObject:self->_securityCodeExpiration];
  [array safelyAddObject:self->_billingAddress];
  [array safelyAddObject:self->_nameFromSafari];
  [array safelyAddObject:self->_balance];
  v4 = PKCombinedHash(17, array);
  v5 = self->_state - v4 + 32 * v4;
  v6 = self->_type - v5 + 32 * v5;
  v7 = self->_supportsLocalStorage - v6 + 32 * v6;
  v8 = self->_hasDynamicSecurityCode - v7 + 32 * v7;
  v9 = self->_credentialType - v8 + 32 * v8;
  v10 = self->_refreshType - v9 + 32 * v9;
  v11 = self->_balanceSource - v10 + 32 * v10;

  return v11;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  state = self->_state;
  if (state > 4)
  {
    v5 = @"active";
  }

  else
  {
    v5 = off_1E79D58C8[state];
  }

  [v3 appendFormat:@"state: '%@'; ", v5];
  type = self->_type;
  v7 = @"primary";
  if (!type)
  {
    v7 = @"unknown";
  }

  if (type == 2)
  {
    v8 = @"vpan";
  }

  else
  {
    v8 = v7;
  }

  [v3 appendFormat:@"type: '%@'; ", v8];
  [v3 appendFormat:@"FPANSuffix: '%@'; ", self->_FPANSuffix];
  [v3 appendFormat:@"dpanSuffix: '%@'; ", self->_dpanSuffix];
  [v3 appendFormat:@"lastUpdated: '%@'; ", self->_lastUpdatedDate];
  if (self->_supportsLocalStorage)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v3 appendFormat:@"supportsLocalStorage: '%@'; ", v9];
  [v3 appendFormat:@"encryptedData: '%@'; ", self->_encryptedData];
  [v3 appendFormat:@"ephemeralPublicKey: '%@'; ", self->_ephemeralPublicKey];
  [v3 appendFormat:@"displayName: '%@'; ", self->_displayName];
  [v3 appendFormat:@"lastAutoFilledBySafari: '%@'; ", self->_lastAutoFilledBySafari];
  if ([(PKVirtualCard *)self requiresAuthentication])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v3 appendFormat:@"requiresAuthentication: '%@'; ", v10];
  if (self->_keychainCardCredentials)
  {
    [v3 appendFormat:@"keychainCardCredentials: '%@'; ", self->_keychainCardCredentials];
  }

  [v3 appendFormat:@"securityCodeIdentifier: '%@'; ", self->_securityCodeIdentifier];
  [v3 appendFormat:@"securityCodeExpiration: '%@'; ", self->_securityCodeExpiration];
  if (self->_hasDynamicSecurityCode)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  [v3 appendFormat:@"hasDynamicSecurityCode: '%@'; ", v11];
  [v3 appendFormat:@"billingAddress: '%@'; ", self->_billingAddress];
  v12 = PKPaymentNetworkNameForPaymentCredentialType(self->_credentialType);
  [v3 appendFormat:@"cardType: '%@'; ", v12];

  [v3 appendFormat:@"nameFromSafari: '%@'; ", self->_nameFromSafari];
  [v3 appendFormat:@"refreshType: '%lu'; ", self->_refreshType];
  minimalFormattedStringValue = [(PKCurrencyAmount *)self->_balance minimalFormattedStringValue];
  [v3 appendFormat:@"balance: %@", minimalFormattedStringValue];

  [v3 appendFormat:@"balanceSource: '%ld'; ", self->_balanceSource];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKVirtualCard allocWithZone:](PKVirtualCard init];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [(NSString *)self->_cardholderName copyWithZone:zone];
  cardholderName = v5->_cardholderName;
  v5->_cardholderName = v8;

  v5->_state = self->_state;
  v5->_type = self->_type;
  v10 = [(NSString *)self->_FPANSuffix copyWithZone:zone];
  FPANSuffix = v5->_FPANSuffix;
  v5->_FPANSuffix = v10;

  v12 = [(NSString *)self->_dpanSuffix copyWithZone:zone];
  dpanSuffix = v5->_dpanSuffix;
  v5->_dpanSuffix = v12;

  v14 = [(NSString *)self->_expiration copyWithZone:zone];
  expiration = v5->_expiration;
  v5->_expiration = v14;

  v16 = [(NSDate *)self->_lastUpdatedDate copyWithZone:zone];
  lastUpdatedDate = v5->_lastUpdatedDate;
  v5->_lastUpdatedDate = v16;

  v5->_supportsLocalStorage = self->_supportsLocalStorage;
  v18 = [(NSData *)self->_encryptedData copyWithZone:zone];
  encryptedData = v5->_encryptedData;
  v5->_encryptedData = v18;

  v20 = [(NSData *)self->_ephemeralPublicKey copyWithZone:zone];
  ephemeralPublicKey = v5->_ephemeralPublicKey;
  v5->_ephemeralPublicKey = v20;

  v22 = [(NSString *)self->_displayName copyWithZone:zone];
  displayName = v5->_displayName;
  v5->_displayName = v22;

  v24 = [(NSDate *)self->_lastAutoFilledBySafari copyWithZone:zone];
  lastAutoFilledBySafari = v5->_lastAutoFilledBySafari;
  v5->_lastAutoFilledBySafari = v24;

  v26 = [(PKVirtualCardCredentials *)self->_keychainCardCredentials copyWithZone:zone];
  keychainCardCredentials = v5->_keychainCardCredentials;
  v5->_keychainCardCredentials = v26;

  v28 = [(NSString *)self->_securityCodeIdentifier copyWithZone:zone];
  securityCodeIdentifier = v5->_securityCodeIdentifier;
  v5->_securityCodeIdentifier = v28;

  v30 = [(NSDate *)self->_securityCodeExpiration copyWithZone:zone];
  securityCodeExpiration = v5->_securityCodeExpiration;
  v5->_securityCodeExpiration = v30;

  v5->_hasDynamicSecurityCode = self->_hasDynamicSecurityCode;
  v32 = [(CNContact *)self->_billingAddress copyWithZone:zone];
  billingAddress = v5->_billingAddress;
  v5->_billingAddress = v32;

  v5->_credentialType = self->_credentialType;
  v34 = [(NSString *)self->_nameFromSafari copyWithZone:zone];
  nameFromSafari = v5->_nameFromSafari;
  v5->_nameFromSafari = v34;

  v5->_refreshType = self->_refreshType;
  v36 = [(PKCurrencyAmount *)self->_balance copyWithZone:zone];
  balance = v5->_balance;
  v5->_balance = v36;

  v5->_balanceSource = self->_balanceSource;
  return v5;
}

- (PKVirtualCard)initWithCoder:(id)coder
{
  coderCopy = coder;
  v39.receiver = self;
  v39.super_class = PKVirtualCard;
  v5 = [(PKVirtualCard *)&v39 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cardholderName"];
    cardholderName = v5->_cardholderName;
    v5->_cardholderName = v8;

    v5->_state = [coderCopy decodeIntegerForKey:@"state"];
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FPANSuffix"];
    FPANSuffix = v5->_FPANSuffix;
    v5->_FPANSuffix = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dpanSuffix"];
    dpanSuffix = v5->_dpanSuffix;
    v5->_dpanSuffix = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expiration"];
    expiration = v5->_expiration;
    v5->_expiration = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdatedDate"];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = v16;

    v5->_supportsLocalStorage = [coderCopy decodeBoolForKey:@"supportsLocalStorage"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptedData"];
    encryptedData = v5->_encryptedData;
    v5->_encryptedData = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ephemeralPublicKey"];
    ephemeralPublicKey = v5->_ephemeralPublicKey;
    v5->_ephemeralPublicKey = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastAutoFilledBySafari"];
    lastAutoFilledBySafari = v5->_lastAutoFilledBySafari;
    v5->_lastAutoFilledBySafari = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keychainCredentials"];
    keychainCardCredentials = v5->_keychainCardCredentials;
    v5->_keychainCardCredentials = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"securityCodeIdentifier"];
    securityCodeIdentifier = v5->_securityCodeIdentifier;
    v5->_securityCodeIdentifier = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"securityCodeExpiration"];
    securityCodeExpiration = v5->_securityCodeExpiration;
    v5->_securityCodeExpiration = v30;

    v5->_hasDynamicSecurityCode = [coderCopy decodeBoolForKey:@"hasDynamicSecurityCode"];
    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"billingAddress"];
    billingAddress = v5->_billingAddress;
    v5->_billingAddress = v32;

    v5->_credentialType = [coderCopy decodeIntegerForKey:@"credentialType"];
    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nameFromSafari"];
    nameFromSafari = v5->_nameFromSafari;
    v5->_nameFromSafari = v34;

    v5->_refreshType = [coderCopy decodeIntegerForKey:@"refreshType"];
    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"balance"];
    balance = v5->_balance;
    v5->_balance = v36;

    v5->_balanceSource = [coderCopy decodeIntegerForKey:@"balanceSource"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_cardholderName forKey:@"cardholderName"];
  [coderCopy encodeInteger:self->_state forKey:@"state"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeObject:self->_FPANSuffix forKey:@"FPANSuffix"];
  [coderCopy encodeObject:self->_dpanSuffix forKey:@"dpanSuffix"];
  [coderCopy encodeObject:self->_expiration forKey:@"expiration"];
  [coderCopy encodeObject:self->_lastUpdatedDate forKey:@"lastUpdatedDate"];
  [coderCopy encodeBool:self->_supportsLocalStorage forKey:@"supportsLocalStorage"];
  [coderCopy encodeObject:self->_encryptedData forKey:@"encryptedData"];
  [coderCopy encodeObject:self->_ephemeralPublicKey forKey:@"ephemeralPublicKey"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_lastAutoFilledBySafari forKey:@"lastAutoFilledBySafari"];
  [coderCopy encodeObject:self->_keychainCardCredentials forKey:@"keychainCredentials"];
  [coderCopy encodeObject:self->_securityCodeIdentifier forKey:@"securityCodeIdentifier"];
  [coderCopy encodeObject:self->_securityCodeExpiration forKey:@"securityCodeExpiration"];
  [coderCopy encodeBool:self->_hasDynamicSecurityCode forKey:@"hasDynamicSecurityCode"];
  [coderCopy encodeObject:self->_billingAddress forKey:@"billingAddress"];
  [coderCopy encodeInteger:self->_credentialType forKey:@"credentialType"];
  [coderCopy encodeObject:self->_nameFromSafari forKey:@"nameFromSafari"];
  [coderCopy encodeInteger:self->_refreshType forKey:@"refreshType"];
  [coderCopy encodeObject:self->_balance forKey:@"balance"];
  [coderCopy encodeInteger:self->_balanceSource forKey:@"balanceSource"];
}

@end