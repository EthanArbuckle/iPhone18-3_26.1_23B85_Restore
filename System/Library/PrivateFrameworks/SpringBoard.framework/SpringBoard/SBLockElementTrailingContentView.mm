@interface SBLockElementTrailingContentView
- (SBLockElementTrailingContentView)initWithFrame:(CGRect)a3;
- (id)_assetStateStringForState:(int64_t)a3;
- (int64_t)_proudLockStateForAssetState:(int64_t)a3;
- (void)_configureSubviews;
- (void)layoutSubviews;
- (void)setIsForCapture:(BOOL)a3;
- (void)setIsSecurelyRenderingInJindo:(BOOL)a3;
- (void)setState:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5;
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

- (SBLockElementTrailingContentView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SBLockElementTrailingContentView;
  v3 = [(SBLockElementTrailingContentView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setIsForCapture:(BOOL)a3
{
  if (self->_isForCapture != a3)
  {
    self->_isForCapture = a3;
    [(SBLockElementTrailingContentView *)self _configureSubviews];
  }
}

- (void)setIsSecurelyRenderingInJindo:(BOOL)a3
{
  if (self->_isSecurelyRenderingInJindo != a3)
  {
    self->_isSecurelyRenderingInJindo = a3;
    [(SBLockElementTrailingContentView *)self _configureSubviews];
  }
}

- (void)setState:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  if (self->_state == a3)
  {
    if (!v8)
    {
      goto LABEL_9;
    }

    goto LABEL_3;
  }

  v14 = v8;
  self->_state = a3;
  if (a3 == 1)
  {
    pearlPackageView = self->_pearlPackageView;
    v10 = [(SBLockElementTrailingContentView *)self _assetStateStringForState:0];
    [(BSUICAPackageView *)pearlPackageView setState:v10 animated:0];
  }

  v11 = self->_pearlPackageView;
  v12 = [(SBLockElementTrailingContentView *)self _assetStateStringForState:a3];
  [(BSUICAPackageView *)v11 setState:v12 animated:v5 transitionSpeed:v14 completion:1.0];

  [(SBUIProudLockIconView *)self->_pearlIndicatorLockView setState:[(SBLockElementTrailingContentView *)self _proudLockStateForAssetState:a3] animated:v5 completion:v14];
  v8 = v14;
  if (v14 && !self->_pearlPackageView && !self->_pearlIndicatorLockView)
  {
LABEL_3:
    v13 = v8;
    (*(v8 + 2))(v8, 1);
    v8 = v13;
  }

LABEL_9:
}

- (id)_assetStateStringForState:(int64_t)a3
{
  v3 = @"failed";
  if (a3 == -1)
  {
    v3 = @"success";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"Faceid";
  }
}

- (int64_t)_proudLockStateForAssetState:(int64_t)a3
{
  v3 = 7;
  if (a3 == -1)
  {
    v3 = 4;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 5;
  }
}

@end