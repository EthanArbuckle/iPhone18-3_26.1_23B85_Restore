@interface DOMWheelEvent
- (BOOL)webkitDirectionInvertedFromDevice;
- (double)deltaX;
- (double)deltaY;
- (double)deltaZ;
- (int)wheelDelta;
- (int)wheelDeltaX;
- (int)wheelDeltaY;
- (unsigned)deltaMode;
@end

@implementation DOMWheelEvent

- (double)deltaX
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  v3 = *(self->super.super.super.super._internal + 29);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  return v3;
}

- (double)deltaY
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  v3 = *(self->super.super.super.super._internal + 30);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  return v3;
}

- (double)deltaZ
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v6);
  v3 = *(self->super.super.super.super._internal + 31);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v6, v4);
  return v3;
}

- (unsigned)deltaMode
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = *(self->super.super.super.super._internal + 64);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (int)wheelDeltaX
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = *(self->super.super.super.super._internal + 56);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (int)wheelDeltaY
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LODWORD(self) = *(self->super.super.super.super._internal + 57);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (int)wheelDelta
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  v5 = *(internal + 57);
  if (!v5)
  {
    v5 = *(internal + 56);
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v3);
  return v5;
}

- (BOOL)webkitDirectionInvertedFromDevice
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  internal = self->super.super.super.super._internal;
  if (*(internal + 400) == 1)
  {
    v5 = *(internal + 321);
  }

  else
  {
    v5 = 0;
  }

  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v3);
  return v5 & 1;
}

@end