@interface TSCH3DTexture
- (BOOL)isEqual:(id)equal;
- (TSCH3DTexture)init;
- (unint64_t)hash;
- (void)resetResource;
@end

@implementation TSCH3DTexture

- (TSCH3DTexture)init
{
  v11.receiver = self;
  v11.super_class = TSCH3DTexture;
  v2 = [(TSCH3DTexture *)&v11 init];
  if (v2)
  {
    v3 = [TSCH3DTextureResource alloc];
    v8 = objc_msgSend_initWithParent_(v3, v4, v5, v6, v7, v2);
    textureResource = v2->_textureResource;
    v2->_textureResource = v8;
  }

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = TSUSpecificCast();
    v6 = v5 != 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return objc_msgSend_hash(v2, v3, v4, v5, v6);
}

- (void)resetResource
{
  v3 = [TSCH3DTextureResource alloc];
  v8 = objc_msgSend_initWithParent_(v3, v4, v5, v6, v7, self);
  textureResource = self->_textureResource;
  self->_textureResource = v8;
}

@end