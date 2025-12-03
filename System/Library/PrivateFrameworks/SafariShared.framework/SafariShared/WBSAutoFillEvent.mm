@interface WBSAutoFillEvent
- (WBSAutoFillEvent)initWithUsername:(id)username tabID:(id)d isPrivateTab:(BOOL)tab url:(id)url providerBundleIdentifier:(id)identifier passwordWasFilled:(BOOL)filled;
- (id)description;
@end

@implementation WBSAutoFillEvent

- (WBSAutoFillEvent)initWithUsername:(id)username tabID:(id)d isPrivateTab:(BOOL)tab url:(id)url providerBundleIdentifier:(id)identifier passwordWasFilled:(BOOL)filled
{
  usernameCopy = username;
  dCopy = d;
  urlCopy = url;
  identifierCopy = identifier;
  v27.receiver = self;
  v27.super_class = WBSAutoFillEvent;
  v18 = [(WBSAutoFillEvent *)&v27 init];
  if (v18)
  {
    v19 = [usernameCopy copy];
    username = v18->_username;
    v18->_username = v19;

    objc_storeStrong(&v18->_tabID, d);
    v18->_isPrivateTab = tab;
    v18->_passwordWasFilled = filled;
    v21 = [urlCopy copy];
    url = v18->_url;
    v18->_url = v21;

    v18->_machTimestamp = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v23 = [identifierCopy copy];
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