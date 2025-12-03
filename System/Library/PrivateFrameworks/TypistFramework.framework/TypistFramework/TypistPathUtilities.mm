@interface TypistPathUtilities
+ (BOOL)_validatePoints:(CGPoint)points To:(CGPoint)to;
+ (CGAffineTransform)_determineShiftBasedOnDirection:(SEL)direction;
+ (CGAffineTransform)_makeTranslationWithOffset:(SEL)offset;
+ (CGPoint)_addPoint:(CGPoint)point andPoint:(CGPoint)andPoint;
+ (CGPoint)_reflectPoint:(CGPoint)point origin:(CGPoint)origin;
+ (CGPoint)_scalarMultiplyPoint:(CGPoint)point by:(double)by;
+ (CGPoint)_subtractPoint:(CGPoint)point byPoint:(CGPoint)byPoint;
+ (CGPoint)pointOnCurve:(id)curve atTime:(double)time;
+ (CGPoint)pointOnSineCurve:(double)curve withHeight:(double)height withStartPoint:(CGPoint)point withEndPoint:(CGPoint)endPoint atTime:(double)time;
+ (CGSize)_getWidthAndHeight:(id)height forCharacters:(id)characters;
+ (double)getWidthOfFirstCharacterInString:(id)string;
+ (id)_connectPath:(id)path forCharacters:(id)characters withRegion:(id)region;
+ (id)_decomposeCharactersWhereNeeded:(id)needed;
+ (id)_decomposeGraphemeIntoSeparateCharactersIfNeeded:(id)needed;
+ (id)_determineWritingStyle:(id)style forCharacters:(id)characters;
+ (id)_processArabicCharacter:(id)character withPathMap:(id)map forLocale:(unint64_t)locale;
+ (id)_processThaiCharacter:(id)character withPathMap:(id)map forLocale:(unint64_t)locale;
+ (id)_queryHandwritingSourceForCharactersInString:(id)string withRegion:(id)region;
+ (id)_separateFinalFormCharacters:(id)characters;
+ (id)_separateIsolatedCharacters:(id)characters;
+ (id)_separateUniqueCharacters:(id)characters;
+ (id)_shiftPath:(id)path forCharacters:(id)characters withRule:(int)rule;
+ (id)_shiftThaiStrokes:(id)strokes withRatio:(double)ratio ofHeight:(int64_t)height;
+ (id)convertCurveDeleteTouchPoints:(CGPoint)points endPoint:(CGPoint)point curveHeight:(double)height curveDensity:(int64_t)density tilt:(double)tilt;
+ (id)convertSVGPaths:(id)paths withTransformation:(CGAffineTransform *)transformation;
+ (id)convertSVGStringPathToUIBezierPath:(id)path;
+ (id)convertSingleSVGPaths:(id)paths withTransformation:(CGAffineTransform *)transformation;
+ (id)convertUIBezierPathToTouchPoints:(id)points;
+ (id)generatePathArgumentStringWithParameters:(id)parameters fromPoints:(id)points;
+ (id)generatePathWithParameters:(id)parameters fromPoints:(id)points;
+ (id)getPathDataForCharacters:(id)characters withRegion:(id)region isCursive:(BOOL)cursive;
+ (id)getStrokesForJamo:(id)jamo forVariant:(BOOL)variant ofType:(int)type fromPath:(id)path forLocale:(unint64_t)locale;
+ (id)getTextClustersFrom:(id)from forCharacters:(id)characters;
+ (id)getTextClustersFrom:(id)from withRegion:(id)region;
+ (id)shiftJamosInSyllable:(id)syllable withPath:(id)path forLocale:(unint64_t)locale;
+ (int)_getScribbleRuleFromRegion:(id)region;
+ (int)_mappingRegionToVariantID:(id)d;
+ (sqlite3)_openDatabaseFromFile:(id)file;
+ (unint64_t)_queryDatabase:(sqlite3 *)database withSql:(id)sql forRegion:(id)region;
+ (unint64_t)getTotalWidthForText:(id)text isCursive:(BOOL)cursive withRegion:(id)region fromPathMap:(id)map;
@end

@implementation TypistPathUtilities

+ (CGPoint)_subtractPoint:(CGPoint)point byPoint:(CGPoint)byPoint
{
  v4 = point.x - byPoint.x;
  v5 = point.y - byPoint.y;
  result.y = v5;
  result.x = v4;
  return result;
}

+ (CGPoint)_addPoint:(CGPoint)point andPoint:(CGPoint)andPoint
{
  v4 = point.x + andPoint.x;
  v5 = point.y + andPoint.y;
  result.y = v5;
  result.x = v4;
  return result;
}

+ (CGPoint)_scalarMultiplyPoint:(CGPoint)point by:(double)by
{
  v4 = point.x * by;
  v5 = point.y * by;
  result.y = v5;
  result.x = v4;
  return result;
}

+ (CGPoint)_reflectPoint:(CGPoint)point origin:(CGPoint)origin
{
  v4 = origin.x + origin.x - point.x;
  v5 = origin.y + origin.y - point.y;
  result.y = v5;
  result.x = v4;
  return result;
}

+ (CGPoint)pointOnCurve:(id)curve atTime:(double)time
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

+ (CGPoint)pointOnSineCurve:(double)curve withHeight:(double)height withStartPoint:(CGPoint)point withEndPoint:(CGPoint)endPoint atTime:(double)time
{
  v7 = point.x + time * (endPoint.x - point.x);
  v8 = 6.28318531 / curve * v7 - 6.28318531 / curve * point.x;
  v9 = point.y + height * 0.5 * sinf(v8);
  v10 = v7;
  result.y = v9;
  result.x = v10;
  return result;
}

+ (id)convertCurveDeleteTouchPoints:(CGPoint)points endPoint:(CGPoint)point curveHeight:(double)height curveDensity:(int64_t)density tilt:(double)tilt
{
  x = point.x;
  y = points.y;
  v23 = points.x;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __92__TypistPathUtilities_convertCurveDeleteTouchPoints_endPoint_curveHeight_curveDensity_tilt___block_invoke;
  v24[3] = &__block_descriptor_40_e8_d16__0d8l;
  v24[4] = 0x3FC5555555555555;
  v12 = MEMORY[0x274398FD0](v24, a2);
  v13 = objc_opt_new();
  if (density >= 1)
  {
    v14 = (x - v23) / density;
    v22 = (2 * density);
    v15 = -tilt;
    v16 = 0.166666667;
    do
    {
      [TypistPathUtilities pointOnSineCurve:v14 withHeight:height withStartPoint:v23 withEndPoint:y atTime:v23 + v14 * 0.5, y, v16];
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

+ (id)generatePathArgumentStringWithParameters:(id)parameters fromPoints:(id)points
{
  parametersCopy = parameters;
  pointsCopy = points;
  v31 = objc_opt_new();
  v7 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v7 setPositiveFormat:@"0.##"];
  [v7 setGroupingSeparator:&stru_288014100];
  [v7 setDecimalSeparator:@"."];
  v8 = [parametersCopy objectForKeyedSubscript:@"CPPATHGEN_TIME_INTERVAL"];
  v9 = v8;
  v10 = @"0.0";
  if (v8)
  {
    v10 = v8;
  }

  v30 = v10;

  v29 = parametersCopy;
  v27 = [objc_alloc(MEMORY[0x277D6FF60]) initWithParams:parametersCopy];
  v28 = pointsCopy;
  v26 = [v27 generatePathFromInflectionPoints:pointsCopy segmentTiming:0 keys:0 string:0 layout:0];
  samples = [v26 samples];
  if ([samples count])
  {
    v12 = 0;
    do
    {
      v13 = [samples objectAtIndexedSubscript:v12];
      [v13 point];
      v15 = v14;
      v17 = v16;

      v18 = MEMORY[0x277CCACA8];
      v19 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
      v20 = [v7 stringFromNumber:v19];
      v21 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
      v22 = [v7 stringFromNumber:v21];
      stringValue = [&unk_288029500 stringValue];
      v24 = [v18 stringWithFormat:@"[%@ %@ %@ %@] %@ ", v20, v22, &unk_2880294F0, stringValue, v30];
      [v31 appendString:v24];

      ++v12;
    }

    while (v12 < [samples count]);
  }

  return v31;
}

+ (id)generatePathWithParameters:(id)parameters fromPoints:(id)points
{
  v5 = MEMORY[0x277D6FF60];
  pointsCopy = points;
  parametersCopy = parameters;
  v8 = [[v5 alloc] initWithParams:parametersCopy];

  v9 = [v8 generatePathFromInflectionPoints:pointsCopy segmentTiming:0 keys:0 string:0 layout:0];

  return v9;
}

+ (id)convertUIBezierPathToTouchPoints:(id)points
{
  pointsCopy = points;
  v4 = objc_opt_new();
  cGPath = [pointsCopy CGPath];

  CGPathApply(cGPath, v4, getTouchPoints);

  return v4;
}

+ (id)convertSVGStringPathToUIBezierPath:(id)path
{
  v168 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v151 = objc_opt_new();
  v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"MmLlHhVvCcSsQqTtAaZ"];
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  obj = pathCopy;
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
              lastObject = v17;
              [v12 addObject:v17];
            }

            else
            {
              lastObject = [v12 lastObject];
              TYLogl(OS_LOG_TYPE_DEBUG, @"Command letter misssing, use the preceded one %@", v19, v20, v21, v22, v23, v24, lastObject);
            }

            v25 = [lastObject characterAtIndex:0];
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

+ (id)convertSVGPaths:(id)paths withTransformation:(CGAffineTransform *)transformation
{
  v24 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  v7 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = pathsCopy;
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
        v14 = *&transformation->c;
        v18[0] = *&transformation->a;
        v18[1] = v14;
        v18[2] = *&transformation->tx;
        v15 = [self convertSingleSVGPaths:v13 withTransformation:v18];
        [v7 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)convertSingleSVGPaths:(id)paths withTransformation:(CGAffineTransform *)transformation
{
  v6 = [paths copy];
  v7 = *&transformation->c;
  v10[0] = *&transformation->a;
  v10[1] = v7;
  v10[2] = *&transformation->tx;
  [v6 applyTransform:v10];
  v8 = [self convertUIBezierPathToTouchPoints:v6];

  return v8;
}

+ (BOOL)_validatePoints:(CGPoint)points To:(CGPoint)to
{
  y = to.y;
  x = to.x;
  v13 = points.y;
  v11 = points.x;
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

+ (id)_decomposeCharactersWhereNeeded:(id)needed
{
  neededCopy = needed;
  v4 = objc_opt_new();
  graphemeCount = [neededCopy graphemeCount];
  if (!graphemeCount)
  {
    goto LABEL_19;
  }

  for (i = 0; i != graphemeCount; ++i)
  {
    v6 = [neededCopy graphemeAtIndex:i];
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

+ (id)_decomposeGraphemeIntoSeparateCharactersIfNeeded:(id)needed
{
  neededCopy = needed;
  v4 = neededCopy;
  if (neededCopy)
  {
    v5 = [neededCopy characterAtIndex:0];
    if ([TypistThaiSyllable isThaiCharacter:v5]|| [TypistArabicSyllable isArabicPresentationFormBCharacter:v5])
    {
      splitGraphemeIntoCharacterArray = [v4 splitGraphemeIntoCharacterArray];
    }

    else
    {
      splitGraphemeIntoCharacterArray = [MEMORY[0x277CBEA60] arrayWithObject:v4];
    }

    v7 = splitGraphemeIntoCharacterArray;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_processArabicCharacter:(id)character withPathMap:(id)map forLocale:(unint64_t)locale
{
  characterCopy = character;
  mapCopy = map;
  v9 = objc_opt_new();
  if ([characterCopy length])
  {
    height = 0;
    width = 0;
    v10 = 0;
    v11 = 0x277CCA000uLL;
    do
    {
      v12 = [characterCopy characterAtIndex:v10];
      v13 = [*(v11 + 3240) stringWithFormat:@"%C", v12];
      locale = [v13 stringByAppendingFormat:@"_%lu", locale];

      v15 = [mapCopy objectForKeyedSubscript:locale];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v18 = [*(v11 + 3240) stringWithFormat:@"%C", v12];
        v17 = [mapCopy objectForKeyedSubscript:v18];
      }

      if (!v10)
      {
        width = [v17 width];
        height = [v17 height];
      }

      isCursive = [v17 isCursive];
      strokeArray = [v17 strokeArray];
      [v9 addObjectsFromArray:strokeArray];

      ++v10;
      v11 = 0x277CCA000;
    }

    while (v10 < [characterCopy length]);
    v22 = height;
    v21 = width;
  }

  else
  {
    isCursive = 0;
    v22 = 0;
    v21 = 0;
  }

  if ([v9 count])
  {
    v23 = [[TYPathData alloc] initWithArray:v9 width:v21 height:v22 isCursive:isCursive];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)_processThaiCharacter:(id)character withPathMap:(id)map forLocale:(unint64_t)locale
{
  characterCopy = character;
  mapCopy = map;
  v8 = objc_opt_new();
  v32 = mapCopy;
  if ([characterCopy length])
  {
    width = 0;
    height = 0;
    v9 = 0;
    v10 = 0.0;
    v30 = v8;
    do
    {
      v11 = [characterCopy characterAtIndex:v9];
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", v11];
      locale = [v12 stringByAppendingFormat:@"_%lu", locale];

      v14 = [mapCopy objectForKeyedSubscript:locale];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", v11];
        v16 = [mapCopy objectForKeyedSubscript:v17];
      }

      if (!v9)
      {
        width = [v16 width];
        height = [v16 height];
      }

      strokeArray = [v16 strokeArray];
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
            v25 = [TypistPathUtilities _shiftThaiStrokes:strokeArray withRatio:height ofHeight:v10];

            v10 = v10 + 0.141;
            strokeArray = v25;
          }
        }
      }

      v8 = v30;
      [v30 addObjectsFromArray:strokeArray];

      ++v9;
      mapCopy = v32;
    }

    while (v9 < [characterCopy length]);
  }

  else
  {
    width = 0;
    height = 0;
  }

  if ([v8 count])
  {
    v26 = [[TYPathData alloc] initWithArray:v8 width:width height:height isCursive:0];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

+ (id)_shiftThaiStrokes:(id)strokes withRatio:(double)ratio ofHeight:(int64_t)height
{
  v26 = *MEMORY[0x277D85DE8];
  strokesCopy = strokes;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:strokesCopy copyItems:1];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    v12 = height * ratio;
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

+ (CGAffineTransform)_makeTranslationWithOffset:(SEL)offset
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

+ (int)_mappingRegionToVariantID:(id)d
{
  dCopy = d;
  if ([dCopy caseInsensitiveCompare:@"hans"])
  {
    if ([dCopy caseInsensitiveCompare:@"hant"])
    {
      if ([dCopy caseInsensitiveCompare:@"kr"])
      {
        if ([dCopy caseInsensitiveCompare:@"jp"])
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

+ (double)getWidthOfFirstCharacterInString:(id)string
{
  v4 = [self _decomposeCharactersWhereNeeded:string];
  if ([v4 length])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", objc_msgSend(v4, "characterAtIndex:", 0)];
    v6 = [self _queryHandwritingSourceForCharactersInString:v5 withRegion:0];
    v7 = [v6 objectForKeyedSubscript:v5];
    width = [v7 width];
  }

  else
  {
    width = 0.0;
  }

  return width;
}

+ (id)getPathDataForCharacters:(id)characters withRegion:(id)region isCursive:(BOOL)cursive
{
  cursiveCopy = cursive;
  charactersCopy = characters;
  regionCopy = region;
  v10 = [self _decomposeCharactersWhereNeeded:charactersCopy];
  v11 = [self _mappingRegionToVariantID:regionCopy];
  v12 = [self _queryHandwritingSourceForCharactersInString:v10 withRegion:regionCopy];
  if (v12)
  {
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    v14 = [self _processCharacters:charactersCopy withPathMap:v12 forLocale:v11];

    if (cursiveCopy)
    {
      v15 = [self _connectPath:v14 forCharacters:charactersCopy withRegion:regionCopy];
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

+ (unint64_t)getTotalWidthForText:(id)text isCursive:(BOOL)cursive withRegion:(id)region fromPathMap:(id)map
{
  v38 = *MEMORY[0x277D85DE8];
  textCopy = text;
  regionCopy = region;
  mapCopy = map;
  v32 = regionCopy;
  if (cursive)
  {
    [TypistPathUtilities getTextClustersFrom:textCopy withRegion:regionCopy];
  }

  else
  {
    [textCopy graphemeArray];
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
        v19 = [mapCopy objectForKeyedSubscript:v18];
        v26 = v19;
        if (v19)
        {
          if ([v19 width] >= 1)
          {
            [v26 perCharacterScale];
            if (v27 > 0.0)
            {
              width = [v26 width];
              [v26 perCharacterScale];
              v15 += llround(v29 * width);
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

+ (id)getTextClustersFrom:(id)from withRegion:(id)region
{
  regionCopy = region;
  fromCopy = from;
  v8 = [self _decomposeCharactersWhereNeeded:fromCopy];
  v9 = [self _queryHandwritingSourceForCharactersInString:v8 withRegion:regionCopy];

  v10 = [self getTextClustersFrom:v9 forCharacters:fromCopy];

  return v10;
}

+ (id)getTextClustersFrom:(id)from forCharacters:(id)characters
{
  v30 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  charactersCopy = characters;
  v8 = charactersCopy;
  v9 = 0;
  if (fromCopy && charactersCopy)
  {
    arabicGenericCharacters = [MEMORY[0x277CCA900] arabicGenericCharacters];
    v11 = [v8 rangeOfCharacterFromSet:arabicGenericCharacters];

    arabicPresentationFormCharacters = [MEMORY[0x277CCA900] arabicPresentationFormCharacters];
    v13 = [v8 rangeOfCharacterFromSet:arabicPresentationFormCharacters];

    if (v11 != 0x7FFFFFFFFFFFFFFFLL || v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [self _processCharacters:v8 withPathMap:fromCopy forLocale:3];

      fromCopy = v15;
    }

    v16 = [self _determineWritingStyle:fromCopy forCharacters:v8];
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

          characterCluster = [*(*(&v25 + 1) + 8 * i) characterCluster];
          [v9 addObject:characterCluster];
        }

        v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v19);
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)_determineWritingStyle:(id)style forCharacters:(id)characters
{
  styleCopy = style;
  charactersCopy = characters;
  graphemeCount = [charactersCopy graphemeCount];
  v25 = objc_opt_new();
  if (graphemeCount)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v22 = graphemeCount - 1;
    v23 = 0;
    v10 = 0x279DF4000uLL;
    v21 = graphemeCount;
    while (1)
    {
      v11 = v10;
      v12 = [charactersCopy graphemeAtIndex:v9];
      v13 = [styleCopy objectForKeyedSubscript:v12];
      isCursive = [v13 isCursive];
      v8 += [v12 length];
      if ((isCursive & 1) == 0)
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
        if (v15 == graphemeCount)
        {
          v16 = [objc_alloc(*(v11 + 248)) initWithCharacters:charactersCopy isCursive:1];
        }

        else
        {
          v19 = [charactersCopy substringWithRange:{v7, v8 - v7}];
          v16 = [objc_alloc(*(v11 + 248)) initWithCharacters:v19 isCursive:1];

          graphemeCount = v21;
        }

        [v25 addObject:v16];
LABEL_13:

LABEL_14:
        v10 = v11;
      }

      if (graphemeCount == ++v9)
      {
        goto LABEL_16;
      }
    }

    v16 = [charactersCopy substringWithRange:{v7, v8 + ~v7}];
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

+ (int)_getScribbleRuleFromRegion:(id)region
{
  regionCopy = region;
  if ([regionCopy caseInsensitiveCompare:@"RU"] && objc_msgSend(regionCopy, "caseInsensitiveCompare:", @"UA"))
  {
    if ([regionCopy caseInsensitiveCompare:@"ar"])
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

+ (id)_separateFinalFormCharacters:(id)characters
{
  charactersCopy = characters;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v15 = charactersCopy;
  graphemeCount = [charactersCopy graphemeCount];
  arabicFinalFormsCharacterSet = [MEMORY[0x277CCACA8] arabicFinalFormsCharacterSet];
  v14 = graphemeCount;
  if (graphemeCount)
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
          if ([arabicFinalFormsCharacterSet characterIsMember:v11])
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

+ (id)_separateIsolatedCharacters:(id)characters
{
  charactersCopy = characters;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  graphemeCount = [charactersCopy graphemeCount];
  if (graphemeCount)
  {
    v8 = graphemeCount;
    for (i = 0; i != v8; ++i)
    {
      v10 = [charactersCopy graphemeAtIndex:i];
      [v4 addObject:v10];
    }
  }

  if ([v4 count])
  {
    v11 = 0;
    do
    {
      arabicIsolatedCharacters = [MEMORY[0x277CCA900] arabicIsolatedCharacters];
      v13 = [v4 objectAtIndexedSubscript:v11];
      v14 = [arabicIsolatedCharacters characterIsMember:{objc_msgSend(v13, "characterAtIndex:", 0)}];

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

+ (id)_separateUniqueCharacters:(id)characters
{
  charactersCopy = characters;
  v4 = objc_opt_new();
  graphemeCount = [charactersCopy graphemeCount];
  if (graphemeCount)
  {
    v6 = graphemeCount;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = graphemeCount - 1;
    do
    {
      v11 = [charactersCopy graphemeAtIndex:v9];
      cyrillicCharactersWithUniqueWritingRule = [MEMORY[0x277CCA900] cyrillicCharactersWithUniqueWritingRule];
      v13 = [cyrillicCharactersWithUniqueWritingRule characterIsMember:{objc_msgSend(v11, "characterAtIndex:", 0)}];

      if (v13)
      {
        ++v8;
        v14 = objc_opt_new();
        v15 = [charactersCopy substringWithRange:{v7, v9 + 1 - v7}];

        [v4 addObject:v15];
        v7 = v9 + 1;
      }

      else if (v10 == v9 && v9 >= v7)
      {
        if (v8 == v6)
        {
          [v4 addObject:charactersCopy];
          v8 = v6;
        }

        else
        {
          v16 = [charactersCopy substringWithRange:{v7, v6 - v7}];
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

+ (id)_shiftPath:(id)path forCharacters:(id)characters withRule:(int)rule
{
  v121 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  charactersCopy = characters;
  array = [MEMORY[0x277CBEA60] array];
  ruleCopy = rule;
  if (rule == 2)
  {
    v10 = [self _separateIsolatedCharacters:charactersCopy];
  }

  else
  {
    if (rule)
    {
      [MEMORY[0x277CBEA60] arrayWithObject:charactersCopy];
    }

    else
    {
      [self _separateUniqueCharacters:charactersCopy];
    }
    v10 = ;
  }

  v11 = v10;

  v74 = charactersCopy;
  textDirectionAnnotations = [charactersCopy textDirectionAnnotations];
  v12 = [textDirectionAnnotations objectAtIndexedSubscript:0];
  textDirection = [v12 textDirection];

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

        v19 = [self _separateFinalFormCharacters:*(*(&v111 + 1) + 8 * i)];
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
    v81 = pathCopy;
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
        graphemeCount = [v24 graphemeCount];
        if (graphemeCount)
        {
          v27 = 0;
          v28 = 0.0;
          do
          {
            v29 = [v85 graphemeAtIndex:v27];
            v30 = [pathCopy objectForKeyedSubscript:v29];
            strokeArray = [v30 strokeArray];

            if (v27 || ([v80 firstObject], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v85, "isEqual:", v32), v32, v34 = 0.0, (v33 & 1) == 0))
            {
              v35 = [pathCopy objectForKeyedSubscript:v29];
              v34 = v28 - [v35 width];
            }

            v28 = v34;
            memset(&v106, 0, sizeof(v106));
            v36 = v20 + v34;
            if (textDirection != 2)
            {
              v36 = v22;
            }

            CGAffineTransformMakeTranslation(&v106, v36, 0.0);
            cyrillicCharactersWithUniqueWritingRule = [*(v21 + 2304) cyrillicCharactersWithUniqueWritingRule];
            if ([cyrillicCharactersWithUniqueWritingRule characterIsMember:{objc_msgSend(v29, "characterAtIndex:", 0)}])
            {
              v38 = 1;
            }

            else
            {
              arabicCharactersWithUniqueWritingRule = [*(v21 + 2304) arabicCharactersWithUniqueWritingRule];
              v38 = [arabicCharactersWithUniqueWritingRule characterIsMember:{objc_msgSend(v29, "characterAtIndex:", 0)}];
            }

            arabicIsolatedCharacters = [*(v21 + 2304) arabicIsolatedCharacters];
            v41 = [arabicIsolatedCharacters characterIsMember:{objc_msgSend(v29, "characterAtIndex:", 0)}];

            v87 = v29;
            v88 = v27;
            v86 = strokeArray;
            if (ruleCopy == 1 || (v38 & 1) != 0 || [v29 length] >= 2)
            {
              v104 = 0u;
              v105 = 0u;
              v102 = 0u;
              v103 = 0u;
              v42 = strokeArray;
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
                    firstObject = [v42 firstObject];
                    LODWORD(v47) = [v47 isEqual:firstObject];

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
              v51 = strokeArray;
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
              v57 = strokeArray;
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

            pathCopy = v81;
            v50 = [v81 objectForKeyedSubscript:v87];
            v22 = v22 + [v50 width];

            v27 = v88 + 1;
            v21 = 0x277CCA000;
          }

          while (v88 + 1 != graphemeCount);
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

  [self _getWidthAndHeight:pathCopy forCharacters:v74];
  v70 = [[TYPathData alloc] initWithArray:v13 width:v68 height:v69 isCursive:0];

  v71 = *MEMORY[0x277D85DE8];

  return v70;
}

+ (CGSize)_getWidthAndHeight:(id)height forCharacters:(id)characters
{
  heightCopy = height;
  charactersCopy = characters;
  graphemeCount = [charactersCopy graphemeCount];
  if (graphemeCount)
  {
    v8 = 0;
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      v11 = [charactersCopy graphemeAtIndex:v8];
      v12 = [heightCopy objectForKeyedSubscript:v11];
      v10 = v10 + [v12 width];

      v13 = [heightCopy objectForKeyedSubscript:v11];
      v9 = v9 + [v13 height];

      ++v8;
    }

    while (graphemeCount != v8);
  }

  else
  {
    v10 = 0.0;
    v9 = 0.0;
  }

  v14 = v10;
  v15 = v9 / graphemeCount;
  result.height = v15;
  result.width = v14;
  return result;
}

+ (id)_connectPath:(id)path forCharacters:(id)characters withRegion:(id)region
{
  v44 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  regionCopy = region;
  v10 = [self _determineWritingStyle:pathCopy forCharacters:characters];
  v11 = objc_opt_new();
  v32 = [self _mappingRegionToVariantID:regionCopy];
  v27 = regionCopy;
  v31 = [self _getScribbleRuleFromRegion:regionCopy];
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
    selfCopy = self;
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
        characterCluster = [v16 characterCluster];
        if ([v16 isCursive])
        {
          v18 = [self _shiftPath:pathCopy forCharacters:characterCluster withRule:v31];
          [v11 setObject:v18 forKeyedSubscript:characterCluster];
        }

        else
        {
          v18 = [self _processCharacters:characterCluster withPathMap:pathCopy forLocale:v32];
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
            self = selfCopy;
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

+ (sqlite3)_openDatabaseFromFile:(id)file
{
  fileCopy = file;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  ppDb = 0;
  v5 = 0;
  if ([defaultManager fileExistsAtPath:fileCopy])
  {
    sqlite3_open([fileCopy UTF8String], &ppDb);
    v5 = ppDb;
  }

  return v5;
}

+ (unint64_t)_queryDatabase:(sqlite3 *)database withSql:(id)sql forRegion:(id)region
{
  ppStmt = 0;
  sqlCopy = sql;
  regionCopy = region;
  sqlite3_prepare_v2(database, [sql UTF8String], -1, &ppStmt, 0);
  v10 = ppStmt;
  uTF8String = [regionCopy UTF8String];

  sqlite3_bind_text(v10, 1, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
  v12 = 0;
  if (sqlite3_step(ppStmt) == 100)
  {
    v12 = sqlite3_column_int(ppStmt, 0);
  }

  sqlite3_finalize(ppStmt);
  return v12;
}

+ (id)_queryHandwritingSourceForCharactersInString:(id)string withRegion:(id)region
{
  v69 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 pathForResource:@"Handwriting/strokes" ofType:@"db"];

  v8 = [self _openDatabaseFromFile:v7];
  if (v8)
  {
    v9 = v8;
    v61 = v7;
  }

  else
  {

    v10 = @"/AppleInternal/Library/Frameworks/TypistFramework.framework/Handwriting/strokes.db";
    v9 = [self _openDatabaseFromFile:@"/AppleInternal/Library/Frameworks/TypistFramework.framework/Handwriting/strokes.db"];
    if (!v9)
    {
      goto LABEL_41;
    }

    v61 = @"/AppleInternal/Library/Frameworks/TypistFramework.framework/Handwriting/strokes.db";
  }

  graphemeCount = [stringCopy graphemeCount];
  v12 = objc_opt_new();
  if (graphemeCount)
  {
    for (i = 0; i != graphemeCount; ++i)
    {
      v14 = [stringCopy graphemeAtIndex:i];
      v15 = [self _decomposeGraphemeIntoSeparateCharactersIfNeeded:v14];
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

+ (id)getStrokesForJamo:(id)jamo forVariant:(BOOL)variant ofType:(int)type fromPath:(id)path forLocale:(unint64_t)locale
{
  variantCopy = variant;
  jamoCopy = jamo;
  pathCopy = path;
  v13 = 0;
  if ([jamoCopy count])
  {
    v14 = 0;
    while (1)
    {
      v15 = [jamoCopy objectAtIndexedSubscript:v14];
      hangulJamoPosition = [v15 hangulJamoPosition];

      if (hangulJamoPosition == type)
      {
        break;
      }

LABEL_10:
      if (++v14 >= [jamoCopy count])
      {
        goto LABEL_11;
      }
    }

    if (variantCopy && ([jamoCopy objectAtIndexedSubscript:v14], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "isConsonantVariant")))
    {
      v17 = [jamoCopy objectAtIndexedSubscript:v14];
      v18 = [v17 description];
      locale = [v18 stringByAppendingFormat:@"_%lu", locale];
    }

    else
    {
      v20 = [jamoCopy objectAtIndexedSubscript:v14];
      locale = [v20 description];

      if (!variantCopy)
      {
LABEL_9:
        v21 = [pathCopy valueForKey:locale];

        v13 = v21;
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

LABEL_11:
  strokeArray = [v13 strokeArray];

  return strokeArray;
}

+ (id)shiftJamosInSyllable:(id)syllable withPath:(id)path forLocale:(unint64_t)locale
{
  syllableCopy = syllable;
  pathCopy = path;
  syllableStructure = [syllableCopy syllableStructure];
  [syllableCopy jamos];
  v26 = v25 = syllableCopy;
  hasConsonantVariants = [syllableCopy hasConsonantVariants];
  v11 = [TypistPathUtilities _jamoShiftsForStructure:syllableStructure];
  v12 = objc_opt_new();
  if ([v11 count])
  {
    v13 = 0;
    do
    {
      v14 = [v11 objectAtIndexedSubscript:v13];
      v15 = pathCopy;
      hangulJamoTransformationDataValue = [v14 hangulJamoTransformationDataValue];
      v17 = HIDWORD(hangulJamoTransformationDataValue);

      v18 = hangulJamoTransformationDataValue;
      pathCopy = v15;
      v19 = [TypistPathUtilities getStrokesForJamo:v26 forVariant:hasConsonantVariants ofType:v18 fromPath:v15 forLocale:locale];
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

+ (CGAffineTransform)_determineShiftBasedOnDirection:(SEL)direction
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