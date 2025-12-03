@interface CSDChannelProvider
- (BOOL)isEqualToChannelProvider:(id)provider;
- (CSDChannelProvider)initWithApplicationRecord:(id)record;
- (CSDChannelProvider)initWithChannelProvider:(id)provider;
- (CSDChannelProvider)initWithSource:(id)source configuration:(id)configuration;
- (id)base;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CSDChannelProvider

- (CSDChannelProvider)initWithSource:(id)source configuration:(id)configuration
{
  sourceCopy = source;
  configurationCopy = configuration;
  identifier = [sourceCopy identifier];
  v15.receiver = self;
  v15.super_class = CSDChannelProvider;
  v9 = [(CSDChannelProvider *)&v15 initWithIdentifier:identifier];

  if (v9)
  {
    -[CSDChannelProvider setAudioSessionID:](v9, "setAudioSessionID:", [configurationCopy audioSessionID]);
    bundleIdentifier = [sourceCopy bundleIdentifier];
    [(CSDChannelProvider *)v9 setBundleIdentifier:bundleIdentifier];

    bundleURL = [sourceCopy bundleURL];
    [(CSDChannelProvider *)v9 setBundleURL:bundleURL];

    localizedName = [sourceCopy localizedName];
    v13 = [localizedName copy];
    [(CSDChannelProvider *)v9 setLocalizedName:v13];
  }

  return v9;
}

- (CSDChannelProvider)initWithChannelProvider:(id)provider
{
  providerCopy = provider;
  identifier = [providerCopy identifier];
  v11.receiver = self;
  v11.super_class = CSDChannelProvider;
  v6 = [(CSDChannelProvider *)&v11 initWithIdentifier:identifier];

  if (v6)
  {
    -[CSDChannelProvider setAudioSessionID:](v6, "setAudioSessionID:", [providerCopy audioSessionID]);
    bundleIdentifier = [providerCopy bundleIdentifier];
    [(CSDChannelProvider *)v6 setBundleIdentifier:bundleIdentifier];

    bundleURL = [providerCopy bundleURL];
    [(CSDChannelProvider *)v6 setBundleURL:bundleURL];

    localizedName = [providerCopy localizedName];
    [(CSDChannelProvider *)v6 setLocalizedName:localizedName];
  }

  return v6;
}

- (CSDChannelProvider)initWithApplicationRecord:(id)record
{
  recordCopy = record;
  applicationIdentifier = [recordCopy applicationIdentifier];
  v11.receiver = self;
  v11.super_class = CSDChannelProvider;
  v6 = [(CSDChannelProvider *)&v11 initWithIdentifier:applicationIdentifier];

  if (v6)
  {
    bundleIdentifier = [recordCopy bundleIdentifier];
    [(CSDChannelProvider *)v6 setBundleIdentifier:bundleIdentifier];

    v8 = [recordCopy URL];
    [(CSDChannelProvider *)v6 setBundleURL:v8];

    localizedName = [recordCopy localizedName];
    [(CSDChannelProvider *)v6 setLocalizedName:localizedName];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CSDChannelProvider allocWithZone:zone];

  return [(CSDChannelProvider *)v4 initWithChannelProvider:self];
}

- (BOOL)isEqualToChannelProvider:(id)provider
{
  providerCopy = provider;
  audioSessionID = [(CSDChannelProvider *)self audioSessionID];
  if (audioSessionID == [providerCopy audioSessionID])
  {
    bundleURL = [(CSDChannelProvider *)self bundleURL];
    bundleURL2 = [providerCopy bundleURL];
    if ([bundleURL isEqual:bundleURL2])
    {
      bundleIdentifier = [(CSDChannelProvider *)self bundleIdentifier];
      bundleIdentifier2 = [providerCopy bundleIdentifier];
      if (TUStringsAreEqualOrNil())
      {
        localizedName = [(CSDChannelProvider *)self localizedName];
        localizedName2 = [providerCopy localizedName];
        v12 = TUStringsAreEqualOrNil();
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)base
{
  v3 = [TUCallProvider alloc];
  identifier = [(CSDChannelProvider *)self identifier];
  v5 = [v3 initWithIdentifier:identifier];

  bundleURL = [(CSDChannelProvider *)self bundleURL];
  v7 = [bundleURL copy];
  [v5 setBundleURL:v7];

  bundleIdentifier = [(CSDChannelProvider *)self bundleIdentifier];
  v9 = [bundleIdentifier copy];
  [v5 setBundleIdentifier:v9];

  localizedName = [(CSDChannelProvider *)self localizedName];
  v11 = [localizedName copy];
  [v5 setLocalizedName:v11];

  [v5 setAudioSessionID:{-[CSDChannelProvider audioSessionID](self, "audioSessionID")}];

  return v5;
}

@end