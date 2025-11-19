@interface TypistPathUtilities
+ (BOOL)_validatePoints:(CGPoint)a3 To:(CGPoint)a4;
+ (CGAffineTransform)_determineShiftBasedOnDirection:(SEL)a3;
+ (CGAffineTransform)_makeTranslationWithOffset:(SEL)a3;
+ (CGPoint)_addPoint:(CGPoint)a3 andPoint:(CGPoint)a4;
+ (CGPoint)_reflectPoint:(CGPoint)a3 origin:(CGPoint)a4;
+ (CGPoint)_scalarMultiplyPoint:(CGPoint)a3 by:(double)a4;
+ (CGPoint)_subtractPoint:(CGPoint)a3 byPoint:(CGPoint)a4;
+ (CGPoint)pointOnCurve:(id)a3 atTime:(double)a4;
+ (CGPoint)pointOnSineCurve:(double)a3 withHeight:(double)a4 withStartPoint:(CGPoint)a5 withEndPoint:(CGPoint)a6 atTime:(double)a7;
+ (CGSize)_getWidthAndHeight:(id)a3 forCharacters:(id)a4;
+ (double)getWidthOfFirstCharacterInString:(id)a3;
+ (id)_connectPath:(id)a3 forCharacters:(id)a4 withRegion:(id)a5;
+ (id)_decomposeCharactersWhereNeeded:(id)a3;
+ (id)_decomposeGraphemeIntoSeparateCharactersIfNeeded:(id)a3;
+ (id)_determineWritingStyle:(id)a3 forCharacters:(id)a4;
+ (id)_processArabicCharacter:(id)a3 withPathMap:(id)a4 forLocale:(unint64_t)a5;
+ (id)_processThaiCharacter:(id)a3 withPathMap:(id)a4 forLocale:(unint64_t)a5;
+ (id)_queryHandwritingSourceForCharactersInString:(id)a3 withRegion:(id)a4;
+ (id)_separateFinalFormCharacters:(id)a3;
+ (id)_separateIsolatedCharacters:(id)a3;
+ (id)_separateUniqueCharacters:(id)a3;
+ (id)_shiftPath:(id)a3 forCharacters:(id)a4 withRule:(int)a5;
+ (id)_shiftThaiStrokes:(id)a3 withRatio:(double)a4 ofHeight:(int64_t)a5;
+ (id)convertCurveDeleteTouchPoints:(CGPoint)a3 endPoint:(CGPoint)a4 curveHeight:(double)a5 curveDensity:(int64_t)a6 tilt:(double)a7;
+ (id)convertSVGPaths:(id)a3 withTransformation:(CGAffineTransform *)a4;
+ (id)convertSVGStringPathToUIBezierPath:(id)a3;
+ (id)convertSingleSVGPaths:(id)a3 withTransformation:(CGAffineTransform *)a4;
+ (id)convertUIBezierPathToTouchPoints:(id)a3;
+ (id)generatePathArgumentStringWithParameters:(id)a3 fromPoints:(id)a4;
+ (id)generatePathWithParameters:(id)a3 fromPoints:(id)a4;
+ (id)getPathDataForCharacters:(id)a3 withRegion:(id)a4 isCursive:(BOOL)a5;
+ (id)getStrokesForJamo:(id)a3 forVariant:(BOOL)a4 ofType:(int)a5 fromPath:(id)a6 forLocale:(unint64_t)a7;
+ (id)getTextClustersFrom:(id)a3 forCharacters:(id)a4;
+ (id)getTextClustersFrom:(id)a3 withRegion:(id)a4;
+ (id)shiftJamosInSyllable:(id)a3 withPath:(id)a4 forLocale:(unint64_t)a5;
+ (int)_getScribbleRuleFromRegion:(id)a3;
+ (int)_mappingRegionToVariantID:(id)a3;
+ (sqlite3)_openDatabaseFromFile:(id)a3;
+ (unint64_t)_queryDatabase:(sqlite3 *)a3 withSql:(id)a4 forRegion:(id)a5;
+ (unint64_t)getTotalWidthForText:(id)a3 isCursive:(BOOL)a4 withRegion:(id)a5 fromPathMap:(id)a6;
@end

@implementation TypistPathUtilities

+ (CGPoint)_subtractPoint:(CGPoint)a3 byPoint:(CGPoint)a4
{
  v4 = a3.x - a4.x;
  v5 = a3.y - a4.y;
  result.y = v5;
  result.x = v4;
  return result;
}

+ (CGPoint)_addPoint:(CGPoint)a3 andPoint:(CGPoint)a4
{
  v4 = a3.x + a4.x;
  v5 = a3.y + a4.y;
  result.y = v5;
  result.x = v4;
  return result;
}

+ (CGPoint)_scalarMultiplyPoint:(CGPoint)a3 by:(double)a4
{
  v4 = a3.x * a4;
  v5 = a3.y * a4;
  result.y = v5;
  result.x = v4;
  return result;
}

+ (CGPoint)_reflectPoint:(CGPoint)a3 origin:(CGPoint)a4
{
  v4 = a4.x + a4.x - a3.x;
  v5 = a4.y + a4.y - a3.y;
  result.y = v5;
  result.x = v4;
  return result;
}

+ (CGPoint)pointOnCurve:(id)a3 atTime:(double)a4
{
  v5 = a3;
  v6 = [v5 count];
  v7 = [v5 objectAtIndexedSubscript:0];
  [v7 CGPointValue];
  v10 = v9;
  if (v6 == 3)
  {

    v19 = [v5 objectAtIndexedSubscript:1];
    [v19 CGPointValue];
    v21 = v20;

    v22 = [v5 objectAtIndexedSubscript:2];
    [v22 CGPointValue];
    v24 = v23;

    v25 = [v5 objectAtIndexedSubscript:0];
    [v25 CGPointValue];
    v27 = v26;

    v28 = [v5 objectAtIndexedSubscript:1];
    [v28 CGPointValue];
    v30 = v29;

    v31 = [v5 objectAtIndexedSubscript:2];
    [v31 CGPointValue];
    v33 = v32;

    v34 = 1.0 - a4;
    v35 = (v34 * v34);
    v36 = (1.0 - a4 + 1.0 - a4) * a4;
    v10 = v36 * v21 + v35 * v10 + a4 * a4 * v24;
    v11 = v36 * v30 + v35 * v27 + a4 * a4 * v33;
    goto LABEL_9;
  }

  v11 = v8;
  if (v6 == 2)
  {

    v12 = [v5 objectAtIndexedSubscript:1];
    [v12 CGPointValue];
    v14 = v13;
    v16 = v15;

    v17 = 1.0 - a4;
    v10 = v14 * a4 + (1.0 - a4) * v10;
    v18 = v16 * a4;
LABEL_8:
    v11 = v18 + v17 * v11;
    goto LABEL_9;
  }

  if (v6 != 1)
  {

    v37 = [v5 objectAtIndexedSubscript:1];
    [v37 CGPointValue];
    v63 = v38;

    v39 = [v5 objectAtIndexedSubscript:2];
    [v39 CGPointValue];
    v62 = v40;

    v41 = [v5 objectAtIndexedSubscript:3];
    [v41 CGPointValue];
    v61 = v42;

    v43 = [v5 objectAtIndexedSubscript:0];
    [v43 CGPointValue];
    v60 = v44;

    v45 = [v5 objectAtIndexedSubscript:1];
    [v45 CGPointValue];
    v59 = v46;

    v47 = [v5 objectAtIndexedSubscript:2];
    [v47 CGPointValue];
    v49 = v48;

    v50 = [v5 objectAtIndexedSubscript:3];
    [v50 CGPointValue];
    v11 = v51;

    v52 = 1.0 - a4;
    v53 = powf(v52, 3.0);
    v54 = a4 * 3.0 * (v52 * v52);
    v55 = a4;
    v56 = (1.0 - a4) * ((v55 * v55) * 3.0);
    v17 = powf(v55, 3.0);
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

+ (CGPoint)pointOnSineCurve:(double)a3 withHeight:(double)a4 withStartPoint:(CGPoint)a5 withEndPoint:(CGPoint)a6 atTime:(double)a7
{
  v7 = a5.x + a7 * (a6.x - a5.x);
  v8 = 6.28318531 / a3 * v7 - 6.28318531 / a3 * a5.x;
  v9 = a5.y + a4 * 0.5 * sinf(v8);
  v10 = v7;
  result.y = v9;
  result.x = v10;
  return result;
}

+ (id)convertCurveDeleteTouchPoints:(CGPoint)a3 endPoint:(CGPoint)a4 curveHeight:(double)a5 curveDensity:(int64_t)a6 tilt:(double)a7
{
  x = a4.x;
  y = a3.y;
  v23 = a3.x;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __92__TypistPathUtilities_convertCurveDeleteTouchPoints_endPoint_curveHeight_curveDensity_tilt___block_invoke;
  v24[3] = &__block_descriptor_40_e8_d16__0d8l;
  v24[4] = 0x3FC5555555555555;
  v12 = MEMORY[0x274398FD0](v24, a2);
  v13 = objc_opt_new();
  if (a6 >= 1)
  {
    v14 = (x - v23) / a6;
    v22 = (2 * a6);
    v15 = -a7;
    v16 = 0.166666667;
    do
    {
      [TypistPathUtilities pointOnSineCurve:v14 withHeight:a5 withStartPoint:v23 withEndPoint:y atTime:v23 + v14 * 0.5, y, v16];
      v18 = v17;
      *&v17 = 6.28318531 / v14 * v17 - 6.28318531 / v14 * v23;
      v20 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v18 + v15 * sinf(*&v17), v19}];
      [v13 addObject:v20];

      v16 = v12[2](v12, v16);
    }

    while (v16 <= v22);
  }

  return v13;
}

+ (id)generatePathArgumentStringWithParameters:(id)a3 fromPoints:(id)a4
{
  v5 = a3;
  v6 = a4;
  v31 = objc_opt_new();
  v7 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v7 setPositiveFormat:@"0.##"];
  [v7 setGroupingSeparator:&stru_288014100];
  [v7 setDecimalSeparator:@"."];
  v8 = [v5 objectForKeyedSubscript:@"CPPATHGEN_TIME_INTERVAL"];
  v9 = v8;
  v10 = @"0.0";
  if (v8)
  {
    v10 = v8;
  }

  v30 = v10;

  v29 = v5;
  v27 = [objc_alloc(MEMORY[0x277D6FF60]) initWithParams:v5];
  v28 = v6;
  v26 = [v27 generatePathFromInflectionPoints:v6 segmentTiming:0 keys:0 string:0 layout:0];
  v11 = [v26 samples];
  if ([v11 count])
  {
    v12 = 0;
    do
    {
      v13 = [v11 objectAtIndexedSubscript:v12];
      [v13 point];
      v15 = v14;
      v17 = v16;

      v18 = MEMORY[0x277CCACA8];
      v19 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
      v20 = [v7 stringFromNumber:v19];
      v21 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
      v22 = [v7 stringFromNumber:v21];
      v23 = [&unk_288029500 stringValue];
      v24 = [v18 stringWithFormat:@"[%@ %@ %@ %@] %@ ", v20, v22, &unk_2880294F0, v23, v30];
      [v31 appendString:v24];

      ++v12;
    }

    while (v12 < [v11 count]);
  }

  return v31;
}

+ (id)generatePathWithParameters:(id)a3 fromPoints:(id)a4
{
  v5 = MEMORY[0x277D6FF60];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithParams:v7];

  v9 = [v8 generatePathFromInflectionPoints:v6 segmentTiming:0 keys:0 string:0 layout:0];

  return v9;
}

+ (id)convertUIBezierPathToTouchPoints:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 CGPath];

  CGPathApply(v5, v4, getTouchPoints);

  return v4;
}

+ (id)convertSVGStringPathToUIBezierPath:(id)a3
{
  v168 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v151 = objc_opt_new();
  v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"MmLlHhVvCcSsQqTtAaZ"];
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  obj = v3;
  v152 = [obj countByEnumeratingWithState:&v163 objects:v167 count:16];
  if (v152)
  {
    v150 = *v164;
    v146 = *(MEMORY[0x277CBF348] + 8);
    v147 = *MEMORY[0x277CBF348];
    v5 = 0x277CCA000uLL;
    do
    {
      v6 = 0;
      do
      {
        if (*v164 != v150)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v163 + 1) + 8 * v6);
        v8 = [MEMORY[0x277CCAC80] scannerWithString:v7];
        v9 = objc_alloc_init(MEMORY[0x277D75208]);
        v10 = [*(v5 + 3240) stringWithFormat:@"%C", 83];
        if ([v7 containsString:v10])
        {
          v160 = 1;
        }

        else
        {
          v11 = [*(v5 + 3240) stringWithFormat:@"%C", 115];
          v160 = [v7 containsString:v11];
        }

        v12 = objc_opt_new();
        if (([v8 isAtEnd] & 1) == 0)
        {
          v13 = v147;
          v14 = v146;
          v15 = v147;
          v16 = v146;
          v153 = v146;
          v154 = v147;
          v155 = v146;
          v156 = v147;
          do
          {
            v162 = 0;
            [v8 scanCharactersFromSet:v4 intoString:&v162];
            v17 = v162;
            if (v17)
            {
              v18 = v17;
              [v12 addObject:v17];
            }

            else
            {
              v18 = [v12 lastObject];
              TYLogl(OS_LOG_TYPE_DEBUG, @"Command letter misssing, use the preceded one %@", v19, v20, v21, v22, v23, v24, v18);
            }

            v25 = [v18 characterAtIndex:0];
            v26 = v25;
            if (v25 <= 89)
            {
              if (v25 == 76)
              {
LABEL_26:
                [v8 scanPoint];
                v36 = v35;
                v38 = v37;
                if (v26 == 108)
                {
                  [v9 currentPoint];
                  [TypistPathUtilities _addPoint:v36 andPoint:v38, v39, v40];
                  v36 = v41;
                  v38 = v42;
                }

                v43 = v9;
                v44 = v36;
                v45 = v38;
                goto LABEL_29;
              }

              if (v25 == 77)
              {
LABEL_23:
                [v8 scanPoint];
                v28 = v27;
                v30 = v29;
                if (v26 == 109)
                {
                  [v9 currentPoint];
                  [TypistPathUtilities _addPoint:v28 andPoint:v30, v31, v32];
                  v28 = v33;
                  v30 = v34;
                }

                [v9 moveToPoint:{v28, v30}];
                goto LABEL_30;
              }
            }

            else
            {
              switch(v25)
              {
                case 'l':
                  goto LABEL_26;
                case 'm':
                  goto LABEL_23;
                case 'Z':

                  goto LABEL_10;
              }
            }

            if (v25 > 98)
            {
              if (v25 > 112)
              {
                if (v25 == 113)
                {
LABEL_57:
                  v98 = v14;
                  [v8 scanPoint];
                  v100 = v99;
                  v102 = v101;
                  [v8 scanPoint];
                  v104 = v103;
                  v106 = v105;
                  if (v26 == 113)
                  {
                    [v9 currentPoint];
                    [TypistPathUtilities _addPoint:v100 andPoint:v102, v107, v108];
                    v100 = v109;
                    v102 = v110;
                    [v9 currentPoint];
                    [TypistPathUtilities _addPoint:v104 andPoint:v106, v111, v112];
                    v104 = v113;
                    v106 = v114;
                  }

                  [v9 addQuadCurveToPoint:v104 controlPoint:{v106, v100, v102}];
                  v14 = v98;
                  goto LABEL_30;
                }

                if (v25 == 118)
                {
LABEL_49:
                  v161 = 0.0;
                  [v8 scanDouble:&v161];
                  if (v26 == 118)
                  {
                    [v9 currentPoint];
                    v45 = v161 + v51;
                    v161 = v45;
                  }

                  else
                  {
                    v45 = v161;
                  }

                  v44 = 0.0;
LABEL_66:
                  v43 = v9;
LABEL_29:
                  [v43 addLineToPoint:{v44, v45}];
                  goto LABEL_30;
                }
              }

              else
              {
                if (v25 == 99)
                {
LABEL_51:
                  v52 = v13;
                  v158 = v16;
                  v159 = v15;
                  [v8 scanPoint];
                  v157 = v53;
                  v55 = v54;
                  [v8 scanPoint];
                  v57 = v56;
                  v59 = v58;
                  [v8 scanPoint];
                  v62 = v60;
                  v63 = v61;
                  if (v160)
                  {
                    v149 = v55;
                    v64 = v57;
                    v65 = v59;
                    v66 = v61;
                    v67 = v60;
                    if (v26 != 67)
                    {
                      [v9 currentPoint];
                      [TypistPathUtilities _addPoint:v57 andPoint:v59, v68, v69];
                      v64 = v70;
                      v65 = v71;
                      [v9 currentPoint];
                      [TypistPathUtilities _addPoint:v62 andPoint:v63, v72, v73];
                      v67 = v74;
                      v66 = v75;
                    }

                    [v9 currentPoint];
                    v158 = v65;
                    v159 = v64;
                    [TypistPathUtilities _subtractPoint:v64 byPoint:v65, v76, v77];
                    v155 = v79;
                    v156 = v78;
                    [v9 currentPoint];
                    v52 = v67;
                    [TypistPathUtilities _subtractPoint:v67 byPoint:v66, v80, v81];
                    v153 = v83;
                    v154 = v82;
                    v14 = v66;
                    v55 = v149;
                  }

                  v84 = v14;
                  if (v26 == 99)
                  {
                    [v9 currentPoint];
                    [TypistPathUtilities _addPoint:v157 andPoint:v55, v85, v86];
                    v88 = v87;
                    v55 = v89;
                    [v9 currentPoint];
                    [TypistPathUtilities _addPoint:v57 andPoint:v59, v90, v91];
                    v57 = v92;
                    v59 = v93;
                    [v9 currentPoint];
                    [TypistPathUtilities _addPoint:v62 andPoint:v63, v94, v95];
                    v62 = v96;
                    v63 = v97;
                  }

                  else
                  {
                    v88 = v157;
                  }

                  [v9 addCurveToPoint:v62 controlPoint1:v63 controlPoint2:{v88, v55, v57, v59}];
                  v16 = v158;
                  v15 = v159;
                  v13 = v52;
                  v14 = v84;
                  goto LABEL_30;
                }

                if (v25 == 104)
                {
LABEL_40:
                  v161 = 0.0;
                  [v8 scanDouble:&v161];
                  if (v26 == 104)
                  {
                    [v9 currentPoint];
                    v44 = v161 + v46;
                    v161 = v44;
                  }

                  else
                  {
                    v44 = v161;
                  }

                  v45 = 0.0;
                  goto LABEL_66;
                }
              }
            }

            else if (v25 > 80)
            {
              if (v25 == 81)
              {
                goto LABEL_57;
              }

              if (v25 == 86)
              {
                goto LABEL_49;
              }
            }

            else
            {
              if (v25 == 67)
              {
                goto LABEL_51;
              }

              if (v25 == 72)
              {
                goto LABEL_40;
              }
            }

            if (v25 == 83)
            {
              v47 = v15;
              v48 = v16;
              v49 = v13;
              v50 = v14;
              goto LABEL_68;
            }

            if (v25 == 115)
            {
              v48 = v155;
              v47 = v156;
              v50 = v153;
              v49 = v154;
LABEL_68:
              [TypistPathUtilities _reflectPoint:v47 origin:v48, v49, v50];
              v116 = v115;
              v118 = v117;
              [v8 scanPoint];
              v15 = v119;
              v16 = v120;
              [v8 scanPoint];
              v13 = v121;
              v14 = v122;
              if (v26 == 115)
              {
                [v9 currentPoint];
                [TypistPathUtilities _addPoint:v116 andPoint:v118, v123, v124];
                v116 = v125;
                v118 = v126;
                [v9 currentPoint];
                [TypistPathUtilities _addPoint:v15 andPoint:v16, v127, v128];
                v15 = v129;
                v16 = v130;
                [v9 currentPoint];
                [TypistPathUtilities _addPoint:v13 andPoint:v14, v131, v132];
                v13 = v133;
                v14 = v134;
              }

              [v9 addCurveToPoint:v13 controlPoint1:v14 controlPoint2:{v116, v118, v15, v16}];
              [v9 currentPoint];
              [TypistPathUtilities _subtractPoint:v15 byPoint:v16, v135, v136];
              v155 = v138;
              v156 = v137;
              [v9 currentPoint];
              [TypistPathUtilities _subtractPoint:v13 byPoint:v14, v139, v140];
              v153 = v142;
              v154 = v141;
            }

LABEL_30:
          }

          while (![v8 isAtEnd]);
        }

LABEL_10:
        [v151 addObject:v9];

        ++v6;
        v5 = 0x277CCA000;
      }

      while (v6 != v152);
      v143 = [obj countByEnumeratingWithState:&v163 objects:v167 count:16];
      v152 = v143;
    }

    while (v143);
  }

  v144 = *MEMORY[0x277D85DE8];

  return v151;
}

+ (id)convertSVGPaths:(id)a3 withTransformation:(CGAffineTransform *)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = *&a4->c;
        v18[0] = *&a4->a;
        v18[1] = v14;
        v18[2] = *&a4->tx;
        v15 = [a1 convertSingleSVGPaths:v13 withTransformation:v18];
        [v7 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)convertSingleSVGPaths:(id)a3 withTransformation:(CGAffineTransform *)a4
{
  v6 = [a3 copy];
  v7 = *&a4->c;
  v10[0] = *&a4->a;
  v10[1] = v7;
  v10[2] = *&a4->tx;
  [v6 applyTransform:v10];
  v8 = [a1 convertUIBezierPathToTouchPoints:v6];

  return v8;
}

+ (BOOL)_validatePoints:(CGPoint)a3 To:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v13 = a3.y;
  v11 = a3.x;
  GSMainScreenPointSize();
  v5.f64[0] = v11;
  v4.f64[0] = x;
  v6.f64[0] = x;
  v6.f64[1] = v11;
  v7.f64[0] = y;
  v4.f64[1] = y;
  v7.f64[1] = v13;
  v5.f64[1] = v13;
  return vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(vdupq_lane_s64(v8, 0), v6), vcgeq_f64(vdupq_lane_s64(v9, 0), v7)), vuzp1q_s32(vcgeq_f64(v4, 0), vcgeq_f64(v5, 0))))) & 1;
}

+ (id)_decomposeCharactersWhereNeeded:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v13 = [v3 graphemeCount];
  if (!v13)
  {
    goto LABEL_19;
  }

  for (i = 0; i != v13; ++i)
  {
    v6 = [v3 graphemeAtIndex:i];
    if (![v6 length])
    {
      goto LABEL_17;
    }

    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = [v6 characterAtIndex:v7];
      if ([TypistKoreanHangulSyllable isKoreanSyllable:v9])
      {
        v10 = [TypistKoreanHangulSyllable decomposeSyllableForScribble:v9];
        if (!v10)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      if (![TypistThaiSyllable isThaiCharacter:v9])
      {
        break;
      }

      v11 = MEMORY[0x277CCACA8];
LABEL_13:
      v10 = [v11 stringWithFormat:@"%C", v9];
LABEL_14:
      [v4 appendString:v10];
      v8 = 1;
LABEL_15:

      if (++v7 >= [v6 length])
      {
        goto LABEL_16;
      }
    }

    if ([TypistArabicSyllable isArabicCharacter:v9]|| [TypistArabicSyllable isArabicPresentationFormBCharacter:v9])
    {
      v11 = MEMORY[0x277CCACA8];
      goto LABEL_13;
    }

LABEL_16:
    if ((v8 & 1) == 0)
    {
LABEL_17:
      [v4 appendString:v6];
    }
  }

LABEL_19:

  return v4;
}

+ (id)_decomposeGraphemeIntoSeparateCharactersIfNeeded:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 characterAtIndex:0];
    if ([TypistThaiSyllable isThaiCharacter:v5]|| [TypistArabicSyllable isArabicPresentationFormBCharacter:v5])
    {
      v6 = [v4 splitGraphemeIntoCharacterArray];
    }

    else
    {
      v6 = [MEMORY[0x277CBEA60] arrayWithObject:v4];
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_processArabicCharacter:(id)a3 withPathMap:(id)a4 forLocale:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_new();
  if ([v7 length])
  {
    v25 = 0;
    v26 = 0;
    v10 = 0;
    v11 = 0x277CCA000uLL;
    do
    {
      v12 = [v7 characterAtIndex:v10];
      v13 = [*(v11 + 3240) stringWithFormat:@"%C", v12];
      v14 = [v13 stringByAppendingFormat:@"_%lu", a5];

      v15 = [v8 objectForKeyedSubscript:v14];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v18 = [*(v11 + 3240) stringWithFormat:@"%C", v12];
        v17 = [v8 objectForKeyedSubscript:v18];
      }

      if (!v10)
      {
        v26 = [v17 width];
        v25 = [v17 height];
      }

      v19 = [v17 isCursive];
      v20 = [v17 strokeArray];
      [v9 addObjectsFromArray:v20];

      ++v10;
      v11 = 0x277CCA000;
    }

    while (v10 < [v7 length]);
    v22 = v25;
    v21 = v26;
  }

  else
  {
    v19 = 0;
    v22 = 0;
    v21 = 0;
  }

  if ([v9 count])
  {
    v23 = [[TYPathData alloc] initWithArray:v9 width:v21 height:v22 isCursive:v19];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)_processThaiCharacter:(id)a3 withPathMap:(id)a4 forLocale:(unint64_t)a5
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v32 = v7;
  if ([v6 length])
  {
    v28 = 0;
    v29 = 0;
    v9 = 0;
    v10 = 0.0;
    v30 = v8;
    do
    {
      v11 = [v6 characterAtIndex:v9];
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", v11];
      v13 = [v12 stringByAppendingFormat:@"_%lu", a5];

      v14 = [v7 objectForKeyedSubscript:v13];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", v11];
        v16 = [v7 objectForKeyedSubscript:v17];
      }

      if (!v9)
      {
        v28 = [v16 width];
        v29 = [v16 height];
      }

      v18 = [v16 strokeArray];
      v19 = +[TypistThaiSyllable smallCharacers];
      v20 = [v19 characterIsMember:v11];

      if (v20)
      {
        v10 = v10 + 0.485;
      }

      else
      {
        v21 = +[TypistThaiSyllable tallCharacters];
        v22 = [v21 characterIsMember:v11];

        if (v22)
        {
          v10 = v10 + 0.716;
        }

        else
        {
          v23 = +[TypistThaiSyllable upperCombiningCharacters];
          v24 = [v23 characterIsMember:v11];

          if (v24)
          {
            v25 = [TypistPathUtilities _shiftThaiStrokes:v18 withRatio:v29 ofHeight:v10];

            v10 = v10 + 0.141;
            v18 = v25;
          }
        }
      }

      v8 = v30;
      [v30 addObjectsFromArray:v18];

      ++v9;
      v7 = v32;
    }

    while (v9 < [v6 length]);
  }

  else
  {
    v28 = 0;
    v29 = 0;
  }

  if ([v8 count])
  {
    v26 = [[TYPathData alloc] initWithArray:v8 width:v28 height:v29 isCursive:0];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

+ (id)_shiftThaiStrokes:(id)a3 withRatio:(double)a4 ofHeight:(int64_t)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v7 copyItems:1];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    v12 = a5 * a4;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v18 = 0u;
        [TypistPathUtilities _makeTranslationWithOffset:v12];
        v17[0] = v18;
        v17[1] = v19;
        v17[2] = v20;
        [v14 applyTransform:v17];
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (CGAffineTransform)_makeTranslationWithOffset:(SEL)a3
{
  memset(&v9, 0, sizeof(v9));
  CGAffineTransformMakeTranslation(&v9, 0.0, -a4);
  memset(&v8, 0, sizeof(v8));
  CGAffineTransformMakeScale(&v8, 1.0, 1.0);
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  t1 = v8;
  v6 = v9;
  return CGAffineTransformConcat(retstr, &t1, &v6);
}

+ (int)_mappingRegionToVariantID:(id)a3
{
  v3 = a3;
  if ([v3 caseInsensitiveCompare:@"hans"])
  {
    if ([v3 caseInsensitiveCompare:@"hant"])
    {
      if ([v3 caseInsensitiveCompare:@"kr"])
      {
        if ([v3 caseInsensitiveCompare:@"jp"])
        {
          v4 = 1;
        }

        else
        {
          v4 = 9;
        }
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 8;
    }
  }

  else
  {
    v4 = 7;
  }

  return v4;
}

+ (double)getWidthOfFirstCharacterInString:(id)a3
{
  v4 = [a1 _decomposeCharactersWhereNeeded:a3];
  if ([v4 length])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", objc_msgSend(v4, "characterAtIndex:", 0)];
    v6 = [a1 _queryHandwritingSourceForCharactersInString:v5 withRegion:0];
    v7 = [v6 objectForKeyedSubscript:v5];
    v8 = [v7 width];
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

+ (id)getPathDataForCharacters:(id)a3 withRegion:(id)a4 isCursive:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [a1 _decomposeCharactersWhereNeeded:v8];
  v11 = [a1 _mappingRegionToVariantID:v9];
  v12 = [a1 _queryHandwritingSourceForCharactersInString:v10 withRegion:v9];
  if (v12)
  {
    v13 = [MEMORY[0x277CBEAC0] dictionary];
    v14 = [a1 _processCharacters:v8 withPathMap:v12 forLocale:v11];

    if (v5)
    {
      v15 = [a1 _connectPath:v14 forCharacters:v8 withRegion:v9];
    }

    else
    {
      v15 = v14;
    }

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (unint64_t)getTotalWidthForText:(id)a3 isCursive:(BOOL)a4 withRegion:(id)a5 fromPathMap:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v32 = v10;
  if (a4)
  {
    [TypistPathUtilities getTextClustersFrom:v9 withRegion:v10];
  }

  else
  {
    [v9 graphemeArray];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v12 = v34 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v34;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v33 + 1) + 8 * i);
        v19 = [v11 objectForKeyedSubscript:v18];
        v26 = v19;
        if (v19)
        {
          if ([v19 width] >= 1)
          {
            [v26 perCharacterScale];
            if (v27 > 0.0)
            {
              v28 = [v26 width];
              [v26 perCharacterScale];
              v15 += llround(v29 * v28);
            }
          }
        }

        else
        {
          TYLogl(OS_LOG_TYPE_ERROR, @"No path data found for character: [%@]", v20, v21, v22, v23, v24, v25, v18);
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (id)getTextClustersFrom:(id)a3 withRegion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _decomposeCharactersWhereNeeded:v7];
  v9 = [a1 _queryHandwritingSourceForCharactersInString:v8 withRegion:v6];

  v10 = [a1 getTextClustersFrom:v9 forCharacters:v7];

  return v10;
}

+ (id)getTextClustersFrom:(id)a3 forCharacters:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v10 = [MEMORY[0x277CCA900] arabicGenericCharacters];
    v11 = [v8 rangeOfCharacterFromSet:v10];

    v12 = [MEMORY[0x277CCA900] arabicPresentationFormCharacters];
    v13 = [v8 rangeOfCharacterFromSet:v12];

    if (v11 != 0x7FFFFFFFFFFFFFFFLL || v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [a1 _processCharacters:v8 withPathMap:v6 forLocale:3];

      v6 = v15;
    }

    v16 = [a1 _determineWritingStyle:v6 forCharacters:v8];
    v9 = objc_opt_new();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v25 + 1) + 8 * i) characterCluster];
          [v9 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v19);
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)_determineWritingStyle:(id)a3 forCharacters:(id)a4
{
  v24 = a3;
  v5 = a4;
  v6 = [v5 graphemeCount];
  v25 = objc_opt_new();
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v22 = v6 - 1;
    v23 = 0;
    v10 = 0x279DF4000uLL;
    v21 = v6;
    while (1)
    {
      v11 = v10;
      v12 = [v5 graphemeAtIndex:v9];
      v13 = [v24 objectForKeyedSubscript:v12];
      v14 = [v13 isCursive];
      v8 += [v12 length];
      if ((v14 & 1) == 0)
      {
        break;
      }

      v15 = ++v23;
      if (v22 != v9)
      {
        goto LABEL_14;
      }

      v10 = v11;
      if (v9 >= v7)
      {
        if (v15 == v6)
        {
          v16 = [objc_alloc(*(v11 + 248)) initWithCharacters:v5 isCursive:1];
        }

        else
        {
          v19 = [v5 substringWithRange:{v7, v8 - v7}];
          v16 = [objc_alloc(*(v11 + 248)) initWithCharacters:v19 isCursive:1];

          v6 = v21;
        }

        [v25 addObject:v16];
LABEL_13:

LABEL_14:
        v10 = v11;
      }

      if (v6 == ++v9)
      {
        goto LABEL_16;
      }
    }

    v16 = [v5 substringWithRange:{v7, v8 + ~v7}];
    if ([v16 length])
    {
      v17 = [objc_alloc(*(v11 + 248)) initWithCharacters:v16 isCursive:1];
      [v25 addObject:v17];
    }

    v18 = [objc_alloc(*(v11 + 248)) initWithCharacters:v12 isCursive:0];
    [v25 addObject:v18];

    v7 = v8;
    goto LABEL_13;
  }

LABEL_16:

  return v25;
}

+ (int)_getScribbleRuleFromRegion:(id)a3
{
  v3 = a3;
  if ([v3 caseInsensitiveCompare:@"RU"] && objc_msgSend(v3, "caseInsensitiveCompare:", @"UA"))
  {
    if ([v3 caseInsensitiveCompare:@"ar"])
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_separateFinalFormCharacters:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v15 = v3;
  v6 = [v3 graphemeCount];
  v7 = [MEMORY[0x277CCACA8] arabicFinalFormsCharacterSet];
  v14 = v6;
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = [v15 graphemeAtIndex:v8];
      if ([v9 length])
      {
        v10 = 0;
        do
        {
          v11 = [v9 characterAtIndex:v10];
          if ([v7 characterIsMember:v11])
          {
            if ([v9 length] < 2)
            {
              if ([v5 length])
              {
                [v5 appendFormat:@"%C", v11];
                v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:v5];
                [v4 addObject:v12];
                [v5 setString:&stru_288014100];
              }
            }

            else
            {
              [v5 appendFormat:@"%C", v11];
            }
          }

          else
          {
            [v5 appendFormat:@"%C", v11];
            if (v8 == v14 - 1 && v10 == [v9 length] - 1)
            {
              [v4 addObject:v5];
            }
          }

          ++v10;
        }

        while (v10 < [v9 length]);
      }

      ++v8;
    }

    while (v8 != v14);
  }

  return v4;
}

+ (id)_separateIsolatedCharacters:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [v3 graphemeCount];
  if (v7)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      v10 = [v3 graphemeAtIndex:i];
      [v4 addObject:v10];
    }
  }

  if ([v4 count])
  {
    v11 = 0;
    do
    {
      v12 = [MEMORY[0x277CCA900] arabicIsolatedCharacters];
      v13 = [v4 objectAtIndexedSubscript:v11];
      v14 = [v12 characterIsMember:{objc_msgSend(v13, "characterAtIndex:", 0)}];

      if (v14)
      {
        if ([v6 length])
        {
          v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:v6];
          [v5 addObject:v15];
          [v6 setString:&stru_288014100];
        }

        v16 = [v4 objectAtIndexedSubscript:v11];
        [v5 addObject:v16];
      }

      else
      {
        v17 = [v4 objectAtIndexedSubscript:v11];
        [v6 appendString:v17];

        if (v11 == [v4 count] - 1)
        {
          [v5 addObject:v6];
        }
      }

      ++v11;
    }

    while (v11 < [v4 count]);
  }

  return v5;
}

+ (id)_separateUniqueCharacters:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 graphemeCount];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = v5 - 1;
    do
    {
      v11 = [v3 graphemeAtIndex:v9];
      v12 = [MEMORY[0x277CCA900] cyrillicCharactersWithUniqueWritingRule];
      v13 = [v12 characterIsMember:{objc_msgSend(v11, "characterAtIndex:", 0)}];

      if (v13)
      {
        ++v8;
        v14 = objc_opt_new();
        v15 = [v3 substringWithRange:{v7, v9 + 1 - v7}];

        [v4 addObject:v15];
        v7 = v9 + 1;
      }

      else if (v10 == v9 && v9 >= v7)
      {
        if (v8 == v6)
        {
          [v4 addObject:v3];
          v8 = v6;
        }

        else
        {
          v16 = [v3 substringWithRange:{v7, v6 - v7}];
          if ([v16 length])
          {
            [v4 addObject:v16];
          }
        }
      }

      ++v9;
    }

    while (v6 != v9);
  }

  return v4;
}

+ (id)_shiftPath:(id)a3 forCharacters:(id)a4 withRule:(int)a5
{
  v121 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CBEA60] array];
  v83 = a5;
  if (a5 == 2)
  {
    v10 = [a1 _separateIsolatedCharacters:v8];
  }

  else
  {
    if (a5)
    {
      [MEMORY[0x277CBEA60] arrayWithObject:v8];
    }

    else
    {
      [a1 _separateUniqueCharacters:v8];
    }
    v10 = ;
  }

  v11 = v10;

  v74 = v8;
  v73 = [v8 textDirectionAnnotations];
  v12 = [v73 objectAtIndexedSubscript:0];
  v82 = [v12 textDirection];

  v13 = objc_opt_new();
  v14 = objc_opt_new();
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  obj = v11;
  v15 = [obj countByEnumeratingWithState:&v111 objects:v120 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v112;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v112 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = [a1 _separateFinalFormCharacters:*(*(&v111 + 1) + 8 * i)];
        [v14 addObjectsFromArray:v19];
      }

      v16 = [obj countByEnumeratingWithState:&v111 objects:v120 count:16];
    }

    while (v16);
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v80 = v14;
  v78 = [v80 countByEnumeratingWithState:&v107 objects:v119 count:16];
  if (v78)
  {
    v76 = *v108;
    v20 = 0.0;
    v21 = 0x277CCA000uLL;
    v22 = 0.0;
    v81 = v7;
    do
    {
      v23 = 0;
      do
      {
        if (*v108 != v76)
        {
          objc_enumerationMutation(v80);
        }

        v79 = v23;
        v24 = *(*(&v107 + 1) + 8 * v23);
        v25 = objc_opt_new();
        v26 = objc_opt_new();
        v85 = v24;
        v84 = [v24 graphemeCount];
        if (v84)
        {
          v27 = 0;
          v28 = 0.0;
          do
          {
            v29 = [v85 graphemeAtIndex:v27];
            v30 = [v7 objectForKeyedSubscript:v29];
            v31 = [v30 strokeArray];

            if (v27 || ([v80 firstObject], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v85, "isEqual:", v32), v32, v34 = 0.0, (v33 & 1) == 0))
            {
              v35 = [v7 objectForKeyedSubscript:v29];
              v34 = v28 - [v35 width];
            }

            v28 = v34;
            memset(&v106, 0, sizeof(v106));
            v36 = v20 + v34;
            if (v82 != 2)
            {
              v36 = v22;
            }

            CGAffineTransformMakeTranslation(&v106, v36, 0.0);
            v37 = [*(v21 + 2304) cyrillicCharactersWithUniqueWritingRule];
            if ([v37 characterIsMember:{objc_msgSend(v29, "characterAtIndex:", 0)}])
            {
              v38 = 1;
            }

            else
            {
              v39 = [*(v21 + 2304) arabicCharactersWithUniqueWritingRule];
              v38 = [v39 characterIsMember:{objc_msgSend(v29, "characterAtIndex:", 0)}];
            }

            v40 = [*(v21 + 2304) arabicIsolatedCharacters];
            v41 = [v40 characterIsMember:{objc_msgSend(v29, "characterAtIndex:", 0)}];

            v87 = v29;
            v88 = v27;
            v86 = v31;
            if (v83 == 1 || (v38 & 1) != 0 || [v29 length] >= 2)
            {
              v104 = 0u;
              v105 = 0u;
              v102 = 0u;
              v103 = 0u;
              v42 = v31;
              v43 = [v42 countByEnumeratingWithState:&v102 objects:v118 count:16];
              if (v43)
              {
                v44 = v43;
                v45 = *v103;
                do
                {
                  for (j = 0; j != v44; ++j)
                  {
                    if (*v103 != v45)
                    {
                      objc_enumerationMutation(v42);
                    }

                    v47 = *(*(&v102 + 1) + 8 * j);
                    v48 = [v47 copy];
                    v101 = v106;
                    [v48 applyTransform:&v101];
                    v49 = [v42 firstObject];
                    LODWORD(v47) = [v47 isEqual:v49];

                    if (v47)
                    {
                      [v25 appendPath:v48];
                    }

                    else
                    {
                      [v26 addObject:v48];
                    }
                  }

                  v44 = [v42 countByEnumeratingWithState:&v102 objects:v118 count:16];
                }

                while (v44);
              }
            }

            else if (v41)
            {
              v99 = 0uLL;
              v100 = 0uLL;
              v97 = 0uLL;
              v98 = 0uLL;
              v51 = v31;
              v52 = [v51 countByEnumeratingWithState:&v97 objects:v117 count:16];
              if (v52)
              {
                v53 = v52;
                v54 = *v98;
                do
                {
                  for (k = 0; k != v53; ++k)
                  {
                    if (*v98 != v54)
                    {
                      objc_enumerationMutation(v51);
                    }

                    v56 = [*(*(&v97 + 1) + 8 * k) copy];
                    v101 = v106;
                    [v56 applyTransform:&v101];
                    [v26 addObject:v56];
                  }

                  v53 = [v51 countByEnumeratingWithState:&v97 objects:v117 count:16];
                }

                while (v53);
              }
            }

            else
            {
              v95 = 0uLL;
              v96 = 0uLL;
              v93 = 0uLL;
              v94 = 0uLL;
              v57 = v31;
              v58 = [v57 countByEnumeratingWithState:&v93 objects:v116 count:16];
              if (v58)
              {
                v59 = v58;
                v60 = *v94;
                do
                {
                  for (m = 0; m != v59; ++m)
                  {
                    if (*v94 != v60)
                    {
                      objc_enumerationMutation(v57);
                    }

                    v62 = [*(*(&v93 + 1) + 8 * m) copy];
                    v101 = v106;
                    [v62 applyTransform:&v101];
                    [v25 appendPath:v62];
                  }

                  v59 = [v57 countByEnumeratingWithState:&v93 objects:v116 count:16];
                }

                while (v59);
              }
            }

            v7 = v81;
            v50 = [v81 objectForKeyedSubscript:v87];
            v22 = v22 + [v50 width];

            v27 = v88 + 1;
            v21 = 0x277CCA000;
          }

          while (v88 + 1 != v84);
        }

        else
        {
          v28 = 0.0;
        }

        if (([v25 isEmpty] & 1) == 0)
        {
          [v13 addObject:v25];
        }

        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v63 = v26;
        v64 = [v63 countByEnumeratingWithState:&v89 objects:v115 count:16];
        if (v64)
        {
          v65 = v64;
          v66 = *v90;
          do
          {
            for (n = 0; n != v65; ++n)
            {
              if (*v90 != v66)
              {
                objc_enumerationMutation(v63);
              }

              [v13 addObject:*(*(&v89 + 1) + 8 * n)];
            }

            v65 = [v63 countByEnumeratingWithState:&v89 objects:v115 count:16];
          }

          while (v65);
        }

        v20 = v20 + v28;

        v23 = v79 + 1;
      }

      while (v79 + 1 != v78);
      v78 = [v80 countByEnumeratingWithState:&v107 objects:v119 count:16];
    }

    while (v78);
  }

  [a1 _getWidthAndHeight:v7 forCharacters:v74];
  v70 = [[TYPathData alloc] initWithArray:v13 width:v68 height:v69 isCursive:0];

  v71 = *MEMORY[0x277D85DE8];

  return v70;
}

+ (CGSize)_getWidthAndHeight:(id)a3 forCharacters:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 graphemeCount];
  if (v7)
  {
    v8 = 0;
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      v11 = [v6 graphemeAtIndex:v8];
      v12 = [v5 objectForKeyedSubscript:v11];
      v10 = v10 + [v12 width];

      v13 = [v5 objectForKeyedSubscript:v11];
      v9 = v9 + [v13 height];

      ++v8;
    }

    while (v7 != v8);
  }

  else
  {
    v10 = 0.0;
    v9 = 0.0;
  }

  v14 = v10;
  v15 = v9 / v7;
  result.height = v15;
  result.width = v14;
  return result;
}

+ (id)_connectPath:(id)a3 forCharacters:(id)a4 withRegion:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [a1 _determineWritingStyle:v8 forCharacters:a4];
  v11 = objc_opt_new();
  v32 = [a1 _mappingRegionToVariantID:v9];
  v27 = v9;
  v31 = [a1 _getScribbleRuleFromRegion:v9];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v10;
  v12 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v39;
    v28 = *v39;
    v29 = a1;
    do
    {
      v15 = 0;
      v30 = v13;
      do
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v38 + 1) + 8 * v15);
        v17 = [v16 characterCluster];
        if ([v16 isCursive])
        {
          v18 = [a1 _shiftPath:v8 forCharacters:v17 withRule:v31];
          [v11 setObject:v18 forKeyedSubscript:v17];
        }

        else
        {
          v18 = [a1 _processCharacters:v17 withPathMap:v8 forLocale:v32];
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v19 = [v18 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v35;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v35 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v34 + 1) + 8 * i);
                v24 = [v18 objectForKeyedSubscript:v23];
                [v11 setValue:v24 forKey:v23];
              }

              v20 = [v18 countByEnumeratingWithState:&v34 objects:v42 count:16];
            }

            while (v20);
            v14 = v28;
            a1 = v29;
            v13 = v30;
          }
        }

        ++v15;
      }

      while (v15 != v13);
      v13 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v13);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (sqlite3)_openDatabaseFromFile:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  ppDb = 0;
  v5 = 0;
  if ([v4 fileExistsAtPath:v3])
  {
    sqlite3_open([v3 UTF8String], &ppDb);
    v5 = ppDb;
  }

  return v5;
}

+ (unint64_t)_queryDatabase:(sqlite3 *)a3 withSql:(id)a4 forRegion:(id)a5
{
  ppStmt = 0;
  v8 = a4;
  v9 = a5;
  sqlite3_prepare_v2(a3, [a4 UTF8String], -1, &ppStmt, 0);
  v10 = ppStmt;
  v11 = [v9 UTF8String];

  sqlite3_bind_text(v10, 1, v11, -1, 0xFFFFFFFFFFFFFFFFLL);
  v12 = 0;
  if (sqlite3_step(ppStmt) == 100)
  {
    v12 = sqlite3_column_int(ppStmt, 0);
  }

  sqlite3_finalize(ppStmt);
  return v12;
}

+ (id)_queryHandwritingSourceForCharactersInString:(id)a3 withRegion:(id)a4
{
  v69 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 pathForResource:@"Handwriting/strokes" ofType:@"db"];

  v8 = [a1 _openDatabaseFromFile:v7];
  if (v8)
  {
    v9 = v8;
    v61 = v7;
  }

  else
  {

    v10 = @"/AppleInternal/Library/Frameworks/TypistFramework.framework/Handwriting/strokes.db";
    v9 = [a1 _openDatabaseFromFile:@"/AppleInternal/Library/Frameworks/TypistFramework.framework/Handwriting/strokes.db"];
    if (!v9)
    {
      goto LABEL_41;
    }

    v61 = @"/AppleInternal/Library/Frameworks/TypistFramework.framework/Handwriting/strokes.db";
  }

  v11 = [v5 graphemeCount];
  v12 = objc_opt_new();
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v14 = [v5 graphemeAtIndex:i];
      v15 = [a1 _decomposeGraphemeIntoSeparateCharactersIfNeeded:v14];
      [v12 addObjectsFromArray:v15];
    }
  }

  v16 = [&stru_288014100 stringByPaddingToLength:objc_msgSend(v12 withString:"count") startingAtIndex:{@"?", 0}];
  v17 = [v16 mutableCopy];

  v18 = [v17 stringByReplacingOccurrencesOfString:@"?" withString:@"? options:" range:{0, 0, objc_msgSend(v12, "count") - 1}];
  v19 = [CFSTR(""SELECT pathData.pathData pathData.width];
  v20 = v12;
  ppStmt = 0;
  sqlite3_prepare_v2(v9, [v19 UTF8String], -1, &ppStmt, 0);
  v21 = [v19 componentsSeparatedByString:@"?"];
  v22 = [v21 count];

  v59 = v17;
  v60 = v9;
  v57 = v19;
  v58 = v18;
  v62 = v20;
  if (v22 - 1 == [v20 count])
  {
    v65 = 0uLL;
    v66 = 0uLL;
    v63 = 0uLL;
    v64 = 0uLL;
    v23 = v20;
    v24 = [v23 countByEnumeratingWithState:&v63 objects:v68 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = 0;
      v27 = *v64;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v64 != v27)
          {
            objc_enumerationMutation(v23);
          }

          sqlite3_bind_text(ppStmt, ++v26, [*(*(&v63 + 1) + 8 * j) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
        }

        v25 = [v23 countByEnumeratingWithState:&v63 objects:v68 count:16];
      }

      while (v25);
    }
  }

  else
  {
    v65 = 0uLL;
    v66 = 0uLL;
    v63 = 0uLL;
    v64 = 0uLL;
    v29 = v20;
    v30 = [v29 countByEnumeratingWithState:&v63 objects:v68 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = 0;
      v33 = *v64;
      do
      {
        v34 = 0;
        v35 = v32 + 1;
        do
        {
          if (*v64 != v33)
          {
            objc_enumerationMutation(v29);
          }

          v36 = *(*(&v63 + 1) + 8 * v34);
          sqlite3_bind_text(ppStmt, v35, [v36 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
          sqlite3_bind_text(ppStmt, v35 + [v29 count], objc_msgSend(v36, "UTF8String"), -1, 0xFFFFFFFFFFFFFFFFLL);
          ++v34;
          ++v35;
        }

        while (v31 != v34);
        v31 = [v29 countByEnumeratingWithState:&v63 objects:v68 count:16];
        v32 = v35 - 1;
      }

      while (v31);
    }
  }

  v9 = objc_opt_new();
  while (sqlite3_step(ppStmt) == 100)
  {
    v37 = sqlite3_column_text(ppStmt, 0);
    v38 = sqlite3_column_int(ppStmt, 1);
    v39 = sqlite3_column_int(ppStmt, 2);
    v40 = sqlite3_column_text(ppStmt, 3);
    v41 = sqlite3_column_int(ppStmt, 4);
    v42 = sqlite3_column_int(ppStmt, 5);
    if (v37)
    {
      v43 = v39 == 0;
    }

    else
    {
      v43 = 1;
    }

    if (!v43 && v38 != 0)
    {
      v45 = v42 != 0;
      v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:v40];
      v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:v37];
      v48 = [v47 componentsSeparatedByString:@"Z"];

      v49 = [TypistPathUtilities convertSVGStringPathToUIBezierPath:v48];
      v50 = [[TYPathData alloc] initWithArray:v49 width:v38 height:v39 isCursive:v45];
      if (v41)
      {
        v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"_%d", v41];
        v52 = [v46 stringByAppendingString:v51];

        v53 = [(sqlite3 *)v9 objectForKey:v52];

        if (!v53)
        {
          [(sqlite3 *)v9 setObject:v50 forKeyedSubscript:v52];
        }
      }

      else
      {
        v54 = [(sqlite3 *)v9 objectForKey:v46];

        if (!v54)
        {
          [(sqlite3 *)v9 setObject:v50 forKeyedSubscript:v46];
        }
      }
    }
  }

  sqlite3_finalize(ppStmt);

  sqlite3_close(v60);
  v10 = v61;
LABEL_41:

  v55 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)getStrokesForJamo:(id)a3 forVariant:(BOOL)a4 ofType:(int)a5 fromPath:(id)a6 forLocale:(unint64_t)a7
{
  v10 = a4;
  v11 = a3;
  v12 = a6;
  v13 = 0;
  if ([v11 count])
  {
    v14 = 0;
    while (1)
    {
      v15 = [v11 objectAtIndexedSubscript:v14];
      v16 = [v15 hangulJamoPosition];

      if (v16 == a5)
      {
        break;
      }

LABEL_10:
      if (++v14 >= [v11 count])
      {
        goto LABEL_11;
      }
    }

    if (v10 && ([v11 objectAtIndexedSubscript:v14], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "isConsonantVariant")))
    {
      v17 = [v11 objectAtIndexedSubscript:v14];
      v18 = [v17 description];
      v19 = [v18 stringByAppendingFormat:@"_%lu", a7];
    }

    else
    {
      v20 = [v11 objectAtIndexedSubscript:v14];
      v19 = [v20 description];

      if (!v10)
      {
LABEL_9:
        v21 = [v12 valueForKey:v19];

        v13 = v21;
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

LABEL_11:
  v22 = [v13 strokeArray];

  return v22;
}

+ (id)shiftJamosInSyllable:(id)a3 withPath:(id)a4 forLocale:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 syllableStructure];
  [v7 jamos];
  v26 = v25 = v7;
  v10 = [v7 hasConsonantVariants];
  v11 = [TypistPathUtilities _jamoShiftsForStructure:v9];
  v12 = objc_opt_new();
  if ([v11 count])
  {
    v13 = 0;
    do
    {
      v14 = [v11 objectAtIndexedSubscript:v13];
      v15 = v8;
      v16 = [v14 hangulJamoTransformationDataValue];
      v17 = HIDWORD(v16);

      v18 = v16;
      v8 = v15;
      v19 = [TypistPathUtilities getStrokesForJamo:v26 forVariant:v10 ofType:v18 fromPath:v15 forLocale:a5];
      v20 = [TypistPathUtilities shiftStrokesForJamo:v19 withDirection:v17];
      [v12 addObject:v20];

      ++v13;
    }

    while (v13 < [v11 count]);
  }

  v21 = objc_opt_new();
  if ([v12 count])
  {
    v22 = 0;
    do
    {
      v23 = [v12 objectAtIndexedSubscript:v22];
      [v21 addObjectsFromArray:v23];

      ++v22;
    }

    while (v22 < [v12 count]);
  }

  return v21;
}

+ (CGAffineTransform)_determineShiftBasedOnDirection:(SEL)a3
{
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  *&v14.a = *MEMORY[0x277CBF2C0];
  *&v14.c = v5;
  v6 = *(MEMORY[0x277CBF2C0] + 32);
  *&v14.tx = v6;
  *&v13.a = *&v14.a;
  *&v13.c = v5;
  *&v13.tx = v6;
  switch(a4)
  {
    case 0:
      CGAffineTransformMakeTranslation(&v14, -3.815, -10.9);
      v7 = 1.1;
      v8 = 0.8;
      goto LABEL_24;
    case 1:
      v10 = 30.52;
      goto LABEL_17;
    case 2:
      CGAffineTransformMakeTranslation(&v14, -4.23888889, -13.8727273);
      v7 = 0.7;
      v8 = 1.2;
      goto LABEL_24;
    case 3:
      CGAffineTransformMakeTranslation(&v14, 25.4333333, -6.93636364);
      v7 = 0.9;
      goto LABEL_11;
    case 4:
      v9 = -7.63;
      goto LABEL_20;
    case 5:
      CGAffineTransformMakeTranslation(&v14, -0.0, 21.8);
      v7 = 1.0;
      goto LABEL_15;
    case 6:
      v9 = 38.15;
LABEL_20:
      CGAffineTransformMakeTranslation(&v14, -3.052, v9);
      v7 = 1.1;
      v8 = 0.7;
      goto LABEL_24;
    case 7:
      CGAffineTransformMakeTranslation(&v14, -4.23888889, -15.26);
      v7 = 0.7;
      v8 = 0.9;
      goto LABEL_24;
    case 8:
      CGAffineTransformMakeTranslation(&v14, 30.52, -0.0);
      v7 = 0.7;
      goto LABEL_23;
    case 9:
      CGAffineTransformMakeTranslation(&v14, 0.0, 36.3333333);
      v8 = 0.66;
      goto LABEL_18;
    case 10:
      CGAffineTransformMakeTranslation(&v14, 8.47777778, -7.63);
      v7 = 0.6;
      v8 = 0.6;
      goto LABEL_24;
    case 11:
      CGAffineTransformMakeTranslation(&v14, 4.23888889, 0.0);
      v7 = 0.6;
LABEL_15:
      v8 = 0.5;
      goto LABEL_24;
    case 12:
      CGAffineTransformMakeTranslation(&v14, 5.08666667, 12.7166667);
      v7 = 0.9;
LABEL_23:
      v8 = 0.6;
      goto LABEL_24;
    case 13:
      v10 = 42.3888889;
LABEL_17:
      CGAffineTransformMakeTranslation(&v14, 0.0, v10);
      v8 = 0.6;
LABEL_18:
      v7 = 1.0;
      goto LABEL_24;
    case 14:
      CGAffineTransformMakeTranslation(&v14, 0.0, 7.63);
      v7 = 1.0;
LABEL_11:
      v8 = 1.0;
LABEL_24:
      CGAffineTransformMakeScale(&v13, v7, v8);
      t1 = v13;
      v11 = v14;
      result = CGAffineTransformConcat(retstr, &t1, &v11);
      break;
    default:
      *&retstr->a = *&v14.a;
      *&retstr->c = v5;
      *&retstr->tx = v6;
      break;
  }

  return result;
}

@end