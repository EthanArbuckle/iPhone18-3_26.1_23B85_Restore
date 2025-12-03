@interface SPUIHeaderBlurView
- (SPUIHeaderBlurView)init;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)setKeyboardIsUp:(BOOL)up;
- (void)setTintColor:(id)color;
- (void)setUseInPlaceFilteredBlur:(BOOL)blur;
- (void)updateEffect;
@end

@implementation SPUIHeaderBlurView

- (SPUIHeaderBlurView)init
{
  v9.receiver = self;
  v9.super_class = SPUIHeaderBlurView;
  v2 = [(SPUIHeaderBlurView *)&v9 init];
  if (v2)
  {
    if ([MEMORY[0x277D65D28] bottomSearchFieldEnabled])
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v2 selector:sel_keyboardWillShow name:*MEMORY[0x277D76C60] object:0];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:v2 selector:sel_keyboardWillHide name:*MEMORY[0x277D76C50] object:0];

      defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter3 addObserver:v2 selector:sel_updateEffect name:*MEMORY[0x277D764C8] object:0];

      [(SPUIHeaderBlurView *)v2 setKeyboardIsUp:1];
      if (_UISolariumEnabled())
      {
        contentView = [(SPUIHeaderBlurView *)v2 contentView];
        [SPUIViewUtilities setGlassForView:contentView style:1];
      }
    }

    else
    {
      [(SPUIHeaderBlurView *)v2 updateEffect];
    }

    contentView2 = [(SPUIHeaderBlurView *)v2 contentView];
    [contentView2 setAlpha:1.0];
  }

  return v2;
}

- (void)updateEffect
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (!_UISolariumEnabled())
  {
    if (UIAccessibilityIsReduceTransparencyEnabled())
    {
      v4 = MEMORY[0x277D75358];
      darkGrayColor = [MEMORY[0x277D75348] darkGrayColor];
      v6 = [v4 colorEffectColor:darkGrayColor];
      v22[0] = v6;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
      [(SPUIHeaderBlurView *)self setBackgroundEffects:v7];

      selfCopy2 = self;
      v9 = 0;
    }

    else
    {
      if ([MEMORY[0x277D65D28] bottomSearchFieldEnabled])
      {
        v10 = objc_opt_new();
        v11 = [MEMORY[0x277D75210] _effectWithBlurRadius:30.0 scale:0.1];
        [v10 addObject:v11];

        v12 = [MEMORY[0x277D75358] colorEffectSaturate:1.6];
        v21[0] = v12;
        v13 = [MEMORY[0x277D75358] colorEffectBrightness:0.15];
        v21[1] = v13;
        v14 = [MEMORY[0x277D75358] colorEffectLuminanceCurveMap:&unk_287C4F848 blendingAmount:0.5];
        v21[2] = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
        [v10 addObjectsFromArray:v15];

        [(SPUIHeaderBlurView *)self setBackgroundEffects:v10];
LABEL_11:
        v19 = *MEMORY[0x277D85DE8];
        return;
      }

      v16 = [MEMORY[0x277D75210] effectWithBlurRadius:22.5];
      v20[0] = v16;
      v17 = [MEMORY[0x277D75358] colorEffectSaturate:1.3];
      v20[1] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
      [(SPUIHeaderBlurView *)self setBackgroundEffects:v18];

      v9 = @"SPUIHeaderBlurView";
      selfCopy2 = self;
    }

    [(SPUIHeaderBlurView *)selfCopy2 _setGroupName:v9];
    goto LABEL_11;
  }

  [(SPUIHeaderBlurView *)self setBackgroundEffects:MEMORY[0x277CBEBF8]];
  v3 = *MEMORY[0x277D85DE8];

  [(SPUIHeaderBlurView *)self _setGroupName:0];
}

- (void)setKeyboardIsUp:(BOOL)up
{
  if (self->_keyboardIsUp != up)
  {
    self->_keyboardIsUp = up;
    [(SPUIHeaderBlurView *)self updateEffect];
  }
}

- (void)setUseInPlaceFilteredBlur:(BOOL)blur
{
  if (self->_useInPlaceFilteredBlur != blur)
  {
    self->_useInPlaceFilteredBlur = blur;
    [(SPUIHeaderBlurView *)self updateEffect];
  }
}

- (void)setTintColor:(id)color
{
  v4.receiver = self;
  v4.super_class = SPUIHeaderBlurView;
  [(SPUIHeaderBlurView *)&v4 setTintColor:color];
  [(SPUIHeaderBlurView *)self updateEffect];
}

- (void)_setContinuousCornerRadius:(double)radius
{
  v6.receiver = self;
  v6.super_class = SPUIHeaderBlurView;
  [(SPUIHeaderBlurView *)&v6 _setContinuousCornerRadius:?];
  contentView = [(SPUIHeaderBlurView *)self contentView];
  [contentView _setContinuousCornerRadius:radius];
}

@end