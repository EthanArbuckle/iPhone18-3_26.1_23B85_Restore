@interface CSDMomentsControllerSession
- (CSDAVCMoments)moments;
- (CSDMomentsControllerSession)initWithMoments:(id)moments remoteIDSDestinations:(id)destinations callCenterObserver:(id)observer;
- (NSDictionary)activeRequestsByTransactionID;
- (NSDictionary)remoteIDSDestinations;
- (NSString)description;
- (void)removeActiveRequestForTransactionID:(id)d;
- (void)setActiveRequest:(id)request forTransactionID:(id)d;
- (void)setActiveRequestsByTransactionID:(id)d;
- (void)setRemoteIDSDestinations:(id)destinations;
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

- (void)setRemoteIDSDestinations:(id)destinations
{
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1003AA8F0(v4, &OBJC_IVAR___CSDMomentsControllerSession_remoteIDSDestinations);
}

- (NSDictionary)activeRequestsByTransactionID
{
  sub_1003AA824(&OBJC_IVAR___CSDMomentsControllerSession_activeRequestsByTransactionID);
  type metadata accessor for MomentsRequest();
  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setActiveRequestsByTransactionID:(id)d
{
  type metadata accessor for MomentsRequest();
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1003AA8F0(v4, &OBJC_IVAR___CSDMomentsControllerSession_activeRequestsByTransactionID);
}

- (NSString)description
{
  selfCopy = self;
  sub_1003AA9AC();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (CSDMomentsControllerSession)initWithMoments:(id)moments remoteIDSDestinations:(id)destinations callCenterObserver:(id)observer
{
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_1003AAD1C(moments, v7, observer);
}

- (void)setActiveRequest:(id)request forTransactionID:(id)d
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  requestCopy = request;
  selfCopy = self;
  sub_1003AB598(requestCopy, v6, v8);
}

- (void)removeActiveRequestForTransactionID:(id)d
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1003AB6B0();
}

@end