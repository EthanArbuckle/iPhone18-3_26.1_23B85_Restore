@interface _ICMusicSubscriptionLeaseIdentityCacheKey
- (BOOL)isEqual:(id)a3;
- (_ICMusicSubscriptionLeaseIdentityCacheKey)initWithDSID:(id)a3 carrierBundleDeviceIdentifier:(id)a4 delegatedDSID:(id)a5;
- (unint64_t)hash;
@end

@implementation _ICMusicSubscriptionLeaseIdentityCacheKey

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (DSID = self->_DSID, DSID != v4->_DSID) && ![(NSNumber *)DSID isEqual:?]|| (delegatedDSID = self->_delegatedDSID, delegatedDSID != v4->_delegatedDSID) && ![(NSNumber *)delegatedDSID isEqual:?])
  {
    v8 = 0;
    goto LABEL_11;
  }

  carrierBundleDeviceIdentifier = self->_carrierBundleDeviceIdentifier;
  if (carrierBundleDeviceIdentifier == v4->_carrierBundleDeviceIdentifier)
  {
LABEL_10:
    v8 = 1;
    goto LABEL_11;
  }

  v8 = [(NSString *)carrierBundleDeviceIdentifier isEqual:?];
LABEL_11:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_carrierBundleDeviceIdentifier hash];
  v4 = [(NSNumber *)self->_DSID hash]^ v3;
  return v4 ^ [(NSNumber *)self->_delegatedDSID hash];
}

- (_ICMusicSubscriptionLeaseIdentityCacheKey)initWithDSID:(id)a3 carrierBundleDeviceIdentifier:(id)a4 delegatedDSID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _ICMusicSubscriptionLeaseIdentityCacheKey;
  v11 = [(_ICMusicSubscriptionLeaseIdentityCacheKey *)&v19 init];
  if (v11)
  {
    v12 = [v9 copy];
    carrierBundleDeviceIdentifier = v11->_carrierBundleDeviceIdentifier;
    v11->_carrierBundleDeviceIdentifier = v12;

    v14 = [v10 copy];
    delegatedDSID = v11->_delegatedDSID;
    v11->_delegatedDSID = v14;

    v16 = [v8 copy];
    DSID = v11->_DSID;
    v11->_DSID = v16;
  }

  return v11;
}

@end