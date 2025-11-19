@interface PKTransitPartner
- (PKTransitPartner)initWithCoder:(id)a3;
- (PKTransitPartner)initWithIdentifier:(id)a3 localizedDisplayName:(id)a4;
- (PKTransitPartner)initWithIdentifier:(id)a3 localizedDisplayName:(id)a4 purchaseURL:(id)a5 supportedTransitNetworkIdentifiers:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKTransitPartner

- (PKTransitPartner)initWithIdentifier:(id)a3 localizedDisplayName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKTransitPartner;
  v9 = [(PKTransitPartner *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_localizedDisplayName, a4);
    v10->_maxNotificationCount = 3;
  }

  return v10;
}

- (PKTransitPartner)initWithIdentifier:(id)a3 localizedDisplayName:(id)a4 purchaseURL:(id)a5 supportedTransitNetworkIdentifiers:(id)a6
{
  v11 = a5;
  v12 = a6;
  v13 = [(PKTransitPartner *)self initWithIdentifier:a3 localizedDisplayName:a4];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_purchaseURL, a5);
    objc_storeStrong(&v14->_supportedTransitNetworkIdentifiers, a6);
    v14->_maxNotificationCount = 3;
  }

  return v14;
}

- (PKTransitPartner)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PKTransitPartner;
  v5 = [(PKTransitPartner *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedDisplayName"];
    localizedDisplayName = v5->_localizedDisplayName;
    v5->_localizedDisplayName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"purchaseURL"];
    purchaseURL = v5->_purchaseURL;
    v5->_purchaseURL = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"supportedTransitNetworkIdentifiers"];
    supportedTransitNetworkIdentifiers = v5->_supportedTransitNetworkIdentifiers;
    v5->_supportedTransitNetworkIdentifiers = v15;

    v5->_maxNotificationCount = [v4 decodeIntegerForKey:@"maxNotificationCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_localizedDisplayName forKey:@"localizedDisplayName"];
  [v5 encodeObject:self->_purchaseURL forKey:@"purchaseURL"];
  [v5 encodeObject:self->_supportedTransitNetworkIdentifiers forKey:@"supportedTransitNetworkIdentifiers"];
  [v5 encodeInteger:self->_maxNotificationCount forKey:@"maxNotificationCount"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PKTransitPartner *)self identifier];
  v6 = [(PKTransitPartner *)self localizedDisplayName];
  v7 = [(PKTransitPartner *)self purchaseURL];
  v8 = [(PKTransitPartner *)self supportedTransitNetworkIdentifiers];
  v9 = [v3 stringWithFormat:@"<%@: %p> identifier: %@, localizedDisplayName: %@, purchaseURL: %@, supportedTransitNetworkIdentifiers: %@", v4, self, v5, v6, v7, v8];

  return v9;
}

@end