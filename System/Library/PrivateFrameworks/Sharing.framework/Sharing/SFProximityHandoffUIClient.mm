@interface SFProximityHandoffUIClient
- (void)dealloc;
- (void)registerForProximityHandoffInteractionUpdatesWithCompletion:(id)a3;
@end

@implementation SFProximityHandoffUIClient

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;
  sub_1A9811A04();
  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(SFProximityHandoffUIClient *)&v5 dealloc];
}

- (void)registerForProximityHandoffInteractionUpdatesWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1A9813050(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

@end