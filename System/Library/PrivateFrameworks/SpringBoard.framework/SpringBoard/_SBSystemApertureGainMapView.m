@interface _SBSystemApertureGainMapView
- (_SBSystemApertureGainMapView)initWithFrame:(CGRect)a3;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)_setCornerRadius:(double)a3;
- (void)setIDCornerRadius:(double)a3;
- (void)setRenderingConfiguration:(SBSystemApertureContainerRenderingConfiguration *)a3;
@end

@implementation _SBSystemApertureGainMapView

- (_SBSystemApertureGainMapView)initWithFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = _SBSystemApertureGainMapView;
  v3 = [(_SBSystemApertureGainMapView *)&v20 initWithFrame:a3.origin.x, a3.origin.y];
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

    v8 = [(_SBGainMapView *)v3->_gainMapView gainMapLayer];
    [v8 setRenderMode:*MEMORY[0x277CDA678]];

    [(_SBGainMapView *)v3->_gainMapView setAutoresizingMask:18];
    [(_SBSystemApertureGainMapView *)v3 addSubview:v3->_gainMapView];
    v9 = [SBGainMapSubstituteView alloc];
    SBRectWithSize();
    v10 = [(SBGainMapSubstituteView *)v9 initWithFrame:?];
    clonedGainMapSubstituteView = v3->_clonedGainMapSubstituteView;
    v3->_clonedGainMapSubstituteView = v10;

    v12 = v3->_clonedGainMapSubstituteView;
    v13 = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v12 setBackgroundColor:v13];

    v14 = [(UIView *)v3->_clonedGainMapSubstituteView layer];
    [v14 setDisableUpdateMask:3];

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

- (void)_setCornerRadius:(double)a3
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"SBSystemApertureContainerView.m" lineNumber:809 description:@"use -[UIView setIDCornerRadius:] instead"];

  v7.receiver = self;
  v7.super_class = _SBSystemApertureGainMapView;
  [(_SBSystemApertureGainMapView *)&v7 _setCornerRadius:a3];
}

- (void)_setContinuousCornerRadius:(double)a3
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"SBSystemApertureContainerView.m" lineNumber:814 description:@"use -[UIView setIDCornerRadius:] instead"];

  v7.receiver = self;
  v7.super_class = _SBSystemApertureGainMapView;
  [(_SBSystemApertureGainMapView *)&v7 _setContinuousCornerRadius:a3];
}

- (void)setIDCornerRadius:(double)a3
{
  v5.receiver = self;
  v5.super_class = _SBSystemApertureGainMapView;
  [(UIView *)&v5 setIDCornerRadius:?];
  [(UIView *)self->_gainMapView setIDCornerRadius:a3];
  [(UIView *)self->_clonedGainMapSubstituteView setIDCornerRadius:a3];
}

- (void)setRenderingConfiguration:(SBSystemApertureContainerRenderingConfiguration *)a3
{
  p_renderingConfiguration = &self->_renderingConfiguration;
  renderingConfiguration = self->_renderingConfiguration;
  v32 = *a3;
  if (SBSystemApertureContainerRenderingConfigurationEqualToConfiguration(&renderingConfiguration, &v32))
  {
    return;
  }

  v7 = *&a3->renderingStyle;
  *&p_renderingConfiguration->alwaysRenderInSnapshots = *&a3->alwaysRenderInSnapshots;
  *&p_renderingConfiguration->renderingStyle = v7;
  renderingStyle = a3->renderingStyle;
  cloningStyle = a3->cloningStyle;
  if (a3->renderingStyle <= 0)
  {
    if (renderingStyle == -1)
    {
      v24 = [MEMORY[0x277CCA890] currentHandler];
      [v24 handleFailureInMethod:a2 object:self file:@"SBSystemApertureContainerView.m" lineNumber:836 description:@"Invalid rendering style"];
LABEL_34:

      return;
    }

    if (renderingStyle)
    {
      return;
    }

    v14 = [(_SBGainMapView *)self->_gainMapView gainMapLayer];
    [v14 setRenderMode:*MEMORY[0x277CDA678]];

    if (cloningStyle)
    {
      if (cloningStyle == 1)
      {
        v29 = [(_SBGainMapView *)self->_gainMapView layer];
        [v29 setDisableUpdateMask:1040];

        clonedGainMapSubstituteView = self->_clonedGainMapSubstituteView;
        v31 = 0;
LABEL_32:
        [(UIView *)clonedGainMapSubstituteView setHidden:v31];
        v23 = [(UIView *)self->_clonedGainMapSubstituteView layer];
        v24 = v23;
        v25 = 3;
        goto LABEL_33;
      }

      if (cloningStyle != 2)
      {
        return;
      }

      v15 = [(_SBGainMapView *)self->_gainMapView layer];
      v16 = v15;
      v17 = 0;
    }

    else
    {
      v15 = [(_SBGainMapView *)self->_gainMapView layer];
      v16 = v15;
      v17 = 1040;
    }

    [v15 setDisableUpdateMask:v17];

    clonedGainMapSubstituteView = self->_clonedGainMapSubstituteView;
    v31 = 1;
    goto LABEL_32;
  }

  if ((renderingStyle - 1) < 2)
  {
    alwaysRenderInSnapshots = a3->alwaysRenderInSnapshots;
    v19 = [(_SBGainMapView *)self->_gainMapView gainMapLayer];
    v20 = v19;
    v21 = MEMORY[0x277CDA680];
    if (renderingStyle != 2)
    {
      v21 = MEMORY[0x277CDA688];
    }

    [v19 setRenderMode:*v21];

    if (!cloningStyle)
    {
      v28 = [(_SBGainMapView *)self->_gainMapView layer];
      [v28 setDisableUpdateMask:1040];

      [(UIView *)self->_clonedGainMapSubstituteView setHidden:!alwaysRenderInSnapshots];
      v23 = [(UIView *)self->_clonedGainMapSubstituteView layer];
      v24 = v23;
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
      v22 = [(_SBGainMapView *)self->_gainMapView layer];
      [v22 setDisableUpdateMask:1040];

      [(UIView *)self->_clonedGainMapSubstituteView setHidden:0];
      v23 = [(UIView *)self->_clonedGainMapSubstituteView layer];
      v24 = v23;
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
      v26 = [(_SBGainMapView *)self->_gainMapView gainMapLayer];
      [v26 setRenderMode:*MEMORY[0x277CDA688]];

      if (cloningStyle > 2)
      {
        return;
      }

      v27 = [(_SBGainMapView *)self->_gainMapView layer];
      [v27 setDisableUpdateMask:0];

      v12 = self->_clonedGainMapSubstituteView;
      v13 = 0;
      goto LABEL_25;
    }

    if (renderingStyle == 4)
    {
      v10 = [(_SBGainMapView *)self->_gainMapView gainMapLayer];
      [v10 setRenderMode:*MEMORY[0x277CDA688]];

      if (cloningStyle <= 2)
      {
        v11 = [(_SBGainMapView *)self->_gainMapView layer];
        [v11 setDisableUpdateMask:0];

        v12 = self->_clonedGainMapSubstituteView;
        v13 = 1;
LABEL_25:
        [(UIView *)v12 setHidden:v13];
        v23 = [(UIView *)self->_clonedGainMapSubstituteView layer];
        v24 = v23;
        v25 = 0;
LABEL_33:
        [v23 setDisableUpdateMask:v25];
        goto LABEL_34;
      }
    }
  }
}

@end