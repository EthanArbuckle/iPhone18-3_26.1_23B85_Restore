@interface ICQOfferCacheObject
- (ICQOfferCacheObject)initWithDaemonOffer:(id)a3 bundleIdentifier:(id)a4;
- (id)offer;
@end

@implementation ICQOfferCacheObject

- (ICQOfferCacheObject)initWithDaemonOffer:(id)a3 bundleIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICQOfferCacheObject;
  v9 = [(ICQOfferCacheObject *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_daemonOffer, a3);
    objc_storeStrong(&v10->_bundleIdentifier, a4);
  }

  return v10;
}

- (id)offer
{
  v3 = [(ICQOfferCacheObject *)self daemonOffer];
  v4 = [(ICQOfferCacheObject *)self bundleIdentifier];
  if (v3)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 isEqualToString:v8];

    v10 = off_27A650E90;
    if (!v9)
    {
      v10 = off_27A650E48;
    }

    v11 = *v10;
    v12 = objc_alloc(objc_opt_class());
    v13 = [v3 serverDictionary];
    v14 = [v3 accountAltDSID];
    v15 = [v3 notificationID];
    v16 = [v3 retrievalDate];
    [v3 callbackInterval];
    v18 = v17;
    v19 = [v3 appLaunchLinkForBundleID:v4];
    v20 = [v12 initWithServerDictionary:v13 accountAltDSID:v14 notificationID:v15 retrievalDate:v16 callbackInterval:v19 appLaunchLink:v4 bundleIdentifier:v18];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end