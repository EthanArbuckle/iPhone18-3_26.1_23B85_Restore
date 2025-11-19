@interface SNConnectionInternal
- (BOOL)startAndReturnError:(id *)a3;
- (SNConnectionDelegateInternal)delegate;
- (SNConnectionInternal)initWithConnectionInfo:(id)a3 connectionQueue:(id)a4 networkManager:(id)a5 networkAnalytics:(id)a6;
- (void)barrierWith:(id)a3;
- (void)cancelSynchronously:(BOOL)a3 isOnConnectionQueue:(BOOL)a4 with:(id)a5;
- (void)getSNConnectionAnalysisInfo:(id)a3;
- (void)probeConnection;
- (void)sendCommand:(id)a3 with:(id)a4;
- (void)sendCommands:(id)a3 with:(id)a4;
- (void)sendData:(id)a3 with:(id)a4;
- (void)setDelegate:(id)a3;
- (void)setSendPings:(BOOL)a3;
@end

@implementation SNConnectionInternal

- (void)sendCommand:(id)a3 with:(id)a4
{
  v5 = _Block_copy(a4);
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v5 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ();
  }

  swift_unknownObjectRetain();
  v6 = self;
  Connection.sendCommand(_:with:)();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v5);
  swift_unknownObjectRelease();
}

- (void)setSendPings:(BOOL)a3
{
  v4 = self;
  Connection.setSendPings(_:)(a3);
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  Connection.delegate.setter();
}

- (BOOL)startAndReturnError:(id *)a3
{
  v4 = self;
  Connection.start()();

  if (v5)
  {
    if (a3)
    {
      v6 = _convertErrorToNSError(_:)();

      v7 = v6;
      *a3 = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

- (void)cancelSynchronously:(BOOL)a3 isOnConnectionQueue:(BOOL)a4 with:(id)a5
{
  v6 = _Block_copy(a5);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = _sIeyB_Ieg_TRTA_0;
  }

  v7 = self;
  Connection.cancelSynchronously(_:isOnConnectionQueue:with:)();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v6);
}

- (SNConnectionDelegateInternal)delegate
{
  v2 = Connection.delegate.getter();

  return v2;
}

- (void)sendCommands:(id)a3 with:(id)a4
{
  v5 = _Block_copy(a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15SNSessionObject_So10SNThunkingpMd, &_sSo15SNSessionObject_So10SNThunkingpMR);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v5 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned SNSessionObject?, @unowned NSError?) -> ();
  }

  v6 = self;
  Connection.sendCommands(_:with:)();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v5);
}

- (SNConnectionInternal)initWithConnectionInfo:(id)a3 connectionQueue:(id)a4 networkManager:(id)a5 networkAnalytics:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  return Connection.init(connectionInfo:connectionQueue:networkManager:networkAnalytics:)(v9, v10, a5, a6);
}

- (void)sendData:(id)a3 with:(id)a4
{
  v5 = _Block_copy(a4);
  swift_unknownObjectRetain();
  v6 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v5 = thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()partial apply;
  }

  Connection.sendData(_:with:)();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v5);

  __swift_destroy_boxed_opaque_existential_0(v7);
}

- (void)getSNConnectionAnalysisInfo:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = thunk for @escaping @callee_unowned @convention(block) (@unowned SNLinkRecommendationInfo?) -> ()partial apply;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  Connection.getSNConnectionAnalysisInfo(_:)();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v5);
}

- (void)probeConnection
{
  v2 = self;
  Connection.probeConnection()();
}

- (void)barrierWith:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> ();
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  Connection.barrier(with:)();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v5);
}

@end