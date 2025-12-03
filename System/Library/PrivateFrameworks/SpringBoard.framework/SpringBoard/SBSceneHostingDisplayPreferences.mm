@interface SBSceneHostingDisplayPreferences
- (CGSize)logicalScale;
- (SBSceneHostingDisplayPreferences)initWithDisplayConfigurationRequest:(id)request logicalScale:(CGSize)scale contentsScale:(double)contentsScale keepOtherModes:(BOOL)modes;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SBSceneHostingDisplayPreferences

- (SBSceneHostingDisplayPreferences)initWithDisplayConfigurationRequest:(id)request logicalScale:(CGSize)scale contentsScale:(double)contentsScale keepOtherModes:(BOOL)modes
{
  height = scale.height;
  width = scale.width;
  requestCopy = request;
  v22.receiver = self;
  v22.super_class = SBSceneHostingDisplayPreferences;
  v12 = [(SBSceneHostingDisplayPreferences *)&v22 init];
  if (v12)
  {
    v13 = [requestCopy copy];
    displayConfigurationRequest = v12->_displayConfigurationRequest;
    v12->_displayConfigurationRequest = v13;

    v12->_logicalScale.width = width;
    v12->_logicalScale.height = height;
    v12->_contentsScale = contentsScale;
    v12->_keepOtherModes = modes;
    v15 = objc_alloc_init(MEMORY[0x277CD9E50]);
    CADisplayModeCriteria = v12->_CADisplayModeCriteria;
    v12->_CADisplayModeCriteria = v15;

    v17 = v12->_CADisplayModeCriteria;
    [(FBSDisplayConfigurationRequest *)v12->_displayConfigurationRequest nativePixelSize];
    [(CADisplayModeCriteria *)v17 setResolution:?];
    v18 = v12->_CADisplayModeCriteria;
    [(FBSDisplayConfigurationRequest *)v12->_displayConfigurationRequest refreshRate];
    [(CADisplayModeCriteria *)v18 setRefreshRate:?];
    v19 = v12->_CADisplayModeCriteria;
    [(FBSDisplayConfigurationRequest *)v12->_displayConfigurationRequest hdrMode];
    v20 = FBSDisplayHDRModeToCADisplayHDRMode();
    [(CADisplayModeCriteria *)v19 setHdrMode:v20];

    if (objc_opt_respondsToSelector())
    {
      [v12->_CADisplayModeCriteria setDisableFrameDoubling:[(FBSDisplayConfigurationRequest *)v12->_displayConfigurationRequest disableFrameDoubling]];
    }
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  displayConfigurationRequest = selfCopy->_displayConfigurationRequest;
  contentsScale = selfCopy->_contentsScale;
  keepOtherModes = selfCopy->_keepOtherModes;
  width = selfCopy->_logicalScale.width;
  height = selfCopy->_logicalScale.height;

  return [(SBSceneHostingDisplayPreferences *)selfCopy initWithDisplayConfigurationRequest:displayConfigurationRequest logicalScale:keepOtherModes contentsScale:width keepOtherModes:height, contentsScale];
}

- (CGSize)logicalScale
{
  width = self->_logicalScale.width;
  height = self->_logicalScale.height;
  result.height = height;
  result.width = width;
  return result;
}

@end