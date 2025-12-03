@interface PKTransitPartner
- (PKTransitPartner)initWithCoder:(id)coder;
- (PKTransitPartner)initWithIdentifier:(id)identifier localizedDisplayName:(id)name;
- (PKTransitPartner)initWithIdentifier:(id)identifier localizedDisplayName:(id)name purchaseURL:(id)l supportedTransitNetworkIdentifiers:(id)identifiers;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKTransitPartner

- (PKTransitPartner)initWithIdentifier:(id)identifier localizedDisplayName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = PKTransitPartner;
  v9 = [(PKTransitPartner *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_localizedDisplayName, name);
    v10->_maxNotificationCount = 3;
  }

  return v10;
}

- (PKTransitPartner)initWithIdentifier:(id)identifier localizedDisplayName:(id)name purchaseURL:(id)l supportedTransitNetworkIdentifiers:(id)identifiers
{
  lCopy = l;
  identifiersCopy = identifiers;
  v13 = [(PKTransitPartner *)self initWithIdentifier:identifier localizedDisplayName:name];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_purchaseURL, l);
    objc_storeStrong(&v14->_supportedTransitNetworkIdentifiers, identifiers);
    v14->_maxNotificationCount = 3;
  }

  return v14;
}

- (PKTransitPartner)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = PKTransitPartner;
  v5 = [(PKTransitPartner *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedDisplayName"];
    localizedDisplayName = v5->_localizedDisplayName;
    v5->_localizedDisplayName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"purchaseURL"];
    purchaseURL = v5->_purchaseURL;
    v5->_purchaseURL = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"supportedTransitNetworkIdentifiers"];
    supportedTransitNetworkIdentifiers = v5->_supportedTransitNetworkIdentifiers;
    v5->_supportedTransitNetworkIdentifiers = v15;

    v5->_maxNotificationCount = [coderCopy decodeIntegerForKey:@"maxNotificationCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_localizedDisplayName forKey:@"localizedDisplayName"];
  [coderCopy encodeObject:self->_purchaseURL forKey:@"purchaseURL"];
  [coderCopy encodeObject:self->_supportedTransitNetworkIdentifiers forKey:@"supportedTransitNetworkIdentifiers"];
  [coderCopy encodeInteger:self->_maxNotificationCount forKey:@"maxNotificationCount"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(PKTransitPartner *)self identifier];
  localizedDisplayName = [(PKTransitPartner *)self localizedDisplayName];
  purchaseURL = [(PKTransitPartner *)self purchaseURL];
  supportedTransitNetworkIdentifiers = [(PKTransitPartner *)self supportedTransitNetworkIdentifiers];
  v9 = [v3 stringWithFormat:@"<%@: %p> identifier: %@, localizedDisplayName: %@, purchaseURL: %@, supportedTransitNetworkIdentifiers: %@", v4, self, identifier, localizedDisplayName, purchaseURL, supportedTransitNetworkIdentifiers];

  return v9;
}

@end