@interface VFXClientTextureAsset
- (CGImage)CGImage;
- (MTLTexture)texture;
- (NSString)clientIdentifier;
- (void)setCGImage:(CGImage *)a3;
- (void)setClientIdentifier:(id)a3;
- (void)setTexture:(id)a3;
@end

@implementation VFXClientTextureAsset

- (MTLTexture)texture
{
  v4 = objc_msgSend_entityObject(self, a2, v2, v3);
  v8 = objc_msgSend_properties(v4, v5, v6, v7);

  return MEMORY[0x1EEE66B58](v8, sel_clientTexture, v9, v10);
}

- (void)setTexture:(id)a3
{
  v5 = objc_msgSend_entityObject(self, a2, a3, v3);
  v9 = objc_msgSend_properties(v5, v6, v7, v8);

  MEMORY[0x1EEE66B58](v9, sel_setClientTexture_, a3, v10);
}

- (CGImage)CGImage
{
  v4 = objc_msgSend_entityObject(self, a2, v2, v3);
  v8 = objc_msgSend_properties(v4, v5, v6, v7);

  return MEMORY[0x1EEE66B58](v8, sel_clientCGImage, v9, v10);
}

- (void)setCGImage:(CGImage *)a3
{
  v5 = objc_msgSend_entityObject(self, a2, a3, v3);
  v9 = objc_msgSend_properties(v5, v6, v7, v8);

  MEMORY[0x1EEE66B58](v9, sel_setClientCGImage_, a3, v10);
}

- (NSString)clientIdentifier
{
  v4 = objc_msgSend_entityObject(self, a2, v2, v3);
  v8 = objc_msgSend_properties(v4, v5, v6, v7);

  return MEMORY[0x1EEE66B58](v8, sel_clientTextureIdentifier, v9, v10);
}

- (void)setClientIdentifier:(id)a3
{
  v5 = objc_msgSend_entityObject(self, a2, a3, v3);
  v9 = objc_msgSend_properties(v5, v6, v7, v8);

  MEMORY[0x1EEE66B58](v9, sel_setClientTextureIdentifier_, a3, v10);
}

@end