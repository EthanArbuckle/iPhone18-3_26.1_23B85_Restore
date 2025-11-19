@interface VKDebugTreePropertyNode
- (VKDebugTreePropertyNode)initWithDebugTreeProperty:(const void *)a3 withParent:(id)a4;
- (id)idValueForTreeValue:(const void *)a3;
- (id)name;
- (id)propertyColumn;
- (id)tagsColumn;
- (id)valueColumn;
- (void)searchNodes:(id)a3 withParameter:(id)a4;
@end

@implementation VKDebugTreePropertyNode

- (id)idValueForTreeValue:(const void *)a3
{
  v3 = 0;
  v4 = *(a3 + 14);
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_19;
      }

      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a3 + 1)];
    }

    else
    {
      v7 = [MEMORY[0x1E696AD98] numberWithLongLong:*a3];
    }

    goto LABEL_18;
  }

  if (v4 == 2)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.02f", *(a3 + 2)];
LABEL_18:
    v3 = v7;
    goto LABEL_19;
  }

  if (v4 != 4)
  {
    if (v4 != 3)
    {
      goto LABEL_19;
    }

    hasComputedJunctions = geo::codec::VectorTile::hasComputedJunctions(*(a3 + 24));
    v6 = @"False";
    if (hasComputedJunctions)
    {
      v6 = @"True";
    }

    v7 = v6;
    goto LABEL_18;
  }

  v8 = MEMORY[0x1E696AEC0];
  gdc::DebugTreeValue::string(&__p, a3);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v3 = [v8 stringWithUTF8String:p_p];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_19:

  return v3;
}

- (void)searchNodes:(id)a3 withParameter:(id)a4
{
  v31 = a3;
  v6 = a4;
  property = self->_property;
  if (*(property + 23) < 0)
  {
    property = *property;
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:property];
  v9 = [v8 rangeOfString:v6 options:1];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = self->_property;
    v11 = v10[4];
    v12 = v10[5];
    if (v11 != v12)
    {
      v30 = 24;
      v13 = v11 + 2;
      while (1)
      {
        v14 = *(v13 - 2);
        *&v32[9] = *(v13 - 23);
        *v32 = v14;
        if (*(v13 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *v13, *(v13 + 1));
        }

        else
        {
          v15 = *v13;
          __p.__r_.__value_.__r.__words[2] = *(v13 + 2);
          *&__p.__r_.__value_.__l.__data_ = v15;
        }

        v16 = v13 - 2;
        v34 = *(v13 + 6);
        v17 = [(VKDebugTreePropertyNode *)self idValueForTreeValue:v32, v30];
        if (v17)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v17 rangeOfString:v6 options:1] != 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v19 = [v17 stringValue];
            v20 = [v19 rangeOfString:v6 options:1];

            if (v20 != 0x7FFFFFFFFFFFFFFFLL)
            {
LABEL_16:
              v21 = [(VKDebugTreeNode *)self parent];
              [v31 addObject:v21];

              v18 = 1;
              goto LABEL_17;
            }
          }

          v18 = 0;
        }

        else
        {
          v18 = 3;
        }

LABEL_17:

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v18 != 3 && v18)
        {
          goto LABEL_36;
        }

        v13 += 4;
        if (v16 + 4 == v12)
        {
          v10 = *(&self->super.super.isa + v30);
          break;
        }
      }
    }

    v22 = v10[7];
    v23 = v10[8];
    if (v22 != v23)
    {
      while (1)
      {
        if (*(v22 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(v32, *v22, *(v22 + 1));
        }

        else
        {
          v24 = *v22;
          *&v32[16] = *(v22 + 2);
          *v32 = v24;
        }

        v25 = v32[23] >= 0 ? v32 : *v32;
        v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v25];
        v27 = [v26 rangeOfString:v6 options:1];

        if (v27 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        if ((v32[23] & 0x80000000) != 0)
        {
          operator delete(*v32);
        }

        v22 = (v22 + 24);
        if (v22 == v23)
        {
          goto LABEL_36;
        }
      }

      v29 = [(VKDebugTreeNode *)self parent];
      [v31 addObject:v29];

      if ((v32[23] & 0x80000000) != 0)
      {
        operator delete(*v32);
      }
    }
  }

  else
  {
    v28 = [(VKDebugTreeNode *)self parent];
    [v31 addObject:v28];
  }

LABEL_36:
}

- (id)tagsColumn
{
  if (*(self->_property + 8) == *(self->_property + 7))
  {
    v3 = @" ";
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
    property = self->_property;
    v5 = property[7];
    for (i = property[8]; v5 != i; v5 = (v5 + 24))
    {
      if (*(v5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v5, *(v5 + 1));
      }

      else
      {
        v7 = *v5;
        __p.__r_.__value_.__r.__words[2] = *(v5 + 2);
        *&__p.__r_.__value_.__l.__data_ = v7;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{p_p, *&__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__r.__words[2]}];
      [(__CFString *)v3 appendString:v9];

      [(__CFString *)v3 appendString:@", "];
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    [(__CFString *)v3 deleteCharactersInRange:[(__CFString *)v3 length]- 2, 2];
  }

  return v3;
}

- (id)valueColumn
{
  if (*(self->_property + 5) == *(self->_property + 4))
  {
    v3 = @" ";
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
    property = self->_property;
    v5 = property[4];
    v6 = property[5];
    if (v5 != v6)
    {
      v7 = v5 + 2;
      do
      {
        v8 = *(v7 - 2);
        *&v14[9] = *(v7 - 23);
        *v14 = v8;
        if (*(v7 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *v7, *(v7 + 1));
        }

        else
        {
          v9 = *v7;
          __p.__r_.__value_.__r.__words[2] = *(v7 + 2);
          *&__p.__r_.__value_.__l.__data_ = v9;
        }

        v10 = v7 - 2;
        v16 = *(v7 + 6);
        v11 = [(VKDebugTreePropertyNode *)self idValueForTreeValue:v14];
        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(__CFString *)v3 appendString:v11, *v14, *&v14[8], *&v14[24]];
          }

          else
          {
            v12 = [v11 stringValue];
            [(__CFString *)v3 appendString:v12];
          }

          [(__CFString *)v3 appendString:@", "];
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v7 += 4;
      }

      while (v10 + 4 != v6);
    }

    [(__CFString *)v3 deleteCharactersInRange:[(__CFString *)v3 length:*v14]- 2, 2];
  }

  return v3;
}

- (id)propertyColumn
{
  property = self->_property;
  if (*(property + 23) < 0)
  {
    property = *property;
  }

  return [MEMORY[0x1E696AEC0] stringWithUTF8String:property];
}

- (id)name
{
  property = self->_property;
  if (*(property + 23) < 0)
  {
    property = *property;
  }

  return [MEMORY[0x1E696AEC0] stringWithUTF8String:property];
}

- (VKDebugTreePropertyNode)initWithDebugTreeProperty:(const void *)a3 withParent:(id)a4
{
  v6.receiver = self;
  v6.super_class = VKDebugTreePropertyNode;
  result = [(VKDebugTreeNode *)&v6 initWithParent:a4];
  if (result)
  {
    result->_property = a3;
  }

  return result;
}

@end