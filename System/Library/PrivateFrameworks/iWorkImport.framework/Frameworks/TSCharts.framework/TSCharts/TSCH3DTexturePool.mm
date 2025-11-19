@interface TSCH3DTexturePool
+ (id)pool;
- (BOOL)isEqual:(id)a3;
- (TSCH3DTexturePool)init;
- (TextureCoordinateConverter)coordinateConverterForTexture:(id)a3 material:(id)a4;
- (id)resourceForMaterial:(id)a3;
@end

@implementation TSCH3DTexturePool

+ (id)pool
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (TSCH3DTexturePool)init
{
  v3.receiver = self;
  v3.super_class = TSCH3DTexturePool;
  return [(TSCH3DTexturePool *)&v3 init];
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)resourceForMaterial:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_msgSend_firstTexture(v3, v4, v5, v6, v7);
    v13 = objc_msgSend_resource(v8, v9, v10, v11, v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (TextureCoordinateConverter)coordinateConverterForTexture:(id)a3 material:(id)a4
{
  *v4 = xmmword_2764D5ED0;
  result.var0._max = a2;
  result.var0._min = self;
  return result;
}

@end