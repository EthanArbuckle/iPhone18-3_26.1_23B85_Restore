@interface RWIProtocolJSONObject
- (BOOL)BOOLForKey:(id)key;
- (RWIProtocolJSONObject)init;
- (RWIProtocolJSONObject)initWithJSONObject:(void *)object;
- (Ref<WTF::JSONImpl::Object,)toJSONObject;
- (RefPtr<WTF::JSONImpl::Array,)JSONArrayForKey:(id)key;
- (_DWORD)init;
- (double)doubleForKey:(id)key;
- (id)objectForKey:(id)key;
- (id)stringForKey:(id)key;
- (int)integerForKey:(id)key;
- (void)removeKey:(id)key;
- (void)setDouble:(double)double forKey:(id)key;
- (void)setJSONArray:(void *)array forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
- (void)setString:(id)string forKey:(id)key;
@end

@implementation RWIProtocolJSONObject

- (RWIProtocolJSONObject)init
{
  v8.receiver = self;
  v8.super_class = RWIProtocolJSONObject;
  v2 = [(RWIProtocolJSONObject *)&v8 init];
  v3 = v2;
  if (v2)
  {
    WTF::JSONImpl::Object::create(&v7, v2);
    v4 = v7;
    v7 = 0;
    m_ptr = v3->_object.m_ptr;
    v3->_object.m_ptr = v4;
    if (m_ptr)
    {
      [(RWIProtocolJSONObject *)m_ptr init];
    }
  }

  return v3;
}

- (Ref<WTF::JSONImpl::Object,)toJSONObject
{
  m_ptr = self->_object.m_ptr;
  ++*m_ptr;
  *v2 = m_ptr;
  return self;
}

- (void)setDouble:(double)double forKey:(id)key
{
  if (!key)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"cannot set property with nil key"];
  }

  m_ptr = self->_object.m_ptr;
  MEMORY[0x2743DB520](&v9, key);
  WTF::JSONImpl::ObjectBase::setDouble(m_ptr, &v9, double);
  [RWIProtocolJSONObject setBool:v8 forKey:?];
}

- (void)setString:(id)string forKey:(id)key
{
  v7 = MEMORY[0x277CBE660];
  if (!key)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"cannot set property with nil key"];
  }

  if (!string)
  {
    [MEMORY[0x277CBEAD8] raise:*v7 format:@"cannot set property to nil value"];
  }

  m_ptr = self->_object.m_ptr;
  MEMORY[0x2743DB520](v10, key);
  MEMORY[0x2743DB520](&v9, string);
  WTF::JSONImpl::ObjectBase::setString(m_ptr, v10, &v9);
  [RWIProtocolJSONObject setString:v10 forKey:?];
}

- (void)setObject:(id)object forKey:(id)key
{
  if (key)
  {
    if (object)
    {
LABEL_3:
      m_ptr = self->_object.m_ptr;
      MEMORY[0x2743DB520](&v18, key);
      [object toJSONObject];
      v8 = v16;
      goto LABEL_6;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"cannot set property with nil key"];
    if (object)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"cannot set property to nil value"];
  m_ptr = self->_object.m_ptr;
  MEMORY[0x2743DB520](&v18, key);
  v8 = 0;
LABEL_6:
  v17 = v8;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(m_ptr + 2, &v18, &v17, v19);
  if (v19[16] == 1)
  {
    v10 = *(m_ptr + 9);
    if (v10 == *(m_ptr + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(m_ptr + 24, &v18);
    }

    else
    {
      v11 = *(m_ptr + 3);
      v12 = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
      }

      v13 = *(m_ptr + 9);
      *(v11 + 8 * v10) = v12;
      *(m_ptr + 9) = v13 + 1;
    }
  }

  v14 = v17;
  v17 = 0;
  if (v14)
  {
    Inspector::toJSONObjectArray(v14);
  }

  v15 = v18;
  v18 = 0;
  if (v15)
  {
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v9);
    }
  }
}

- (BOOL)BOOLForKey:(id)key
{
  if (key)
  {
    m_ptr = self->_object.m_ptr;
    MEMORY[0x2743DB520](&v9, key);
    Boolean = WTF::JSONImpl::ObjectBase::getBoolean(m_ptr, &v9);
    v6 = v9;
    v9 = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v4);
    }

    return *&Boolean & ((Boolean & 0x100) >> 8);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (int)integerForKey:(id)key
{
  if (!key)
  {
    return 0;
  }

  m_ptr = self->_object.m_ptr;
  MEMORY[0x2743DB520](&v8, key);
  Integer = WTF::JSONImpl::ObjectBase::getInteger(m_ptr, &v8);
  v6 = v8;
  v8 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  if ((Integer & 0x100000000) != 0)
  {
    return Integer;
  }

  else
  {
    return 0;
  }
}

- (double)doubleForKey:(id)key
{
  if (!key)
  {
    return 0.0;
  }

  m_ptr = self->_object.m_ptr;
  MEMORY[0x2743DB520](&v10, key);
  Double = WTF::JSONImpl::ObjectBase::getDouble(m_ptr, &v10);
  v6 = v5;
  v7 = *&Double;
  v8 = v10;
  v10 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v5);
  }

  result = 0.0;
  if (v6)
  {
    return v7;
  }

  return result;
}

- (id)stringForKey:(id)key
{
  if (!key)
  {
    return 0;
  }

  m_ptr = self->_object.m_ptr;
  MEMORY[0x2743DB520](&v11, key);
  WTF::JSONImpl::ObjectBase::getString(&v12, m_ptr, &v11);
  v5 = v11;
  v11 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    MEMORY[0x2743DB4B0](&v11, v6);
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v7);
    }

    v6 = v11;
    v11 = 0;
    if (v6)
    {
      v10 = v6;
      [RWIProtocolJSONObject stringForKey:?];
    }

    v8 = v12;
    v12 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v7);
    }
  }

  return v6;
}

- (id)objectForKey:(id)key
{
  if (!key)
  {
    return 0;
  }

  m_ptr = self->_object.m_ptr;
  MEMORY[0x2743DB520](&v10, key);
  WTF::JSONImpl::ObjectBase::getObject(&v9, m_ptr, &v10);
  v5 = v10;
  v10 = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }
  }

  if (!v9)
  {
    return 0;
  }

  v7 = [RWIProtocolJSONObject alloc];
  v8 = v9;
  v9 = 0;
  [(RWIProtocolJSONObject *)&v8 objectForKey:[(RWIProtocolJSONObject *)v7 initWithJSONObject:&v8], &v10];
  return v10;
}

- (void)removeKey:(id)key
{
  if (key)
  {
    m_ptr = self->_object.m_ptr;
    MEMORY[0x2743DB520](&v5, key);
    WTF::JSONImpl::ObjectBase::remove(m_ptr, &v5);
    [RWIProtocolJSONObject setBool:v4 forKey:?];
  }
}

- (void)setJSONArray:(void *)array forKey:(id)key
{
  if (!key)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"cannot set property with nil key"];
  }

  m_ptr = self->_object.m_ptr;
  MEMORY[0x2743DB520](&v17, key);
  v8 = *array;
  *array = 0;
  v16 = v8;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ArrayBase,WTF::RawPtrTraits<WTF::JSONImpl::ArrayBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ArrayBase>>>(m_ptr + 2, &v17, &v16, v18);
  if (v18[16] == 1)
  {
    v10 = *(m_ptr + 9);
    if (v10 == *(m_ptr + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(m_ptr + 24, &v17);
    }

    else
    {
      v11 = *(m_ptr + 3);
      v12 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
      }

      v13 = *(m_ptr + 9);
      *(v11 + 8 * v10) = v12;
      *(m_ptr + 9) = v13 + 1;
    }
  }

  v14 = v16;
  v16 = 0;
  if (v14)
  {
    Inspector::toJSONObjectArray(v14);
  }

  v15 = v17;
  v17 = 0;
  if (v15)
  {
    if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v9);
    }
  }
}

- (RefPtr<WTF::JSONImpl::Array,)JSONArrayForKey:(id)key
{
  if (key)
  {
    m_ptr = self->_object.m_ptr;
    MEMORY[0x2743DB520](&v6, key);
    WTF::JSONImpl::ObjectBase::getArray(m_ptr, &v6);
    return [RWIProtocolJSONObject setBool:v5 forKey:?];
  }

  else
  {
    *v3 = 0;
  }

  return self;
}

- (RWIProtocolJSONObject)initWithJSONObject:(void *)object
{
  v9.receiver = self;
  v9.super_class = RWIProtocolJSONObject;
  v4 = [(RWIProtocolJSONObject *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v6 = *object;
    *object = 0;
    m_ptr = v4->_object.m_ptr;
    v5->_object.m_ptr = v6;
    if (m_ptr)
    {
      if (*m_ptr == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*m_ptr;
      }
    }
  }

  return v5;
}

- (_DWORD)init
{
  if (*result == 1)
  {
    WTF::JSONImpl::Value::operator delete();
    result = *a2;
    *a2 = 0;
    if (result)
    {
      if (*result == 1)
      {
        return WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*result;
      }
    }
  }

  else
  {
    --*result;
  }

  return result;
}

- (WTF::StringImpl)setBool:(WTF:(WTF::StringImpl *)a2 :StringImpl *)a1 forKey:.cold.1(WTF::StringImpl **a1, WTF::StringImpl *a2)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, a2);
    }
  }

  return result;
}

- (WTF::StringImpl)setString:(WTF:(WTF::StringImpl *)a2 :StringImpl *)a1 forKey:.cold.1(WTF::StringImpl **a1, WTF::StringImpl *a2)
{
  v4 = *a1;
  *a1 = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  result = *a2;
  *a2 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, a2);
    }
  }

  return result;
}

- (void)stringForKey:(void *)a1 .cold.1(void **a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
  }
}

- (_DWORD)objectForKey:(uint64_t)a3 .cold.2(_DWORD **a1, _DWORD **a2, uint64_t a3, void *a4)
{
  v8 = *a1;
  *a1 = 0;
  if (v8)
  {
    if (*v8 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v8;
    }
  }

  result = *a2;
  *a2 = 0;
  if (result)
  {
    if (*result == 1)
    {
      result = WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*result;
    }
  }

  *a4 = a3;
  return result;
}

- (WTF::StringImpl)setJSONArray:(uint64_t)a1 forKey:(WTF::StringImpl *)a2 .cold.1(uint64_t a1, WTF::StringImpl *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, a2);
    }
  }

  return result;
}

@end