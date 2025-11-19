@interface PATCCAccess
+ (id)accessWithAccessor:(id)a3 forService:(id)a4;
+ (id)accessWithAuditToken:(id *)a3 forService:(id)a4;
+ (id)accessWithAuthorization:(id)a3;
- (BOOL)isEqualToAccess:(id)a3 withOptions:(unint64_t)a4;
- (PATCCAccess)initWithAccessor:(id)a3 forService:(id)a4 assetIdentifiers:(id)a5;
- (PATCCAccess)initWithAccessor:(id)a3 identifier:(id)a4 kind:(int64_t)a5 forService:(id)a6;
- (PATCCAccess)initWithAuditToken:(id *)a3 forService:(id)a4;
- (PATCCAccess)initWithAuthorization:(id)a3;
- (PATCCAccess)initWithCoder:(id)a3;
- (PATCCAccess)initWithProto:(id)a3;
- (PATCCAccess)initWithProtoData:(id)a3;
- (id)category;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionForCategory;
- (id)proto;
- (unint64_t)hashWithOptions:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PATCCAccess

- (id)descriptionForCategory
{
  v3 = [(PATCCAccess *)self category];
  tccService = v3;
  if (!v3)
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

+ (id)accessWithAuthorization:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithAuthorization:v4];

  return v5;
}

+ (id)accessWithAuditToken:(id *)a3 forService:(id)a4
{
  v6 = a4;
  v7 = [a1 alloc];
  v8 = *&a3->var0[4];
  v11[0] = *a3->var0;
  v11[1] = v8;
  v9 = [v7 initWithAuditToken:v11 forService:v6];

  return v9;
}

+ (id)accessWithAccessor:(id)a3 forService:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithAccessor:v7 forService:v6];

  return v8;
}

- (PATCCAccess)initWithAuthorization:(id)a3
{
  v4 = a3;
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
        v9 = self;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PATCCAccess)initWithAuditToken:(id *)a3 forService:(id)a4
{
  v5 = *&a3->var0[4];
  v10 = *a3->var0;
  v11 = v5;
  v6 = a4;
  v7 = [PAApplication applicationWithAuditToken:&v10];
  v8 = [(PATCCAccess *)self initWithAccessor:v7 forService:v6, v10, v11];

  return v8;
}

- (PATCCAccess)initWithAccessor:(id)a3 forService:(id)a4 assetIdentifiers:(id)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PATCCAccess;
  v9 = [(PAAccess *)&v14 initWithAccessor:a3 assetIdentifiers:a5];
  if (v9)
  {
    v10 = [v8 copy];
    tccService = v9->_tccService;
    v9->_tccService = v10;

    v12 = v9;
  }

  return v9;
}

- (PATCCAccess)initWithAccessor:(id)a3 identifier:(id)a4 kind:(int64_t)a5 forService:(id)a6
{
  v10 = a6;
  v15.receiver = self;
  v15.super_class = PATCCAccess;
  v11 = [(PAAccess *)&v15 initWithAccessor:a3 identifier:a4 kind:a5];
  if (v11)
  {
    v12 = [v10 copy];
    tccService = v11->_tccService;
    v11->_tccService = v12;
  }

  return v11;
}

- (unint64_t)hashWithOptions:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = PATCCAccess;
  v4 = [(PAAccess *)&v6 hashWithOptions:a3];
  return [(NSString *)self->_tccService hash]- v4 + 32 * v4;
}

- (BOOL)isEqualToAccess:(id)a3 withOptions:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = PATCCAccess;
  if ([(PAAccess *)&v11 isEqualToAccess:v6 withOptions:a4])
  {
    tccService = self->_tccService;
    v8 = [v6 tccService];
    v9 = [(NSString *)tccService isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PATCCAccess)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PATCCAccess;
  v5 = [(PAAccess *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tccService"];
    tccService = v5->_tccService;
    v5->_tccService = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PATCCAccess;
  v4 = a3;
  [(PAAccess *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_tccService forKey:{@"tccService", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = PATCCAccess;
  v5 = [(PAAccess *)&v9 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_tccService copyWithZone:a3];
    v7 = v5[9];
    v5[9] = v6;
  }

  return v5;
}

- (PATCCAccess)initWithProto:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 access];
    v11.receiver = self;
    v11.super_class = PATCCAccess;
    self = [(PAAccess *)&v11 initWithProto:v6];

    if (self)
    {
      v7 = [v5 tccService];

      if (v7)
      {
        v8 = [v5 tccService];
        tccService = self->_tccService;
        self->_tccService = v8;

        v7 = self;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PATCCAccess)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[PAPBTCCAccess alloc] initWithData:v4];

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
  v4 = [(PAAccess *)&v7 proto];
  if (v4)
  {
    [v3 setAccess:v4];
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