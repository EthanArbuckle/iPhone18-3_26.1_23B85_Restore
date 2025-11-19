@interface UICollectionView(Utilities)
- (id)animationForCell:()Utilities sourceCell:triggerDelay:;
- (void)stk_performRippleAnimationAtIndexPath:()Utilities delay:;
@end

@implementation UICollectionView(Utilities)

- (void)stk_performRippleAnimationAtIndexPath:()Utilities delay:
{
  v6 = a4;
  v7 = [a1 visibleCells];
  v8 = [a1 cellForItemAtIndexPath:v6];

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__UICollectionView_Utilities__stk_performRippleAnimationAtIndexPath_delay___block_invoke;
  v10[3] = &unk_279D143D8;
  v10[4] = a1;
  v11 = v8;
  v12 = a2;
  v9 = v8;
  [v7 enumerateObjectsUsingBlock:v10];
  [MEMORY[0x277CD9FF0] commit];
}

- (id)animationForCell:()Utilities sourceCell:triggerDelay:
{
  v76[2] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  if (v7 == v8)
  {
    v47 = [MEMORY[0x277CD9E00] animation];
  }

  else
  {
    [v7 bounds];
    [v7 convertRect:0 toView:?];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [v8 bounds];
    [v8 convertRect:0 toView:?];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v61 = a1;
    v24 = v23;
    v25 = STKCenterOfRect(v10, v12, v14, v16);
    v27 = v26;
    v28 = STKCenterOfRect(v18, v20, v22, v24);
    v30 = v29;
    v31 = STKDistance(v28, v29, v25, v27);
    v32 = STKSubtractPoints(v28, v30, v25);
    v34 = STKNiceAngleFromDelta(v32, v33);
    v35 = STKExponentialDecay(0.2, 0.004, v31);
    v36 = __sincos_stret(v34);
    v37 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform"];
    memset(&v75, 0, sizeof(v75));
    CATransform3DMakeScale(&v75, v35 * 0.5 + 1.0, v35 * 0.5 + 1.0, 1.0);
    memset(&v74, 0, sizeof(v74));
    CATransform3DMakeTranslation(&v74, v36.__cosval * (v35 * -100.0), v36.__sinval * (v35 * -100.0), 0.0);
    a = v75;
    b = v74;
    CATransform3DConcat(&v73, &a, &b);
    v75 = v73;
    v60 = *(MEMORY[0x277CD9DE8] + 112);
    v69 = *(MEMORY[0x277CD9DE8] + 96);
    v59 = v69;
    v70 = v60;
    v57 = *(MEMORY[0x277CD9DE8] + 80);
    v67 = *(MEMORY[0x277CD9DE8] + 64);
    v55 = v67;
    v68 = v57;
    v58 = *(MEMORY[0x277CD9DE8] + 48);
    v65 = *(MEMORY[0x277CD9DE8] + 32);
    v56 = v65;
    v66 = v58;
    v54 = *(MEMORY[0x277CD9DE8] + 16);
    v64[0] = *MEMORY[0x277CD9DE8];
    v53 = v64[0];
    v64[1] = v54;
    v38 = [MEMORY[0x277CCAE60] valueWithBytes:v64 objCType:"{CATransform3D=dddddddddddddddd}"];
    [v37 setFromValue:v38];

    v63 = v75;
    v39 = [MEMORY[0x277CCAE60] valueWithBytes:&v63 objCType:"{CATransform3D=dddddddddddddddd}"];
    [v37 setToValue:v39];

    [v37 setBeginTime:(v31 * 0.000833333333)];
    [v37 setDuration:0.2];
    v40 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
    [v37 setTimingFunction:v40];

    v41 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"transform"];
    [v41 setFillMode:*MEMORY[0x277CDA238]];
    v62[4] = v55;
    v62[5] = v57;
    v62[6] = v59;
    v62[7] = v60;
    v62[0] = v53;
    v62[1] = v54;
    v62[2] = v56;
    v62[3] = v58;
    v42 = [MEMORY[0x277CCAE60] valueWithBytes:v62 objCType:"{CATransform3D=dddddddddddddddd}"];
    [v41 setToValue:v42];

    v43 = [v37 toValue];
    [v41 setFromValue:v43];

    [v41 setMass:1.0];
    [v41 setDamping:24.87471];
    [v41 setStiffness:275.004];
    [v37 beginTime];
    v45 = v44;
    [v37 duration];
    [v41 setBeginTime:v45 + v46];
    [v41 settlingDuration];
    [v41 setDuration:?];
    v47 = [MEMORY[0x277CD9E00] animation];
    v76[0] = v37;
    v76[1] = v41;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:2];
    [v47 setAnimations:v48];

    [v41 duration];
    v50 = v49;
    [v41 beginTime];
    [v47 setDuration:v50 + v51];
    [v47 setBeginTime:CACurrentMediaTime() + v61];
  }

  return v47;
}

@end