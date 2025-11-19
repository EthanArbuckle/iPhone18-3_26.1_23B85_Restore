@interface SBSceneHostingDisplayPreferences
- (CGSize)logicalScale;
- (SBSceneHostingDisplayPreferences)initWithDisplayConfigurationRequest:(id)a3 logicalScale:(CGSize)a4 contentsScale:(double)a5 keepOtherModes:(BOOL)a6;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SBSceneHostingDisplayPreferences

- (SBSceneHostingDisplayPreferences)initWithDisplayConfigurationRequest:(id)a3 logicalScale:(CGSize)a4 contentsScale:(double)a5 keepOtherModes:(BOOL)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a3;
  v22.receiver = self;
  v22.super_class = SBSceneHostingDisplayPreferences;
  v12 = [(SBSceneHostingDisplayPreferences *)&v22 init];
  if (v12)
  {
    v13 = [v11 copy];
    displayConfigurationRequest = v12->_displayConfigurationRequest;
    v12->_displayConfigurationRequest = v13;

    v12->_logicalScale.width = width;
    v12->_logicalScale.height = height;
    v12->_contentsScale = a5;
    v12->_keepOtherModes = a6;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;
  displayConfigurationRequest = v3->_displayConfigurationRequest;
  contentsScale = v3->_contentsScale;
  keepOtherModes = v3->_keepOtherModes;
  width = v3->_logicalScale.width;
  height = v3->_logicalScale.height;

  return [(SBSceneHostingDisplayPreferences *)v3 initWithDisplayConfigurationRequest:displayConfigurationRequest logicalScale:keepOtherModes contentsScale:width keepOtherModes:height, contentsScale];
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