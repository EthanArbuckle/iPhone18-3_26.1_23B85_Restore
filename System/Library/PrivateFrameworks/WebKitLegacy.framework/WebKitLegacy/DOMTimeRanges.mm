@interface DOMTimeRanges
- (double)end:(unsigned int)end;
- (double)start:(unsigned int)start;
- (unsigned)length;
- (void)dealloc;
@end

@implementation DOMTimeRanges

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
        v6 = *(internal + 1);
        if (v6)
        {
          *(internal + 1) = 0;
          *(internal + 4) = 0;
          WTF::fastFree(v6, v4);
          if (*internal != 1)
          {
            __break(0xC471u);
            return;
          }
        }

        WTF::fastFree(internal, v4);
      }

      else
      {
        --*internal;
      }
    }

    v7.receiver = self;
    v7.super_class = DOMTimeRanges;
    [(DOMObject *)&v7 dealloc];
  }
}

- (unsigned)length
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = WebCore::TimeRanges::length(self->super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (double)start:(unsigned int)start
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  v4 = WebCore::TimeRanges::start(self->super._internal);
  if (v9)
  {
    if (v9 == 1)
    {
      v10[80] = LOBYTE(v7);
      v11 = v8;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v5);
  return v7;
}

- (double)end:(unsigned int)end
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v10);
  v4 = WebCore::TimeRanges::end(self->super._internal);
  if (v9)
  {
    if (v9 == 1)
    {
      v10[80] = LOBYTE(v7);
      v11 = v8;
      raiseDOMErrorException();
    }

    mpark::throw_bad_variant_access(v4);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v10, v5);
  return v7;
}

@end