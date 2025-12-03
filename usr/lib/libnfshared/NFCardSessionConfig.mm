@interface NFCardSessionConfig
+ (id)configWithInitialUIText:(id)text;
- (NFCardSessionConfig)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFCardSessionConfig

+ (id)configWithInitialUIText:(id)text
{
  textCopy = text;
  v4 = objc_opt_new();
  objc_msgSend_setInitialUIText_(v4, v5, textCopy);

  return v4;
}

- (NFCardSessionConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = NFCardSessionConfig;
  v5 = [(NFCardSessionConfig *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"initialUIText");
    initialUIText = v5->_initialUIText;
    v5->_initialUIText = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8 = objc_msgSend_initialUIText(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, v8, @"initialUIText");
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v7 = objc_msgSend_initialUIText(self, v5, v6);
  objc_msgSend_setInitialUIText_(v4, v8, v7);

  return v4;
}

@end