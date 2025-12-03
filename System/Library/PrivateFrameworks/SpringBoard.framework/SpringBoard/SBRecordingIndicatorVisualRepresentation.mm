@interface SBRecordingIndicatorVisualRepresentation
+ (CGRect)indicatorFrameForScreenType:(unint64_t)type screen:(id)screen style:(unint64_t)style;
- (SBRecordingIndicatorVisualRepresentation)initWithViewType:(unint64_t)type;
- (double)blurRadius;
- (id)_indicatorColorForIndicatorType:(unint64_t)type;
- (void)setBlurRadius:(double)radius;
- (void)setIndicatorType:(unint64_t)type;
@end

@implementation SBRecordingIndicatorVisualRepresentation

+ (CGRect)indicatorFrameForScreenType:(unint64_t)type screen:(id)screen style:(unint64_t)style
{
  screenCopy = screen;
  v8 = screenCopy;
  switch(type)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
      [screenCopy scale];
      goto LABEL_4;
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x72uLL:
    case 0x73uLL:
    case 0x74uLL:
    case 0x75uLL:
    case 0x76uLL:
      [screenCopy scale];
      break;
    default:
LABEL_4:
      [v8 scale];
      [v8 nativeScale];
      break;
  }

  if (style > 2)
  {
    if (style == 3)
    {
      mEMORY[0x277D67E28] = [MEMORY[0x277D67E28] sharedInstanceForEmbeddedDisplay];
      [mEMORY[0x277D67E28] interSensorRegionInWindowSpace];
      UIRectGetCenter();

      UIRoundToScale();
      BSRectWithSize();
      SBUnintegralizedRectCenteredAboutPoint();
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      goto LABEL_18;
    }
  }

  else if (style == 1)
  {
    [v8 scale];
    if (fabs(v9 + -2.0) <= 2.22044605e-16)
    {
      if (__sb__runningInSpringBoard())
      {
        SBFEffectiveDeviceClass();
      }

      else
      {
        currentDevice = [MEMORY[0x277D75418] currentDevice];
        [currentDevice userInterfaceIdiom];
      }
    }
  }

  UIRoundToScale();
  v16 = v20;
  UIRoundToScale();
  v12 = v21;
  UIRoundToScale();
  v14 = v22;
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] != 1)
  {
    [v8 bounds];
    v12 = CGRectGetWidth(v27) - v12 - v16;
  }

  v18 = v16;
LABEL_18:

  v23 = v12;
  v24 = v14;
  v25 = v16;
  v26 = v18;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (SBRecordingIndicatorVisualRepresentation)initWithViewType:(unint64_t)type
{
  v22.receiver = self;
  v22.super_class = SBRecordingIndicatorVisualRepresentation;
  v4 = [(SBRecordingIndicatorVisualRepresentation *)&v22 init];
  v5 = v4;
  if (v4)
  {
    v4->_viewType = type;
    v6 = +[SBRecordingIndicatorLayer layer];
    highLevelLayer = v5->_highLevelLayer;
    v5->_highLevelLayer = v6;

    switch(type)
    {
      case 3uLL:
        v14 = objc_alloc_init(SBRecordingIndicatorView);
        contentView = v5->_contentView;
        v5->_contentView = v14;

        v16 = objc_alloc_init(SBRecordingIndicatorContainerView);
        containerView = v5->_containerView;
        v5->_containerView = v16;

        [(SBRecordingIndicatorContainerView *)v5->_containerView setContentView:v5->_contentView];
        v18 = [SBRecordingIndicatorPortalView alloc];
        v19 = [(SBRecordingIndicatorPortalView *)v18 initWithFrame:v5->_containerView containerView:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
        portalView = v5->_portalView;
        v5->_portalView = v19;

        [(_UIPortalView *)v5->_portalView setMatchesAlpha:1];
        [(_UIPortalView *)v5->_portalView setHidesSourceView:1];
        break;
      case 2uLL:
        v10 = objc_alloc_init(SBRecordingIndicatorView);
        v11 = v5->_contentView;
        v5->_contentView = v10;

        v12 = objc_alloc_init(SBRecordingIndicatorContainerView);
        v13 = v5->_containerView;
        v5->_containerView = v12;

        [(SBRecordingIndicatorContainerView *)v5->_containerView setContentView:v5->_contentView];
        break;
      case 1uLL:
        v8 = objc_alloc_init(SBRecordingIndicatorView);
        v9 = v5->_contentView;
        v5->_contentView = v8;

        break;
    }
  }

  return v5;
}

- (void)setIndicatorType:(unint64_t)type
{
  v7 = [(SBRecordingIndicatorVisualRepresentation *)self _indicatorColorForIndicatorType:?];
  [(SBRecordingIndicatorLayer *)self->_highLevelLayer setIndicatorType:type];
  highLevelLayer = self->_highLevelLayer;
  v6 = v7;
  -[SBRecordingIndicatorLayer setBackgroundColor:](highLevelLayer, "setBackgroundColor:", [v7 CGColor]);
  [(SBRecordingIndicatorView *)self->_contentView setIndicatorType:type];
  [(SBRecordingIndicatorView *)self->_contentView setBackgroundColor:v7];
}

- (double)blurRadius
{
  highLevelLayer = self->_highLevelLayer;
  if (!highLevelLayer)
  {
    highLevelLayer = self->_contentView;
  }

  [highLevelLayer blurRadius];
  return result;
}

- (void)setBlurRadius:(double)radius
{
  [(SBRecordingIndicatorLayer *)self->_highLevelLayer setBlurRadius:?];
  contentView = self->_contentView;

  [(SBRecordingIndicatorView *)contentView setBlurRadius:radius];
}

- (id)_indicatorColorForIndicatorType:(unint64_t)type
{
  if (type)
  {
    [MEMORY[0x277D75348] systemOrangeColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemGreenColor];
  }
  v4 = ;
  v5 = +[SBRecordingIndicatorDomain rootSettings];
  debugBackgroundColorEnabled = [v5 debugBackgroundColorEnabled];

  if (debugBackgroundColorEnabled)
  {
    if (type)
    {
      [MEMORY[0x277D75348] systemPurpleColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemBlueColor];
    }
    v7 = ;

    v4 = v7;
  }

  return v4;
}

@end