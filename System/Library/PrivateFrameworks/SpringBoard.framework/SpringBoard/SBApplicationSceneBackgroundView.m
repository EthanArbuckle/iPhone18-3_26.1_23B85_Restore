@interface SBApplicationSceneBackgroundView
- (BOOL)_isTranslucent;
- (NSString)description;
- (SBApplicationSceneBackgroundView)initWithFrame:(CGRect)a3;
- (_BYTE)_opaqueBackgroundColor;
- (_BYTE)_opaqueBackgroundColorOrClearColor;
- (void)_backgroundWallpaperEffectView;
- (void)_setupBackground;
- (void)_setupBackgroundWithAnimationSettings:(uint64_t)a1;
- (void)_teardownBackgroundWallpaperEffectView;
- (void)setFullscreen:(BOOL)a3;
- (void)setNeedsClassicModeBackground:(BOOL)a3;
- (void)setShouldUseBrightMaterial:(BOOL)a3;
- (void)setTransformOptions:(unint64_t)a3;
- (void)setWallpaperStyle:(int64_t)a3;
- (void)setWallpaperStyle:(int64_t)a3 withAnimationSettings:(id)a4;
@end

@implementation SBApplicationSceneBackgroundView

- (void)_setupBackground
{
  if (self && self->_wallpaperStyle != 1)
  {
    v5 = [(SBApplicationSceneBackgroundView *)self _backgroundWallpaperEffectView];
    [v5 setWallpaperStyle:self->_wallpaperStyle];
    [v5 setForcesOpaque:1];
    [(SBApplicationSceneBackgroundView *)self bounds];
    [v5 setFrame:?];
    [v5 setFullscreen:self->_fullscreen];
    [(SBApplicationSceneBackgroundView *)self addSubview:v5];
    v4 = self;
    v3 = 0;
  }

  else
  {
    [(SBApplicationSceneBackgroundView *)self _teardownBackgroundWallpaperEffectView];
    v3 = [(SBApplicationSceneBackgroundView *)self _opaqueBackgroundColorOrClearColor];
    v4 = self;
    v5 = v3;
  }

  [(SBApplicationSceneBackgroundView *)v4 setBackgroundColor:v3];
}

- (void)_teardownBackgroundWallpaperEffectView
{
  if (a1)
  {
    [*(a1 + 416) removeFromSuperview];
    v2 = *(a1 + 416);
    *(a1 + 416) = 0;
  }
}

- (_BYTE)_opaqueBackgroundColorOrClearColor
{
  if (a1)
  {
    if (a1[424])
    {
      [(SBApplicationSceneBackgroundView *)a1 _opaqueBackgroundColor];
    }

    else
    {
      [MEMORY[0x277D75348] clearColor];
    }
    a1 = ;
    v1 = vars8;
  }

  return a1;
}

- (void)_backgroundWallpaperEffectView
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[52];
    if (!v3)
    {
      v4 = [[SBWallpaperEffectView alloc] initWithWallpaperVariant:1 transformOptions:a1[54]];
      v5 = v2[52];
      v2[52] = v4;

      [v2[52] setAutoresizingMask:18];
      v3 = v2[52];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (SBApplicationSceneBackgroundView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = SBApplicationSceneBackgroundView;
  result = [(SBApplicationSceneBackgroundView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_wallpaperStyle = -1;
    result->_transformOptions = 33;
  }

  return result;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = PBUIWallpaperStyleDescription();
  v5 = [v3 appendObject:v4 withName:@"wallpaperStyle"];

  v6 = [v3 appendBool:self->_wallpaperStyle != 1 withName:@"_isTranslucent"];
  v7 = [v3 appendSuper];
  v8 = [v3 build];

  return v8;
}

- (void)setWallpaperStyle:(int64_t)a3
{
  if (self->_wallpaperStyle != a3)
  {
    self->_wallpaperStyle = a3;
    [(SBApplicationSceneBackgroundView *)self _setupBackground];
  }
}

- (void)setWallpaperStyle:(int64_t)a3 withAnimationSettings:(id)a4
{
  if (self->_wallpaperStyle != a3)
  {
    self->_wallpaperStyle = a3;
    [(SBApplicationSceneBackgroundView *)self _setupBackgroundWithAnimationSettings:a4];
  }
}

- (void)setNeedsClassicModeBackground:(BOOL)a3
{
  if (self->_needsClassicModeBackground != a3)
  {
    self->_needsClassicModeBackground = a3;
    [(SBApplicationSceneBackgroundView *)self _setupBackground];
  }
}

- (void)setFullscreen:(BOOL)a3
{
  if (self->_fullscreen != a3)
  {
    self->_fullscreen = a3;
    [(SBApplicationSceneBackgroundView *)self _setupBackground];
  }
}

- (void)setTransformOptions:(unint64_t)a3
{
  if (self->_transformOptions != a3)
  {
    self->_transformOptions = a3 | 0x20;
    [(PBUIWallpaperEffectViewBase *)self->_backgroundWallpaperEffectView setTransformOptions:?];
  }
}

uint64_t __74__SBApplicationSceneBackgroundView__setupBackgroundWithAnimationSettings___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [(SBApplicationSceneBackgroundView *)*(a1 + 40) _opaqueBackgroundColor];
  [v2 setBackgroundColor:v3];

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v4 insertSubview:v5 atIndex:0];
}

uint64_t __74__SBApplicationSceneBackgroundView__setupBackgroundWithAnimationSettings___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setWallpaperStyle:*(*(a1 + 40) + 408)];
  [*(a1 + 32) setForcesOpaque:1];
  [*(a1 + 32) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [*(a1 + 32) setFullscreen:*(*(a1 + 40) + 425)];
  [*(a1 + 40) addSubview:*(a1 + 32)];
  v2 = *(a1 + 32);

  return [v2 setAlpha:0.0];
}

uint64_t __74__SBApplicationSceneBackgroundView__setupBackgroundWithAnimationSettings___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setBackgroundColor:0];
}

uint64_t __74__SBApplicationSceneBackgroundView__setupBackgroundWithAnimationSettings___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);

  return [v2 removeFromSuperview];
}

uint64_t __74__SBApplicationSceneBackgroundView__setupBackgroundWithAnimationSettings___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);

  return [v2 removeFromSuperview];
}

- (void)setShouldUseBrightMaterial:(BOOL)a3
{
  if (self->_shouldUseBrightMaterial != a3)
  {
    self->_shouldUseBrightMaterial = a3;
    [(SBApplicationSceneBackgroundView *)self _setupBackground];
  }
}

- (BOOL)_isTranslucent
{
  if (result)
  {
    return *(result + 408) != 1;
  }

  return result;
}

- (void)_setupBackgroundWithAnimationSettings:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    [a1 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = *(a1 + 416);
    v13 = *(a1 + 416);
    *(a1 + 416) = 0;

    v14 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v7, v9, v11}];
    v15 = MEMORY[0x277D75D18];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __74__SBApplicationSceneBackgroundView__setupBackgroundWithAnimationSettings___block_invoke;
    v44[3] = &unk_2783A92D8;
    v16 = v14;
    v45 = v16;
    v46 = a1;
    [v15 performWithoutAnimation:v44];
    if (*(a1 + 408) == 1)
    {
      v17 = MEMORY[0x277CF0D38];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __74__SBApplicationSceneBackgroundView__setupBackgroundWithAnimationSettings___block_invoke_5;
      v28[3] = &unk_2783A92D8;
      v29 = v12;
      v30 = a1;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __74__SBApplicationSceneBackgroundView__setupBackgroundWithAnimationSettings___block_invoke_6;
      v25[3] = &unk_2783A8BF0;
      v26 = v29;
      v27 = v16;
      v18 = v16;
      [v17 animateWithSettings:v3 options:4 actions:v28 completion:v25];

      v19 = v29;
    }

    else
    {
      v20 = [(SBApplicationSceneBackgroundView *)a1 _backgroundWallpaperEffectView];
      v21 = MEMORY[0x277D75D18];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __74__SBApplicationSceneBackgroundView__setupBackgroundWithAnimationSettings___block_invoke_2;
      v37[3] = &unk_2783AAFD0;
      v22 = v20;
      v38 = v22;
      v39 = a1;
      v40 = v5;
      v41 = v7;
      v42 = v9;
      v43 = v11;
      [v21 performWithoutAnimation:v37];
      v23 = MEMORY[0x277CF0D38];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __74__SBApplicationSceneBackgroundView__setupBackgroundWithAnimationSettings___block_invoke_3;
      v34[3] = &unk_2783A92D8;
      v35 = v22;
      v36 = a1;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __74__SBApplicationSceneBackgroundView__setupBackgroundWithAnimationSettings___block_invoke_4;
      v31[3] = &unk_2783A8BF0;
      v32 = v12;
      v33 = v16;
      v24 = v16;
      v19 = v22;
      [v23 animateWithSettings:v3 options:4 actions:v34 completion:v31];
    }
  }
}

- (_BYTE)_opaqueBackgroundColor
{
  if (a1)
  {
    if (a1[426])
    {
      [MEMORY[0x277D75348] systemMidGrayColor];
    }

    else
    {
      [MEMORY[0x277D75348] blackColor];
    }
    a1 = ;
    v1 = vars8;
  }

  return a1;
}

void __74__SBApplicationSceneBackgroundView__setupBackgroundWithAnimationSettings___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);
  v3 = [(SBApplicationSceneBackgroundView *)v2 _opaqueBackgroundColorOrClearColor];
  [v2 setBackgroundColor:v3];
}

@end