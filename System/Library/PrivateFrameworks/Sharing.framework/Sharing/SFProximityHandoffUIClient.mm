@interface SFProximityHandoffUIClient
- (void)dealloc;
- (void)registerForProximityHandoffInteractionUpdatesWithCompletion:(id)completion;
@end

@implementation SFProximityHandoffUIClient

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  sub_1A9811A04();
  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(SFProximityHandoffUIClient *)&v5 dealloc];
}

- (void)registerForProximityHandoffInteractionUpdatesWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_1A9813050(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

@end