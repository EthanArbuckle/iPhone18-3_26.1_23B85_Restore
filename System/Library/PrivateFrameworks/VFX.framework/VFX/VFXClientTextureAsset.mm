@interface VFXClientTextureAsset
- (CGImage)CGImage;
- (MTLTexture)texture;
- (NSString)clientIdentifier;
- (void)setCGImage:(CGImage *)image;
- (void)setClientIdentifier:(id)identifier;
- (void)setTexture:(id)texture;
@end

@implementation VFXClientTextureAsset

- (MTLTexture)texture
{
  v4 = objc_msgSend_entityObject(self, a2, v2, v3);
  v8 = objc_msgSend_properties(v4, v5, v6, v7);

  return MEMORY[0x1EEE66B58](v8, sel_clientTexture, v9, v10);
}

- (void)setTexture:(id)texture
{
  v5 = objc_msgSend_entityObject(self, a2, texture, v3);
  v9 = objc_msgSend_properties(v5, v6, v7, v8);

  MEMORY[0x1EEE66B58](v9, sel_setClientTexture_, texture, v10);
}

- (CGImage)CGImage
{
  v4 = objc_msgSend_entityObject(self, a2, v2, v3);
  v8 = objc_msgSend_properties(v4, v5, v6, v7);

  return MEMORY[0x1EEE66B58](v8, sel_clientCGImage, v9, v10);
}

- (void)setCGImage:(CGImage *)image
{
  v5 = objc_msgSend_entityObject(self, a2, image, v3);
  v9 = objc_msgSend_properties(v5, v6, v7, v8);

  MEMORY[0x1EEE66B58](v9, sel_setClientCGImage_, image, v10);
}

- (NSString)clientIdentifier
{
  v4 = objc_msgSend_entityObject(self, a2, v2, v3);
  v8 = objc_msgSend_properties(v4, v5, v6, v7);

  return MEMORY[0x1EEE66B58](v8, sel_clientTextureIdentifier, v9, v10);
}

- (void)setClientIdentifier:(id)identifier
{
  v5 = objc_msgSend_entityObject(self, a2, identifier, v3);
  v9 = objc_msgSend_properties(v5, v6, v7, v8);

  MEMORY[0x1EEE66B58](v9, sel_setClientTextureIdentifier_, identifier, v10);
}

@end