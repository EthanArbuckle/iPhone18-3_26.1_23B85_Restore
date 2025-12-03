@interface NFVASPassConfig
+ (id)passConfigWithMode:(int64_t)mode passIdentifier:(id)identifier;
- (NFVASPassConfig)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFVASPassConfig

+ (id)passConfigWithMode:(int64_t)mode passIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = objc_opt_new();
  if (v8)
  {
    v9 = objc_msgSend_copy(identifierCopy, v6, v7);
    v10 = v8[2];
    v8[2] = v9;

    v8[1] = mode;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  passIdentifier = self->_passIdentifier;
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, passIdentifier, @"passIdentifier");
  objc_msgSend_encodeInteger_forKey_(coderCopy, v6, self->_vasMode, @"vasMode");
}

- (NFVASPassConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = NFVASPassConfig;
  v6 = [(NFVASPassConfig *)&v12 init];
  if (v6)
  {
    v6->_vasMode = objc_msgSend_decodeIntegerForKey_(coderCopy, v5, @"vasMode");
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v7, @"passIdentifier");
    passIdentifier = v6->_passIdentifier;
    v6->_passIdentifier = v9;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6 = objc_opt_new();
  if (v6)
  {
    v7 = objc_msgSend_copyWithZone_(self->_passIdentifier, v5, zone);
    v8 = v6[2];
    v6[2] = v7;

    v6[1] = self->_vasMode;
  }

  return v6;
}

@end