@interface DOMCSSPrimitiveValue
- (DOMCounter)getCounterValue;
- (DOMRGBColor)getRGBColorValue;
- (DOMRect)getRectValue;
- (NSString)getStringValue;
- (float)getFloatValue:(unsigned __int16)unitType;
- (unsigned)primitiveType;
- (void)setFloatValue:(unsigned __int16)unitType floatValue:(float)floatValue;
- (void)setStringValue:(unsigned __int16)stringType stringValue:(NSString *)stringValue;
@end

@implementation DOMCSSPrimitiveValue

- (unsigned)primitiveType
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOWORD(self) = WebCore::DeprecatedCSSOMPrimitiveValue::primitiveType(self->super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)setFloatValue:(unsigned __int16)unitType floatValue:(float)floatValue
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  v4[80] = 4;
  v5 = 0;
  raiseDOMErrorException();
}

- (float)getFloatValue:(unsigned __int16)unitType
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  FloatValue = WebCore::DeprecatedCSSOMPrimitiveValue::getFloatValue(self->super.super._internal);
  if (v9)
  {
    if (v9 == 1)
    {
      v10[80] = LOBYTE(v7);
      v11 = v8;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(FloatValue);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v5);
  return v7;
}

- (void)setStringValue:(unsigned __int16)stringType stringValue:(NSString *)stringValue
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  MEMORY[0x1CCA63A40](v5, stringValue);
  v6[80] = 4;
  v7 = 0;
  raiseDOMErrorException();
}

- (NSString)getStringValue
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v17);
  StringValue = WebCore::DeprecatedCSSOMPrimitiveValue::getStringValue(&v13, self->super.super._internal);
  if (v15)
  {
    if (v15 == 1)
    {
      v17[80] = v13;
      v12 = v14;
      v14 = 0;
      v18 = v12;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(StringValue);
  }

  v4 = v13;
  v13 = 0;
  if (v4)
  {
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v16, v4);
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }

  else
  {
    v16 = &stru_1F472E7E8;
    v11 = &stru_1F472E7E8;
  }

  v6 = v16;
  v16 = 0;
  if (v6)
  {
    v7 = v6;
    v8 = v16;
    v16 = 0;
    if (v8)
    {
    }
  }

  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v5);
  }

  if (v15 != 255)
  {
    if (v15)
    {
      v9 = v14;
      v14 = 0;
      if (!v9)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v9 = v13;
      v13 = 0;
      if (!v9)
      {
        goto LABEL_18;
      }
    }

    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v5);
    }
  }

LABEL_18:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v17, v5);
  return v6;
}

- (DOMCounter)getCounterValue
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v16);
  CounterValue = WebCore::DeprecatedCSSOMPrimitiveValue::getCounterValue(&v12, self->super.super._internal);
  if (v14)
  {
    if (v14 == 1)
    {
      v16[80] = v12;
      v11 = v13;
      v13 = 0;
      v17 = v11;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(CounterValue);
  }

  v4 = v12;
  v12 = 0;
  v15 = v4;
  v6 = kit(v4);
  if (!v4)
  {
LABEL_5:
    if (v14 == 255)
    {
LABEL_7:
      WebCore::JSMainThreadNullState::~JSMainThreadNullState(v16, v5);
      return v6;
    }

LABEL_6:
    mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WTF::Ref<WebCore::DeprecatedCSSOMCounter,WTF::RawPtrTraits<WebCore::DeprecatedCSSOMCounter>,WTF::DefaultRefDerefTraits<WebCore::DeprecatedCSSOMCounter>>,WebCore::Exception>,(mpark::detail::Trait)1> &>(&v12, v5);
    goto LABEL_7;
  }

  if (*v4 != 1)
  {
    --*v4;
    goto LABEL_5;
  }

  v8 = *(v4 + 3);
  *(v4 + 3) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v5);
  }

  v9 = *(v4 + 2);
  *(v4 + 2) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v5);
  }

  v10 = *(v4 + 1);
  *(v4 + 1) = 0;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v5);
    }
  }

  if (*v4 == 1)
  {
    WTF::fastFree(v4, v5);
    if (v14 == 255)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  result = 191;
  __break(0xC471u);
  return result;
}

- (DOMRect)getRectValue
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v20);
  RectValue = WebCore::DeprecatedCSSOMPrimitiveValue::getRectValue(&v16, self->super.super._internal);
  if (v18)
  {
    if (v18 == 1)
    {
      v20[80] = v16;
      v15 = v17;
      v17 = 0;
      v21 = v15;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(RectValue);
  }

  v4 = v16;
  v16 = 0;
  v19 = v4;
  v6 = kit(v4);
  if (!v4)
  {
LABEL_5:
    v7 = v18;
    if (v18 == 255)
    {
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  if (*v4 != 1)
  {
    --*v4;
    goto LABEL_5;
  }

  WebCore::DeprecatedCSSOMRGBColor::~DeprecatedCSSOMRGBColor(v4);
  WTF::fastFree(v10, v11);
  v7 = v18;
  if (v18 == 255)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (v7)
  {
    v9 = v17;
    v17 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v5);
    }
  }

  else
  {
    v8 = v16;
    v16 = 0;
    if (v8)
    {
      if (*v8 == 1)
      {
        WebCore::DeprecatedCSSOMRGBColor::~DeprecatedCSSOMRGBColor(v8);
        WTF::fastFree(v12, v13);
      }

      else
      {
        --*v8;
      }
    }
  }

LABEL_16:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v20, v5);
  return v6;
}

- (DOMRGBColor)getRGBColorValue
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v20);
  RGBColorValue = WebCore::DeprecatedCSSOMPrimitiveValue::getRGBColorValue(&v16, self->super.super._internal);
  if (v18)
  {
    if (v18 == 1)
    {
      v20[80] = v16;
      v15 = v17;
      v17 = 0;
      v21 = v15;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(RGBColorValue);
  }

  v4 = v16;
  v16 = 0;
  v19 = v4;
  v6 = kit(v4);
  if (!v4)
  {
LABEL_5:
    v7 = v18;
    if (v18 == 255)
    {
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  if (*v4 != 1)
  {
    --*v4;
    goto LABEL_5;
  }

  WebCore::DeprecatedCSSOMRGBColor::~DeprecatedCSSOMRGBColor(v4);
  WTF::fastFree(v10, v11);
  v7 = v18;
  if (v18 == 255)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (v7)
  {
    v9 = v17;
    v17 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v5);
    }
  }

  else
  {
    v8 = v16;
    v16 = 0;
    if (v8)
    {
      if (*v8 == 1)
      {
        WebCore::DeprecatedCSSOMRGBColor::~DeprecatedCSSOMRGBColor(v8);
        WTF::fastFree(v12, v13);
      }

      else
      {
        --*v8;
      }
    }
  }

LABEL_16:
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v20, v5);
  return v6;
}

@end