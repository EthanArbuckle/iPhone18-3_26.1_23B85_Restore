@interface BindingsChangeObserver
+ (_TtC3asd22BindingsChangeObserver)shared;
- (void)registerObservers;
@end

@implementation BindingsChangeObserver

+ (_TtC3asd22BindingsChangeObserver)shared
{
  v2 = static BindingsChangeObserver.shared.getter();

  return v2;
}

- (void)registerObservers
{
  v2 = self;
  BindingsChangeObserver.registerObservers()();
}

@end