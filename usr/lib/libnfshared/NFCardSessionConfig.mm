@interface NFCardSessionConfig
+ (id)configWithInitialUIText:(id)a3;
- (NFCardSessionConfig)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFCardSessionConfig

+ (id)configWithInitialUIText:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  objc_msgSend_setInitialUIText_(v4, v5, v3);

  return v4;
}

- (NFCardSessionConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NFCardSessionConfig;
  v5 = [(NFCardSessionConfig *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"initialUIText");
    initialUIText = v5->_initialUIText;
    v5->_initialUIText = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_initialUIText(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v4, v7, v8, @"initialUIText");
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v7 = objc_msgSend_initialUIText(self, v5, v6);
  objc_msgSend_setInitialUIText_(v4, v8, v7);

  return v4;
}

@end