@interface PXGSpriteEntitySerializable
- (PXGSpriteEntitySerializable)initWithSerializableObject:(id)object;
- (id)createSerializableObject;
@end

@implementation PXGSpriteEntitySerializable

- (id)createSerializableObject
{
  v2.var0 = [(PXGSpriteEntitySerializable *)self spriteEntity];

  return PXGSerializeSpriteEntity(v2.var0);
}

- (PXGSpriteEntitySerializable)initWithSerializableObject:(id)object
{
  objectCopy = object;
  v7.receiver = self;
  v7.super_class = PXGSpriteEntitySerializable;
  v5 = [(PXGSpriteEntitySerializable *)&v7 init];
  if (v5)
  {
    [(PXGSpriteEntitySerializable *)v5 setSpriteEntity:PXGDeserializeSpriteEntity(objectCopy)];
  }

  return v5;
}

@end