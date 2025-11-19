@interface SNNetworkAnalyticsInternal
+ (SNNetworkAnalyticsInternal)sharedNetworkAnalytics;
+ (id)netEndpointFromDictionary:(id)a3;
+ (id)netSessionConnectionFailedWithError:(id)a3 connectionMode:(id)a4 sessionType:(id)a5 sessionState:(id)a6 isDormant:(BOOL)a7 snConnectionAnalysisInfo:(id)a8;
- (BOOL)emitLogDebug;
- (BOOL)getIsConnectionActive;
- (BOOL)isNetIdAvailable;
- (unsigned)getSequenceNumber;
- (void)increaseSequenceNumber;
- (void)logDebugNetworkConnectionStatePreparationSnapshotCaptured:(id)a3;
- (void)logDebugNetworkConnectionStateReadySnapshotCaptured:(id)a3;
- (void)logDebugSessionConnectionSnapshotCaptured:(id)a3;
- (void)logNetworkConnectionStatePreparationSnapshotCaptured:(id)a3;
- (void)logNetworkConnectionStateReadySnapshotCaptured:(id)a3;
- (void)logPeerConnectionFailed:(id)a3;
- (void)logRequestLinkBetweenOrchestratorAndNetworkComponent;
- (void)logSessionConnectionFailed:(id)a3;
- (void)logSessionConnectionHttpHeaderCreated:(id)a3;
- (void)logSessionConnectionSnapshotCaptured:(id)a3;
- (void)reset;
- (void)resetNetId;
- (void)resetSequenceNumber;
- (void)setIsConnectionActive:(BOOL)a3;
- (void)setNetIdAvailable:(BOOL)a3;
- (void)setNetworkConnectionId:(id)a3;
@end

@implementation SNNetworkAnalyticsInternal

- (void)logSessionConnectionSnapshotCaptured:(id)a3
{
  v4 = a3;
  v5 = self;
  NetworkAnalytics.logSessionConnectionSnapshotCaptured(_:)();
}

- (void)logDebugSessionConnectionSnapshotCaptured:(id)a3
{
  v4 = a3;
  v5 = self;
  NetworkAnalytics.logDebugSessionConnectionSnapshotCaptured(_:)();
}

+ (SNNetworkAnalyticsInternal)sharedNetworkAnalytics
{
  v2 = static NetworkAnalytics.sharedNetworkAnalytics.getter();

  return v2;
}

- (void)reset
{
  v2 = self;
  NetworkAnalytics.reset()();
}

- (void)resetNetId
{
  v2 = self;
  NetworkAnalytics.resetNetId()();
}

- (void)setNetworkConnectionId:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  if (a3)
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
  v11 = self;
  NetworkAnalytics.setNetworkConnectionId(_:)();

  outlined destroy of NetworkConnectionProtocol?(v8, &_s10Foundation4UUIDVSgMd, _s10Foundation4UUIDVSgMR);
}

- (unsigned)getSequenceNumber
{
  v2 = self;
  v3 = NetworkAnalytics.getSequenceNumber()();

  return v3;
}

- (void)setIsConnectionActive:(BOOL)a3
{
  v4 = self;
  NetworkAnalytics.setIsConnectionActive(_:)(a3);
}

- (BOOL)getIsConnectionActive
{
  v2 = self;
  IsConnection = NetworkAnalytics.getIsConnectionActive()();

  return IsConnection;
}

- (void)setNetIdAvailable:(BOOL)a3
{
  v4 = self;
  NetworkAnalytics.setNetIdAvailable(_:)(a3);
}

- (BOOL)isNetIdAvailable
{
  v2 = self;
  v3 = NetworkAnalytics.isNetIdAvailable()();

  return v3;
}

- (void)increaseSequenceNumber
{
  v2 = self;
  NetworkAnalytics.increaseSequenceNumber()();
}

- (void)resetSequenceNumber
{
  v2 = self;
  NetworkAnalytics.resetSequenceNumber()();
}

- (BOOL)emitLogDebug
{
  v2 = self;
  v3 = NetworkAnalytics.emitLogDebug()();

  return v3;
}

- (void)logRequestLinkBetweenOrchestratorAndNetworkComponent
{
  v2 = self;
  NetworkAnalytics.logRequestLinkBetweenOrchestratorAndNetworkComponent()();
}

- (void)logSessionConnectionHttpHeaderCreated:(id)a3
{
  v4 = a3;
  v5 = self;
  NetworkAnalytics.logSessionConnectionHttpHeaderCreated(_:)();
}

- (void)logNetworkConnectionStatePreparationSnapshotCaptured:(id)a3
{
  v4 = a3;
  v5 = self;
  NetworkAnalytics.logNetworkConnectionStatePreparationSnapshotCaptured(_:)();
}

- (void)logDebugNetworkConnectionStatePreparationSnapshotCaptured:(id)a3
{
  v4 = a3;
  v5 = self;
  NetworkAnalytics.logDebugNetworkConnectionStatePreparationSnapshotCaptured(_:)();
}

- (void)logNetworkConnectionStateReadySnapshotCaptured:(id)a3
{
  v4 = a3;
  v5 = self;
  NetworkAnalytics.logNetworkConnectionStateReadySnapshotCaptured(_:)();
}

- (void)logDebugNetworkConnectionStateReadySnapshotCaptured:(id)a3
{
  v4 = a3;
  v5 = self;
  NetworkAnalytics.logDebugNetworkConnectionStateReadySnapshotCaptured(_:)();
}

- (void)logSessionConnectionFailed:(id)a3
{
  v4 = a3;
  v5 = self;
  NetworkAnalytics.logSessionConnectionFailed(_:)();
}

- (void)logPeerConnectionFailed:(id)a3
{
  v4 = a3;
  v5 = self;
  NetworkAnalytics.logPeerConnectionFailed(_:)();
}

+ (id)netSessionConnectionFailedWithError:(id)a3 connectionMode:(id)a4 sessionType:(id)a5 sessionState:(id)a6 isDormant:(BOOL)a7 snConnectionAnalysisInfo:(id)a8
{
  v9 = a7;
  v11 = a5;
  if (a4)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v13 = 0;
  v15 = 0;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v17;
  if (a6)
  {
LABEL_4:
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a6 = v19;
    goto LABEL_8;
  }

LABEL_7:
  v18 = 0;
LABEL_8:
  v20 = a3;
  v21 = a8;
  swift_getObjCClassMetadata();
  v22 = static NetworkAnalytics.netSessionConnectionFailed(error:connectionMode:sessionType:sessionState:isDormant:snConnectionAnalysisInfo:)(v20, v13, v15, v16, v11, v18, a6, v9, v21);

  return v22;
}

+ (id)netEndpointFromDictionary:(id)a3
{
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = static NetworkAnalytics.netEndpointFromDictionary(_:)(v3);

  return v4;
}

@end