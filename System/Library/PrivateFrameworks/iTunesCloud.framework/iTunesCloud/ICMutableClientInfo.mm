@interface ICMutableClientInfo
- (void)setBagProfile:(id)profile;
- (void)setBagProfileVersion:(id)version;
- (void)setBundleIdentifier:(id)identifier;
- (void)setClientIdentifier:(id)identifier;
- (void)setClientVersion:(id)version;
- (void)setProcessName:(id)name;
- (void)setRequestingBundleIdentifier:(id)identifier;
- (void)setRequestingBundleVersion:(id)version;
@end

@implementation ICMutableClientInfo

- (void)setBagProfileVersion:(id)version
{
  v4 = [version copy];
  bagProfileVersion = self->super._bagProfileVersion;
  self->super._bagProfileVersion = v4;

  MEMORY[0x1EEE66BB8](v4, bagProfileVersion);
}

- (void)setBagProfile:(id)profile
{
  v4 = [profile copy];
  bagProfile = self->super._bagProfile;
  self->super._bagProfile = v4;

  MEMORY[0x1EEE66BB8](v4, bagProfile);
}

- (void)setRequestingBundleVersion:(id)version
{
  v4 = [version copy];
  requestingBundleVersion = self->super._requestingBundleVersion;
  self->super._requestingBundleVersion = v4;

  MEMORY[0x1EEE66BB8](v4, requestingBundleVersion);
}

- (void)setRequestingBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  requestingBundleIdentifier = self->super._requestingBundleIdentifier;
  self->super._requestingBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, requestingBundleIdentifier);
}

- (void)setClientVersion:(id)version
{
  v4 = [version copy];
  clientVersion = self->super._clientVersion;
  self->super._clientVersion = v4;

  MEMORY[0x1EEE66BB8](v4, clientVersion);
}

- (void)setClientIdentifier:(id)identifier
{
  v4 = [identifier copy];
  clientIdentifier = self->super._clientIdentifier;
  self->super._clientIdentifier = v4;

  v6 = self->super._clientIdentifier;

  [(ICClientInfo *)self _setDefaultBagProfileForClientIdentifier:v6];
}

- (void)setProcessName:(id)name
{
  v4 = [name copy];
  processName = self->super._processName;
  self->super._processName = v4;

  MEMORY[0x1EEE66BB8](v4, processName);
}

- (void)setBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  bundleIdentifier = self->super._bundleIdentifier;
  self->super._bundleIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, bundleIdentifier);
}

@end