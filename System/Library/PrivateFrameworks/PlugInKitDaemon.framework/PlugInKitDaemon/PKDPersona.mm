@interface PKDPersona
+ (BOOL)personasAreSupported;
+ (id)invalidPersona;
+ (id)nullPersona;
+ (id)personaWithUserPersonaAttributes:(id)attributes;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPersona:(id)persona;
- (PKDPersona)initWithPersonaID:(id)d enterprise:(BOOL)enterprise;
- (id)description;
@end

@implementation PKDPersona

+ (BOOL)personasAreSupported
{
  if (personasAreSupported_token != -1)
  {
    +[PKDPersona personasAreSupported];
  }

  return personasAreSupported_personasSupported;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  personaID = [(PKDPersona *)self personaID];
  isEnterprise = [(PKDPersona *)self isEnterprise];
  v7 = "NO";
  if (isEnterprise)
  {
    v7 = "YES";
  }

  v8 = [v3 initWithFormat:@"%@: personaID: %@, isEnterprise: %s", v4, personaID, v7];

  return v8;
}

+ (id)personaWithUserPersonaAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [attributesCopy userPersona_id]);
  v6 = [self alloc];
  isEnterprisePersona = [attributesCopy isEnterprisePersona];

  v8 = [v6 initWithPersonaID:v5 enterprise:isEnterprisePersona];

  return v8;
}

+ (id)invalidPersona
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __38__PKDPersona_Personas__invalidPersona__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (invalidPersona_onceToken != -1)
  {
    dispatch_once(&invalidPersona_onceToken, block);
  }

  v2 = invalidPersona_invalidPersona;

  return v2;
}

uint64_t __38__PKDPersona_Personas__invalidPersona__block_invoke(uint64_t a1)
{
  invalidPersona_invalidPersona = [objc_alloc(*(a1 + 32)) initWithPersonaID:&off_2A1E0 enterprise:0];

  return _objc_release_x1();
}

+ (id)nullPersona
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __35__PKDPersona_Personas__nullPersona__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (nullPersona_onceToken != -1)
  {
    dispatch_once(&nullPersona_onceToken, block);
  }

  v2 = nullPersona_nullPersona;

  return v2;
}

uint64_t __35__PKDPersona_Personas__nullPersona__block_invoke(uint64_t a1)
{
  nullPersona_nullPersona = [objc_alloc(*(a1 + 32)) initWithPersonaID:0 enterprise:0];

  return _objc_release_x1();
}

- (PKDPersona)initWithPersonaID:(id)d enterprise:(BOOL)enterprise
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = PKDPersona;
  v8 = [(PKDPersona *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_personaID, d);
    v9->_enterprise = enterprise;
  }

  return v9;
}

void __34__PKDPersona_personasAreSupported__block_invoke(id a1)
{
  personasAreSupported_personasSupported = 1;
  v1 = pkIsInSpecialSession();
  personasAreSupported_personasSupported = v1 ^ 1;
  if (v1)
  {
    personasAreSupported_personasSupported = 0;
LABEL_5:
    personasAreSupported_personasSupported = 0;
    goto LABEL_8;
  }

  IsServiceAccount = pkIsServiceAccount();
  personasAreSupported_personasSupported = IsServiceAccount ^ 1;
  if (IsServiceAccount)
  {
    personasAreSupported_personasSupported = 0;
    goto LABEL_5;
  }

  v3 = objc_opt_class() != 0;
  personasAreSupported_personasSupported = v3;
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = +[UMUserManager sharedManager];
  personasAreSupported_personasSupported = [v4 isSharedIPad] ^ 1;

LABEL_8:
  if (personasAreSupported_personasSupported == 1)
  {
    v5 = MGGetBoolAnswer();
    personasAreSupported_personasSupported = v5 ^ 1;
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = os_variant_uses_ephemeral_storage() ^ 1;
    }
  }

  else
  {
    v6 = 0;
    personasAreSupported_personasSupported = 0;
  }

  personasAreSupported_personasSupported = v6;
  v7 = pklog_handle_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = personasAreSupported_personasSupported;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "personas supported: %d", v8, 8u);
  }
}

- (BOOL)isEqualToPersona:(id)persona
{
  personaCopy = persona;
  if ([(NSNumber *)self->_personaID isEqual:personaCopy[2]])
  {
    v5 = self->_enterprise == *(personaCopy + 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = self == equalCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PKDPersona *)self isEqualToPersona:equalCopy];
  }

  return v5;
}

@end