@interface TTKTypistContinuousPathGenerator
- (CGPoint)_pointOnCurve:(id)curve atTime:(double)time;
- (TTKTypistContinuousPathGenerator)initWithParams:(id)params;
- (id)_generateControlPoints:(id)points alpha:(double)alpha;
- (id)_generateTouchPointsOnPath:(id)path withSegmentTiming:(id)timing;
- (id)generatePathFromInflectionPoints:(id)points timestamp:(double)timestamp segmentTiming:(id)timing keys:(id)keys string:(id)string layout:(id)layout;
@end

@implementation TTKTypistContinuousPathGenerator

- (id)generatePathFromInflectionPoints:(id)points timestamp:(double)timestamp segmentTiming:(id)timing keys:(id)keys string:(id)string layout:(id)layout
{
  pointsCopy = points;
  timingCopy = timing;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = [pointsCopy objectAtIndexedSubscript:0];
  [v12 addObject:v13];

  [v12 addObjectsFromArray:pointsCopy];
  v14 = [pointsCopy objectAtIndexedSubscript:{objc_msgSend(pointsCopy, "count") - 1}];
  [v12 addObject:v14];

  if (!timingCopy)
  {
    v18.receiver = self;
    v18.super_class = TTKTypistContinuousPathGenerator;
    timingCopy = [(TTKDefaultContinuousPathGenerator *)&v18 generateTimingArray:pointsCopy];
  }

  [(TTKTypistContinuousPathGenerator *)self alpha];
  v15 = [(TTKTypistContinuousPathGenerator *)self _generateControlPoints:v12 alpha:?];
  v16 = [(TTKTypistContinuousPathGenerator *)self _generateTouchPointsOnPath:v15 withSegmentTiming:timingCopy];

  return v16;
}

- (TTKTypistContinuousPathGenerator)initWithParams:(id)params
{
  paramsCopy = params;
  v14.receiver = self;
  v14.super_class = TTKTypistContinuousPathGenerator;
  v5 = [(TTKDefaultContinuousPathGenerator *)&v14 initWithParams:paramsCopy];
  v6 = v5;
  if (v5)
  {
    if (paramsCopy)
    {
      v7 = [paramsCopy objectForKey:@"ALPHA"];
      if (v7)
      {
        v8 = [paramsCopy objectForKey:@"ALPHA"];
        [v8 floatValue];
        v10 = v9;
        if (v9 > 1.0)
        {
          v10 = 1.0;
        }

        v11 = v9 < 0.0;
        v12 = 0.0;
        if (!v11)
        {
          v12 = v10;
        }

        [(TTKTypistContinuousPathGenerator *)v6 setAlpha:v12];
      }

      else
      {
        [(TTKTypistContinuousPathGenerator *)v6 setAlpha:0.5];
      }
    }

    else
    {
      [(TTKTypistContinuousPathGenerator *)v5 setAlpha:0.5];
    }
  }

  return v6;
}

- (id)_generateControlPoints:(id)points alpha:(double)alpha
{
  v122[3] = *MEMORY[0x277D85DE8];
  pointsCopy = points;
  v7 = pointsCopy;
  if (!pointsCopy || (v8 = [pointsCopy count], v8 < 4))
  {
    v9 = 0;
    goto LABEL_18;
  }

  v10 = v8;
  bezierPath = [MEMORY[0x277D75208] bezierPath];
  v9 = objc_opt_new();
  v11 = 0;
  v12 = alpha + alpha;
  alphaCopy = alpha;
  v109 = alphaCopy;
  v110 = v12;
  do
  {
    v14 = (v11 + 2) % v10;
    if (v14 + 1 == v10)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14 + 1;
    }

    v16 = [v7 objectAtIndex:v11];
    [v16 CGPointValue];
    v18 = v17;
    v20 = v19;

    v21 = [v7 objectAtIndex:v11 + 1];
    [v21 CGPointValue];
    v23 = v22;
    v25 = v24;

    v26 = [v7 objectAtIndex:(v11 + 2) % v10];
    [v26 CGPointValue];
    v28 = v27;
    v30 = v29;

    v31 = [v7 objectAtIndex:v15];
    [v31 CGPointValue];
    v33 = v32;
    v35 = v34;

    v112 = v20;
    v113 = v18;
    [(TTKDefaultContinuousPathGenerator *)self subtractPoint:v23 byPoint:v25, v18, v20];
    v37 = v36;
    v39 = v38;
    v120 = v25;
    v121 = v23;
    [(TTKDefaultContinuousPathGenerator *)self subtractPoint:v28 byPoint:v30, v23, v25];
    v41 = v40;
    v43 = v42;
    v116 = v35;
    v117 = v33;
    [(TTKDefaultContinuousPathGenerator *)self subtractPoint:v33 byPoint:v35, v28, v30];
    v45 = v44;
    v47 = v46;
    [(TTKDefaultContinuousPathGenerator *)self dotProduct:v37 andPoint:v39, v37, v39];
    *&v48 = v48;
    v49 = sqrtf(*&v48);
    [(TTKDefaultContinuousPathGenerator *)self dotProduct:v41 andPoint:v43, v41, v43];
    *&v50 = v50;
    v51 = sqrtf(*&v50);
    [(TTKDefaultContinuousPathGenerator *)self dotProduct:v45 andPoint:v47, v45, v47];
    v53 = v52;
    v118 = v30;
    v119 = v28;
    v115 = v51;
    if (fabsf(v49) >= 0.00000011921)
    {
      v108 = v52;
      v58 = powf(v49, v110);
      [(TTKDefaultContinuousPathGenerator *)self scalarMultiplyPoint:v28 by:v30, v58];
      v60 = v59;
      v62 = v61;
      v63 = powf(v51, v110);
      [(TTKDefaultContinuousPathGenerator *)self scalarMultiplyPoint:v113 by:v112, v63];
      [(TTKDefaultContinuousPathGenerator *)self subtractPoint:v60 byPoint:v62, v64, v65];
      v67 = v66;
      v69 = v68;
      v70 = powf(v49, v109) * 3.0;
      v71 = (v63 + ((v70 * powf(v51, v109)) + (v58 * 2.0)));
      v54 = v120;
      v55 = v121;
      [(TTKDefaultContinuousPathGenerator *)self scalarMultiplyPoint:v121 by:v120, v71];
      [(TTKDefaultContinuousPathGenerator *)self addPoint:v67 andPoint:v69, v72, v73];
      [TTKDefaultContinuousPathGenerator scalarMultiplyPoint:"scalarMultiplyPoint:by:" by:?];
      v53 = v108;
      v57 = v74;
      v56 = v75;
    }

    else
    {
      v54 = v120;
      v55 = v121;
      v56 = v120;
      v57 = v121;
    }

    v76 = v53;
    v77 = sqrtf(v76);
    if (fabsf(v77) < 0.00000011921)
    {
      v78 = v118;
      v79 = v119;
      v80 = v118;
      v81 = v119;
      if (v11)
      {
        goto LABEL_14;
      }

LABEL_13:
      [bezierPath moveToPoint:{v121, v120, *&v108}];
      v82 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v121, v120}];
      [v9 addObject:v82];

      goto LABEL_14;
    }

    v87 = powf(v77, v110);
    [(TTKDefaultContinuousPathGenerator *)self scalarMultiplyPoint:v55 by:v54, v87];
    v89 = v88;
    v114 = v57;
    v91 = v90;
    v92 = powf(v115, v110);
    [(TTKDefaultContinuousPathGenerator *)self scalarMultiplyPoint:v117 by:v116, v92];
    [(TTKDefaultContinuousPathGenerator *)self subtractPoint:v89 byPoint:v91, v93, v94];
    v96 = v95;
    v98 = v97;
    v99 = powf(v77, v109) * 3.0;
    v100 = (v92 + ((powf(v115, v109) * v99) + (v87 * 2.0)));
    v78 = v118;
    v79 = v119;
    [(TTKDefaultContinuousPathGenerator *)self scalarMultiplyPoint:v119 by:v118, v100];
    v102 = v101;
    v103 = v98;
    v57 = v114;
    [(TTKDefaultContinuousPathGenerator *)self addPoint:v96 andPoint:v103, v104, v102];
    [TTKDefaultContinuousPathGenerator scalarMultiplyPoint:"scalarMultiplyPoint:by:" by:?];
    v81 = v105;
    v80 = v106;
    if (!v11)
    {
      goto LABEL_13;
    }

LABEL_14:
    [bezierPath addCurveToPoint:v79 controlPoint1:v78 controlPoint2:{v57, v56, v81, v80, *&v108}];
    v83 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v57, v56}];
    v122[0] = v83;
    v84 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v81, v80}];
    v122[1] = v84;
    v85 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v79, v78}];
    v122[2] = v85;
    v86 = [MEMORY[0x277CBEA60] arrayWithObjects:v122 count:3];
    [v9 addObjectsFromArray:v86];

    ++v11;
  }

  while (v10 - 3 != v11);

LABEL_18:

  return v9;
}

- (CGPoint)_pointOnCurve:(id)curve atTime:(double)time
{
  curveCopy = curve;
  v6 = [curveCopy count];
  v7 = [curveCopy objectAtIndexedSubscript:0];
  [v7 CGPointValue];
  v10 = v9;
  if (v6 == 3)
  {

    v19 = [curveCopy objectAtIndexedSubscript:1];
    [v19 CGPointValue];
    v21 = v20;

    v22 = [curveCopy objectAtIndexedSubscript:2];
    [v22 CGPointValue];
    v24 = v23;

    v25 = [curveCopy objectAtIndexedSubscript:0];
    [v25 CGPointValue];
    v27 = v26;

    v28 = [curveCopy objectAtIndexedSubscript:1];
    [v28 CGPointValue];
    v30 = v29;

    v31 = [curveCopy objectAtIndexedSubscript:2];
    [v31 CGPointValue];
    v33 = v32;

    v34 = 1.0 - time;
    v35 = (v34 * v34);
    v36 = (1.0 - time + 1.0 - time) * time;
    v10 = v36 * v21 + v35 * v10 + time * time * v24;
    v11 = v36 * v30 + v35 * v27 + time * time * v33;
    goto LABEL_9;
  }

  v11 = v8;
  if (v6 == 2)
  {

    v12 = [curveCopy objectAtIndexedSubscript:1];
    [v12 CGPointValue];
    v14 = v13;
    v16 = v15;

    v17 = 1.0 - time;
    v10 = v14 * time + (1.0 - time) * v10;
    v18 = v16 * time;
LABEL_8:
    v11 = v18 + v17 * v11;
    goto LABEL_9;
  }

  if (v6 != 1)
  {

    v37 = [curveCopy objectAtIndexedSubscript:1];
    [v37 CGPointValue];
    v63 = v38;

    v39 = [curveCopy objectAtIndexedSubscript:2];
    [v39 CGPointValue];
    v62 = v40;

    v41 = [curveCopy objectAtIndexedSubscript:3];
    [v41 CGPointValue];
    v61 = v42;

    v43 = [curveCopy objectAtIndexedSubscript:0];
    [v43 CGPointValue];
    v60 = v44;

    v45 = [curveCopy objectAtIndexedSubscript:1];
    [v45 CGPointValue];
    v59 = v46;

    v47 = [curveCopy objectAtIndexedSubscript:2];
    [v47 CGPointValue];
    v49 = v48;

    v50 = [curveCopy objectAtIndexedSubscript:3];
    [v50 CGPointValue];
    v11 = v51;

    v52 = 1.0 - time;
    v53 = powf(v52, 3.0);
    v54 = time * 3.0 * (v52 * v52);
    timeCopy = time;
    v56 = (1.0 - time) * ((timeCopy * timeCopy) * 3.0);
    v17 = powf(timeCopy, 3.0);
    v10 = v54 * v63 + v53 * v10 + v56 * v62 + v17 * v61;
    v18 = v54 * v59 + v53 * v60 + v56 * v49;
    goto LABEL_8;
  }

LABEL_9:
  v57 = v10;
  v58 = v11;
  result.y = v58;
  result.x = v57;
  return result;
}

- (id)_generateTouchPointsOnPath:(id)path withSegmentTiming:(id)timing
{
  pathCopy = path;
  timingCopy = timing;
  v7 = objc_alloc_init(TIContinuousPath);
  if ([pathCopy count] != 1)
  {
    v8 = 0;
    v9 = 0;
    v20 = pathCopy;
    do
    {
      if ([pathCopy count] - v8 > 3)
      {
        v10 = 4;
      }

      else
      {
        v10 = [pathCopy count] - v8;
      }

      v11 = [pathCopy subarrayWithRange:{v8, v10}];
      v22 = v9;
      v12 = [timingCopy objectAtIndexedSubscript:v9];
      if ([v12 count])
      {
        v13 = 0;
        do
        {
          v14 = [v12 objectAtIndex:v13];
          [v14 doubleValue];
          v16 = v15;

          self->_currentTimestamp = v16 + self->_currentTimestamp;
          v17 = [TIContinuousPathSample alloc];
          [(TTKTypistContinuousPathGenerator *)self _pointOnCurve:v11 atTime:v16];
          v18 = [TIContinuousPathSample initWithPoint:v17 timeStamp:"initWithPoint:timeStamp:force:radius:stage:pathIndex:" force:7 radius:-1 stage:? pathIndex:?];
          [(TIContinuousPath *)v7 addSample:v18];

          ++v13;
        }

        while (v13 < [v12 count]);
      }

      v9 = v22 + 1;

      v8 += 3;
      pathCopy = v20;
    }

    while ([v20 count] - 1 > v8);
  }

  return v7;
}

@end