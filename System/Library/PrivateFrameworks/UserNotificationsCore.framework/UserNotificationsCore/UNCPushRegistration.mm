@interface UNCPushRegistration
+ (id)pushRegistrationWithEnvironment:(id)environment tokenIdentifier:(id)identifier token:(id)token;
- (BOOL)isEqual:(id)equal;
- (UNCPushRegistration)initWithDictionaryRepresentation:(id)representation;
- (UNCPushRegistration)initWithEnvironment:(id)environment tokenIdentifier:(id)identifier token:(id)token;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation UNCPushRegistration

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  environment = [(UNCPushRegistration *)self environment];
  [dictionary bs_setSafeObject:environment forKey:@"Environment"];

  token = [(UNCPushRegistration *)self token];
  [dictionary bs_setSafeObject:token forKey:@"Token"];

  tokenIdentifier = [(UNCPushRegistration *)self tokenIdentifier];
  [dictionary bs_setSafeObject:tokenIdentifier forKey:@"TokenIdentifier"];

  return dictionary;
}

+ (id)pushRegistrationWithEnvironment:(id)environment tokenIdentifier:(id)identifier token:(id)token
{
  tokenCopy = token;
  identifierCopy = identifier;
  environmentCopy = environment;
  v11 = [[self alloc] initWithEnvironment:environmentCopy tokenIdentifier:identifierCopy token:tokenCopy];

  return v11;
}

- (UNCPushRegistration)initWithEnvironment:(id)environment tokenIdentifier:(id)identifier token:(id)token
{
  environmentCopy = environment;
  identifierCopy = identifier;
  tokenCopy = token;
  v19.receiver = self;
  v19.super_class = UNCPushRegistration;
  v11 = [(UNCPushRegistration *)&v19 init];
  if (v11)
  {
    v12 = [environmentCopy copy];
    environment = v11->_environment;
    v11->_environment = v12;

    v14 = [identifierCopy copy];
    tokenIdentifier = v11->_tokenIdentifier;
    v11->_tokenIdentifier = v14;

    v16 = [tokenCopy copy];
    token = v11->_token;
    v11->_token = v16;
  }

  return v11;
}

- (UNCPushRegistration)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKey:@"Environment"];
  v6 = [representationCopy objectForKey:@"TokenIdentifier"];
  v7 = [representationCopy objectForKey:@"Token"];

  v8 = [(UNCPushRegistration *)self initWithEnvironment:v5 tokenIdentifier:v6 token:v7];
  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  environment = [(UNCPushRegistration *)self environment];
  v5 = [v3 appendObject:environment withName:@"Environment"];

  tokenIdentifier = [(UNCPushRegistration *)self tokenIdentifier];
  v7 = [v3 appendObject:tokenIdentifier withName:@"TokenIdentifier"];

  token = [(UNCPushRegistration *)self token];
  v9 = [token debugDescription];
  v10 = [v3 appendObject:v9 withName:@"Token"];

  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (!equalCopy)
  {
    goto LABEL_6;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_6;
  }

  environment = [(UNCPushRegistration *)self environment];
  environment2 = [equalCopy environment];
  v8 = UNEqualObjects();

  if (!v8)
  {
    goto LABEL_6;
  }

  token = [(UNCPushRegistration *)self token];
  environment3 = [equalCopy environment];
  v11 = UNEqualObjects();

  if (v11)
  {
    tokenIdentifier = [(UNCPushRegistration *)self tokenIdentifier];
    environment4 = [equalCopy environment];
    v14 = UNEqualObjects();
  }

  else
  {
LABEL_6:
    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  environment = [(UNCPushRegistration *)self environment];
  v5 = [builder appendObject:environment];

  token = [(UNCPushRegistration *)self token];
  v7 = [builder appendObject:token];

  tokenIdentifier = [(UNCPushRegistration *)self tokenIdentifier];
  v9 = [builder appendObject:tokenIdentifier];

  v10 = [builder hash];
  return v10;
}

@end