@interface DOMCSSValueList
- (DOMCSSValue)item:(unsigned int)index;
- (unsigned)length;
@end

@implementation DOMCSSValueList

- (unsigned)length
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = *(self->super.super._internal + 9);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (DOMCSSValue)item:(unsigned int)index
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  internal = self->super.super._internal;
  if (*(internal + 9) <= index)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(*(internal + 3) + 8 * index);
  }

  v7 = kit(v6);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v8);
  return v7;
}

@end