@interface _UIContextMenuModifierKeyService
+ (_UIContextMenuModifierKeyService)sharedService;
- (void)addObserver:(id)observer;
- (void)applicationWillResignActiveWithNotification:(id)notification;
- (void)dealloc;
- (void)handleKeyboardEvent:(id)event;
- (void)modifierListener:(id)listener didUpdateModifierFlag:(int64_t)flag;
- (void)removeObserver:(id)observer;
@end

@implementation _UIContextMenuModifierKeyService

- (void)removeObserver:(id)observer
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_188D7809C(observer, v6);
  swift_endAccess();
  swift_unknownObjectRelease();

  sub_188D68DEC(v6);
}

+ (_UIContextMenuModifierKeyService)sharedService
{
  if (qword_1EA930B68 != -1)
  {
    swift_once();
  }

  v3 = qword_1EA930B70;

  return v3;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy name:@"UIApplicationWillResignActiveNotification" object:UIApp];

  v6.receiver = selfCopy;
  v6.super_class = _UIContextMenuModifierKeyService;
  [(_UIContextMenuModifierKeyService *)&v6 dealloc];
}

- (void)applicationWillResignActiveWithNotification:(id)notification
{
  v4 = sub_18A4A2458();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A2418();
  v8 = *(&self->super.isa + OBJC_IVAR____UIContextMenuModifierKeyService_modifierKeyListener);
  selfCopy = self;
  [v8 setCurrentModifierFlags_];
  (*(v5 + 8))(v7, v4);
}

- (void)handleKeyboardEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  _cloneEvent = [(_UIContextMenuModifierKeyService *)eventCopy _cloneEvent];
  if (_cloneEvent)
  {
    v6 = _cloneEvent;
    [_cloneEvent _privatize];
    [*(&selfCopy->super.isa + OBJC_IVAR____UIContextMenuModifierKeyService_modifierKeyListener) handleKeyboardEvent_];

    v7 = selfCopy;
  }

  else
  {
    v7 = eventCopy;
    eventCopy = selfCopy;
  }
}

- (void)addObserver:(id)observer
{
  swift_unknownObjectWeakInit();
  v6[8] = 0;
  swift_beginAccess();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_188F288E4(v6, observer);
  swift_endAccess();
  swift_unknownObjectRelease();
}

- (void)modifierListener:(id)listener didUpdateModifierFlag:(int64_t)flag
{
  listenerCopy = listener;
  selfCopy = self;
  sub_188F489E4();
}

@end