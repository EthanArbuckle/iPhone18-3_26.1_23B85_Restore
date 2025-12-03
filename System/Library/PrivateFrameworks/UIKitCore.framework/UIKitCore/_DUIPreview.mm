@interface _DUIPreview
+ (double)defaultStackAlpha;
+ (id)defaultPreviewWithFrame:(CGRect)frame;
- ($1AB5FA073B851C12C2339EC22442E995)placeholderContentSize3D;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOversized;
- (CGAffineTransform)liftTransform;
- (CGAffineTransform)overrideStackTransform;
- (CGPoint)contentOffset;
- (CGPoint)initialBadgeLocation;
- (CGPoint)liftAnchorPoint;
- (CGPoint)originalCenter;
- (CGPoint)originalCenterInCoordinateSpace;
- (CGPoint)unscaledAnchorPoint;
- (CGSize)boundingSize;
- (CGSize)contentSize;
- (CGSize)scaledSize;
- (CGSize)unscaledSize;
- (CGSize)viewScaleFactor;
- (UIBezierPath)effectiveShadowPath;
- (UIColor)backgroundColor;
- (UIDragPreviewParameters)parameters;
- (_DUIPreview)init;
- (_DUIPreview)initWithBounds:(CGRect)bounds outline:(id)outline;
- (_DUIPreview)initWithCoder:(id)coder;
- (_DUIPreview)initWithView:(id)view container:(id)container parameters:(id)parameters;
- (double)_topOffset;
- (double)backAlpha;
- (double)scaleFactor;
- (double)stackAlpha;
- (id)_initWithView:(id)view container:(id)container parameters:(id)parameters platformCenter:(CAPoint3D)center;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_applyPropertiesFromPreviewParameters:(id)parameters;
- (void)encodeWithCoder:(id)coder;
- (void)setOriginalCenterInCoordinateSpace:(CGPoint)space;
- (void)setOverrideStackTransform:(CGAffineTransform *)transform;
@end

@implementation _DUIPreview

+ (id)defaultPreviewWithFrame:(CGRect)frame
{
  v3 = [[self alloc] initWithBounds:0 outline:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), frame.size.width, frame.size.height}];

  return v3;
}

- (_DUIPreview)init
{
  v3 = +[UIBezierPath bezierPath];
  v4 = [(_DUIPreview *)self initWithBounds:v3 outline:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v4;
}

- (_DUIPreview)initWithBounds:(CGRect)bounds outline:(id)outline
{
  height = bounds.size.height;
  width = bounds.size.width;
  outlineCopy = outline;
  v29.receiver = self;
  v29.super_class = _DUIPreview;
  v8 = [(_DUIPreview *)&v29 init];
  if (v8)
  {
    v9 = +[UIColor systemBackgroundColor];
    v10 = *(v8 + 8);
    *(v8 + 8) = v9;

    *(v8 + 1) = width;
    *(v8 + 2) = height;
    *(v8 + 3) = 0;
    v8[56] = 1;
    v11 = [outlineCopy copy];
    [v11 bounds];
    if (v11)
    {
      v16 = v12;
      v17 = v13;
      if (!CGRectIsNull(*&v12))
      {
        *(v8 + 16) = -v16;
        *(v8 + 17) = -v17;
        CGAffineTransformMakeTranslation(&v28, -v16, -v17);
        [v11 applyTransform:&v28];
      }
    }

    __asm { FMOV            V0.2D, #1.0 }

    *(v8 + 12) = _Q0;
    v23 = *(v8 + 9);
    *(v8 + 9) = v11;

    v24 = MEMORY[0x1E695EFD0];
    v25 = *(MEMORY[0x1E695EFD0] + 16);
    *(v8 + 232) = *MEMORY[0x1E695EFD0];
    *(v8 + 248) = v25;
    *(v8 + 264) = *(v24 + 32);
    *(v8 + 9) = _UICGPointNull_1;
    *(v8 + 15) = -1;
    v26 = v8;
  }

  return v8;
}

- (_DUIPreview)initWithView:(id)view container:(id)container parameters:(id)parameters
{
  parametersCopy = parameters;
  containerCopy = container;
  viewCopy = view;
  [viewCopy frame];
  v15 = [(_DUIPreview *)self initWithView:viewCopy container:containerCopy parameters:parametersCopy center:v12 + v11 * 0.5, v14 + v13 * 0.5];

  return v15;
}

- (id)_initWithView:(id)view container:(id)container parameters:(id)parameters platformCenter:(CAPoint3D)center
{
  y = center.y;
  x = center.x;
  viewCopy = view;
  containerCopy = container;
  parametersCopy = parameters;
  v15 = parametersCopy;
  if (viewCopy)
  {
    if (parametersCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"DUIPreview.m" lineNumber:248 description:{@"Invalid parameter not satisfying: %@", @"view != nil"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"DUIPreview.m" lineNumber:249 description:{@"Invalid parameter not satisfying: %@", @"parameters != nil"}];

LABEL_3:
  v85 = y;
  visiblePath = [v15 visiblePath];
  v17 = [visiblePath copy];

  self->_hasCustomOutline = v17 != 0;
  traitCollection = [viewCopy traitCollection];
  v19 = _UIDragAndDropGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  if (!v17)
  {
    defaultPreviewOutlineProvider = [v19 defaultPreviewOutlineProvider];
    v17 = (defaultPreviewOutlineProvider)[2](defaultPreviewOutlineProvider, viewCopy);
  }

  v86 = v19;
  [viewCopy bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = viewCopy;
  v30 = v29;
  if (viewCopy)
  {
    [v29 transform];
    a = v93.a;
    b = v93.b;
    c = v93.c;
    d = v93.d;
  }

  else
  {
    d = 0.0;
    b = 0.0;
    c = 0.0;
    a = 0.0;
  }

  v35 = hypot(a, c);
  v36 = hypot(b, d);
  superview = [v30 superview];
  v38 = DUIPreviewConvertSizeFromViewToView(superview, 0, v35, v36);
  sya = v39;

  memset(&v93, 0, sizeof(v93));
  v94.origin.x = v22;
  v94.origin.y = v24;
  v94.size.width = v26;
  v94.size.height = v28;
  v40 = CGRectGetWidth(v94) * 0.5;
  v95.origin.x = v22;
  v95.origin.y = v24;
  v95.size.width = v26;
  v95.size.height = v28;
  Height = CGRectGetHeight(v95);
  CGAffineTransformMakeTranslation(&v93, v40, Height * 0.5);
  memset(&v92, 0, sizeof(v92));
  t2 = v93;
  CGAffineTransformScale(&t1, &t2, v38, sya);
  v89 = v93;
  CGAffineTransformInvert(&t2, &v89);
  CGAffineTransformConcat(&v92, &t1, &t2);
  t1 = v92;
  [v17 applyTransform:&t1];
  v42 = MEMORY[0x1E695EFF8];
  v43 = *MEMORY[0x1E695EFF8];
  v44 = *(MEMORY[0x1E695EFF8] + 8);
  v96.origin.x = v22;
  v96.origin.y = v24;
  v96.size.width = v26;
  v96.size.height = v28;
  v45 = v38 * CGRectGetWidth(v96);
  v97.origin.x = v22;
  v97.origin.y = v24;
  v97.size.width = v26;
  v97.size.height = v28;
  v46 = [(_DUIPreview *)self initWithBounds:v17 outline:v43, v44, v45, sya * CGRectGetHeight(v97)];
  if (v46)
  {
    if (containerCopy)
    {
      v47 = containerCopy;
    }

    else
    {
      v47 = v30;
    }

    v48 = v47;
    backgroundColor = [v15 backgroundColor];
    sy = v48;
    traitCollection2 = [v48 traitCollection];
    v51 = [backgroundColor resolvedColorWithTraitCollection:traitCollection2];
    v52 = [v51 copy];
    backgroundColor = v46->_backgroundColor;
    v46->_backgroundColor = v52;

    if (objc_opt_respondsToSelector())
    {
      _shadowProperties = [v15 _shadowProperties];
      shadowProperties = v46->_shadowProperties;
      v46->_shadowProperties = _shadowProperties;
    }

    v46->_originalCenter = *v42;
    RotationAngleFromViewToView = DUIPreviewGetRotationAngleFromViewToView(containerCopy, 0, 0);
    memset(&t1, 0, sizeof(t1));
    v57 = v85;
    if (viewCopy)
    {
      [v30 transform];
      v59 = t1.a;
      v58 = t1.b;
    }

    else
    {
      v59 = 0.0;
      v58 = 0.0;
    }

    v46->_originalRotation = RotationAngleFromViewToView + atan2(v58, v59);
    _window = [containerCopy _window];
    if (_window)
    {
      superview2 = containerCopy;
    }

    else
    {
      _window2 = [v30 _window];
      if (_window2)
      {
        superview2 = [v30 superview];
      }

      else
      {
        superview2 = 0;
      }
    }

    if (!superview2)
    {
      goto LABEL_32;
    }

    v63 = superview2;
    layer = [v63 layer];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v84 = containerCopy;
      v65 = v63;
      do
      {
        v66 = layer;
        v67 = v65;
        superview3 = [v65 superview];
        [v67 convertPoint:superview3 toView:{x, v57}];
        x = v69;
        v57 = v70;
        v65 = superview3;

        layer = [v65 layer];

        objc_opt_class();
      }

      while ((objc_opt_isKindOfClass() & 1) != 0);

      containerCopy = v84;
      if (!v65)
      {
        goto LABEL_31;
      }
    }

    else
    {

      v65 = v63;
    }

    v46->_originalCenterInCoordinateSpace.x = x;
    v46->_originalCenterInCoordinateSpace.y = v57;
    v46->_originalCenterInCoordinateSpace.z = 0.0;
    v71 = objc_alloc_init(_DUITargetLayerDescriptor);
    coordinateSpaceSourceLayerContext = v46->_coordinateSpaceSourceLayerContext;
    v46->_coordinateSpaceSourceLayerContext = v71;

    layer2 = [v65 layer];
    context = [layer2 context];
    -[_DUITargetLayerDescriptor setContextID:](v46->_coordinateSpaceSourceLayerContext, "setContextID:", [context contextId]);

    layer3 = [v65 layer];
    [(_DUITargetLayerDescriptor *)v46->_coordinateSpaceSourceLayerContext setRenderID:CALayerGetRenderId()];

    window = [v65 window];
    windowScene = [window windowScene];

    systemShellHostingEnvironment = [windowScene systemShellHostingEnvironment];
    systemShellHostingSpaceIdentifier = [systemShellHostingEnvironment systemShellHostingSpaceIdentifier];
    [(_DUITargetLayerDescriptor *)v46->_coordinateSpaceSourceLayerContext setSystemShellHostingSpaceIdentifier:systemShellHostingSpaceIdentifier];

LABEL_31:
LABEL_32:
    [(_DUIPreview *)v46 _applyPropertiesFromPreviewParameters:v15];
    v80 = v46;
  }

  return v46;
}

- (UIDragPreviewParameters)parameters
{
  v3 = [(UIBezierPath *)self->_outline copy];
  [v3 bounds];
  if (!CGRectIsNull(v11))
  {
    CGAffineTransformMakeTranslation(&v9, -self->_contentOffset.x, -self->_contentOffset.y);
    [v3 applyTransform:&v9];
    [(_DUIPreview *)self viewScaleFactor];
    v5 = 1.0 / v4;
    [(_DUIPreview *)self viewScaleFactor];
    CGAffineTransformMakeScale(&v9, v5, 1.0 / v6);
    [v3 applyTransform:&v9];
  }

  v7 = [(UIPreviewParameters *)[UIDragPreviewParameters alloc] _initWithMode:self->_previewMode visiblePath:v3 backgroundColor:self->_backgroundColor];
  [v7 setShadowPath:self->_shadowPath];
  [v7 _setPlaceholderContentSize3D:{self->_placeholderContentSize3D.width, self->_placeholderContentSize3D.height, self->_placeholderContentSize3D.depth}];
  [v7 _setHiddenDuringDrag:self->_hiddenDuringDrag];

  return v7;
}

- (void)_applyPropertiesFromPreviewParameters:(id)parameters
{
  parametersCopy = parameters;
  self->_previewMode = [parametersCopy _previewMode];
  shadowPath = [parametersCopy shadowPath];
  shadowPath = self->_shadowPath;
  self->_shadowPath = shadowPath;

  [parametersCopy _placeholderContentSize3D];
  self->_placeholderContentSize3D.width = v7;
  self->_placeholderContentSize3D.height = v8;
  self->_placeholderContentSize3D.depth = v9;
  _isHiddenDuringDrag = [parametersCopy _isHiddenDuringDrag];

  self->_hiddenDuringDrag = _isHiddenDuringDrag;
}

+ (double)defaultStackAlpha
{
  v2 = _AXSEnhanceBackgroundContrastEnabled();
  result = 1.0;
  if (!v2)
  {
    v4 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_UIDragPlatterStackAlpha, @"UIDragPlatterStackAlpha");
    result = *&qword_1EA95E2E8;
    if (v4)
    {
      return 0.8;
    }
  }

  return result;
}

- (double)backAlpha
{
  v2 = _AXSEnhanceBackgroundContrastEnabled();
  result = 1.0;
  if (!v2)
  {
    return 0.5;
  }

  return result;
}

- (UIColor)backgroundColor
{
  if ((self->_previewMode - 3) >= 2)
  {
    v3 = self->_backgroundColor;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGSize)boundingSize
{
  if ([(_DUIPreview *)self textMode])
  {

    +[UIDragPreview textBoundingSize];
  }

  else
  {

    +[UIDragPreview defaultBoundingSize];
  }

  result.height = v3;
  result.width = v2;
  return result;
}

- (CGAffineTransform)liftTransform
{
  selfCopy = self;
  c = self[2].c;
  if (*&c > 6uLL)
  {
    goto LABEL_6;
  }

  if (((1 << SLOBYTE(c)) & 0x46) != 0)
  {
    v6 = MEMORY[0x1E695EFD0];
    v7 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v7;
    *&retstr->tx = *(v6 + 32);
    return self;
  }

  if (((1 << SLOBYTE(c)) & 0x18) != 0)
  {
    v8 = 1.001;
  }

  else
  {
LABEL_6:
    [(CGAffineTransform *)self unscaledSize];
    v10 = v9;
    [(CGAffineTransform *)selfCopy unscaledSize];
    if (v10 >= v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    v8 = _UIPlatterLiftScaleForEdgeDimensions(v12);
  }

  return CGAffineTransformMakeScale(retstr, v8, v8);
}

- (CGPoint)originalCenterInCoordinateSpace
{
  x = self->_originalCenterInCoordinateSpace.x;
  y = self->_originalCenterInCoordinateSpace.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setOriginalCenterInCoordinateSpace:(CGPoint)space
{
  self->_originalCenterInCoordinateSpace.x = space.x;
  self->_originalCenterInCoordinateSpace.y = space.y;
  self->_originalCenterInCoordinateSpace.z = 0.0;
}

- (BOOL)isOversized
{
  previewMode = self->_previewMode;
  if (previewMode == 2 || previewMode == 4)
  {
    return 0;
  }

  [(_DUIPreview *)self unscaledSize];
  v6 = v5;
  v8 = v7;
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen bounds];
  v11 = v10;
  v13 = v12;

  v14 = v6 * v8;
  v15 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_UIDragPlatterMaximumScreenFraction, @"UIDragPlatterMaximumScreenFraction");
  v16 = *&qword_1EA95E2D8;
  if (v15)
  {
    v16 = 0.5;
  }

  return v14 > v11 * v13 * v16;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)scaledSize
{
  [(_DUIPreview *)self scaleFactor];
  v4 = v3;
  [(_DUIPreview *)self unscaledSize];
  v6 = v4 * v5;
  v8 = v4 * v7;
  result.height = v8;
  result.width = v6;
  return result;
}

- (double)scaleFactor
{
  v3 = +[UIDevice currentDevice];
  v4 = _UIDragAndDropGetPlatformMetrics([v3 userInterfaceIdiom]);

  [v4 previewMinimumSize];
  v6 = v5;
  v8 = v7;
  [(_DUIPreview *)self unscaledSize];
  v10 = v9;
  v12 = v11;
  +[UIDragPreview textBoundingSize];
  v14 = v13;
  v16 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __26___DUIPreview_scaleFactor__block_invoke;
  aBlock[3] = &unk_1E7106508;
  aBlock[4] = self;
  *&aBlock[5] = v10;
  *&aBlock[6] = v12;
  aBlock[7] = v6;
  aBlock[8] = v8;
  v17 = _Block_copy(aBlock);
  v18 = v17;
  previewMode = self->_previewMode;
  v20 = 1.0;
  if ((previewMode - 3) >= 2 && previewMode != 6)
  {
    if (previewMode == 1 && v12 < v16)
    {
      if (v10 >= v14)
      {
        v21 = v14 / v10;
        if (v14 / v10 < 40.0 / v12)
        {
          v21 = 40.0 / v12;
        }

        v20 = fmax(fmin(v21, 1.0), 0.2);
      }
    }

    else
    {
      v20 = (*(v17 + 2))(v17);
    }
  }

  return v20;
}

- (double)stackAlpha
{
  v3 = _AXSEnhanceBackgroundContrastEnabled();
  result = 1.0;
  if (!v3)
  {
    v5 = self->_previewMode - 2;
    if (v5 >= 5 || ((0x17u >> v5) & 1) == 0)
    {
      v6 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_UIDragPlatterStackAlpha, @"UIDragPlatterStackAlpha");
      result = *&qword_1EA95E2E8;
      if (v6)
      {
        return 0.8;
      }
    }
  }

  return result;
}

- (CGPoint)unscaledAnchorPoint
{
  if ((self->_previewMode - 3) > 1)
  {
    [(_DUIPreview *)self _topOffset];
    v6 = v5;
    [(_DUIPreview *)self unscaledSize];
    v4 = fmax(fmin(v6 / v7, 1.0), 0.0);
    v3 = 0.5;
  }

  else
  {
    [(_DUIPreview *)self liftAnchorPoint];
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGSize)unscaledSize
{
  outline = [(_DUIPreview *)self outline];

  if (outline)
  {
    outline2 = [(_DUIPreview *)self outline];
    [outline2 bounds];
    v6 = v5;
    v8 = v7;

    v9 = v6;
    v10 = v8;
  }

  else
  {

    [(_DUIPreview *)self contentSize];
  }

  result.height = v10;
  result.width = v9;
  return result;
}

- (double)_topOffset
{
  if (![(_DUIPreview *)self textMode])
  {
    return 33.0;
  }

  v2 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_UIDragPlatterTextModeTouchOffset, @"UIDragPlatterTextModeTouchOffset");
  result = *&qword_1EA95E2F8;
  if (v2)
  {
    return 20.0;
  }

  return result;
}

- (UIBezierPath)effectiveShadowPath
{
  shadowPath = [(_DUIPreview *)self shadowPath];
  v4 = shadowPath;
  if (shadowPath)
  {
    outline = shadowPath;
  }

  else
  {
    outline = [(_DUIPreview *)self outline];
  }

  v6 = outline;

  return v6;
}

- (_DUIPreview)initWithCoder:(id)coder
{
  v68[6] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(_DUIPreview *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v68[0] = objc_opt_class();
    v68[1] = objc_opt_class();
    v68[2] = objc_opt_class();
    v68[3] = objc_opt_class();
    v68[4] = objc_opt_class();
    v68[5] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:6];
    v8 = [v6 setWithArray:v7];

    v9 = objc_opt_class();
    v67 = v5;
    v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"backgroundColor"];
    backgroundColor = v67->_backgroundColor;
    v67->_backgroundColor = v10;

    v66 = v67;
    [coderCopy decodeCGPointForKey:@"contentOffset"];
    v67->_contentOffset.x = v12;
    v66->_contentOffset.y = v13;
    v65 = v66;
    [coderCopy decodeUISize3DForKey:@"contentSize"];
    v66->_contentSize.width = v14;
    v65->_contentSize.height = v15;
    v65->_contentSize.depth = v16;
    v64 = v65;
    v64->_hidesSourceView = [coderCopy decodeBoolForKey:@"hidesSourceView"];
    v63 = v64;
    [coderCopy decodeCGPointForKey:@"liftAnchorPoint"];
    v64->_liftAnchorPoint.x = v17;
    v63->_liftAnchorPoint.y = v18;
    v62 = v63;
    [coderCopy decodeCGPointForKey:@"originalCenter"];
    v63->_originalCenter.x = v19;
    v62->_originalCenter.y = v20;
    v61 = v62;
    [coderCopy decodeDoubleForKey:@"originalRotation"];
    v61->_originalRotation = v21;
    v60 = v61;
    [coderCopy ui_decodeCAPoint3DForKey:@"originalCenterInCoordinateSpace"];
    v61->_originalCenterInCoordinateSpace.x = v22;
    *&v60->_originalCenterInCoordinateSpace.y = v23;
    *&v60->_originalCenterInCoordinateSpace.z = v24;
    v25 = objc_opt_class();
    v59 = v60;
    v26 = [coderCopy decodeObjectOfClass:v25 forKey:@"coordinateSpaceSourceLayerContext"];
    v27 = v59[12];
    v59[12] = v26;

    v28 = objc_opt_class();
    v58 = v59;
    v29 = [coderCopy decodeObjectOfClass:v28 forKey:@"outline"];
    v30 = v58[9];
    v58[9] = v29;

    v57 = v58;
    v57[58] = [coderCopy decodeBoolForKey:@"hasCustomOutline"];
    v31 = objc_opt_class();
    v56 = v57;
    v32 = [coderCopy decodeObjectOfClass:v31 forKey:@"shadowPath"];
    v33 = v56[10];
    v56[10] = v32;

    v55 = v56;
    v55[14] = [coderCopy decodeIntegerForKey:@"previewMode"];
    v54 = v55;
    v54[59] = [coderCopy decodeBoolForKey:@"avoidAnimation"];
    v53 = v54;
    v53[60] = [coderCopy decodeBoolForKey:@"wantsSuppressedMask"];
    v34 = objc_opt_class();
    v52 = v53;
    v35 = [coderCopy decodeObjectOfClass:v34 forKey:@"shadowProperties"];
    v36 = v52[11];
    v52[11] = v35;

    v51 = v52;
    *(v51 + 57) = [coderCopy decodeBoolForKey:@"hiddenDuringDrag"];
    v37 = v51;
    [coderCopy decodeUISize3DForKey:@"placeholderContentSize3D"];
    v51[26] = v38;
    *(v37 + 27) = v39;
    *(v37 + 28) = v40;
    v41 = v37;
    if (coderCopy)
    {
      [coderCopy decodeCGAffineTransformForKey:@"overrideStackTransform"];
    }

    else
    {
      v49 = 0u;
      v50 = 0u;
      v48 = 0u;
    }

    *(v37 + 232) = v48;
    *(v37 + 248) = v49;
    *(v37 + 264) = v50;
    v47 = v41;
    [coderCopy decodeCGPointForKey:@"initialBadgeLocation"];
    *(v41 + 18) = v42;
    *(v47 + 19) = v43;
    v46 = v47;
    *(v46 + 15) = [coderCopy decodeIntegerForKey:@"preferredStackOrder"];
    v44 = v46;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v4 + 8, self->_backgroundColor);
  *(v4 + 8) = self->_contentOffset;
  v5 = *&self->_contentSize.width;
  *(v4 + 3) = *&self->_contentSize.depth;
  *(v4 + 8) = v5;
  v4[56] = self->_hidesSourceView;
  *(v4 + 11) = self->_liftAnchorPoint;
  *(v4 + 10) = self->_originalCenter;
  *(v4 + 13) = *&self->_originalRotation;
  v6 = *&self->_originalCenterInCoordinateSpace.x;
  *(v4 + 6) = *&self->_originalCenterInCoordinateSpace.z;
  *(v4 + 2) = v6;
  v7 = [(_DUITargetLayerDescriptor *)self->_coordinateSpaceSourceLayerContext copy];
  v8 = *(v4 + 12);
  *(v4 + 12) = v7;

  v9 = [(UIBezierPath *)self->_outline copy];
  v10 = *(v4 + 9);
  *(v4 + 9) = v9;

  v4[58] = self->_hasCustomOutline;
  v11 = [(UIBezierPath *)self->_shadowPath copy];
  v12 = *(v4 + 10);
  *(v4 + 10) = v11;

  *(v4 + 14) = self->_previewMode;
  v4[59] = self->_avoidAnimation;
  v4[60] = self->_wantsSuppressedMask;
  v13 = *&self->_overrideStackTransform.a;
  v14 = *&self->_overrideStackTransform.c;
  *(v4 + 264) = *&self->_overrideStackTransform.tx;
  *(v4 + 248) = v14;
  *(v4 + 232) = v13;
  *(v4 + 9) = self->_initialBadgeLocation;
  *(v4 + 15) = self->_preferredStackOrder;
  v15 = [(_UIDragPreviewShadowProperties *)self->_shadowProperties copy];
  v16 = *(v4 + 11);
  *(v4 + 11) = v15;

  v4[57] = self->_hiddenDuringDrag;
  v17 = *&self->_placeholderContentSize3D.width;
  *(v4 + 28) = *&self->_placeholderContentSize3D.depth;
  *(v4 + 13) = v17;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  backgroundColor = self->_backgroundColor;
  v109 = MEMORY[0x1E69E9820];
  v110 = 3221225472;
  v111 = __31___DUIPreview_encodeWithCoder___block_invoke;
  v112 = &unk_1E70F7FE0;
  selfCopy = self;
  coderCopy = coder;
  [coderCopy encodeObject:backgroundColor forKey:@"backgroundColor"];
  v104 = MEMORY[0x1E69E9820];
  v105 = 3221225472;
  v106 = __31___DUIPreview_encodeWithCoder___block_invoke_2;
  v107 = &unk_1E70F7FE0;
  selfCopy2 = self;
  [coderCopy encodeCGPoint:@"contentOffset" forKey:{self->_contentOffset.x, self->_contentOffset.y}];
  v99 = MEMORY[0x1E69E9820];
  v100 = 3221225472;
  v101 = __31___DUIPreview_encodeWithCoder___block_invoke_3;
  v102 = &unk_1E70F7FE0;
  selfCopy3 = self;
  [coderCopy encodeUISize3D:@"contentSize" forKey:{self->_contentSize.width, self->_contentSize.height, self->_contentSize.depth}];
  hidesSourceView = self->_hidesSourceView;
  v94 = MEMORY[0x1E69E9820];
  v95 = 3221225472;
  v96 = __31___DUIPreview_encodeWithCoder___block_invoke_4;
  v97 = &unk_1E70F7FE0;
  selfCopy4 = self;
  [coderCopy encodeBool:hidesSourceView forKey:@"hidesSourceView"];
  v89 = MEMORY[0x1E69E9820];
  v90 = 3221225472;
  v91 = __31___DUIPreview_encodeWithCoder___block_invoke_5;
  v92 = &unk_1E70F7FE0;
  selfCopy5 = self;
  [coderCopy encodeCGPoint:@"liftAnchorPoint" forKey:{self->_liftAnchorPoint.x, self->_liftAnchorPoint.y}];
  v84 = MEMORY[0x1E69E9820];
  v85 = 3221225472;
  v86 = __31___DUIPreview_encodeWithCoder___block_invoke_6;
  v87 = &unk_1E70F7FE0;
  selfCopy6 = self;
  [coderCopy encodeCGPoint:@"originalCenter" forKey:{self->_originalCenter.x, self->_originalCenter.y}];
  originalRotation = self->_originalRotation;
  v79 = MEMORY[0x1E69E9820];
  v80 = 3221225472;
  v81 = __31___DUIPreview_encodeWithCoder___block_invoke_7;
  v82 = &unk_1E70F7FE0;
  selfCopy7 = self;
  [coderCopy encodeDouble:@"originalRotation" forKey:originalRotation];
  v74 = MEMORY[0x1E69E9820];
  v75 = 3221225472;
  v76 = __31___DUIPreview_encodeWithCoder___block_invoke_8;
  v77 = &unk_1E70F7FE0;
  selfCopy8 = self;
  [coderCopy ui_encodeCAPoint3D:@"originalCenterInCoordinateSpace" forKey:{self->_originalCenterInCoordinateSpace.x, self->_originalCenterInCoordinateSpace.y, self->_originalCenterInCoordinateSpace.z}];
  coordinateSpaceSourceLayerContext = self->_coordinateSpaceSourceLayerContext;
  v69 = MEMORY[0x1E69E9820];
  v70 = 3221225472;
  v71 = __31___DUIPreview_encodeWithCoder___block_invoke_9;
  v72 = &unk_1E70F7FE0;
  selfCopy9 = self;
  [coderCopy encodeObject:coordinateSpaceSourceLayerContext forKey:@"coordinateSpaceSourceLayerContext"];
  outline = self->_outline;
  v64 = MEMORY[0x1E69E9820];
  v65 = 3221225472;
  v66 = __31___DUIPreview_encodeWithCoder___block_invoke_10;
  v67 = &unk_1E70F7FE0;
  selfCopy10 = self;
  [coderCopy encodeObject:outline forKey:@"outline"];
  hasCustomOutline = self->_hasCustomOutline;
  v59 = MEMORY[0x1E69E9820];
  v60 = 3221225472;
  v61 = __31___DUIPreview_encodeWithCoder___block_invoke_11;
  v62 = &unk_1E70F7FE0;
  selfCopy11 = self;
  [coderCopy encodeBool:hasCustomOutline forKey:@"hasCustomOutline"];
  shadowPath = self->_shadowPath;
  v54 = MEMORY[0x1E69E9820];
  v55 = 3221225472;
  v56 = __31___DUIPreview_encodeWithCoder___block_invoke_12;
  v57 = &unk_1E70F7FE0;
  selfCopy12 = self;
  [coderCopy encodeObject:shadowPath forKey:@"shadowPath"];
  previewMode = self->_previewMode;
  v49 = MEMORY[0x1E69E9820];
  v50 = 3221225472;
  v51 = __31___DUIPreview_encodeWithCoder___block_invoke_13;
  v52 = &unk_1E70F7FE0;
  selfCopy13 = self;
  [coderCopy encodeInteger:previewMode forKey:@"previewMode"];
  avoidAnimation = self->_avoidAnimation;
  v44 = MEMORY[0x1E69E9820];
  v45 = 3221225472;
  v46 = __31___DUIPreview_encodeWithCoder___block_invoke_14;
  v47 = &unk_1E70F7FE0;
  selfCopy14 = self;
  [coderCopy encodeBool:avoidAnimation forKey:@"avoidAnimation"];
  wantsSuppressedMask = self->_wantsSuppressedMask;
  v39 = MEMORY[0x1E69E9820];
  v40 = 3221225472;
  v41 = __31___DUIPreview_encodeWithCoder___block_invoke_15;
  v42 = &unk_1E70F7FE0;
  selfCopy15 = self;
  [coderCopy encodeBool:wantsSuppressedMask forKey:@"wantsSuppressedMask"];
  shadowProperties = self->_shadowProperties;
  v34 = MEMORY[0x1E69E9820];
  v35 = 3221225472;
  v36 = __31___DUIPreview_encodeWithCoder___block_invoke_16;
  v37 = &unk_1E70F7FE0;
  selfCopy16 = self;
  [coderCopy encodeObject:shadowProperties forKey:@"shadowProperties"];
  hiddenDuringDrag = self->_hiddenDuringDrag;
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __31___DUIPreview_encodeWithCoder___block_invoke_17;
  v32 = &unk_1E70F7FE0;
  selfCopy17 = self;
  [coderCopy encodeBool:hiddenDuringDrag forKey:@"hiddenDuringDrag"];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __31___DUIPreview_encodeWithCoder___block_invoke_18;
  v27 = &unk_1E70F7FE0;
  selfCopy18 = self;
  [coderCopy encodeUISize3D:@"placeholderContentSize3D" forKey:{self->_placeholderContentSize3D.width, self->_placeholderContentSize3D.height, self->_placeholderContentSize3D.depth}];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __31___DUIPreview_encodeWithCoder___block_invoke_19;
  v22 = &unk_1E70F7FE0;
  selfCopy19 = self;
  v17 = *&self->_overrideStackTransform.c;
  v18[0] = *&self->_overrideStackTransform.a;
  v18[1] = v17;
  v18[2] = *&self->_overrideStackTransform.tx;
  [coderCopy encodeCGAffineTransform:v18 forKey:@"overrideStackTransform"];
  [coderCopy encodeCGPoint:@"initialBadgeLocation" forKey:{self->_initialBadgeLocation.x, self->_initialBadgeLocation.y}];
  [coderCopy encodeInteger:self->_preferredStackOrder forKey:{@"preferredStackOrder", MEMORY[0x1E69E9820], 3221225472, __31___DUIPreview_encodeWithCoder___block_invoke_21, &unk_1E70F7FE0, self}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    backgroundColor = self->_backgroundColor;
    if ((backgroundColor == *(v5 + 8) || [(UIColor *)backgroundColor isEqual:?]) && self->_contentOffset.x == *(v5 + 16) && self->_contentOffset.y == *(v5 + 17))
    {
      v8 = self->_contentSize.width == *(v5 + 1) && self->_contentSize.height == *(v5 + 2);
      v9 = v8 && self->_contentSize.depth == *(v5 + 3);
      if (v9 && self->_hidesSourceView == v5[56] && self->_liftAnchorPoint.x == *(v5 + 22) && self->_liftAnchorPoint.y == *(v5 + 23))
      {
        v11 = 0;
        if (self->_originalCenter.x != *(v5 + 20) || self->_originalCenter.y != *(v5 + 21))
        {
          goto LABEL_46;
        }

        if (self->_originalRotation == *(v5 + 13))
        {
          if (CAPoint3DEqualToPoint())
          {
            if (_deferringTokenEqualToToken(self->_coordinateSpaceSourceLayerContext, *(v5 + 12)))
            {
              outline = self->_outline;
              if ((outline == *(v5 + 9) || [(UIBezierPath *)outline isEqual:?]) && self->_hasCustomOutline == v5[58])
              {
                shadowPath = self->_shadowPath;
                if ((shadowPath == *(v5 + 10) || [(UIBezierPath *)shadowPath isEqual:?]) && self->_previewMode == *(v5 + 14) && self->_avoidAnimation == v5[59])
                {
                  if (_deferringTokenEqualToToken(self->_shadowProperties, *(v5 + 11)))
                  {
                    v14 = *&self->_overrideStackTransform.c;
                    *&t1.a = *&self->_overrideStackTransform.a;
                    *&t1.c = v14;
                    *&t1.tx = *&self->_overrideStackTransform.tx;
                    v15 = *(v5 + 248);
                    *&v17.a = *(v5 + 232);
                    *&v17.c = v15;
                    *&v17.tx = *(v5 + 264);
                    if (CGAffineTransformEqualToTransform(&t1, &v17))
                    {
                      v11 = 0;
                      if (self->_initialBadgeLocation.x != *(v5 + 18) || self->_initialBadgeLocation.y != *(v5 + 19))
                      {
                        goto LABEL_46;
                      }

                      if (self->_preferredStackOrder == *(v5 + 15) && self->_hiddenDuringDrag == v5[57])
                      {
                        v11 = 0;
                        if (self->_placeholderContentSize3D.width == *(v5 + 26) && self->_placeholderContentSize3D.height == *(v5 + 27))
                        {
                          v11 = self->_placeholderContentSize3D.depth == *(v5 + 28);
                        }

                        goto LABEL_46;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v11 = 0;
LABEL_46:

    goto LABEL_47;
  }

  v11 = 0;
LABEL_47:

  return v11;
}

- (CGPoint)contentOffset
{
  x = self->_contentOffset.x;
  y = self->_contentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGAffineTransform)overrideStackTransform
{
  v3 = *&self[5].b;
  *&retstr->a = *&self[4].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[5].d;
  return self;
}

- (void)setOverrideStackTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->c;
  *&self->_overrideStackTransform.tx = *&transform->tx;
  *&self->_overrideStackTransform.c = v4;
  *&self->_overrideStackTransform.a = v3;
}

- (CGPoint)initialBadgeLocation
{
  x = self->_initialBadgeLocation.x;
  y = self->_initialBadgeLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)originalCenter
{
  x = self->_originalCenter.x;
  y = self->_originalCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)placeholderContentSize3D
{
  width = self->_placeholderContentSize3D.width;
  height = self->_placeholderContentSize3D.height;
  depth = self->_placeholderContentSize3D.depth;
  result.var2 = depth;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- (CGPoint)liftAnchorPoint
{
  x = self->_liftAnchorPoint.x;
  y = self->_liftAnchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)viewScaleFactor
{
  width = self->_viewScaleFactor.width;
  height = self->_viewScaleFactor.height;
  result.height = height;
  result.width = width;
  return result;
}

@end