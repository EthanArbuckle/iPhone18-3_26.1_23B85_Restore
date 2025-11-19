@interface RPPairableHost
- (BOOL)available;
- (BOOL)paired;
- (NSString)model;
- (NSString)name;
- (NSUUID)identifier;
- (void)pairInvokingHandlersOnQueue:(id)a3 handlingPairingChallengesUsing:(id)a4 handlingCompletionUsing:(id)a5;
- (void)registerChangeHandlerOnTargetQueue:(id)a3 handler:(id)a4;
@end

@implementation RPPairableHost

- (NSString)name
{
  v2 = self;
  RPPairableHost.name.getter();

  v3 = sub_26203A18C();

  return v3;
}

- (NSString)model
{
  v2 = self;
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
  v8 = self;
  RPPairableHost.identifier.getter(v7);

  v9 = sub_26203961C();
  (*(v4 + 8))(v7, v3);

  return v9;
}

- (BOOL)available
{
  v2 = self;
  v3 = RPPairableHost.available.getter();

  return v3 & 1;
}

- (BOOL)paired
{
  v2 = self;
  v3 = RPPairableHost.paired.getter();

  return v3 & 1;
}

- (void)registerChangeHandlerOnTargetQueue:(id)a3 handler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  RPPairableHost.registerChangeHandler(on:handler:)(a3, sub_261FD36A4, v7);
}

- (void)pairInvokingHandlersOnQueue:(id)a3 handlingPairingChallengesUsing:(id)a4 handlingCompletionUsing:(id)a5
{
  v8 = _Block_copy(a4);
  v9 = _Block_copy(a5);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = a3;
  v13 = self;
  RPPairableHost.pair(invokingHandlersOn:handlingPairingChallengesUsing:completionHandler:)(a3, sub_261FD3690, v10, sub_261F98B48, v11);
}

@end