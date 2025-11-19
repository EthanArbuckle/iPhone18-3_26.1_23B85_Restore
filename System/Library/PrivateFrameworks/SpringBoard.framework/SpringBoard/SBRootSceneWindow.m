@interface SBRootSceneWindow
- (SBRootSceneWindow)initWithDisplayConfiguration:(id)a3;
- (void)_configureRootLayer:(id)a3 sceneTransformLayer:(id)a4 transformLayer:(id)a5;
- (void)_updateRootLayerBackgroundColor;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SBRootSceneWindow

- (SBRootSceneWindow)initWithDisplayConfiguration:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBRootSceneWindow;
  v3 = [(UIRootSceneWindow *)&v6 initWithDisplayConfiguration:a3];
  v4 = v3;
  if (v3)
  {
    [(SBRootSceneWindow *)v3 _updateTransformLayer];
  }

  return v4;
}

- (void)_configureRootLayer:(id)a3 sceneTransformLayer:(id)a4 transformLayer:(id)a5
{
  v9 = a3;
  v10 = a4;
  v88.receiver = self;
  v88.super_class = SBRootSceneWindow;
  [(_UIRootWindow *)&v88 _configureRootLayer:v9 sceneTransformLayer:v10 transformLayer:a5];
  v11 = [(UIRootSceneWindow *)self displayConfiguration];
  if (!v11 || ![MEMORY[0x277D0ACD8] isEmulatedDevice] || !objc_msgSend(v11, "isMainDisplay"))
  {
    goto LABEL_64;
  }

  [v11 scale];
  v13 = v12;
  [v11 nativeOrientation];
  v14 = FBSDisplayRotationFromRadians() & 0xFFFFFFFFFFFFFFFDLL;
  [v11 _nativeBounds];
  v18 = v17;
  v20 = v19;
  if (v14 == 1)
  {
    v21 = v16;
  }

  else
  {
    v21 = v15;
  }

  if (v14 == 1)
  {
    v22 = v15;
  }

  else
  {
    v22 = v16;
  }

  v23 = v22 / v13;
  v24 = v21 / v13;
  [v9 setBounds:{v18, v20, v21 / v13, v22 / v13}];
  [v11 renderingCenter];
  [v9 setPosition:?];
  UIRectGetCenter();
  [v10 setPosition:?];
  if ([MEMORY[0x277D0ACD8] hasEmulatedDeviceBounds])
  {
    [MEMORY[0x277D0ACD8] emulatedDeviceBounds];
    v26 = v25;
    v28 = v27;
    v29 = [MEMORY[0x277D0ACD8] scalingStyle];
    [MEMORY[0x277D0ACD8] customTranslationOffsetX];
    v31 = v30;
    [MEMORY[0x277D0ACD8] customTranslationOffsetY];
    v33 = v32;
    v34 = *MEMORY[0x277CBF348] == v31 && *(MEMORY[0x277CBF348] + 8) == v32;
    v35 = v26 + fabs(v31) * 2.0;
    v36 = fabs(v33);
    if (!v34)
    {
      v28 = v28 + v36 * 2.0;
      v26 = v35;
    }

    [MEMORY[0x277D0ACD8] customScaleFactorX];
    v38 = v37;
    [MEMORY[0x277D0ACD8] customScaleFactorY];
    v40 = v39;
    if (v24 / v26 <= v23 / v28)
    {
      v41 = v24 / v26;
    }

    else
    {
      v41 = v23 / v28;
    }

    if (v29 > 1)
    {
      v45 = v41;
      if (v29 != 2)
      {
        if (v29 == 3)
        {
          v41 = 1.0;
          if (BSFloatIsZero())
          {
            v45 = 1.0;
          }

          else
          {
            v45 = v38;
          }

          if (!BSFloatIsZero())
          {
            v41 = v40;
          }
        }

        else
        {
          v41 = v39;
          v45 = v38;
        }
      }
    }

    else
    {
      v42 = 1.0;
      v43 = fmin(fmax(v41, 0.0), 1.0);
      if (v29 == 1)
      {
        v44 = 1.0;
      }

      else
      {
        v44 = v40;
      }

      if (v29 != 1)
      {
        v42 = v38;
      }

      if (v29)
      {
        v41 = v44;
      }

      else
      {
        v41 = v43;
      }

      if (v29)
      {
        v45 = v42;
      }

      else
      {
        v45 = v43;
      }
    }

    if (!BSFloatIsOne())
    {
      v47 = 1;
      goto LABEL_41;
    }

    IsOne = BSFloatIsOne();
    if ((IsOne & v34 & 1) == 0)
    {
      v47 = IsOne ^ 1;
LABEL_41:
      memset(&v87, 0, sizeof(v87));
      if (v10)
      {
        [v10 transform];
      }

      if (!v34)
      {
        v85 = v87;
        CATransform3DTranslate(&v86, &v85, v31, v33, 0.0);
        v87 = v86;
      }

      if (v47)
      {
        v85 = v87;
        CATransform3DScale(&v86, &v85, v45, v41, 1.0);
        v87 = v86;
      }

      v86 = v87;
      [v10 setTransform:&v86];
    }
  }

  [v10 bounds];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = [MEMORY[0x277D0ACD8] emulatedDeviceMaskImageName];
  v57 = [MEMORY[0x277D0ACD8] emulatedDeviceBezelImageName];
  if (v56 | v57)
  {
    v58 = [MEMORY[0x277D0ACD8] emulatedDeviceImageContainingBundle];
  }

  else
  {
    v58 = 0;
  }

  v84 = [MEMORY[0x277D755B8] imageNamed:v56 inBundle:v58];
  if (v84)
  {
    maskLayer = self->_maskLayer;
    if (!maskLayer)
    {
      v60 = [MEMORY[0x277CD9ED0] layer];
      v61 = self->_maskLayer;
      self->_maskLayer = v60;

      -[CALayer setContents:](self->_maskLayer, "setContents:", [v84 CGImage]);
      maskLayer = self->_maskLayer;
    }

    [(CALayer *)maskLayer setBounds:v49, v51, v53, v55];
    v62 = self->_maskLayer;
    UIRectGetCenter();
    [(CALayer *)v62 setPosition:?];
    [v10 setMask:self->_maskLayer];
    [v10 setMasksToBounds:1];
  }

  else
  {
    v81 = v57;
    v63 = v56;
    v64 = [v10 mask];
    v65 = self->_maskLayer;

    if (v64 == v65)
    {
      [v10 setMask:0];
    }

    v66 = self->_maskLayer;
    self->_maskLayer = 0;

    v56 = v63;
    v57 = v81;
  }

  v67 = [MEMORY[0x277D755B8] imageNamed:v57 inBundle:v58];
  bezelLayer = self->_bezelLayer;
  if (v67)
  {
    v82 = v56;
    if (!bezelLayer)
    {
      v69 = [MEMORY[0x277CD9ED0] layer];
      v70 = self->_bezelLayer;
      self->_bezelLayer = v69;

      v71 = self->_bezelLayer;
      v72 = *MEMORY[0x277CBF348];
      v73 = *(MEMORY[0x277CBF348] + 8);
      [v67 size];
      [(CALayer *)v71 setBounds:v72, v73, v74, v75];
      -[CALayer setContents:](self->_bezelLayer, "setContents:", [v67 CGImage]);
      [v9 insertSublayer:self->_bezelLayer below:v10];
      bezelLayer = self->_bezelLayer;
    }

    [v9 insertSublayer:bezelLayer below:{v10, v82}];
    v76 = self->_bezelLayer;
    UIRectGetCenter();
    [(CALayer *)v76 setPosition:?];
    v56 = v83;
  }

  else
  {
    [(CALayer *)self->_bezelLayer removeFromSuperlayer];
    v77 = self->_bezelLayer;
    self->_bezelLayer = 0;
  }

  v78 = [MEMORY[0x277D0ACD8] rootLayerBackgroundColorString];
  v79 = colorForSpecifierString(v78);
  backgroundColor = self->_backgroundColor;
  self->_backgroundColor = v79;

  objc_storeStrong(&self->_layerForBackgroundColor, a3);
  [(SBRootSceneWindow *)self _updateRootLayerBackgroundColor];
LABEL_64:
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = [(SBRootSceneWindow *)self traitCollection];
  v6 = [v5 hasDifferentColorAppearanceComparedToTraitCollection:v4];

  if (v6)
  {

    [(SBRootSceneWindow *)self _updateRootLayerBackgroundColor];
  }
}

- (void)_updateRootLayerBackgroundColor
{
  layerForBackgroundColor = self->_layerForBackgroundColor;
  v3 = [(UIColor *)self->_backgroundColor CGColor];

  [(CALayer *)layerForBackgroundColor setBackgroundColor:v3];
}

@end