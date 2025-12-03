@interface PXGUniform
- (BOOL)isEquivalentToUniform:(id)uniform;
- (NSString)declaration;
- (PXGUniform)init;
- (PXGUniform)initWithName:(id)name type:(unint64_t)type;
- (__n128)encodableValue;
- (id)bindableTextureForContext:(id)context;
- (id)description;
- (id)parameterDeclarationWithBindingIndex:(int64_t)index;
- (unint64_t)bindType;
- (void)setTextureProvider:(id)provider;
@end

@implementation PXGUniform

- (NSString)declaration
{
  v3 = MEMORY[0x277CCACA8];
  type = [(PXGUniform *)self type];
  if (type > 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_2782AB3C0[type];
  }

  v6 = v5;
  name = [(PXGUniform *)self name];
  v8 = [v3 stringWithFormat:@"%@ %@", v6, name];

  return v8;
}

- (id)bindableTextureForContext:(id)context
{
  contextCopy = context;
  if ([(PXGUniform *)self bindType]== 1)
  {
    cachedTexture = [(PXGUniform *)self cachedTexture];
    device = [cachedTexture device];
    device2 = [contextCopy device];

    if (device == device2)
    {
      cachedTexture2 = [(PXGUniform *)self cachedTexture];
    }

    else
    {
      cachedTexture2 = [(PXGUniform *)self textureProvider];

      selfCopy2 = self;
      if (cachedTexture2)
      {
        textureProvider = [(PXGUniform *)self textureProvider];
        cachedTexture2 = (textureProvider)[2](textureProvider, contextCopy);

        selfCopy2 = self;
        v11 = cachedTexture2;
      }

      else
      {
        v11 = 0;
      }

      [(PXGUniform *)selfCopy2 setCachedTexture:v11];
    }
  }

  else
  {
    cachedTexture2 = 0;
  }

  return cachedTexture2;
}

- (__n128)encodableValue
{
  type = [(__n128 *)self type];
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_12;
      }

      result.n128_u64[0] = self[2].n128_u64[0];
    }

    else
    {
      result.n128_u32[0] = self->n128_u32[2];
    }
  }

  else
  {
    if (type != 2)
    {
      if (type == 3)
      {
        return self[6];
      }

      if ((type - 4) < 2)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v7 = currentHandler;
        v8 = a2;
        selfCopy2 = self;
        v10 = 126;
        goto LABEL_13;
      }

LABEL_12:
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = currentHandler;
      v8 = a2;
      selfCopy2 = self;
      v10 = 129;
LABEL_13:
      [currentHandler handleFailureInMethod:v8 object:selfCopy2 file:@"PXGUniform.m" lineNumber:v10 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    return self[5];
  }

  return result;
}

- (id)parameterDeclarationWithBindingIndex:(int64_t)index
{
  bindType = [(PXGUniform *)self bindType];
  if (bindType)
  {
    if (bindType != 1)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGUniform parameterDeclarationWithBindingIndex:]"];
      [currentHandler handleFailureInFunction:v15 file:@"PXGUniform.m" lineNumber:107 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v6 = @"%@ %@ [[ texture(%ld) ]]";
  }

  else
  {
    v6 = @"constant %@ &%@ [[ buffer(%ld) ]]";
  }

  v7 = MEMORY[0x277CCACA8];
  type = [(PXGUniform *)self type];
  if (type > 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = off_2782AB3C0[type];
  }

  v10 = v9;
  name = [(PXGUniform *)self name];
  index = [v7 stringWithFormat:v6, v10, name, index];

  return index;
}

- (BOOL)isEquivalentToUniform:(id)uniform
{
  uniformCopy = uniform;
  if (self == uniformCopy)
  {
    v8 = 1;
  }

  else
  {
    name = [(PXGUniform *)self name];
    name2 = [(PXGUniform *)uniformCopy name];
    if ([name isEqualToString:name2])
    {
      type = [(PXGUniform *)self type];
      v8 = type == [(PXGUniform *)uniformCopy type];
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
  name = [(PXGUniform *)self name];
  type = [(PXGUniform *)self type];
  if (type > 5)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_2782AB3C0[type];
  }

  v9 = v8;
  v10 = [v3 stringWithFormat:@"<%@:%p name:%@ type:%@>", v5, self, name, v9];;

  return v10;
}

- (unint64_t)bindType
{
  type = [(PXGUniform *)self type];
  if (type >= 6)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PXGUniformBindType bindTypeForUniformType(PXGUniformType)"];
    [currentHandler handleFailureInFunction:v5 file:@"PXGUniform.m" lineNumber:34 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return qword_21AE2E0E0[type];
}

- (void)setTextureProvider:(id)provider
{
  if (self->_textureProvider != provider)
  {
    v5 = [provider copy];
    textureProvider = self->_textureProvider;
    self->_textureProvider = v5;

    [(PXGUniform *)self setCachedTexture:0];
  }
}

- (PXGUniform)initWithName:(id)name type:(unint64_t)type
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = PXGUniform;
  v8 = [(PXGUniform *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, name);
    v9->_type = type;
    if (type > 2)
    {
      if (type - 4 >= 2)
      {
        if (type == 3)
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
      switch(type)
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGUniform.m" lineNumber:44 description:{@"%s is not available as initializer", "-[PXGUniform init]"}];

  abort();
}

@end