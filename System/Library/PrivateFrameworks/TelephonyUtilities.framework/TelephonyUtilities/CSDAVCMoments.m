@interface CSDAVCMoments
- (CSDAVCMomentsDelegate)delegate;
- (_TtC13callservicesd13CSDAVCMoments)initWithStreamToken:(int64_t)a3 requesterID:(id)a4 delegate:(id)a5 dispatchQueue:(id)a6;
- (int)activeRequestCount;
- (int)pendingRequestCount;
- (int64_t)streamToken;
- (unsigned)capabilities;
- (void)moments:(id)a3 didEndProcessingRequest:(id)a4 stillImageURL:(id)a5 movieURL:(id)a6 error:(id)a7;
- (void)moments:(id)a3 didEndProcessingRequest:(id)a4 url:(id)a5 error:(id)a6;
- (void)momentsServerDidDisconnect:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation CSDAVCMoments

- (CSDAVCMomentsDelegate)delegate
{
  v2 = sub_10044C8E0();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_10044C950();
}

- (_TtC13callservicesd13CSDAVCMoments)initWithStreamToken:(int64_t)a3 requesterID:(id)a4 delegate:(id)a5 dispatchQueue:(id)a6
{
  if (a4)
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
  v12 = a6;
  return sub_10044C998(a3, v9, v11, a5, a6);
}

- (int64_t)streamToken
{
  v2 = self;
  v3 = sub_10044CB50();

  return v3;
}

- (unsigned)capabilities
{
  v2 = self;
  v3 = sub_10044CC24(&selRef_capabilities);

  return v3;
}

- (int)activeRequestCount
{
  v2 = self;
  v3 = sub_10044CC24(&selRef_activeRequestCount);

  return v3;
}

- (int)pendingRequestCount
{
  v2 = self;
  v3 = sub_10044CC24(&selRef_pendingRequestCount);

  return v3;
}

- (void)moments:(id)a3 didEndProcessingRequest:(id)a4 url:(id)a5 error:(id)a6
{
  v7 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v14 - v10;
  if (a5)
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

- (void)moments:(id)a3 didEndProcessingRequest:(id)a4 stillImageURL:(id)a5 movieURL:(id)a6 error:(id)a7
{
  v13 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v14 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13 - 8, v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v19);
  v21 = &v30 - v20;
  if (a5)
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
  if (a6)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = 0;
  }

  v25 = type metadata accessor for URL();
  sub_10000AF74(v18, v24, 1, v25);
  v26 = a3;
  v27 = a4;
  v28 = a7;
  v29 = self;
  sub_10044D108(v29, v27, v21, v18, a7);

  sub_1002E1320(v18);
  sub_1002E1320(v21);
}

- (void)momentsServerDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10044D48C();
}

@end