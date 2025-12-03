@interface FTMomentsControllerSession
- (FTAVCMomentsProtocol)moments;
- (NSDictionary)activeRequestsByTransactionID;
- (NSDictionary)remoteIDSDestinations;
- (NSString)description;
- (void)removeActiveRequestForTransactionID:(id)d;
- (void)setActiveRequest:(id)request forTransactionID:(id)d;
- (void)setActiveRequestsByTransactionID:(id)d;
- (void)setRemoteIDSDestinations:(id)destinations;
@end

@implementation FTMomentsControllerSession

- (FTAVCMomentsProtocol)moments
{
  v2 = sub_100028080();

  return v2;
}

- (NSDictionary)remoteIDSDestinations
{
  sub_100028260(&OBJC_IVAR___FTMomentsControllerSession_remoteIDSDestinations);
  v2.super.isa = sub_1000397FC().super.isa;

  return v2.super.isa;
}

- (void)setRemoteIDSDestinations:(id)destinations
{
  v4 = sub_10003980C();
  selfCopy = self;
  sub_10002832C(v4, &OBJC_IVAR___FTMomentsControllerSession_remoteIDSDestinations);
}

- (NSDictionary)activeRequestsByTransactionID
{
  sub_100028260(&OBJC_IVAR___FTMomentsControllerSession_activeRequestsByTransactionID);
  type metadata accessor for LivePhotosMomentsRequest();
  v2.super.isa = sub_1000397FC().super.isa;

  return v2.super.isa;
}

- (void)setActiveRequestsByTransactionID:(id)d
{
  type metadata accessor for LivePhotosMomentsRequest();
  v4 = sub_10003980C();
  selfCopy = self;
  sub_10002832C(v4, &OBJC_IVAR___FTMomentsControllerSession_activeRequestsByTransactionID);
}

- (NSString)description
{
  selfCopy = self;
  sub_1000283E8();

  v3 = sub_10003985C();

  return v3;
}

- (void)setActiveRequest:(id)request forTransactionID:(id)d
{
  sub_10003986C();
  requestCopy = request;
  selfCopy = self;
  sub_100028FF8(requestCopy);
}

- (void)removeActiveRequestForTransactionID:(id)d
{
  v4 = sub_10003986C();
  v6 = v5;
  selfCopy = self;
  sub_100029110(v4, v6);
}

@end