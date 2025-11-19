@interface _REInterfaceKey
- (BOOL)conforms:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_REInterfaceKey)initWithClass:(Class)a3;
- (_REInterfaceKey)initWithProtocol:(id)a3;
- (_REInterfaceKey)superclassKey;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)enumerateAutomaticProperties:(id)a3;
- (void)enumerateConformedProperties:(id)a3;
- (void)enumerateExposedMethods:(id)a3;
- (void)enumerateExposedProperties:(id)a3;
@end

@implementation _REInterfaceKey

- (_REInterfaceKey)initWithClass:(Class)a3
{
  v5.receiver = self;
  v5.super_class = _REInterfaceKey;
  result = [(_REInterfaceKey *)&v5 init];
  if (result)
  {
    result->_c = a3;
    result->_isClass = 1;
  }

  return result;
}

- (_REInterfaceKey)initWithProtocol:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _REInterfaceKey;
  v6 = [(_REInterfaceKey *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_p, a3);
    v7->_isClass = 0;
  }

  return v7;
}

- (_REInterfaceKey)superclassKey
{
  if (self->_isClass)
  {
    c = self->_c;
    if (c == objc_opt_class())
    {
      v5 = 0;
    }

    else
    {
      v5 = [[_REInterfaceKey alloc] initWithClass:[(objc_class *)self->_c superclass]];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)conforms:(id)a3
{
  if (self->_isClass)
  {
    return class_conformsToProtocol(self->_c, a3);
  }

  else
  {
    return protocol_conformsToProtocol(self->_p, a3);
  }
}

- (void)enumerateAutomaticProperties:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (self->_isClass)
    {
      outCount = 0;
      v5 = class_copyPropertyList(self->_c, &outCount);
      if (v5)
      {
        v6 = v5;
        if (outCount)
        {
          for (i = 0; i < outCount; ++i)
          {
            Name = property_getName(v6[i]);
            if (Name)
            {
              v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:Name];
              v4[2](v4, v9);
            }
          }
        }

        free(v6);
      }
    }
  }
}

- (void)enumerateConformedProperties:(id)a3
{
  v4 = a3;
  if (v4)
  {
    outCount = 0;
    v5 = self->_isClass ? class_copyProtocolList(self->_c, &outCount) : protocol_copyProtocolList(self->_p, &outCount);
    v6 = v5;
    if (v5)
    {
      if (outCount)
      {
          ;
        }
      }

      free(v6);
    }
  }
}

- (void)enumerateExposedProperties:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (!self->_isClass)
    {
      outCount = 0;
      v5 = protocol_copyPropertyList(self->_p, &outCount);
      if (v5)
      {
        v6 = v5;
        if (outCount)
        {
          for (i = 0; i < outCount; ++i)
          {
            Name = property_getName(v6[i]);
            if (Name)
            {
              v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:Name];
              v4[2](v4, v9);
            }
          }
        }

        free(v6);
      }
    }
  }
}

- (void)enumerateExposedMethods:(id)a3
{
  v4 = a3;
  if (v4 && !self->_isClass)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __43___REInterfaceKey_enumerateExposedMethods___block_invoke;
    v15[3] = &unk_2785FCA58;
    v6 = v5;
    v16 = v6;
    [(_REInterfaceKey *)self enumerateExposedProperties:v15];
    outCount = 0;
    v7 = protocol_copyMethodDescriptionList(self->_p, 1, 1, &outCount);
    if (v7)
    {
      v8 = v7;
      if (outCount)
      {
        v9 = 0;
        p_name = &v7->name;
        do
        {
          v11 = *p_name;
          if (*p_name)
          {
            v12 = NSStringFromSelector(*p_name);
            v13 = [v6 containsObject:v12];

            if ((v13 & 1) == 0)
            {
              v4[2](v4, v11);
            }
          }

          ++v9;
          p_name += 2;
        }

        while (v9 < outCount);
      }

      free(v8);
    }
  }
}

- (unint64_t)hash
{
  if (self->_isClass)
  {
    c = self->_c;

    return [(objc_class *)c hash];
  }

  else
  {
    v5 = [MEMORY[0x277CCAE60] valueWithPointer:self->_p];
    v6 = [v5 hash];

    return v6;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = v5;
      if (self->_isClass == v5->_isClass)
      {
        if (self->_isClass)
        {
          isEqual = self->_c == v5->_c;
        }

        else
        {
          isEqual = protocol_isEqual(self->_p, v5->_p);
        }
      }

      else
      {
        isEqual = 0;
      }
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (id)copyWithZone:(_NSZone *)a3
{
  isClass = self->_isClass;
  v5 = [objc_opt_class() allocWithZone:a3];
  if (isClass)
  {
    c = self->_c;

    return [v5 initWithClass:c];
  }

  else
  {
    p = self->_p;

    return [v5 initWithProtocol:p];
  }
}

@end