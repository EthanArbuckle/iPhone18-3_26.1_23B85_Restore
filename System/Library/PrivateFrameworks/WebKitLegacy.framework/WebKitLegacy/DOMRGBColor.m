@interface DOMRGBColor
- (DOMCSSPrimitiveValue)alpha;
- (DOMCSSPrimitiveValue)blue;
- (DOMCSSPrimitiveValue)green;
- (DOMCSSPrimitiveValue)red;
- (NSColor)color;
- (void)dealloc;
@end

@implementation DOMRGBColor

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainThread(v3, self) & 1) == 0)
  {
    internal = self->super._internal;
    if (internal)
    {
      if (*internal == 1)
      {
        WebCore::DeprecatedCSSOMRGBColor::~DeprecatedCSSOMRGBColor(internal);
        WTF::fastFree(v5, v6);
      }

      else
      {
        --*internal;
      }
    }

    v7.receiver = self;
    v7.super_class = DOMRGBColor;
    [(DOMObject *)&v7 dealloc];
  }
}

- (DOMCSSPrimitiveValue)red
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  v3 = kit(*(self->super._internal + 1));
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  return v3;
}

- (DOMCSSPrimitiveValue)green
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  v3 = kit(*(self->super._internal + 2));
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  return v3;
}

- (DOMCSSPrimitiveValue)blue
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  v3 = kit(*(self->super._internal + 3));
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  return v3;
}

- (DOMCSSPrimitiveValue)alpha
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  v3 = kit(*(self->super._internal + 4));
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  return v3;
}

- (NSColor)color
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  v6 = bswap32(*(self->super._internal + 1)) | 0x1104000000000000;
  WebCore::cachedCGColor();
  if (arg)
  {
    CFAutorelease(arg);
  }

  if ((v6 & 0x8000000000000) != 0)
  {
    v4 = (v6 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v6 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4);
      WTF::fastFree(v4, v3);
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v3);
  return arg;
}

@end