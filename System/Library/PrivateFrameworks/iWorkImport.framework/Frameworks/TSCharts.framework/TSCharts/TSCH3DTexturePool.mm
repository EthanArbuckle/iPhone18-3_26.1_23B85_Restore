@interface TSCH3DTexturePool
+ (id)pool;
- (BOOL)isEqual:(id)equal;
- (TSCH3DTexturePool)init;
- (TextureCoordinateConverter)coordinateConverterForTexture:(id)texture material:(id)material;
- (id)resourceForMaterial:(id)material;
@end

@implementation TSCH3DTexturePool

+ (id)pool
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (TSCH3DTexturePool)init
{
  v3.receiver = self;
  v3.super_class = TSCH3DTexturePool;
  return [(TSCH3DTexturePool *)&v3 init];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)resourceForMaterial:(id)material
{
  materialCopy = material;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_msgSend_firstTexture(materialCopy, v4, v5, v6, v7);
    v13 = objc_msgSend_resource(v8, v9, v10, v11, v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (TextureCoordinateConverter)coordinateConverterForTexture:(id)texture material:(id)material
{
  *v4 = xmmword_2764D5ED0;
  result.var0._max = a2;
  result.var0._min = self;
  return result;
}

@end