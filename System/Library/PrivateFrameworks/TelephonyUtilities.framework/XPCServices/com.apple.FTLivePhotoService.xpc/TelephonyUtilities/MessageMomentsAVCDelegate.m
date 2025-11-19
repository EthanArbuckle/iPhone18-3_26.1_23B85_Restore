@interface MessageMomentsAVCDelegate
- (void)moments:(id)a3 didEndProcessingRequest:(id)a4 stillImageURL:(id)a5 movieURL:(id)a6 error:(id)a7;
- (void)momentsServerDidDisconnect:(id)a3;
@end

@implementation MessageMomentsAVCDelegate

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
  sub_10000F4EC(v24, v25, v19, v17, a7);

  sub_10000F990(v17, &unk_100058FA0, &unk_10003F260);
  sub_10000F990(v19, &unk_100058FA0, &unk_10003F260);
}

- (void)momentsServerDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000F77C(v4);
}

@end