@interface SBSCaptureButtonEligibleApp
- (BOOL)isEqual:(id)a3;
- (SBSCaptureButtonEligibleApp)initWithBundleIdentifier:(id)a3 cameraTCCIsAuthorized:(BOOL)a4;
- (SBSCaptureButtonEligibleApp)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBSCaptureButtonEligibleApp

- (SBSCaptureButtonEligibleApp)initWithBundleIdentifier:(id)a3 cameraTCCIsAuthorized:(BOOL)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = SBSCaptureButtonEligibleApp;
  v8 = [(SBSCaptureButtonEligibleApp *)&v12 init];
  if (v8)
  {
    if (!v7)
    {
      [SBSCaptureButtonEligibleApp initWithBundleIdentifier:a2 cameraTCCIsAuthorized:v8];
    }

    v9 = [v7 copy];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v9;

    v8->_cameraTCCIsAuthorized = a4;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleIdentifier hash];
  v4 = 0x10000;
  if (!self->_cameraTCCIsAuthorized)
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;

  return MEMORY[0x1EEDF0120](v5);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (BSEqualObjects())
    {
      v6 = v5[8] == self->_cameraTCCIsAuthorized;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SBSCaptureButtonEligibleApp)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = SBSCaptureButtonEligibleApp;
  v3 = a3;
  v4 = [(SBSCaptureButtonEligibleApp *)&v9 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"bundleIdentifier", v9.receiver, v9.super_class}];
  bundleIdentifier = v4->_bundleIdentifier;
  v4->_bundleIdentifier = v5;

  v7 = [v3 decodeBoolForKey:@"cameraTCCIsAuthorized"];
  v4->_cameraTCCIsAuthorized = v7;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  bundleIdentifier = self->_bundleIdentifier;
  v5 = a3;
  [v5 encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];
  [v5 encodeBool:self->_cameraTCCIsAuthorized forKey:@"cameraTCCIsAuthorized"];
}

- (void)initWithBundleIdentifier:(uint64_t)a1 cameraTCCIsAuthorized:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSCaptureButtonEligibleApp.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier != nil"}];
}

@end