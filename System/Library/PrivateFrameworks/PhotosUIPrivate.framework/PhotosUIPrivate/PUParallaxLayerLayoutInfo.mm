@interface PUParallaxLayerLayoutInfo
- (BOOL)isEqual:(id)equal;
- (CGAffineTransform)adaptiveLayoutTransform;
- (CGAffineTransform)additionalContentTransform;
- (CGAffineTransform)additionalTransform;
- (CGPoint)parallaxVector;
- (CGRect)containerFrame;
- (CGRect)headroomFrame;
- (CGRect)settlingEffectFrame;
- (CGRect)viewFrameForLayerFrame:(CGRect)frame;
- (CGRect)visibleFrame;
- (id)description;
- (id)initWithDeviceOrientation:(void *)orientation containerFrame:(char)frame visibleFrame:(void *)visibleFrame settlingEffectFrame:(char)effectFrame headroomFrame:(void *)headroomFrame headroomVisibilityAmount:(void *)amount styleIsHighKey:(double)key clockAreaLuminance:(double)self0 primaryStyleColor:(double)self1 canApplyParallax:(double)self2 parallaxVector:(CGFloat)self3 parallaxAmount:(CGFloat)self4 visibilityAmount:(CGFloat)self5 visibilityEdge:(CGFloat)self6 visibilityEffects:(void *)self7 animateChanges:(void *)self8 adaptiveLayoutTransform:(void *)self9 animationDuration:(void *)duration animationCurve:(void *)curve wantsLegibilityVignette:(void *)vignette legibilityVignetteVisible:(void *)visible bottomContentExtensionEnabled:(void *)enabled;
@end

@implementation PUParallaxLayerLayoutInfo

- (CGAffineTransform)adaptiveLayoutTransform
{
  v3 = *&self[5].c;
  *&retstr->a = *&self[5].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[5].tx;
  return self;
}

- (CGPoint)parallaxVector
{
  x = self->_parallaxVector.x;
  y = self->_parallaxVector.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)headroomFrame
{
  x = self->_headroomFrame.origin.x;
  y = self->_headroomFrame.origin.y;
  width = self->_headroomFrame.size.width;
  height = self->_headroomFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)settlingEffectFrame
{
  x = self->_settlingEffectFrame.origin.x;
  y = self->_settlingEffectFrame.origin.y;
  width = self->_settlingEffectFrame.size.width;
  height = self->_settlingEffectFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)visibleFrame
{
  x = self->_visibleFrame.origin.x;
  y = self->_visibleFrame.origin.y;
  width = self->_visibleFrame.size.width;
  height = self->_visibleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)containerFrame
{
  x = self->_containerFrame.origin.x;
  y = self->_containerFrame.origin.y;
  width = self->_containerFrame.size.width;
  height = self->_containerFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)description
{
  v21 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  [(PUParallaxLayerLayoutInfo *)self containerFrame];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v23);
  [(PUParallaxLayerLayoutInfo *)self visibleFrame];
  v5 = CGRectCreateDictionaryRepresentation(v24);
  [(PUParallaxLayerLayoutInfo *)self settlingEffectFrame];
  v6 = CGRectCreateDictionaryRepresentation(v25);
  if ([(PUParallaxLayerLayoutInfo *)self canApplyParallax])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [(PUParallaxLayerLayoutInfo *)self parallaxVector];
  v9 = v8;
  [(PUParallaxLayerLayoutInfo *)self parallaxVector];
  v11 = v10;
  [(PUParallaxLayerLayoutInfo *)self parallaxAmount];
  v13 = v12;
  [(PUParallaxLayerLayoutInfo *)self visibilityAmount];
  v15 = v14;
  if ([(PUParallaxLayerLayoutInfo *)self animateChanges])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  if ([(PUParallaxLayerLayoutInfo *)self wantsBottomContentExtension])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  if ([(PUParallaxLayerLayoutInfo *)self wantsLegibilityVignette])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v19 = [v21 stringWithFormat:@"<%@:%p container=%@ visible=%@ settling=%@ canDoParallax=%@ parallaxVec=(%.2f, %.2f) parallaxAmt=%.2f visiblityAmt=%.2f animate=%@ wantsBottomContentExtension=%@ wantsLegibilityVignette=%@>", v3, self, DictionaryRepresentation, v5, v6, v7, v9, v11, v13, v15, v16, v17, v18];

  return v19;
}

- (CGAffineTransform)additionalContentTransform
{
  v5 = MEMORY[0x1E695EFD0];
  v6 = *MEMORY[0x1E695EFD0];
  v7 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v7;
  v8 = *(v5 + 32);
  *&retstr->tx = v8;
  *&t1.a = v6;
  *&t1.c = v7;
  *&t1.tx = v8;
  v9 = *&self->_adaptiveLayoutTransform.c;
  *&v15.a = *&self->_adaptiveLayoutTransform.a;
  *&v15.c = v9;
  *&v15.tx = *&self->_adaptiveLayoutTransform.tx;
  CGAffineTransformConcat(retstr, &t1, &v15);
  result = [(PUParallaxLayerLayoutInfo *)self deviceOrientation];
  if (result >= 3)
  {
    [(PUParallaxLayerLayoutInfo *)self containerFrame];
    PXSizeTranspose();
    PXSizeSubtract();
    v13 = *&retstr->c;
    *&v15.a = *&retstr->a;
    *&v15.c = v13;
    *&v15.tx = *&retstr->tx;
    result = CGAffineTransformTranslate(&t1, &v15, v11 * 0.5, v12 * 0.5);
    v14 = *&t1.c;
    *&retstr->a = *&t1.a;
    *&retstr->c = v14;
    *&retstr->tx = *&t1.tx;
  }

  return result;
}

- (CGAffineTransform)additionalTransform
{
  deviceOrientation = [(PUParallaxLayerLayoutInfo *)self deviceOrientation];

  return PUPosterAdditionalTransformForDeviceOrientation(deviceOrientation, retstr);
}

- (CGRect)viewFrameForLayerFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(PUParallaxLayerLayoutInfo *)self visibleFrame];
  v12 = x - v11;
  v13 = 0.0;
  v14 = 0.0;
  if (v9 != 0.0)
  {
    v12 = v12 / v9;
    v14 = width / v9;
  }

  v15 = y - v8;
  if (v10 != 0.0)
  {
    v15 = v15 / v10;
    v13 = height / v10;
  }

  [(PUParallaxLayerLayoutInfo *)self containerFrame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  if (([(PUParallaxLayerLayoutInfo *)self deviceOrientation]- 3) <= 1)
  {
    PXRectTransposed();
    v17 = v24;
    v19 = v25;
    v21 = v26;
    v23 = v27;
  }

  v28 = v17 + v12 * v21;
  v29 = v19 + v15 * v23;
  v30 = v14 * v21;
  v31 = v13 * v23;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v63) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      deviceOrientation = [(PUParallaxLayerLayoutInfo *)self deviceOrientation];
      if (deviceOrientation != [(PUParallaxLayerLayoutInfo *)v5 deviceOrientation])
      {
        goto LABEL_18;
      }

      [(PUParallaxLayerLayoutInfo *)self containerFrame];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      [(PUParallaxLayerLayoutInfo *)v5 containerFrame];
      v103.origin.x = v15;
      v103.origin.y = v16;
      v103.size.width = v17;
      v103.size.height = v18;
      v99.origin.x = v8;
      v99.origin.y = v10;
      v99.size.width = v12;
      v99.size.height = v14;
      if (!CGRectEqualToRect(v99, v103))
      {
        goto LABEL_18;
      }

      [(PUParallaxLayerLayoutInfo *)self visibleFrame];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      [(PUParallaxLayerLayoutInfo *)v5 visibleFrame];
      v104.origin.x = v27;
      v104.origin.y = v28;
      v104.size.width = v29;
      v104.size.height = v30;
      v100.origin.x = v20;
      v100.origin.y = v22;
      v100.size.width = v24;
      v100.size.height = v26;
      if (!CGRectEqualToRect(v100, v104))
      {
        goto LABEL_18;
      }

      [(PUParallaxLayerLayoutInfo *)self settlingEffectFrame];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;
      [(PUParallaxLayerLayoutInfo *)v5 settlingEffectFrame];
      v105.origin.x = v39;
      v105.origin.y = v40;
      v105.size.width = v41;
      v105.size.height = v42;
      v101.origin.x = v32;
      v101.origin.y = v34;
      v101.size.width = v36;
      v101.size.height = v38;
      if (!CGRectEqualToRect(v101, v105))
      {
        goto LABEL_18;
      }

      [(PUParallaxLayerLayoutInfo *)self headroomFrame];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;
      [(PUParallaxLayerLayoutInfo *)v5 headroomFrame];
      v106.origin.x = v51;
      v106.origin.y = v52;
      v106.size.width = v53;
      v106.size.height = v54;
      v102.origin.x = v44;
      v102.origin.y = v46;
      v102.size.width = v48;
      v102.size.height = v50;
      if (!CGRectEqualToRect(v102, v106))
      {
        goto LABEL_18;
      }

      styleIsHighKey = [(PUParallaxLayerLayoutInfo *)self styleIsHighKey];
      if (styleIsHighKey != [(PUParallaxLayerLayoutInfo *)v5 styleIsHighKey])
      {
        goto LABEL_18;
      }

      [(PUParallaxLayerLayoutInfo *)self clockAreaLuminance];
      v57 = v56;
      [(PUParallaxLayerLayoutInfo *)v5 clockAreaLuminance];
      if (v57 != v58)
      {
        goto LABEL_18;
      }

      primaryStyleColor = [(PUParallaxLayerLayoutInfo *)self primaryStyleColor];
      primaryStyleColor2 = [(PUParallaxLayerLayoutInfo *)v5 primaryStyleColor];
      v61 = primaryStyleColor2;
      if (primaryStyleColor == primaryStyleColor2)
      {
      }

      else
      {
        v62 = [primaryStyleColor isEqual:primaryStyleColor2];

        if ((v62 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      [(PUParallaxLayerLayoutInfo *)self headroomVisibilityAmount];
      [(PUParallaxLayerLayoutInfo *)v5 headroomVisibilityAmount];
      if (!PXFloatApproximatelyEqualToFloat())
      {
        goto LABEL_18;
      }

      canApplyParallax = [(PUParallaxLayerLayoutInfo *)self canApplyParallax];
      if (canApplyParallax != [(PUParallaxLayerLayoutInfo *)v5 canApplyParallax])
      {
        goto LABEL_18;
      }

      [(PUParallaxLayerLayoutInfo *)self parallaxVector];
      v67 = v66;
      v69 = v68;
      [(PUParallaxLayerLayoutInfo *)v5 parallaxVector];
      LOBYTE(v63) = 0;
      if (v67 != v71 || v69 != v70)
      {
        goto LABEL_19;
      }

      [(PUParallaxLayerLayoutInfo *)self parallaxAmount];
      v73 = v72;
      [(PUParallaxLayerLayoutInfo *)v5 parallaxAmount];
      if (vabdd_f64(v73, v74) > 0.00000999999975)
      {
        goto LABEL_18;
      }

      [(PUParallaxLayerLayoutInfo *)self visibilityAmount];
      v76 = v75;
      [(PUParallaxLayerLayoutInfo *)v5 visibilityAmount];
      if (vabdd_f64(v76, v77) > 0.00000999999975)
      {
        goto LABEL_18;
      }

      visibilityEdge = [(PUParallaxLayerLayoutInfo *)self visibilityEdge];
      if (visibilityEdge != [(PUParallaxLayerLayoutInfo *)v5 visibilityEdge])
      {
        goto LABEL_18;
      }

      visibilityEffects = [(PUParallaxLayerLayoutInfo *)self visibilityEffects];
      if (visibilityEffects != [(PUParallaxLayerLayoutInfo *)v5 visibilityEffects])
      {
        goto LABEL_18;
      }

      animateChanges = [(PUParallaxLayerLayoutInfo *)self animateChanges];
      if (animateChanges != [(PUParallaxLayerLayoutInfo *)v5 animateChanges])
      {
        goto LABEL_18;
      }

      v81 = *&self->_adaptiveLayoutTransform.c;
      *&t1.a = *&self->_adaptiveLayoutTransform.a;
      *&t1.c = v81;
      *&t1.tx = *&self->_adaptiveLayoutTransform.tx;
      v82 = *&v5->_adaptiveLayoutTransform.c;
      *&t2.a = *&v5->_adaptiveLayoutTransform.a;
      *&t2.c = v82;
      *&t2.tx = *&v5->_adaptiveLayoutTransform.tx;
      if (!CGAffineTransformEqualToTransform(&t1, &t2))
      {
        goto LABEL_18;
      }

      [(PUParallaxLayerLayoutInfo *)self animationDuration];
      v84 = v83;
      [(PUParallaxLayerLayoutInfo *)v5 animationDuration];
      if (vabdd_f64(v84, v85) > 0.00000999999975)
      {
        goto LABEL_18;
      }

      animationCurve = [(PUParallaxLayerLayoutInfo *)self animationCurve];
      cubicTimingParameters = [animationCurve cubicTimingParameters];
      animationCurve2 = [(PUParallaxLayerLayoutInfo *)v5 animationCurve];
      cubicTimingParameters2 = [animationCurve2 cubicTimingParameters];
      if ([cubicTimingParameters isEqual:cubicTimingParameters2])
      {
      }

      else
      {
        animationCurve3 = [(PUParallaxLayerLayoutInfo *)self animationCurve];
        springTimingParameters = [animationCurve3 springTimingParameters];
        animationCurve4 = [(PUParallaxLayerLayoutInfo *)v5 animationCurve];
        springTimingParameters2 = [animationCurve4 springTimingParameters];
        v95 = [springTimingParameters isEqual:springTimingParameters2];

        if ((v95 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      legibilityVignetteVisible = [(PUParallaxLayerLayoutInfo *)self legibilityVignetteVisible];
      if (legibilityVignetteVisible == [(PUParallaxLayerLayoutInfo *)v5 legibilityVignetteVisible])
      {
        bottomContentExtensionEnabled = [(PUParallaxLayerLayoutInfo *)self bottomContentExtensionEnabled];
        v63 = bottomContentExtensionEnabled ^ [(PUParallaxLayerLayoutInfo *)v5 bottomContentExtensionEnabled]^ 1;
        goto LABEL_19;
      }

LABEL_18:
      LOBYTE(v63) = 0;
LABEL_19:

      goto LABEL_20;
    }

    LOBYTE(v63) = 0;
  }

LABEL_20:

  return v63;
}

- (id)initWithDeviceOrientation:(void *)orientation containerFrame:(char)frame visibleFrame:(void *)visibleFrame settlingEffectFrame:(char)effectFrame headroomFrame:(void *)headroomFrame headroomVisibilityAmount:(void *)amount styleIsHighKey:(double)key clockAreaLuminance:(double)self0 primaryStyleColor:(double)self1 canApplyParallax:(double)self2 parallaxVector:(CGFloat)self3 parallaxAmount:(CGFloat)self4 visibilityAmount:(CGFloat)self5 visibilityEdge:(CGFloat)self6 visibilityEffects:(void *)self7 animateChanges:(void *)self8 adaptiveLayoutTransform:(void *)self9 animationDuration:(void *)duration animationCurve:(void *)curve wantsLegibilityVignette:(void *)vignette legibilityVignetteVisible:(void *)visible bottomContentExtensionEnabled:(void *)enabled
{
  visibleFrameCopy = visibleFrame;
  v53 = a34;
  v62.origin.x = vector;
  v62.origin.y = parallaxAmount;
  v62.size.width = visibilityAmount;
  v62.size.height = edge;
  if (CGRectIsEmpty(v62))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUParallaxLayerLayoutInfo.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"!CGRectIsEmpty(visibleFrame)"}];
  }

  v61.receiver = self;
  v61.super_class = PUParallaxLayerLayoutInfo;
  v54 = objc_msgSendSuper2(&v61, sel_init);
  v55 = v54;
  if (v54)
  {
    v54[2] = orientation;
    *(v54 + 14) = key;
    *(v54 + 15) = luminance;
    *(v54 + 16) = color;
    *(v54 + 17) = parallax;
    *(v54 + 18) = vector;
    *(v54 + 19) = parallaxAmount;
    *(v54 + 20) = visibilityAmount;
    *(v54 + 21) = edge;
    v54[22] = effects;
    v54[23] = changes;
    v54[24] = transform;
    v54[25] = duration;
    v54[26] = curve;
    v54[27] = vignette;
    v54[28] = visible;
    v54[29] = enabled;
    *(v54 + 8) = frame;
    v54[3] = a26;
    objc_storeStrong(v54 + 4, visibleFrame);
    *(v55 + 9) = effectFrame;
    v55[12] = a27;
    v55[13] = a28;
    v55[5] = a25;
    v55[6] = a29;
    v55[7] = a30;
    v55[8] = headroomFrame;
    v55[9] = amount;
    *(v55 + 10) = a31;
    v56 = *a32;
    v57 = a32[2];
    *(v55 + 16) = a32[1];
    *(v55 + 17) = v57;
    *(v55 + 15) = v56;
    v55[10] = a33;
    objc_storeStrong(v55 + 11, a34);
    *(v55 + 12) = a35;
    *(v55 + 11) = a36;
    *(v55 + 13) = a37;
  }

  return v55;
}

@end