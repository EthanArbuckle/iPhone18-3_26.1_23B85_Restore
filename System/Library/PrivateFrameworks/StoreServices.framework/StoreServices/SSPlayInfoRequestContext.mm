@interface SSPlayInfoRequestContext
- (SSPlayInfoRequestContext)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (void)dealloc;
@end

@implementation SSPlayInfoRequestContext

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSPlayInfoRequestContext;
  [(SSPlayInfoRequestContext *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v5[1] = [(NSNumber *)self->_accountIdentifier copyWithZone:a3];
  v5[2] = [(NSNumber *)self->_contentIdentifier copyWithZone:a3];
  v5[6] = [(NSString *)self->_playbackType copyWithZone:a3];
  v5[3] = [(NSString *)self->_playerGUID copyWithZone:a3];
  v5[4] = [(NSData *)self->_sic copyWithZone:a3];
  v5[5] = [(NSArray *)self->_sinfs copyWithZone:a3];
  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_accountIdentifier);
  SSXPCDictionarySetCFObject(v3, "1", self->_contentIdentifier);
  SSXPCDictionarySetObject(v3, "5", self->_playbackType);
  SSXPCDictionarySetCFObject(v3, "2", self->_playerGUID);
  SSXPCDictionarySetCFObject(v3, "3", self->_sic);
  SSXPCDictionarySetCFObject(v3, "4", self->_sinfs);
  return v3;
}

- (SSPlayInfoRequestContext)initWithXPCEncoding:(id)a3
{
  if (a3 && MEMORY[0x1DA6E0380](a3, a2) == MEMORY[0x1E69E9E80])
  {
    v8.receiver = self;
    v8.super_class = SSPlayInfoRequestContext;
    v5 = [(SSPlayInfoRequestContext *)&v8 init];
    if (v5)
    {
      objc_opt_class();
      v5->_accountIdentifier = SSXPCDictionaryCopyCFObjectWithClass(a3, "0");
      objc_opt_class();
      v5->_contentIdentifier = SSXPCDictionaryCopyCFObjectWithClass(a3, "1");
      v7 = objc_opt_class();
      v5->_playbackType = SSXPCDictionaryCopyObjectWithClass(a3, "5", v7);
      objc_opt_class();
      v5->_playerGUID = SSXPCDictionaryCopyCFObjectWithClass(a3, "2");
      objc_opt_class();
      v5->_sic = SSXPCDictionaryCopyCFObjectWithClass(a3, "3");
      objc_opt_class();
      v5->_sinfs = SSXPCDictionaryCopyCFObjectWithClass(a3, "4");
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

@end