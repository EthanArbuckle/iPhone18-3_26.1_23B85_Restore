@interface PLWallpaperButton
+ (id)autoLayoutCommonWallpaperButtonWithStyle:(int64_t)style;
- (PLWallpaperButton)initWithFrame:(CGRect)frame style:(int64_t)style;
- (void)_setupBackdropView;
- (void)_updateContentEdgeInsets;
- (void)backdropViewDidChange:(id)change;
- (void)dealloc;
- (void)safeAreaInsetsDidChange;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
@end

@implementation PLWallpaperButton

- (void)backdropViewDidChange:(id)change
{
  v4 = [objc_msgSend(change "outputSettings")];

  [(PLWallpaperButton *)self setTitleColor:v4 forState:0];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  backdropView = [(PLWallpaperButton *)self backdropView];
  inputSettings = [(_UIBackdropView *)backdropView inputSettings];
  outputSettings = [(_UIBackdropView *)backdropView outputSettings];
  v8.receiver = self;
  v8.super_class = PLWallpaperButton;
  [(PLWallpaperButton *)&v8 setEnabled:enabledCopy];
  [inputSettings restoreDefaultValues];
  [inputSettings setEnabled:{-[PLWallpaperButton isEnabled](self, "isEnabled")}];
  [outputSettings computeOutputSettingsUsingModel:inputSettings];
  [(_UIBackdropView *)backdropView applySettings:outputSettings];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  backdropView = [(PLWallpaperButton *)self backdropView];
  inputSettings = [(_UIBackdropView *)backdropView inputSettings];
  outputSettings = [(_UIBackdropView *)backdropView outputSettings];
  v8.receiver = self;
  v8.super_class = PLWallpaperButton;
  [(PLWallpaperButton *)&v8 setSelected:selectedCopy];
  [inputSettings restoreDefaultValues];
  [inputSettings setSelected:{-[PLWallpaperButton isSelected](self, "isSelected")}];
  [outputSettings computeOutputSettingsUsingModel:inputSettings];
  [(_UIBackdropView *)backdropView applySettings:outputSettings];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  backdropView = [(PLWallpaperButton *)self backdropView];
  inputSettings = [(_UIBackdropView *)backdropView inputSettings];
  outputSettings = [(_UIBackdropView *)backdropView outputSettings];
  v8.receiver = self;
  v8.super_class = PLWallpaperButton;
  [(PLWallpaperButton *)&v8 setHighlighted:highlightedCopy];
  [inputSettings restoreDefaultValues];
  [inputSettings setHighlighted:{-[PLWallpaperButton isHighlighted](self, "isHighlighted")}];
  [outputSettings computeOutputSettingsUsingModel:inputSettings];
  [(_UIBackdropView *)backdropView applySettings:outputSettings];
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

- (PLWallpaperButton)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v8.receiver = self;
  v8.super_class = PLWallpaperButton;
  v5 = [(PLWallpaperButton *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [(PLWallpaperButton *)v5 setOpaque:0];
    if (!style)
    {
      [(PLWallpaperButton *)v6 _setupBackdropView];
    }

    [(PLWallpaperButton *)v6 _updateContentEdgeInsets];
  }

  return v6;
}

+ (id)autoLayoutCommonWallpaperButtonWithStyle:(int64_t)style
{
  v4 = [PLWallpaperButton alloc];
  v5 = [(PLWallpaperButton *)v4 initWithFrame:style style:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(PLWallpaperButton *)v5 setExclusiveTouch:1];
  [(PLWallpaperButton *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v6) = 1144750080;
  [(PLWallpaperButton *)v5 setContentCompressionResistancePriority:0 forAxis:v6];
  LODWORD(v7) = 1132068864;
  [(PLWallpaperButton *)v5 setContentHuggingPriority:0 forAxis:v7];
  return v5;
}

@end