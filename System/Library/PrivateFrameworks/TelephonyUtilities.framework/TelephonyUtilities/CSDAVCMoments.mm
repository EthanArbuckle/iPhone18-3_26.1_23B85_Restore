@interface CSDAVCMoments
- (CSDAVCMomentsDelegate)delegate;
- (_TtC13callservicesd13CSDAVCMoments)initWithStreamToken:(int64_t)token requesterID:(id)d delegate:(id)delegate dispatchQueue:(id)queue;
- (int)activeRequestCount;
- (int)pendingRequestCount;
- (int64_t)streamToken;
- (unsigned)capabilities;
- (void)moments:(id)moments didEndProcessingRequest:(id)request stillImageURL:(id)l movieURL:(id)rL error:(id)error;
- (void)moments:(id)moments didEndProcessingRequest:(id)request url:(id)url error:(id)error;
- (void)momentsServerDidDisconnect:(id)disconnect;
- (void)setDelegate:(id)delegate;
@end

@implementation CSDAVCMoments

- (CSDAVCMomentsDelegate)delegate
{
  v2 = sub_10044C8E0();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10044C950();
}

- (_TtC13callservicesd13CSDAVCMoments)initWithStreamToken:(int64_t)token requesterID:(id)d delegate:(id)delegate dispatchQueue:(id)queue
{
  if (d)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  swift_unknownObjectRetain();
  queueCopy = queue;
  return sub_10044C998(token, v9, v11, delegate, queue);
}

- (int64_t)streamToken
{
  selfCopy = self;
  v3 = sub_10044CB50();

  return v3;
}

- (unsigned)capabilities
{
  selfCopy = self;
  v3 = sub_10044CC24(&selRef_capabilities);

  return v3;
}

- (int)activeRequestCount
{
  selfCopy = self;
  v3 = sub_10044CC24(&selRef_activeRequestCount);

  return v3;
}

- (int)pendingRequestCount
{
  selfCopy = self;
  v3 = sub_10044CC24(&selRef_pendingRequestCount);

  return v3;
}

- (void)moments:(id)moments didEndProcessingRequest:(id)request url:(id)url error:(id)error
{
  v7 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v14 - v10;
  if (url)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for URL();
    v13 = 0;
  }

  else
  {
    v12 = type metadata accessor for URL();
    v13 = 1;
  }

  sub_10000AF74(v11, v13, 1, v12);
  sub_1002E1320(v11);
}

- (void)moments:(id)moments didEndProcessingRequest:(id)request stillImageURL:(id)l movieURL:(id)rL error:(id)error
{
  v13 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v14 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13 - 8, v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v19);
  v21 = &v30 - v20;
  if (l)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = type metadata accessor for URL();
    v23 = 0;
  }

  else
  {
    v22 = type metadata accessor for URL();
    v23 = 1;
  }

  v24 = 1;
  sub_10000AF74(v21, v23, 1, v22);
  if (rL)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = 0;
  }

  v25 = type metadata accessor for URL();
  sub_10000AF74(v18, v24, 1, v25);
  momentsCopy = moments;
  requestCopy = request;
  errorCopy = error;
  selfCopy = self;
  sub_10044D108(selfCopy, requestCopy, v21, v18, error);

  sub_1002E1320(v18);
  sub_1002E1320(v21);
}

- (void)momentsServerDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_10044D48C();
}

@end