@interface SBApplicationSceneBackgroundView
- (BOOL)_isTranslucent;
- (NSString)description;
- (SBApplicationSceneBackgroundView)initWithFrame:(CGRect)frame;
- (_BYTE)_opaqueBackgroundColor;
- (_BYTE)_opaqueBackgroundColorOrClearColor;
- (void)_backgroundWallpaperEffectView;
- (void)_setupBackground;
- (void)_setupBackgroundWithAnimationSettings:(uint64_t)settings;
- (void)_teardownBackgroundWallpaperEffectView;
- (void)setFullscreen:(BOOL)fullscreen;
- (void)setNeedsClassicModeBackground:(BOOL)background;
- (void)setShouldUseBrightMaterial:(BOOL)material;
- (void)setTransformOptions:(unint64_t)options;
- (void)setWallpaperStyle:(int64_t)style;
- (void)setWallpaperStyle:(int64_t)style withAnimationSettings:(id)settings;
@end

@implementation SBApplicationSceneBackgroundView

- (void)_setupBackground
{
  if (self && self->_wallpaperStyle != 1)
  {
    _backgroundWallpaperEffectView = [(SBApplicationSceneBackgroundView *)self _backgroundWallpaperEffectView];
    [_backgroundWallpaperEffectView setWallpaperStyle:self->_wallpaperStyle];
    [_backgroundWallpaperEffectView setForcesOpaque:1];
    [(SBApplicationSceneBackgroundView *)self bounds];
    [_backgroundWallpaperEffectView setFrame:?];
    [_backgroundWallpaperEffectView setFullscreen:self->_fullscreen];
    [(SBApplicationSceneBackgroundView *)self addSubview:_backgroundWallpaperEffectView];
    selfCopy2 = self;
    _opaqueBackgroundColorOrClearColor = 0;
  }

  else
  {
    [(SBApplicationSceneBackgroundView *)self _teardownBackgroundWallpaperEffectView];
    _opaqueBackgroundColorOrClearColor = [(SBApplicationSceneBackgroundView *)self _opaqueBackgroundColorOrClearColor];
    selfCopy2 = self;
    _backgroundWallpaperEffectView = _opaqueBackgroundColorOrClearColor;
  }

  [(SBApplicationSceneBackgroundView *)selfCopy2 setBackgroundColor:_opaqueBackgroundColorOrClearColor];
}

- (void)_teardownBackgroundWallpaperEffectView
{
  if (self)
  {
    [*(self + 416) removeFromSuperview];
    v2 = *(self + 416);
    *(self + 416) = 0;
  }
}

- (_BYTE)_opaqueBackgroundColorOrClearColor
{
  if (self)
  {
    if (self[424])
    {
      [(SBApplicationSceneBackgroundView *)self _opaqueBackgroundColor];
    }

    else
    {
      [MEMORY[0x277D75348] clearColor];
    }
    self = ;
    v1 = vars8;
  }

  return self;
}

- (void)_backgroundWallpaperEffectView
{
  if (self)
  {
    selfCopy = self;
    v3 = self[52];
    if (!v3)
    {
      v4 = [[SBWallpaperEffectView alloc] initWithWallpaperVariant:1 transformOptions:self[54]];
      v5 = selfCopy[52];
      selfCopy[52] = v4;

      [selfCopy[52] setAutoresizingMask:18];
      v3 = selfCopy[52];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (SBApplicationSceneBackgroundView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = SBApplicationSceneBackgroundView;
  result = [(SBApplicationSceneBackgroundView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  appendSuper = [v3 appendSuper];
  build = [v3 build];

  return build;
}

- (void)setWallpaperStyle:(int64_t)style
{
  if (self->_wallpaperStyle != style)
  {
    self->_wallpaperStyle = style;
    [(SBApplicationSceneBackgroundView *)self _setupBackground];
  }
}

- (void)setWallpaperStyle:(int64_t)style withAnimationSettings:(id)settings
{
  if (self->_wallpaperStyle != style)
  {
    self->_wallpaperStyle = style;
    [(SBApplicationSceneBackgroundView *)self _setupBackgroundWithAnimationSettings:settings];
  }
}

- (void)setNeedsClassicModeBackground:(BOOL)background
{
  if (self->_needsClassicModeBackground != background)
  {
    self->_needsClassicModeBackground = background;
    [(SBApplicationSceneBackgroundView *)self _setupBackground];
  }
}

- (void)setFullscreen:(BOOL)fullscreen
{
  if (self->_fullscreen != fullscreen)
  {
    self->_fullscreen = fullscreen;
    [(SBApplicationSceneBackgroundView *)self _setupBackground];
  }
}

- (void)setTransformOptions:(unint64_t)options
{
  if (self->_transformOptions != options)
  {
    self->_transformOptions = options | 0x20;
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

- (void)setShouldUseBrightMaterial:(BOOL)material
{
  if (self->_shouldUseBrightMaterial != material)
  {
    self->_shouldUseBrightMaterial = material;
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

- (void)_setupBackgroundWithAnimationSettings:(uint64_t)settings
{
  v3 = a2;
  if (settings)
  {
    [settings bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = *(settings + 416);
    v13 = *(settings + 416);
    *(settings + 416) = 0;

    v14 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v7, v9, v11}];
    v15 = MEMORY[0x277D75D18];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __74__SBApplicationSceneBackgroundView__setupBackgroundWithAnimationSettings___block_invoke;
    v44[3] = &unk_2783A92D8;
    v16 = v14;
    v45 = v16;
    settingsCopy = settings;
    [v15 performWithoutAnimation:v44];
    if (*(settings + 408) == 1)
    {
      v17 = MEMORY[0x277CF0D38];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __74__SBApplicationSceneBackgroundView__setupBackgroundWithAnimationSettings___block_invoke_5;
      v28[3] = &unk_2783A92D8;
      v29 = v12;
      settingsCopy2 = settings;
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
      _backgroundWallpaperEffectView = [(SBApplicationSceneBackgroundView *)settings _backgroundWallpaperEffectView];
      v21 = MEMORY[0x277D75D18];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __74__SBApplicationSceneBackgroundView__setupBackgroundWithAnimationSettings___block_invoke_2;
      v37[3] = &unk_2783AAFD0;
      v22 = _backgroundWallpaperEffectView;
      v38 = v22;
      settingsCopy3 = settings;
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
      settingsCopy4 = settings;
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
  if (self)
  {
    if (self[426])
    {
      [MEMORY[0x277D75348] systemMidGrayColor];
    }

    else
    {
      [MEMORY[0x277D75348] blackColor];
    }
    self = ;
    v1 = vars8;
  }

  return self;
}

void __74__SBApplicationSceneBackgroundView__setupBackgroundWithAnimationSettings___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);
  v3 = [(SBApplicationSceneBackgroundView *)v2 _opaqueBackgroundColorOrClearColor];
  [v2 setBackgroundColor:v3];
}

@end