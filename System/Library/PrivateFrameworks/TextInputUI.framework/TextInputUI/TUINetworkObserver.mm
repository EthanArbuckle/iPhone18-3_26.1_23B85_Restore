@interface TUINetworkObserver
- (_TtP11TextInputUI26TUINetworkObserverDelegate_)delegate;
- (void)isNetworkAvailableWithCompletion:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation TUINetworkObserver

- (_TtP11TextInputUI26TUINetworkObserverDelegate_)delegate
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_delegate) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)isNetworkAvailableWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_18FFEC3EC(sub_18FFEE81C, v5);
}

@end