@interface PRChildPosterAttribute
+ (id)decodeObjectWithJSON:(id)a3;
- (PRChildPosterAttribute)initWithChildPosterUUID:(id)a3 dateCreated:(id)a4 providerIdentifier:(id)a5;
- (id)encodeJSON;
@end

@implementation PRChildPosterAttribute

- (PRChildPosterAttribute)initWithChildPosterUUID:(id)a3 dateCreated:(id)a4 providerIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = PRChildPosterAttribute;
  v11 = [(PRChildPosterAttribute *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    childPosterUUID = v11->_childPosterUUID;
    v11->_childPosterUUID = v12;

    v14 = [v9 copy];
    dateCreated = v11->_dateCreated;
    v11->_dateCreated = v14;

    v16 = [v10 copy];
    providerIdentifier = v11->_providerIdentifier;
    v11->_providerIdentifier = v16;
  }

  return v11;
}

+ (id)decodeObjectWithJSON:(id)a3
{
  v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:16 error:0];
  v4 = [v3 objectForKey:@"dateCreated"];
  [v4 doubleValue];
  v6 = v5;

  v7 = [v3 objectForKey:@"UUIDString"];
  v8 = [v3 objectForKey:@"providerIdentifier"];
  if (v7)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
    v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v6];
    v11 = [[PRChildPosterAttribute alloc] initWithChildPosterUUID:v9 dateCreated:v10 providerIdentifier:v8];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)encodeJSON
{
  v15[4] = *MEMORY[0x1E69E9840];
  if (encodeJSON_onceToken != -1)
  {
    [PRChildPosterAttribute encodeJSON];
  }

  v3 = MEMORY[0x1E696ACB0];
  v14[0] = @"dateCreated";
  v4 = encodeJSON_posixNumberFormatter;
  v5 = MEMORY[0x1E696AD98];
  [(NSDate *)self->_dateCreated timeIntervalSince1970];
  v6 = [v5 numberWithDouble:?];
  v7 = [v4 stringForObjectValue:v6];
  v15[0] = v7;
  v14[1] = @"UUIDString";
  v8 = [(NSUUID *)self->_childPosterUUID UUIDString];
  providerIdentifier = self->_providerIdentifier;
  v15[1] = v8;
  v15[2] = providerIdentifier;
  v14[2] = @"providerIdentifier";
  v14[3] = @"attributeType";
  v10 = [(PRChildPosterAttribute *)self attributeType];
  v15[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v12 = [v3 dataWithJSONObject:v11 options:2 error:0];

  return v12;
}

void __36__PRChildPosterAttribute_encodeJSON__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = encodeJSON_posixNumberFormatter;
  encodeJSON_posixNumberFormatter = v0;

  v2 = encodeJSON_posixNumberFormatter;
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];
}

@end