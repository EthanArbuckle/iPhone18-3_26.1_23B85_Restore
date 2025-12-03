@interface BagContract
- (AMSBagValue)accountFlagsURL;
- (AMSBagValue)appleMusicDeviceOfferDeepLink;
- (AMSBagValue)iCloudDeviceOfferDeepLink;
- (AMSBagValue)trustedDomains;
- (id)_bagWithError:(id *)error;
@end

@implementation BagContract

- (AMSBagValue)accountFlagsURL
{
  v7 = 0;
  v2 = [(BagContract *)self _bagWithError:&v7];
  v3 = v7;
  if (v2)
  {
    v4 = [v2 valueForKey:@"account-flags"];
    [AMSBagValue frozenBagValueWithKey:@"account-flags" value:v4 valueType:5];
  }

  else
  {
    v4 = AMSError();
    [AMSBagValue failingBagValueWithKey:@"account-flags" valueType:5 error:v4];
  }
  v5 = ;

  return v5;
}

- (AMSBagValue)trustedDomains
{
  v7 = 0;
  v2 = [(BagContract *)self _bagWithError:&v7];
  v3 = v7;
  if (v2)
  {
    v4 = [v2 valueForKey:@"trustedDomains"];
    [AMSBagValue frozenBagValueWithKey:@"trustedDomains" value:v4 valueType:0];
  }

  else
  {
    v4 = AMSError();
    [AMSBagValue failingBagValueWithKey:@"trustedDomains" valueType:0 error:v4];
  }
  v5 = ;

  return v5;
}

- (AMSBagValue)appleMusicDeviceOfferDeepLink
{
  v7 = 0;
  v2 = [(BagContract *)self _bagWithError:&v7];
  v3 = v7;
  if (v2)
  {
    v4 = [v2 valueForKey:@"appleMusicDeviceOfferDeepLink"];
    [AMSBagValue frozenBagValueWithKey:@"appleMusicDeviceOfferDeepLink" value:v4 valueType:5];
  }

  else
  {
    v4 = AMSError();
    [AMSBagValue failingBagValueWithKey:@"appleMusicDeviceOfferDeepLink" valueType:5 error:v4];
  }
  v5 = ;

  return v5;
}

- (AMSBagValue)iCloudDeviceOfferDeepLink
{
  v7 = 0;
  v2 = [(BagContract *)self _bagWithError:&v7];
  v3 = v7;
  if (v2)
  {
    v4 = [v2 valueForKey:@"iCloudDeviceOfferDeepLink"];
    [AMSBagValue frozenBagValueWithKey:@"iCloudDeviceOfferDeepLink" value:v4 valueType:5];
  }

  else
  {
    v4 = AMSError();
    [AMSBagValue failingBagValueWithKey:@"iCloudDeviceOfferDeepLink" valueType:5 error:v4];
  }
  v5 = ;

  return v5;
}

- (id)_bagWithError:(id *)error
{
  v4 = [ISLoadURLBagOperation alloc];
  v5 = [SSURLBagContext contextWithBagType:0];
  v6 = [v4 initWithBagContext:v5];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100115AE0;
  v13[3] = &unk_100327110;
  v7 = dispatch_semaphore_create(0);
  v14 = v7;
  [v6 setCompletionBlock:v13];
  v8 = +[ISOperationQueue mainQueue];
  [v8 addOperation:v6];

  v9 = dispatch_time(0, 60000000000);
  v10 = dispatch_semaphore_wait(v7, v9);
  if (error && v10)
  {
    *error = AMSError();
  }

  uRLBag = [v6 URLBag];

  return uRLBag;
}

@end