@interface FBSMutableSceneClientSettings(PosterUIFoundation)
- (void)pui_setAcceptableSalientContentRectangle:()PosterUIFoundation;
- (void)pui_setAdaptiveTimeHeightUserConfigured:()PosterUIFoundation;
- (void)pui_setAdaptiveTimeMode:()PosterUIFoundation;
- (void)pui_setContentOcclusionRectangleUpdatesRequested:()PosterUIFoundation;
- (void)pui_setDidFinishInitialization:()PosterUIFoundation;
- (void)pui_setInExtendedRenderSession:()PosterUIFoundation;
- (void)pui_setPowerlogIdentifier:()PosterUIFoundation;
- (void)pui_setPreferredSalientContentRectangle:()PosterUIFoundation;
- (void)pui_setSalientContentRectangleUpdatesRequested:()PosterUIFoundation;
- (void)pui_setSignificantEventOptions:()PosterUIFoundation;
- (void)pui_setSignificantEventTime:()PosterUIFoundation;
- (void)pui_setUserTapEventsRequested:()PosterUIFoundation;
- (void)pui_setWantsSuitableSnapshotChecks:()PosterUIFoundation;
@end

@implementation FBSMutableSceneClientSettings(PosterUIFoundation)

- (void)pui_setDidFinishInitialization:()PosterUIFoundation
{
  v1 = [a1 otherSettings];
  [v1 setFlag:BSSettingFlagForBool() forSetting:20512];
}

- (void)pui_setInExtendedRenderSession:()PosterUIFoundation
{
  v1 = [a1 otherSettings];
  [v1 setFlag:BSSettingFlagForBool() forSetting:20514];
}

- (void)pui_setSignificantEventTime:()PosterUIFoundation
{
  v5 = [a1 otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [v5 setObject:v4 forSetting:20515];
}

- (void)pui_setSignificantEventOptions:()PosterUIFoundation
{
  v5 = [a1 otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:20516];
}

- (void)pui_setUserTapEventsRequested:()PosterUIFoundation
{
  v5 = [a1 otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [v5 setObject:v4 forSetting:20513];
}

- (void)pui_setPreferredSalientContentRectangle:()PosterUIFoundation
{
  v9 = [a1 otherSettings];
  *v11 = a2;
  *&v11[1] = a3;
  *&v11[2] = a4;
  *&v11[3] = a5;
  v10 = [MEMORY[0x1E696B098] valueWithBytes:v11 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [v9 setObject:v10 forSetting:20517];
}

- (void)pui_setAcceptableSalientContentRectangle:()PosterUIFoundation
{
  v9 = [a1 otherSettings];
  *v11 = a2;
  *&v11[1] = a3;
  *&v11[2] = a4;
  *&v11[3] = a5;
  v10 = [MEMORY[0x1E696B098] valueWithBytes:v11 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [v9 setObject:v10 forSetting:20520];
}

- (void)pui_setSalientContentRectangleUpdatesRequested:()PosterUIFoundation
{
  v1 = [a1 otherSettings];
  [v1 setFlag:BSSettingFlagForBool() forSetting:20518];
}

- (void)pui_setContentOcclusionRectangleUpdatesRequested:()PosterUIFoundation
{
  v1 = [a1 otherSettings];
  [v1 setFlag:BSSettingFlagForBool() forSetting:20519];
}

- (void)pui_setPowerlogIdentifier:()PosterUIFoundation
{
  v5 = [a1 otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:20521];
}

- (void)pui_setAdaptiveTimeMode:()PosterUIFoundation
{
  v5 = [a1 otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:20522];
}

- (void)pui_setAdaptiveTimeHeightUserConfigured:()PosterUIFoundation
{
  v1 = [a1 otherSettings];
  [v1 setFlag:BSSettingFlagForBool() forSetting:20523];
}

- (void)pui_setWantsSuitableSnapshotChecks:()PosterUIFoundation
{
  v1 = [a1 otherSettings];
  [v1 setFlag:BSSettingFlagForBool() forSetting:20524];
}

@end