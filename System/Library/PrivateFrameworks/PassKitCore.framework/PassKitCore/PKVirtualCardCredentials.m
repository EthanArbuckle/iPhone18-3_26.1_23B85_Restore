@interface PKVirtualCardCredentials
+ (id)demoVPANCredentials;
+ (id)formattedDateStringFromServerDateString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKVirtualCardCredentials)initWithCoder:(id)a3;
- (PKVirtualCardCredentials)initWithDictionary:(id)a3;
- (PKVirtualCardCredentials)initWithEncryptedCardData:(id)a3 ephemeralPublicKey:(id)a4 privateKey:(__SecKey *)a5 error:(id *)a6;
- (PKVirtualCardCredentials)initWithVPANPaymentCredentialResponse:(id)a3 privateKey:(__SecKey *)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (PKVirtualCardCredentials)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKVirtualCardCredentials;
  v5 = [(PKVirtualCardCredentials *)&v13 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"primaryAccountNumber"];
    v7 = [v6 pk_zString];
    primaryAccountNumber = v5->_primaryAccountNumber;
    v5->_primaryAccountNumber = v7;

    v9 = [v4 PKStringForKey:@"cardSecurityCode"];
    v10 = [v9 pk_zString];
    cardSecurityCode = v5->_cardSecurityCode;
    v5->_cardSecurityCode = v10;

    v5->_cardType = [v4 PKIntegerForKey:@"cardType"];
  }

  return v5;
}

- (PKVirtualCardCredentials)initWithEncryptedCardData:(id)a3 ephemeralPublicKey:(id)a4 privateKey:(__SecKey *)a5 error:(id *)a6
{
  v8 = PKECDHDecryptDataWithEphemeralPublicKey(a4, a3, a5, a6);
  if (v8)
  {
    v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v8 options:0 error:a6];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      self = [(PKVirtualCardCredentials *)self initWithDictionary:v9];
      v10 = self;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)formattedDateStringFromServerDateString:(id)a3
{
  v3 = a3;
  v4 = [v3 componentsSeparatedByString:@"/"];
  if ([v4 count] != 2)
  {
    v8 = v3;
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
      v8 = v3;
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

- (PKVirtualCardCredentials)initWithVPANPaymentCredentialResponse:(id)a3 privateKey:(__SecKey *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 credentials];
  v10 = [v9 encryptedCardData];
  v11 = [v8 credentials];
  v12 = [v11 ephemeralPublicKey];
  v13 = [(PKVirtualCardCredentials *)self initWithEncryptedCardData:v10 ephemeralPublicKey:v12 privateKey:a4 error:a5];

  if (v13)
  {
    v14 = [v8 expiration];
    v15 = [objc_opt_class() formattedDateStringFromServerDateString:v14];
    v16 = [v14 copy];
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
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_primaryAccountNumber];
  [v3 safelyAddObject:self->_cardSecurityCode];
  [v3 safelyAddObject:self->_expiration];
  [v3 safelyAddObject:self->_formattedExpiration];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_cardType - v4 + 32 * v4;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_26;
  }

  v5 = v4[1];
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

  v10 = v4[2];
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

  v13 = v4[4];
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
  v16 = v4[5];
  v6 = self->_formattedExpiration;
  v17 = v16;
  v8 = v17;
  if (v6 == v17)
  {

LABEL_29:
    v19 = self->_cardType == v4[3];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKVirtualCardCredentials allocWithZone:](PKVirtualCardCredentials init];
  v6 = [(NSString *)self->_primaryAccountNumber copyWithZone:a3];
  primaryAccountNumber = v5->_primaryAccountNumber;
  v5->_primaryAccountNumber = v6;

  v8 = [(NSString *)self->_cardSecurityCode copyWithZone:a3];
  cardSecurityCode = v5->_cardSecurityCode;
  v5->_cardSecurityCode = v8;

  v5->_cardType = self->_cardType;
  v10 = [(NSString *)self->_expiration copyWithZone:a3];
  expiration = v5->_expiration;
  v5->_expiration = v10;

  v12 = [(NSString *)self->_formattedExpiration copyWithZone:a3];
  formattedExpiration = v5->_formattedExpiration;
  v5->_formattedExpiration = v12;

  return v5;
}

- (PKVirtualCardCredentials)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PKVirtualCardCredentials;
  v5 = [(PKVirtualCardCredentials *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryAccountNumber"];
    v7 = [v6 pk_zString];
    primaryAccountNumber = v5->_primaryAccountNumber;
    v5->_primaryAccountNumber = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cardSecurityCode"];
    v10 = [v9 pk_zString];
    cardSecurityCode = v5->_cardSecurityCode;
    v5->_cardSecurityCode = v10;

    v5->_cardType = [v4 decodeIntegerForKey:@"cardType"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expiration"];
    expiration = v5->_expiration;
    v5->_expiration = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"formattedExpiration"];
    formattedExpiration = v5->_formattedExpiration;
    v5->_formattedExpiration = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  primaryAccountNumber = self->_primaryAccountNumber;
  v5 = a3;
  [v5 encodeObject:primaryAccountNumber forKey:@"primaryAccountNumber"];
  [v5 encodeObject:self->_cardSecurityCode forKey:@"cardSecurityCode"];
  [v5 encodeInteger:self->_cardType forKey:@"cardType"];
  [v5 encodeObject:self->_expiration forKey:@"expiration"];
  [v5 encodeObject:self->_formattedExpiration forKey:@"formattedExpiration"];
}

@end