@interface DOMProgressEvent
- (BOOL)lengthComputable;
- (unint64_t)loaded;
- (unint64_t)total;
@end

@implementation DOMProgressEvent

- (BOOL)lengthComputable
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOBYTE(self) = *(self->super.super._internal + 80);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (unint64_t)loaded
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  v3 = *(self->super.super._internal + 11);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  return v3;
}

- (unint64_t)total
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  v3 = *(self->super.super._internal + 12);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  return v3;
}

@end