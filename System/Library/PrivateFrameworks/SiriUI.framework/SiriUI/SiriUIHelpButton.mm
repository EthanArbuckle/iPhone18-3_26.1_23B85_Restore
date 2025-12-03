@interface SiriUIHelpButton
+ (SiriUIHelpButton)buttonWithHelpImageMask;
- (double)_targetAlpha;
- (void)pulse;
- (void)setEmphasized:(BOOL)emphasized;
@end

@implementation SiriUIHelpButton

+ (SiriUIHelpButton)buttonWithHelpImageMask
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  languageCode = [mEMORY[0x277CEF368] languageCode];
  v5 = [languageCode hasPrefix:@"he"];

  v6 = MEMORY[0x277D755B8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v6 imageNamed:@"helpglyph" inBundle:v7];

  if ((v5 & 1) == 0 && SiriLanguageIsRTL())
  {
    imageWithHorizontallyFlippedOrientation = [v8 imageWithHorizontallyFlippedOrientation];

    v8 = imageWithHorizontallyFlippedOrientation;
  }

  v10 = [self buttonWithImageMask:v8 style:0];

  return v10;
}

- (void)setEmphasized:(BOOL)emphasized
{
  if (self->_emphasized != emphasized)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_emphasized = emphasized;
    if (([(SiriUIHelpButton *)self isHighlighted]& 1) == 0)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __34__SiriUIHelpButton_setEmphasized___block_invoke;
      v7[3] = &unk_279C59D78;
      v7[4] = self;
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __34__SiriUIHelpButton_setEmphasized___block_invoke_2;
      v6[3] = &unk_279C59DF0;
      v6[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:2 delay:v7 options:v6 animations:0.6 completion:0.0];
    }
  }
}

uint64_t __34__SiriUIHelpButton_setEmphasized___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 _targetAlpha];

  return [v1 setAlpha:?];
}

- (void)pulse
{
  if (!self->_animatingEmphasis && ([(SiriUIHelpButton *)self isHighlighted]& 1) == 0)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __25__SiriUIHelpButton_pulse__block_invoke;
    v4[3] = &unk_279C59D78;
    v4[4] = self;
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __25__SiriUIHelpButton_pulse__block_invoke_2;
    v3[3] = &unk_279C59DF0;
    v3[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:2 delay:v4 options:v3 animations:0.6 completion:0.0];
  }
}

uint64_t __25__SiriUIHelpButton_pulse__block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __25__SiriUIHelpButton_pulse__block_invoke_3;
  v2[3] = &unk_279C59D78;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x277D75D18] animateWithDuration:2 delay:v2 options:0 animations:0.6 completion:0.0];
}

uint64_t __25__SiriUIHelpButton_pulse__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 _targetAlpha];

  return [v1 setAlpha:?];
}

- (double)_targetAlpha
{
  if (self->_emphasized)
  {
    [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] siriui_maskingColor];
  }
  v2 = ;
  v5 = 0x3FF0000000000000;
  v6 = 0x3FF0000000000000;
  [v2 getWhite:&v5 alpha:&v6];
  v3 = *&v6;

  return v3;
}

@end