@interface FBSMutableSceneClientSettings(PosterBoardUI)
- (void)pruis_setPrimaryPosterOffset:()PosterBoardUI;
- (void)pruis_setPrimaryPosterScale:()PosterBoardUI;
- (void)pruis_setSwitcherContextID:()PosterBoardUI;
- (void)pruis_setSwitcherLayoutMode:()PosterBoardUI;
@end

@implementation FBSMutableSceneClientSettings(PosterBoardUI)

- (void)pruis_setSwitcherLayoutMode:()PosterBoardUI
{
  v5 = [a1 otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:25612];
}

- (void)pruis_setSwitcherContextID:()PosterBoardUI
{
  v5 = [a1 otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3];
  [v5 setObject:v4 forSetting:25613];
}

- (void)pruis_setPrimaryPosterScale:()PosterBoardUI
{
  v4 = [a1 otherSettings];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
  [v4 setObject:v3 forSetting:25614];
}

- (void)pruis_setPrimaryPosterOffset:()PosterBoardUI
{
  v5 = [a1 otherSettings];
  *v7 = a2;
  *&v7[1] = a3;
  v6 = [MEMORY[0x1E696B098] valueWithBytes:v7 objCType:"{CGPoint=dd}"];
  [v5 setObject:v6 forSetting:25615];
}

@end