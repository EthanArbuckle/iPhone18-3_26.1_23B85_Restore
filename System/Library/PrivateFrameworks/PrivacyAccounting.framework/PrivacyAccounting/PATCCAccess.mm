@interface PATCCAccess
+ (id)accessWithAccessor:(id)accessor forService:(id)service;
+ (id)accessWithAuditToken:(id *)token forService:(id)service;
+ (id)accessWithAuthorization:(id)authorization;
- (BOOL)isEqualToAccess:(id)access withOptions:(unint64_t)options;
- (PATCCAccess)initWithAccessor:(id)accessor forService:(id)service assetIdentifiers:(id)identifiers;
- (PATCCAccess)initWithAccessor:(id)accessor identifier:(id)identifier kind:(int64_t)kind forService:(id)service;
- (PATCCAccess)initWithAuditToken:(id *)token forService:(id)service;
- (PATCCAccess)initWithAuthorization:(id)authorization;
- (PATCCAccess)initWithCoder:(id)coder;
- (PATCCAccess)initWithProto:(id)proto;
- (PATCCAccess)initWithProtoData:(id)data;
- (id)category;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionForCategory;
- (id)proto;
- (unint64_t)hashWithOptions:(unint64_t)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PATCCAccess

- (id)descriptionForCategory
{
  category = [(PATCCAccess *)self category];
  tccService = category;
  if (!category)
  {
    tccService = self->_tccService;
  }

  v5 = tccService;

  return tccService;
}

- (id)category
{
  if (category_onceToken != -1)
  {
    [PATCCAccess category];
  }

  v3 = [category_tccServiceToCategory objectForKeyedSubscript:self->_tccService];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"unknown";
  }

  v6 = v5;

  return v5;
}

void __23__PATCCAccess_category__block_invoke()
{
  v7[7] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69D5500];
  v6[0] = *MEMORY[0x1E69D5520];
  v6[1] = v0;
  v7[0] = @"camera";
  v7[1] = @"contacts";
  v1 = *MEMORY[0x1E69D5588];
  v6[2] = *MEMORY[0x1E69D5580];
  v6[3] = v1;
  v7[2] = @"mediaLibrary";
  v7[3] = @"microphone";
  v2 = *MEMORY[0x1E69D5600];
  v6[4] = *MEMORY[0x1E69D55C8];
  v6[5] = v2;
  v7[4] = @"photos";
  v7[5] = @"userTracking";
  v6[6] = *MEMORY[0x1E69D5518];
  v7[6] = @"calendar";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:7];
  v4 = category_tccServiceToCategory;
  category_tccServiceToCategory = v3;

  v5 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = PATCCAccess;
  v4 = [(PAAccess *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ tccService:%@", v4, self->_tccService];

  return v5;
}

+ (id)accessWithAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  v5 = [[self alloc] initWithAuthorization:authorizationCopy];

  return v5;
}

+ (id)accessWithAuditToken:(id *)token forService:(id)service
{
  serviceCopy = service;
  v7 = [self alloc];
  v8 = *&token->var0[4];
  v11[0] = *token->var0;
  v11[1] = v8;
  v9 = [v7 initWithAuditToken:v11 forService:serviceCopy];

  return v9;
}

+ (id)accessWithAccessor:(id)accessor forService:(id)service
{
  serviceCopy = service;
  accessorCopy = accessor;
  v8 = [[self alloc] initWithAccessor:accessorCopy forService:serviceCopy];

  return v8;
}

- (PATCCAccess)initWithAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  v5 = tcc_authorization_record_get_service();
  if (v5)
  {
    CF_name = tcc_service_get_CF_name();
    v7 = tcc_authorization_record_get_subject_identity();
    if (v7)
    {
      v8 = [[PAApplication alloc] initWithTCCIdentity:v7];
      if (v8)
      {
        self = [(PATCCAccess *)self initWithAccessor:v8 forService:CF_name];
        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PATCCAccess)initWithAuditToken:(id *)token forService:(id)service
{
  v5 = *&token->var0[4];
  v10 = *token->var0;
  v11 = v5;
  serviceCopy = service;
  v7 = [PAApplication applicationWithAuditToken:&v10];
  v8 = [(PATCCAccess *)self initWithAccessor:v7 forService:serviceCopy, v10, v11];

  return v8;
}

- (PATCCAccess)initWithAccessor:(id)accessor forService:(id)service assetIdentifiers:(id)identifiers
{
  serviceCopy = service;
  v14.receiver = self;
  v14.super_class = PATCCAccess;
  v9 = [(PAAccess *)&v14 initWithAccessor:accessor assetIdentifiers:identifiers];
  if (v9)
  {
    v10 = [serviceCopy copy];
    tccService = v9->_tccService;
    v9->_tccService = v10;

    v12 = v9;
  }

  return v9;
}

- (PATCCAccess)initWithAccessor:(id)accessor identifier:(id)identifier kind:(int64_t)kind forService:(id)service
{
  serviceCopy = service;
  v15.receiver = self;
  v15.super_class = PATCCAccess;
  v11 = [(PAAccess *)&v15 initWithAccessor:accessor identifier:identifier kind:kind];
  if (v11)
  {
    v12 = [serviceCopy copy];
    tccService = v11->_tccService;
    v11->_tccService = v12;
  }

  return v11;
}

- (unint64_t)hashWithOptions:(unint64_t)options
{
  v6.receiver = self;
  v6.super_class = PATCCAccess;
  v4 = [(PAAccess *)&v6 hashWithOptions:options];
  return [(NSString *)self->_tccService hash]- v4 + 32 * v4;
}

- (BOOL)isEqualToAccess:(id)access withOptions:(unint64_t)options
{
  accessCopy = access;
  v11.receiver = self;
  v11.super_class = PATCCAccess;
  if ([(PAAccess *)&v11 isEqualToAccess:accessCopy withOptions:options])
  {
    tccService = self->_tccService;
    tccService = [accessCopy tccService];
    v9 = [(NSString *)tccService isEqualToString:tccService];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PATCCAccess)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PATCCAccess;
  v5 = [(PAAccess *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tccService"];
    tccService = v5->_tccService;
    v5->_tccService = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PATCCAccess;
  coderCopy = coder;
  [(PAAccess *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_tccService forKey:{@"tccService", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = PATCCAccess;
  v5 = [(PAAccess *)&v9 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_tccService copyWithZone:zone];
    v7 = v5[9];
    v5[9] = v6;
  }

  return v5;
}

- (PATCCAccess)initWithProto:(id)proto
{
  protoCopy = proto;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = protoCopy;
    access = [v5 access];
    v11.receiver = self;
    v11.super_class = PATCCAccess;
    self = [(PAAccess *)&v11 initWithProto:access];

    if (self)
    {
      selfCopy = [v5 tccService];

      if (selfCopy)
      {
        tccService = [v5 tccService];
        tccService = self->_tccService;
        self->_tccService = tccService;

        selfCopy = self;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PATCCAccess)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[PAPBTCCAccess alloc] initWithData:dataCopy];

    v6 = [(PATCCAccess *)self initWithProto:v5];
    self = v6;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v3 = objc_opt_new();
  v7.receiver = self;
  v7.super_class = PATCCAccess;
  proto = [(PAAccess *)&v7 proto];
  if (proto)
  {
    [v3 setAccess:proto];
    [v3 setTccService:self->_tccService];
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end