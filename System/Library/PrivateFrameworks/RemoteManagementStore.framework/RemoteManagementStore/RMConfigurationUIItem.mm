@interface RMConfigurationUIItem
+ (id)configurationUIItemWithConfiguration:(id)configuration details:(id)details;
+ (id)configurationUIItemWithIdentifier:(id)identifier serverToken:(id)token type:(id)type details:(id)details;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConfigurationUI:(id)i;
- (RMConfigurationUIItem)initWithCoder:(id)coder;
- (RMConfigurationUIItem)initWithConfiguration:(id)configuration details:(id)details;
- (RMConfigurationUIItem)initWithIdentifier:(id)identifier serverToken:(id)token type:(id)type details:(id)details;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RMConfigurationUIItem

+ (id)configurationUIItemWithConfiguration:(id)configuration details:(id)details
{
  detailsCopy = details;
  configurationCopy = configuration;
  v7 = [[RMConfigurationUIItem alloc] initWithConfiguration:configurationCopy details:detailsCopy];

  return v7;
}

+ (id)configurationUIItemWithIdentifier:(id)identifier serverToken:(id)token type:(id)type details:(id)details
{
  detailsCopy = details;
  typeCopy = type;
  tokenCopy = token;
  identifierCopy = identifier;
  v13 = [[RMConfigurationUIItem alloc] initWithIdentifier:identifierCopy serverToken:tokenCopy type:typeCopy details:detailsCopy];

  return v13;
}

- (RMConfigurationUIItem)initWithConfiguration:(id)configuration details:(id)details
{
  detailsCopy = details;
  configurationCopy = configuration;
  declarationIdentifier = [configurationCopy declarationIdentifier];
  declarationServerToken = [configurationCopy declarationServerToken];
  declarationType = [configurationCopy declarationType];

  v11 = [(RMConfigurationUIItem *)self initWithIdentifier:declarationIdentifier serverToken:declarationServerToken type:declarationType details:detailsCopy];
  return v11;
}

- (RMConfigurationUIItem)initWithIdentifier:(id)identifier serverToken:(id)token type:(id)type details:(id)details
{
  identifierCopy = identifier;
  tokenCopy = token;
  typeCopy = type;
  detailsCopy = details;
  v18.receiver = self;
  v18.super_class = RMConfigurationUIItem;
  v15 = [(RMConfigurationUIItem *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_declarationIdentifier, identifier);
    objc_storeStrong(&v16->_declarationServerToken, token);
    objc_storeStrong(&v16->_declarationType, type);
    objc_storeStrong(&v16->_declarationDetails, details);
  }

  return v16;
}

- (RMConfigurationUIItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"server-token"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"details"];

  v9 = [(RMConfigurationUIItem *)self initWithIdentifier:v5 serverToken:v6 type:v7 details:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  declarationIdentifier = [(RMConfigurationUIItem *)self declarationIdentifier];
  [coderCopy encodeObject:declarationIdentifier forKey:@"identifier"];

  declarationServerToken = [(RMConfigurationUIItem *)self declarationServerToken];
  [coderCopy encodeObject:declarationServerToken forKey:@"server-token"];

  declarationType = [(RMConfigurationUIItem *)self declarationType];
  [coderCopy encodeObject:declarationType forKey:@"type"];

  declarationDetails = [(RMConfigurationUIItem *)self declarationDetails];
  [coderCopy encodeObject:declarationDetails forKey:@"details"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMConfigurationUIItem *)self isEqualToConfigurationUI:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToConfigurationUI:(id)i
{
  iCopy = i;
  declarationIdentifier = [(RMConfigurationUIItem *)self declarationIdentifier];
  declarationIdentifier2 = [iCopy declarationIdentifier];
  if ([declarationIdentifier isEqualToString:declarationIdentifier2])
  {
    declarationServerToken = [(RMConfigurationUIItem *)self declarationServerToken];
    declarationServerToken2 = [iCopy declarationServerToken];
    if ([declarationServerToken isEqualToString:declarationServerToken2])
    {
      declarationType = [(RMConfigurationUIItem *)self declarationType];
      declarationType2 = [iCopy declarationType];
      if ([declarationType isEqualToString:declarationType2])
      {
        declarationDetails = [(RMConfigurationUIItem *)self declarationDetails];
        declarationDetails2 = [iCopy declarationDetails];
        v13 = [declarationDetails isEqual:declarationDetails2];
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

  return v13;
}

@end