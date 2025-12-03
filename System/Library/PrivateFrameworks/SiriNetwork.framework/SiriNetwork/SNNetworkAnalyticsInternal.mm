@interface SNNetworkAnalyticsInternal
+ (SNNetworkAnalyticsInternal)sharedNetworkAnalytics;
+ (id)netEndpointFromDictionary:(id)dictionary;
+ (id)netSessionConnectionFailedWithError:(id)error connectionMode:(id)mode sessionType:(id)type sessionState:(id)state isDormant:(BOOL)dormant snConnectionAnalysisInfo:(id)info;
- (BOOL)emitLogDebug;
- (BOOL)getIsConnectionActive;
- (BOOL)isNetIdAvailable;
- (unsigned)getSequenceNumber;
- (void)increaseSequenceNumber;
- (void)logDebugNetworkConnectionStatePreparationSnapshotCaptured:(id)captured;
- (void)logDebugNetworkConnectionStateReadySnapshotCaptured:(id)captured;
- (void)logDebugSessionConnectionSnapshotCaptured:(id)captured;
- (void)logNetworkConnectionStatePreparationSnapshotCaptured:(id)captured;
- (void)logNetworkConnectionStateReadySnapshotCaptured:(id)captured;
- (void)logPeerConnectionFailed:(id)failed;
- (void)logRequestLinkBetweenOrchestratorAndNetworkComponent;
- (void)logSessionConnectionFailed:(id)failed;
- (void)logSessionConnectionHttpHeaderCreated:(id)created;
- (void)logSessionConnectionSnapshotCaptured:(id)captured;
- (void)reset;
- (void)resetNetId;
- (void)resetSequenceNumber;
- (void)setIsConnectionActive:(BOOL)active;
- (void)setNetIdAvailable:(BOOL)available;
- (void)setNetworkConnectionId:(id)id;
@end

@implementation SNNetworkAnalyticsInternal

- (void)logSessionConnectionSnapshotCaptured:(id)captured
{
  capturedCopy = captured;
  selfCopy = self;
  NetworkAnalytics.logSessionConnectionSnapshotCaptured(_:)();
}

- (void)logDebugSessionConnectionSnapshotCaptured:(id)captured
{
  capturedCopy = captured;
  selfCopy = self;
  NetworkAnalytics.logDebugSessionConnectionSnapshotCaptured(_:)();
}

+ (SNNetworkAnalyticsInternal)sharedNetworkAnalytics
{
  v2 = static NetworkAnalytics.sharedNetworkAnalytics.getter();

  return v2;
}

- (void)reset
{
  selfCopy = self;
  NetworkAnalytics.reset()();
}

- (void)resetNetId
{
  selfCopy = self;
  NetworkAnalytics.resetNetId()();
}

- (void)setNetworkConnectionId:(id)id
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  if (id)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for UUID();
    v10 = 0;
  }

  else
  {
    v9 = type metadata accessor for UUID();
    v10 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v10, 1, v9);
  selfCopy = self;
  NetworkAnalytics.setNetworkConnectionId(_:)();

  outlined destroy of NetworkConnectionProtocol?(v8, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
}

- (unsigned)getSequenceNumber
{
  selfCopy = self;
  v3 = NetworkAnalytics.getSequenceNumber()();

  return v3;
}

- (void)setIsConnectionActive:(BOOL)active
{
  selfCopy = self;
  NetworkAnalytics.setIsConnectionActive(_:)(active);
}

- (BOOL)getIsConnectionActive
{
  selfCopy = self;
  IsConnection = NetworkAnalytics.getIsConnectionActive()();

  return IsConnection;
}

- (void)setNetIdAvailable:(BOOL)available
{
  selfCopy = self;
  NetworkAnalytics.setNetIdAvailable(_:)(available);
}

- (BOOL)isNetIdAvailable
{
  selfCopy = self;
  v3 = NetworkAnalytics.isNetIdAvailable()();

  return v3;
}

- (void)increaseSequenceNumber
{
  selfCopy = self;
  NetworkAnalytics.increaseSequenceNumber()();
}

- (void)resetSequenceNumber
{
  selfCopy = self;
  NetworkAnalytics.resetSequenceNumber()();
}

- (BOOL)emitLogDebug
{
  selfCopy = self;
  v3 = NetworkAnalytics.emitLogDebug()();

  return v3;
}

- (void)logRequestLinkBetweenOrchestratorAndNetworkComponent
{
  selfCopy = self;
  NetworkAnalytics.logRequestLinkBetweenOrchestratorAndNetworkComponent()();
}

- (void)logSessionConnectionHttpHeaderCreated:(id)created
{
  createdCopy = created;
  selfCopy = self;
  NetworkAnalytics.logSessionConnectionHttpHeaderCreated(_:)();
}

- (void)logNetworkConnectionStatePreparationSnapshotCaptured:(id)captured
{
  capturedCopy = captured;
  selfCopy = self;
  NetworkAnalytics.logNetworkConnectionStatePreparationSnapshotCaptured(_:)();
}

- (void)logDebugNetworkConnectionStatePreparationSnapshotCaptured:(id)captured
{
  capturedCopy = captured;
  selfCopy = self;
  NetworkAnalytics.logDebugNetworkConnectionStatePreparationSnapshotCaptured(_:)();
}

- (void)logNetworkConnectionStateReadySnapshotCaptured:(id)captured
{
  capturedCopy = captured;
  selfCopy = self;
  NetworkAnalytics.logNetworkConnectionStateReadySnapshotCaptured(_:)();
}

- (void)logDebugNetworkConnectionStateReadySnapshotCaptured:(id)captured
{
  capturedCopy = captured;
  selfCopy = self;
  NetworkAnalytics.logDebugNetworkConnectionStateReadySnapshotCaptured(_:)();
}

- (void)logSessionConnectionFailed:(id)failed
{
  failedCopy = failed;
  selfCopy = self;
  NetworkAnalytics.logSessionConnectionFailed(_:)();
}

- (void)logPeerConnectionFailed:(id)failed
{
  failedCopy = failed;
  selfCopy = self;
  NetworkAnalytics.logPeerConnectionFailed(_:)();
}

+ (id)netSessionConnectionFailedWithError:(id)error connectionMode:(id)mode sessionType:(id)type sessionState:(id)state isDormant:(BOOL)dormant snConnectionAnalysisInfo:(id)info
{
  dormantCopy = dormant;
  typeCopy = type;
  if (mode)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    if (typeCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = 0;
    if (state)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v13 = 0;
  v15 = 0;
  if (!type)
  {
    goto LABEL_6;
  }

LABEL_3:
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  typeCopy = v17;
  if (state)
  {
LABEL_4:
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    state = v19;
    goto LABEL_8;
  }

LABEL_7:
  v18 = 0;
LABEL_8:
  errorCopy = error;
  infoCopy = info;
  swift_getObjCClassMetadata();
  v22 = static NetworkAnalytics.netSessionConnectionFailed(error:connectionMode:sessionType:sessionState:isDormant:snConnectionAnalysisInfo:)(errorCopy, v13, v15, v16, typeCopy, v18, state, dormantCopy, infoCopy);

  return v22;
}

+ (id)netEndpointFromDictionary:(id)dictionary
{
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = static NetworkAnalytics.netEndpointFromDictionary(_:)(v3);

  return v4;
}

@end