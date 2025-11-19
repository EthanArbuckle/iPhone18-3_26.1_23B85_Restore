@interface SBPIPStashView
- (SBPIPStashView)initWithFrame:(CGRect)a3;
- (SBPIPStashView)initWithFrame:(CGRect)a3 settings:(id)a4;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)_updateSettingsDerivedValues;
- (void)dealloc;
- (void)layoutStashChevrons;
- (void)layoutSubviews;
- (void)setBlurProgress:(double)a3;
- (void)setChevronHidden:(BOOL)a3 left:(BOOL)a4;
@end

@implementation SBPIPStashView

- (SBPIPStashView)initWithFrame:(CGRect)a3 settings:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v12 = SBLogPIP();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(SBPIPStashView *)self initWithFrame:a2 settings:v12];
  }

  v44.receiver = self;
  v44.super_class = SBPIPStashView;
  v13 = [(SBPIPStashView *)&v44 initWithFrame:x, y, width, height];
  v14 = v13;
  if (v13)
  {
    v13->_chevronsHidden = 1;
    v43 = v11;
    objc_storeStrong(&v13->_settings, a4);
    [(PTSettings *)v14->_settings addKeyObserver:v14];
    [(SBPIPStashView *)v14 setAccessibilityIdentifier:@"PG-StashedView"];
    [(UIView *)v14 SBPIP_recursivelyDisallowGroupBlending];
    [(UIView *)v14 SBPIP_setAllowsEdgeAntialiasing:1];
    [(UIView *)v14 SBPIP_setAllowsGroupBlending:0];
    v15 = [SBPIPBackdropView alloc];
    v16 = *MEMORY[0x277CBF3A0];
    v17 = *(MEMORY[0x277CBF3A0] + 8);
    v18 = *(MEMORY[0x277CBF3A0] + 16);
    v19 = *(MEMORY[0x277CBF3A0] + 24);
    v20 = [(SBPIPBackdropView *)v15 initWithFrame:*MEMORY[0x277CBF3A0], v17, v18, v19];
    [(UIView *)v20 SBPIP_setAllowsEdgeAntialiasing:1];
    [(SBPIPBackdropView *)v20 setGaussianBlurRadius:0.0];
    v21 = [MEMORY[0x277CCAD78] UUID];
    v22 = [v21 UUIDString];
    [(SBPIPBackdropView *)v20 setGroupName:v22];

    [(SBPIPStashView *)v14 addSubview:v20];
    backdropView = v14->_backdropView;
    v14->_backdropView = v20;
    v42 = v20;

    v24 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v16, v17, v18, v19}];
    [(UIView *)v24 SBPIP_setAllowsEdgeAntialiasing:1];
    [(UIView *)v24 setAlpha:0.0];
    [(SBPIPStashView *)v14 addSubview:v24];
    darkTintView = v14->_darkTintView;
    v14->_darkTintView = v24;
    v41 = v24;

    v26 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v16, v17, v18, v19}];
    [(UIView *)v26 SBPIP_setAllowsEdgeAntialiasing:1];
    [(UIView *)v26 setAlpha:0.0];
    [(SBPIPStashView *)v14 addSubview:v26];
    lightTintView = v14->_lightTintView;
    v14->_lightTintView = v26;
    v28 = v26;

    v29 = [MEMORY[0x277D74300] systemFontOfSize:30.0 weight:*MEMORY[0x277D74420]];
    v30 = [MEMORY[0x277D755D0] configurationWithFont:v29];
    v31 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.compact.left" withConfiguration:v30];
    v32 = [v31 imageWithRenderingMode:2];

    v33 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v32];
    [(UIImageView *)v33 setAlpha:0.0];
    [(SBPIPStashView *)v14 addSubview:v33];
    leftChevron = v14->_leftChevron;
    v14->_leftChevron = v33;
    v35 = v33;

    v36 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.compact.right" withConfiguration:v30];
    v37 = [v36 imageWithRenderingMode:2];

    v38 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v37];
    [(UIImageView *)v38 setAlpha:0.0];
    [(SBPIPStashView *)v14 addSubview:v38];
    rightChevron = v14->_rightChevron;
    v14->_rightChevron = v38;
    v11 = v43;

    [(SBPIPStashView *)v14 _updateSettingsDerivedValues];
  }

  return v14;
}

- (SBPIPStashView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = +[SBPIPSettingsDomain rootSettings];
  v9 = [v8 stashVisualSettings];
  v10 = [(SBPIPStashView *)self initWithFrame:v9 settings:x, y, width, height];

  return v10;
}

- (void)dealloc
{
  [(PTSettings *)self->_settings removeKeyObserver:self];
  v3.receiver = self;
  v3.super_class = SBPIPStashView;
  [(SBPIPStashView *)&v3 dealloc];
}

- (void)_updateSettingsDerivedValues
{
  [(SBPIPStashVisualSettings *)self->_settings startBlurTransition];
  self->_startBlurThreshold = v3;
  [(SBPIPStashVisualSettings *)self->_settings completeBlurTransition];
  self->_completeBlurThreshold = v4;
  v5 = [(SBPIPStashVisualSettings *)self->_settings userInterfaceStyle];
  if (v5)
  {
    [(SBPIPStashView *)self setOverrideUserInterfaceStyle:v5];
  }

  v6 = [(SBPIPStashView *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  v17 = [(SBPIPStashVisualSettings *)self->_settings materialSettingsForUserInterfaceStyle:v7];
  darkTintView = self->_darkTintView;
  v9 = [v17 darkTintColor];
  [(UIView *)darkTintView setBackgroundColor:v9];

  lightTintView = self->_lightTintView;
  v11 = [v17 lightTintColor];
  [(UIView *)lightTintView setBackgroundColor:v11];

  leftChevron = self->_leftChevron;
  v13 = [v17 chevronTintColor];
  [(UIImageView *)leftChevron setTintColor:v13];

  rightChevron = self->_rightChevron;
  v15 = [v17 chevronTintColor];
  [(UIImageView *)rightChevron setTintColor:v15];

  v16 = [v17 chevronCompositingFilter];
  [(UIImageView *)self->_leftChevron SBPIP_updateVibrancyEffectForTintColorWithFilter:v16];
  [(UIImageView *)self->_rightChevron SBPIP_updateVibrancyEffectForTintColorWithFilter:v16];
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = SBPIPStashView;
  [(SBPIPStashView *)&v15 layoutSubviews];
  [(SBPIPStashView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SBPIPBackdropView *)self->_backdropView setBounds:?];
  [(UIView *)self->_lightTintView setBounds:v4, v6, v8, v10];
  [(UIView *)self->_darkTintView setBounds:v4, v6, v8, v10];
  backdropView = self->_backdropView;
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  MidX = CGRectGetMidX(v16);
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  [(SBPIPBackdropView *)backdropView setCenter:MidX, CGRectGetMidY(v17)];
  lightTintView = self->_lightTintView;
  [(SBPIPBackdropView *)self->_backdropView center];
  [(UIView *)lightTintView setCenter:?];
  darkTintView = self->_darkTintView;
  [(SBPIPBackdropView *)self->_backdropView center];
  [(UIView *)darkTintView setCenter:?];
  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  [(UIImageView *)self->_leftChevron setCenter:18.0, CGRectGetMidY(v18)];
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  [(UIImageView *)self->_rightChevron setCenter:v8 + -18.0, CGRectGetMidY(v19)];
}

- (void)layoutStashChevrons
{
  if (self->_chevronsHidden)
  {
    leftChevron = self->_leftChevron;
    v21 = *(MEMORY[0x277CBF2C0] + 16);
    *&v24.a = *MEMORY[0x277CBF2C0];
    v22 = *&v24.a;
    *&v24.c = v21;
    *&v24.tx = *(MEMORY[0x277CBF2C0] + 32);
    v20 = *&v24.tx;
    [(UIImageView *)leftChevron setTransform:&v24];
    rightChevron = self->_rightChevron;
    *&v24.a = v22;
    *&v24.c = v21;
    *&v24.tx = v20;
    [(UIImageView *)rightChevron setTransform:&v24];
    backdropView = self->_backdropView;
    *&v24.a = v22;
    *&v24.c = v21;
    *&v24.tx = v20;
  }

  else
  {
    v6 = MEMORY[0x277CBF2C0];
    if (self->_isChevronShownLeft)
    {
      v7 = self->_leftChevron;
      v8 = *(MEMORY[0x277CBF2C0] + 16);
      *&v23.a = *MEMORY[0x277CBF2C0];
      *&v23.c = v8;
      *&v23.tx = *(MEMORY[0x277CBF2C0] + 32);
      v9 = -30.0;
    }

    else
    {
      v7 = self->_rightChevron;
      v10 = *(MEMORY[0x277CBF2C0] + 16);
      *&v23.a = *MEMORY[0x277CBF2C0];
      *&v23.c = v10;
      *&v23.tx = *(MEMORY[0x277CBF2C0] + 32);
      v9 = 30.0;
    }

    CGAffineTransformTranslate(&v24, &v23, v9, 0.0);
    [(UIImageView *)v7 setTransform:&v24];
    v11 = self->_backdropView;
    stashedTabWidth = self->_stashedTabWidth;
    if (self->_isChevronShownLeft)
    {
      stashedTabWidth = -stashedTabWidth;
    }

    v13 = v6[1];
    *&v23.a = *v6;
    *&v23.c = v13;
    *&v23.tx = v6[2];
    CGAffineTransformTranslate(&v24, &v23, stashedTabWidth, 0.0);
    backdropView = v11;
  }

  [(SBPIPBackdropView *)backdropView setTransform:&v24];
  lightTintView = self->_lightTintView;
  v15 = self->_backdropView;
  if (v15)
  {
    [(SBPIPBackdropView *)v15 transform];
  }

  else
  {
    memset(&v24, 0, sizeof(v24));
  }

  [(UIView *)lightTintView setTransform:&v24];
  darkTintView = self->_darkTintView;
  v17 = self->_backdropView;
  if (v17)
  {
    [(SBPIPBackdropView *)v17 transform];
  }

  else
  {
    memset(&v24, 0, sizeof(v24));
  }

  [(UIView *)darkTintView setTransform:&v24];
  v18 = 0.0;
  v19 = 0.0;
  if (!self->_chevronsHidden && self->_isChevronShownLeft)
  {
    v19 = 1.0;
  }

  [(UIImageView *)self->_leftChevron setAlpha:v19];
  if (!self->_chevronsHidden)
  {
    if (self->_isChevronShownLeft)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = 1.0;
    }
  }

  [(UIImageView *)self->_rightChevron setAlpha:v18];
  [(SBPIPBackdropView *)self->_backdropView layoutIfNeeded];
  [(UIView *)self->_lightTintView layoutIfNeeded];
  [(UIImageView *)self->_leftChevron layoutIfNeeded];
  [(UIImageView *)self->_rightChevron layoutIfNeeded];
}

- (void)_setContinuousCornerRadius:(double)a3
{
  v5.receiver = self;
  v5.super_class = SBPIPStashView;
  [(SBPIPStashView *)&v5 _setContinuousCornerRadius:?];
  [(SBPIPBackdropView *)self->_backdropView _setContinuousCornerRadius:a3];
  [(UIView *)self->_lightTintView _setContinuousCornerRadius:a3];
  [(UIView *)self->_darkTintView _setContinuousCornerRadius:a3];
}

- (void)setBlurProgress:(double)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_blurProgress != a3)
  {
    self->_blurProgress = a3;
    v4 = (a3 - self->_startBlurThreshold) / (self->_completeBlurThreshold - self->_startBlurThreshold);
    v5 = 0.0;
    if (v4 <= 0.0)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v4 + 0.0;
    }

    v7 = fmin(v6, 1.0);
    if (v7 * 15.0 > 0.0)
    {
      v5 = v7 * 15.0 + 0.0;
    }

    v8 = fmin(fmax(v7 * -0.75 + 1.0, 0.25), 1.0);
    [(SBPIPBackdropView *)self->_backdropView setGaussianBlurRadius:fmin(v5, 15.0)];
    [(SBPIPBackdropView *)self->_backdropView setBackdropScale:v8];
    if (UIAccessibilityIsReduceTransparencyEnabled())
    {
      [(SBPIPBackdropView *)self->_backdropView setAlpha:v7];
    }

    [(UIView *)self->_lightTintView setAlpha:v7];
    [(UIView *)self->_darkTintView setAlpha:v7];
    v9 = SBLogPIP();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      blurProgress = self->_blurProgress;
      v11 = 134218496;
      v12 = blurProgress;
      v13 = 2048;
      v14 = v7;
      v15 = 2048;
      v16 = v8;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[Layout] progress{%.2f} thresholdedProgress{%.2f} backdropScale{%.2f}", &v11, 0x20u);
    }
  }
}

- (void)setChevronHidden:(BOOL)a3 left:(BOOL)a4
{
  if (self->_chevronsHidden != a3 || self->_isChevronShownLeft != a4)
  {
    self->_chevronsHidden = a3;
    self->_isChevronShownLeft = a4 & ~a3;
    [(SBPIPStashView *)self layoutStashChevrons];
  }
}

- (void)initWithFrame:(NSObject *)a3 settings:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = _SBFLoggingMethodProem();
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "%@", &v5, 0xCu);
}

@end