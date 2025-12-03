@interface PXGSpriteInfoSerializable
- ($786F7D2F4E5B3A0CBB66DF574B7D98CF)spriteInfo;
- (PXGSpriteInfoSerializable)initWithSerializableObject:(id)object;
- (id)createSerializableObject;
- (void)setSpriteInfo:(id *)info;
@end

@implementation PXGSpriteInfoSerializable

- (void)setSpriteInfo:(id *)info
{
  v3 = *&info->var0;
  v4 = *&info->var4;
  *&self[2]._spriteInfo.presentationType = info[1].var3;
  *&self[1]._spriteInfo.presentationType = v4;
  *&self->_spriteInfo.presentationType = v3;
}

- ($786F7D2F4E5B3A0CBB66DF574B7D98CF)spriteInfo
{
  v3 = *&self[1].var0;
  *&retstr->var0 = *&self->var3;
  *&retstr->var4 = v3;
  retstr[1].var3 = *&self[1].var4;
  return self;
}

- (id)createSerializableObject
{
  [(PXGSpriteInfoSerializable *)self spriteInfo];
  v2 = PXGSerializeSpriteInfo(v4);

  return v2;
}

- (PXGSpriteInfoSerializable)initWithSerializableObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = PXGSpriteInfoSerializable;
  v5 = [(PXGSpriteInfoSerializable *)&v8 init];
  if (v5)
  {
    PXGDeserializeSpriteInfo(objectCopy, v7);
    [(PXGSpriteInfoSerializable *)v5 setSpriteInfo:v7];
  }

  return v5;
}

@end