id UPQuiltCornerBezierPath(void *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v13 = MEMORY[0x277D75208];
  v14 = a1;
  v15 = [v13 bezierPath];
  [v15 moveToPoint:{a6, a7}];
  UPBezierPathAddValues(v15, v14, a6, a7, a4, a5, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));

  [v15 addLineToPoint:{a2, a3}];
  [v15 addLineToPoint:{a6, a7}];
  [v15 closePath];

  return v15;
}

double UPBezierPathAddValues(void *a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v15 = a1;
  v16 = a2;
  v17 = UPOrderedKeysForValues(v16);
  v18 = v17;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3010000000;
  v62 = 0.0;
  v63 = 0.0;
  v61 = &unk_27067D36A;
  if (a7 == *MEMORY[0x277CBF348] && a8 == *(MEMORY[0x277CBF348] + 8))
  {
    v40 = 0;
    v62 = a3;
    v63 = a4;
  }

  else
  {
    v20 = [v17 firstObject];
    v21 = [v16 objectForKey:v20];
    [v20 floatValue];
    v23 = v22;
    [v21 floatValue];
    v24 = v23;
    v26 = v25;
    v27 = a5 - a3;
    v28 = a6 - a4;
    v29 = (a6 - a4) / (a5 - a3);
    v45 = a5;
    v30 = a6;
    v31 = -1.0 / v29;
    *&v29 = -1.0 / v29;
    v32 = atanf(*&v29);
    if (v31 <= 0.0)
    {
      v32 = -v32;
    }

    v33 = fmin(fmax(v24, 0.0), 1.0);
    v34 = a4 + v28 * v33;
    v35 = a3 + v27 * v33;
    v36 = __sincosf_stret(v32);
    v37 = v35 + v26 * -50.0 * v36.__cosval;
    v38 = v59;
    v39 = v34 + v26 * -50.0 * v36.__sinval;
    a6 = v30;
    a5 = v45;
    v59[4] = v37;
    v38[5] = v39;
    [v15 addQuadCurveToPoint:v37 controlPoint:?];

    v40 = 1;
  }

  if ([v18 count])
  {
    v41 = [v18 count];
    v42 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v40, v41 - v40}];
    v57[0] = 0;
    v57[1] = v57;
    v57[2] = 0x2020000000;
    v57[3] = 0;
    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x2020000000;
    v56[3] = 0;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __UPBezierPathAddValues_block_invoke;
    v46[3] = &unk_279E05D18;
    v52 = a3;
    v53 = a4;
    v54 = a5;
    v55 = a6;
    v47 = v16;
    v49 = v57;
    v50 = v56;
    v48 = v15;
    v51 = &v58;
    [v18 enumerateObjectsAtIndexes:v42 options:0 usingBlock:v46];

    _Block_object_dispose(v56, 8);
    _Block_object_dispose(v57, 8);
  }

  v43 = v59[4];
  _Block_object_dispose(&v58, 8);

  return v43;
}

id UPQuiltPieceTopBezierPath(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v17 = MEMORY[0x277D75208];
  v18 = a1;
  v19 = [v17 bezierPath];
  [v19 moveToPoint:{a2, a3}];
  [v19 addLineToPoint:{a4, a5}];
  [v19 addLineToPoint:{a8, a9}];
  UPBezierPathAddValues(v19, v18, a8, a9, a6, a7, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));

  [v19 addLineToPoint:{a2, a3}];
  [v19 closePath];

  return v19;
}

id UPQuiltPieceBottomBezierPath(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v17 = MEMORY[0x277D75208];
  v18 = a1;
  v19 = [v17 bezierPath];
  [v19 moveToPoint:{a2, a3}];
  [v19 addLineToPoint:{a4, a5}];
  UPBezierPathAddValues(v19, v18, a4, a5, a8, a9, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));

  [v19 addLineToPoint:{a6, a7}];
  [v19 addLineToPoint:{a2, a3}];
  [v19 closePath];

  return v19;
}

id UPOrderedKeysForValues(void *a1)
{
  v1 = [a1 allKeys];
  v2 = [v1 sortedArrayUsingComparator:&__block_literal_global];

  return v2;
}

double UPTangentialPointFromLine(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v9 = a3 - a1;
  v10 = -1.0 / ((a4 - a2) / (a3 - a1));
  v11 = v10;
  v12 = atanf(v11);
  if (v10 <= 0.0)
  {
    v12 = -v12;
  }

  return a1 + v9 * fmin(fmax(a5, 0.0), 1.0) + a6 * -50.0 * __sincosf_stret(v12).__cosval;
}

void __UPBezierPathAddValues_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v31 = [v3 objectForKey:v4];
  [v4 floatValue];
  v6 = v5;

  v7 = v6;
  [v31 floatValue];
  v9 = v8;
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = *(a1 + 88) - v10;
  v13 = *(a1 + 96) - v11;
  v14 = -1.0 / (v13 / v12);
  v15 = v14;
  v16 = atanf(v15);
  if (v14 <= 0.0)
  {
    v16 = -v16;
  }

  v30 = v7;
  v17 = fmin(fmax(v7, 0.0), 1.0);
  v18 = v11 + v13 * v17;
  v19 = v10 + v12 * v17;
  v20 = __sincosf_stret(v16);
  v28 = *(*(*(a1 + 48) + 8) + 24);
  v29 = *(*(*(a1 + 56) + 8) + 24);
  v21 = v19 + v9 * -50.0 * v20.__cosval;
  v22 = v18 + v9 * -50.0 * v20.__sinval;
  [*(a1 + 40) currentPoint];
  if (v24 != v21 || v23 != v22)
  {
    v26 = fmin(fmax((v28 + v30) * 0.5, 0.0), 1.0);
    [*(a1 + 40) addCurveToPoint:v21 controlPoint1:v22 controlPoint2:{v10 + v12 * v26 + v29 * -50.0 * v20.__cosval, v11 + v13 * v26 + v29 * -50.0 * v20.__sinval, v10 + v12 * v26 + v9 * -50.0 * v20.__cosval, v11 + v13 * v26 + v9 * -50.0 * v20.__sinval}];
  }

  *(*(*(a1 + 48) + 8) + 24) = v30;
  *(*(*(a1 + 56) + 8) + 24) = v9;
  v27 = *(*(a1 + 64) + 8);
  *(v27 + 32) = v21;
  *(v27 + 40) = v22;
}

double UPLengthBetweenPoints(double a1, double a2, double a3, double a4)
{
  v4 = a1 - a3;
  v5 = a2 - a4;
  return sqrtf((v4 * v4) + (v5 * v5));
}

CGFloat UPHorizontallyCenteredFrameWithEdgeInsets(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7)
{
  v11 = (a5 + a7) * (CGRectGetWidth(*&a1) * 0.5);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  return a1 + v11 / CGRectGetHeight(v13);
}

void UPBuildPathElement(void *a1, uint64_t a2)
{
  v9 = a1;
  if ([v9 count])
  {
    v3 = [v9 lastObject];
    [v3 endPoint];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v5 = *MEMORY[0x277CBF348];
    v7 = *(MEMORY[0x277CBF348] + 8);
  }

  v8 = [[UPBezierPathElement alloc] initWithStartPoint:a2 pathElement:v5, v7];
  [v9 addObject:v8];
}

id UPInterpolateBetweenBezierPaths(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!v5)
  {
    v53 = v6;
LABEL_29:
    v54 = v53;
    goto LABEL_61;
  }

  if (!v6)
  {
    v53 = v5;
    goto LABEL_29;
  }

  v8 = [MEMORY[0x277D75208] bezierPath];
  v9 = [MEMORY[0x277CBEB18] array];
  CGPathApply([v5 CGPath], v9, UPBuildPathElement);
  v10 = [MEMORY[0x277CBEB18] array];
  CGPathApply([v7 CGPath], v10, UPBuildPathElement);
  if ([v9 count])
  {
    if ([v10 count])
    {
      v152 = fmin(fmax(a3, 0.0), 1.0);
      v11 = [v9 count];
      v12 = [v10 count];
      if (v11 >= v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        v14 = 0;
        v151 = vdupq_lane_s64(*&v152, 0);
        do
        {
          v15 = [v9 objectAtIndexedSubscript:v14];
          v16 = [v10 objectAtIndexedSubscript:v14];
          v17 = [v15 type];
          if (v17 != [v16 type])
          {
            goto LABEL_18;
          }

          v18 = [v15 type];
          if (v18 > 1)
          {
            switch(v18)
            {
              case 2:
                [v15 endPoint];
                v29 = v28;
                v31 = v30;
                [v16 endPoint];
                v33 = v29 + (v32 - v29) * v152;
                v35 = v31 + (v34 - v31) * v152;
                v36 = [v15 points];
                [v8 addQuadCurveToPoint:v33 controlPoint:{v35, vmlaq_f64(v36[1], v151, vsubq_f64(*(objc_msgSend(v16, "points") + 16), v36[1]))}];
                break;
              case 3:
                [v15 endPoint];
                v38 = v37;
                v40 = v39;
                [v16 endPoint];
                v42 = v38 + (v41 - v38) * v152;
                v44 = v40 + (v43 - v40) * v152;
                v45 = [v15 points];
                v150 = vmlaq_f64(v45[1], v151, vsubq_f64(*([v16 points] + 16), v45[1]));
                v46 = [v15 points];
                [v8 addCurveToPoint:v42 controlPoint1:v44 controlPoint2:{*&v150, vmlaq_f64(v46[2], v151, vsubq_f64(*(objc_msgSend(v16, "points") + 32), v46[2]))}];
                break;
              case 4:
                [v8 closePath];
                break;
            }

            goto LABEL_19;
          }

          if (!v18)
          {
            [v15 endPoint];
            v48 = v47;
            v50 = v49;
            [v16 endPoint];
            [v8 moveToPoint:{v48 + (v51 - v48) * v152, v50 + (v52 - v50) * v152}];
            goto LABEL_19;
          }

          if (v18 == 1)
          {
LABEL_18:
            [v15 endPoint];
            v20 = v19;
            v22 = v21;
            [v16 endPoint];
            [v8 addLineToPoint:{v20 + (v23 - v20) * v152, v22 + (v24 - v22) * v152}];
          }

LABEL_19:

          ++v14;
          v25 = [v9 count];
          v26 = [v10 count];
          if (v25 >= v26)
          {
            v27 = v26;
          }

          else
          {
            v27 = v25;
          }
        }

        while (v14 < v27);
      }

      for (i = [v9 count]; i < objc_msgSend(v10, "count"); ++i)
      {
        v56 = [v9 lastObject];
        v57 = [v10 objectAtIndexedSubscript:i];
        v58 = [v57 type];
        if (v58 <= 1)
        {
          if (v58)
          {
            if (v58 == 1)
            {
              [v56 endPoint];
              v60 = v59;
              v62 = v61;
              [v57 endPoint];
              [v8 addLineToPoint:{v60 + (v63 - v60) * v152, v62 + (v64 - v62) * v152}];
            }
          }

          else
          {
            [v56 endPoint];
            v99 = v98;
            v101 = v100;
            [v57 endPoint];
            [v8 moveToPoint:{v99 + (v102 - v99) * v152, v101 + (v103 - v101) * v152}];
          }
        }

        else
        {
          switch(v58)
          {
            case 2:
              [v56 endPoint];
              v66 = v65;
              v68 = v67;
              [v57 endPoint];
              v70 = v66 + (v69 - v66) * v152;
              v72 = v68 + (v71 - v68) * v152;
              [v56 endPoint];
              v74 = v73;
              v76 = v75;
              v77 = [v57 points];
              [v8 addQuadCurveToPoint:v70 controlPoint:{v72, v74 + (*(v77 + 16) - v74) * v152, v76 + (*(v77 + 24) - v76) * v152}];
              break;
            case 3:
              [v56 endPoint];
              v79 = v78;
              v81 = v80;
              [v57 endPoint];
              v83 = v79 + (v82 - v79) * v152;
              v85 = v81 + (v84 - v81) * v152;
              [v56 endPoint];
              v87 = v86;
              v89 = v88;
              v90 = [v57 points];
              v91 = v87 + (*(v90 + 16) - v87) * v152;
              v92 = v89 + (*(v90 + 24) - v89) * v152;
              [v56 endPoint];
              v94 = v93;
              v96 = v95;
              v97 = [v57 points];
              [v8 addCurveToPoint:v83 controlPoint1:v85 controlPoint2:{v91, v92, v94 + (*(v97 + 32) - v94) * v152, v96 + (*(v97 + 40) - v96) * v152}];
              break;
            case 4:
              [v8 closePath];
              break;
          }
        }
      }

      v104 = [v10 count];
      v105 = [v9 count];
      v106 = v8;
      if (v104 < v105)
      {
        do
        {
          v107 = [v9 objectAtIndexedSubscript:v104];
          v108 = [v10 lastObject];
          v109 = [v108 type];
          if (v109 <= 1)
          {
            if (v109)
            {
              if (v109 == 1)
              {
                [v107 endPoint];
                v111 = v110;
                v113 = v112;
                [v108 endPoint];
                [v8 addLineToPoint:{v111 + (v114 - v111) * v152, v113 + (v115 - v113) * v152}];
              }
            }

            else
            {
              [v107 endPoint];
              v144 = v143;
              v146 = v145;
              [v108 endPoint];
              [v8 moveToPoint:{v144 + (v147 - v144) * v152, v146 + (v148 - v146) * v152}];
            }
          }

          else
          {
            switch(v109)
            {
              case 2:
                [v107 endPoint];
                v117 = v116;
                v119 = v118;
                [v108 endPoint];
                v121 = v117 + (v120 - v117) * v152;
                v123 = v119 + (v122 - v119) * v152;
                v124 = [v107 points];
                [v108 endPoint];
                [v8 addQuadCurveToPoint:v121 controlPoint:{v123, *(v124 + 16) + (v125 - *(v124 + 16)) * v152, *(v124 + 24) + (v126 - *(v124 + 24)) * v152}];
                break;
              case 3:
                [v107 endPoint];
                v128 = v127;
                v130 = v129;
                [v108 endPoint];
                v132 = v128 + (v131 - v128) * v152;
                v134 = v130 + (v133 - v130) * v152;
                v135 = [v107 points];
                [v108 endPoint];
                v137 = *(v135 + 16) + (v136 - *(v135 + 16)) * v152;
                v139 = *(v135 + 24) + (v138 - *(v135 + 24)) * v152;
                v140 = [v107 points];
                [v108 endPoint];
                [v8 addCurveToPoint:v132 controlPoint1:v134 controlPoint2:{v137, v139, *(v140 + 32) + (v141 - *(v140 + 32)) * v152, *(v140 + 40) + (v142 - *(v140 + 40)) * v152}];
                break;
              case 4:
                [v8 closePath];
                break;
            }
          }

          ++v104;
        }

        while (v104 < [v9 count]);
        v106 = v8;
      }
    }

    else
    {
      v106 = v5;
    }
  }

  else
  {
    v106 = v7;
  }

  v54 = v106;

LABEL_61:

  return v54;
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return [v0 addLineToPoint:{v2, v3}];
}

uint64_t OUTLINED_FUNCTION_2_0(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v10 = (v8 + a6) * v9;

  return [v6 addCurveToPoint:a1 controlPoint1:a2 controlPoint2:{a3, a4, a5, v10}];
}

uint64_t OUTLINED_FUNCTION_3_0(double a1, double a2)
{
  v6 = v4 + v5 * a2;

  return [v2 addLineToPoint:{a1, v6}];
}

void OUTLINED_FUNCTION_4_0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + a2);
  *(v2 + a2) = a1;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}