@interface WCAXPCService
- (void)executeFetchRequest:(id)a3 completionHandler:(id)a4;
- (void)fetchWiFiAssetsFromServer;
@end

@implementation WCAXPCService

- (void)executeFetchRequest:(id)a3 completionHandler:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v6 = +[WCAServer sharedInstance];
  v5 = location[0];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1000064E8;
  v11 = &unk_100010FD0;
  v12 = v13;
  [(WCAServer *)v6 executeFetchRequest:v5 completion:?];

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchWiFiAssetsFromServer
{
  v2 = +[WCAServer sharedInstance];
  [(WCAServer *)v2 fetchWiFiAssetsFromServer];
}

@end