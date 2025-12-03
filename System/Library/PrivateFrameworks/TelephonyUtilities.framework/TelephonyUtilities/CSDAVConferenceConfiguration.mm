@interface CSDAVConferenceConfiguration
- (CGSize)localLandscapeAspectRatio;
- (CGSize)localPortraitAspectRatio;
- (id)description;
- (int)deviceRole;
@end

@implementation CSDAVConferenceConfiguration

- (id)description
{
  v3 = objc_opt_class();
  isCaller = [(CSDAVConferenceConfiguration *)self isCaller];
  capabilities = [(CSDAVConferenceConfiguration *)self capabilities];
  v6 = [NSString stringWithFormat:@"<%@ %p caller=%d capabilities=%@ deviceRole=%d>", v3, self, isCaller, capabilities, [(CSDAVConferenceConfiguration *)self deviceRole]];

  return v6;
}

- (int)deviceRole
{
  capabilities = [(CSDAVConferenceConfiguration *)self capabilities];
  deviceRole = [capabilities deviceRole];

  return deviceRole;
}

- (CGSize)localLandscapeAspectRatio
{
  width = self->_localLandscapeAspectRatio.width;
  height = self->_localLandscapeAspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)localPortraitAspectRatio
{
  width = self->_localPortraitAspectRatio.width;
  height = self->_localPortraitAspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

@end