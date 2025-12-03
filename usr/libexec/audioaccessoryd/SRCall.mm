@interface SRCall
- (BOOL)conferenceCall;
- (SRCall)initWithCall:(id)call;
@end

@implementation SRCall

- (SRCall)initWithCall:(id)call
{
  callCopy = call;
  v19.receiver = self;
  v19.super_class = SRCall;
  v5 = [(SRCall *)&v19 init];
  if (v5)
  {
    callUUID = [callCopy callUUID];
    callUUID = v5->_callUUID;
    v5->_callUUID = callUUID;

    v5->_connecting = [callCopy isConnecting];
    v5->_connected = [callCopy isConnected];
    v5->_endpointOnCurrentDevice = [callCopy isEndpointOnCurrentDevice];
    v5->_incoming = [callCopy isIncoming];
    v5->_outgoing = [callCopy isOutgoing];
    provider = [callCopy provider];
    bundleIdentifier = [provider bundleIdentifier];
    providerBundleIdentifier = v5->_providerBundleIdentifier;
    v5->_providerBundleIdentifier = bundleIdentifier;

    provider2 = [callCopy provider];
    identifier = [provider2 identifier];
    providerIdentifier = v5->_providerIdentifier;
    v5->_providerIdentifier = identifier;

    provider3 = [callCopy provider];
    localizedName = [provider3 localizedName];
    providerLocalizedName = v5->_providerLocalizedName;
    v5->_providerLocalizedName = localizedName;

    provider4 = [callCopy provider];
    v5->_providerSystemProvider = [provider4 isSystemProvider];

    v5->_status = [callCopy status];
  }

  return v5;
}

- (BOOL)conferenceCall
{
  providerBundleIdentifier = [(SRCall *)self providerBundleIdentifier];

  if (!providerBundleIdentifier)
  {
    return 0;
  }

  [NSSet setWithObjects:@"Zoom", @"Webex", @"google.Tachyon", @"google.meetings", 0];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
LABEL_4:
    v8 = 0;
    while (1)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v14 + 1) + 8 * v8);
      providerBundleIdentifier2 = [(SRCall *)self providerBundleIdentifier];
      v11 = 1;
      v12 = [providerBundleIdentifier2 rangeOfString:v9 options:1];

      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v11 = 0;
  }

  return v11;
}

@end