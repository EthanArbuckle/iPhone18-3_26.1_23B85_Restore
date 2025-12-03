@interface PXGTextureConverterOptionsSerializable
- ($F568B5DBA4E111E952B4B8D02A66CA82)textureConverterOptions;
- (PXGTextureConverterOptionsSerializable)initWithSerializableObject:(id)object;
- (id)createSerializableObject;
@end

@implementation PXGTextureConverterOptionsSerializable

- ($F568B5DBA4E111E952B4B8D02A66CA82)textureConverterOptions
{
  suppressContentsRect = self->_textureConverterOptions.suppressContentsRect;
  v3 = *&self->_textureConverterOptions.effectID;
  result.var0 = v3;
  result.var1 = BYTE4(v3);
  result.var2 = suppressContentsRect;
  return result;
}

- (id)createSerializableObject
{
  textureConverterOptions = [(PXGTextureConverterOptionsSerializable *)self textureConverterOptions];

  return PXGSerializeTextureConverterOptions(textureConverterOptions);
}

- (PXGTextureConverterOptionsSerializable)initWithSerializableObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = PXGTextureConverterOptionsSerializable;
  v5 = [(PXGTextureConverterOptionsSerializable *)&v9 init];
  if (v5)
  {
    v6 = PXGDeserializeTextureConverterOptions(objectCopy);
    [(PXGTextureConverterOptionsSerializable *)v5 setTextureConverterOptions:v6, v7];
  }

  return v5;
}

@end