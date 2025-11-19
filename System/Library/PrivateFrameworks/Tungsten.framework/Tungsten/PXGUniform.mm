@interface PXGUniform
- (BOOL)isEquivalentToUniform:(id)a3;
- (NSString)declaration;
- (PXGUniform)init;
- (PXGUniform)initWithName:(id)a3 type:(unint64_t)a4;
- (__n128)encodableValue;
- (id)bindableTextureForContext:(id)a3;
- (id)description;
- (id)parameterDeclarationWithBindingIndex:(int64_t)a3;
- (unint64_t)bindType;
- (void)setTextureProvider:(id)a3;
@end

@implementation PXGUniform

- (NSString)declaration
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PXGUniform *)self type];
  if (v4 > 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_2782AB3C0[v4];
  }

  v6 = v5;
  v7 = [(PXGUniform *)self name];
  v8 = [v3 stringWithFormat:@"%@ %@", v6, v7];

  return v8;
}

- (id)bindableTextureForContext:(id)a3
{
  v4 = a3;
  if ([(PXGUniform *)self bindType]== 1)
  {
    v5 = [(PXGUniform *)self cachedTexture];
    v6 = [v5 device];
    v7 = [v4 device];

    if (v6 == v7)
    {
      v8 = [(PXGUniform *)self cachedTexture];
    }

    else
    {
      v8 = [(PXGUniform *)self textureProvider];

      v9 = self;
      if (v8)
      {
        v10 = [(PXGUniform *)self textureProvider];
        v8 = (v10)[2](v10, v4);

        v9 = self;
        v11 = v8;
      }

      else
      {
        v11 = 0;
      }

      [(PXGUniform *)v9 setCachedTexture:v11];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (__n128)encodableValue
{
  v4 = [(__n128 *)a1 type];
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_12;
      }

      result.n128_u64[0] = a1[2].n128_u64[0];
    }

    else
    {
      result.n128_u32[0] = a1->n128_u32[2];
    }
  }

  else
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        return a1[6];
      }

      if ((v4 - 4) < 2)
      {
        v6 = [MEMORY[0x277CCA890] currentHandler];
        v7 = v6;
        v8 = a2;
        v9 = a1;
        v10 = 126;
        goto LABEL_13;
      }

LABEL_12:
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = v6;
      v8 = a2;
      v9 = a1;
      v10 = 129;
LABEL_13:
      [v6 handleFailureInMethod:v8 object:v9 file:@"PXGUniform.m" lineNumber:v10 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    return a1[5];
  }

  return result;
}

- (id)parameterDeclarationWithBindingIndex:(int64_t)a3
{
  v5 = [(PXGUniform *)self bindType];
  if (v5)
  {
    if (v5 != 1)
    {
      v14 = [MEMORY[0x277CCA890] currentHandler];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGUniform parameterDeclarationWithBindingIndex:]"];
      [v14 handleFailureInFunction:v15 file:@"PXGUniform.m" lineNumber:107 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v6 = @"%@ %@ [[ texture(%ld) ]]";
  }

  else
  {
    v6 = @"constant %@ &%@ [[ buffer(%ld) ]]";
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = [(PXGUniform *)self type];
  if (v8 > 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = off_2782AB3C0[v8];
  }

  v10 = v9;
  v11 = [(PXGUniform *)self name];
  v12 = [v7 stringWithFormat:v6, v10, v11, a3];

  return v12;
}

- (BOOL)isEquivalentToUniform:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v5 = [(PXGUniform *)self name];
    v6 = [(PXGUniform *)v4 name];
    if ([v5 isEqualToString:v6])
    {
      v7 = [(PXGUniform *)self type];
      v8 = v7 == [(PXGUniform *)v4 type];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXGUniform *)self name];
  v7 = [(PXGUniform *)self type];
  if (v7 > 5)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_2782AB3C0[v7];
  }

  v9 = v8;
  v10 = [v3 stringWithFormat:@"<%@:%p name:%@ type:%@>", v5, self, v6, v9];;

  return v10;
}

- (unint64_t)bindType
{
  v2 = [(PXGUniform *)self type];
  if (v2 >= 6)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PXGUniformBindType bindTypeForUniformType(PXGUniformType)"];
    [v4 handleFailureInFunction:v5 file:@"PXGUniform.m" lineNumber:34 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return qword_21AE2E0E0[v2];
}

- (void)setTextureProvider:(id)a3
{
  if (self->_textureProvider != a3)
  {
    v5 = [a3 copy];
    textureProvider = self->_textureProvider;
    self->_textureProvider = v5;

    [(PXGUniform *)self setCachedTexture:0];
  }
}

- (PXGUniform)initWithName:(id)a3 type:(unint64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = PXGUniform;
  v8 = [(PXGUniform *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, a3);
    v9->_type = a4;
    if (a4 > 2)
    {
      if (a4 - 4 >= 2)
      {
        if (a4 == 3)
        {
          v10 = 16;
          float4Value = v9->_float4Value;
          goto LABEL_13;
        }
      }

      else
      {
        v9->_bytesLength = 0;
      }
    }

    else
    {
      switch(a4)
      {
        case 0uLL:
          v10 = 4;
          float4Value = &v9->_floatValue;
          goto LABEL_13;
        case 1uLL:
          v10 = 8;
          float4Value = v9->_float2Value;
          goto LABEL_13;
        case 2uLL:
          v10 = 16;
          float4Value = v9->_float3Value;
LABEL_13:
          v9->_bytesLength = v10;
          v9->_bytes = float4Value;
          break;
      }
    }
  }

  return v9;
}

- (PXGUniform)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGUniform.m" lineNumber:44 description:{@"%s is not available as initializer", "-[PXGUniform init]"}];

  abort();
}

@end