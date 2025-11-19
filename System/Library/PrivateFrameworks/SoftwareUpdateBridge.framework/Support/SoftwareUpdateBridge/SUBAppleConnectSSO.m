@interface SUBAppleConnectSSO
- (void)retrieveSSOToken:(id)a3;
@end

@implementation SUBAppleConnectSSO

- (void)retrieveSSOToken:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010C70;
  block[3] = &unk_10002D1E8;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

@end