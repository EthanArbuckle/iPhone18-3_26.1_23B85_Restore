@interface SSVPushNotificationParameters
- (NSArray)mediaKinds;
- (SSVPushNotificationParameters)init;
- (SSVPushNotificationParameters)initWithXPCEncoding:(id)encoding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (void)setMediaKinds:(id)kinds;
- (void)setValue:(id)value forParameter:(id)parameter;
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

- (void)setMediaKinds:(id)kinds
{
  kindsCopy = kinds;
  v4 = [(NSMutableDictionary *)self->_parameterDictionary objectForKey:@"parameters"];
  v5 = kindsCopy;
  v6 = v4;
  if (kindsCopy)
  {
    if (!v4)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [(NSMutableDictionary *)self->_parameterDictionary setObject:v6 forKey:@"parameters"];
      v5 = kindsCopy;
    }

    [v6 setObject:v5 forKey:@"media-kinds"];
  }

  else
  {
    [v4 removeObjectForKey:@"media-kinds"];
  }
}

- (void)setValue:(id)value forParameter:(id)parameter
{
  parameterDictionary = self->_parameterDictionary;
  if (value)
  {
    [(NSMutableDictionary *)parameterDictionary setObject:value forKey:parameter];
  }

  else
  {
    [(NSMutableDictionary *)parameterDictionary removeObjectForKey:parameter];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setAccountIdentifier:self->_accountIdentifier];
  [v5 setEnvironmentName:self->_environmentName];
  v6 = [(NSMutableDictionary *)self->_parameterDictionary mutableCopyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  [v5 setRequestType:self->_requestType];
  return v5;
}

- (SSVPushNotificationParameters)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
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