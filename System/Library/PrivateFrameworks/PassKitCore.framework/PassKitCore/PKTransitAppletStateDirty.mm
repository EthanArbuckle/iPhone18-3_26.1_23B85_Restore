@interface PKTransitAppletStateDirty
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPKTransitAppletStateDirty:(id)dirty;
- (PKTransitAppletStateDirty)initWithCoder:(id)coder;
- (PKTransitAppletStateDirty)initWithPassUniqueIdentifier:(id)identifier paymentApplication:(id)application;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKTransitAppletStateDirty

- (PKTransitAppletStateDirty)initWithPassUniqueIdentifier:(id)identifier paymentApplication:(id)application
{
  identifierCopy = identifier;
  applicationCopy = application;
  v18.receiver = self;
  v18.super_class = PKTransitAppletStateDirty;
  v9 = [(PKTransitAppletStateDirty *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_passUniqueIdentifier, identifier);
    applicationIdentifier = [applicationCopy applicationIdentifier];
    applicationIdentifier = v10->_applicationIdentifier;
    v10->_applicationIdentifier = applicationIdentifier;

    secureElementIdentifier = [applicationCopy secureElementIdentifier];
    secureElementIdentifier = v10->_secureElementIdentifier;
    v10->_secureElementIdentifier = secureElementIdentifier;

    dpanIdentifier = [applicationCopy dpanIdentifier];
    dpanIdentifier = v10->_dpanIdentifier;
    v10->_dpanIdentifier = dpanIdentifier;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKTransitAppletStateDirty *)self isEqualToPKTransitAppletStateDirty:v5];
  }

  return v6;
}

- (BOOL)isEqualToPKTransitAppletStateDirty:(id)dirty
{
  dirtyCopy = dirty;
  v5 = dirtyCopy[1];
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
    v11 = dirtyCopy[3];
    v6 = self->_applicationIdentifier;
    v12 = v11;
    v8 = v12;
    if (v6 == v12)
    {

LABEL_16:
      v13 = dirtyCopy[2];
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

- (void)encodeWithCoder:(id)coder
{
  applicationIdentifier = self->_applicationIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:applicationIdentifier forKey:@"paymentApplicationIdentifier"];
  [coderCopy encodeObject:self->_passUniqueIdentifier forKey:@"passUniqueIdentifier"];
  [coderCopy encodeObject:self->_secureElementIdentifier forKey:@"secureElementIdentifier"];
  [coderCopy encodeObject:self->_dpanIdentifier forKey:@"dpanIdentifier"];
}

- (PKTransitAppletStateDirty)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKTransitAppletStateDirty *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentApplicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueIdentifier"];
    passUniqueIdentifier = v5->_passUniqueIdentifier;
    v5->_passUniqueIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secureElementIdentifier"];
    secureElementIdentifier = v5->_secureElementIdentifier;
    v5->_secureElementIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dpanIdentifier"];
    dpanIdentifier = v5->_dpanIdentifier;
    v5->_dpanIdentifier = v12;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSString *)self->_dpanIdentifier copyWithZone:zone];
  [v5 setDpanIdentifier:v6];

  v7 = [(NSString *)self->_passUniqueIdentifier copyWithZone:zone];
  [v5 setPassUniqueIdentifier:v7];

  v8 = [(NSString *)self->_applicationIdentifier copyWithZone:zone];
  [v5 setApplicationIdentifier:v8];

  v9 = [(NSString *)self->_secureElementIdentifier copyWithZone:zone];
  [v5 setSecureElementIdentifier:v9];

  return v5;
}

@end