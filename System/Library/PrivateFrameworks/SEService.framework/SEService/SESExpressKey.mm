@interface SESExpressKey
+ (id)withKeyIdentifier:(id)identifier appletIdentifier:(id)appletIdentifier configuration:(id)configuration;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation SESExpressKey

+ (id)withKeyIdentifier:(id)identifier appletIdentifier:(id)appletIdentifier configuration:(id)configuration
{
  identifierCopy = identifier;
  appletIdentifierCopy = appletIdentifier;
  configurationCopy = configuration;
  v10 = objc_opt_new();
  v11 = v10[1];
  v10[1] = identifierCopy;
  v12 = identifierCopy;

  v13 = v10[2];
  v10[2] = appletIdentifierCopy;
  v14 = appletIdentifierCopy;

  v15 = v10[3];
  v10[3] = configurationCopy;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    keyIdentifier = [(SESExpressKey *)self keyIdentifier];
    keyIdentifier2 = [equalCopy keyIdentifier];
    v7 = [keyIdentifier isEqualToString:keyIdentifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  keyIdentifier = [(SESExpressKey *)self keyIdentifier];
  v3 = [keyIdentifier hash];

  return v3;
}

@end