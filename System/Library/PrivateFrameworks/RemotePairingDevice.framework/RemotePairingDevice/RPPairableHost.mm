@interface RPPairableHost
- (BOOL)available;
- (BOOL)paired;
- (NSString)model;
- (NSString)name;
- (NSUUID)identifier;
- (void)pairInvokingHandlersOnQueue:(id)queue handlingPairingChallengesUsing:(id)using handlingCompletionUsing:(id)completionUsing;
- (void)registerChangeHandlerOnTargetQueue:(id)queue handler:(id)handler;
@end

@implementation RPPairableHost

- (NSString)name
{
  selfCopy = self;
  RPPairableHost.name.getter();

  v3 = sub_26203A18C();

  return v3;
}

- (NSString)model
{
  selfCopy = self;
  RPPairableHost.model.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_26203A18C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSUUID)identifier
{
  v3 = sub_26203965C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  RPPairableHost.identifier.getter(v7);

  v9 = sub_26203961C();
  (*(v4 + 8))(v7, v3);

  return v9;
}

- (BOOL)available
{
  selfCopy = self;
  v3 = RPPairableHost.available.getter();

  return v3 & 1;
}

- (BOOL)paired
{
  selfCopy = self;
  v3 = RPPairableHost.paired.getter();

  return v3 & 1;
}

- (void)registerChangeHandlerOnTargetQueue:(id)queue handler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  queueCopy = queue;
  selfCopy = self;
  RPPairableHost.registerChangeHandler(on:handler:)(queue, sub_261FD36A4, v7);
}

- (void)pairInvokingHandlersOnQueue:(id)queue handlingPairingChallengesUsing:(id)using handlingCompletionUsing:(id)completionUsing
{
  v8 = _Block_copy(using);
  v9 = _Block_copy(completionUsing);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  queueCopy = queue;
  selfCopy = self;
  RPPairableHost.pair(invokingHandlersOn:handlingPairingChallengesUsing:completionHandler:)(queue, sub_261FD3690, v10, sub_261F98B48, v11);
}

@end