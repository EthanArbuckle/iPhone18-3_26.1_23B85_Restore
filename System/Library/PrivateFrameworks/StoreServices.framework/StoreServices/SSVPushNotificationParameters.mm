@interface SSVPushNotificationParameters
- (NSArray)mediaKinds;
- (SSVPushNotificationParameters)init;
- (SSVPushNotificationParameters)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (void)setMediaKinds:(id)a3;
- (void)setValue:(id)a3 forParameter:(id)a4;
@end

@implementation SSVPushNotificationParameters

- (SSVPushNotificationParameters)init
{
  v6.receiver = self;
  v6.super_class = SSVPushNotificationParameters;
  v2 = [(SSVPushNotificationParameters *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    parameterDictionary = v2->_parameterDictionary;
    v2->_parameterDictionary = v3;
  }

  return v2;
}

- (NSArray)mediaKinds
{
  v2 = [(NSMutableDictionary *)self->_parameterDictionary objectForKey:@"parameters"];
  v3 = [v2 objectForKey:@"media-kinds"];

  return v3;
}

- (void)setMediaKinds:(id)a3
{
  v7 = a3;
  v4 = [(NSMutableDictionary *)self->_parameterDictionary objectForKey:@"parameters"];
  v5 = v7;
  v6 = v4;
  if (v7)
  {
    if (!v4)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [(NSMutableDictionary *)self->_parameterDictionary setObject:v6 forKey:@"parameters"];
      v5 = v7;
    }

    [v6 setObject:v5 forKey:@"media-kinds"];
  }

  else
  {
    [v4 removeObjectForKey:@"media-kinds"];
  }
}

- (void)setValue:(id)a3 forParameter:(id)a4
{
  parameterDictionary = self->_parameterDictionary;
  if (a3)
  {
    [(NSMutableDictionary *)parameterDictionary setObject:a3 forKey:a4];
  }

  else
  {
    [(NSMutableDictionary *)parameterDictionary removeObjectForKey:a4];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setAccountIdentifier:self->_accountIdentifier];
  [v5 setEnvironmentName:self->_environmentName];
  v6 = [(NSMutableDictionary *)self->_parameterDictionary mutableCopyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  [v5 setRequestType:self->_requestType];
  return v5;
}

- (SSVPushNotificationParameters)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1DA6E0380](v4) == MEMORY[0x1E69E9E80])
  {
    v15.receiver = self;
    v15.super_class = SSVPushNotificationParameters;
    v6 = [(SSVPushNotificationParameters *)&v15 init];
    if (v6)
    {
      objc_opt_class();
      v8 = SSXPCDictionaryCopyCFObjectWithClass(v5, "0");
      accountIdentifier = v6->_accountIdentifier;
      v6->_accountIdentifier = v8;

      objc_opt_class();
      v10 = SSXPCDictionaryCopyCFObjectWithClass(v5, "1");
      environmentName = v6->_environmentName;
      v6->_environmentName = v10;

      v6->_requestType = xpc_dictionary_get_int64(v5, "3");
      objc_opt_class();
      v12 = SSXPCDictionaryCopyCFObjectWithClass(v5, "2");
      v13 = [(__CFArray *)v12 copy];
      parameterDictionary = v6->_parameterDictionary;
      v6->_parameterDictionary = v13;
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_accountIdentifier);
  SSXPCDictionarySetCFObject(v3, "1", self->_environmentName);
  SSXPCDictionarySetCFObject(v3, "2", self->_parameterDictionary);
  xpc_dictionary_set_int64(v3, "3", self->_requestType);
  return v3;
}

@end