@interface _SUIAShockwaveMeshConfiguration
+ (id)meshConfigurationForState:(int64_t)a3 variant:(int64_t)a4 normalizedStartLocation:(CGRect)a5 settings:(id)a6 bounds:(CGRect)a7 idiom:(int64_t)a8 usesIntelligentFillLight:(BOOL)a9;
- (CATransform3D)viewTransform;
- (CGRect)meshFrame;
- (void)_setMeshFrame:(CGRect)a3;
- (void)_setViewTransform:(CATransform3D *)a3;
@end

@implementation _SUIAShockwaveMeshConfiguration

- (void)_setMeshFrame:(CGRect)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v5 = a3;
  v4 = [MEMORY[0x277CCAE60] valueWithBytes:&v5 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"meshFrame"];
}

- (CGRect)meshFrame
{
  v7 = 0u;
  v8 = 0u;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"meshFrame"];
  [v2 getValue:&v7 size:32];

  v4 = *(&v7 + 1);
  v3 = *&v7;
  v6 = *(&v8 + 1);
  v5 = *&v8;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_setViewTransform:(CATransform3D *)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = *&a3->m33;
  v9[4] = *&a3->m31;
  v9[5] = v4;
  v5 = *&a3->m43;
  v9[6] = *&a3->m41;
  v9[7] = v5;
  v6 = *&a3->m13;
  v9[0] = *&a3->m11;
  v9[1] = v6;
  v7 = *&a3->m23;
  v9[2] = *&a3->m21;
  v9[3] = v7;
  v8 = [MEMORY[0x277CCAE60] valueWithCATransform3D:v9];
  [(NSMutableDictionary *)propertyDictionary setObject:v8 forKey:@"viewTransform"];
}

- (CATransform3D)viewTransform
{
  v4 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"viewTransform"];
  if (v4)
  {
    v6 = v4;
    [v4 CATransform3DValue];
    v4 = v6;
  }

  else
  {
    *&retstr->m41 = 0u;
    *&retstr->m43 = 0u;
    *&retstr->m31 = 0u;
    *&retstr->m33 = 0u;
    *&retstr->m21 = 0u;
    *&retstr->m23 = 0u;
    *&retstr->m11 = 0u;
    *&retstr->m13 = 0u;
  }

  return result;
}

+ (id)meshConfigurationForState:(int64_t)a3 variant:(int64_t)a4 normalizedStartLocation:(CGRect)a5 settings:(id)a6 bounds:(CGRect)a7 idiom:(int64_t)a8 usesIntelligentFillLight:(BOOL)a9
{
  v87 = a9;
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v13 = a5.size.height;
  v14 = a5.size.width;
  v15 = a5.origin.y;
  v16 = a5.origin.x;
  v19 = a6;
  v20 = objc_alloc_init(_SUIAShockwaveMeshConfiguration);
  v21 = [v19 meshPointsAnimationSettings];
  v22 = [v19 meshPointsCancelledAnimationSettings];
  v23 = [v19 meshPositionAnimationSettings];
  v89 = v15;
  v24 = SUIAScreenEdgeForNormalizedButtonRect();
  v25 = 0;
  if (a4 > 1)
  {
    if (a4 != 2)
    {
      if (a4 != 3)
      {
        goto LABEL_10;
      }

      v26 = +[_SUIAShockwaveMeshes stingMesh];
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (!a4)
  {
    if (![v19 useSiriMeshForCapture])
    {
      v26 = +[_SUIAShockwaveMeshes captureButtonMesh];
      goto LABEL_9;
    }

LABEL_8:
    v26 = +[_SUIAShockwaveMeshes siriButtonAndEdgeMesh];
LABEL_9:
    v25 = v26;
    goto LABEL_10;
  }

  if (a4 == 1)
  {
    goto LABEL_8;
  }

LABEL_10:
  memset(&v94, 0, sizeof(v94));
  CATransform3DMakeScale(&v94, 1.0, -1.0, 1.0);
  if (v24 == 2)
  {
    v92 = v94;
    v27 = 1.57079633;
  }

  else
  {
    if (v24 == 1)
    {
      goto LABEL_19;
    }

    v92 = v94;
    if (v24 == 8)
    {
      v27 = -1.57079633;
    }

    else
    {
      v27 = 3.14159265;
    }
  }

  CATransform3DRotate(&v93, &v92, v27, 0.0, 0.0, 1.0);
  v94 = v93;
LABEL_19:
  v28 = v16;
  v90 = v14;
  v88 = v13;
  v93 = v94;
  [(_SUIAShockwaveMeshConfiguration *)v20 _setViewTransform:&v93];
  v29 = height;
  v30 = width;
  BSRectWithSize();
  if (a3 > 5)
  {
    goto LABEL_55;
  }

  if (((1 << a3) & 0x2C) != 0)
  {
    v96.origin.x = x;
    v96.origin.y = y;
    v96.size.width = width;
    v96.size.height = height;
    CGRectGetWidth(v96);
    v97.origin.x = x;
    v97.origin.y = y;
    v97.size.width = width;
    v97.size.height = height;
    CGRectGetHeight(v97);
    [v19 meshSquareFinalSizeDiagonalRatio];
    if (v24 == 4 || v24 == 1)
    {
      v98.origin.x = x;
      v98.origin.y = y;
      v98.size.width = width;
      v98.size.height = height;
      CGRectGetWidth(v98);
      [v19 meshRectangularFinalShortDimensionRatio];
      v99.origin.x = x;
      v99.origin.y = y;
      v99.size.width = width;
      v99.size.height = height;
      CGRectGetHeight(v99);
      [v19 meshRectangularFinalLongDimensionRatio];
    }

    v100.origin.x = SUIAExpandNormalizedRect(x, y, width, height, v16);
    v61 = v100.origin.x;
    v62 = v100.origin.y;
    v63 = v29;
    v64 = v100.size.width;
    v65 = y;
    v66 = v100.size.height;
    CGRectGetMidX(v100);
    v101.origin.x = v61;
    v101.origin.y = v62;
    v101.size.width = v64;
    v101.size.height = v66;
    CGRectGetMidY(v101);
    if ([v19 shouldBehaveLikeLargeScreenIdiom:a8])
    {
      [v19 meshFinalProportionTowardsCenterOnLargeDisplays];
      UIRectGetCenter();
      v67 = v63;
      v68 = x;
      v69 = v65;
      v70 = v67;
      UIRectGetCenter();
    }

    else
    {
      v70 = v63;
      v68 = x;
      v69 = v65;
    }

    if (v24 == 2)
    {
      v102.origin.x = v68;
      v102.origin.y = v69;
      v102.size.width = width;
      v102.size.height = v70;
      CGRectGetWidth(v102);
      v103.origin.x = v68;
      v103.origin.y = v69;
      v103.size.width = width;
      v103.size.height = v70;
      CGRectGetWidth(v103);
      [v19 meshFinalProportionAcrossScreenLongEdge];
    }

    else if (v24 == 1)
    {
      v104.origin.x = v68;
      v104.origin.y = v69;
      v104.size.width = width;
      v104.size.height = v70;
      CGRectGetHeight(v104);
      [v19 meshFinalProportionAcrossScreenShortEdge];
    }

    else
    {
      v71 = v68;
      v72 = v69;
      v73 = width;
      v74 = v70;
      if (v24 == 8)
      {
        CGRectGetWidth(*&v71);
        [v19 meshFinalProportionAcrossScreenLongEdge];
      }

      else
      {
        CGRectGetHeight(*&v71);
        v105.origin.y = v69;
        v105.origin.x = v68;
        v105.size.width = width;
        v105.size.height = v70;
        CGRectGetHeight(v105);
        [v19 meshFinalProportionAcrossScreenShortEdge];
      }
    }

    BSRectCenteredAboutPoint();
    [(_SUIAShockwaveMeshConfiguration *)v20 _setMeshFrame:?];
    if (a4)
    {
      v75 = 7;
    }

    else
    {
      if (v87)
      {
        [v19 visionIntelligenceHintRetargetImpulse];
      }

      else
      {
        [v19 captureHintRetargetImpulse];
      }

      v77 = v76;
      v78 = [v21 copy];

      [v78 retargetImpulse];
      [v78 setRetargetImpulse:v77 + v79];
      v80 = [v22 copy];

      [v80 retargetImpulse];
      [v80 setRetargetImpulse:v77 + v81];
      v82 = [v23 copy];

      [v82 retargetImpulse];
      [v82 setRetargetImpulse:v77 + v83];
      if ([v19 useSiriMeshForCapture])
      {
        v75 = 7;
      }

      else
      {
        v75 = 9;
      }

      v23 = v82;
      v22 = v80;
      v21 = v78;
    }

    [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v23 forKeypath:@"meshFrame"];
    v84 = [_SUIAShockwaveMeshes identityMeshTransformRows:v75 columns:v75];
    [(_SUIAShockwaveMeshConfiguration *)v20 _setMeshTransform:v84];

    if (a3 == 5)
    {
      v85 = v22;
    }

    else
    {
      v85 = v21;
    }

    [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v85 forKeypath:@"meshTransform"];
    if (a3 != 5)
    {
      [v19 meshPointsEndTransitionDelay];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setDelay:@"meshTransform" forApplicationOfKeypath:?];
    }
  }

  else
  {
    v38 = v31;
    v39 = v32;
    v40 = v33;
    v41 = v34;
    if (((1 << a3) & 0x11) != 0)
    {
      [(_SUIAShockwaveMeshConfiguration *)v20 _setMeshFrame:SAUIRectMovedOffscreenByProportionToNormalizedButtonRectInContextOfShockwaveBounds(v31, v32, v33, v34, 1.0, v35, v36, v37, v28, v89, v90, v88, x, y, v30, v29)];
      [(_SUIAShockwaveMeshConfiguration *)v20 _setMeshTransform:v25];
      if (a3 != 4)
      {
        goto LABEL_55;
      }

      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v23 forKeypath:@"meshFrame"];
      v42 = v20;
      v43 = v22;
    }

    else
    {
      v44 = SAUIRectMovedOffscreenByProportionToNormalizedButtonRectInContextOfShockwaveBounds(v31, v32, v33, v34, 1.0, v35, v36, v37, v28, v89, v90, v88, x, y, v30, v29);
      if (!a4)
      {
        [v19 captureHintMeshOffset];
        v52 = SAUIRectMovedOffscreenByProportionToNormalizedButtonRectInContextOfShockwaveBounds(v38, v39, v40, v41, v48, v49, v50, v51, v28, v89, v90, v88, x, y, v30, v29);
        v54 = v53;
        v56 = v55;
        v58 = v57;
        v59 = [v19 captureHintAnimationSettings];

        v60 = [v19 captureHintAnimationSettings];

        v47 = v58;
        v46 = v56;
        v45 = v54;
        v44 = v52;
        v23 = v59;
        v21 = v60;
      }

      [(_SUIAShockwaveMeshConfiguration *)v20 _setMeshFrame:v44, v45, v46, v47];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v23 forKeypath:@"meshFrame"];
      [(_SUIAShockwaveMeshConfiguration *)v20 _setMeshTransform:v25];
      v42 = v20;
      v43 = v21;
    }

    [(_SUIAAbstractDictionaryBackedConfiguration *)v42 _setBehaviorSettings:v43 forKeypath:@"meshTransform"];
  }

LABEL_55:

  return v20;
}

@end