@interface FTMomentsControllerSession
- (FTAVCMomentsProtocol)moments;
- (NSDictionary)activeRequestsByTransactionID;
- (NSDictionary)remoteIDSDestinations;
- (NSString)description;
- (void)removeActiveRequestForTransactionID:(id)a3;
- (void)setActiveRequest:(id)a3 forTransactionID:(id)a4;
- (void)setActiveRequestsByTransactionID:(id)a3;
- (void)setRemoteIDSDestinations:(id)a3;
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

- (void)setRemoteIDSDestinations:(id)a3
{
  v4 = sub_10003980C();
  v5 = self;
  sub_10002832C(v4, &OBJC_IVAR___FTMomentsControllerSession_remoteIDSDestinations);
}

- (NSDictionary)activeRequestsByTransactionID
{
  sub_100028260(&OBJC_IVAR___FTMomentsControllerSession_activeRequestsByTransactionID);
  type metadata accessor for LivePhotosMomentsRequest();
  v2.super.isa = sub_1000397FC().super.isa;

  return v2.super.isa;
}

- (void)setActiveRequestsByTransactionID:(id)a3
{
  type metadata accessor for LivePhotosMomentsRequest();
  v4 = sub_10003980C();
  v5 = self;
  sub_10002832C(v4, &OBJC_IVAR___FTMomentsControllerSession_activeRequestsByTransactionID);
}

- (NSString)description
{
  v2 = self;
  sub_1000283E8();

  v3 = sub_10003985C();

  return v3;
}

- (void)setActiveRequest:(id)a3 forTransactionID:(id)a4
{
  sub_10003986C();
  v6 = a3;
  v7 = self;
  sub_100028FF8(v6);
}

- (void)removeActiveRequestForTransactionID:(id)a3
{
  v4 = sub_10003986C();
  v6 = v5;
  v7 = self;
  sub_100029110(v4, v6);
}

@end