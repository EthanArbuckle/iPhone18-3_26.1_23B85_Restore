@interface _SBSystemApertureGainMapView
- (_SBSystemApertureGainMapView)initWithFrame:(CGRect)frame;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_setCornerRadius:(double)radius;
- (void)setIDCornerRadius:(double)radius;
- (void)setRenderingConfiguration:(SBSystemApertureContainerRenderingConfiguration *)configuration;
@end

@implementation _SBSystemApertureGainMapView

- (_SBSystemApertureGainMapView)initWithFrame:(CGRect)frame
{
  v20.receiver = self;
  v20.super_class = _SBSystemApertureGainMapView;
  v3 = [(_SBSystemApertureGainMapView *)&v20 initWithFrame:frame.origin.x, frame.origin.y];
  if (v3)
  {
    SBSystemApertureContainerRenderingConfigurationMake(0, 2, 0, &v18);
    v4 = v18;
    *&v3->_renderingConfiguration.alwaysRenderInSnapshots = v19;
    *&v3->_renderingConfiguration.renderingStyle = v4;
    v5 = [_SBGainMapView alloc];
    SBRectWithSize();
    v6 = [(_SBGainMapView *)v5 initWithFrame:?];
    gainMapView = v3->_gainMapView;
    v3->_gainMapView = v6;

    gainMapLayer = [(_SBGainMapView *)v3->_gainMapView gainMapLayer];
    [gainMapLayer setRenderMode:*MEMORY[0x277CDA678]];

    [(_SBGainMapView *)v3->_gainMapView setAutoresizingMask:18];
    [(_SBSystemApertureGainMapView *)v3 addSubview:v3->_gainMapView];
    v9 = [SBGainMapSubstituteView alloc];
    SBRectWithSize();
    v10 = [(SBGainMapSubstituteView *)v9 initWithFrame:?];
    clonedGainMapSubstituteView = v3->_clonedGainMapSubstituteView;
    v3->_clonedGainMapSubstituteView = v10;

    v12 = v3->_clonedGainMapSubstituteView;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v12 setBackgroundColor:blackColor];

    layer = [(UIView *)v3->_clonedGainMapSubstituteView layer];
    [layer setDisableUpdateMask:3];

    [(UIView *)v3->_clonedGainMapSubstituteView setAutoresizingMask:18];
    [(UIView *)v3->_clonedGainMapSubstituteView setUserInteractionEnabled:0];
    [(UIView *)v3->_clonedGainMapSubstituteView setHidden:1];
    [(_SBSystemApertureGainMapView *)v3 addSubview:v3->_clonedGainMapSubstituteView];
    [(_SBSystemApertureGainMapView *)v3 setNeedsLayout];
    v15 = +[SBSystemApertureDomain rootSettings];
    settings = v3->_settings;
    v3->_settings = v15;
  }

  return v3;
}

- (void)_setCornerRadius:(double)radius
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBSystemApertureContainerView.m" lineNumber:809 description:@"use -[UIView setIDCornerRadius:] instead"];

  v7.receiver = self;
  v7.super_class = _SBSystemApertureGainMapView;
  [(_SBSystemApertureGainMapView *)&v7 _setCornerRadius:radius];
}

- (void)_setContinuousCornerRadius:(double)radius
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBSystemApertureContainerView.m" lineNumber:814 description:@"use -[UIView setIDCornerRadius:] instead"];

  v7.receiver = self;
  v7.super_class = _SBSystemApertureGainMapView;
  [(_SBSystemApertureGainMapView *)&v7 _setContinuousCornerRadius:radius];
}

- (void)setIDCornerRadius:(double)radius
{
  v5.receiver = self;
  v5.super_class = _SBSystemApertureGainMapView;
  [(UIView *)&v5 setIDCornerRadius:?];
  [(UIView *)self->_gainMapView setIDCornerRadius:radius];
  [(UIView *)self->_clonedGainMapSubstituteView setIDCornerRadius:radius];
}

- (void)setRenderingConfiguration:(SBSystemApertureContainerRenderingConfiguration *)configuration
{
  p_renderingConfiguration = &self->_renderingConfiguration;
  renderingConfiguration = self->_renderingConfiguration;
  v32 = *configuration;
  if (SBSystemApertureContainerRenderingConfigurationEqualToConfiguration(&renderingConfiguration, &v32))
  {
    return;
  }

  v7 = *&configuration->renderingStyle;
  *&p_renderingConfiguration->alwaysRenderInSnapshots = *&configuration->alwaysRenderInSnapshots;
  *&p_renderingConfiguration->renderingStyle = v7;
  renderingStyle = configuration->renderingStyle;
  cloningStyle = configuration->cloningStyle;
  if (configuration->renderingStyle <= 0)
  {
    if (renderingStyle == -1)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SBSystemApertureContainerView.m" lineNumber:836 description:@"Invalid rendering style"];
LABEL_34:

      return;
    }

    if (renderingStyle)
    {
      return;
    }

    gainMapLayer = [(_SBGainMapView *)self->_gainMapView gainMapLayer];
    [gainMapLayer setRenderMode:*MEMORY[0x277CDA678]];

    if (cloningStyle)
    {
      if (cloningStyle == 1)
      {
        layer = [(_SBGainMapView *)self->_gainMapView layer];
        [layer setDisableUpdateMask:1040];

        clonedGainMapSubstituteView = self->_clonedGainMapSubstituteView;
        v31 = 0;
LABEL_32:
        [(UIView *)clonedGainMapSubstituteView setHidden:v31];
        layer2 = [(UIView *)self->_clonedGainMapSubstituteView layer];
        currentHandler = layer2;
        v25 = 3;
        goto LABEL_33;
      }

      if (cloningStyle != 2)
      {
        return;
      }

      layer3 = [(_SBGainMapView *)self->_gainMapView layer];
      v16 = layer3;
      v17 = 0;
    }

    else
    {
      layer3 = [(_SBGainMapView *)self->_gainMapView layer];
      v16 = layer3;
      v17 = 1040;
    }

    [layer3 setDisableUpdateMask:v17];

    clonedGainMapSubstituteView = self->_clonedGainMapSubstituteView;
    v31 = 1;
    goto LABEL_32;
  }

  if ((renderingStyle - 1) < 2)
  {
    alwaysRenderInSnapshots = configuration->alwaysRenderInSnapshots;
    gainMapLayer2 = [(_SBGainMapView *)self->_gainMapView gainMapLayer];
    v20 = gainMapLayer2;
    v21 = MEMORY[0x277CDA680];
    if (renderingStyle != 2)
    {
      v21 = MEMORY[0x277CDA688];
    }

    [gainMapLayer2 setRenderMode:*v21];

    if (!cloningStyle)
    {
      layer4 = [(_SBGainMapView *)self->_gainMapView layer];
      [layer4 setDisableUpdateMask:1040];

      [(UIView *)self->_clonedGainMapSubstituteView setHidden:!alwaysRenderInSnapshots];
      layer2 = [(UIView *)self->_clonedGainMapSubstituteView layer];
      currentHandler = layer2;
      if (alwaysRenderInSnapshots)
      {
        v25 = 1041;
      }

      else
      {
        v25 = 1043;
      }

      goto LABEL_33;
    }

    if (cloningStyle == 1 || cloningStyle == 2)
    {
      layer5 = [(_SBGainMapView *)self->_gainMapView layer];
      [layer5 setDisableUpdateMask:1040];

      [(UIView *)self->_clonedGainMapSubstituteView setHidden:0];
      layer2 = [(UIView *)self->_clonedGainMapSubstituteView layer];
      currentHandler = layer2;
      if (alwaysRenderInSnapshots)
      {
        v25 = 1;
      }

      else
      {
        v25 = 3;
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (renderingStyle == 3)
    {
      gainMapLayer3 = [(_SBGainMapView *)self->_gainMapView gainMapLayer];
      [gainMapLayer3 setRenderMode:*MEMORY[0x277CDA688]];

      if (cloningStyle > 2)
      {
        return;
      }

      layer6 = [(_SBGainMapView *)self->_gainMapView layer];
      [layer6 setDisableUpdateMask:0];

      v12 = self->_clonedGainMapSubstituteView;
      v13 = 0;
      goto LABEL_25;
    }

    if (renderingStyle == 4)
    {
      gainMapLayer4 = [(_SBGainMapView *)self->_gainMapView gainMapLayer];
      [gainMapLayer4 setRenderMode:*MEMORY[0x277CDA688]];

      if (cloningStyle <= 2)
      {
        layer7 = [(_SBGainMapView *)self->_gainMapView layer];
        [layer7 setDisableUpdateMask:0];

        v12 = self->_clonedGainMapSubstituteView;
        v13 = 1;
LABEL_25:
        [(UIView *)v12 setHidden:v13];
        layer2 = [(UIView *)self->_clonedGainMapSubstituteView layer];
        currentHandler = layer2;
        v25 = 0;
LABEL_33:
        [layer2 setDisableUpdateMask:v25];
        goto LABEL_34;
      }
    }
  }
}

@end