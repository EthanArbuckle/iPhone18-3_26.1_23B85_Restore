@interface DOMStyleSheetList
- (DOMStyleSheet)item:(unsigned int)index;
- (unsigned)length;
- (void)dealloc;
@end

@implementation DOMStyleSheetList

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
        v5 = MEMORY[0x1CCA65010]();
        WTF::fastFree(v5, v6);
      }

      else
      {
        --*internal;
      }
    }

    v7.receiver = self;
    v7.super_class = DOMStyleSheetList;
    [(DOMObject *)&v7 dealloc];
  }
}

- (unsigned)length
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = WebCore::StyleSheetList::length(self->super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (DOMStyleSheet)item:(unsigned int)index
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  v4 = WebCore::StyleSheetList::item(self->super._internal);
  v5 = kit(v4);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v6);
  return v5;
}

@end