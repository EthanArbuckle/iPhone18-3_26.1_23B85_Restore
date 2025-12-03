@interface PXGUniformAlias
- (BOOL)isEquivalentToUniform:(id)uniform;
- (CGImage)image;
- (PXGUniformAlias)initWithIndex:(int64_t)index aliasing:(id)aliasing;
- (PXGUniformAlias)initWithName:(id)name type:(unint64_t)type;
- (__n128)float3Value;
- (__n128)float4Value;
- (const)bytes;
- (double)float2Value;
- (float)floatValue;
- (id)cachedTexture;
- (id)description;
- (id)name;
- (id)textureProvider;
- (int64_t)bytesLength;
- (void)setCachedTexture:(id)texture;
@end

@implementation PXGUniformAlias

- (const)bytes
{
  original = [(PXGUniformAlias *)self original];
  bytes = [original bytes];

  return bytes;
}

- (int64_t)bytesLength
{
  original = [(PXGUniformAlias *)self original];
  bytesLength = [original bytesLength];

  return bytesLength;
}

- (id)cachedTexture
{
  original = [(PXGUniformAlias *)self original];
  cachedTexture = [original cachedTexture];

  return cachedTexture;
}

- (void)setCachedTexture:(id)texture
{
  textureCopy = texture;
  original = [(PXGUniformAlias *)self original];
  [original setCachedTexture:textureCopy];
}

- (id)textureProvider
{
  original = [(PXGUniformAlias *)self original];
  textureProvider = [original textureProvider];

  return textureProvider;
}

- (CGImage)image
{
  original = [(PXGUniformAlias *)self original];
  image = [original image];

  return image;
}

- (__n128)float4Value
{
  original = [self original];
  [original float4Value];
  v4 = v2;

  return v4;
}

- (__n128)float3Value
{
  original = [self original];
  [original float3Value];
  v4 = v2;

  return v4;
}

- (double)float2Value
{
  original = [self original];
  [original float2Value];
  v3 = v2;

  return v3;
}

- (float)floatValue
{
  original = [(PXGUniformAlias *)self original];
  [original floatValue];
  v4 = v3;

  return v4;
}

- (BOOL)isEquivalentToUniform:(id)uniform
{
  uniformCopy = uniform;
  if (self == uniformCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = uniformCopy;
      original = [(PXGUniformAlias *)self original];
      name = [original name];
      original2 = [(PXGUniformAlias *)v5 original];
      name2 = [original2 name];
      v10 = name2;
      if (name == name2)
      {
      }

      else
      {
        v11 = [name isEqual:name2];

        if ((v11 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      index = [(PXGUniformAlias *)self index];
      if (index == [(PXGUniformAlias *)v5 index])
      {
        type = [(PXGUniform *)self type];
        v12 = type == [(PXGUniform *)v5 type];
LABEL_12:

        goto LABEL_13;
      }

LABEL_11:
      v12 = 0;
      goto LABEL_12;
    }

    v12 = 0;
  }

LABEL_13:

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = [(PXGUniformAlias *)self name];
  original = [(PXGUniformAlias *)self original];
  v8 = [v3 stringWithFormat:@"<%@:%p name:%@ original:%@>", v5, self, name, original];;

  return v8;
}

- (id)name
{
  v3 = MEMORY[0x277CCACA8];
  original = [(PXGUniformAlias *)self original];
  name = [original name];
  v6 = [v3 stringWithFormat:@"%@Alias%ld", name, -[PXGUniformAlias index](self, "index")];

  return v6;
}

- (PXGUniformAlias)initWithIndex:(int64_t)index aliasing:(id)aliasing
{
  aliasingCopy = aliasing;
  name = [aliasingCopy name];
  v11.receiver = self;
  v11.super_class = PXGUniformAlias;
  v9 = -[PXGUniform initWithName:type:](&v11, sel_initWithName_type_, name, [aliasingCopy type]);

  if (v9)
  {
    objc_storeStrong(&v9->_original, aliasing);
    v9->_index = index;
  }

  return v9;
}

- (PXGUniformAlias)initWithName:(id)name type:(unint64_t)type
{
  nameCopy = name;
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGUniform.m" lineNumber:157 description:{@"%s is not available as initializer", "-[PXGUniformAlias initWithName:type:]"}];

  abort();
}

@end