@interface PKVirtualCardCredentials
+ (id)demoVPANCredentials;
+ (id)formattedDateStringFromServerDateString:(id)string;
- (BOOL)isEqual:(id)equal;
- (PKVirtualCardCredentials)initWithCoder:(id)coder;
- (PKVirtualCardCredentials)initWithDictionary:(id)dictionary;
- (PKVirtualCardCredentials)initWithEncryptedCardData:(id)data ephemeralPublicKey:(id)key privateKey:(__SecKey *)privateKey error:(id *)error;
- (PKVirtualCardCredentials)initWithVPANPaymentCredentialResponse:(id)response privateKey:(__SecKey *)key error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKVirtualCardCredentials

+ (id)demoVPANCredentials
{
  if (os_variant_has_internal_ui())
  {
    v2 = objc_alloc_init(PKVirtualCardCredentials);
    [(PKVirtualCardCredentials *)v2 setPrimaryAccountNumber:@"4761120010000492"];
    [(PKVirtualCardCredentials *)v2 setCardSecurityCode:@"123"];
    [(PKVirtualCardCredentials *)v2 setExpiration:@"11/2022"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (PKVirtualCardCredentials)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = PKVirtualCardCredentials;
  v5 = [(PKVirtualCardCredentials *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"primaryAccountNumber"];
    pk_zString = [v6 pk_zString];
    primaryAccountNumber = v5->_primaryAccountNumber;
    v5->_primaryAccountNumber = pk_zString;

    v9 = [dictionaryCopy PKStringForKey:@"cardSecurityCode"];
    pk_zString2 = [v9 pk_zString];
    cardSecurityCode = v5->_cardSecurityCode;
    v5->_cardSecurityCode = pk_zString2;

    v5->_cardType = [dictionaryCopy PKIntegerForKey:@"cardType"];
  }

  return v5;
}

- (PKVirtualCardCredentials)initWithEncryptedCardData:(id)data ephemeralPublicKey:(id)key privateKey:(__SecKey *)privateKey error:(id *)error
{
  v8 = PKECDHDecryptDataWithEphemeralPublicKey(key, data, privateKey, error);
  if (v8)
  {
    v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v8 options:0 error:error];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      self = [(PKVirtualCardCredentials *)self initWithDictionary:v9];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)formattedDateStringFromServerDateString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy componentsSeparatedByString:@"/"];
  if ([v4 count] != 2)
  {
    v8 = stringCopy;
    goto LABEL_10;
  }

  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [v4 objectAtIndexedSubscript:1];
  if ([v6 length] == 2)
  {
    v7 = v6;
  }

  else
  {
    if ([v6 length] != 4)
    {
      v8 = stringCopy;
      goto LABEL_9;
    }

    v7 = [v6 substringFromIndex:2];
  }

  v9 = v7;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v5, v7];

LABEL_9:
LABEL_10:

  return v8;
}

- (PKVirtualCardCredentials)initWithVPANPaymentCredentialResponse:(id)response privateKey:(__SecKey *)key error:(id *)error
{
  responseCopy = response;
  credentials = [responseCopy credentials];
  encryptedCardData = [credentials encryptedCardData];
  credentials2 = [responseCopy credentials];
  ephemeralPublicKey = [credentials2 ephemeralPublicKey];
  v13 = [(PKVirtualCardCredentials *)self initWithEncryptedCardData:encryptedCardData ephemeralPublicKey:ephemeralPublicKey privateKey:key error:error];

  if (v13)
  {
    expiration = [responseCopy expiration];
    v15 = [objc_opt_class() formattedDateStringFromServerDateString:expiration];
    v16 = [expiration copy];
    expiration = v13->_expiration;
    v13->_expiration = v16;

    v18 = [v15 copy];
    formattedExpiration = v13->_formattedExpiration;
    v13->_formattedExpiration = v18;
  }

  return v13;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_primaryAccountNumber];
  [array safelyAddObject:self->_cardSecurityCode];
  [array safelyAddObject:self->_expiration];
  [array safelyAddObject:self->_formattedExpiration];
  v4 = PKCombinedHash(17, array);
  v5 = self->_cardType - v4 + 32 * v4;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_26;
  }

  v5 = equalCopy[1];
  v6 = self->_primaryAccountNumber;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (!v6 || !v7)
    {
      goto LABEL_25;
    }

    v9 = [(NSString *)v6 isEqualToString:v7];

    if (!v9)
    {
      goto LABEL_26;
    }
  }

  v10 = equalCopy[2];
  v6 = self->_cardSecurityCode;
  v11 = v10;
  v8 = v11;
  if (v6 == v11)
  {
  }

  else
  {
    if (!v6 || !v11)
    {
      goto LABEL_25;
    }

    v12 = [(NSString *)v6 isEqualToString:v11];

    if (!v12)
    {
      goto LABEL_26;
    }
  }

  v13 = equalCopy[4];
  v6 = self->_expiration;
  v14 = v13;
  v8 = v14;
  if (v6 == v14)
  {

    goto LABEL_20;
  }

  if (!v6 || !v14)
  {
LABEL_25:

    goto LABEL_26;
  }

  v15 = [(NSString *)v6 isEqualToString:v14];

  if (!v15)
  {
    goto LABEL_26;
  }

LABEL_20:
  v16 = equalCopy[5];
  v6 = self->_formattedExpiration;
  v17 = v16;
  v8 = v17;
  if (v6 == v17)
  {

LABEL_29:
    v19 = self->_cardType == equalCopy[3];
    goto LABEL_27;
  }

  if (!v6 || !v17)
  {
    goto LABEL_25;
  }

  v18 = [(NSString *)v6 isEqualToString:v17];

  if (v18)
  {
    goto LABEL_29;
  }

LABEL_26:
  v19 = 0;
LABEL_27:

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKVirtualCardCredentials allocWithZone:](PKVirtualCardCredentials init];
  v6 = [(NSString *)self->_primaryAccountNumber copyWithZone:zone];
  primaryAccountNumber = v5->_primaryAccountNumber;
  v5->_primaryAccountNumber = v6;

  v8 = [(NSString *)self->_cardSecurityCode copyWithZone:zone];
  cardSecurityCode = v5->_cardSecurityCode;
  v5->_cardSecurityCode = v8;

  v5->_cardType = self->_cardType;
  v10 = [(NSString *)self->_expiration copyWithZone:zone];
  expiration = v5->_expiration;
  v5->_expiration = v10;

  v12 = [(NSString *)self->_formattedExpiration copyWithZone:zone];
  formattedExpiration = v5->_formattedExpiration;
  v5->_formattedExpiration = v12;

  return v5;
}

- (PKVirtualCardCredentials)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PKVirtualCardCredentials;
  v5 = [(PKVirtualCardCredentials *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryAccountNumber"];
    pk_zString = [v6 pk_zString];
    primaryAccountNumber = v5->_primaryAccountNumber;
    v5->_primaryAccountNumber = pk_zString;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cardSecurityCode"];
    pk_zString2 = [v9 pk_zString];
    cardSecurityCode = v5->_cardSecurityCode;
    v5->_cardSecurityCode = pk_zString2;

    v5->_cardType = [coderCopy decodeIntegerForKey:@"cardType"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expiration"];
    expiration = v5->_expiration;
    v5->_expiration = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"formattedExpiration"];
    formattedExpiration = v5->_formattedExpiration;
    v5->_formattedExpiration = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  primaryAccountNumber = self->_primaryAccountNumber;
  coderCopy = coder;
  [coderCopy encodeObject:primaryAccountNumber forKey:@"primaryAccountNumber"];
  [coderCopy encodeObject:self->_cardSecurityCode forKey:@"cardSecurityCode"];
  [coderCopy encodeInteger:self->_cardType forKey:@"cardType"];
  [coderCopy encodeObject:self->_expiration forKey:@"expiration"];
  [coderCopy encodeObject:self->_formattedExpiration forKey:@"formattedExpiration"];
}

@end