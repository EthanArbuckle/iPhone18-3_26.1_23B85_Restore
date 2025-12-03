@interface UIPointerStyle
+ (UIPointerStyle)hiddenPointerStyle;
+ (UIPointerStyle)styleWithEffect:(UIPointerEffect *)effect shape:(UIPointerShape *)shape;
+ (UIPointerStyle)styleWithShape:(UIPointerShape *)shape constrainedAxes:(UIAxis)axes;
+ (UIPointerStyle)systemPointerStyle;
+ (id)_makeStyleWithHoverStyle:(id)style view:(id)view convertAutomatic:(BOOL)automatic;
- (BOOL)canTransitionInPlaceToEffectWithDescriptor:(id)descriptor;
- (BOOL)isEqual:(id)equal;
- (BOOL)pointerUnderlapsContent;
- (CGPoint)_contentSlipFactor;
- (CGPoint)_contentSlipMappedToRegionSize:(CGSize)size;
- (CGPoint)_pointerSlipFactor;
- (CGPoint)_pointerSlipMappedToRegionSize:(CGSize)size;
- (NSArray)compatibleDescriptors;
- (NSString)description;
- (UITargetedPreview)targetedPreview;
- (double)_pointerIntensityForMaterialLuminance:(unint64_t)luminance;
- (double)contentScale;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_adaptForNonSystemEffectSupportingEnvironment;
- (void)setEffect:(id)effect;
@end

@implementation UIPointerStyle

+ (id)_makeStyleWithHoverStyle:(id)style view:(id)view convertAutomatic:(BOOL)automatic
{
  sub_1891C4B2C();
  v8 = OBJC_IVAR___UIHoverStyle__effect;
  swift_beginAccess();
  sub_188A53994(style + v8, v18);
  v9 = *(style + OBJC_IVAR___UIHoverStyle__shape + 16);
  v19[0] = *(style + OBJC_IVAR___UIHoverStyle__shape);
  v19[1] = v9;
  v11 = *(style + OBJC_IVAR___UIHoverStyle__shape);
  v10 = *(style + OBJC_IVAR___UIHoverStyle__shape + 16);
  v20[0] = *(style + OBJC_IVAR___UIHoverStyle__shape + 32);
  *(v20 + 9) = *(style + OBJC_IVAR___UIHoverStyle__shape + 41);
  v16[0] = v11;
  v16[1] = v10;
  v17[0] = *(style + OBJC_IVAR___UIHoverStyle__shape + 32);
  *(v17 + 9) = *(style + OBJC_IVAR___UIHoverStyle__shape + 41);
  viewCopy = view;
  sub_188E850C8(v19, &v15);
  v13 = sub_1891EEE28(v18, v16, viewCopy, automatic);

  return v13;
}

+ (UIPointerStyle)styleWithEffect:(UIPointerEffect *)effect shape:(UIPointerShape *)shape
{
  v5 = effect;
  v6 = shape;
  preview = [(UIPointerEffect *)v5 preview];
  if (![(UIPointerEffect *)v5 allowsSanitization])
  {
    v11 = 0;
    goto LABEL_38;
  }

  v8 = v5;
  v9 = v6;
  v10 = v8;
  if (+[_UIPointerAccessibilityEffect shouldApplyAccessibilityEffect])
  {
    v5 = [_UIPointerAccessibilityEffect _effectWithInputEffect:v10];
    v11 = 0;
    preview2 = v10;
LABEL_36:

    goto LABEL_37;
  }

  if (([(UIPointerEffect *)v10 options]& 0x100) != 0)
  {
    preview2 = [(UIPointerEffect *)v10 preview];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    if (v9)
    {
      v15 = v9;
    }

    else
    {
      v15 = preview2;
    }

    [(UIPointerShape *)v15 size];
    *&v18 = _UISizeRespectingTransformsFromPreview(preview2, v16, v17).n128_u64[0];
    v20 = v19;
    v21 = +[_UIPointerSettingsDomain rootSettings];
    sizeRuleSettings = [v21 sizeRuleSettings];

    [sizeRuleSettings explicitRequestMultiplier];
    v24 = v23;
    [sizeRuleSettings genericSizeRuleThreshold];
    v26 = v25;
    [sizeRuleSettings narrowAspectRuleMinorDimensionThreshold];
    v28 = v27;
    [sizeRuleSettings narrowAspectRuleMajorDimensionThreshold];
    v30 = v29;
    [sizeRuleSettings pointerSizeRuleMinorDimensionThreshold];
    v32 = v31;
    [sizeRuleSettings pointerSizeRuleMajorDimensionThreshold];
    v34 = v24 * v30;
    if (v13 == v14)
    {
      v34 = v30;
    }

    else
    {
      v33 = v24 * v33;
    }

    if (v18 <= v28 && v20 <= v34)
    {
      goto LABEL_19;
    }

    v35 = v24 * v26;
    if (v13 == v14)
    {
      v35 = v26;
    }

    v36 = fmax(v18, v20) > v35;
    if (v20 <= v28 && v18 <= v34)
    {
LABEL_19:
      v36 = 0;
    }

    if ((v18 > v32 || v20 > v33) && (v20 > v32 || v18 > v33))
    {

      if (v36)
      {
        v5 = [(UIPointerEffect *)UIPointerHoverEffect effectWithPreview:preview2];
        [(UIPointerEffect *)v5 setPrefersShadow:([(UIPointerEffect *)v10 options]>> 4) & 1];
        [(UIPointerEffect *)v5 set_tintViewTakesOnPointerShape:1];
        v11 = ([(UIPointerEffect *)v10 options]& 0x20) == 0;
LABEL_35:

        goto LABEL_36;
      }
    }

    else
    {
    }

    if (v13 != v14)
    {
      v11 = 0;
      v5 = v10;
      goto LABEL_36;
    }

    v37 = preview2;
    parameters = [(UIPointerShape *)v37 parameters];
    visiblePath = [parameters visiblePath];

    if (visiblePath)
    {
    }

    else
    {
      view = [(UIPointerShape *)v37 view];
      backgroundColor = [view backgroundColor];
      _isOpaque = [backgroundColor _isOpaque];

      if (_isOpaque)
      {
        v43 = UIPointerLiftEffect;
LABEL_34:
        v5 = [(__objc2_class *)v43 effectWithPreview:v37];
        v11 = 0;
        goto LABEL_35;
      }
    }

    v43 = UIPointerHighlightEffect;
    goto LABEL_34;
  }

  v11 = 0;
  v5 = v10;
LABEL_37:

LABEL_38:
  v44 = objc_opt_new();
  [v44 setType:1];
  [v44 setPointerEffect:v5];
  [v44 setOptions:{-[UIPointerEffect options](v5, "options")}];
  [v44 setConstrainedAxes:{-[UIPointerEffect constrainedAxes](v5, "constrainedAxes")}];
  v44[312] = v11;
  if (!v6)
  {
    v53 = v5;
    preview3 = [(UIPointerEffect *)v53 preview];
    parameters2 = [preview3 parameters];
    if ([preview3 _previewMode] == 1)
    {
      if ([parameters2 _isSingleLineText])
      {
        [preview3 size];
        v57 = v56;
        v59 = v58;
        v60 = 0.0;
        v61 = 0.0;
        v62 = 4.0;
LABEL_57:
        v66 = [UIPointerShape shapeWithRoundedRect:v60 cornerRadius:v61, v57, v59, v62];
        goto LABEL_58;
      }

      [parameters2 _setTextPathInsets:{-2.0, -3.0, -2.0, -3.0}];
      [parameters2 _setTextPathCornerRadius:4.0];
      visiblePath2 = [parameters2 visiblePath];
    }

    else
    {
      visiblePath3 = [parameters2 visiblePath];

      if (!visiblePath3)
      {
        settings = [(UIPointerEffect *)v53 settings];
        [settings defaultPointerCornerRadius];
        v69 = v68;

        view2 = [preview3 view];
        [view2 bounds];
        v72 = v71;
        v74 = v73;
        v76 = v75;
        v78 = v77;
        target = [preview3 target];
        [target center];
        v81 = v80;
        v83 = v82;
        target2 = [preview3 target];
        container = [target2 container];
        [container _currentScreenScale];
        UIRectCenteredAboutPointScale(v72, v74, v76, v78, v81, v83, v86);
        v88 = v87;
        v90 = v89;
        v92 = v91;
        v94 = v93;

        view3 = [preview3 view];
        [view3 _cornerRadius];
        v97 = v96;

        if (v97 >= v69)
        {
          v62 = v97;
        }

        else
        {
          v62 = v69;
        }

        v60 = v88;
        v61 = v90;
        v57 = v92;
        v59 = v94;
        goto LABEL_57;
      }

      visiblePath4 = [parameters2 visiblePath];
      visiblePath2 = _UIPathConvertedToPreviewContainerSpace(visiblePath4, preview3);
    }

    v66 = [UIPointerShape shapeWithPath:visiblePath2];

LABEL_58:
    [v44 setPointerShape:v66];

    options = [v44 options];
    options2 = [v44 options];
    if (options)
    {
      v52 = options2 | 0x800;
    }

    else
    {
      v52 = options2 | 0x40;
    }

    v6 = 0;
    goto LABEL_62;
  }

  if (!dyld_program_sdk_at_least() || _UIIsPrivateMainBundle())
  {
    path = [(UIPointerShape *)v6 path];

    if (path)
    {
      path2 = [(UIPointerShape *)v6 path];
      v47 = _UIPathConvertedToPreviewContainerSpace(path2, preview);

      v48 = [UIPointerShape shapeWithPath:v47];

      v6 = v48;
    }
  }

  [v44 setPointerShape:v6];
  if ([v44 options])
  {
    pointerShape = [v44 pointerShape];
    v50 = objc_opt_class();
    v51 = objc_opt_class();

    if (v50 != v51)
    {
      v52 = [v44 options] | 0x800;
LABEL_62:
      [v44 setOptions:v52];
    }
  }

  [(UIPointerEffect *)v5 defaultPointerCornerRadius];
  [(UIPointerShape *)v6 setDefaultCornerRadius:?];

  return v44;
}

+ (UIPointerStyle)styleWithShape:(UIPointerShape *)shape constrainedAxes:(UIAxis)axes
{
  v5 = shape;
  v6 = objc_opt_new();
  [v6 setPointerShape:v5];

  [v6 setType:2];
  [v6 setOptions:1];
  [v6 setConstrainedAxes:axes];

  return v6;
}

+ (UIPointerStyle)hiddenPointerStyle
{
  v2 = objc_opt_new();
  [v2 setType:0];

  return v2;
}

+ (UIPointerStyle)systemPointerStyle
{
  v2 = objc_opt_new();
  [v2 setType:2];
  [v2 setOptions:2049];

  return v2;
}

- (void)setEffect:(id)effect
{
  effectCopy = effect;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIPointerStyle *)self setPointerEffect:effectCopy];
  }
}

- (UITargetedPreview)targetedPreview
{
  pointerEffect = [(UIPointerStyle *)self pointerEffect];
  preview = [pointerEffect preview];

  return preview;
}

- (CGPoint)_pointerSlipFactor
{
  if ([(UIPointerStyle *)self type]!= 1 || ([(UIPointerStyle *)self options]& 1) != 0)
  {
    pointerShape = [(UIPointerStyle *)self pointerShape];
    [pointerShape inherentConstrainedSlip];
    v16 = v15;
    v18 = v17;
  }

  else
  {
    pointerShape = [(UIPointerStyle *)self pointerEffect];
    pointerShape2 = [(UIPointerStyle *)self pointerShape];
    [pointerShape2 size];
    v6 = v5;
    v8 = v7;

    overrideSlipPoints = [pointerShape overrideSlipPoints];

    if (overrideSlipPoints)
    {
      overrideSlipPoints2 = [pointerShape overrideSlipPoints];
      [overrideSlipPoints2 CGPointValue];
      v12 = v11;
      v14 = v13;
    }

    else
    {
      [pointerShape slipFactor];
      v20 = v19;
      v22 = v21;
      [pointerShape maxSlip];
      v12 = fmax(fmin(v6 * v20, v23), 0.0);
      v14 = fmax(fmin(v8 * v22, v23), 0.0);
    }

    v16 = v12 / v6;
    v18 = v14 / v8;
  }

  constrainedAxes = [(UIPointerStyle *)self constrainedAxes];
  v25 = 1.0;
  if (constrainedAxes)
  {
    v26 = v16;
  }

  else
  {
    v26 = 1.0;
  }

  if ((constrainedAxes & 2) != 0)
  {
    v25 = v18;
  }

  result.y = v25;
  result.x = v26;
  return result;
}

- (CGPoint)_contentSlipFactor
{
  v3 = 1.0;
  v4 = 1.0;
  if ([(UIPointerStyle *)self type]== 1)
  {
    if (([(UIPointerStyle *)self options]& 0x200) != 0)
    {
      [(UIPointerStyle *)self _pointerSlipFactor];
      v3 = v10;
      v4 = v11;
    }

    else
    {
      pointerEffect = [(UIPointerStyle *)self pointerEffect];
      [pointerEffect parallaxAmount];
      v7 = v6;

      [(UIPointerStyle *)self _pointerSlipFactor];
      v3 = v7 * v8;
      v4 = v7 * v9;
    }
  }

  constrainedAxes = [(UIPointerStyle *)self constrainedAxes];
  if (constrainedAxes)
  {
    v13 = v3;
  }

  else
  {
    v13 = 1.0;
  }

  if ((constrainedAxes & 2) != 0)
  {
    v14 = v4;
  }

  else
  {
    v14 = 1.0;
  }

  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)_contentSlipMappedToRegionSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(UIPointerStyle *)self _contentSlipFactor];
  v7 = v6;
  v9 = v8;
  if ([(UIPointerStyle *)self type]== 1)
  {
    pointerShape = [(UIPointerStyle *)self pointerShape];
    [pointerShape size];
    v7 = fmin(v7 * v11 / (width * 0.5), 1.0);
    v9 = fmin(v9 * v12 / (height * 0.5), 1.0);
  }

  v13 = v7;
  v14 = v9;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)_pointerSlipMappedToRegionSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(UIPointerStyle *)self _pointerSlipFactor];
  v7 = v6;
  v9 = v8;
  if ([(UIPointerStyle *)self type]== 1 && ([(UIPointerStyle *)self options]& 1) == 0)
  {
    pointerShape = [(UIPointerStyle *)self pointerShape];
    [pointerShape size];
    v7 = fmin(v7 * v11 / (width * 0.5), 1.0);
    v9 = fmin(v9 * v12 / (height * 0.5), 1.0);
  }

  v13 = v7;
  v14 = v9;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)_adaptForNonSystemEffectSupportingEnvironment
{
  if ([(UIPointerStyle *)self type]== 1)
  {
    pointerEffect = [(UIPointerStyle *)self pointerEffect];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      pointerEffect2 = [(UIPointerStyle *)self pointerEffect];
      preview = [pointerEffect2 preview];
      v7 = [(UIPointerEffect *)_UIPointerPencilHighlightEffect effectWithPreview:preview];
      [(UIPointerStyle *)self setPointerEffect:v7];
    }

    pointerEffect3 = [(UIPointerStyle *)self pointerEffect];
    options = [pointerEffect3 options];

    [(UIPointerStyle *)self setOptions:options | 0x8000];
  }
}

- (double)contentScale
{
  v3 = 1.0;
  if (([(UIPointerStyle *)self options]& 0x20) != 0)
  {
    targetedPreview = [(UIPointerStyle *)self targetedPreview];
    if ([(UIPointerStyle *)self pointerMergesWithContent]|| ([(UIPointerStyle *)self options]& 1) != 0)
    {
      [targetedPreview size];
      v7 = v10;
      v9 = v11;
    }

    else
    {
      pointerShape = [(UIPointerStyle *)self pointerShape];
      [pointerShape size];
      v7 = v6;
      v9 = v8;
    }

    v12 = _UISizeRespectingTransformsFromPreview(targetedPreview, v7, v9).n128_f64[0];
    if (v12 >= v13)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    pointerEffect = [(UIPointerStyle *)self pointerEffect];
    [pointerEffect scaleUpPoints];
    v3 = (v14 + v16) / v14;

    if (self->_determineScaleAutomatically)
    {
      targetedPreview2 = [(UIPointerStyle *)self targetedPreview];
      [targetedPreview2 size];
      v19 = v18;
      v21 = v20;
      target = [targetedPreview2 target];
      v23 = target;
      if (target)
      {
        [target transform];
        v25 = v43;
        v24 = v44;
        v27 = v45;
        v26 = v46;
      }

      else
      {
        v26 = 0.0;
        v24 = 0.0;
        v27 = 0.0;
        v25 = 0.0;
      }

      v28 = v21 * v27 + v19 * v25;
      v29 = v21 * v26 + v19 * v24;

      target2 = [targetedPreview2 target];
      container = [target2 container];
      [container bounds];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      v47.origin.x = v33;
      v47.origin.y = v35;
      v47.size.width = v37;
      v47.size.height = v39;
      v40 = CGRectGetWidth(v47) / v28;
      v48.origin.x = v33;
      v48.origin.y = v35;
      v48.size.width = v37;
      v48.size.height = v39;
      v41 = CGRectGetWidth(v48) / v29;
      if (v40 < v41)
      {
        v41 = v40;
      }

      v3 = fmax(fmin(v3, v41), 1.0);
    }
  }

  return v3;
}

- (double)_pointerIntensityForMaterialLuminance:(unint64_t)luminance
{
  pointerShape = [(UIPointerStyle *)self pointerShape];
  v5 = pointerShape;
  if (pointerShape)
  {
    v6 = [pointerShape materialUsage] == 2;
  }

  else
  {
    v6 = 0;
  }

  if (self->_type && !v6)
  {
    [(UIPointerStyle *)self options];
    [(UIPointerStyle *)self pointerMergesWithContent];
  }

  PSIntensityForLuminanceAndUsage();
  v8 = v7;

  return v8;
}

- (BOOL)pointerUnderlapsContent
{
  type = [(UIPointerStyle *)self type];
  if (type)
  {
    LOBYTE(type) = ([(UIPointerStyle *)self options]& 1) == 0;
  }

  return type;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  type = [(UIPointerStyle *)self type];
  if (type > 2)
  {
    v6 = @"<unknown>";
  }

  else
  {
    v6 = off_1E7117CA0[type];
  }

  return [v3 stringWithFormat:@"<%@: %p; type = %@>", v4, self, v6];
}

- (NSArray)compatibleDescriptors
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (BOOL)canTransitionInPlaceToEffectWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if ([(UIPointerStyle *)self type]== 1)
  {
    targetedPreview = [(UIPointerStyle *)self targetedPreview];
    view = [targetedPreview view];
    targetedPreview2 = [descriptorCopy targetedPreview];
    view2 = [targetedPreview2 view];
    v9 = [view isEqual:view2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setType:{-[UIPointerStyle type](self, "type")}];
  [v4 setOptions:{-[UIPointerStyle options](self, "options")}];
  [v4 setConstrainedAxes:{-[UIPointerStyle constrainedAxes](self, "constrainedAxes")}];
  pointerEffect = [(UIPointerStyle *)self pointerEffect];
  v6 = [pointerEffect copy];
  [v4 setPointerEffect:v6];

  pointerShape = [(UIPointerStyle *)self pointerShape];
  v8 = [pointerShape copy];
  [v4 setPointerShape:v8];

  v4[312] = self->_determineScaleAutomatically;
  [v4 set_suppressesMirroring:{-[UIPointerStyle _suppressesMirroring](self, "_suppressesMirroring")}];
  accessories = [(UIPointerStyle *)self accessories];
  [v4 setAccessories:accessories];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = [v5 type];
      if (type != -[UIPointerStyle type](self, "type") || (v7 = [v5 options], v7 != -[UIPointerStyle options](self, "options")) || (v8 = objc_msgSend(v5, "constrainedAxes"), v8 != -[UIPointerStyle constrainedAxes](self, "constrainedAxes")))
      {
        LOBYTE(v14) = 0;
LABEL_14:

        goto LABEL_15;
      }

      pointerEffect = [v5 pointerEffect];
      pointerEffect2 = [(UIPointerStyle *)self pointerEffect];
      v11 = pointerEffect;
      v12 = pointerEffect2;
      v13 = v12;
      if (v11 == v12)
      {
      }

      else
      {
        LOBYTE(v14) = 0;
        v15 = v12;
        v16 = v11;
        if (!v11 || !v12)
        {
          goto LABEL_27;
        }

        v17 = [v11 isEqual:v12];

        if (!v17)
        {
          LOBYTE(v14) = 0;
LABEL_28:

          goto LABEL_14;
        }
      }

      pointerShape = [v5 pointerShape];
      pointerShape2 = [(UIPointerStyle *)self pointerShape];
      v16 = pointerShape;
      v21 = pointerShape2;
      v15 = v21;
      if (v16 == v21)
      {
      }

      else
      {
        LOBYTE(v14) = 0;
        accessories2 = v21;
        accessories = v16;
        if (!v16 || !v21)
        {
          goto LABEL_25;
        }

        v14 = [v16 isEqual:v21];

        if (!v14)
        {
          goto LABEL_27;
        }
      }

      if (v5[312] != self->_determineScaleAutomatically)
      {
        LOBYTE(v14) = 0;
        goto LABEL_27;
      }

      accessories = [v5 accessories];
      accessories2 = [(UIPointerStyle *)self accessories];
      LOBYTE(v14) = _deferringTokenEqualToToken(accessories, accessories2);
LABEL_25:

LABEL_27:
      goto LABEL_28;
    }

    LOBYTE(v14) = 0;
  }

LABEL_15:

  return v14;
}

- (unint64_t)hash
{
  type = [(UIPointerStyle *)self type];
  v4 = [(UIPointerStyle *)self options]^ type;
  v5 = v4 ^ [(UIPointerStyle *)self constrainedAxes];
  pointerEffect = [(UIPointerStyle *)self pointerEffect];
  v7 = [pointerEffect hash];
  pointerShape = [(UIPointerStyle *)self pointerShape];
  v9 = v5 ^ v7 ^ [pointerShape hash];
  determineScaleAutomatically = self->_determineScaleAutomatically;
  accessories = [(UIPointerStyle *)self accessories];
  v12 = v9 ^ [accessories hash];

  return v12 ^ determineScaleAutomatically;
}

@end