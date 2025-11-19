@interface UNCPushRegistration
+ (id)pushRegistrationWithEnvironment:(id)a3 tokenIdentifier:(id)a4 token:(id)a5;
- (BOOL)isEqual:(id)a3;
- (UNCPushRegistration)initWithDictionaryRepresentation:(id)a3;
- (UNCPushRegistration)initWithEnvironment:(id)a3 tokenIdentifier:(id)a4 token:(id)a5;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation UNCPushRegistration

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(UNCPushRegistration *)self environment];
  [v3 bs_setSafeObject:v4 forKey:@"Environment"];

  v5 = [(UNCPushRegistration *)self token];
  [v3 bs_setSafeObject:v5 forKey:@"Token"];

  v6 = [(UNCPushRegistration *)self tokenIdentifier];
  [v3 bs_setSafeObject:v6 forKey:@"TokenIdentifier"];

  return v3;
}

+ (id)pushRegistrationWithEnvironment:(id)a3 tokenIdentifier:(id)a4 token:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithEnvironment:v10 tokenIdentifier:v9 token:v8];

  return v11;
}

- (UNCPushRegistration)initWithEnvironment:(id)a3 tokenIdentifier:(id)a4 token:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = UNCPushRegistration;
  v11 = [(UNCPushRegistration *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    environment = v11->_environment;
    v11->_environment = v12;

    v14 = [v9 copy];
    tokenIdentifier = v11->_tokenIdentifier;
    v11->_tokenIdentifier = v14;

    v16 = [v10 copy];
    token = v11->_token;
    v11->_token = v16;
  }

  return v11;
}

- (UNCPushRegistration)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"Environment"];
  v6 = [v4 objectForKey:@"TokenIdentifier"];
  v7 = [v4 objectForKey:@"Token"];

  v8 = [(UNCPushRegistration *)self initWithEnvironment:v5 tokenIdentifier:v6 token:v7];
  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(UNCPushRegistration *)self environment];
  v5 = [v3 appendObject:v4 withName:@"Environment"];

  v6 = [(UNCPushRegistration *)self tokenIdentifier];
  v7 = [v3 appendObject:v6 withName:@"TokenIdentifier"];

  v8 = [(UNCPushRegistration *)self token];
  v9 = [v8 debugDescription];
  v10 = [v3 appendObject:v9 withName:@"Token"];

  v11 = [v3 build];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_6;
  }

  v6 = [(UNCPushRegistration *)self environment];
  v7 = [v4 environment];
  v8 = UNEqualObjects();

  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = [(UNCPushRegistration *)self token];
  v10 = [v4 environment];
  v11 = UNEqualObjects();

  if (v11)
  {
    v12 = [(UNCPushRegistration *)self tokenIdentifier];
    v13 = [v4 environment];
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
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(UNCPushRegistration *)self environment];
  v5 = [v3 appendObject:v4];

  v6 = [(UNCPushRegistration *)self token];
  v7 = [v3 appendObject:v6];

  v8 = [(UNCPushRegistration *)self tokenIdentifier];
  v9 = [v3 appendObject:v8];

  v10 = [v3 hash];
  return v10;
}

@end