@interface SBSInCallPresentationConfiguration
- (SBSInCallPresentationConfiguration)initWithCoder:(id)a3;
- (SBSInCallPresentationConfiguration)initWithSceneBundleIdentifier:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBSInCallPresentationConfiguration

- (SBSInCallPresentationConfiguration)initWithSceneBundleIdentifier:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SBSInCallPresentationConfiguration;
  v5 = [(SBSInCallPresentationConfiguration *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_preferredPresentationMode = 1;
    v7 = [v4 copy];
    sceneBundleIdentifier = v6->_sceneBundleIdentifier;
    v6->_sceneBundleIdentifier = v7;

    v9 = [MEMORY[0x1E696AFB0] UUID];
    identifier = v6->_identifier;
    v6->_identifier = v9;
  }

  return v6;
}

- (SBSInCallPresentationConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sceneBundleIdentifier"];
  if (v5)
  {
    v6 = [(SBSInCallPresentationConfiguration *)self initWithSceneBundleIdentifier:v5];
    if (v6)
    {
      [v4 decodeDoubleForKey:@"preferredBannerHeight"];
      v6->_preferredBannerHeight = v7;
      v6->_preferredPresentationMode = [v4 decodeIntegerForKey:@"preferredPresentationMode"];
      v6->_userInitiated = [v4 decodeBoolForKey:@"userInitiated"];
      v6->_screenSharingPresentation = [v4 decodeBoolForKey:@"screenSharingPresentation"];
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
      identifier = v6->_identifier;
      v6->_identifier = v8;

      v6->_supportsSystemAperture = [v4 decodeBoolForKey:@"supportsSystemAperture"];
      v6->_shouldPreventBannersWhenPresentedAsOverlay = [v4 decodeBoolForKey:@"preventsBannersWhenPresentedAsOverlay"];
      v6->_supportsAmbient = [v4 decodeBoolForKey:@"supportsAmbient"];
      v6->_shouldPreferContinuityDisplayForFullScreenPresentation = [v4 decodeBoolForKey:@"prefersContinuityDisplayForFullScreenPresentation"];
      v6->_requiresDismissedPresentationmode = [v4 decodeBoolForKey:@"requiresDismissedPresentationmode"];
    }

    self = v6;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  sceneBundleIdentifier = self->_sceneBundleIdentifier;
  v6 = a3;
  [v6 encodeObject:sceneBundleIdentifier forKey:@"sceneBundleIdentifier"];
  [v6 encodeDouble:@"preferredBannerHeight" forKey:self->_preferredBannerHeight];
  [v6 encodeInteger:self->_preferredPresentationMode forKey:@"preferredPresentationMode"];
  [v6 encodeBool:self->_userInitiated forKey:@"userInitiated"];
  [v6 encodeBool:self->_screenSharingPresentation forKey:@"screenSharingPresentation"];
  v5 = [(SBSInCallPresentationConfiguration *)self identifier];
  [v6 encodeObject:v5 forKey:@"identifier"];

  [v6 encodeBool:self->_supportsSystemAperture forKey:@"supportsSystemAperture"];
  [v6 encodeBool:self->_shouldPreventBannersWhenPresentedAsOverlay forKey:@"preventsBannersWhenPresentedAsOverlay"];
  [v6 encodeBool:self->_supportsAmbient forKey:@"supportsAmbient"];
  [v6 encodeBool:self->_shouldPreferContinuityDisplayForFullScreenPresentation forKey:@"prefersContinuityDisplayForFullScreenPresentation"];
  [v6 encodeBool:self->_requiresDismissedPresentationmode forKey:@"requiresDismissedPresentationmode"];
}

- (id)succinctDescription
{
  v2 = [(SBSInCallPresentationConfiguration *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSInCallPresentationConfiguration *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBSInCallPresentationConfiguration *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__SBSInCallPresentationConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E735F7F0;
  v5 = v4;
  v10 = v5;
  v11 = self;
  v6 = [v5 modifyBody:v9];
  v7 = v5;

  return v5;
}

id __76__SBSInCallPresentationConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendString:*(*(a1 + 40) + 32) withName:@"sceneBundleIdentifier"];
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 40) UUIDString];
  [v2 appendString:v3 withName:@"identifier"];

  v4 = *(*(a1 + 40) + 24);
  if (v4 > 3)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_1E735FB28[v4];
  }

  [*(a1 + 32) appendString:v5 withName:@"preferredPresentationMode"];
  v6 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 8) withName:@"isUserInitiated" ifEqualTo:1];
  v7 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 9) withName:@"isScreenSharingPresentation" ifEqualTo:1];
  v8 = [*(a1 + 32) appendDouble:@"preferredBannerHeight" withName:2 decimalPrecision:*(*(a1 + 40) + 16)];
  v9 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 10) withName:@"supportsSystemAperture" ifEqualTo:1];
  v10 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 11) withName:@"shouldPreventBannersWhenPresentedAsOverlay" ifEqualTo:1];
  v11 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 12) withName:@"supportsAmbient" ifEqualTo:1];
  v12 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 13) withName:@"prefersContinuityDisplayForFullScreenPresentation" ifEqualTo:1];
  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 14) withName:@"requiresDismissedPresentationmode" ifEqualTo:1];
}

@end