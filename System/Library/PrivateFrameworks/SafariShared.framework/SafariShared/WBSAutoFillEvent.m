@interface WBSAutoFillEvent
- (WBSAutoFillEvent)initWithUsername:(id)a3 tabID:(id)a4 isPrivateTab:(BOOL)a5 url:(id)a6 providerBundleIdentifier:(id)a7 passwordWasFilled:(BOOL)a8;
- (id)description;
@end

@implementation WBSAutoFillEvent

- (WBSAutoFillEvent)initWithUsername:(id)a3 tabID:(id)a4 isPrivateTab:(BOOL)a5 url:(id)a6 providerBundleIdentifier:(id)a7 passwordWasFilled:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v27.receiver = self;
  v27.super_class = WBSAutoFillEvent;
  v18 = [(WBSAutoFillEvent *)&v27 init];
  if (v18)
  {
    v19 = [v14 copy];
    username = v18->_username;
    v18->_username = v19;

    objc_storeStrong(&v18->_tabID, a4);
    v18->_isPrivateTab = a5;
    v18->_passwordWasFilled = a8;
    v21 = [v16 copy];
    url = v18->_url;
    v18->_url = v21;

    v18->_machTimestamp = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v23 = [v17 copy];
    providerBundleIdentifier = v18->_providerBundleIdentifier;
    v18->_providerBundleIdentifier = v23;

    v25 = v18;
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = WBSAutoFillEvent;
  v4 = [(WBSAutoFillEvent *)&v7 description];
  v5 = [v3 stringWithFormat:@"<%@ user = '%@'; tabID = %@; isPrivate = %{BOOL}d timestamp = %lld>", v4, self->_username, self->_tabID, self->_isPrivateTab, self->_machTimestamp];;

  return v5;
}

@end