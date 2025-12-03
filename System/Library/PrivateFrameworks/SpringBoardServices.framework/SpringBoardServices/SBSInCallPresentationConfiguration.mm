@interface SBSInCallPresentationConfiguration
- (SBSInCallPresentationConfiguration)initWithCoder:(id)coder;
- (SBSInCallPresentationConfiguration)initWithSceneBundleIdentifier:(id)identifier;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBSInCallPresentationConfiguration

- (SBSInCallPresentationConfiguration)initWithSceneBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = SBSInCallPresentationConfiguration;
  v5 = [(SBSInCallPresentationConfiguration *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_preferredPresentationMode = 1;
    v7 = [identifierCopy copy];
    sceneBundleIdentifier = v6->_sceneBundleIdentifier;
    v6->_sceneBundleIdentifier = v7;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    identifier = v6->_identifier;
    v6->_identifier = uUID;
  }

  return v6;
}

- (SBSInCallPresentationConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sceneBundleIdentifier"];
  if (v5)
  {
    v6 = [(SBSInCallPresentationConfiguration *)self initWithSceneBundleIdentifier:v5];
    if (v6)
    {
      [coderCopy decodeDoubleForKey:@"preferredBannerHeight"];
      v6->_preferredBannerHeight = v7;
      v6->_preferredPresentationMode = [coderCopy decodeIntegerForKey:@"preferredPresentationMode"];
      v6->_userInitiated = [coderCopy decodeBoolForKey:@"userInitiated"];
      v6->_screenSharingPresentation = [coderCopy decodeBoolForKey:@"screenSharingPresentation"];
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
      identifier = v6->_identifier;
      v6->_identifier = v8;

      v6->_supportsSystemAperture = [coderCopy decodeBoolForKey:@"supportsSystemAperture"];
      v6->_shouldPreventBannersWhenPresentedAsOverlay = [coderCopy decodeBoolForKey:@"preventsBannersWhenPresentedAsOverlay"];
      v6->_supportsAmbient = [coderCopy decodeBoolForKey:@"supportsAmbient"];
      v6->_shouldPreferContinuityDisplayForFullScreenPresentation = [coderCopy decodeBoolForKey:@"prefersContinuityDisplayForFullScreenPresentation"];
      v6->_requiresDismissedPresentationmode = [coderCopy decodeBoolForKey:@"requiresDismissedPresentationmode"];
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  sceneBundleIdentifier = self->_sceneBundleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:sceneBundleIdentifier forKey:@"sceneBundleIdentifier"];
  [coderCopy encodeDouble:@"preferredBannerHeight" forKey:self->_preferredBannerHeight];
  [coderCopy encodeInteger:self->_preferredPresentationMode forKey:@"preferredPresentationMode"];
  [coderCopy encodeBool:self->_userInitiated forKey:@"userInitiated"];
  [coderCopy encodeBool:self->_screenSharingPresentation forKey:@"screenSharingPresentation"];
  identifier = [(SBSInCallPresentationConfiguration *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  [coderCopy encodeBool:self->_supportsSystemAperture forKey:@"supportsSystemAperture"];
  [coderCopy encodeBool:self->_shouldPreventBannersWhenPresentedAsOverlay forKey:@"preventsBannersWhenPresentedAsOverlay"];
  [coderCopy encodeBool:self->_supportsAmbient forKey:@"supportsAmbient"];
  [coderCopy encodeBool:self->_shouldPreferContinuityDisplayForFullScreenPresentation forKey:@"prefersContinuityDisplayForFullScreenPresentation"];
  [coderCopy encodeBool:self->_requiresDismissedPresentationmode forKey:@"requiresDismissedPresentationmode"];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSInCallPresentationConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSInCallPresentationConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBSInCallPresentationConfiguration *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__SBSInCallPresentationConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E735F7F0;
  v5 = succinctDescriptionBuilder;
  v10 = v5;
  selfCopy = self;
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