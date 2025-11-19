@interface DOMHTMLFieldSetElement
- (DOMHTMLFormElement)form;
@end

@implementation DOMHTMLFieldSetElement

- (DOMHTMLFormElement)form
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  v3 = *(self->super.super.super.super._internal + 16);
  if (v3)
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = kit(v4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v6);
  return v5;
}

@end