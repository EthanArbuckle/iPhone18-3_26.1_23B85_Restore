@interface NFVASPassConfig
+ (id)passConfigWithMode:(int64_t)a3 passIdentifier:(id)a4;
- (NFVASPassConfig)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFVASPassConfig

+ (id)passConfigWithMode:(int64_t)a3 passIdentifier:(id)a4
{
  v5 = a4;
  v8 = objc_opt_new();
  if (v8)
  {
    v9 = objc_msgSend_copy(v5, v6, v7);
    v10 = v8[2];
    v8[2] = v9;

    v8[1] = a3;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  passIdentifier = self->_passIdentifier;
  v7 = a3;
  objc_msgSend_encodeObject_forKey_(v7, v5, passIdentifier, @"passIdentifier");
  objc_msgSend_encodeInteger_forKey_(v7, v6, self->_vasMode, @"vasMode");
}

- (NFVASPassConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NFVASPassConfig;
  v6 = [(NFVASPassConfig *)&v12 init];
  if (v6)
  {
    v6->_vasMode = objc_msgSend_decodeIntegerForKey_(v4, v5, @"vasMode");
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v7, @"passIdentifier");
    passIdentifier = v6->_passIdentifier;
    v6->_passIdentifier = v9;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6 = objc_opt_new();
  if (v6)
  {
    v7 = objc_msgSend_copyWithZone_(self->_passIdentifier, v5, a3);
    v8 = v6[2];
    v6[2] = v7;

    v6[1] = self->_vasMode;
  }

  return v6;
}

@end