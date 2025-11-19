@interface PKTransitAppletStateDirty
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPKTransitAppletStateDirty:(id)a3;
- (PKTransitAppletStateDirty)initWithCoder:(id)a3;
- (PKTransitAppletStateDirty)initWithPassUniqueIdentifier:(id)a3 paymentApplication:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKTransitAppletStateDirty

- (PKTransitAppletStateDirty)initWithPassUniqueIdentifier:(id)a3 paymentApplication:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = PKTransitAppletStateDirty;
  v9 = [(PKTransitAppletStateDirty *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_passUniqueIdentifier, a3);
    v11 = [v8 applicationIdentifier];
    applicationIdentifier = v10->_applicationIdentifier;
    v10->_applicationIdentifier = v11;

    v13 = [v8 secureElementIdentifier];
    secureElementIdentifier = v10->_secureElementIdentifier;
    v10->_secureElementIdentifier = v13;

    v15 = [v8 dpanIdentifier];
    dpanIdentifier = v10->_dpanIdentifier;
    v10->_dpanIdentifier = v15;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKTransitAppletStateDirty *)self isEqualToPKTransitAppletStateDirty:v5];
  }

  return v6;
}

- (BOOL)isEqualToPKTransitAppletStateDirty:(id)a3
{
  v4 = a3;
  v5 = v4[1];
  v6 = self->_passUniqueIdentifier;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_10;
  }

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    LOBYTE(v10) = 0;
    goto LABEL_21;
  }

  v10 = [(NSString *)v6 isEqualToString:v7];

  if (v10)
  {
LABEL_10:
    v11 = v4[3];
    v6 = self->_applicationIdentifier;
    v12 = v11;
    v8 = v12;
    if (v6 == v12)
    {

LABEL_16:
      v13 = v4[2];
      v6 = self->_secureElementIdentifier;
      v14 = v13;
      v8 = v14;
      if (v6 == v14)
      {
        LOBYTE(v10) = 1;
      }

      else
      {
        LOBYTE(v10) = 0;
        if (v6 && v14)
        {
          LOBYTE(v10) = [(NSString *)v6 isEqualToString:v14];
        }
      }

      goto LABEL_21;
    }

    LOBYTE(v10) = 0;
    if (v6 && v12)
    {
      v10 = [(NSString *)v6 isEqualToString:v12];

      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    }

LABEL_21:
  }

LABEL_22:

  return v10;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_passUniqueIdentifier];
  [v3 safelyAddObject:self->_applicationIdentifier];
  [v3 safelyAddObject:self->_secureElementIdentifier];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  applicationIdentifier = self->_applicationIdentifier;
  v5 = a3;
  [v5 encodeObject:applicationIdentifier forKey:@"paymentApplicationIdentifier"];
  [v5 encodeObject:self->_passUniqueIdentifier forKey:@"passUniqueIdentifier"];
  [v5 encodeObject:self->_secureElementIdentifier forKey:@"secureElementIdentifier"];
  [v5 encodeObject:self->_dpanIdentifier forKey:@"dpanIdentifier"];
}

- (PKTransitAppletStateDirty)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKTransitAppletStateDirty *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentApplicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueIdentifier"];
    passUniqueIdentifier = v5->_passUniqueIdentifier;
    v5->_passUniqueIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secureElementIdentifier"];
    secureElementIdentifier = v5->_secureElementIdentifier;
    v5->_secureElementIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dpanIdentifier"];
    dpanIdentifier = v5->_dpanIdentifier;
    v5->_dpanIdentifier = v12;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSString *)self->_dpanIdentifier copyWithZone:a3];
  [v5 setDpanIdentifier:v6];

  v7 = [(NSString *)self->_passUniqueIdentifier copyWithZone:a3];
  [v5 setPassUniqueIdentifier:v7];

  v8 = [(NSString *)self->_applicationIdentifier copyWithZone:a3];
  [v5 setApplicationIdentifier:v8];

  v9 = [(NSString *)self->_secureElementIdentifier copyWithZone:a3];
  [v5 setSecureElementIdentifier:v9];

  return v5;
}

@end