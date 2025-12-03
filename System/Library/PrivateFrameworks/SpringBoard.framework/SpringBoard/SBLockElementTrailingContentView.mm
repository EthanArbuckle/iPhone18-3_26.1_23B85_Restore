@interface SBLockElementTrailingContentView
- (SBLockElementTrailingContentView)initWithFrame:(CGRect)frame;
- (id)_assetStateStringForState:(int64_t)state;
- (int64_t)_proudLockStateForAssetState:(int64_t)state;
- (void)_configureSubviews;
- (void)layoutSubviews;
- (void)setIsForCapture:(BOOL)capture;
- (void)setIsSecurelyRenderingInJindo:(BOOL)jindo;
- (void)setState:(int64_t)state animated:(BOOL)animated completion:(id)completion;
@end

@implementation SBLockElementTrailingContentView

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = SBLockElementTrailingContentView;
  [(SBLockElementTrailingContentView *)&v11 layoutSubviews];
  [(SBLockElementTrailingContentView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SBUIProudLockIconView *)self->_pearlIndicatorLockView setFrame:?];
  [(BSUICAPackageView *)self->_pearlPackageView setFrame:v4, v6, v8, v10];
  [(SBUIProudLockIconView *)self->_pearlIndicatorLockView setOverrideSize:v8 offset:v10 extent:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), 17.3333333];
}

- (SBLockElementTrailingContentView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SBLockElementTrailingContentView;
  v3 = [(SBLockElementTrailingContentView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_isForCapture = 0;
    v3->_isSecurelyRenderingInJindo = 0;
    [(SBLockElementTrailingContentView *)v3 _configureSubviews];
    [(SBLockElementTrailingContentView *)v4 setState:-1 animated:0];
  }

  return v4;
}

- (void)_configureSubviews
{
  if (self->_isForCapture)
  {
    v3 = 0;
LABEL_4:
    isSecurelyRenderingInJindo = 0;
    goto LABEL_6;
  }

  v3 = SBUIAllowsIndicatorSecureRendering();
  if (self->_isForCapture)
  {
    goto LABEL_4;
  }

  isSecurelyRenderingInJindo = self->_isSecurelyRenderingInJindo;
LABEL_6:
  p_pearlPackageView = &self->_pearlPackageView;
  [(BSUICAPackageView *)self->_pearlPackageView removeFromSuperview];
  p_pearlIndicatorLockView = &self->_pearlIndicatorLockView;
  [(SBUIProudLockIconView *)self->_pearlIndicatorLockView removeFromSuperview];
  if (v3)
  {
    v7 = objc_alloc_init(MEMORY[0x277D67D88]);
    v8 = *p_pearlIndicatorLockView;
    *p_pearlIndicatorLockView = v7;

    v9 = *p_pearlPackageView;
    *p_pearlPackageView = 0;
  }

  else
  {
    if (isSecurelyRenderingInJindo)
    {
      return;
    }

    v10 = *p_pearlIndicatorLockView;
    *p_pearlIndicatorLockView = 0;

    v11 = objc_alloc(MEMORY[0x277CF0D48]);
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 initWithPackageName:@"FaceID-Trailing" inBundle:v9];
    v13 = *p_pearlPackageView;
    *p_pearlPackageView = v12;

    p_pearlIndicatorLockView = &self->_pearlPackageView;
  }

  v14 = *p_pearlIndicatorLockView;

  [(SBLockElementTrailingContentView *)self addSubview:v14];
}

- (void)setIsForCapture:(BOOL)capture
{
  if (self->_isForCapture != capture)
  {
    self->_isForCapture = capture;
    [(SBLockElementTrailingContentView *)self _configureSubviews];
  }
}

- (void)setIsSecurelyRenderingInJindo:(BOOL)jindo
{
  if (self->_isSecurelyRenderingInJindo != jindo)
  {
    self->_isSecurelyRenderingInJindo = jindo;
    [(SBLockElementTrailingContentView *)self _configureSubviews];
  }
}

- (void)setState:(int64_t)state animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if (self->_state == state)
  {
    if (!completionCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_3;
  }

  v14 = completionCopy;
  self->_state = state;
  if (state == 1)
  {
    pearlPackageView = self->_pearlPackageView;
    v10 = [(SBLockElementTrailingContentView *)self _assetStateStringForState:0];
    [(BSUICAPackageView *)pearlPackageView setState:v10 animated:0];
  }

  v11 = self->_pearlPackageView;
  v12 = [(SBLockElementTrailingContentView *)self _assetStateStringForState:state];
  [(BSUICAPackageView *)v11 setState:v12 animated:animatedCopy transitionSpeed:v14 completion:1.0];

  [(SBUIProudLockIconView *)self->_pearlIndicatorLockView setState:[(SBLockElementTrailingContentView *)self _proudLockStateForAssetState:state] animated:animatedCopy completion:v14];
  completionCopy = v14;
  if (v14 && !self->_pearlPackageView && !self->_pearlIndicatorLockView)
  {
LABEL_3:
    v13 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 1);
    completionCopy = v13;
  }

LABEL_9:
}

- (id)_assetStateStringForState:(int64_t)state
{
  v3 = @"failed";
  if (state == -1)
  {
    v3 = @"success";
  }

  if (state)
  {
    return v3;
  }

  else
  {
    return @"Faceid";
  }
}

- (int64_t)_proudLockStateForAssetState:(int64_t)state
{
  v3 = 7;
  if (state == -1)
  {
    v3 = 4;
  }

  if (state)
  {
    return v3;
  }

  else
  {
    return 5;
  }
}

@end