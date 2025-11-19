@interface _UIContextMenuModifierKeyService
+ (_UIContextMenuModifierKeyService)sharedService;
- (void)addObserver:(id)a3;
- (void)applicationWillResignActiveWithNotification:(id)a3;
- (void)dealloc;
- (void)handleKeyboardEvent:(id)a3;
- (void)modifierListener:(id)a3 didUpdateModifierFlag:(int64_t)a4;
- (void)removeObserver:(id)a3;
@end

@implementation _UIContextMenuModifierKeyService

- (void)removeObserver:(id)a3
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  v5 = self;
  sub_188D7809C(a3, v6);
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
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4 name:@"UIApplicationWillResignActiveNotification" object:UIApp];

  v6.receiver = v4;
  v6.super_class = _UIContextMenuModifierKeyService;
  [(_UIContextMenuModifierKeyService *)&v6 dealloc];
}

- (void)applicationWillResignActiveWithNotification:(id)a3
{
  v4 = sub_18A4A2458();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A2418();
  v8 = *(&self->super.isa + OBJC_IVAR____UIContextMenuModifierKeyService_modifierKeyListener);
  v9 = self;
  [v8 setCurrentModifierFlags_];
  (*(v5 + 8))(v7, v4);
}

- (void)handleKeyboardEvent:(id)a3
{
  v8 = a3;
  v4 = self;
  v5 = [(_UIContextMenuModifierKeyService *)v8 _cloneEvent];
  if (v5)
  {
    v6 = v5;
    [v5 _privatize];
    [*(&v4->super.isa + OBJC_IVAR____UIContextMenuModifierKeyService_modifierKeyListener) handleKeyboardEvent_];

    v7 = v4;
  }

  else
  {
    v7 = v8;
    v8 = v4;
  }
}

- (void)addObserver:(id)a3
{
  swift_unknownObjectWeakInit();
  v6[8] = 0;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v5 = self;
  sub_188F288E4(v6, a3);
  swift_endAccess();
  swift_unknownObjectRelease();
}

- (void)modifierListener:(id)a3 didUpdateModifierFlag:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_188F489E4();
}

@end