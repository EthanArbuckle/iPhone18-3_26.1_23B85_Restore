@interface SBSFocusModesHomeScreenSettingsResponse
- (SBSFocusModesHomeScreenSettingsResponse)initWithBSXPCCoder:(id)a3;
- (SBSFocusModesHomeScreenSettingsResponse)initWithSnapshots:(id)a3;
@end

@implementation SBSFocusModesHomeScreenSettingsResponse

- (SBSFocusModesHomeScreenSettingsResponse)initWithSnapshots:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBSFocusModesHomeScreenSettingsResponse;
  v5 = [(SBSFocusModesHomeScreenSettingsResponse *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    snapshots = v5->_snapshots;
    v5->_snapshots = v6;
  }

  return v5;
}

- (SBSFocusModesHomeScreenSettingsResponse)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 decodeCollectionOfClass:v5 containingClass:objc_opt_class() forKey:@"snapshots"];

  if (v6)
  {
    self = [(SBSFocusModesHomeScreenSettingsResponse *)self initWithSnapshots:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end