@interface SBRootSceneWindow
- (SBRootSceneWindow)initWithDisplayConfiguration:(id)configuration;
- (void)_configureRootLayer:(id)layer sceneTransformLayer:(id)transformLayer transformLayer:(id)a5;
- (void)_updateRootLayerBackgroundColor;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SBRootSceneWindow

- (SBRootSceneWindow)initWithDisplayConfiguration:(id)configuration
{
  v6.receiver = self;
  v6.super_class = SBRootSceneWindow;
  v3 = [(UIRootSceneWindow *)&v6 initWithDisplayConfiguration:configuration];
  v4 = v3;
  if (v3)
  {
    [(SBRootSceneWindow *)v3 _updateTransformLayer];
  }

  return v4;
}

- (void)_configureRootLayer:(id)layer sceneTransformLayer:(id)transformLayer transformLayer:(id)a5
{
  layerCopy = layer;
  transformLayerCopy = transformLayer;
  v88.receiver = self;
  v88.super_class = SBRootSceneWindow;
  [(_UIRootWindow *)&v88 _configureRootLayer:layerCopy sceneTransformLayer:transformLayerCopy transformLayer:a5];
  displayConfiguration = [(UIRootSceneWindow *)self displayConfiguration];
  if (!displayConfiguration || ![MEMORY[0x277D0ACD8] isEmulatedDevice] || !objc_msgSend(displayConfiguration, "isMainDisplay"))
  {
    goto LABEL_64;
  }

  [displayConfiguration scale];
  v13 = v12;
  [displayConfiguration nativeOrientation];
  v14 = FBSDisplayRotationFromRadians() & 0xFFFFFFFFFFFFFFFDLL;
  [displayConfiguration _nativeBounds];
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
  [layerCopy setBounds:{v18, v20, v21 / v13, v22 / v13}];
  [displayConfiguration renderingCenter];
  [layerCopy setPosition:?];
  UIRectGetCenter();
  [transformLayerCopy setPosition:?];
  if ([MEMORY[0x277D0ACD8] hasEmulatedDeviceBounds])
  {
    [MEMORY[0x277D0ACD8] emulatedDeviceBounds];
    v26 = v25;
    v28 = v27;
    scalingStyle = [MEMORY[0x277D0ACD8] scalingStyle];
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

    if (scalingStyle > 1)
    {
      v45 = v41;
      if (scalingStyle != 2)
      {
        if (scalingStyle == 3)
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
      if (scalingStyle == 1)
      {
        v44 = 1.0;
      }

      else
      {
        v44 = v40;
      }

      if (scalingStyle != 1)
      {
        v42 = v38;
      }

      if (scalingStyle)
      {
        v41 = v44;
      }

      else
      {
        v41 = v43;
      }

      if (scalingStyle)
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
      if (transformLayerCopy)
      {
        [transformLayerCopy transform];
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
      [transformLayerCopy setTransform:&v86];
    }
  }

  [transformLayerCopy bounds];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  emulatedDeviceMaskImageName = [MEMORY[0x277D0ACD8] emulatedDeviceMaskImageName];
  emulatedDeviceBezelImageName = [MEMORY[0x277D0ACD8] emulatedDeviceBezelImageName];
  if (emulatedDeviceMaskImageName | emulatedDeviceBezelImageName)
  {
    emulatedDeviceImageContainingBundle = [MEMORY[0x277D0ACD8] emulatedDeviceImageContainingBundle];
  }

  else
  {
    emulatedDeviceImageContainingBundle = 0;
  }

  v84 = [MEMORY[0x277D755B8] imageNamed:emulatedDeviceMaskImageName inBundle:emulatedDeviceImageContainingBundle];
  if (v84)
  {
    maskLayer = self->_maskLayer;
    if (!maskLayer)
    {
      layer = [MEMORY[0x277CD9ED0] layer];
      v61 = self->_maskLayer;
      self->_maskLayer = layer;

      -[CALayer setContents:](self->_maskLayer, "setContents:", [v84 CGImage]);
      maskLayer = self->_maskLayer;
    }

    [(CALayer *)maskLayer setBounds:v49, v51, v53, v55];
    v62 = self->_maskLayer;
    UIRectGetCenter();
    [(CALayer *)v62 setPosition:?];
    [transformLayerCopy setMask:self->_maskLayer];
    [transformLayerCopy setMasksToBounds:1];
  }

  else
  {
    v81 = emulatedDeviceBezelImageName;
    v63 = emulatedDeviceMaskImageName;
    mask = [transformLayerCopy mask];
    v65 = self->_maskLayer;

    if (mask == v65)
    {
      [transformLayerCopy setMask:0];
    }

    v66 = self->_maskLayer;
    self->_maskLayer = 0;

    emulatedDeviceMaskImageName = v63;
    emulatedDeviceBezelImageName = v81;
  }

  v67 = [MEMORY[0x277D755B8] imageNamed:emulatedDeviceBezelImageName inBundle:emulatedDeviceImageContainingBundle];
  bezelLayer = self->_bezelLayer;
  if (v67)
  {
    v82 = emulatedDeviceMaskImageName;
    if (!bezelLayer)
    {
      layer2 = [MEMORY[0x277CD9ED0] layer];
      v70 = self->_bezelLayer;
      self->_bezelLayer = layer2;

      v71 = self->_bezelLayer;
      v72 = *MEMORY[0x277CBF348];
      v73 = *(MEMORY[0x277CBF348] + 8);
      [v67 size];
      [(CALayer *)v71 setBounds:v72, v73, v74, v75];
      -[CALayer setContents:](self->_bezelLayer, "setContents:", [v67 CGImage]);
      [layerCopy insertSublayer:self->_bezelLayer below:transformLayerCopy];
      bezelLayer = self->_bezelLayer;
    }

    [layerCopy insertSublayer:bezelLayer below:{transformLayerCopy, v82}];
    v76 = self->_bezelLayer;
    UIRectGetCenter();
    [(CALayer *)v76 setPosition:?];
    emulatedDeviceMaskImageName = v83;
  }

  else
  {
    [(CALayer *)self->_bezelLayer removeFromSuperlayer];
    v77 = self->_bezelLayer;
    self->_bezelLayer = 0;
  }

  rootLayerBackgroundColorString = [MEMORY[0x277D0ACD8] rootLayerBackgroundColorString];
  v79 = colorForSpecifierString(rootLayerBackgroundColorString);
  backgroundColor = self->_backgroundColor;
  self->_backgroundColor = v79;

  objc_storeStrong(&self->_layerForBackgroundColor, layer);
  [(SBRootSceneWindow *)self _updateRootLayerBackgroundColor];
LABEL_64:
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  traitCollection = [(SBRootSceneWindow *)self traitCollection];
  v6 = [traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy];

  if (v6)
  {

    [(SBRootSceneWindow *)self _updateRootLayerBackgroundColor];
  }
}

- (void)_updateRootLayerBackgroundColor
{
  layerForBackgroundColor = self->_layerForBackgroundColor;
  cGColor = [(UIColor *)self->_backgroundColor CGColor];

  [(CALayer *)layerForBackgroundColor setBackgroundColor:cGColor];
}

@end