@interface PUParallaxLayerLayoutInfo
- (BOOL)isEqual:(id)a3;
- (CGAffineTransform)adaptiveLayoutTransform;
- (CGAffineTransform)additionalContentTransform;
- (CGAffineTransform)additionalTransform;
- (CGPoint)parallaxVector;
- (CGRect)containerFrame;
- (CGRect)headroomFrame;
- (CGRect)settlingEffectFrame;
- (CGRect)viewFrameForLayerFrame:(CGRect)a3;
- (CGRect)visibleFrame;
- (id)description;
- (id)initWithDeviceOrientation:(void *)a3 containerFrame:(char)a4 visibleFrame:(void *)a5 settlingEffectFrame:(char)a6 headroomFrame:(void *)a7 headroomVisibilityAmount:(void *)a8 styleIsHighKey:(double)a9 clockAreaLuminance:(double)a10 primaryStyleColor:(double)a11 canApplyParallax:(double)a12 parallaxVector:(CGFloat)a13 parallaxAmount:(CGFloat)a14 visibilityAmount:(CGFloat)a15 visibilityEdge:(CGFloat)a16 visibilityEffects:(void *)a17 animateChanges:(void *)a18 adaptiveLayoutTransform:(void *)a19 animationDuration:(void *)a20 animationCurve:(void *)a21 wantsLegibilityVignette:(void *)a22 legibilityVignetteVisible:(void *)a23 bottomContentExtensionEnabled:(void *)a24;
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
  v4 = [(PUParallaxLayerLayoutInfo *)self deviceOrientation];

  return PUPosterAdditionalTransformForDeviceOrientation(v4, retstr);
}

- (CGRect)viewFrameForLayerFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v63) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PUParallaxLayerLayoutInfo *)self deviceOrientation];
      if (v6 != [(PUParallaxLayerLayoutInfo *)v5 deviceOrientation])
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

      v55 = [(PUParallaxLayerLayoutInfo *)self styleIsHighKey];
      if (v55 != [(PUParallaxLayerLayoutInfo *)v5 styleIsHighKey])
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

      v59 = [(PUParallaxLayerLayoutInfo *)self primaryStyleColor];
      v60 = [(PUParallaxLayerLayoutInfo *)v5 primaryStyleColor];
      v61 = v60;
      if (v59 == v60)
      {
      }

      else
      {
        v62 = [v59 isEqual:v60];

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

      v64 = [(PUParallaxLayerLayoutInfo *)self canApplyParallax];
      if (v64 != [(PUParallaxLayerLayoutInfo *)v5 canApplyParallax])
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

      v78 = [(PUParallaxLayerLayoutInfo *)self visibilityEdge];
      if (v78 != [(PUParallaxLayerLayoutInfo *)v5 visibilityEdge])
      {
        goto LABEL_18;
      }

      v79 = [(PUParallaxLayerLayoutInfo *)self visibilityEffects];
      if (v79 != [(PUParallaxLayerLayoutInfo *)v5 visibilityEffects])
      {
        goto LABEL_18;
      }

      v80 = [(PUParallaxLayerLayoutInfo *)self animateChanges];
      if (v80 != [(PUParallaxLayerLayoutInfo *)v5 animateChanges])
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

      v96 = [(PUParallaxLayerLayoutInfo *)self animationCurve];
      v86 = [v96 cubicTimingParameters];
      v87 = [(PUParallaxLayerLayoutInfo *)v5 animationCurve];
      v88 = [v87 cubicTimingParameters];
      if ([v86 isEqual:v88])
      {
      }

      else
      {
        v89 = [(PUParallaxLayerLayoutInfo *)self animationCurve];
        v90 = [v89 springTimingParameters];
        v91 = [(PUParallaxLayerLayoutInfo *)v5 animationCurve];
        v92 = [v91 springTimingParameters];
        v95 = [v90 isEqual:v92];

        if ((v95 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v93 = [(PUParallaxLayerLayoutInfo *)self legibilityVignetteVisible];
      if (v93 == [(PUParallaxLayerLayoutInfo *)v5 legibilityVignetteVisible])
      {
        v94 = [(PUParallaxLayerLayoutInfo *)self bottomContentExtensionEnabled];
        v63 = v94 ^ [(PUParallaxLayerLayoutInfo *)v5 bottomContentExtensionEnabled]^ 1;
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

- (id)initWithDeviceOrientation:(void *)a3 containerFrame:(char)a4 visibleFrame:(void *)a5 settlingEffectFrame:(char)a6 headroomFrame:(void *)a7 headroomVisibilityAmount:(void *)a8 styleIsHighKey:(double)a9 clockAreaLuminance:(double)a10 primaryStyleColor:(double)a11 canApplyParallax:(double)a12 parallaxVector:(CGFloat)a13 parallaxAmount:(CGFloat)a14 visibilityAmount:(CGFloat)a15 visibilityEdge:(CGFloat)a16 visibilityEffects:(void *)a17 animateChanges:(void *)a18 adaptiveLayoutTransform:(void *)a19 animationDuration:(void *)a20 animationCurve:(void *)a21 wantsLegibilityVignette:(void *)a22 legibilityVignetteVisible:(void *)a23 bottomContentExtensionEnabled:(void *)a24
{
  v52 = a5;
  v53 = a34;
  v62.origin.x = a13;
  v62.origin.y = a14;
  v62.size.width = a15;
  v62.size.height = a16;
  if (CGRectIsEmpty(v62))
  {
    v59 = [MEMORY[0x1E696AAA8] currentHandler];
    [v59 handleFailureInMethod:a2 object:a1 file:@"PUParallaxLayerLayoutInfo.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"!CGRectIsEmpty(visibleFrame)"}];
  }

  v61.receiver = a1;
  v61.super_class = PUParallaxLayerLayoutInfo;
  v54 = objc_msgSendSuper2(&v61, sel_init);
  v55 = v54;
  if (v54)
  {
    v54[2] = a3;
    *(v54 + 14) = a9;
    *(v54 + 15) = a10;
    *(v54 + 16) = a11;
    *(v54 + 17) = a12;
    *(v54 + 18) = a13;
    *(v54 + 19) = a14;
    *(v54 + 20) = a15;
    *(v54 + 21) = a16;
    v54[22] = a17;
    v54[23] = a18;
    v54[24] = a19;
    v54[25] = a20;
    v54[26] = a21;
    v54[27] = a22;
    v54[28] = a23;
    v54[29] = a24;
    *(v54 + 8) = a4;
    v54[3] = a26;
    objc_storeStrong(v54 + 4, a5);
    *(v55 + 9) = a6;
    v55[12] = a27;
    v55[13] = a28;
    v55[5] = a25;
    v55[6] = a29;
    v55[7] = a30;
    v55[8] = a7;
    v55[9] = a8;
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