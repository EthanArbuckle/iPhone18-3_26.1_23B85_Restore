@interface PXGSpriteTextureInfoSerializable
- ($94F468A8D4C62B317260615823C2B210)spriteTextureInfo;
- (PXGSpriteTextureInfoSerializable)initWithSerializableObject:(id)object;
- (id)createSerializableObject;
- (void)setSpriteTextureInfo:(id)info;
@end

@implementation PXGSpriteTextureInfoSerializable

- (void)setSpriteTextureInfo:(id)info
{
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  self[3] = v3[2];
  self[4] = v6;
  self[1] = v4;
  self[2] = v5;
}

- ($94F468A8D4C62B317260615823C2B210)spriteTextureInfo
{
  v3 = self[2];
  *v2 = self[1];
  v2[1] = v3;
  v4 = self[3];
  v5 = self[4];
  v2[2] = v4;
  v2[3] = v5;
  result.var1 = *&v5.super.isa;
  result.var0 = *&v4.super.isa;
  return result;
}

- (id)createSerializableObject
{
  [(PXGSpriteTextureInfoSerializable *)self spriteTextureInfo];
  v2 = PXGSerializeSpriteTextureInfo(&v4);

  return v2;
}

- (PXGSpriteTextureInfoSerializable)initWithSerializableObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = PXGSpriteTextureInfoSerializable;
  v5 = [(PXGSpriteTextureInfoSerializable *)&v8 init];
  if (v5)
  {
    PXGDeserializeSpriteTextureInfo(objectCopy, v7);
    [(PXGSpriteTextureInfoSerializable *)v5 setSpriteTextureInfo:v7];
  }

  return v5;
}

@end