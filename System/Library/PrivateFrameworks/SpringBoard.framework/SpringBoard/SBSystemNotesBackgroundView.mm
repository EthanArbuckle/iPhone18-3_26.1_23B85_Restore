@interface SBSystemNotesBackgroundView
- (SBSystemNotesBackgroundView)initWithFrame:(CGRect)a3;
- (id)_backgroundColorFromSettings:(id)a3;
- (void)_updateTintView;
- (void)dealloc;
@end

@implementation SBSystemNotesBackgroundView

- (SBSystemNotesBackgroundView)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = SBSystemNotesBackgroundView;
  v3 = [(SBSystemNotesBackgroundView *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[SBSystemNotesSettingsDomain rootSettings];
    v5 = [v4 appearanceSettings];
    appearanceSettings = v3->_appearanceSettings;
    v3->_appearanceSettings = v5;

    [(PTSettings *)v3->_appearanceSettings addKeyObserver:v3];
    [(SBSystemNotesBackgroundView *)v3 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v7, v9, v11, v13}];
    tintView = v3->_tintView;
    v3->_tintView = v15;

    [(SBSystemNotesBackgroundView *)v3 _updateTintView];
    [(SBSystemNotesBackgroundView *)v3 addSubview:v3->_tintView];
    v17 = [MEMORY[0x277D75210] effectWithStyle:7];
    v18 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v17];
    backgroundEffectView = v3->_backgroundEffectView;
    v3->_backgroundEffectView = v18;

    [(UIVisualEffectView *)v3->_backgroundEffectView setFrame:v8, v10, v12, v14];
    [(UIVisualEffectView *)v3->_backgroundEffectView setAutoresizingMask:18];
    [(SBSystemNotesBackgroundView *)v3 addSubview:v3->_backgroundEffectView];
  }

  return v3;
}

- (void)_updateTintView
{
  tintView = self->_tintView;
  v3 = [(SBSystemNotesBackgroundView *)self _backgroundColorFromSettings:self->_appearanceSettings];
  [(UIView *)tintView setBackgroundColor:v3];
}

- (id)_backgroundColorFromSettings:(id)a3
{
  v3 = MEMORY[0x277D75348];
  v4 = a3;
  [v4 platterTintRed];
  v6 = v5;
  [v4 platterTintGreen];
  v8 = v7;
  [v4 platterTintBlue];
  v10 = v9;
  [v4 platterTintAlpha];
  v12 = v11;

  return [v3 colorWithRed:v6 green:v8 blue:v10 alpha:v12];
}

- (void)dealloc
{
  [(PTSettings *)self->_appearanceSettings removeKeyObserver:self];
  v3.receiver = self;
  v3.super_class = SBSystemNotesBackgroundView;
  [(SBSystemNotesBackgroundView *)&v3 dealloc];
}

@end