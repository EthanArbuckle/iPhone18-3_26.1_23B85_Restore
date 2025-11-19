@interface ICMutableClientInfo
- (void)setBagProfile:(id)a3;
- (void)setBagProfileVersion:(id)a3;
- (void)setBundleIdentifier:(id)a3;
- (void)setClientIdentifier:(id)a3;
- (void)setClientVersion:(id)a3;
- (void)setProcessName:(id)a3;
- (void)setRequestingBundleIdentifier:(id)a3;
- (void)setRequestingBundleVersion:(id)a3;
@end

@implementation ICMutableClientInfo

- (void)setBagProfileVersion:(id)a3
{
  v4 = [a3 copy];
  bagProfileVersion = self->super._bagProfileVersion;
  self->super._bagProfileVersion = v4;

  MEMORY[0x1EEE66BB8](v4, bagProfileVersion);
}

- (void)setBagProfile:(id)a3
{
  v4 = [a3 copy];
  bagProfile = self->super._bagProfile;
  self->super._bagProfile = v4;

  MEMORY[0x1EEE66BB8](v4, bagProfile);
}

- (void)setRequestingBundleVersion:(id)a3
{
  v4 = [a3 copy];
  requestingBundleVersion = self->super._requestingBundleVersion;
  self->super._requestingBundleVersion = v4;

  MEMORY[0x1EEE66BB8](v4, requestingBundleVersion);
}

- (void)setRequestingBundleIdentifier:(id)a3
{
  v4 = [a3 copy];
  requestingBundleIdentifier = self->super._requestingBundleIdentifier;
  self->super._requestingBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, requestingBundleIdentifier);
}

- (void)setClientVersion:(id)a3
{
  v4 = [a3 copy];
  clientVersion = self->super._clientVersion;
  self->super._clientVersion = v4;

  MEMORY[0x1EEE66BB8](v4, clientVersion);
}

- (void)setClientIdentifier:(id)a3
{
  v4 = [a3 copy];
  clientIdentifier = self->super._clientIdentifier;
  self->super._clientIdentifier = v4;

  v6 = self->super._clientIdentifier;

  [(ICClientInfo *)self _setDefaultBagProfileForClientIdentifier:v6];
}

- (void)setProcessName:(id)a3
{
  v4 = [a3 copy];
  processName = self->super._processName;
  self->super._processName = v4;

  MEMORY[0x1EEE66BB8](v4, processName);
}

- (void)setBundleIdentifier:(id)a3
{
  v4 = [a3 copy];
  bundleIdentifier = self->super._bundleIdentifier;
  self->super._bundleIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, bundleIdentifier);
}

@end