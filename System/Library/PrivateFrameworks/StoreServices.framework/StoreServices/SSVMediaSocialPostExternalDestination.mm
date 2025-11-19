@interface SSVMediaSocialPostExternalDestination
- (SSVMediaSocialPostExternalDestination)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
@end

@implementation SSVMediaSocialPostExternalDestination

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setAccessToken:self->_accessToken];
  [v4 setPageAccessToken:self->_pageAccessToken];
  [v4 setPageIdentifier:self->_pageIdentifier];
  [v4 setServiceIdentifier:self->_serviceIdentifier];
  return v4;
}

- (SSVMediaSocialPostExternalDestination)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1DA6E0380](v4) == MEMORY[0x1E69E9E80])
  {
    v6 = [(SSVMediaSocialPostExternalDestination *)self init];
    if (!v6)
    {
      goto LABEL_5;
    }

    objc_opt_class();
    v8 = SSXPCDictionaryCopyCFObjectWithClass(v5, "0");
    accessToken = v6->_accessToken;
    v6->_accessToken = v8;

    objc_opt_class();
    v10 = SSXPCDictionaryCopyCFObjectWithClass(v5, "1");
    pageAccessToken = v6->_pageAccessToken;
    v6->_pageAccessToken = v10;

    objc_opt_class();
    v12 = SSXPCDictionaryCopyCFObjectWithClass(v5, "2");
    pageIdentifier = v6->_pageIdentifier;
    v6->_pageIdentifier = v12;

    objc_opt_class();
    v14 = SSXPCDictionaryCopyCFObjectWithClass(v5, "3");
    self = v6->_serviceIdentifier;
    v6->_serviceIdentifier = v14;
  }

  else
  {
    v6 = 0;
  }

LABEL_5:
  return v6;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetObject(v3, "0", self->_accessToken);
  SSXPCDictionarySetObject(v3, "1", self->_pageAccessToken);
  SSXPCDictionarySetObject(v3, "2", self->_pageIdentifier);
  SSXPCDictionarySetObject(v3, "3", self->_serviceIdentifier);
  return v3;
}

@end