@interface CALayer(TSDAdditions)
- (CGFloat)transform3DByApplyingAnimation:()TSDAdditions atTime:offset:parentFrame:animationCache:;
- (CGFloat)transformToScale:()TSDAdditions aroundBoundsPoint:afterOffset:;
- (CGImage)newRasterizedImageRef;
- (double)center;
- (double)durationOfAllAnimations;
- (double)frameIncludingSublayers;
- (double)opacityByApplyingAnimation:()TSDAdditions atTime:animationCache:;
- (double)transformToScale:()TSDAdditions aroundAnchorPoint:afterOffset:;
- (id)layerByAddingReflectionWithHeight:()TSDAdditions startOpacity:;
- (long)p_perspectiveZDistanceUsingSize:()TSDAdditions;
- (uint64_t)addDragRotationAnimationWithDelta:()TSDAdditions;
- (uint64_t)addFlipTransitionAnimationToLayer:()TSDAdditions;
- (uint64_t)addJiggleAnimationWithDuration:()TSDAdditions angle:;
- (uint64_t)addPerspectiveProjection;
- (uint64_t)addPerspectiveSublayerProjectionUsingScreenSize:()TSDAdditions;
- (uint64_t)addPopInAnimation:()TSDAdditions;
- (uint64_t)addPopOutAnimation:()TSDAdditions;
- (uint64_t)addPulseAnimation;
- (uint64_t)addReflectionSubLayerWithHeight:()TSDAdditions startOpacity:;
- (uint64_t)addResetAnimationWithDelegate:()TSDAdditions;
- (uint64_t)addRotateInAnimationWithDuration:()TSDAdditions delay:;
- (uint64_t)addSproingAnimationFromPoint:()TSDAdditions;
- (uint64_t)addWaveAnimationWithScale:()TSDAdditions offset:zPosition:addPerspectiveProjection:;
- (uint64_t)addZoomAnimation;
- (uint64_t)addZoomAnimationFromPoint:()TSDAdditions startingScale:;
- (uint64_t)addZoomDownAnimation;
- (uint64_t)addZoomDownAnimationFromPoint:()TSDAdditions endingScale:delay:;
- (uint64_t)animationDidStop:()TSDAdditions finished:;
- (uint64_t)pause;
- (uint64_t)pauseAtTime:()TSDAdditions;
- (uint64_t)removeAllAnimationsOnLayerTree;
- (uint64_t)removePulseAnimation;
- (uint64_t)removeWaveAnimationAnimated:()TSDAdditions;
- (uint64_t)resume;
- (uint64_t)resumeAtTime:()TSDAdditions;
- (uint64_t)scale:()TSDAdditions aroundAnchorPoint:afterOffset:;
- (uint64_t)scale:()TSDAdditions aroundBoundsPoint:afterOffset:;
- (uint64_t)setIfDifferentFrame:()TSDAdditions orTransform:;
- (void)addDistortAnimationWithVector:()TSDAdditions;
- (void)addRippleAnimationFromPosition:()TSDAdditions withScale:addPerspectiveProjection:;
- (void)bakedLayer;
@end

@implementation CALayer(TSDAdditions)

- (uint64_t)setIfDifferentFrame:()TSDAdditions orTransform:
{
  if ((TSDRectHasNaNComponents() & 1) != 0 || (v11 = a6[1], *&t1.a = *a6, *&t1.c = v11, *&t1.tx = a6[2], TSDTransformHasNaNComponents()))
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CALayer(TSDAdditions) setIfDifferentFrame:orTransform:]"];
    return [currentHandler handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/CALayerAdditions.mm"), 74, @"Attempting to set frame or transform on layer with NaN values."}];
  }

  else
  {
    [self anchorPoint];
    v17 = TSDPointFromNormalizedRect(v15, v16, a2, a3, a4);
    v19 = v18;
    v20 = TSDRectWithSize();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    [self position];
    if (v28 != v17 || v27 != v19)
    {
      [self setPosition:{v17, v19}];
    }

    [self bounds];
    v34.origin.x = v20;
    v34.origin.y = v22;
    v34.size.width = v24;
    v34.size.height = v26;
    if (!CGRectEqualToRect(v33, v34))
    {
      [self setBounds:{v20, v22, v24, v26}];
    }

    if (self)
    {
      [self affineTransform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    v29 = a6[1];
    *&v31.a = *a6;
    *&v31.c = v29;
    *&v31.tx = a6[2];
    result = CGAffineTransformEqualToTransform(&t1, &v31);
    if ((result & 1) == 0)
    {
      v30 = a6[1];
      *&t1.a = *a6;
      *&t1.c = v30;
      *&t1.tx = a6[2];
      return [self setAffineTransform:&t1];
    }
  }

  return result;
}

- (id)layerByAddingReflectionWithHeight:()TSDAdditions startOpacity:
{
  if (a2 < 0.0 || a2 > 1.0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CALayer(TSDAdditions) layerByAddingReflectionWithHeight:startOpacity:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/CALayerAdditions.mm"), 94, @"Height should be in unit coordinate space [0, 1]!"}];
  }

  if (a2 == 0.0)
  {
    v9 = [self copy];

    return v9;
  }

  else
  {
    [self frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17 * a2;
    v19 = (v17 * a2);
    v20 = v17 + v19;
    newRasterizedImageRef = [self newRasterizedImageRef];
    v22 = TSDBitmapContextCreate(3, v16);
    if (v22)
    {
      v23 = v22;
      v24 = v18;
      CGContextTranslateCTM(v22, 0.0, v19);
      [self bounds];
      CGContextDrawImage(v23, v38, newRasterizedImageRef);
      CGContextScaleCTM(v23, 1.0, -1.0);
      [self bounds];
      CGContextDrawImage(v23, v39, newRasterizedImageRef);
      Data = CGBitmapContextGetData(v23);
      BytesPerRow = CGBitmapContextGetBytesPerRow(v23);
      v27 = v18 - 1;
      if (v18 >= 1)
      {
        v28 = BytesPerRow;
        v29 = 0;
        do
        {
          v30 = pow((v27 - v29) / v27, 1.8);
          [self frame];
          if (v28 >= 1)
          {
            v32 = v31 + v29;
            v33 = &Data[v28 * v32];
            v34 = v28;
            do
            {
              LOBYTE(v32) = *v33;
              v32 = v30 * a3 * *&v32;
              *v33++ = v32;
              --v34;
            }

            while (v34);
          }

          ++v29;
        }

        while (v29 != v24);
      }

      Image = CGBitmapContextCreateImage(v23);
      CGContextRelease(v23);
    }

    else
    {
      Image = 0;
    }

    CGImageRelease(newRasterizedImageRef);
    layer = [MEMORY[0x277CD9ED0] layer];
    [layer setFrame:{v12, v14, v16, v20}];
    [layer setContents:Image];
    CGImageRelease(Image);
    return layer;
  }
}

- (uint64_t)addReflectionSubLayerWithHeight:()TSDAdditions startOpacity:
{
  v5 = result;
  if (a2 < 0.0 || a2 > 1.0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CALayer(TSDAdditions) addReflectionSubLayerWithHeight:startOpacity:]"];
    result = [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/CALayerAdditions.mm"), 150, @"Height should be in unit coordinate space [0, 1]!"}];
  }

  if (a2 != 0.0)
  {
    layer = [MEMORY[0x277CD9ED0] layer];
    [v5 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [v5 contentsRect];
    v48 = v18;
    v49 = v19;
    v51.origin.x = v11;
    v51.origin.y = v13;
    v51.size.width = v15;
    v51.size.height = v17;
    CGRectGetMinX(v51);
    v52.origin.x = v11;
    v52.origin.y = v13;
    v52.size.width = v15;
    v52.size.height = v17;
    CGRectGetMaxX(v52);
    TSUMix();
    v21 = v20;
    v53.origin.x = v11;
    v53.origin.y = v13;
    v53.size.width = v15;
    v53.size.height = v17;
    CGRectGetMinY(v53);
    v54.origin.x = v11;
    v54.origin.y = v13;
    v54.size.width = v15;
    v54.size.height = v17;
    CGRectGetMaxY(v54);
    TSUMix();
    v23 = TSDRoundedRect(v21, v22, v15 * v49, v17 * v48 * a2);
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = v28;
    v31 = v26;
    v32 = 4 * v26;
    v33 = malloc_type_calloc(v32, v28, 0x100004077774924uLL);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v35 = CGBitmapContextCreate(v33, v31, v30, 8uLL, v32, DeviceRGB, 2u);
    CGColorSpaceRelease(DeviceRGB);
    CGContextTranslateCTM(v35, 0.0, v29);
    CGContextScaleCTM(v35, 1.0, -1.0);
    contents = [v5 contents];
    [v5 frame];
    CGContextDrawImage(v35, v55, contents);
    if (v30)
    {
      v37 = 0;
      v38 = v33;
      do
      {
        v39 = pow((v30 - 1 - v37) / (v30 - 1), 1.8);
        if (v32)
        {
          v41 = v39 * a3;
          v42 = v38;
          v43 = v32;
          do
          {
            LOBYTE(v40) = *v42;
            v40 = v41 * *&v40;
            *v42++ = v40;
            --v43;
          }

          while (v43);
        }

        ++v37;
        v38 += v32;
      }

      while (v37 != v30);
    }

    Image = CGBitmapContextCreateImage(v35);
    [layer setContents:Image];
    CGImageRelease(Image);
    CGContextRelease(v35);
    free(v33);
    [layer setFrame:{v23, v25, v27, v29}];
    [v5 bounds];
    MidX = CGRectGetMidX(v56);
    [v5 bounds];
    MaxY = CGRectGetMaxY(v57);
    [layer frame];
    [layer setPosition:{MidX, MaxY + v47 * 0.5}];
    [layer setName:{objc_msgSend(objc_msgSend(v5, "name"), "stringByAppendingString:", @"-reflection"}];
    [v5 addSublayer:layer];

    return [v5 setShouldRasterize:1];
  }

  return result;
}

- (long)p_perspectiveZDistanceUsingSize:()TSDAdditions
{
  if (self >= a2)
  {
    selfCopy = a2;
  }

  else
  {
    selfCopy = self;
  }

  return tan(0.174532925) * 15.0 * selfCopy;
}

- (uint64_t)addPerspectiveProjection
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v4 = v3;
  v6 = v5;
  [mainScreen scale];
  v8 = v7;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  if (self)
  {
    [self transform];
  }

  [self p_perspectiveZDistanceUsingSize:{TSDMultiplySizeScalar(v4, v6, v8)}];
  *(&v17 + 1) = -1.0 / v9;
  v11[4] = v16;
  v11[5] = v17;
  v11[6] = v18;
  v11[7] = v19;
  v11[0] = v12;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  return [self setTransform:v11];
}

- (uint64_t)addPerspectiveSublayerProjectionUsingScreenSize:()TSDAdditions
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  if (self)
  {
    [self sublayerTransform];
  }

  [self p_perspectiveZDistanceUsingSize:{a2, a3}];
  *(&v14 + 1) = -1.0 / v6;
  v8[4] = v13;
  v8[5] = v14;
  v8[6] = v15;
  v8[7] = v16;
  v8[0] = v9;
  v8[1] = v10;
  v8[2] = v11;
  v8[3] = v12;
  return [self setSublayerTransform:v8];
}

- (double)durationOfAllAnimations
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  animationKeys = [self animationKeys];
  v3 = [animationKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v3)
  {
    return 0.0;
  }

  v4 = v3;
  v5 = *v15;
  v6 = 0.0;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v15 != v5)
      {
        objc_enumerationMutation(animationKeys);
      }

      v8 = [self animationForKey:*(*(&v14 + 1) + 8 * i)];
      [v8 beginTime];
      v10 = v9;
      [v8 duration];
      v12 = v10 + v11;
      if (v6 <= v12)
      {
        v6 = v12;
      }
    }

    v4 = [animationKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v4);
  return v6;
}

- (uint64_t)removeAllAnimationsOnLayerTree
{
  v12 = *MEMORY[0x277D85DE8];
  [self removeAllAnimations];
  result = [self sublayers];
  if (result)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    sublayers = [self sublayers];
    result = [sublayers countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(sublayers);
          }

          [*(*(&v7 + 1) + 8 * v6++) removeAllAnimationsOnLayerTree];
        }

        while (v4 != v6);
        result = [sublayers countByEnumeratingWithState:&v7 objects:v11 count:16];
        v4 = result;
      }

      while (result);
    }
  }

  return result;
}

- (CGFloat)transform3DByApplyingAnimation:()TSDAdditions atTime:offset:parentFrame:animationCache:
{
  if ([a3 animation] != a2)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CALayer(TSDAdditions) transform3DByApplyingAnimation:atTime:offset:parentFrame:animationCache:]"];
    [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/CALayerAdditions.mm"), 293, @"Animation is different from animationCache!"}];
  }

  [a3 transformRotationXInitialValue];
  v14 = v13;
  [a3 transformRotationYInitialValue];
  v16 = v15;
  [a3 transformRotationZInitialValue];
  v18 = v17;
  if ([a3 transformRotationXAnimationExists])
  {
    [a3 transformRotationXCachedValueAtTime:self layer:a2 animation:a5];
    v14 = v19;
  }

  if ([a3 transformRotationYAnimationExists])
  {
    [a3 transformRotationYCachedValueAtTime:self layer:a2 animation:a5];
    v16 = v20;
  }

  if ([a3 transformRotationZAnimationExists])
  {
    [a3 transformRotationZCachedValueAtTime:self layer:a2 animation:a5];
    v18 = v21;
  }

  v181 = v14;
  if ([a3 transformRotationAnimationExists])
  {
    if (v18 != 0.0)
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CALayer(TSDAdditions) transform3DByApplyingAnimation:atTime:offset:parentFrame:animationCache:]"];
      [currentHandler2 handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/CALayerAdditions.mm"), 313, @"Found multiple rotation animations!"}];
    }

    [a3 transformRotationCachedValueAtTime:self layer:a2 animation:a5];
    v184 = v24;
  }

  else
  {
    v184 = v18;
  }

  [a3 anchorPointInitialValue];
  v26 = v25;
  v28 = v27;
  v29 = MEMORY[0x277CBF348];
  v30 = *MEMORY[0x277CBF348];
  v31 = *(MEMORY[0x277CBF348] + 8);
  if ([a3 anchorPointAnimationExists])
  {
    [objc_msgSend(a2 TSD_valueForKeyPath:@"anchorPoint" atTime:a3 animationCache:{a5), "CGPointValue"}];
    v26 = v32;
    v28 = v33;
    [a3 anchorPointInitialValue];
    v30 = TSDSubtractPoints(v26, v28, v34);
    v31 = -v35;
  }

  [a3 anchorPointZInitialValue];
  tz = v36;
  anchorPointZAnimationExists = [a3 anchorPointZAnimationExists];
  v185 = v30;
  v175 = v26;
  v176 = v28;
  if (anchorPointZAnimationExists)
  {
    [a3 anchorPointZCachedValueAtTime:self layer:a2 animation:a5];
    tz = v38;
  }

  v182 = v16;
  [a3 boundsInitialValue];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = *v29;
  v46 = v29[1];
  boundsAnimationExists = [a3 boundsAnimationExists];
  v48 = 1.0;
  v49 = 1.0;
  v187 = v44;
  v188 = v42;
  if (boundsAnimationExists)
  {
    [a3 boundsCachedValueAtTime:self layer:a2 animation:{a5, 1.0}];
    v42 = v50;
    v52 = v51;
    v45 = TSDSubtractPoints(v53, v54, v40);
    v46 = v55;
    v48 = v42 / v188;
    v49 = v52 / v187;
  }

  v56 = v48;
  v180 = v45;
  v57 = 1.0;
  v58 = 1.0;
  if ([a3 transformScaleXYAnimationExists])
  {
    [a3 transformScaleXYCachedValueAtTime:self layer:a2 animation:a5];
    v58 = TSDMultiplySizeScalar(1.0, 1.0, v59);
    v57 = v60;
  }

  if ([a3 transformScaleXAnimationExists])
  {
    [a3 transformScaleXCachedValueAtTime:self layer:a2 animation:a5];
    v58 = v58 * v61;
  }

  v183 = v31;
  v178 = v42;
  if ([a3 transformScaleYAnimationExists])
  {
    [a3 transformScaleYCachedValueAtTime:self layer:a2 animation:a5];
    v57 = v57 * v62;
  }

  v64 = *v29;
  v63 = v29[1];
  if ([a3 positionAnimationExists])
  {
    [a3 positionInitialValue];
    v66 = v65;
    [a3 positionCachedValueAtTime:self layer:a2 animation:a5];
    v64 = TSDSubtractPoints(v67, v68, v66);
    v63 = v69;
  }

  v179 = v46;
  zPositionAnimationExists = [a3 zPositionAnimationExists];
  v71 = 0.0;
  if (zPositionAnimationExists)
  {
    [a3 zPositionInitialValue];
    v73 = v72;
    [a3 zPositionCachedValueAtTime:self layer:a2 animation:a5];
    v71 = v74 - v73;
  }

  v189 = v71;
  [a3 transformTranslationInitialValue];
  v76 = v75;
  if ([a3 transformTranslationAnimationExists])
  {
    [a3 transformTranslationCachedValueAtTime:self layer:a2 animation:a5];
    v76 = v77;
  }

  v78 = TSDAddPoints(v64, v63, v76);
  if ([a3 transformTranslationXAnimationExists])
  {
    [a3 transformTranslationXCachedValueAtTime:self layer:a2 animation:a5];
    v78 = v78 + v79;
  }

  if ([a3 transformTranslationYAnimationExists])
  {
    [a3 transformTranslationYCachedValueAtTime:self layer:a2 animation:a5];
  }

  if ([a3 transformTranslationZAnimationExists])
  {
    [a3 transformTranslationZCachedValueAtTime:self layer:a2 animation:a5];
    v189 = v189 + v80;
  }

  v81 = MEMORY[0x277CD9DE8];
  v82 = 1.0 - v176;
  v83 = *(MEMORY[0x277CD9DE8] + 80);
  *&v194.m31 = *(MEMORY[0x277CD9DE8] + 64);
  *&v194.m33 = v83;
  v84 = *(MEMORY[0x277CD9DE8] + 112);
  *&v194.m41 = *(MEMORY[0x277CD9DE8] + 96);
  *&v194.m43 = v84;
  v85 = *(MEMORY[0x277CD9DE8] + 16);
  *&v194.m11 = *MEMORY[0x277CD9DE8];
  *&v194.m13 = v85;
  v86 = *(MEMORY[0x277CD9DE8] + 48);
  *&v194.m21 = *(MEMORY[0x277CD9DE8] + 32);
  *&v194.m23 = v86;
  transformAnimationExists = [a3 transformAnimationExists];
  if (transformAnimationExists)
  {
    if (a3)
    {
      [a3 transformCachedValueAtTime:self layer:a2 animation:a5];
    }

    else
    {
      memset(&a, 0, sizeof(a));
    }

    v194 = a;
  }

  v177 = v78;
  v88 = TSDMultiplyPointBySize(v175, v82, v188);
  v90 = v89;
  v91 = v56 * v58;
  v93 = v81[4];
  v92 = v81[5];
  v94 = v174 * v57;
  v95 = v81[3];
  *(a4 + 64) = v93;
  *(a4 + 80) = v92;
  v96 = v81[5];
  v98 = v81[6];
  v97 = v81[7];
  *(a4 + 96) = v98;
  *(a4 + 112) = v97;
  v99 = v81[1];
  *a4 = *v81;
  *(a4 + 16) = v99;
  v100 = v81[3];
  v102 = *v81;
  v101 = v81[1];
  v103 = v81[2];
  *(a4 + 32) = v103;
  *(a4 + 48) = v100;
  *&a.m31 = v93;
  *&a.m33 = v96;
  v104 = v81[7];
  *&a.m41 = v98;
  *&a.m43 = v104;
  *&a.m11 = v102;
  *&a.m13 = v101;
  *&a.m21 = v103;
  *&a.m23 = v95;
  CATransform3DMakeTranslation(&b, -v88, -v90, -tz);
  CATransform3DConcat(a4, &a, &b);
  if (v91 != *MEMORY[0x277CBF3A8] || v94 != *(MEMORY[0x277CBF3A8] + 8))
  {
    v105 = *(a4 + 80);
    *&b.m31 = *(a4 + 64);
    *&b.m33 = v105;
    v106 = *(a4 + 112);
    *&b.m41 = *(a4 + 96);
    *&b.m43 = v106;
    v107 = *(a4 + 16);
    *&b.m11 = *a4;
    *&b.m13 = v107;
    v108 = *(a4 + 48);
    *&b.m21 = *(a4 + 32);
    *&b.m23 = v108;
    CATransform3DMakeScale(&v191, v91, v94, 1.0);
    CATransform3DConcat(&a, &b, &v191);
    v109 = *&a.m33;
    *(a4 + 64) = *&a.m31;
    *(a4 + 80) = v109;
    v110 = *&a.m43;
    *(a4 + 96) = *&a.m41;
    *(a4 + 112) = v110;
    v111 = *&a.m13;
    *a4 = *&a.m11;
    *(a4 + 16) = v111;
    v112 = *&a.m23;
    *(a4 + 32) = *&a.m21;
    *(a4 + 48) = v112;
  }

  if (v181 != 0.0)
  {
    v113 = *(a4 + 80);
    *&b.m31 = *(a4 + 64);
    *&b.m33 = v113;
    v114 = *(a4 + 112);
    *&b.m41 = *(a4 + 96);
    *&b.m43 = v114;
    v115 = *(a4 + 16);
    *&b.m11 = *a4;
    *&b.m13 = v115;
    v116 = *(a4 + 48);
    *&b.m21 = *(a4 + 32);
    *&b.m23 = v116;
    CATransform3DMakeRotation(&v191, v181, -1.0, 0.0, 0.0);
    CATransform3DConcat(&a, &b, &v191);
    v117 = *&a.m33;
    *(a4 + 64) = *&a.m31;
    *(a4 + 80) = v117;
    v118 = *&a.m43;
    *(a4 + 96) = *&a.m41;
    *(a4 + 112) = v118;
    v119 = *&a.m13;
    *a4 = *&a.m11;
    *(a4 + 16) = v119;
    v120 = *&a.m23;
    *(a4 + 32) = *&a.m21;
    *(a4 + 48) = v120;
  }

  if (v182 != 0.0)
  {
    v121 = *(a4 + 80);
    *&b.m31 = *(a4 + 64);
    *&b.m33 = v121;
    v122 = *(a4 + 112);
    *&b.m41 = *(a4 + 96);
    *&b.m43 = v122;
    v123 = *(a4 + 16);
    *&b.m11 = *a4;
    *&b.m13 = v123;
    v124 = *(a4 + 48);
    *&b.m21 = *(a4 + 32);
    *&b.m23 = v124;
    CATransform3DMakeRotation(&v191, v182, 0.0, 1.0, 0.0);
    CATransform3DConcat(&a, &b, &v191);
    v125 = *&a.m33;
    *(a4 + 64) = *&a.m31;
    *(a4 + 80) = v125;
    v126 = *&a.m43;
    *(a4 + 96) = *&a.m41;
    *(a4 + 112) = v126;
    v127 = *&a.m13;
    *a4 = *&a.m11;
    *(a4 + 16) = v127;
    v128 = *&a.m23;
    *(a4 + 32) = *&a.m21;
    *(a4 + 48) = v128;
  }

  if (v184 != 0.0)
  {
    v129 = *(a4 + 80);
    *&b.m31 = *(a4 + 64);
    *&b.m33 = v129;
    v130 = *(a4 + 112);
    *&b.m41 = *(a4 + 96);
    *&b.m43 = v130;
    v131 = *(a4 + 16);
    *&b.m11 = *a4;
    *&b.m13 = v131;
    v132 = *(a4 + 48);
    *&b.m21 = *(a4 + 32);
    *&b.m23 = v132;
    CATransform3DMakeRotation(&v191, v184, 0.0, 0.0, -1.0);
    CATransform3DConcat(&a, &b, &v191);
    v133 = *&a.m33;
    *(a4 + 64) = *&a.m31;
    *(a4 + 80) = v133;
    v134 = *&a.m43;
    *(a4 + 96) = *&a.m41;
    *(a4 + 112) = v134;
    v135 = *&a.m13;
    *a4 = *&a.m11;
    *(a4 + 16) = v135;
    v136 = *&a.m23;
    *(a4 + 32) = *&a.m21;
    *(a4 + 48) = v136;
  }

  if (transformAnimationExists)
  {
    v137 = *(a4 + 80);
    *&b.m31 = *(a4 + 64);
    *&b.m33 = v137;
    v138 = *(a4 + 112);
    *&b.m41 = *(a4 + 96);
    *&b.m43 = v138;
    v139 = *(a4 + 16);
    *&b.m11 = *a4;
    *&b.m13 = v139;
    v140 = *(a4 + 48);
    *&b.m21 = *(a4 + 32);
    *&b.m23 = v140;
    v191 = v194;
    CATransform3DConcat(&a, &b, &v191);
    v141 = *&a.m33;
    *(a4 + 64) = *&a.m31;
    *(a4 + 80) = v141;
    v142 = *&a.m43;
    *(a4 + 96) = *&a.m41;
    *(a4 + 112) = v142;
    v143 = *&a.m13;
    *a4 = *&a.m11;
    *(a4 + 16) = v143;
    v144 = *&a.m23;
    *(a4 + 32) = *&a.m21;
    *(a4 + 48) = v144;
  }

  v145 = 0.0;
  if (anchorPointZAnimationExists)
  {
    v145 = -tz;
  }

  v146 = v145 + v189;
  v147 = TSDMultiplyPointScalar(v185, v183, -1.0);
  v149 = TSDMultiplyPointBySize(v147, v148, v178);
  v150 = TSDAddPoints(v180, v179, v149);
  v152 = TSDAddPoints(v150, v151, a6);
  v154 = TSDAddPoints(v152, v153, v177);
  v156 = v155;
  v157 = *(a4 + 80);
  *&b.m31 = *(a4 + 64);
  *&b.m33 = v157;
  v158 = *(a4 + 112);
  *&b.m41 = *(a4 + 96);
  *&b.m43 = v158;
  v159 = *(a4 + 16);
  *&b.m11 = *a4;
  *&b.m13 = v159;
  v160 = *(a4 + 48);
  *&b.m21 = *(a4 + 32);
  *&b.m23 = v160;
  CATransform3DMakeTranslation(&v191, v88, v90, tz);
  CATransform3DConcat(&a, &b, &v191);
  v161 = *&a.m33;
  *(a4 + 64) = *&a.m31;
  *(a4 + 80) = v161;
  v162 = *&a.m43;
  *(a4 + 96) = *&a.m41;
  *(a4 + 112) = v162;
  v163 = *&a.m13;
  *a4 = *&a.m11;
  *(a4 + 16) = v163;
  v164 = *&a.m23;
  *(a4 + 32) = *&a.m21;
  *(a4 + 48) = v164;
  v165 = *(a4 + 80);
  *&b.m31 = *(a4 + 64);
  *&b.m33 = v165;
  v166 = *(a4 + 112);
  *&b.m41 = *(a4 + 96);
  *&b.m43 = v166;
  v167 = *(a4 + 16);
  *&b.m11 = *a4;
  *&b.m13 = v167;
  v168 = *(a4 + 48);
  *&b.m21 = *(a4 + 32);
  *&b.m23 = v168;
  CATransform3DMakeTranslation(&v191, v154, v156, v146);
  CATransform3DConcat(&a, &b, &v191);
  v169 = *&a.m33;
  *(a4 + 64) = *&a.m31;
  *(a4 + 80) = v169;
  v170 = *&a.m43;
  *(a4 + 96) = *&a.m41;
  *(a4 + 112) = v170;
  v171 = *&a.m13;
  *a4 = *&a.m11;
  *(a4 + 16) = v171;
  result = a.m21;
  v173 = *&a.m23;
  *(a4 + 32) = *&a.m21;
  *(a4 + 48) = v173;
  return result;
}

- (double)opacityByApplyingAnimation:()TSDAdditions atTime:animationCache:
{
  [self opacity];
  if (!a4)
  {
    return v9;
  }

  [a5 opacityCachedValueAtTime:self layer:a4 animation:a2];
  return result;
}

- (uint64_t)addJiggleAnimationWithDuration:()TSDAdditions angle:
{
  [self removeJiggleAnimation];
  v22 = a2;
  v6 = a2 * 7.0;
  if (a2 * 7.0 < 1.0)
  {
    v6 = 1.0;
  }

  v7 = v6;
  array = [MEMORY[0x277CBEB18] array];
  if (v7 >= 1)
  {
    v9 = v7;
    v21 = 1.0 / v7 * a2;
    v10 = v21 * 0.5;
    v11 = *MEMORY[0x277CDA7B8];
    v12 = 0.0;
    v13 = 1;
    do
    {
      v14 = v12 / v9 * v22;
      v15 = (1.0 - v12 / v9) * a3;
      v12 = v12 + 1.0;
      v16 = (1.0 - v13 / v9) * a3;
      v17 = [MEMORY[0x277CD9E10] animationWithKeyPath:{@"transform.rotation", *&v21}];
      [v17 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v15)}];
      [v17 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", (v15 + v16) * -0.5)}];
      [v17 setBeginTime:v14];
      [v17 setDuration:v10];
      [v17 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", v11)}];
      [array addObject:v17];
      v18 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation"];
      [v18 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", (v15 + v16) * -0.5)}];
      [v18 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v16)}];
      [v18 setBeginTime:v14 + v21 * 0.5];
      [v18 setDuration:v10];
      [v18 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", v11)}];
      [array addObject:v18];
      ++v13;
      --v7;
    }

    while (v7);
  }

  v19 = objc_alloc_init(MEMORY[0x277CD9E00]);
  [v19 setAnimations:array];
  [v19 setDuration:v22];
  [v19 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", *MEMORY[0x277CDA7C8])}];

  return [self addAnimation:v19 forKey:@"kTSDJiggleAnimationKey"];
}

- (uint64_t)addWaveAnimationWithScale:()TSDAdditions offset:zPosition:addPerspectiveProjection:
{
  [self removeWaveAnimation];
  if (a2 == 0.0)
  {
    v13 = 0.2;
  }

  else
  {
    v13 = a2 + -1.0;
  }

  v14 = v13 * 0.25;
  if (v13 * 0.0625 >= 0.0125)
  {
    v15 = 0.0196349541;
  }

  else
  {
    v15 = v13 * 0.0625 * 1.57079633;
  }

  if (a7)
  {
    [self addPerspectiveProjection];
  }

  v16 = v13 + v14;
  [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
  *v18.i64 = *v17.i64 - trunc(*v17.i64);
  v19.f64[0] = NAN;
  v19.f64[1] = NAN;
  v20 = 1.0 - *vbslq_s8(vnegq_f64(v19), v18, v17).i64;
  array = [MEMORY[0x277CBEB18] array];
  v22 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale.xy"];
  [v22 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
  [v22 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v13 + v14)}];
  [v22 setDuration:v20];
  v23 = *MEMORY[0x277CDA7B8];
  [v22 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", *MEMORY[0x277CDA7B8])}];
  [v22 setAdditive:1];
  v24 = *MEMORY[0x277CDA238];
  [v22 setFillMode:*MEMORY[0x277CDA238]];
  [array addObject:v22];
  v25 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.x"];
  [v25 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v15)}];
  [v25 setDuration:v20];
  [v25 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", v23)}];
  [array addObject:v25];
  if (a3 != 0.0)
  {
    v26 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.translation.x"];
    [v26 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", a3)}];
    [v26 setDuration:v20];
    [v26 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", v23)}];
    [v26 setAdditive:1];
    [v26 setFillMode:v24];
    [array addObject:v26];
  }

  if (a4 != 0.0)
  {
    v27 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.translation.y"];
    [v27 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", a4)}];
    [v27 setDuration:v20];
    [v27 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", v23)}];
    [v27 setAdditive:1];
    [v27 setFillMode:v24];
    [array addObject:v27];
  }

  v28 = v13 - v14;
  if (a5 != 0.0)
  {
    v29 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"zPosition"];
    [v29 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", a5)}];
    [v29 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", a5)}];
    [v29 setDuration:v20];
    [v29 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", v23)}];
    [array addObject:v29];
  }

  v30 = objc_alloc_init(MEMORY[0x277CD9E00]);
  [v30 setAnimations:array];
  [v30 setDuration:v20];
  array2 = [MEMORY[0x277CBEB18] array];
  v32 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale.xy"];
  [v32 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v16)}];
  [v32 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v28)}];
  [v32 setDuration:0.5];
  [v32 setBeginTime:0.0];
  [v32 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", v23)}];
  [v32 setAdditive:1];
  [array2 addObject:v32];
  v33 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale.xy"];
  [v33 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v28)}];
  [v33 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v16)}];
  [v33 setDuration:0.5];
  [v33 setBeginTime:0.5];
  [v33 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", v23)}];
  [v33 setAdditive:1];
  [array2 addObject:v33];
  v34 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.x"];
  [v34 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", -v15)}];
  [v34 setDuration:0.5];
  [v34 setBeginTime:0.0];
  [v34 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", v23)}];
  [array2 addObject:v34];
  v35 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.x"];
  [v35 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v15)}];
  [v35 setDuration:0.5];
  [v35 setBeginTime:0.5];
  [v35 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", v23)}];
  [array2 addObject:v35];
  v36 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.y"];
  [v36 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v15)}];
  [v36 setDuration:0.25];
  [v36 setBeginTime:0.0];
  [v36 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", *MEMORY[0x277CDA7C0])}];
  [array2 addObject:v36];
  v37 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.y"];
  [v37 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", -v15)}];
  [v37 setDuration:0.5];
  [v37 setBeginTime:0.25];
  [v37 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", v23)}];
  [array2 addObject:v37];
  v38 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.y"];
  [v38 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
  [v38 setDuration:0.25];
  [v38 setBeginTime:0.75];
  [v38 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", *MEMORY[0x277CDA7B0])}];
  [array2 addObject:v38];
  if (a3 != 0.0)
  {
    v39 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.translation.x"];
    [v39 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", a3)}];
    [v39 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", a3)}];
    [v39 setDuration:0.5];
    [v39 setFillMode:v24];
    [v39 setAdditive:1];
    [array2 addObject:v39];
  }

  if (a4 != 0.0)
  {
    v40 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.translation.y"];
    [v40 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", a4)}];
    [v40 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", a4)}];
    [v40 setDuration:0.5];
    [v40 setFillMode:v24];
    [v40 setAdditive:1];
    [array2 addObject:v40];
  }

  if (a5 != 0.0)
  {
    v41 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"zPosition"];
    [v41 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", a5)}];
    [v41 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", a5)}];
    [v41 setDuration:0.5];
    [v41 setFillMode:v24];
    [array2 addObject:v41];
  }

  v42 = objc_alloc_init(MEMORY[0x277CD9E00]);
  [v42 setAnimations:array2];
  [v42 setDuration:1.0];
  LODWORD(v43) = 1176256512;
  [v42 setRepeatCount:v43];
  [v42 setBeginTime:v20];
  v44 = objc_alloc_init(MEMORY[0x277CD9E00]);
  [v44 setAnimations:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", v30, v42, 0)}];
  [v44 setDuration:10000.0];

  return [self addAnimation:v44 forKey:@"kTSDWaveAnimationKey"];
}

- (uint64_t)removeWaveAnimationAnimated:()TSDAdditions
{
  if (a3)
  {
    presentationLayer = [self presentationLayer];
    [objc_msgSend(presentationLayer valueForKeyPath:{@"transform.rotation", "doubleValue"}];
    v6 = v5;
    [objc_msgSend(presentationLayer valueForKeyPath:{@"transform.scale", "doubleValue"}];
    v8 = v7;
    [objc_msgSend(presentationLayer valueForKeyPath:{@"transform.scale", "CGPointValue"}];
    v10 = v9;
    v12 = v11;
    [presentationLayer zPosition];
    v14 = v13;
    v15 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale"];
    [v15 setDuration:0.25];
    [v15 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v8)}];
    [v15 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 1.0)}];
    v16 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation"];
    [v16 setDuration:0.25];
    [v16 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v6)}];
    [v16 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
    v17 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.translation"];
    [v17 setDuration:0.25];
    [v17 setFromValue:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGPoint:", v10, v12)}];
    [v17 setToValue:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGPoint:", *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8))}];
    v18 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"zPosition"];
    [v18 setDuration:0.25];
    [v18 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v14)}];
    [v18 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v14)}];
    v19 = objc_alloc_init(MEMORY[0x277CD9E00]);
    [v19 setAnimations:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", v15, v16, v18, 0)}];
    [self removeAnimationForKey:@"kTSDWaveAnimationKey"];

    return [self addAnimation:v19 forKey:@"kTSDWaveAnimationKey"];
  }

  else
  {

    return [self removeAnimationForKey:@"kTSDWaveAnimationKey"];
  }
}

- (uint64_t)addPulseAnimation
{
  [self addPerspectiveProjection];
  v2 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale.xy"];
  [v2 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 1.25)}];
  [v2 setDuration:0.5];
  v3 = *MEMORY[0x277CDA7B8];
  [v2 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", *MEMORY[0x277CDA7B8])}];
  v4 = objc_alloc_init(MEMORY[0x277CD9E00]);
  [v4 setAnimations:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", v2, 0)}];
  [v4 setDuration:1.0];
  v5 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale.xy"];
  [v5 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 1.25)}];
  [v5 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 1.15)}];
  [v5 setDuration:0.5];
  [v5 setBeginTime:0.0];
  [v5 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", v3)}];
  v6 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale.xy"];
  [v6 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 1.15)}];
  [v6 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 1.25)}];
  [v6 setDuration:0.5];
  [v6 setBeginTime:0.5];
  [v6 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", v3)}];
  v7 = objc_alloc_init(MEMORY[0x277CD9E00]);
  [v7 setAnimations:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", v5, v6, 0)}];
  [v7 setDuration:1.0];
  LODWORD(v8) = 1176256512;
  [v7 setRepeatCount:v8];
  [v7 setBeginTime:0.5];
  v9 = objc_alloc_init(MEMORY[0x277CD9E00]);
  [v9 setAnimations:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", v4, v7, 0)}];
  [v9 setDuration:10000.0];

  return [self addAnimation:v9 forKey:@"kTSDPulseAnimationKey"];
}

- (uint64_t)removePulseAnimation
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  presentationLayer = [self presentationLayer];
  if (presentationLayer)
  {
    [presentationLayer transform];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
  }

  v3 = [MEMORY[0x277CD9E10] animationWithKeyPath:{@"transform", v5, v6, v7, v8, v9, v10, v11, v12}];
  [v3 setDuration:0.2];
  [v3 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
  [v3 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 1.0)}];
  [self removeAnimationForKey:@"kTSDPulseAnimationKey"];
  return [self addAnimation:v3 forKey:@"kTSDPulseAnimationKey"];
}

- (uint64_t)addDragRotationAnimationWithDelta:()TSDAdditions
{
  [self removeDragRotationAnimation];
  [self addPerspectiveProjection];
  v6 = TSDPointLength(a2, a3);
  v7 = TSDNormalizePoint(a2, a3);
  v9 = v8;
  v10 = fmin(v6, 25.0) / 25.0 * 1.57079633;
  v11 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.x"];
  [v11 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", -(v9 * v10))}];
  [v11 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
  [v11 setDuration:0.025];
  v12 = *MEMORY[0x277CDA7C0];
  [v11 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", *MEMORY[0x277CDA7C0])}];
  v13 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.y"];
  [v13 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v7 * v10)}];
  [v13 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
  [v13 setDuration:0.025];
  [v13 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", v12)}];
  v14 = objc_alloc_init(MEMORY[0x277CD9E00]);
  [v14 setAnimations:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", v11, v13, 0)}];
  [v14 setDuration:0.025];

  return [self addAnimation:v14 forKey:@"kTSDDragRotationAnimationKey"];
}

- (uint64_t)addFlipTransitionAnimationToLayer:()TSDAdditions
{
  [self removeFlipTransitionAnimation];
  [a3 removeFlipTransitionAnimation];
  [self addPerspectiveProjection];
  [a3 addPerspectiveProjection];
  [self position];
  v6 = v5;
  [a3 position];
  v8 = v7;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"position"];
  v12 = MEMORY[0x277CCAE60];
  [a3 position];
  [v11 setToValue:{objc_msgSend(v12, "valueWithCGPoint:")}];
  [v11 setDuration:0.5];
  v13 = *MEMORY[0x277CDA7B8];
  [v11 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", *MEMORY[0x277CDA7B8])}];
  [array addObject:v11];
  v14 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"position"];
  v15 = MEMORY[0x277CCAE60];
  [self position];
  [v14 setFromValue:{objc_msgSend(v15, "valueWithCGPoint:")}];
  [v14 setDuration:0.5];
  [v14 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", v13)}];
  [array2 addObject:v14];
  [self frame];
  v17 = v16;
  [a3 frame];
  if (v17 <= v18)
  {
    selfCopy = a3;
  }

  else
  {
    selfCopy = self;
  }

  [selfCopy frame];
  v21 = v20;
  if (v6 >= v8)
  {
    v22 = -1.0;
  }

  else
  {
    v22 = 1.0;
  }

  v23 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"zPosition"];
  [v23 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v21)}];
  [v23 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v21)}];
  [v23 setDuration:0.5];
  [v23 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", v13)}];
  [array addObject:v23];
  v24 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"zPosition"];
  [v24 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v21)}];
  [v24 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v21)}];
  [v24 setDuration:0.5];
  [v24 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", v13)}];
  [array2 addObject:v24];
  v25 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.y"];
  [v25 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v22 * 3.14159265)}];
  [v25 setDuration:0.5];
  [v25 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", v13)}];
  [array addObject:v25];
  v26 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.y"];
  [v26 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v22 * -3.14159265)}];
  [v26 setDuration:0.5];
  [v26 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", v13)}];
  [array2 addObject:v26];
  v27 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"hidden"];
  [v27 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];
  [v27 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];
  [v27 setDuration:0.25];
  [array addObject:v27];
  v28 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"hidden"];
  [v28 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 1)}];
  [v28 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 1)}];
  [v28 setDuration:0.25];
  [v28 setBeginTime:0.25];
  [array addObject:v28];
  v29 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"hidden"];
  [v29 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 1)}];
  [v29 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 1)}];
  [v29 setDuration:0.25];
  [array2 addObject:v29];
  v30 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"hidden"];
  [v30 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];
  [v30 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 0)}];
  [v30 setDuration:0.25];
  [v30 setBeginTime:0.25];
  [array2 addObject:v30];
  v31 = objc_alloc_init(MEMORY[0x277CD9E00]);
  [v31 setAnimations:array];
  [v31 setDuration:0.5];
  [self addAnimation:v31 forKey:@"kTSDFlipTransitionAnimationKey"];
  v32 = objc_alloc_init(MEMORY[0x277CD9E00]);
  [v32 setAnimations:array2];
  [v32 setDuration:0.5];

  return [a3 addAnimation:v32 forKey:@"kTSDFlipTransitionAnimationKey"];
}

- (uint64_t)addSproingAnimationFromPoint:()TSDAdditions
{
  [self removeSproingAnimation];
  [self frame];
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  v10 = (a2 - CGRectGetMinX(v27)) / v27.size.width;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v11 = (a3 - CGRectGetMinY(v28)) / height;
  v12 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"anchorPoint"];
  v13 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v10, v11}];
  [v12 setToValue:v13];
  [v12 setFromValue:v13];
  [v12 setDuration:1.0];
  [self anchorPoint];
  v15 = width * TSDSubtractPoints(v10, v11, v14);
  v17 = height * v16;
  v18 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"position"];
  v19 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v15, v17}];
  [v18 setToValue:v19];
  [v18 setFromValue:v19];
  [v18 setDuration:0.2];
  [v18 setAdditive:1];
  v20 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale.xy"];
  [v20 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
  [v20 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 1.05)}];
  [v20 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", *MEMORY[0x277CDA7C0])}];
  [v20 setDuration:0.1];
  v21 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale.xy"];
  [v21 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 1.05)}];
  [v21 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.95)}];
  v22 = *MEMORY[0x277CDA7B8];
  [v21 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", *MEMORY[0x277CDA7B8])}];
  [v21 setBeginTime:0.1];
  [v21 setDuration:0.06];
  v23 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale.xy"];
  [v23 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.95)}];
  [v23 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 1.0)}];
  [v23 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", v22)}];
  [v23 setBeginTime:0.16];
  [v23 setDuration:0.04];
  v24 = objc_alloc_init(MEMORY[0x277CD9E00]);
  [v24 setAnimations:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", v12, v18, v20, v21, v23, 0)}];
  [v24 setDuration:0.2];

  return [self addAnimation:v24 forKey:@"kTSDSproingAnimationKey"];
}

- (uint64_t)addPopInAnimation:()TSDAdditions
{
  [self removePopInAnimation];
  v5 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v5 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
  [v5 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 1.0)}];
  [v5 setDuration:0.2];
  v6 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale.xy"];
  [v6 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
  [v6 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 1.2)}];
  [v6 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", *MEMORY[0x277CDA7C0])}];
  [v6 setDuration:0.16];
  v7 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale.xy"];
  [v7 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 1.2)}];
  [v7 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 1.0)}];
  [v7 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", *MEMORY[0x277CDA7B8])}];
  [v7 setBeginTime:0.16];
  [v7 setDuration:0.04];
  v8 = objc_alloc_init(MEMORY[0x277CD9E00]);
  [v8 setAnimations:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", v5, v6, v7, 0)}];
  [v8 setDuration:0.2];
  [v8 setDelegate:a3];

  return [self addAnimation:v8 forKey:@"kTSDPopInAnimationKey"];
}

- (uint64_t)addPopOutAnimation:()TSDAdditions
{
  [self removePopOutAnimation];
  v5 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v5 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 1.0)}];
  [v5 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
  [v5 setDuration:0.2];
  v6 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale.xy"];
  [v6 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 1.0)}];
  [v6 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 1.2)}];
  [v6 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", *MEMORY[0x277CDA7B8])}];
  [v6 setDuration:0.04];
  v7 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale.xy"];
  [v7 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 1.2)}];
  [v7 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
  [v7 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", *MEMORY[0x277CDA7C0])}];
  [v7 setBeginTime:0.04];
  [v7 setDuration:0.16];
  v8 = objc_alloc_init(MEMORY[0x277CD9E00]);
  [v8 setAnimations:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", v5, v6, v7, 0)}];
  [v8 setDuration:0.2];
  [v8 setDelegate:a3];

  return [self addAnimation:v8 forKey:@"kTSDPopOutAnimationKey"];
}

- (void)addDistortAnimationWithVector:()TSDAdditions
{
  [self removeDistortAnimation];
  [self frame];
  v7 = v6;
  [self frame];
  v9 = v8;
  [self frame];
  if (v7 <= v9)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  v13 = TSDDistance(*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), a2, a3);
  v14 = v13 / v12 * (v13 / v12) * 8.0 + 1.0;
  if (v14 >= 1.001)
  {
    v15 = TSDAngleFromDelta(a2, a3);
    memset(&v19, 0, sizeof(v19));
    if (self)
    {
      [self transform];
    }

    v17 = v19;
    CATransform3DRotate(&v18, &v17, v15, 0.0, 0.0, 1.0);
    v19 = v18;
    v17 = v18;
    CATransform3DScale(&v18, &v17, v14, 1.0 / v14, 1.0);
    v19 = v18;
    v17 = v18;
    CATransform3DRotate(&v18, &v17, -v15, 0.0, 0.0, 1.0);
    v19 = v18;
    v16 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform"];
    v18 = v19;
    [v16 setFromValue:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCATransform3D:", &v18)}];
    [v16 setDuration:0.025];
    [v16 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", *MEMORY[0x277CDA7C0])}];
    [self addAnimation:v16 forKey:@"kTSDDistortAnimationKey"];
  }
}

- (uint64_t)addRotateInAnimationWithDuration:()TSDAdditions delay:
{
  [self removeRotateInAnimation];
  [self addPerspectiveProjection];
  v6 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v6 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
  [v6 setBeginTime:a3];
  [v6 setDuration:a2];
  v7 = *MEMORY[0x277CDA7C0];
  [v6 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", *MEMORY[0x277CDA7C0])}];
  v8 = *MEMORY[0x277CDA230];
  [v6 setFillMode:*MEMORY[0x277CDA230]];
  v9 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.y"];
  [v9 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", v7)}];
  [v9 setBeginTime:a3];
  [v9 setDuration:a2];
  [v9 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", -1.57079633)}];
  v10 = objc_alloc_init(MEMORY[0x277CD9E00]);
  [v10 setAnimations:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", v6, v9, 0)}];
  [v10 setDuration:a2 + a3];
  [v10 setFillMode:v8];

  return [self addAnimation:v10 forKey:@"kTSDRotateInAnimationKey"];
}

- (void)addRippleAnimationFromPosition:()TSDAdditions withScale:addPerspectiveProjection:
{
  [self removeRippleAnimation];
  v10 = *MEMORY[0x277CDA7B8];
  v11 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  LODWORD(v12) = *"333?fff?";
  LODWORD(v13) = 1036831949;
  LODWORD(v14) = *"fff?";
  LODWORD(v15) = 1.0;
  v16 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v12 :v13 :v14 :v15];
  [self position];
  v19 = TSDSubtractPoints(v17, v18, a2);
  v21 = v20;
  v22 = TSDPointLength(v19, v20);
  v24 = TSDMultiplyPointScalar(v19, v21, 1.0 / v22);
  v25 = 0.0;
  if (a4 * 350.0 - v22 >= 0.0)
  {
    v25 = a4 * 350.0 - v22;
  }

  v26 = v25 / (a4 * 350.0);
  v27 = v26 * v26 * a4;
  if (v27 != 0.0)
  {
    v54 = v23;
    v28 = 1.0 - v26;
    if (a6)
    {
      [self addPerspectiveProjection];
    }

    v29 = v28 * 0.55;
    v30 = v27 * 0.549778714;
    v31 = 1.5;
    v32 = sqrt(v22);
    array = [MEMORY[0x277CBEB18] array];
    v34 = v54;
    if (v54 != 0.0)
    {
      v35 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.x"];
      [v35 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v30 * 0.0 * -v54)}];
      [v35 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v30 * -v54)}];
      [v35 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", v10)}];
      [v35 setDuration:0.0225];
      [v35 setBeginTime:v29 + 0.0];
      v36 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.x"];
      [v36 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v30 * -v54)}];
      [v36 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v30 * -0.5 * -v54)}];
      [v36 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", v10)}];
      [v36 setDuration:0.315];
      [v36 setBeginTime:v29 + 0.0225];
      v37 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.x"];
      v31 = 1.5;
      [v37 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v30 * -0.5 * -v54)}];
      [v37 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
      [v37 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", *MEMORY[0x277CDA7C0])}];
      [v37 setDuration:0.1125];
      [v37 setBeginTime:v29 + 0.3375];
      [array addObject:v35];
      [array addObject:v36];
      [array addObject:v37];
    }

    v38 = v32 * v31;
    v39 = v27 * 0.15;
    if (v24 == 0.0)
    {
      v41 = v29 + 0.0;
    }

    else
    {
      v53 = v32 * v31;
      v40 = [MEMORY[0x277CD9E10] animationWithKeyPath:{@"transform.rotation.y", v34}];
      [v40 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v24 * v30)}];
      [v40 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", v10)}];
      [v40 setDuration:0.0225];
      v41 = v29 + 0.0;
      [v40 setBeginTime:v29 + 0.0];
      v42 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.y"];
      [v42 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v24 * v30)}];
      [v42 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v24 * (v30 * -0.5))}];
      [v42 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", v10)}];
      [v42 setDuration:0.315];
      [v42 setBeginTime:v29 + 0.0225];
      v43 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.y"];
      [v43 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v24 * (v30 * -0.5))}];
      [v43 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
      [v43 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", *MEMORY[0x277CDA7C0])}];
      [v43 setDuration:0.1125];
      [v43 setBeginTime:v29 + 0.3375];
      [array addObject:v40];
      [array addObject:v42];
      [array addObject:v43];
      v38 = v53;
    }

    v44 = v38 * v27;
    v45 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale.xy"];
    [v45 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v39 + 1.0)}];
    [v45 setTimingFunction:v16];
    [v45 setDuration:0.2025];
    [v45 setBeginTime:v41];
    v46 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale.xy"];
    [v46 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v39 + 1.0)}];
    [v46 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v39 * 0.0 + 1.0)}];
    [v46 setTimingFunction:v11];
    [v46 setDuration:0.2475];
    [v46 setBeginTime:v29 + 0.2025];
    [array addObject:v45];
    [array addObject:v46];
    if (v24 != 0.0)
    {
      v47 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.translation.x"];
      v48 = v24 * v44;
      [v47 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v48)}];
      [v47 setTimingFunction:v11];
      [v47 setDuration:0.1125];
      [v47 setBeginTime:v41];
      v49 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.translation.x"];
      [v49 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v48)}];
      [v49 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
      [v49 setTimingFunction:v11];
      [v49 setDuration:0.225];
      [v49 setBeginTime:v29 + 0.1125];
      [array addObject:v47];
      [array addObject:v49];
    }

    if (v54 != 0.0)
    {
      v50 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.translation.y"];
      [v50 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v54 * v44)}];
      [v50 setTimingFunction:v11];
      [v50 setDuration:0.2025];
      [v50 setBeginTime:v41];
      v51 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.translation.y"];
      [v51 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v54 * v44)}];
      [v51 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
      [v51 setTimingFunction:v11];
      [v51 setDuration:0.2475];
      [v51 setBeginTime:v29 + 0.2025];
      [array addObject:v50];
      [array addObject:v51];
    }

    v52 = objc_alloc_init(MEMORY[0x277CD9E00]);
    [v52 setAnimations:array];
    [v52 setDuration:v29 + 0.45];
    [v52 setFillMode:*MEMORY[0x277CDA238]];

    [self addAnimation:v52 forKey:@"kTSDRippleAnimationKey"];
  }
}

- (uint64_t)addResetAnimationWithDelegate:()TSDAdditions
{
  v22 = *MEMORY[0x277D85DE8];
  presentationLayer = [self presentationLayer];
  array = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"transform.translation.x", @"transform.translation.y", @"transform.translation.z", @"transform.rotation.x", @"transform.rotation.y", @"transform.rotation.z", @"transform.scale.x", @"transform.scale.y", @"transform.scale.z", @"position.x", @"position.y", @"zPosition", @"opacity", 0}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = *MEMORY[0x277CDA7B8];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (([objc_msgSend(self valueForKeyPath:{v12), "isEqual:", objc_msgSend(presentationLayer, "valueForKeyPath:", v12)}] & 1) == 0)
        {
          v13 = [MEMORY[0x277CD9E10] animationWithKeyPath:v12];
          [v13 setFromValue:{objc_msgSend(presentationLayer, "valueForKeyPath:", v12)}];
          [v13 setToValue:{objc_msgSend(self, "valueForKeyPath:", v12)}];
          [v13 setDuration:0.2];
          [v13 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", v10)}];
          [array addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  [self removeAllAnimations];
  result = [array count];
  if (result)
  {
    v15 = objc_alloc_init(MEMORY[0x277CD9E00]);
    [v15 setAnimations:array];
    [v15 setDuration:0.2];
    if (a3)
    {
      [v15 setDelegate:?];
    }

    return [self addAnimation:v15 forKey:@"kTSDResetAnimationKey"];
  }

  return result;
}

- (uint64_t)addZoomAnimation
{
  [self position];

  return [self addZoomAnimationFromPoint:? startingScale:?];
}

- (uint64_t)addZoomAnimationFromPoint:()TSDAdditions startingScale:
{
  [self removeZoomAnimation];
  array = [MEMORY[0x277CBEB18] array];
  [self position];
  if (a2 != v10 || a3 != v9)
  {
    [self frame];
    v12 = a2 - CGRectGetMinX(v36);
    [self frame];
    v14 = v12 / v13;
    [self frame];
    v15 = a3 - CGRectGetMinY(v37);
    [self frame];
    v17 = v15 / v16;
    v18 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"anchorPoint"];
    v19 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v14, v17}];
    [v18 setToValue:v19];
    [v18 setFromValue:v19];
    [v18 setDuration:0.2];
    [array addObject:v18];
    [self anchorPoint];
    v21 = TSDSubtractPoints(v14, v17, v20);
    v23 = v22;
    [self frame];
    v25 = v21 * v24;
    [self frame];
    v27 = v23 * v26;
    v28 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"position"];
    v29 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v25, v27}];
    [v28 setToValue:v29];
    [v28 setFromValue:v29];
    [v28 setDuration:0.2];
    [v28 setAdditive:1];
    [array addObject:v28];
  }

  v30 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale.xy"];
  [v30 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", a4)}];
  [v30 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 1.0)}];
  v31 = *MEMORY[0x277CDA7C0];
  [v30 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", *MEMORY[0x277CDA7C0])}];
  [v30 setDuration:0.2];
  [array addObject:v30];
  v32 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v32 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
  [v32 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 1.0)}];
  [v32 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", v31)}];
  [v32 setDuration:0.2];
  [array addObject:v32];
  v33 = objc_alloc_init(MEMORY[0x277CD9E00]);
  [v33 setAnimations:array];
  [v33 setDuration:0.2];

  return [self addAnimation:v33 forKey:@"kTSDZoomAnimationKey"];
}

- (uint64_t)addZoomDownAnimation
{
  [self position];

  return [self addZoomDownAnimationFromPoint:? endingScale:? delay:?];
}

- (uint64_t)addZoomDownAnimationFromPoint:()TSDAdditions endingScale:delay:
{
  [self removeZoomDownAnimation];
  array = [MEMORY[0x277CBEB18] array];
  [self position];
  if (a2 != v12 || a3 != v11)
  {
    [self frame];
    v14 = a2 - CGRectGetMinX(v38);
    [self frame];
    v16 = v14 / v15;
    [self frame];
    v17 = a3 - CGRectGetMinY(v39);
    [self frame];
    v19 = v17 / v18;
    v20 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"anchorPoint"];
    v21 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v16, v19}];
    [v20 setToValue:v21];
    [v20 setFromValue:v21];
    [v20 setDuration:0.2];
    [v20 setBeginTime:a5];
    [array addObject:v20];
    [self anchorPoint];
    v23 = TSDSubtractPoints(v16, v19, v22);
    v25 = v24;
    [self frame];
    v27 = v23 * v26;
    [self frame];
    v29 = v25 * v28;
    v30 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"position"];
    v31 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v27, v29}];
    [v30 setToValue:v31];
    [v30 setFromValue:v31];
    [v30 setDuration:0.2];
    [v30 setBeginTime:a5];
    [v30 setAdditive:1];
    [array addObject:v30];
  }

  v32 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale.xy"];
  [v32 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 1.0)}];
  [v32 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", a4)}];
  v33 = *MEMORY[0x277CDA7B0];
  [v32 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", *MEMORY[0x277CDA7B0])}];
  [v32 setDuration:0.2];
  [v32 setBeginTime:a5];
  [array addObject:v32];
  v34 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v34 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 1.0)}];
  [v34 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
  [v34 setTimingFunction:{objc_msgSend(MEMORY[0x277CD9EF8], "functionWithName:", v33)}];
  [v34 setDuration:0.2];
  [v34 setBeginTime:a5];
  [array addObject:v34];
  v35 = objc_alloc_init(MEMORY[0x277CD9E00]);
  [v35 setAnimations:array];
  [v35 setDuration:a5 + 0.2];

  return [self addAnimation:v35 forKey:@"kTSDZoomDownAnimationKey"];
}

- (uint64_t)animationDidStop:()TSDAdditions finished:
{
  result = [a3 valueForKey:@"kTSDLayerToRemove"];
  if (result)
  {
    v5 = [objc_msgSend(a3 valueForKey:{@"kTSDLayerToRemove", "nonretainedObjectValue"}];

    return [v5 removeFromSuperlayer];
  }

  return result;
}

- (double)frameIncludingSublayers
{
  v30 = *MEMORY[0x277D85DE8];
  [self frame];
  x = v2;
  y = v4;
  width = v6;
  height = v8;
  if (([self masksToBounds] & 1) == 0)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    sublayers = [self sublayers];
    v11 = [sublayers countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(sublayers);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          [v15 frameIncludingSublayers];
          [self convertRect:objc_msgSend(v15 fromLayer:{"superlayer"), v16, v17, v18, v19}];
          v33.origin.x = v20;
          v33.origin.y = v21;
          v33.size.width = v22;
          v33.size.height = v23;
          v31.origin.x = x;
          v31.origin.y = y;
          v31.size.width = width;
          v31.size.height = height;
          v32 = CGRectUnion(v31, v33);
          x = v32.origin.x;
          y = v32.origin.y;
          width = v32.size.width;
          height = v32.size.height;
        }

        v12 = [sublayers countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
    }
  }

  return x;
}

- (CGImage)newRasterizedImageRef
{
  selfCopy2 = self;
  if ([objc_msgSend(self "sublayers")] <= 1)
  {
    selfCopy2 = self;
    while (1)
    {
      [selfCopy2 borderWidth];
      if (v17 != 0.0)
      {
        break;
      }

      if ([selfCopy2 mask])
      {
        break;
      }

      [selfCopy2 opacity];
      if (v18 != 1.0)
      {
        break;
      }

      [selfCopy2 cornerRadius];
      if (v19 != 0.0)
      {
        break;
      }

      [selfCopy2 shadowOpacity];
      if (v20 != 0.0 || [selfCopy2 backgroundColor])
      {
        break;
      }

      if (selfCopy2)
      {
        [selfCopy2 transform];
      }

      else
      {
        memset(&v48, 0, sizeof(v48));
      }

      if (!CATransform3DIsIdentity(&v48))
      {
        break;
      }

      [selfCopy2 contentsRect];
      v55.origin.x = 0.0;
      v55.origin.y = 0.0;
      v55.size.width = 1.0;
      v55.size.height = 1.0;
      if (!CGRectEqualToRect(v53, v55))
      {
        break;
      }

      if ([objc_msgSend(selfCopy2 "sublayers")] != 1)
      {
        if (![selfCopy2 contents])
        {
          break;
        }

        Image = [selfCopy2 contents];
        CGImageRetain(Image);
        return Image;
      }

      [selfCopy2 bounds];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      [objc_msgSend(objc_msgSend(selfCopy2 "sublayers")];
      v56.origin.x = v29;
      v56.origin.y = v30;
      v56.size.width = v31;
      v56.size.height = v32;
      v54.origin.x = v22;
      v54.origin.y = v24;
      v54.size.width = v26;
      v54.size.height = v28;
      if (CGRectEqualToRect(v54, v56))
      {
        selfCopy2 = [objc_msgSend(selfCopy2 "sublayers")];
        if ([objc_msgSend(selfCopy2 "sublayers")] <= 1)
        {
          continue;
        }
      }

      break;
    }
  }

  [self frameIncludingSublayers];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [self frame];
  MinX = CGRectGetMinX(v49);
  v50.origin.x = v4;
  v50.origin.y = v6;
  v50.size.width = v8;
  v50.size.height = v10;
  v12 = CGRectGetMinX(v50);
  [self frame];
  MinY = CGRectGetMinY(v51);
  v52.origin.x = v4;
  v52.origin.y = v6;
  v52.size.width = v8;
  v52.size.height = v10;
  v14 = CGRectGetMinY(v52);
  v15 = TSDBitmapContextCreate(11, v8);
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  if (selfCopy2)
  {
    [selfCopy2 transform];
  }

  else
  {
    memset(&v48, 0, sizeof(v48));
  }

  v34 = MinX - v12;
  if (!CATransform3DIsIdentity(&v48))
  {
    v35 = *(MEMORY[0x277CBF2C0] + 16);
    *&v48.m11 = *MEMORY[0x277CBF2C0];
    *&v48.m13 = v35;
    *&v48.m21 = *(MEMORY[0x277CBF2C0] + 32);
    *&transform.a = *&v48.m11;
    *&transform.c = v35;
    *&transform.tx = *&v48.m21;
    CGAffineTransformTranslate(&v48, &transform, -v4, -v6);
    [self anchorPoint];
    v37 = v36;
    v39 = v38;
    [self bounds];
    v41 = TSDMultiplyPointBySize(v37, v39, v40);
    v43 = v42;
    *&t1.a = *&v48.m11;
    *&t1.c = *&v48.m13;
    *&t1.tx = *&v48.m21;
    CGAffineTransformTranslate(&transform, &t1, v41, v42);
    *&v48.m11 = *&transform.a;
    *&v48.m13 = *&transform.c;
    *&v48.m21 = *&transform.tx;
    if (self)
    {
      [self affineTransform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    *&v45.a = *&v48.m11;
    *&v45.c = *&v48.m13;
    *&v45.tx = *&v48.m21;
    CGAffineTransformConcat(&transform, &t1, &v45);
    *&v48.m13 = *&transform.c;
    *&v48.m21 = *&transform.tx;
    *&v48.m11 = *&transform.a;
    t1 = transform;
    CGAffineTransformTranslate(&transform, &t1, -v41, -v43);
    *&v48.m13 = *&transform.c;
    *&v48.m21 = *&transform.tx;
    *&v48.m11 = *&transform.a;
    CGContextConcatCTM(v16, &transform);
  }

  CGAffineTransformMakeTranslation(&v48, v34, MinY - v14);
  CGContextConcatCTM(v16, &v48);
  [self renderInContext:v16];
  Image = CGBitmapContextCreateImage(v16);
  CGContextRelease(v16);
  return Image;
}

- (void)bakedLayer
{
  newRasterizedImageRef = [self newRasterizedImageRef];
  if (!newRasterizedImageRef)
  {
    return 0;
  }

  v3 = newRasterizedImageRef;
  layer = [MEMORY[0x277CD9ED0] layer];
  [self frameIncludingSublayers];
  [layer setFrame:?];
  [layer setContents:v3];
  CGImageRelease(v3);
  return layer;
}

- (uint64_t)pause
{
  v2 = CACurrentMediaTime();

  return [self pauseAtTime:v2];
}

- (uint64_t)pauseAtTime:()TSDAdditions
{
  [self convertTime:0 fromLayer:?];
  v3 = v2;
  [self setSpeed:0.0];

  return [self setTimeOffset:v3];
}

- (uint64_t)resume
{
  v2 = CACurrentMediaTime();

  return [self resumeAtTime:v2];
}

- (uint64_t)resumeAtTime:()TSDAdditions
{
  [self timeOffset];
  v5 = v4;
  LODWORD(v4) = 1.0;
  [self setSpeed:v4];
  [self setTimeOffset:0.0];
  [self setBeginTime:0.0];
  [self convertTime:0 fromLayer:a2];
  v7 = v6 - v5;

  return [self setBeginTime:v7];
}

- (CGFloat)transformToScale:()TSDAdditions aroundBoundsPoint:afterOffset:
{
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  CATransform3DMakeTranslation(a2, a6, a7, 0.0);
  [self bounds];
  v13 = v12;
  [self anchorPoint];
  v15 = v14;
  v46 = -v13;
  v16 = a4 - v13 * v14;
  [self bounds];
  v18 = v17;
  [self anchorPoint];
  v20 = v19;
  v21 = *(a2 + 80);
  *&v47.m31 = *(a2 + 64);
  *&v47.m33 = v21;
  v22 = *(a2 + 112);
  *&v47.m41 = *(a2 + 96);
  *&v47.m43 = v22;
  v23 = *(a2 + 16);
  *&v47.m11 = *a2;
  *&v47.m13 = v23;
  v24 = *(a2 + 48);
  *&v47.m21 = *(a2 + 32);
  *&v47.m23 = v24;
  CATransform3DTranslate(&v48, &v47, v16, a5 - v18 * v19, 0.0);
  v25 = *&v48.m33;
  *(a2 + 64) = *&v48.m31;
  *(a2 + 80) = v25;
  v26 = *&v48.m43;
  *(a2 + 96) = *&v48.m41;
  *(a2 + 112) = v26;
  v27 = *&v48.m13;
  *a2 = *&v48.m11;
  *(a2 + 16) = v27;
  v28 = *&v48.m23;
  *(a2 + 32) = *&v48.m21;
  *(a2 + 48) = v28;
  v29 = *(a2 + 80);
  *&v47.m31 = *(a2 + 64);
  *&v47.m33 = v29;
  v30 = *(a2 + 112);
  *&v47.m41 = *(a2 + 96);
  *&v47.m43 = v30;
  v31 = *(a2 + 16);
  *&v47.m11 = *a2;
  *&v47.m13 = v31;
  v32 = *(a2 + 48);
  *&v47.m21 = *(a2 + 32);
  *&v47.m23 = v32;
  CATransform3DScale(&v48, &v47, a3, a3, 1.0);
  v33 = *&v48.m33;
  *(a2 + 64) = *&v48.m31;
  *(a2 + 80) = v33;
  v34 = *&v48.m43;
  *(a2 + 96) = *&v48.m41;
  *(a2 + 112) = v34;
  v35 = *&v48.m13;
  *a2 = *&v48.m11;
  *(a2 + 16) = v35;
  v36 = *&v48.m23;
  *(a2 + 32) = *&v48.m21;
  *(a2 + 48) = v36;
  v37 = *(a2 + 80);
  *&v47.m31 = *(a2 + 64);
  *&v47.m33 = v37;
  v38 = *(a2 + 112);
  *&v47.m41 = *(a2 + 96);
  *&v47.m43 = v38;
  v39 = *(a2 + 16);
  *&v47.m11 = *a2;
  *&v47.m13 = v39;
  v40 = *(a2 + 48);
  *&v47.m21 = *(a2 + 32);
  *&v47.m23 = v40;
  CATransform3DTranslate(&v48, &v47, -(a4 + v46 * v15), -(a5 + -v18 * v20), 0.0);
  v41 = *&v48.m33;
  *(a2 + 64) = *&v48.m31;
  *(a2 + 80) = v41;
  v42 = *&v48.m43;
  *(a2 + 96) = *&v48.m41;
  *(a2 + 112) = v42;
  v43 = *&v48.m13;
  *a2 = *&v48.m11;
  *(a2 + 16) = v43;
  result = v48.m21;
  v45 = *&v48.m23;
  *(a2 + 32) = *&v48.m21;
  *(a2 + 48) = v45;
  return result;
}

- (double)transformToScale:()TSDAdditions aroundAnchorPoint:afterOffset:
{
  [self bounds];
  v15 = v14;
  [self bounds];
  if (self)
  {

    [self transformToScale:a3 aroundBoundsPoint:a4 * v15 afterOffset:{a5 * v16, a6, a7}];
  }

  else
  {
    result = 0.0;
    a2[6] = 0u;
    a2[7] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

- (uint64_t)scale:()TSDAdditions aroundBoundsPoint:afterOffset:
{
  if (self)
  {
    [self transformToScale:? aroundBoundsPoint:? afterOffset:?];
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v4 = 0u;
    v5 = 0u;
  }

  v3[4] = v8;
  v3[5] = v9;
  v3[6] = v10;
  v3[7] = v11;
  v3[0] = v4;
  v3[1] = v5;
  v3[2] = v6;
  v3[3] = v7;
  return [self setTransform:v3];
}

- (uint64_t)scale:()TSDAdditions aroundAnchorPoint:afterOffset:
{
  if (self)
  {
    [self transformToScale:? aroundAnchorPoint:? afterOffset:?];
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v4 = 0u;
    v5 = 0u;
  }

  v3[4] = v8;
  v3[5] = v9;
  v3[6] = v10;
  v3[7] = v11;
  v3[0] = v4;
  v3[1] = v5;
  v3[2] = v6;
  v3[3] = v7;
  return [self setTransform:v3];
}

- (double)center
{
  [self anchorPoint];
  v3 = v2;
  v5 = v4;
  [self bounds];
  v9 = TSDPointFromNormalizedRect(v3, v5, v6, v7, v8);
  [self position];
  v12 = TSDSubtractPoints(v10, v11, v9);
  v14 = v13;
  [self bounds];
  v19 = TSDCenterOfRect(v15, v16, v17, v18);

  return TSDAddPoints(v12, v14, v19);
}

@end