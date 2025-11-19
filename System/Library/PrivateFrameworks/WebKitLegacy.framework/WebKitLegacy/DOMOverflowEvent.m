@interface DOMOverflowEvent
- (BOOL)horizontalOverflow;
- (BOOL)verticalOverflow;
- (unsigned)orient;
- (void)initOverflowEvent:(unsigned __int16)orient horizontalOverflow:(BOOL)horizontalOverflow verticalOverflow:(BOOL)verticalOverflow;
@end

@implementation DOMOverflowEvent

- (unsigned)orient
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOWORD(self) = *(self->super.super._internal + 40);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (BOOL)horizontalOverflow
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOBYTE(self) = *(self->super.super._internal + 82);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (BOOL)verticalOverflow
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v5);
  LOBYTE(self) = *(self->super.super._internal + 83);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v5, v3);
  return self;
}

- (void)initOverflowEvent:(unsigned __int16)orient horizontalOverflow:(BOOL)horizontalOverflow verticalOverflow:(BOOL)verticalOverflow
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  WebCore::OverflowEvent::initOverflowEvent(self->super.super._internal);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v6);
}

@end