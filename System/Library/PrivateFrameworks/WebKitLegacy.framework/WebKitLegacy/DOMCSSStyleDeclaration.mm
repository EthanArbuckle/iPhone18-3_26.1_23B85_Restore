@interface DOMCSSStyleDeclaration
- (BOOL)isPropertyImplicit:(NSString *)propertyName;
- (DOMCSSRule)parentRule;
- (DOMCSSValue)getPropertyCSSValue:(NSString *)propertyName;
- (NSString)cssText;
- (NSString)getPropertyPriority:(NSString *)propertyName;
- (NSString)getPropertyShorthand:(NSString *)propertyName;
- (NSString)getPropertyValue:(NSString *)propertyName;
- (NSString)item:(unsigned int)index;
- (NSString)removeProperty:(NSString *)propertyName;
- (unsigned)length;
- (void)dealloc;
- (void)setCssText:(NSString *)cssText;
- (void)setProperty:(NSString *)propertyName value:(NSString *)value priority:(NSString *)priority;
@end

@implementation DOMCSSStyleDeclaration

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainThread(v3, self) & 1) == 0)
  {
    internal = self->super._internal;
    if (internal)
    {
      (*(*internal + 8))(internal);
    }

    v5.receiver = self;
    v5.super_class = DOMCSSStyleDeclaration;
    [(DOMObject *)&v5 dealloc];
  }
}

- (NSString)cssText
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  (*(*self->super._internal + 64))(&v11);
  v3 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v12, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v12 = &stru_1F472E7E8;
    v10 = &stru_1F472E7E8;
  }

  v5 = v12;
  v12 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v12;
    v12 = 0;
    if (v7)
    {
    }
  }

  v8 = v11;
  v11 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v4);
  return v5;
}

- (void)setCssText:(NSString *)cssText
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  internal = self->super._internal;
  MEMORY[0x1CCA63A40](&v9, cssText);
  (*(*internal + 72))(&v10, internal, &v9);
  if (v12 == 1)
  {
    v13[80] = v10;
    v8 = v11;
    v11 = 0;
    v14 = v8;
    raiseDOMErrorException();
  }

  v7 = v9;
  v9 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v6);
}

- (unsigned)length
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = (*(*self->super._internal + 80))(self->super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (DOMCSSRule)parentRule
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  v3 = (*(*self->super._internal + 48))(self->super._internal);
  v4 = kit(v3);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
  return v4;
}

- (NSString)getPropertyValue:(NSString *)propertyName
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v18);
  internal = self->super._internal;
  MEMORY[0x1CCA63A40](&v15, propertyName);
  (*(*internal + 104))(&v16, internal, &v15);
  v6 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v17, v6);
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v7);
    }
  }

  else
  {
    v17 = &stru_1F472E7E8;
    v14 = &stru_1F472E7E8;
  }

  v8 = v17;
  v17 = 0;
  if (v8)
  {
    v9 = v8;
    v10 = v17;
    v17 = 0;
    if (v10)
    {
    }
  }

  v11 = v16;
  v16 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v7);
  }

  v12 = v15;
  v15 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v7);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v18, v7);
  return v8;
}

- (DOMCSSValue)getPropertyCSSValue:(NSString *)propertyName
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v13);
  internal = self->super._internal;
  MEMORY[0x1CCA63A40](&v11, propertyName);
  (*(*internal + 96))(&v12, internal, &v11);
  v7 = kit(v12);
  v8 = v12;
  v12 = 0;
  if (v8)
  {
    if (*(v8 + 2) == 1)
    {
      WebCore::DeprecatedCSSOMValue::operator delete();
      v9 = v11;
      v11 = 0;
      if (!v9)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    --*(v8 + 2);
  }

  v9 = v11;
  v11 = 0;
  if (!v9)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

LABEL_9:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v13, v6);
  return v7;
}

- (NSString)removeProperty:(NSString *)propertyName
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v22);
  internal = self->super._internal;
  MEMORY[0x1CCA63A40](&v17, propertyName);
  v6 = (*(*internal + 144))(&v18, internal, &v17);
  if (v20)
  {
    if (v20 == 1)
    {
      v22[80] = v18;
      v16 = v19;
      v19 = 0;
      v23 = v16;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(v6);
  }

  v7 = v18;
  v18 = 0;
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v21, v7);
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v8);
    }
  }

  else
  {
    v21 = &stru_1F472E7E8;
    v15 = &stru_1F472E7E8;
  }

  v9 = v21;
  v21 = 0;
  if (v9)
  {
    v10 = v9;
    v11 = v21;
    v21 = 0;
    if (v11)
    {
    }
  }

  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v8);
  }

  if (v20 != 255)
  {
    if (v20)
    {
      v12 = v19;
      v19 = 0;
      if (!v12)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v12 = v18;
      v18 = 0;
      if (!v12)
      {
        goto LABEL_18;
      }
    }

    if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v8);
    }
  }

LABEL_18:
  v20 = -1;
  v13 = v17;
  v17 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v8);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v22, v8);
  return v9;
}

- (NSString)getPropertyPriority:(NSString *)propertyName
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v18);
  internal = self->super._internal;
  MEMORY[0x1CCA63A40](&v15, propertyName);
  (*(*internal + 112))(&v16, internal, &v15);
  v6 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v17, v6);
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v7);
    }
  }

  else
  {
    v17 = &stru_1F472E7E8;
    v14 = &stru_1F472E7E8;
  }

  v8 = v17;
  v17 = 0;
  if (v8)
  {
    v9 = v8;
    v10 = v17;
    v17 = 0;
    if (v10)
    {
    }
  }

  v11 = v16;
  v16 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v7);
  }

  v12 = v15;
  v15 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v7);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v18, v7);
  return v8;
}

- (void)setProperty:(NSString *)propertyName value:(NSString *)value priority:(NSString *)priority
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v21);
  internal = self->super._internal;
  MEMORY[0x1CCA63A40](&v17, propertyName);
  MEMORY[0x1CCA63A40](&v16, value);
  MEMORY[0x1CCA63A40](&v15, priority);
  (*(*internal + 136))(&v18, internal, &v17, &v16, &v15);
  if (v20 == 1)
  {
    v21[80] = v18;
    v14 = v19;
    v19 = 0;
    v22 = v14;
    raiseDOMErrorException();
  }

  v11 = v15;
  v15 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  v12 = v16;
  v16 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  v13 = v17;
  v17 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v10);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v21, v10);
}

- (NSString)item:(unsigned int)index
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v14);
  (*(*self->super._internal + 88))(&v12);
  v4 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v13, v4);
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }

  else
  {
    v13 = &stru_1F472E7E8;
    v11 = &stru_1F472E7E8;
  }

  v6 = v13;
  v13 = 0;
  if (v6)
  {
    v7 = v6;
    v8 = v13;
    v13 = 0;
    if (v8)
    {
    }
  }

  v9 = v12;
  v12 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v5);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v14, v5);
  return v6;
}

- (NSString)getPropertyShorthand:(NSString *)propertyName
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v18);
  internal = self->super._internal;
  MEMORY[0x1CCA63A40](&v15, propertyName);
  (*(*internal + 120))(&v16, internal, &v15);
  v6 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v17, v6);
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v7);
    }
  }

  else
  {
    v17 = &stru_1F472E7E8;
    v14 = &stru_1F472E7E8;
  }

  v8 = v17;
  v17 = 0;
  if (v8)
  {
    v9 = v8;
    v10 = v17;
    v17 = 0;
    if (v10)
    {
    }
  }

  v11 = v16;
  v16 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v7);
  }

  v12 = v15;
  v15 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v7);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v18, v7);
  return v8;
}

- (BOOL)isPropertyImplicit:(NSString *)propertyName
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  internal = self->super._internal;
  MEMORY[0x1CCA63A40](&v10, propertyName);
  v7 = (*(*internal + 128))(internal, &v10);
  v8 = v10;
  v10 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v6);
  return v7;
}

@end