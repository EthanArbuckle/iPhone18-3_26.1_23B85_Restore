@interface PXGUniformAlias
- (BOOL)isEquivalentToUniform:(id)a3;
- (CGImage)image;
- (PXGUniformAlias)initWithIndex:(int64_t)a3 aliasing:(id)a4;
- (PXGUniformAlias)initWithName:(id)a3 type:(unint64_t)a4;
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
- (void)setCachedTexture:(id)a3;
@end

@implementation PXGUniformAlias

- (const)bytes
{
  v2 = [(PXGUniformAlias *)self original];
  v3 = [v2 bytes];

  return v3;
}

- (int64_t)bytesLength
{
  v2 = [(PXGUniformAlias *)self original];
  v3 = [v2 bytesLength];

  return v3;
}

- (id)cachedTexture
{
  v2 = [(PXGUniformAlias *)self original];
  v3 = [v2 cachedTexture];

  return v3;
}

- (void)setCachedTexture:(id)a3
{
  v4 = a3;
  v5 = [(PXGUniformAlias *)self original];
  [v5 setCachedTexture:v4];
}

- (id)textureProvider
{
  v2 = [(PXGUniformAlias *)self original];
  v3 = [v2 textureProvider];

  return v3;
}

- (CGImage)image
{
  v2 = [(PXGUniformAlias *)self original];
  v3 = [v2 image];

  return v3;
}

- (__n128)float4Value
{
  v1 = [a1 original];
  [v1 float4Value];
  v4 = v2;

  return v4;
}

- (__n128)float3Value
{
  v1 = [a1 original];
  [v1 float3Value];
  v4 = v2;

  return v4;
}

- (double)float2Value
{
  v1 = [a1 original];
  [v1 float2Value];
  v3 = v2;

  return v3;
}

- (float)floatValue
{
  v2 = [(PXGUniformAlias *)self original];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (BOOL)isEquivalentToUniform:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXGUniformAlias *)self original];
      v7 = [v6 name];
      v8 = [(PXGUniformAlias *)v5 original];
      v9 = [v8 name];
      v10 = v9;
      if (v7 == v9)
      {
      }

      else
      {
        v11 = [v7 isEqual:v9];

        if ((v11 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v13 = [(PXGUniformAlias *)self index];
      if (v13 == [(PXGUniformAlias *)v5 index])
      {
        v14 = [(PXGUniform *)self type];
        v12 = v14 == [(PXGUniform *)v5 type];
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
  v6 = [(PXGUniformAlias *)self name];
  v7 = [(PXGUniformAlias *)self original];
  v8 = [v3 stringWithFormat:@"<%@:%p name:%@ original:%@>", v5, self, v6, v7];;

  return v8;
}

- (id)name
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PXGUniformAlias *)self original];
  v5 = [v4 name];
  v6 = [v3 stringWithFormat:@"%@Alias%ld", v5, -[PXGUniformAlias index](self, "index")];

  return v6;
}

- (PXGUniformAlias)initWithIndex:(int64_t)a3 aliasing:(id)a4
{
  v7 = a4;
  v8 = [v7 name];
  v11.receiver = self;
  v11.super_class = PXGUniformAlias;
  v9 = -[PXGUniform initWithName:type:](&v11, sel_initWithName_type_, v8, [v7 type]);

  if (v9)
  {
    objc_storeStrong(&v9->_original, a4);
    v9->_index = a3;
  }

  return v9;
}

- (PXGUniformAlias)initWithName:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PXGUniform.m" lineNumber:157 description:{@"%s is not available as initializer", "-[PXGUniformAlias initWithName:type:]"}];

  abort();
}

@end