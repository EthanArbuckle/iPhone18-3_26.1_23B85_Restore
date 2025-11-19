@interface PLWallpaperButton
+ (id)autoLayoutCommonWallpaperButtonWithStyle:(int64_t)a3;
- (PLWallpaperButton)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (void)_setupBackdropView;
- (void)_updateContentEdgeInsets;
- (void)backdropViewDidChange:(id)a3;
- (void)dealloc;
- (void)safeAreaInsetsDidChange;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation PLWallpaperButton

- (void)backdropViewDidChange:(id)a3
{
  v4 = [objc_msgSend(a3 "outputSettings")];

  [(PLWallpaperButton *)self setTitleColor:v4 forState:0];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(PLWallpaperButton *)self backdropView];
  v6 = [(_UIBackdropView *)v5 inputSettings];
  v7 = [(_UIBackdropView *)v5 outputSettings];
  v8.receiver = self;
  v8.super_class = PLWallpaperButton;
  [(PLWallpaperButton *)&v8 setEnabled:v3];
  [v6 restoreDefaultValues];
  [v6 setEnabled:{-[PLWallpaperButton isEnabled](self, "isEnabled")}];
  [v7 computeOutputSettingsUsingModel:v6];
  [(_UIBackdropView *)v5 applySettings:v7];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5 = [(PLWallpaperButton *)self backdropView];
  v6 = [(_UIBackdropView *)v5 inputSettings];
  v7 = [(_UIBackdropView *)v5 outputSettings];
  v8.receiver = self;
  v8.super_class = PLWallpaperButton;
  [(PLWallpaperButton *)&v8 setSelected:v3];
  [v6 restoreDefaultValues];
  [v6 setSelected:{-[PLWallpaperButton isSelected](self, "isSelected")}];
  [v7 computeOutputSettingsUsingModel:v6];
  [(_UIBackdropView *)v5 applySettings:v7];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(PLWallpaperButton *)self backdropView];
  v6 = [(_UIBackdropView *)v5 inputSettings];
  v7 = [(_UIBackdropView *)v5 outputSettings];
  v8.receiver = self;
  v8.super_class = PLWallpaperButton;
  [(PLWallpaperButton *)&v8 setHighlighted:v3];
  [v6 restoreDefaultValues];
  [v6 setHighlighted:{-[PLWallpaperButton isHighlighted](self, "isHighlighted")}];
  [v7 computeOutputSettingsUsingModel:v6];
  [(_UIBackdropView *)v5 applySettings:v7];
}

- (void)_setupBackdropView
{
  v3 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2010];
  self->_backdropView = v3;
  [(_UIBackdropView *)v3 addObserver:self];
  [(PLWallpaperButton *)self addSubview:self->_backdropView];
  [(_UIBackdropView *)self->_backdropView setUserInteractionEnabled:0];
  [(_UIBackdropView *)self->_backdropView setAppliesOutputSettingsAnimationDuration:0.0];
  [(PLWallpaperButton *)self sendSubviewToBack:self->_backdropView];
  backdropView = self->_backdropView;

  [(PLWallpaperButton *)self backdropViewDidChange:backdropView];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PLWallpaperButton;
  [(PLWallpaperButton *)&v3 dealloc];
}

- (void)_updateContentEdgeInsets
{
  [(PLWallpaperButton *)self safeAreaInsets];

  [(PLWallpaperButton *)self setContentEdgeInsets:?];
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = PLWallpaperButton;
  [(PLWallpaperButton *)&v3 safeAreaInsetsDidChange];
  [(PLWallpaperButton *)self _updateContentEdgeInsets];
}

- (PLWallpaperButton)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = PLWallpaperButton;
  v5 = [(PLWallpaperButton *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    [(PLWallpaperButton *)v5 setOpaque:0];
    if (!a4)
    {
      [(PLWallpaperButton *)v6 _setupBackdropView];
    }

    [(PLWallpaperButton *)v6 _updateContentEdgeInsets];
  }

  return v6;
}

+ (id)autoLayoutCommonWallpaperButtonWithStyle:(int64_t)a3
{
  v4 = [PLWallpaperButton alloc];
  v5 = [(PLWallpaperButton *)v4 initWithFrame:a3 style:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(PLWallpaperButton *)v5 setExclusiveTouch:1];
  [(PLWallpaperButton *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v6) = 1144750080;
  [(PLWallpaperButton *)v5 setContentCompressionResistancePriority:0 forAxis:v6];
  LODWORD(v7) = 1132068864;
  [(PLWallpaperButton *)v5 setContentHuggingPriority:0 forAxis:v7];
  return v5;
}

@end