@interface WebScriptWorld
+ (id)findOrCreateWorld:(void *)world;
+ (id)scriptWorldForJavaScriptContext:(id)context;
+ (id)standardWorld;
+ (id)world;
- (WebScriptWorld)init;
- (WebScriptWorld)initWithWorld:(void *)world;
- (void)dealloc;
@end

@implementation WebScriptWorld

- (WebScriptWorld)initWithWorld:(void *)world
{
  v35.receiver = self;
  v35.super_class = WebScriptWorld;
  v4 = [(WebScriptWorld *)&v35 init];
  if (!v4)
  {
    return v4;
  }

  v6 = objc_alloc_init(WebScriptWorldPrivate);
  v4->_private = v6;
  v7 = *world;
  *world = 0;
  m_ptr = v6->world.m_ptr;
  v6->world.m_ptr = v7;
  if (!m_ptr)
  {
LABEL_5:
    if (byte_1ED6A6136 == 1)
    {
      goto LABEL_6;
    }

LABEL_11:
    v9 = WTF::fastMalloc(8);
    *v9 = 0;
    qword_1ED6A6160 = v9;
    byte_1ED6A6136 = 1;
    v10 = v4->_private->world.m_ptr;
    v11 = *(v10 + 1);
    if (v11)
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  if (*m_ptr != 1)
  {
    --*m_ptr;
    goto LABEL_5;
  }

  v13 = MEMORY[0x1CCA65100]();
  WTF::fastFree(v13, v14);
  if (byte_1ED6A6136 != 1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v9 = qword_1ED6A6160;
  v10 = v4->_private->world.m_ptr;
  v11 = *(v10 + 1);
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_7:
  v11 = WTF::fastCompactMalloc(0x10);
  *v11 = 1;
  *(v11 + 1) = v10;
  v12 = *(v10 + 1);
  *(v10 + 1) = v11;
  if (v12)
  {
    if (*v12 == 1)
    {
      WTF::fastFree(v12, v5);
      v11 = *(v10 + 1);
    }

    else
    {
      --*v12;
    }
  }

LABEL_14:
  ++*v11;
  if (v11 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x1C7A87FF8);
  }

  if (!v11)
  {
    goto LABEL_45;
  }

  v15 = *v9;
  if (!*v9)
  {
    WTF::HashTable<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WebScriptWorld *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WebScriptWorld *>>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WebScriptWorld *,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WebScriptWorld *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::rehash(v9, 8u);
    v15 = *v9;
    if (!*v9)
    {
      v16 = 0;
      v17 = *(v11 + 1);
      if (v17)
      {
        goto LABEL_19;
      }

LABEL_45:
      __break(0xC471u);
      JUMPOUT(0x1C7A87FA0);
    }
  }

  v16 = *(v15 - 8);
  v17 = *(v11 + 1);
  if (!v17)
  {
    goto LABEL_45;
  }

LABEL_19:
  v18 = 0;
  v19 = (~(v17 << 32) + v17) ^ ((~(v17 << 32) + v17) >> 22);
  v20 = 9 * ((v19 + ~(v19 << 13)) ^ ((v19 + ~(v19 << 13)) >> 8));
  v21 = (v20 ^ (v20 >> 15)) + ~((v20 ^ (v20 >> 15)) << 27);
  v22 = (v21 >> 31) ^ v21;
  for (i = 1; ; ++i)
  {
    v24 = v22 & v16;
    v25 = (v15 + 16 * v24);
    v26 = *v25;
    if (*v25 == -1)
    {
      v18 = (v15 + 16 * v24);
      goto LABEL_21;
    }

    if (!v26)
    {
      if (v18)
      {
        *v18 = 0;
        v18[1] = 0;
        --*(*v9 - 16);
        *v18 = v11;
        v18[1] = v4;
        v29 = *v9;
        if (*v9)
        {
          goto LABEL_31;
        }
      }

      else
      {
        *v25 = v11;
        v25[1] = v4;
        v29 = *v9;
        if (*v9)
        {
LABEL_31:
          v30 = *(v29 - 16);
          v31 = *(v29 - 12) + 1;
          *(v29 - 12) = v31;
          v32 = (v30 + v31);
          v33 = *(v29 - 4);
          if (v33 <= 0x400)
          {
            goto LABEL_32;
          }

          goto LABEL_37;
        }
      }

      v31 = 1;
      *(v29 - 12) = 1;
      v32 = (*(v29 - 16) + 1);
      v33 = *(v29 - 4);
      if (v33 <= 0x400)
      {
LABEL_32:
        if (3 * v33 > 4 * v32)
        {
          return v4;
        }

        if (!v33)
        {
          v34 = 8;
LABEL_39:
          WTF::HashTable<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WebScriptWorld *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WebScriptWorld *>>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WebScriptWorld *,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WebScriptWorld *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::rehash(v9, v34);
          return v4;
        }

LABEL_38:
        v34 = v33 << (6 * v31 >= (2 * v33));
        goto LABEL_39;
      }

LABEL_37:
      if (v33 > 2 * v32)
      {
        return v4;
      }

      goto LABEL_38;
    }

    v27 = *(v26 + 1);
    if (!v27)
    {
      __break(0xC471u);
      JUMPOUT(0x1C7A87FD8);
    }

    if (v27 == v17)
    {
      break;
    }

LABEL_21:
    v22 = i + v24;
  }

  if (*v11 != 1)
  {
    --*v11;
    return v4;
  }

  WTF::fastFree(v11, v5);
  return v4;
}

- (WebScriptWorld)init
{
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WebCore::ScriptController::createWorld();
  result = [(WebScriptWorld *)self initWithWorld:&v12];
  v5 = v12;
  v12 = 0;
  if (!v5)
  {
LABEL_4:
    v6 = v11;
    if (!v11)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (*v5 != 1)
  {
    --*v5;
    goto LABEL_4;
  }

  v8 = result;
  v9 = MEMORY[0x1CCA65100](v5);
  WTF::fastFree(v9, v10);
  result = v8;
  v6 = v11;
  if (!v11)
  {
    return result;
  }

LABEL_5:
  if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v7 = result;
    WTF::StringImpl::destroy(v6, v4);
    return v7;
  }

  return result;
}

- (void)dealloc
{
  if (byte_1ED6A6136)
  {
    v3 = qword_1ED6A6160;
    v4 = *qword_1ED6A6160;
    if (*qword_1ED6A6160)
    {
      m_ptr = self->_private->world.m_ptr;
      v6 = *(v4 - 8);
      v7 = (m_ptr + ~(m_ptr << 32)) ^ ((m_ptr + ~(m_ptr << 32)) >> 22);
      v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
      v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
      v10 = v6 & ((v9 >> 31) ^ v9);
      for (i = 1; ; ++i)
      {
        v12 = v10;
        v13 = *(v4 + 16 * v10);
        if (v13 != -1)
        {
          if (!v13)
          {
            goto LABEL_19;
          }

          v14 = *(v13 + 1);
          if (!v14)
          {
            __break(0xC471u);
            return;
          }

          if (v14 == m_ptr)
          {
            break;
          }
        }

        v10 = (v12 + i) & v6;
      }

      if (v12 != *(v4 - 4))
      {
        v15 = (v4 + 16 * v12);
        *v15 = 0;
        if (*v13 == 1)
        {
          WTF::fastFree(v13, a2);
          v4 = *v3;
        }

        else
        {
          --*v13;
        }

        *v15 = -1;
        v16 = vadd_s32(*(v4 - 16), 0xFFFFFFFF00000001);
        *(v4 - 16) = v16;
        v17 = *(v4 - 4);
        if (6 * v16.i32[1] < v17 && v17 >= 9)
        {
          WTF::HashTable<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WebScriptWorld *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WebScriptWorld *>>,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashMap<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>,WebScriptWorld *,WTF::DefaultHash<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::HashTraits<WebScriptWorld *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::WeakRef<WebCore::DOMWrapperWorld,WTF::SingleThreadWeakPtrImpl>>,WTF::FastMalloc>::rehash(v3, v17 >> 1);
        }
      }
    }
  }

  else
  {
    v19 = WTF::fastMalloc(8);
    *v19 = 0;
    qword_1ED6A6160 = v19;
    byte_1ED6A6136 = 1;
  }

LABEL_19:

  self->_private = 0;
  v20.receiver = self;
  v20.super_class = WebScriptWorld;
  [(WebScriptWorld *)&v20 dealloc];
}

+ (id)standardWorld
{
  if (_MergedGlobals_12 == 1)
  {
    return qword_1ED6A6140;
  }

  v3 = [WebScriptWorld alloc];
  v4 = WebCore::mainThreadNormalWorldSingleton(v3);
  ++*v4;
  v6 = v4;
  v5 = [(WebScriptWorld *)v3 initWithWorld:&v6];
  WTF::Ref<WebCore::DOMWrapperWorld,WTF::RawPtrTraits<WebCore::DOMWrapperWorld>,WTF::DefaultRefDerefTraits<WebCore::DOMWrapperWorld>>::~Ref(&v6);
  result = v5;
  qword_1ED6A6140 = v5;
  _MergedGlobals_12 = 1;
  return result;
}

+ (id)world
{
  result = objc_alloc_init(self);
  if (result)
  {
    v3 = result;
    v4 = result;
    return v3;
  }

  return result;
}

+ (id)scriptWorldForJavaScriptContext:(id)context
{
  jSGlobalContextRef = [context JSGlobalContextRef];

  return [self scriptWorldForGlobalContext:jSGlobalContextRef];
}

+ (id)findOrCreateWorld:(void *)world
{
  if (WebCore::mainThreadNormalWorldSingleton(self) == world)
  {

    return [self standardWorld];
  }

  else
  {
    if (byte_1ED6A6136)
    {
      v5 = *qword_1ED6A6160;
      if (*qword_1ED6A6160)
      {
        v6 = *(v5 - 8);
        v7 = (world + ~(world << 32)) ^ ((world + ~(world << 32)) >> 22);
        v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
        v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
        v10 = v6 & ((v9 >> 31) ^ v9);
        for (i = 1; ; ++i)
        {
          v12 = v10;
          v13 = *(v5 + 16 * v10);
          if (v13 != -1)
          {
            if (!v13)
            {
              goto LABEL_16;
            }

            v14 = *(v13 + 8);
            if (!v14)
            {
              result = 92;
              __break(0xC471u);
              return result;
            }

            if (v14 == world)
            {
              break;
            }
          }

          v10 = (v12 + i) & v6;
        }

        v15 = *(v5 + 16 * v12 + 8);
        if (!v15)
        {
          goto LABEL_16;
        }

        return v15;
      }
    }

    else
    {
      v17 = WTF::fastMalloc(8);
      *v17 = 0;
      qword_1ED6A6160 = v17;
      byte_1ED6A6136 = 1;
    }

LABEL_16:
    v18 = [self alloc];
    ++*world;
    worldCopy = world;
    v19 = [v18 initWithWorld:&worldCopy];
    v15 = v19;
    if (v19)
    {
      v20 = v19;
    }

    v21 = worldCopy;
    worldCopy = 0;
    if (!v21)
    {
      return v15;
    }

    if (*v21 == 1)
    {
      v22 = MEMORY[0x1CCA65100]();
      WTF::fastFree(v22, v23);
    }

    else
    {
      --*v21;
    }

    return v15;
  }
}

@end