@interface SSDownloadPolicyUserDefaultState
- (BOOL)currentBoolValue;
- (BOOL)isEqual:(id)equal;
- (SSDownloadPolicyUserDefaultState)initWithCoder:(id)coder;
- (SSDownloadPolicyUserDefaultState)initWithXPCEncoding:(id)encoding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SSDownloadPolicyUserDefaultState

- (unint64_t)hash
{
  v3 = [(NSString *)self->_domain hash];
  v4 = [(NSNumber *)self->_fallbackNumberValue hash]^ v3;
  return v4 ^ [(NSString *)self->_key hash]^ self->_shouldInvertBoolValue;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (domain = self->_domain, domain != equalCopy->_domain) && ![(NSString *)domain isEqualToString:?]|| self->_shouldInvertBoolValue != equalCopy->_shouldInvertBoolValue || (key = self->_key, key != equalCopy->_key) && ![(NSString *)key isEqualToString:?])
  {
    v8 = 0;
    goto LABEL_12;
  }

  fallbackNumberValue = self->_fallbackNumberValue;
  if (fallbackNumberValue == equalCopy->_fallbackNumberValue)
  {
LABEL_11:
    v8 = 1;
    goto LABEL_12;
  }

  v8 = [(NSNumber *)fallbackNumberValue isEqual:?];
LABEL_12:

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  domain = self->_domain;
  coderCopy = coder;
  [coderCopy encodeObject:domain forKey:@"domain"];
  [coderCopy encodeObject:self->_fallbackNumberValue forKey:@"fallnumval"];
  [coderCopy encodeObject:self->_key forKey:@"key"];
  [coderCopy encodeBool:self->_shouldInvertBoolValue forKey:@"sibv"];
}

- (SSDownloadPolicyUserDefaultState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SSDownloadPolicyUserDefaultState;
  v5 = [(SSDownloadPolicyUserDefaultState *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
    domain = v5->_domain;
    v5->_domain = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fallnumval"];
    fallbackNumberValue = v5->_fallbackNumberValue;
    v5->_fallbackNumberValue = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
    key = v5->_key;
    v5->_key = v10;

    v5->_shouldInvertBoolValue = [coderCopy decodeBoolForKey:@"sibv"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 8), self->_domain);
    objc_storeStrong((v5 + 16), self->_fallbackNumberValue);
    objc_storeStrong((v5 + 24), self->_key);
    *(v5 + 32) = self->_shouldInvertBoolValue;
  }

  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_domain);
  SSXPCDictionarySetCFObject(v3, "1", self->_fallbackNumberValue);
  SSXPCDictionarySetCFObject(v3, "2", self->_key);
  xpc_dictionary_set_BOOL(v3, "3", self->_shouldInvertBoolValue);
  return v3;
}

- (SSDownloadPolicyUserDefaultState)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v14.receiver = self;
    v14.super_class = SSDownloadPolicyUserDefaultState;
    v6 = [(SSDownloadPolicyUserDefaultState *)&v14 init];
    if (v6)
    {
      objc_opt_class();
      v8 = SSXPCDictionaryCopyCFObjectWithClass(v5, "0");
      domain = v6->_domain;
      v6->_domain = v8;

      objc_opt_class();
      v10 = SSXPCDictionaryCopyCFObjectWithClass(v5, "1");
      fallbackNumberValue = v6->_fallbackNumberValue;
      v6->_fallbackNumberValue = v10;

      objc_opt_class();
      v12 = SSXPCDictionaryCopyCFObjectWithClass(v5, "2");
      key = v6->_key;
      v6->_key = v12;

      v6->_shouldInvertBoolValue = xpc_dictionary_get_BOOL(v5, "3");
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (BOOL)currentBoolValue
{
  keyExistsAndHasValidFormat = 0;
  key = self->_key;
  if (!key || (domain = self->_domain) == 0 || (bOOLValue = CFPreferencesGetAppBooleanValue(key, domain, &keyExistsAndHasValidFormat) != 0, !keyExistsAndHasValidFormat))
  {
    bOOLValue = [(NSNumber *)self->_fallbackNumberValue BOOLValue];
  }

  return (bOOLValue ^ self->_shouldInvertBoolValue) & 1;
}

@end