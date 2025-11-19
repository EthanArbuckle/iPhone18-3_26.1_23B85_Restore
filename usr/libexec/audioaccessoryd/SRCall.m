@interface SRCall
- (BOOL)conferenceCall;
- (SRCall)initWithCall:(id)a3;
@end

@implementation SRCall

- (SRCall)initWithCall:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SRCall;
  v5 = [(SRCall *)&v19 init];
  if (v5)
  {
    v6 = [v4 callUUID];
    callUUID = v5->_callUUID;
    v5->_callUUID = v6;

    v5->_connecting = [v4 isConnecting];
    v5->_connected = [v4 isConnected];
    v5->_endpointOnCurrentDevice = [v4 isEndpointOnCurrentDevice];
    v5->_incoming = [v4 isIncoming];
    v5->_outgoing = [v4 isOutgoing];
    v8 = [v4 provider];
    v9 = [v8 bundleIdentifier];
    providerBundleIdentifier = v5->_providerBundleIdentifier;
    v5->_providerBundleIdentifier = v9;

    v11 = [v4 provider];
    v12 = [v11 identifier];
    providerIdentifier = v5->_providerIdentifier;
    v5->_providerIdentifier = v12;

    v14 = [v4 provider];
    v15 = [v14 localizedName];
    providerLocalizedName = v5->_providerLocalizedName;
    v5->_providerLocalizedName = v15;

    v17 = [v4 provider];
    v5->_providerSystemProvider = [v17 isSystemProvider];

    v5->_status = [v4 status];
  }

  return v5;
}

- (BOOL)conferenceCall
{
  v3 = [(SRCall *)self providerBundleIdentifier];

  if (!v3)
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
      v10 = [(SRCall *)self providerBundleIdentifier];
      v11 = 1;
      v12 = [v10 rangeOfString:v9 options:1];

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