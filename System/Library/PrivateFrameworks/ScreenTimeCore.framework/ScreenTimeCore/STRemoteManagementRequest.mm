@interface STRemoteManagementRequest
+ (id)requestForPayload:(id)payload error:(id *)error;
- (BOOL)loadRequestFromDictionary:(id)dictionary error:(id *)error;
- (STRemoteManagementRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serialize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STRemoteManagementRequest

+ (id)requestForPayload:(id)payload error:(id *)error
{
  payloadCopy = payload;
  v6 = [payloadCopy objectForKeyedSubscript:@"RequestType"];
  if (objc_opt_class())
  {
    v7 = objc_opt_new();
    v13 = 0;
    [v7 loadRequestFromDictionary:payloadCopy error:&v13];
    v8 = v13;
    v9 = v8;
    if (v8)
    {
      if (error)
      {
        v10 = v8;
        v11 = 0;
        *error = v9;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v7 = v7;
      v11 = v7;
    }

    goto LABEL_9;
  }

  if (error)
  {
    v14 = NSLocalizedDescriptionKey;
    v9 = [NSString stringWithFormat:@"Could not match request type: %@", v6];
    v15 = v9;
    v7 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [NSError errorWithDomain:@"error" code:1 userInfo:v7];
    *error = v11 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (BOOL)loadRequestFromDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v15 = 0;
  v7 = [(STRemoteManagementRequest *)self loadStringFromDictionary:dictionaryCopy withKey:@"RequestUUID" isRequired:1 defaultValue:0 error:&v15];
  v8 = v15;
  requestUUID = self->_requestUUID;
  self->_requestUUID = v7;

  if (!v8)
  {
    v14 = 0;
    v10 = [(STRemoteManagementRequest *)self loadStringFromDictionary:dictionaryCopy withKey:@"RequestType" isRequired:1 defaultValue:0 error:&v14];
    v8 = v14;
    requestType = self->_requestType;
    self->_requestType = v10;
  }

  if (error && v8)
  {
    v12 = v8;
    *error = v8;
  }

  return v8 == 0;
}

- (id)serialize
{
  v3 = +[NSMutableDictionary dictionary];
  [(STRemoteManagementRequest *)self serializeStringIntoDictionary:v3 withKey:@"RequestUUID" withValue:self->_requestUUID isRequired:1 defaultValue:0];
  [(STRemoteManagementRequest *)self serializeStringIntoDictionary:v3 withKey:@"RequestType" withValue:self->_requestType isRequired:1 defaultValue:0];
  v4 = [v3 copy];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serialize = [(STRemoteManagementRequest *)self serialize];
  [coderCopy encodeObject:serialize forKey:@"payload"];
}

- (STRemoteManagementRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = STRemoteManagementRequest;
  v5 = [(STRemoteManagementRequest *)&v24 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v22 = objc_opt_class();
  v21 = objc_opt_class();
  v6 = coderCopy;
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v20 = v7;
  coderCopy = v6;
  v15 = [NSSet setWithObjects:v22, v21, v20, v8, v9, v10, v11, v12, v13, v14, objc_opt_class(), 0];
  v16 = [v6 decodeObjectOfClasses:v15 forKey:@"payload"];
  v23 = 0;
  LOBYTE(v6) = [(STRemoteManagementRequest *)v5 loadRequestFromDictionary:v16 error:&v23];
  v17 = v23;

  if (v6)
  {

LABEL_4:
    v18 = v5;
    goto LABEL_8;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10011FFD4(v17);
  }

  v18 = 0;
LABEL_8:

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = STRemoteManagementRequest;
  v4 = [(STRemoteManagementRequest *)&v10 copyWithZone:zone];
  v5 = [(NSString *)self->_requestUUID copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_requestType copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end