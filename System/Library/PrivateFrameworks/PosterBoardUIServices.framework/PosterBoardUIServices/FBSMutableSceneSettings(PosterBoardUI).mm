@interface FBSMutableSceneSettings(PosterBoardUI)
- (void)pruis_setLeadingTopButtonFrame:()PosterBoardUI;
- (void)pruis_setLockPosterComplicationRowHidden:()PosterBoardUI;
- (void)pruis_setLockPosterFloatingLayerInlined:()PosterBoardUI;
- (void)pruis_setLockPosterLiveContentLayerContextID:()PosterBoardUI;
- (void)pruis_setLockPosterLiveContentLayerRenderID:()PosterBoardUI;
- (void)pruis_setLockPosterLiveFloatingLayerContextID:()PosterBoardUI;
- (void)pruis_setLockPosterLiveFloatingLayerRenderID:()PosterBoardUI;
- (void)pruis_setLockPosterOverlayLayerContextID:()PosterBoardUI;
- (void)pruis_setLockPosterOverlayLayerRenderID:()PosterBoardUI;
- (void)pruis_setLockVibrancyConfiguration:()PosterBoardUI;
- (void)pruis_setPreferredSwitcherLayoutMode:()PosterBoardUI;
- (void)pruis_setTitleAdaptiveTextHeight:()PosterBoardUI;
- (void)pruis_setTrailingTopButtonFrame:()PosterBoardUI;
@end

@implementation FBSMutableSceneSettings(PosterBoardUI)

- (void)pruis_setPreferredSwitcherLayoutMode:()PosterBoardUI
{
  otherSettings = [self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [otherSettings setObject:v4 forSetting:25562];
}

- (void)pruis_setLockPosterOverlayLayerRenderID:()PosterBoardUI
{
  otherSettings = [self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [otherSettings setObject:v4 forSetting:25563];
}

- (void)pruis_setLockPosterOverlayLayerContextID:()PosterBoardUI
{
  otherSettings = [self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3];
  [otherSettings setObject:v4 forSetting:25564];
}

- (void)pruis_setLockPosterLiveContentLayerRenderID:()PosterBoardUI
{
  otherSettings = [self otherSettings];
  if (a3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
    [otherSettings setObject:v4 forSetting:25565];
  }

  else
  {
    [otherSettings setObject:0 forSetting:25565];
  }
}

- (void)pruis_setLockPosterLiveContentLayerContextID:()PosterBoardUI
{
  otherSettings = [self otherSettings];
  if (a3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3];
    [otherSettings setObject:v4 forSetting:25566];
  }

  else
  {
    [otherSettings setObject:0 forSetting:25566];
  }
}

- (void)pruis_setLockPosterFloatingLayerInlined:()PosterBoardUI
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:25569];
}

- (void)pruis_setLockPosterLiveFloatingLayerRenderID:()PosterBoardUI
{
  otherSettings = [self otherSettings];
  if (a3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
    [otherSettings setObject:v4 forSetting:25567];
  }

  else
  {
    [otherSettings setObject:0 forSetting:25567];
  }
}

- (void)pruis_setLockPosterLiveFloatingLayerContextID:()PosterBoardUI
{
  otherSettings = [self otherSettings];
  if (a3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3];
    [otherSettings setObject:v4 forSetting:25568];
  }

  else
  {
    [otherSettings setObject:0 forSetting:25568];
  }
}

- (void)pruis_setLockPosterComplicationRowHidden:()PosterBoardUI
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:25570];
}

- (void)pruis_setLeadingTopButtonFrame:()PosterBoardUI
{
  otherSettings = [self otherSettings];
  *v11 = a2;
  *&v11[1] = a3;
  *&v11[2] = a4;
  *&v11[3] = a5;
  v10 = [MEMORY[0x1E696B098] valueWithBytes:v11 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [otherSettings setObject:v10 forSetting:25571];
}

- (void)pruis_setTrailingTopButtonFrame:()PosterBoardUI
{
  otherSettings = [self otherSettings];
  *v11 = a2;
  *&v11[1] = a3;
  *&v11[2] = a4;
  *&v11[3] = a5;
  v10 = [MEMORY[0x1E696B098] valueWithBytes:v11 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [otherSettings setObject:v10 forSetting:25572];
}

- (void)pruis_setLockVibrancyConfiguration:()PosterBoardUI
{
  v4 = a3;
  otherSettings = [self otherSettings];
  [otherSettings setObject:v4 forSetting:25573];
}

- (void)pruis_setTitleAdaptiveTextHeight:()PosterBoardUI
{
  otherSettings = [self otherSettings];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
  [otherSettings setObject:v3 forSetting:25574];
}

@end