@interface DOMEvent
- (BOOL)bubbles;
- (BOOL)cancelBubble;
- (BOOL)cancelable;
- (BOOL)composed;
- (BOOL)defaultPrevented;
- (BOOL)isTrusted;
- (BOOL)returnValue;
- (DOMTimeStamp)timeStamp;
- (NSString)type;
- (id)currentTarget;
- (id)srcElement;
- (id)target;
- (unsigned)eventPhase;
- (void)dealloc;
- (void)initEvent:(NSString *)eventTypeArg canBubbleArg:(BOOL)canBubbleArg cancelableArg:(BOOL)cancelableArg;
- (void)preventDefault;
- (void)setCancelBubble:(BOOL)cancelBubble;
- (void)setReturnValue:(BOOL)returnValue;
- (void)stopImmediatePropagation;
- (void)stopPropagation;
@end

@implementation DOMEvent

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainThread(v3, self) & 1) == 0)
  {
    internal = self->super._internal;
    if (internal)
    {
      if (*(internal + 6) == 1)
      {
        (*(*internal + 8))(internal);
      }

      else
      {
        --*(internal + 6);
      }
    }

    v5.receiver = self;
    v5.super_class = DOMEvent;
    [(DOMObject *)&v5 dealloc];
  }
}

- (NSString)type
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v11);
  v3 = *(self->super._internal + 4);
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v10, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v10 = &stru_1F472E7E8;
    v9 = &stru_1F472E7E8;
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v10;
    v10 = 0;
    if (v7)
    {
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v11, v4);
  return v5;
}

- (id)target
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  v4 = *(self->super._internal + 7);
  if (v4 && (*(v4 + 22) & 2) != 0)
  {
    v5 = kit(v4);
  }

  else
  {
    v5 = 0;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v3);
  return v5;
}

- (id)currentTarget
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  v4 = *(self->super._internal + 5);
  if (v4 && (*(v4 + 22) & 2) != 0)
  {
    v5 = kit(v4);
  }

  else
  {
    v5 = 0;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v3);
  return v5;
}

- (unsigned)eventPhase
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = (*(self->super._internal + 14) >> 13) & 3;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (BOOL)bubbles
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = (*(self->super._internal + 7) >> 1) & 1;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (BOOL)cancelable
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = (*(self->super._internal + 7) >> 2) & 1;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (BOOL)composed
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = (*(self->super._internal + 7) >> 3) & 1;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (DOMTimeStamp)timeStamp
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v8);
  v7 = *(self->super._internal + 8);
  WTF::MonotonicTime::approximateWallTime(&v7);
  v4 = (v3 * 1000.0);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v8, v5);
  return v4;
}

- (BOOL)defaultPrevented
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = (*(self->super._internal + 7) >> 6) & 1;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (BOOL)isTrusted
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = (*(self->super._internal + 7) >> 9) & 1;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (id)srcElement
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  v4 = *(self->super._internal + 7);
  if (v4 && (*(v4 + 22) & 2) != 0)
  {
    v5 = kit(v4);
  }

  else
  {
    v5 = 0;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v3);
  return v5;
}

- (BOOL)returnValue
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOBYTE(self) = (*(self->super._internal + 7) & 0x40) == 0;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)setReturnValue:(BOOL)returnValue
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  if (!returnValue)
  {
    internal = self->super._internal;
    if ((*(internal + 7) & 0x404) == 4)
    {
      *(internal + 7) |= 0x40u;
    }
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
}

- (BOOL)cancelBubble
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOBYTE(self) = (*(self->super._internal + 7) & 0x30) != 0;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)setCancelBubble:(BOOL)cancelBubble
{
  v3 = cancelBubble;
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  if (v3)
  {
    *(self->super._internal + 7) |= 0x10u;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v5);
}

- (void)stopPropagation
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  *(self->super._internal + 7) |= 0x10u;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v3);
}

- (void)preventDefault
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  internal = self->super._internal;
  if ((*(internal + 7) & 0x404) == 4)
  {
    *(internal + 7) |= 0x40u;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
}

- (void)initEvent:(NSString *)eventTypeArg canBubbleArg:(BOOL)canBubbleArg cancelableArg:(BOOL)cancelableArg
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v9);
  WTF::AtomStringImpl::add(&v10, eventTypeArg, v6);
  v8 = v10;
  WebCore::Event::initEvent();
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v9, v7);
}

- (void)stopImmediatePropagation
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v4);
  *(self->super._internal + 7) |= 0x20u;
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v4, v3);
}

@end