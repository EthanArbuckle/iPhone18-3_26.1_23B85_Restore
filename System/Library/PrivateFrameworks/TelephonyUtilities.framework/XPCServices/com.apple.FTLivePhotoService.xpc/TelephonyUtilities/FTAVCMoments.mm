@interface FTAVCMoments
- (FTAVCMomentsDelegate)delegate;
- (_TtC18FTLivePhotoService12FTAVCMoments)initWithStreamToken:(int64_t)token requesterID:(id)d delegate:(id)delegate dispatchQueue:(id)queue;
- (int)activeRequestCount;
- (int)pendingRequestCount;
- (int64_t)streamToken;
- (unsigned)capabilities;
- (void)moments:(id)moments didEndProcessingRequest:(id)request stillImageURL:(id)l movieURL:(id)rL error:(id)error;
- (void)moments:(id)moments didEndProcessingRequest:(id)request url:(id)url error:(id)error;
- (void)momentsServerDidDisconnect:(id)disconnect;
- (void)setDelegate:(id)delegate;
@end

@implementation FTAVCMoments

- (FTAVCMomentsDelegate)delegate
{
  v2 = sub_100034038();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  selfCopy = self;
  sub_1000340A4(delegate);
}

- (_TtC18FTLivePhotoService12FTAVCMoments)initWithStreamToken:(int64_t)token requesterID:(id)d delegate:(id)delegate dispatchQueue:(id)queue
{
  if (d)
  {
    v9 = sub_10003986C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  delegateCopy = delegate;
  queueCopy = queue;
  return sub_1000340EC(token, v9, v11, delegateCopy, queue);
}

- (int64_t)streamToken
{
  selfCopy = self;
  v3 = sub_10003429C();

  return v3;
}

- (unsigned)capabilities
{
  selfCopy = self;
  v3 = sub_100034370(&selRef_capabilities);

  return v3;
}

- (int)activeRequestCount
{
  selfCopy = self;
  v3 = sub_100034370(&selRef_activeRequestCount);

  return v3;
}

- (int)pendingRequestCount
{
  selfCopy = self;
  v3 = sub_100034370(&selRef_pendingRequestCount);

  return v3;
}

- (void)moments:(id)moments didEndProcessingRequest:(id)request url:(id)url error:(id)error
{
  v7 = sub_10000BEC0(&unk_100058FA0, &unk_10003F260);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v13 - v9;
  if (url)
  {
    sub_10003958C();
    v11 = sub_1000395CC();
    v12 = 0;
  }

  else
  {
    v11 = sub_1000395CC();
    v12 = 1;
  }

  sub_10000E998(v10, v12, 1, v11);
  sub_10000D3F4(v10);
}

- (void)moments:(id)moments didEndProcessingRequest:(id)request stillImageURL:(id)l movieURL:(id)rL error:(id)error
{
  v13 = sub_10000BEC0(&unk_100058FA0, &unk_10003F260);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v28 - v18;
  if (l)
  {
    sub_10003958C();
    v20 = sub_1000395CC();
    v21 = 0;
  }

  else
  {
    v20 = sub_1000395CC();
    v21 = 1;
  }

  v22 = 1;
  sub_10000E998(v19, v21, 1, v20);
  if (rL)
  {
    sub_10003958C();
    v22 = 0;
  }

  v23 = sub_1000395CC();
  sub_10000E998(v17, v22, 1, v23);
  momentsCopy = moments;
  requestCopy = request;
  errorCopy = error;
  selfCopy = self;
  sub_100034854(selfCopy, requestCopy, v19, v17, error);

  sub_10000D3F4(v17);
  sub_10000D3F4(v19);
}

- (void)momentsServerDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_100034BD4();
}

@end