@interface STSetRequest
+ (id)requestWithUUID:(id)d withSyncToken:(id)token withDeclarations:(id)declarations;
- (BOOL)loadRequestFromDictionary:(id)dictionary error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serialize;
@end

@implementation STSetRequest

+ (id)requestWithUUID:(id)d withSyncToken:(id)token withDeclarations:(id)declarations
{
  declarationsCopy = declarations;
  tokenCopy = token;
  dCopy = d;
  v10 = objc_opt_new();
  [v10 setRequestUUID:dCopy];

  [v10 setRequestType:@"Set"];
  [v10 setSyncToken:tokenCopy];

  [v10 setDeclarations:declarationsCopy];

  return v10;
}

- (BOOL)loadRequestFromDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = STSetRequest;
  if ([(STRemoteManagementRequest *)&v17 loadRequestFromDictionary:dictionaryCopy error:error])
  {
    v16 = 0;
    v7 = [(STSetRequest *)self loadStringFromDictionary:dictionaryCopy withKey:@"SyncToken" isRequired:1 defaultValue:0 error:&v16];
    v8 = v16;
    syncToken = self->_syncToken;
    self->_syncToken = v7;

    if (!v8)
    {
      v15 = 0;
      v10 = [(STSetRequest *)self loadArrayFromDictionary:dictionaryCopy withKey:@"Declarations" validator:&stru_1001A5DC0 isRequired:0 defaultValue:0 error:&v15];
      v8 = v15;
      declarations = self->_declarations;
      self->_declarations = v10;
    }

    v12 = v8 == 0;
    if (error && v8)
    {
      v13 = v8;
      *error = v8;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)serialize
{
  v3 = +[NSMutableDictionary dictionary];
  v7.receiver = self;
  v7.super_class = STSetRequest;
  serialize = [(STRemoteManagementRequest *)&v7 serialize];
  [v3 addEntriesFromDictionary:serialize];

  [(STSetRequest *)self serializeStringIntoDictionary:v3 withKey:@"SyncToken" withValue:self->_syncToken isRequired:1 defaultValue:0];
  [(STSetRequest *)self serializeArrayIntoDictionary:v3 withKey:@"Declarations" withValue:self->_declarations itemSerializer:&stru_1001A5E00 isRequired:0 defaultValue:0];
  v5 = [v3 copy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = STSetRequest;
  v4 = [(STRemoteManagementRequest *)&v10 copyWithZone:zone];
  v5 = [(NSString *)self->_syncToken copy];
  v6 = v4[4];
  v4[4] = v5;

  v7 = [(NSArray *)self->_declarations copy];
  v8 = v4[5];
  v4[5] = v7;

  return v4;
}

@end