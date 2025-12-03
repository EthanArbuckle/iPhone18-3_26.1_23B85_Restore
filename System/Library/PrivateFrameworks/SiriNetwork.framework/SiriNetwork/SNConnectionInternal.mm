@interface SNConnectionInternal
- (BOOL)startAndReturnError:(id *)error;
- (SNConnectionDelegateInternal)delegate;
- (SNConnectionInternal)initWithConnectionInfo:(id)info connectionQueue:(id)queue networkManager:(id)manager networkAnalytics:(id)analytics;
- (void)barrierWith:(id)with;
- (void)cancelSynchronously:(BOOL)synchronously isOnConnectionQueue:(BOOL)queue with:(id)with;
- (void)getSNConnectionAnalysisInfo:(id)info;
- (void)probeConnection;
- (void)sendCommand:(id)command with:(id)with;
- (void)sendCommands:(id)commands with:(id)with;
- (void)sendData:(id)data with:(id)with;
- (void)setDelegate:(id)delegate;
- (void)setSendPings:(BOOL)pings;
@end

@implementation SNConnectionInternal

- (void)sendCommand:(id)command with:(id)with
{
  v5 = _Block_copy(with);
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v5 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ();
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  Connection.sendCommand(_:with:)();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v5);
  swift_unknownObjectRelease();
}

- (void)setSendPings:(BOOL)pings
{
  selfCopy = self;
  Connection.setSendPings(_:)(pings);
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  Connection.delegate.setter();
}

- (BOOL)startAndReturnError:(id *)error
{
  selfCopy = self;
  Connection.start()();

  if (v5)
  {
    if (error)
    {
      v6 = _convertErrorToNSError(_:)();

      v7 = v6;
      *error = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

- (void)cancelSynchronously:(BOOL)synchronously isOnConnectionQueue:(BOOL)queue with:(id)with
{
  v6 = _Block_copy(with);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = _sIeyB_Ieg_TRTA_0;
  }

  selfCopy = self;
  Connection.cancelSynchronously(_:isOnConnectionQueue:with:)();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v6);
}

- (SNConnectionDelegateInternal)delegate
{
  v2 = Connection.delegate.getter();

  return v2;
}

- (void)sendCommands:(id)commands with:(id)with
{
  v5 = _Block_copy(with);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15SNSessionObject_So10SNThunkingpMd, &_sSo15SNSessionObject_So10SNThunkingpMR);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v5 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned SNSessionObject?, @unowned NSError?) -> ();
  }

  selfCopy = self;
  Connection.sendCommands(_:with:)();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v5);
}

- (SNConnectionInternal)initWithConnectionInfo:(id)info connectionQueue:(id)queue networkManager:(id)manager networkAnalytics:(id)analytics
{
  infoCopy = info;
  queueCopy = queue;
  managerCopy = manager;
  return Connection.init(connectionInfo:connectionQueue:networkManager:networkAnalytics:)(infoCopy, queueCopy, manager, analytics);
}

- (void)sendData:(id)data with:(id)with
{
  v5 = _Block_copy(with);
  swift_unknownObjectRetain();
  selfCopy = self;
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

- (void)getSNConnectionAnalysisInfo:(id)info
{
  v4 = _Block_copy(info);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = thunk for @escaping @callee_unowned @convention(block) (@unowned SNLinkRecommendationInfo?) -> ()partial apply;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  Connection.getSNConnectionAnalysisInfo(_:)();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v5);
}

- (void)probeConnection
{
  selfCopy = self;
  Connection.probeConnection()();
}

- (void)barrierWith:(id)with
{
  v4 = _Block_copy(with);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> ();
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  Connection.barrier(with:)();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v5);
}

@end