@interface MessageMomentsAVCDelegate
- (void)moments:(id)moments didEndProcessingRequest:(id)request stillImageURL:(id)l movieURL:(id)rL error:(id)error;
- (void)momentsServerDidDisconnect:(id)disconnect;
@end

@implementation MessageMomentsAVCDelegate

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
  sub_10000F4EC(momentsCopy, requestCopy, v19, v17, error);

  sub_10000F990(v17, &unk_100058FA0, &unk_10003F260);
  sub_10000F990(v19, &unk_100058FA0, &unk_10003F260);
}

- (void)momentsServerDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_10000F77C(disconnectCopy);
}

@end