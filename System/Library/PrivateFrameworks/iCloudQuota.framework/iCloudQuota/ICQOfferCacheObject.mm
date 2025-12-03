@interface ICQOfferCacheObject
- (ICQOfferCacheObject)initWithDaemonOffer:(id)offer bundleIdentifier:(id)identifier;
- (id)offer;
@end

@implementation ICQOfferCacheObject

- (ICQOfferCacheObject)initWithDaemonOffer:(id)offer bundleIdentifier:(id)identifier
{
  offerCopy = offer;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = ICQOfferCacheObject;
  v9 = [(ICQOfferCacheObject *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_daemonOffer, offer);
    objc_storeStrong(&v10->_bundleIdentifier, identifier);
  }

  return v10;
}

- (id)offer
{
  daemonOffer = [(ICQOfferCacheObject *)self daemonOffer];
  bundleIdentifier = [(ICQOfferCacheObject *)self bundleIdentifier];
  if (daemonOffer)
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
    serverDictionary = [daemonOffer serverDictionary];
    accountAltDSID = [daemonOffer accountAltDSID];
    notificationID = [daemonOffer notificationID];
    retrievalDate = [daemonOffer retrievalDate];
    [daemonOffer callbackInterval];
    v18 = v17;
    v19 = [daemonOffer appLaunchLinkForBundleID:bundleIdentifier];
    v20 = [v12 initWithServerDictionary:serverDictionary accountAltDSID:accountAltDSID notificationID:notificationID retrievalDate:retrievalDate callbackInterval:v19 appLaunchLink:bundleIdentifier bundleIdentifier:v18];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end