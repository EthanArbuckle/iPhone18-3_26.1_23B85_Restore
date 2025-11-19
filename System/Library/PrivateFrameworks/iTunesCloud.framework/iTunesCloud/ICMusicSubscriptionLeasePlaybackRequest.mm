@interface ICMusicSubscriptionLeasePlaybackRequest
- (ICMusicSubscriptionLeasePlaybackRequest)initWithRequestContext:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ICMusicSubscriptionLeasePlaybackRequest

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 16), self->_assetSourceStorefrontID);
    objc_storeStrong((v5 + 24), self->_requestContext);
    objc_storeStrong((v5 + 56), self->_cloudUniversalLibraryID);
    *(v5 + 32) = self->_storeCloudID;
    *(v5 + 40) = self->_storePurchasedAdamID;
    *(v5 + 48) = self->_storeSubscriptionAdamID;
    *(v5 + 8) = self->_shouldPreventLeaseAcquisition;
    *(v5 + 9) = self->_shouldRequireLeaseAcquisition;
    *(v5 + 10) = self->_triggeredByLeasePrevention;
    *(v5 + 11) = self->_followUp;
  }

  return v5;
}

- (ICMusicSubscriptionLeasePlaybackRequest)initWithRequestContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICMusicSubscriptionLeasePlaybackRequest;
  v5 = [(ICMusicSubscriptionLeasePlaybackRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    requestContext = v5->_requestContext;
    v5->_requestContext = v6;
  }

  return v5;
}

@end