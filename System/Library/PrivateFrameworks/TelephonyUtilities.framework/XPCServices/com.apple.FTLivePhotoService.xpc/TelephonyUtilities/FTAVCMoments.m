@interface FTAVCMoments
- (FTAVCMomentsDelegate)delegate;
- (_TtC18FTLivePhotoService12FTAVCMoments)initWithStreamToken:(int64_t)a3 requesterID:(id)a4 delegate:(id)a5 dispatchQueue:(id)a6;
- (int)activeRequestCount;
- (int)pendingRequestCount;
- (int64_t)streamToken;
- (unsigned)capabilities;
- (void)moments:(id)a3 didEndProcessingRequest:(id)a4 stillImageURL:(id)a5 movieURL:(id)a6 error:(id)a7;
- (void)moments:(id)a3 didEndProcessingRequest:(id)a4 url:(id)a5 error:(id)a6;
- (void)momentsServerDidDisconnect:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation FTAVCMoments

- (FTAVCMomentsDelegate)delegate
{
  v2 = sub_100034038();

  return v2;
}

- (void)setDelegate:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1000340A4(a3);
}

- (_TtC18FTLivePhotoService12FTAVCMoments)initWithStreamToken:(int64_t)a3 requesterID:(id)a4 delegate:(id)a5 dispatchQueue:(id)a6
{
  if (a4)
  {
    v9 = sub_10003986C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = a5;
  v13 = a6;
  return sub_1000340EC(a3, v9, v11, v12, a6);
}

- (int64_t)streamToken
{
  v2 = self;
  v3 = sub_10003429C();

  return v3;
}

- (unsigned)capabilities
{
  v2 = self;
  v3 = sub_100034370(&selRef_capabilities);

  return v3;
}

- (int)activeRequestCount
{
  v2 = self;
  v3 = sub_100034370(&selRef_activeRequestCount);

  return v3;
}

- (int)pendingRequestCount
{
  v2 = self;
  v3 = sub_100034370(&selRef_pendingRequestCount);

  return v3;
}

- (void)moments:(id)a3 didEndProcessingRequest:(id)a4 url:(id)a5 error:(id)a6
{
  v7 = sub_10000BEC0(&unk_100058FA0, &unk_10003F260);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v13 - v9;
  if (a5)
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

- (void)moments:(id)a3 didEndProcessingRequest:(id)a4 stillImageURL:(id)a5 movieURL:(id)a6 error:(id)a7
{
  v13 = sub_10000BEC0(&unk_100058FA0, &unk_10003F260);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v28 - v18;
  if (a5)
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
  if (a6)
  {
    sub_10003958C();
    v22 = 0;
  }

  v23 = sub_1000395CC();
  sub_10000E998(v17, v22, 1, v23);
  v24 = a3;
  v25 = a4;
  v26 = a7;
  v27 = self;
  sub_100034854(v27, v25, v19, v17, a7);

  sub_10000D3F4(v17);
  sub_10000D3F4(v19);
}

- (void)momentsServerDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100034BD4();
}

@end