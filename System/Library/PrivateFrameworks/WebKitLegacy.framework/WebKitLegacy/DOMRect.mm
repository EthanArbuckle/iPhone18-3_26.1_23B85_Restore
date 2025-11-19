@interface DOMRect
- (DOMCSSPrimitiveValue)bottom;
- (DOMCSSPrimitiveValue)left;
- (DOMCSSPrimitiveValue)right;
- (DOMCSSPrimitiveValue)top;
- (void)dealloc;
@end

@implementation DOMRect

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
    v7.super_class = DOMRect;
    [(DOMObject *)&v7 dealloc];
  }
}

- (DOMCSSPrimitiveValue)top
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  v3 = kit(*(self->super._internal + 1));
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  return v3;
}

- (DOMCSSPrimitiveValue)right
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  v3 = kit(*(self->super._internal + 2));
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  return v3;
}

- (DOMCSSPrimitiveValue)bottom
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  v3 = kit(*(self->super._internal + 3));
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  return v3;
}

- (DOMCSSPrimitiveValue)left
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  v3 = kit(*(self->super._internal + 4));
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  return v3;
}

@end