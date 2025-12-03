@interface PXGSpriteGeometrySerializable
- ($C4327F77E24267CF92932F349E1559A2)spriteGeometry;
- (PXGSpriteGeometrySerializable)initWithSerializableObject:(id)object;
- (id)createSerializableObject;
- (void)setSpriteGeometry:(id)geometry;
@end

@implementation PXGSpriteGeometrySerializable

- (void)setSpriteGeometry:(id)geometry
{
  v4 = *v3;
  *&self->_spriteGeometry.center.z = v3[1];
  *&self->_spriteGeometry.center.x = v4;
}

- ($C4327F77E24267CF92932F349E1559A2)spriteGeometry
{
  v3 = *&self->_spriteGeometry.center.x;
  v4 = *&self->_spriteGeometry.center.z;
  *v2 = v3;
  v2[1] = v4;
  result.var0.var1 = *&v4;
  result.var0.var0 = *&v3;
  return result;
}

- (id)createSerializableObject
{
  [(PXGSpriteGeometrySerializable *)self spriteGeometry];
  v2 = PXGSerializeSpriteGeometry(&v4);

  return v2;
}

- (PXGSpriteGeometrySerializable)initWithSerializableObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = PXGSpriteGeometrySerializable;
  v5 = [(PXGSpriteGeometrySerializable *)&v8 init];
  if (v5)
  {
    PXGDeserializeSpriteGeometry(objectCopy, v7);
    [(PXGSpriteGeometrySerializable *)v5 setSpriteGeometry:v7];
  }

  return v5;
}

@end