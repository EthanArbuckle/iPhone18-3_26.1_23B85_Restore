@interface FBSMutableSceneClientSettings(PosterBoardUI)
- (void)pruis_setPrimaryPosterOffset:()PosterBoardUI;
- (void)pruis_setPrimaryPosterScale:()PosterBoardUI;
- (void)pruis_setSwitcherContextID:()PosterBoardUI;
- (void)pruis_setSwitcherLayoutMode:()PosterBoardUI;
@end

@implementation FBSMutableSceneClientSettings(PosterBoardUI)

- (void)pruis_setSwitcherLayoutMode:()PosterBoardUI
{
  otherSettings = [self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [otherSettings setObject:v4 forSetting:25612];
}

- (void)pruis_setSwitcherContextID:()PosterBoardUI
{
  otherSettings = [self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3];
  [otherSettings setObject:v4 forSetting:25613];
}

- (void)pruis_setPrimaryPosterScale:()PosterBoardUI
{
  otherSettings = [self otherSettings];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
  [otherSettings setObject:v3 forSetting:25614];
}

- (void)pruis_setPrimaryPosterOffset:()PosterBoardUI
{
  otherSettings = [self otherSettings];
  *v7 = a2;
  *&v7[1] = a3;
  v6 = [MEMORY[0x1E696B098] valueWithBytes:v7 objCType:"{CGPoint=dd}"];
  [otherSettings setObject:v6 forSetting:25615];
}

@end