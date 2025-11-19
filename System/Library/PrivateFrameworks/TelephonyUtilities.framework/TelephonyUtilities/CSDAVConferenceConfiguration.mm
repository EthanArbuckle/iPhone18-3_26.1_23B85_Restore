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
  v4 = [(CSDAVConferenceConfiguration *)self isCaller];
  v5 = [(CSDAVConferenceConfiguration *)self capabilities];
  v6 = [NSString stringWithFormat:@"<%@ %p caller=%d capabilities=%@ deviceRole=%d>", v3, self, v4, v5, [(CSDAVConferenceConfiguration *)self deviceRole]];

  return v6;
}

- (int)deviceRole
{
  v2 = [(CSDAVConferenceConfiguration *)self capabilities];
  v3 = [v2 deviceRole];

  return v3;
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