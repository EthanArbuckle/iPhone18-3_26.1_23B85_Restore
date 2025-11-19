@interface PKVirtualCard
+ (id)cardsForPaymentPass:(id)a3;
+ (id)cardsForPaymentPass:(id)a3 accordingToWebService:(id)a4;
+ (id)demoVPANVirtualCards;
+ (int64_t)countOfVirtualCards;
+ (void)queryKeychainForVirtualCards:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSafariEntryWithPrimaryAccountNumber:(id)a3 expirationDate:(id)a4;
- (BOOL)requiresAuthentication;
- (NSString)displayablePANSuffix;
- (PKVirtualCard)initWithCoder:(id)a3;
- (PKVirtualCard)initWithDictionary:(id)a3;
- (PKVirtualCard)initWithKeychainData:(id)a3;
- (id)_wrapperWithType:(unint64_t)a3 identifier:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)generateHashWithPrimaryAccountNumber:(id)a3 expirationDate:(id)a4;
- (id)keychainVirtualCard;
- (id)mergeVirtualCardWith:(id)a3;
- (unint64_t)hash;
- (void)deleteKeychainVirtualCard;
- (void)deleteLocalKeychainVirtualCard;
- (void)encodeWithCoder:(id)a3;
- (void)setContactNameEnteredInSafari:(id)a3 completion:(id)a4;
- (void)setLastAutoFilledBySafariWithCompletion:(id)a3;
- (void)setNameFromSafari:(id)a3;
- (void)writeKeychainVirtualCardToKeychain;
@end

@implementation PKVirtualCard

+ (id)cardsForPaymentPass:(id)a3
{
  v4 = a3;
  v5 = +[PKPaymentWebService sharedService];
  v6 = [a1 cardsForPaymentPass:v4 accordingToWebService:v5];

  return v6;
}

+ (id)cardsForPaymentPass:(id)a3 accordingToWebService:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 supportsVirtualCardNumberAccordingToWebService:v6])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v8 = [v5 devicePrimaryPaymentApplication];
    v9 = [v8 virtualCardIdentifier];
    if (v9)
    {
      v10 = objc_alloc_init(PKVirtualCard);
      [(PKVirtualCard *)v10 setIdentifier:v9];
      [(PKVirtualCard *)v10 setType:2];
      v11 = [v5 primaryAccountNumberSuffix];
      [(PKVirtualCard *)v10 setFPANSuffix:v11];

      v12 = [v8 dpanSuffix];
      [(PKVirtualCard *)v10 setDPANSuffix:v12];

      v13 = [v5 localizedDescription];
      [(PKVirtualCard *)v10 setDisplayName:v13];

      [(PKVirtualCard *)v10 setHasDynamicSecurityCode:1];
      [(PKVirtualCard *)v10 setState:1];
      v14 = +[PKPaymentOptionsDefaults defaults];
      v15 = [v5 paymentPass];
      v16 = [v14 defaultBillingAddressForPaymentPass:v15];
      [(PKVirtualCard *)v10 setBillingAddress:v16];

      -[PKVirtualCard setCredentialType:](v10, "setCredentialType:", [v8 paymentNetworkIdentifier]);
      -[PKVirtualCard setRefreshType:](v10, "setRefreshType:", [v8 vpanRefreshTypeAccordingToService:v6]);
      if ([v5 isPeerPaymentPass])
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

- (PKVirtualCard)initWithDictionary:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = PKVirtualCard;
  v5 = [(PKVirtualCard *)&v37 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 PKStringForKey:@"cardholderName"];
    cardholderName = v5->_cardholderName;
    v5->_cardholderName = v8;

    v10 = [v4 PKStringForKey:@"state"];
    v5->_state = PKAccountVirtualCardStateFromString(v10);

    v11 = [v4 PKStringForKey:@"type"];
    v5->_type = PKAccountVirtualCardTypeFromString(v11);

    v12 = [v4 PKStringForKey:@"FPANSuffix"];
    FPANSuffix = v5->_FPANSuffix;
    v5->_FPANSuffix = v12;

    v14 = [v4 PKStringForKey:@"dpanSuffix"];
    dpanSuffix = v5->_dpanSuffix;
    v5->_dpanSuffix = v14;

    v16 = [v4 PKStringForKey:@"expiration"];
    expiration = v5->_expiration;
    v5->_expiration = v16;

    v18 = [v4 PKDateForKey:@"lastUpdatedDate"];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = v18;

    v20 = [v4 objectForKeyedSubscript:@"supportsLocalStorage"];
    if (v20)
    {
      v21 = [v4 PKBoolForKey:@"supportsLocalStorage"];
    }

    else
    {
      v21 = 1;
    }

    v5->_supportsLocalStorage = v21;

    v22 = [v4 PKStringForKey:@"securityCodeIdentifier"];
    securityCodeIdentifier = v5->_securityCodeIdentifier;
    v5->_securityCodeIdentifier = v22;

    v24 = [v4 PKDateForKey:@"securityCodeExpiration"];
    securityCodeExpiration = v5->_securityCodeExpiration;
    v5->_securityCodeExpiration = v24;

    v26 = [v4 objectForKeyedSubscript:@"hasDynamicSecurityCode"];
    v27 = v26;
    if (v26)
    {
      LOBYTE(v26) = [v4 PKBoolForKey:@"hasDynamicSecurityCode"];
    }

    v5->_hasDynamicSecurityCode = v26;

    v28 = [v4 PKDictionaryForKey:@"credentials"];
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

- (id)mergeVirtualCardWith:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (self->_encryptedData && self->_ephemeralPublicKey)
    {
      v6 = [v4 encryptedData];
      [v5 setEncryptedData:v6];

      v7 = [v5 ephemeralPublicKey];
      [v5 setEphemeralPublicKey:v7];
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

- (BOOL)isEqualToSafariEntryWithPrimaryAccountNumber:(id)a3 expirationDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length] >= 0x10)
  {
    v9 = [v6 pk_zString];
    if ([v7 length])
    {
      v10 = [v7 pk_zString];
    }

    else
    {
      v10 = 0;
    }

    v11 = [(PKVirtualCardCredentials *)self->_keychainCardCredentials primaryAccountNumber];
    v12 = [v11 pk_zString];

    v13 = [(PKVirtualCard *)self generateHashWithPrimaryAccountNumber:v9 expirationDate:v10];
    if (v10)
    {
      expiration = self->_expiration;
    }

    else
    {
      expiration = 0;
    }

    v15 = [(PKVirtualCard *)self generateHashWithPrimaryAccountNumber:v12 expirationDate:expiration];
    v8 = [v13 isEqualToData:v15];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)generateHashWithPrimaryAccountNumber:(id)a3 expirationDate:(id)a4
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", a3, a4];
  v5 = [v4 dataUsingEncoding:4];
  v6 = [v5 SHA256Hash];

  return v6;
}

- (void)setLastAutoFilledBySafariWithCompletion:(id)a3
{
  v4 = a3;
  type = self->_type;
  if (type == 2)
  {
    v8 = [MEMORY[0x1E695DF00] date];
    lastAutoFilledBySafari = self->_lastAutoFilledBySafari;
    self->_lastAutoFilledBySafari = v8;
    v10 = v8;

    v11 = +[PKPaymentService paymentService];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __57__PKVirtualCard_setLastAutoFilledBySafariWithCompletion___block_invoke_2;
    v16[3] = &unk_1E79C4450;
    v17 = v4;
    [v11 updateDateLastUsedBySafari:v10 forVirtualCard:self completion:v16];
  }

  else if (type == 1)
  {
    if (![(PKVirtualCard *)self hasSensitiveCredentials])
    {
      if (self->_keychainCardCredentials)
      {
        v12 = [MEMORY[0x1E695DF00] date];
        v13 = self->_lastAutoFilledBySafari;
        self->_lastAutoFilledBySafari = v12;

        [(PKVirtualCard *)self writeKeychainVirtualCardToKeychain];
        if (!v4)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v14 = [(PKVirtualCard *)self keychainVirtualCard];
        v15 = [MEMORY[0x1E695DF00] date];
        [v14 setLastAutoFilledBySafari:v15];

        [v14 writeKeychainVirtualCardToKeychain];
        if (!v4)
        {
          goto LABEL_9;
        }
      }

      (*(v4 + 2))(v4, 0);
      goto LABEL_9;
    }

    v6 = +[PKAccountService sharedInstance];
    identifier = self->_identifier;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __57__PKVirtualCard_setLastAutoFilledBySafariWithCompletion___block_invoke;
    v18[3] = &unk_1E79C4450;
    v19 = v4;
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

- (void)setContactNameEnteredInSafari:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Safari called setContactNameEnteredInSafari: with name %@", buf, 0xCu);
  }

  nameFromSafari = self->_nameFromSafari;
  self->_nameFromSafari = v6;
  v10 = v6;

  v11 = +[PKPaymentService paymentService];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__PKVirtualCard_setContactNameEnteredInSafari_completion___block_invoke;
  v13[3] = &unk_1E79C4450;
  v14 = v7;
  v12 = v7;
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

- (void)setNameFromSafari:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_billingAddress && [(NSString *)v4 length])
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

- (PKVirtualCard)initWithKeychainData:(id)a3
{
  v4 = MEMORY[0x1E696ACD0];
  v5 = a3;
  v6 = [[v4 alloc] initForReadingFromData:v5 error:0];

  if (v5 && !v6)
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

+ (void)queryKeychainForVirtualCards:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
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
    v21 = v3;
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

    v3 = v21;
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

  if (v3)
  {
    v19 = objc_alloc(MEMORY[0x1E696ABC0]);
    v8 = [v19 initWithDomain:*MEMORY[0x1E696A768] code:v7 userInfo:0];
    v3[2](v3, 0, v8);
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

- (id)_wrapperWithType:(unint64_t)a3 identifier:(id)a4
{
  v5 = a4;
  v6 = [[PKKeychainItemWrapper alloc] initWithIdentifier:v5 accessGroup:@"com.apple.passd" serviceName:@"com.apple.passd.virtual.card" type:a3 invisible:0];

  [(PKKeychainItemWrapper *)v6 setLabel:@"com.apple.passd.virtual.card"];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKeyedSubscript:@"identifier"];
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
    v24 = [(PKCurrencyAmount *)balance minimalFormattedStringValue];
    [v4 setObject:v24 forKeyedSubscript:@"balance"];
  }

  v25 = [MEMORY[0x1E696AD98] numberWithInteger:self->_balanceSource];
  [v4 setObject:v25 forKeyedSubscript:@"balanceSource"];

  v26 = [v4 copy];

  return v26;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_84;
  }

  identifier = self->_identifier;
  v6 = v4[2];
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
  v8 = v4[3];
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
  v10 = v4[6];
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
  v12 = v4[7];
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
  v14 = v4[8];
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
  v16 = v4[9];
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
  v18 = v4[10];
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
  v20 = v4[11];
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
  v22 = v4[12];
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
  v24 = v4[13];
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

  if (self->_state != v4[4] || self->_type != v4[5] || self->_supportsLocalStorage != *(v4 + 10))
  {
    goto LABEL_84;
  }

  securityCodeIdentifier = self->_securityCodeIdentifier;
  v26 = v4[14];
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
  v28 = v4[15];
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
  v30 = v4[16];
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

  if (self->_credentialType != v4[17])
  {
    goto LABEL_84;
  }

  nameFromSafari = self->_nameFromSafari;
  v32 = v4[20];
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

  if (self->_refreshType != v4[21])
  {
    goto LABEL_84;
  }

  balance = self->_balance;
  v34 = v4[18];
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
  if (self->_balanceSource != v4[19])
  {
    goto LABEL_84;
  }

  v35 = self->_hasDynamicSecurityCode == *(v4 + 9);
LABEL_85:

  return v35;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_cardholderName];
  [v3 safelyAddObject:self->_FPANSuffix];
  [v3 safelyAddObject:self->_dpanSuffix];
  [v3 safelyAddObject:self->_expiration];
  [v3 safelyAddObject:self->_lastUpdatedDate];
  [v3 safelyAddObject:self->_encryptedData];
  [v3 safelyAddObject:self->_ephemeralPublicKey];
  [v3 safelyAddObject:self->_displayName];
  [v3 safelyAddObject:self->_lastAutoFilledBySafari];
  [v3 safelyAddObject:self->_keychainCardCredentials];
  [v3 safelyAddObject:self->_securityCodeIdentifier];
  [v3 safelyAddObject:self->_securityCodeExpiration];
  [v3 safelyAddObject:self->_billingAddress];
  [v3 safelyAddObject:self->_nameFromSafari];
  [v3 safelyAddObject:self->_balance];
  v4 = PKCombinedHash(17, v3);
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
  v13 = [(PKCurrencyAmount *)self->_balance minimalFormattedStringValue];
  [v3 appendFormat:@"balance: %@", v13];

  [v3 appendFormat:@"balanceSource: '%ld'; ", self->_balanceSource];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKVirtualCard allocWithZone:](PKVirtualCard init];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [(NSString *)self->_cardholderName copyWithZone:a3];
  cardholderName = v5->_cardholderName;
  v5->_cardholderName = v8;

  v5->_state = self->_state;
  v5->_type = self->_type;
  v10 = [(NSString *)self->_FPANSuffix copyWithZone:a3];
  FPANSuffix = v5->_FPANSuffix;
  v5->_FPANSuffix = v10;

  v12 = [(NSString *)self->_dpanSuffix copyWithZone:a3];
  dpanSuffix = v5->_dpanSuffix;
  v5->_dpanSuffix = v12;

  v14 = [(NSString *)self->_expiration copyWithZone:a3];
  expiration = v5->_expiration;
  v5->_expiration = v14;

  v16 = [(NSDate *)self->_lastUpdatedDate copyWithZone:a3];
  lastUpdatedDate = v5->_lastUpdatedDate;
  v5->_lastUpdatedDate = v16;

  v5->_supportsLocalStorage = self->_supportsLocalStorage;
  v18 = [(NSData *)self->_encryptedData copyWithZone:a3];
  encryptedData = v5->_encryptedData;
  v5->_encryptedData = v18;

  v20 = [(NSData *)self->_ephemeralPublicKey copyWithZone:a3];
  ephemeralPublicKey = v5->_ephemeralPublicKey;
  v5->_ephemeralPublicKey = v20;

  v22 = [(NSString *)self->_displayName copyWithZone:a3];
  displayName = v5->_displayName;
  v5->_displayName = v22;

  v24 = [(NSDate *)self->_lastAutoFilledBySafari copyWithZone:a3];
  lastAutoFilledBySafari = v5->_lastAutoFilledBySafari;
  v5->_lastAutoFilledBySafari = v24;

  v26 = [(PKVirtualCardCredentials *)self->_keychainCardCredentials copyWithZone:a3];
  keychainCardCredentials = v5->_keychainCardCredentials;
  v5->_keychainCardCredentials = v26;

  v28 = [(NSString *)self->_securityCodeIdentifier copyWithZone:a3];
  securityCodeIdentifier = v5->_securityCodeIdentifier;
  v5->_securityCodeIdentifier = v28;

  v30 = [(NSDate *)self->_securityCodeExpiration copyWithZone:a3];
  securityCodeExpiration = v5->_securityCodeExpiration;
  v5->_securityCodeExpiration = v30;

  v5->_hasDynamicSecurityCode = self->_hasDynamicSecurityCode;
  v32 = [(CNContact *)self->_billingAddress copyWithZone:a3];
  billingAddress = v5->_billingAddress;
  v5->_billingAddress = v32;

  v5->_credentialType = self->_credentialType;
  v34 = [(NSString *)self->_nameFromSafari copyWithZone:a3];
  nameFromSafari = v5->_nameFromSafari;
  v5->_nameFromSafari = v34;

  v5->_refreshType = self->_refreshType;
  v36 = [(PKCurrencyAmount *)self->_balance copyWithZone:a3];
  balance = v5->_balance;
  v5->_balance = v36;

  v5->_balanceSource = self->_balanceSource;
  return v5;
}

- (PKVirtualCard)initWithCoder:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = PKVirtualCard;
  v5 = [(PKVirtualCard *)&v39 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cardholderName"];
    cardholderName = v5->_cardholderName;
    v5->_cardholderName = v8;

    v5->_state = [v4 decodeIntegerForKey:@"state"];
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FPANSuffix"];
    FPANSuffix = v5->_FPANSuffix;
    v5->_FPANSuffix = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dpanSuffix"];
    dpanSuffix = v5->_dpanSuffix;
    v5->_dpanSuffix = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expiration"];
    expiration = v5->_expiration;
    v5->_expiration = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdatedDate"];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = v16;

    v5->_supportsLocalStorage = [v4 decodeBoolForKey:@"supportsLocalStorage"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encryptedData"];
    encryptedData = v5->_encryptedData;
    v5->_encryptedData = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ephemeralPublicKey"];
    ephemeralPublicKey = v5->_ephemeralPublicKey;
    v5->_ephemeralPublicKey = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastAutoFilledBySafari"];
    lastAutoFilledBySafari = v5->_lastAutoFilledBySafari;
    v5->_lastAutoFilledBySafari = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keychainCredentials"];
    keychainCardCredentials = v5->_keychainCardCredentials;
    v5->_keychainCardCredentials = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"securityCodeIdentifier"];
    securityCodeIdentifier = v5->_securityCodeIdentifier;
    v5->_securityCodeIdentifier = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"securityCodeExpiration"];
    securityCodeExpiration = v5->_securityCodeExpiration;
    v5->_securityCodeExpiration = v30;

    v5->_hasDynamicSecurityCode = [v4 decodeBoolForKey:@"hasDynamicSecurityCode"];
    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"billingAddress"];
    billingAddress = v5->_billingAddress;
    v5->_billingAddress = v32;

    v5->_credentialType = [v4 decodeIntegerForKey:@"credentialType"];
    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nameFromSafari"];
    nameFromSafari = v5->_nameFromSafari;
    v5->_nameFromSafari = v34;

    v5->_refreshType = [v4 decodeIntegerForKey:@"refreshType"];
    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"balance"];
    balance = v5->_balance;
    v5->_balance = v36;

    v5->_balanceSource = [v4 decodeIntegerForKey:@"balanceSource"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_cardholderName forKey:@"cardholderName"];
  [v5 encodeInteger:self->_state forKey:@"state"];
  [v5 encodeInteger:self->_type forKey:@"type"];
  [v5 encodeObject:self->_FPANSuffix forKey:@"FPANSuffix"];
  [v5 encodeObject:self->_dpanSuffix forKey:@"dpanSuffix"];
  [v5 encodeObject:self->_expiration forKey:@"expiration"];
  [v5 encodeObject:self->_lastUpdatedDate forKey:@"lastUpdatedDate"];
  [v5 encodeBool:self->_supportsLocalStorage forKey:@"supportsLocalStorage"];
  [v5 encodeObject:self->_encryptedData forKey:@"encryptedData"];
  [v5 encodeObject:self->_ephemeralPublicKey forKey:@"ephemeralPublicKey"];
  [v5 encodeObject:self->_displayName forKey:@"displayName"];
  [v5 encodeObject:self->_lastAutoFilledBySafari forKey:@"lastAutoFilledBySafari"];
  [v5 encodeObject:self->_keychainCardCredentials forKey:@"keychainCredentials"];
  [v5 encodeObject:self->_securityCodeIdentifier forKey:@"securityCodeIdentifier"];
  [v5 encodeObject:self->_securityCodeExpiration forKey:@"securityCodeExpiration"];
  [v5 encodeBool:self->_hasDynamicSecurityCode forKey:@"hasDynamicSecurityCode"];
  [v5 encodeObject:self->_billingAddress forKey:@"billingAddress"];
  [v5 encodeInteger:self->_credentialType forKey:@"credentialType"];
  [v5 encodeObject:self->_nameFromSafari forKey:@"nameFromSafari"];
  [v5 encodeInteger:self->_refreshType forKey:@"refreshType"];
  [v5 encodeObject:self->_balance forKey:@"balance"];
  [v5 encodeInteger:self->_balanceSource forKey:@"balanceSource"];
}

@end