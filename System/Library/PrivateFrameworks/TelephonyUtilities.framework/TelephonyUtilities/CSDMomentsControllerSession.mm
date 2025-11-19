@interface CSDMomentsControllerSession
- (CSDAVCMoments)moments;
- (CSDMomentsControllerSession)initWithMoments:(id)a3 remoteIDSDestinations:(id)a4 callCenterObserver:(id)a5;
- (NSDictionary)activeRequestsByTransactionID;
- (NSDictionary)remoteIDSDestinations;
- (NSString)description;
- (void)removeActiveRequestForTransactionID:(id)a3;
- (void)setActiveRequest:(id)a3 forTransactionID:(id)a4;
- (void)setActiveRequestsByTransactionID:(id)a3;
- (void)setRemoteIDSDestinations:(id)a3;
@end

@implementation CSDMomentsControllerSession

- (CSDAVCMoments)moments
{
  v2 = sub_1003AA644();

  return v2;
}

- (NSDictionary)remoteIDSDestinations
{
  sub_1003AA824(&OBJC_IVAR___CSDMomentsControllerSession_remoteIDSDestinations);
  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setRemoteIDSDestinations:(id)a3
{
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_1003AA8F0(v4, &OBJC_IVAR___CSDMomentsControllerSession_remoteIDSDestinations);
}

- (NSDictionary)activeRequestsByTransactionID
{
  sub_1003AA824(&OBJC_IVAR___CSDMomentsControllerSession_activeRequestsByTransactionID);
  type metadata accessor for MomentsRequest();
  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setActiveRequestsByTransactionID:(id)a3
{
  type metadata accessor for MomentsRequest();
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_1003AA8F0(v4, &OBJC_IVAR___CSDMomentsControllerSession_activeRequestsByTransactionID);
}

- (NSString)description
{
  v2 = self;
  sub_1003AA9AC();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (CSDMomentsControllerSession)initWithMoments:(id)a3 remoteIDSDestinations:(id)a4 callCenterObserver:(id)a5
{
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_1003AAD1C(a3, v7, a5);
}

- (void)setActiveRequest:(id)a3 forTransactionID:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_1003AB598(v9, v6, v8);
}

- (void)removeActiveRequestForTransactionID:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  sub_1003AB6B0();
}

@end