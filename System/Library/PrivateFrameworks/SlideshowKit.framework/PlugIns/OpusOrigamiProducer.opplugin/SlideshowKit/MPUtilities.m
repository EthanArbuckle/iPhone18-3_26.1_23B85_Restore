@interface MPUtilities
+ ($421962E1114BB55FD51FACB03C2AC210)scaledFilterPresetVectorValue:(SEL)a3 withKey:(id *)a4 forFilterID:(id)a5 andPresetID:(id)a6;
+ (CGColor)CGColorFromString:(id)a3;
+ (CGColor)CGColorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
+ (CGColor)blackCGColor;
+ (CGPoint)computePointValueForAnimationPath:(id)a3 atTime:(double)a4 defaultsTo:(CGPoint)a5;
+ (CGPoint)scaledFilterPresetPointValue:(CGPoint)a3 withKey:(id)a4 forFilterID:(id)a5 andPresetID:(id)a6;
+ (double)aspectRatioOfLayerable:(id)a3 relativeToAspectRatio:(double)a4;
+ (double)computeScalarValueForAnimationPath:(id)a3 atTime:(double)a4 defaultsTo:(double)a5 context:(id)a6;
+ (double)displayTimeForText:(id)a3;
+ (double)scaledFilterPresetScalarValue:(double)a3 withKey:(id)a4 forFilterID:(id)a5 andPresetID:(id)a6;
+ (double)transformTime:(double)a3 forAnimationPath:(id)a4;
+ (id)animationsPathsFromFilterID:(id)a3 andPresetID:(id)a4;
+ (id)attributesFormMPFilter:(id)a3 atTime:(double)a4;
+ (id)attributesFromAnimationPathsInFilter:(id)a3 atTime:(double)a4;
+ (id)computeVectorValueForAnimationPath:(id)a3 atTime:(double)a4 defaultsTo:(id)a5;
+ (id)createMCAction:(id)a3 forPlug:(id)a4 withKey:(id)a5;
+ (id)createPlugInContainer:(id)a3 forLayer:(id)a4 key:(id)a5 inDocument:(id)a6;
+ (id)createPlugInSlide:(id)a3 forLayer:(id)a4 inDocument:(id)a5;
+ (id)createPlugPathToContainer:(id)a3 inDocument:(id)a4;
+ (id)createPlugPathToObject:(id)a3 inDocument:(id)a4;
+ (id)effectContainersForTime:(double)a3 inDocument:(id)a4;
+ (id)effectForMCContainerEffect:(id)a3 inDocument:(id)a4;
+ (id)effectForMCContainerWithObjectID:(id)a3 inDocument:(id)a4;
+ (id)executeScript:(id)a3 withHeader:(id)a4 andAttributes:(id)a5;
+ (id)idOfCombinedID:(id)a3;
+ (id)layerForContainer:(id)a3 inDocument:(id)a4;
+ (id)parentsOfObject:(id)a3;
+ (id)placesPinLabelForSlideAssetPath:(id)a3 inDocument:(id)a4;
+ (id)presetIDOfCombinedID:(id)a3;
+ (id)slideForElementID:(id)a3 withMCContainerEffect:(id)a4 inDocument:(id)a5;
+ (id)slideForPath:(id)a3 inDocument:(id)a4;
+ (id)slideForSlide:(id)a3 inDocument:(id)a4;
+ (id)stringFromCGColor:(CGColor *)a3;
+ (id)stringWithNewUUID;
+ (id)textForElementID:(id)a3 withMCContainerEffect:(id)a4 inDocument:(id)a5;
+ (id)textForIndex:(int64_t)a3 inMCContainerWithObjectID:(id)a4 inDocument:(id)a5;
+ (id)textsDisplayedAtTime:(double)a3 inDocument:(id)a4;
+ (unint64_t)timeOffSetFromString:(id)a3;
+ (void)collectAllActionableLayers:(id)a3 inDictionary:(id)a4;
+ (void)syncAnimationPaths:(id)a3;
@end

@implementation MPUtilities

+ (unint64_t)timeOffSetFromString:(id)a3
{
  if ([a3 isEqualToString:@"relativeFromTimeInForFullDuration"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"relativeFromTimeInForPhaseInDuration"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"relativeFromMainStartForPhaseInDuration"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"relativeFromMainStartForMainDuration"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"relativeFromMainEndForMainDuration"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"relativeFromMainEndForPhaseOutDuration"])
  {
    return 5;
  }

  if ([a3 isEqualToString:@"relativeFromTimeOutForPhaseOutDuration"])
  {
    return 6;
  }

  if ([a3 isEqualToString:@"relativeFromTimeOutForFullDuration"])
  {
    return 7;
  }

  return 0;
}

+ (double)transformTime:(double)a3 forAnimationPath:(id)a4
{
  v6 = [a4 orderedKeyframes];
  v7 = [v6 count];
  v8 = 0.0;
  if (a3 <= 0.0 || v7 < 2)
  {
    return v8;
  }

  v8 = 1.0;
  if (a3 >= 1.0)
  {
    return v8;
  }

  v10 = v7;
  v11 = 0;
  v12 = 1;
  while (1)
  {
    [a4 relativeTimeForKeyframe:{objc_msgSend(v6, "objectAtIndex:", v12)}];
    if (v13 >= a3)
    {
      break;
    }

    v12 = v11 + 2;
    ++v11;
    if (v10 <= v12)
    {
      return v8;
    }
  }

  v15 = [v6 objectAtIndex:v11];
  v16 = [v6 objectAtIndex:v12];
  [a4 relativeTimeForKeyframe:v15];
  v18 = v17;
  [a4 relativeTimeForKeyframe:v16];
  v20 = v19 - v18;
  v21 = (a3 - v18) / (v19 - v18);
  [v15 postControl];
  v23 = v22;
  [v16 preControl];
  return v18 + Spline1(v21, 0.0, v23, v24 + 1.0, 1.0, 0.0, 0.0, 1.0, 1.0) * v20;
}

+ (double)computeScalarValueForAnimationPath:(id)a3 atTime:(double)a4 defaultsTo:(double)a5 context:(id)a6
{
  v10 = [a3 animationPath];
  v11 = [objc_msgSend(a3 "parent")];
  v12 = [v10 orderedKeyframesWithPlugTiming:v11];
  v13 = [v12 count];
  v14 = [v10 isTriggered];
  if (v13)
  {
    v15 = v14;
    if (((a4 <= 0.0) & v14) == 0)
    {
      if (a4 > 0.0 && (v13 != &dword_0 + 1) | v14 & 1)
      {
        if (a4 < 1.0)
        {
          v16 = v14 ^ 1;
          if (v13 > v16)
          {
            v17 = v16 + 1;
            while (1)
            {
              +[MCAnimationPathKeyframed timeForKeyframe:withPlugTiming:](MCAnimationPathKeyframed, "timeForKeyframe:withPlugTiming:", [v12 objectAtIndex:v16], v11);
              v19 = v18;
              [v11 fullDuration];
              if (v19 / v20 >= a4)
              {
                break;
              }

              v16 = v17;
              if (v13 <= v17++)
              {
                goto LABEL_10;
              }
            }

            if (v17 == 1)
            {
              v23 = 0;
            }

            else
            {
              v23 = [v12 objectAtIndex:v17 - 2];
            }

            v24 = [v12 objectAtIndex:v16];
LABEL_13:
            if (v23)
            {
              [MCAnimationPathKeyframed timeForKeyframe:v23 withPlugTiming:v11];
              v26 = v25;
              [v11 fullDuration];
              v28 = v26 / v27;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v23 timeOffset];
                [v23 duration];
                TimeForKeyframeAttributesInPlug([v23 timeOffsetKind], 0, v11);
                v30 = v29;
                [v11 fullDuration];
                v32 = v30 / v31;
                v33 = v30 / v31 <= a4 || v28 > a4;
                v34 = a5;
                if ([v23 function])
                {
                  v35 = qword_1EF3E0;
                  if (!qword_1EF3E0)
                  {
                    v35 = objc_alloc_init(NSMutableDictionary);
                    qword_1EF3E0 = v35;
                  }

                  v36 = [v35 objectForKey:{objc_msgSend(v23, "function")}];
                  if (v36)
                  {
                    v37 = v36;
                    [(MUMathExpressionFloatBased *)v36 resetAllVariables];
                  }

                  else
                  {
                    v39 = -[MUMathExpressionFloatBased initWithString:error:]([MUMathExpressionFloatBased alloc], "initWithString:error:", [v23 function], 0);
                    if (!v39)
                    {
                      goto LABEL_37;
                    }

                    v37 = v39;
                    [qword_1EF3E0 setObject:v39 forKey:{objc_msgSend(v23, "function")}];
                  }

                  v40 = [v23 functionParameters];
                  if (v40)
                  {
                    [(MUMathExpressionFloatBased *)v37 setVariableValues:v40];
                  }

                  if (a6)
                  {
                    [(MUMathExpressionFloatBased *)v37 setVariableValues:a6];
                  }

                  v41 = 0.0;
                  if (v28 < a4)
                  {
                    v41 = 1.0;
                    if (v32 > a4)
                    {
                      v41 = (a4 - v28) / (v32 - v28);
                    }
                  }

                  [v23 functionTimeFactor];
                  v43 = v42;
                  [v23 functionTimeOffset];
                  v45 = v44 + v41 * v43;
                  *&v45 = v45;
                  [(MUMathExpressionFloatBased *)v37 setValue:@"time" forVariable:v45];
                  if (v15)
                  {
                    *&v46 = a5;
                    [(MUMathExpressionFloatBased *)v37 setValue:@"startValue" forVariable:v46];
                  }

                  [(MUMathExpressionFloatBased *)v37 evaluate];
                  v34 = v47;
                }
              }

              else
              {
                [v23 value];
                v34 = v38;
                v33 = 1;
              }
            }

            else
            {
              v34 = a5;
              v33 = 1;
              v28 = 0.0;
            }

LABEL_37:
            if (!v33 || !v24)
            {
              return v34;
            }

            [MCAnimationPathKeyframed timeForKeyframe:v24 withPlugTiming:v11];
            v49 = v48;
            [v11 fullDuration];
            v51 = v49 / v50;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [v24 value];
LABEL_57:
              v52 = v56;
              goto LABEL_58;
            }

            v52 = a5;
            if ([v24 function])
            {
              v53 = qword_1EF3E0;
              if (!qword_1EF3E0)
              {
                v53 = objc_alloc_init(NSMutableDictionary);
                qword_1EF3E0 = v53;
              }

              v54 = [v53 objectForKey:{objc_msgSend(v24, "function")}];
              if (v54)
              {
                v55 = v54;
                [(MUMathExpressionFloatBased *)v54 resetAllVariables];
LABEL_50:
                v58 = [v24 functionParameters];
                if (v58)
                {
                  [(MUMathExpressionFloatBased *)v55 setVariableValues:v58];
                }

                if (a6)
                {
                  [(MUMathExpressionFloatBased *)v55 setVariableValues:a6];
                }

                [v24 functionTimeOffset];
                *&v59 = v59;
                [(MUMathExpressionFloatBased *)v55 setValue:@"time" forVariable:v59];
                if (v15)
                {
                  *&v60 = v52;
                  [(MUMathExpressionFloatBased *)v55 setValue:@"startValue" forVariable:v60];
                }

                [(MUMathExpressionFloatBased *)v55 evaluate];
                goto LABEL_57;
              }

              v57 = -[MUMathExpressionFloatBased initWithString:error:]([MUMathExpressionFloatBased alloc], "initWithString:error:", [v24 function], 0);
              if (v57)
              {
                v55 = v57;
                [qword_1EF3E0 setObject:v57 forKey:{objc_msgSend(v24, "function")}];

                goto LABEL_50;
              }
            }

LABEL_58:
            v61 = v51 - v28;
            v62 = (a4 - v28) / (v51 - v28);
            [v23 postControl];
            v64 = v63;
            [v24 preControl];
            v66 = v28 + Spline1(v62, 0.0, v64, v65 + 1.0, 1.0, 0.0, 0.0, 1.0, 1.0) * v61 - v28;
            v67 = 0.0;
            if (v66 > 0.0)
            {
              v67 = v66 / v61;
            }

            return (v34 + ((v52 - v34) * v67));
          }
        }

LABEL_10:
        v22 = [v12 lastObject];
      }

      else
      {
        v22 = [v12 objectAtIndex:0];
      }

      v23 = v22;
      v24 = 0;
      goto LABEL_13;
    }
  }

  return a5;
}

+ (CGPoint)computePointValueForAnimationPath:(id)a3 atTime:(double)a4 defaultsTo:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  [a1 transformTime:a4 forAnimationPath:?];
  v9 = v8;
  v10 = [a3 orderedKeyframes];
  v11 = [v10 count];
  if (!v11)
  {
    goto LABEL_17;
  }

  if (v11 == &dword_0 + 1 || v9 <= 0.0)
  {
    v20 = [v10 objectAtIndex:0];
LABEL_16:
    [v20 point];
    x = v21;
    y = v22;
    goto LABEL_17;
  }

  if (v9 >= 1.0)
  {
    v20 = [v10 lastObject];
    goto LABEL_16;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v12 = [v10 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v46;
    while (2)
    {
      v16 = 0;
      v17 = v14;
      do
      {
        if (*v46 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v45 + 1) + 8 * v16);
        [a3 relativeTimeForKeyframe:v14];
        if (v18 > v9)
        {
          v19 = v14;
          v14 = v17;
          goto LABEL_19;
        }

        v16 = v16 + 1;
        v17 = v14;
      }

      while (v13 != v16);
      v13 = [v10 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    v19 = 0;
LABEL_19:
    if (v14)
    {
      [a3 relativeTimeForKeyframe:v14];
      v26 = v25;
      [a3 relativeTimeForKeyframe:v19];
      v28 = v27;
      [v14 point];
      v30 = v29;
      if (v19)
      {
        [v19 point];
        v32 = v31;
        [v14 point];
        v34 = v32 - v33;
        v35 = v9 - v26;
        v36 = v28 - v26;
        v37 = (v9 - v26) * v34 / (v28 - v26);
        [v14 point];
        v39 = v38;
        [v19 point];
        v41 = v40;
        [v14 point];
        v43 = v35 * (v41 - v42) / v36;
      }

      else
      {
        [v14 point];
        v39 = v44;
        v37 = 0.0;
        v43 = 0.0;
      }

      x = v30 + v37;
      y = v39 + v43;
    }
  }

LABEL_17:
  v23 = x;
  v24 = y;
  result.y = v24;
  result.x = v23;
  return result;
}

+ (id)computeVectorValueForAnimationPath:(id)a3 atTime:(double)a4 defaultsTo:(id)a5
{
  [a1 transformTime:a4 forAnimationPath:?];
  v8 = v7;
  v9 = [a3 orderedKeyframes];
  v10 = [v9 count];
  if (!v10)
  {
    return a5;
  }

  if (v10 == &dword_0 + 1 || v8 <= 0.0)
  {
    v33 = [v9 objectAtIndex:0];
  }

  else
  {
    if (v8 < 1.0)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v11 = [v9 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        v14 = *v39;
LABEL_7:
        v15 = 0;
        v16 = v13;
        while (1)
        {
          if (*v39 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v38 + 1) + 8 * v15);
          [a3 relativeTimeForKeyframe:v13];
          if (v17 > v8)
          {
            break;
          }

          v15 = v15 + 1;
          v16 = v13;
          if (v12 == v15)
          {
            v12 = [v9 countByEnumeratingWithState:&v38 objects:v42 count:16];
            if (v12)
            {
              goto LABEL_7;
            }

            v16 = v13;
            v13 = 0;
            break;
          }
        }

        if (v16)
        {
          v36 = 0uLL;
          v37 = 0;
          v18 = [a5 count];
          LOBYTE(v36) = [a5 count];
          [a3 relativeTimeForKeyframe:v16];
          v20 = v19;
          [a3 relativeTimeForKeyframe:v13];
          if (v18)
          {
            v22 = 0;
            v23 = v8 - v20;
            v24 = v21 - v20;
            do
            {
              [objc_msgSend(v16 "vector")];
              v26 = v25;
              if (v13)
              {
                [objc_msgSend(v13 "vector")];
                v28 = v27;
                [objc_msgSend(v16 "vector")];
                v30 = v23 * (v28 - v29) / v24;
              }

              else
              {
                v30 = 0.0;
              }

              v31 = v26 + v30;
              *(&v36 + v22++ + 1) = v31;
            }

            while (v18 != v22);
          }

          v34 = v36;
          v35 = v37;
          return [MPVector vectorFromMCVector:&v34];
        }
      }

      return a5;
    }

    v33 = [v9 lastObject];
  }

  return [v33 vector];
}

+ (double)scaledFilterPresetScalarValue:(double)a3 withKey:(id)a4 forFilterID:(id)a5 andPresetID:(id)a6
{
  if (!a6)
  {
    return a3;
  }

  v7 = [+[MPFilterManager sharedManager](MPFilterManager sharedManager];
  v8 = [v7 objectForKey:@"boxMin"];
  v9 = [v7 objectForKey:@"boxMax"];
  if (!(v8 | v9))
  {
    return a3;
  }

  v10 = v9;
  if (!v8)
  {
    v12 = 0.0;
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_8:
    v14 = 1.0;
    return v12 + (v14 - v12) * a3;
  }

  [v8 floatValue];
  v12 = v11;
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_5:
  [v10 floatValue];
  v14 = v13;
  return v12 + (v14 - v12) * a3;
}

+ (CGPoint)scaledFilterPresetPointValue:(CGPoint)a3 withKey:(id)a4 forFilterID:(id)a5 andPresetID:(id)a6
{
  y = a3.y;
  x = a3.x;
  if (a6)
  {
    v9 = [+[MPFilterManager sharedManager](MPFilterManager "sharedManager")];
    v10 = [v9 objectForKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"boxMin %@", a4)}];
    v11 = [v9 objectForKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"boxMax %@", a4)}];
    if (v10 | v11)
    {
      v12 = v11;
      if (v10)
      {
        *&v13 = *&CGPointFromString(v10);
        if (v12)
        {
LABEL_5:
          *&v14 = *&CGPointFromString(v12);
LABEL_8:
          x = v13 + (v14 - v13) * x;
          y = x;
          goto LABEL_9;
        }
      }

      else
      {
        v13 = 0.0;
        if (v11)
        {
          goto LABEL_5;
        }
      }

      v14 = 1.0;
      goto LABEL_8;
    }
  }

LABEL_9:
  v15 = x;
  v16 = y;
  result.y = v16;
  result.x = v15;
  return result;
}

+ ($421962E1114BB55FD51FACB03C2AC210)scaledFilterPresetVectorValue:(SEL)a3 withKey:(id *)a4 forFilterID:(id)a5 andPresetID:(id)a6
{
  if (a7)
  {
    v10 = [+[MPFilterManager sharedManager](MPFilterManager "sharedManager")];
    v11 = [v10 objectForKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"boxMin %@", a5)}];
    result = [v10 objectForKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"boxMax %@", a5)}];
    if (v11 | result)
    {
      v12 = result;
      var0 = a4->var0;
      v14 = [MPVector vectorFromString:@"0. 0. 0. 0."];
      result = [MPVector vectorFromString:@"0. 0. 0. 0."];
      v15 = result;
      if (v11)
      {
        result = [MPVector vectorFromString:v11];
        v14 = result;
      }

      if (v12)
      {
        result = [MPVector vectorFromString:v12];
        v15 = result;
      }

      if (var0)
      {
        v16 = 0;
        var1 = a4->var1;
        do
        {
          [($421962E1114BB55FD51FACB03C2AC210 *)v15 valueAtIndex:v16];
          v19 = v18;
          [($421962E1114BB55FD51FACB03C2AC210 *)v14 valueAtIndex:v16];
          v21 = v19 - v20;
          v22 = var1[v16];
          result = [($421962E1114BB55FD51FACB03C2AC210 *)v14 valueAtIndex:v16];
          *&v23 = v23 + v21 * v22;
          var1[v16++] = *&v23;
        }

        while (var0 != v16);
      }
    }
  }

  *&retstr->var0 = *&a4->var0;
  retstr->var1[3] = a4->var1[3];
  return result;
}

+ (id)attributesFormMPFilter:(id)a3 atTime:(double)a4
{
  v6 = +[NSMutableDictionary dictionary];
  [v6 addEntriesFromDictionary:{objc_msgSend(+[MPFilterManager sharedManager](MPFilterManager, "sharedManager"), "attributesForFilterID:andPresetID:", objc_msgSend(a3, "filterID"), objc_msgSend(a3, "presetID"))}];
  [v6 addEntriesFromDictionary:{+[MPUtilities attributesFromAnimationPathsInFilter:atTime:](MPUtilities, "attributesFromAnimationPathsInFilter:atTime:", a3, a4)}];
  return v6;
}

+ (id)attributesFromAnimationPathsInFilter:(id)a3 atTime:(double)a4
{
  v6 = [MPUtilities defaultAttributesForMPFilter:?];
  v7 = +[NSMutableDictionary dictionary];
  v8 = +[NSMutableDictionary dictionaryWithDictionary:](NSMutableDictionary, "dictionaryWithDictionary:", +[MPUtilities animationsPathsFromFilterID:andPresetID:](MPUtilities, "animationsPathsFromFilterID:andPresetID:", [a3 filterID], objc_msgSend(a3, "presetID")));
  -[NSMutableDictionary addEntriesFromDictionary:](v8, "addEntriesFromDictionary:", [a3 animationPaths]);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [(NSMutableDictionary *)v8 objectForKey:v13];
        if (v14)
        {
          v15 = v14;
          v16 = [v14 orderedKeyframes];
          if ([objc_msgSend(v16 "lastObject")])
          {
            [objc_msgSend(v6 objectForKey:{v13), "floatValue"}];
            [MPUtilities computeScalarValueForAnimationPath:v15 atTime:0 defaultsTo:a4 context:v17];
            *&v18 = v18;
            v19 = [NSNumber numberWithFloat:v18];
          }

          else if ([objc_msgSend(v16 "lastObject")])
          {
            v20 = CGPointFromString([v6 objectForKey:v13]);
            [MPUtilities computePointValueForAnimationPath:v15 atTime:a4 defaultsTo:v20.x, v20.y];
            v19 = NSStringFromCGPoint(v27);
          }

          else
          {
            if (![objc_msgSend(v16 "lastObject")])
            {
              continue;
            }

            v19 = [+[MPUtilities computeVectorValueForAnimationPath:atTime:defaultsTo:](MPUtilities computeVectorValueForAnimationPath:v15 atTime:+[MPVector vectorFromString:](MPVector defaultsTo:{"vectorFromString:", objc_msgSend(v6, "objectForKey:", v13)), a4), "CIColorString"}];
          }

          [v7 setValue:v19 forKey:v13];
        }
      }

      v10 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (id)animationsPathsFromFilterID:(id)a3 andPresetID:(id)a4
{
  v6 = +[MPFilterManager sharedManager];
  v40 = a3;
  v7 = a3;
  v8 = a4;
  v9 = [v6 animationsForFilterID:v7 andPresetID:a4];
  v37 = +[NSMutableDictionary dictionary];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v38 = [v9 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v38)
  {
    v36 = *v48;
    do
    {
      v10 = 0;
      do
      {
        if (*v48 != v36)
        {
          objc_enumerationMutation(v9);
        }

        v11 = *(*(&v47 + 1) + 8 * v10);
        v12 = +[MPAnimationPath animationPath];
        [v37 setObject:v12 forKey:v11];
        v13 = [v9 objectForKey:v11];
        objc_opt_class();
        v39 = v10;
        if (objc_opt_isKindOfClass())
        {
          v13 = [+[MPAnimationManager sharedManager](MPAnimationManager "sharedManager")];
        }

        v14 = [objc_msgSend(v13 objectForKey:{@"values", "count"}];
        [objc_msgSend(v13 objectForKey:{@"keyTimes", "objectAtIndex:", 0}];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ([v13 objectForKey:@"valueType"] && !objc_msgSend(objc_msgSend(v13, "objectForKey:", @"valueType"), "isEqualToString:", @"scalar"))
        {
          if ([objc_msgSend(v13 objectForKey:{@"valueType", "isEqualToString:", @"2DPath"}])
          {
            if (v14 >= 1)
            {
              for (i = 0; i != v14; ++i)
              {
                [objc_msgSend(objc_msgSend(v13 objectForKey:{@"values", "objectAtIndex:", i), "CGPointValue"}];
                [MPUtilities scaledFilterPresetPointValue:v11 withKey:v40 forFilterID:v8 andPresetID:?];
                v26 = v25;
                v28 = v27;
                v29 = [objc_msgSend(v13 objectForKey:{@"keyTimes", "objectAtIndex:", i}];
                if (isKindOfClass)
                {
                  v29 = [v29 objectForKey:@"timeOffset"];
                }

                [v29 doubleValue];
                [v12 createKeyframeWithPoint:+[MPUtilities timeOffSetFromString:](MPUtilities atTime:"timeOffSetFromString:" offsetType:{objc_msgSend(v13, "objectForKey:", @"timeOffsetKind", v26, v28, v30}];
              }
            }
          }

          else if ([objc_msgSend(v13 objectForKey:{@"valueType", "isEqualToString:", @"vector"}] && v14 >= 1)
          {
            for (j = 0; j != v14; ++j)
            {
              v45 = 0uLL;
              v46 = 0;
              MCStringToVector([objc_msgSend(v13 objectForKey:{@"values", "objectAtIndex:", j}], &v45);
              v43 = 0uLL;
              v44 = 0;
              v41 = v45;
              v42 = v46;
              [MPUtilities scaledFilterPresetVectorValue:&v41 withKey:v11 forFilterID:v40 andPresetID:v8];
              v32 = [objc_msgSend(v13 objectForKey:{@"keyTimes", "objectAtIndex:", j}];
              if (isKindOfClass)
              {
                v32 = [v32 objectForKey:@"timeOffset"];
              }

              [v32 doubleValue];
              v41 = v43;
              v42 = v44;
              [v12 createKeyframeWithVector:+[MPVector vectorFromMCVector:](MPVector atTime:"vectorFromMCVector:" offsetType:{&v41), +[MPUtilities timeOffSetFromString:](MPUtilities, "timeOffSetFromString:", objc_msgSend(v13, "objectForKey:", @"timeOffsetKind", v33}];
            }
          }
        }

        else if (v14 >= 1)
        {
          v16 = 0;
          v17 = 0;
          do
          {
            [objc_msgSend(objc_msgSend(v13 objectForKey:{@"values", "objectAtIndex:", v16), "floatValue"}];
            [MPUtilities scaledFilterPresetScalarValue:v11 withKey:v40 forFilterID:v8 andPresetID:v18];
            v20 = v19;
            v21 = [objc_msgSend(v13 objectForKey:{@"keyTimes", "objectAtIndex:", v16}];
            if (isKindOfClass)
            {
              v17 = [v21 objectForKey:@"timeOffsetKind"];
              v21 = [objc_msgSend(objc_msgSend(v13 objectForKey:{@"keyTimes", "objectAtIndex:", v16), "objectForKey:", @"timeOffset"}];
            }

            v22 = v20;
            [v21 doubleValue];
            [v12 createKeyframeWithScalar:+[MPUtilities timeOffSetFromString:](MPUtilities atTime:"timeOffSetFromString:" offsetType:{v17), v22, v23}];
            ++v16;
          }

          while (v14 != v16);
        }

        v10 = v39 + 1;
      }

      while ((v39 + 1) != v38);
      v34 = [v9 countByEnumeratingWithState:&v47 objects:v51 count:16];
      v38 = v34;
    }

    while (v34);
  }

  return v37;
}

+ (void)syncAnimationPaths:(id)a3
{
  v35 = +[NSMutableArray array];
  obj = a3;
  v41 = +[NSMutableSet set];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v34 = [a3 countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v34)
  {
    v33 = *v57;
    do
    {
      v4 = 0;
      do
      {
        if (*v57 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v36 = v4;
        v5 = *(*(&v56 + 1) + 8 * v4);
        v42 = +[NSMutableArray array];
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v6 = v5;
        v38 = [v5 keyframes];
        v7 = [v38 countByEnumeratingWithState:&v52 objects:v62 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v53;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v53 != v9)
              {
                objc_enumerationMutation(v38);
              }

              v11 = *(*(&v52 + 1) + 8 * i);
              [v11 time];
              v12 = [NSNumber numberWithDouble:?];
              [v6 relativeTimeForKeyframe:v11];
              v13 = +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", v12, @"origTime", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:"), @"relTime", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", [v11 offsetType]), @"offsetType", 0);
              [v42 addObject:v13];
              [v41 addObject:v13];
            }

            v8 = [v38 countByEnumeratingWithState:&v52 objects:v62 count:16];
          }

          while (v8);
        }

        [v35 addObject:v42];
        v4 = v36 + 1;
      }

      while ((v36 + 1) != v34);
      v34 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
    }

    while (v34);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v39 = [v35 countByEnumeratingWithState:&v48 objects:v61 count:16];
  if (v39)
  {
    v14 = 0;
    v37 = *v49;
    do
    {
      v15 = 0;
      do
      {
        if (*v49 != v37)
        {
          objc_enumerationMutation(v35);
        }

        v43 = v15;
        v16 = [NSMutableSet setWithArray:*(*(&v48 + 1) + 8 * v15)];
        v17 = [NSMutableSet setWithSet:v41];
        [(NSMutableSet *)v17 minusSet:v16];
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v18 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v44 objects:v60 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v45;
          do
          {
            for (j = 0; j != v19; j = j + 1)
            {
              if (*v45 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v44 + 1) + 8 * j);
              [objc_msgSend(v22 objectForKey:{@"relTime", "doubleValue"}];
              v24 = v23;
              [objc_msgSend(v22 objectForKey:{@"relTime", "doubleValue"}];
              v26 = v25;
              v27 = [objc_msgSend(v22 objectForKey:{@"offsetType", "intValue"}];
              v28 = [obj objectAtIndex:v14];
              v29 = [objc_msgSend(v28 "orderedKeyframes")];
              if ([v29 isMemberOfClass:objc_opt_class()])
              {
                [v29 scalar];
                [MPUtilities computeScalarValueForAnimationPath:v28 atTime:0 defaultsTo:v24 context:v30];
                [v28 createKeyframeWithScalar:v27 atTime:? offsetType:?];
              }

              else if ([v29 isMemberOfClass:objc_opt_class()])
              {
                [v29 point];
                [MPUtilities computePointValueForAnimationPath:v28 atTime:v24 defaultsTo:v31, v32];
                [v28 createKeyframeWithPoint:v27 atTime:? offsetType:?];
              }

              else if ([v29 isMemberOfClass:objc_opt_class()])
              {
                [v28 createKeyframeWithVector:+[MPUtilities computeVectorValueForAnimationPath:atTime:defaultsTo:](MPUtilities atTime:"computeVectorValueForAnimationPath:atTime:defaultsTo:" offsetType:{v28, objc_msgSend(v29, "vector"), v24), v27, v26}];
              }
            }

            v19 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v44 objects:v60 count:16];
          }

          while (v19);
        }

        ++v14;
        v15 = v43 + 1;
      }

      while ((v43 + 1) != v39);
      v39 = [v35 countByEnumeratingWithState:&v48 objects:v61 count:16];
    }

    while (v39);
  }
}

+ (id)effectContainersForTime:(double)a3 inDocument:(id)a4
{
  v6 = +[NSMutableSet set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = [a4 layers];
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        [v12 timeIn];
        v14 = v13;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v15 = [v12 effectContainers];
        v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v27;
          do
          {
            for (j = 0; j != v17; j = j + 1)
            {
              if (*v27 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v26 + 1) + 8 * j);
              if (v14 <= a3)
              {
                [*(*(&v26 + 1) + 8 * j) duration];
                if (v14 + v21 >= a3)
                {
                  [v6 addObject:v20];
                }
              }

              [v20 duration];
              v23 = v22;
              [v20 outroTransitionDuration];
              v14 = v14 + v23 - v24;
            }

            v17 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v17);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v9);
  }

  return v6;
}

+ (id)textForIndex:(int64_t)a3 inMCContainerWithObjectID:(id)a4 inDocument:(id)a5
{
  v7 = [objc_msgSend(a5 "montage")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v8 = [MPUtilities effectForMCContainerEffect:v7 inDocument:a5];
  if ([objc_msgSend(v8 "texts")] <= a3)
  {
    return 0;
  }

  v9 = [v8 texts];

  return [v9 objectAtIndex:a3];
}

+ (id)effectForMCContainerWithObjectID:(id)a3 inDocument:(id)a4
{
  v5 = [objc_msgSend(a4 "montage")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [MPUtilities effectForMCContainerEffect:v5 inDocument:a4];
}

+ (id)effectForMCContainerEffect:(id)a3 inDocument:(id)a4
{
  result = [a1 createPlugPathToContainer:? inDocument:?];
  if (!result)
  {
    return result;
  }

  v7 = result;
  result = [result count];
  if (!result)
  {
    return result;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  result = [v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = *v36;
  v25 = a3;
  v26 = v7;
  while (2)
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v36 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v35 + 1) + 8 * i);
      HasPrefix = NSStringHasPrefix(v11, "SI_");
      if (!HasPrefix && (([a4 conformsToProtocol:&OBJC_PROTOCOL___MPManualLayerSupport] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
      {
        v14 = [a4 layerForKey:{v11, v25}];
        if (!v14)
        {
          if (([a4 conformsToProtocol:&OBJC_PROTOCOL___MPAutomaticLayerSupport] & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v15 = objc_msgSend(a4, "layers"), v31 = 0u, v32 = 0u, v33 = 0u, v34 = 0u, (v16 = objc_msgSend(v15, "countByEnumeratingWithState:objects:count:", &v31, v40, 16)) == 0))
          {
            v14 = 0;
            goto LABEL_44;
          }

          v17 = v16;
          v18 = *v32;
LABEL_19:
          v19 = 0;
          while (1)
          {
            if (*v32 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v14 = *(*(&v31 + 1) + 8 * v19);
            if ([objc_msgSend(objc_msgSend(v14 "plug")])
            {
              break;
            }

            if (v17 == ++v19)
            {
              v17 = [v15 countByEnumeratingWithState:&v31 objects:v40 count:16];
              v14 = 0;
              v7 = v26;
              if (v17)
              {
                goto LABEL_19;
              }

              goto LABEL_44;
            }
          }

LABEL_41:
          v7 = v26;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [a4 layerForKey:v11];
        }

        else
        {
          if (!HasPrefix || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || [a4 countOfEffects] < 2 || (v20 = objc_msgSend(a4, "effects"), v27 = 0u, v28 = 0u, v29 = 0u, v30 = 0u, (v21 = objc_msgSend(v20, "countByEnumeratingWithState:objects:count:", &v27, v39, 16)) == 0))
            {
              v14 = a4;
              goto LABEL_44;
            }

            v22 = v21;
            v23 = *v28;
LABEL_33:
            v24 = 0;
            while (1)
            {
              if (*v28 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v14 = *(*(&v27 + 1) + 8 * v24);
              if ([objc_msgSend(objc_msgSend(v14 plug])
              {
                break;
              }

              if (v22 == ++v24)
              {
                v22 = [v20 countByEnumeratingWithState:&v27 objects:v39 count:16];
                if (v22)
                {
                  goto LABEL_33;
                }

                v14 = a4;
                break;
              }
            }

            a3 = v25;
            goto LABEL_41;
          }

          v13 = [objc_msgSend(a4 "effectContainers")];
        }

        v14 = v13;
      }

LABEL_44:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 countOfEffects] == &dword_0 + 1)
      {
        a4 = [objc_msgSend(v14 "effects")];
      }

      else
      {
        a4 = v14;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          continue;
        }
      }

      if ([a4 container] == a3)
      {
        return a4;
      }
    }

    v8 = [v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
    result = 0;
    if (v8)
    {
      continue;
    }

    return result;
  }
}

+ (id)slideForSlide:(id)a3 inDocument:(id)a4
{
  v5 = +[MPUtilities effectForMCContainerEffect:inDocument:](MPUtilities, "effectForMCContainerEffect:inDocument:", [a3 container], a4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [objc_msgSend(v5 "slides")];
  if (v7 <= [a3 index])
  {
    return 0;
  }

  v8 = [v6 slides];
  v9 = [a3 index];

  return [v8 objectAtIndex:v9];
}

+ (id)slideForPath:(id)a3 inDocument:(id)a4
{
  v5 = [objc_msgSend(a4 "montage")];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [v5 slides];
  if (![v7 count])
  {
    return 0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = *v19;
LABEL_5:
  v11 = 0;
  while (1)
  {
    if (*v19 != v10)
    {
      objc_enumerationMutation(v7);
    }

    v12 = *(*(&v18 + 1) + 8 * v11);
    v13 = +[MPUtilities effectForMCContainerEffect:inDocument:](MPUtilities, "effectForMCContainerEffect:inDocument:", [v12 container], a4);
    if (v13)
    {
      v14 = v13;
      v15 = [v12 index];
      if (v15 < [objc_msgSend(v14 "slides")])
      {
        v16 = [objc_msgSend(v14 "slides")];
        if ([objc_msgSend(v6 "path")])
        {
          return v16;
        }
      }
    }

    if (v9 == ++v11)
    {
      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v16 = 0;
      if (v9)
      {
        goto LABEL_5;
      }

      return v16;
    }
  }
}

+ (id)textsDisplayedAtTime:(double)a3 inDocument:(id)a4
{
  v5 = [MPUtilities effectContainersForTime:a4 inDocument:?];
  v6 = +[NSMutableSet set];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v5;
  v32 = [v5 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v32)
  {
    v31 = *v43;
    do
    {
      v7 = 0;
      do
      {
        if (*v43 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v7;
        v8 = *(*(&v42 + 1) + 8 * v7);
        [v8 startTime];
        v10 = v9;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v11 = [v8 effects];
        v12 = [v11 countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = a3 - v10;
          v15 = *v39;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v39 != v15)
              {
                objc_enumerationMutation(v11);
              }

              v17 = *(*(&v38 + 1) + 8 * i);
              v34 = 0u;
              v35 = 0u;
              v36 = 0u;
              v37 = 0u;
              v18 = [v17 texts];
              v19 = [v18 countByEnumeratingWithState:&v34 objects:v46 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v35;
                do
                {
                  for (j = 0; j != v20; j = j + 1)
                  {
                    if (*v35 != v21)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v23 = *(*(&v34 + 1) + 8 * j);
                    [v23 displayStartTime];
                    v25 = v24;
                    [v23 displayDuration];
                    v27 = v25 + v26;
                    if (v14 >= v25 && v14 <= v27)
                    {
                      [v6 addObject:v23];
                    }
                  }

                  v20 = [v18 countByEnumeratingWithState:&v34 objects:v46 count:16];
                }

                while (v20);
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v38 objects:v47 count:16];
          }

          while (v13);
        }

        v7 = v33 + 1;
      }

      while ((v33 + 1) != v32);
      v32 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v32);
  }

  return v6;
}

+ (id)textForElementID:(id)a3 withMCContainerEffect:(id)a4 inDocument:(id)a5
{
  v6 = [MPUtilities effectForMCContainerEffect:a4 inDocument:a5];
  v7 = [objc_msgSend(a3 stringByTrimmingCharactersInSet:{+[NSCharacterSet letterCharacterSet](NSCharacterSet, "letterCharacterSet")), "integerValue"}];
  if (!v6)
  {
    return 0;
  }

  v8 = v7;
  if (![objc_msgSend(v6 "texts")] || v8 >= objc_msgSend(objc_msgSend(v6, "texts"), "count"))
  {
    return 0;
  }

  v9 = [v6 texts];

  return [v9 objectAtIndex:v8];
}

+ (id)slideForElementID:(id)a3 withMCContainerEffect:(id)a4 inDocument:(id)a5
{
  v6 = [MPUtilities effectForMCContainerEffect:a4 inDocument:a5];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [objc_msgSend(a3 stringByTrimmingCharactersInSet:{+[NSCharacterSet letterCharacterSet](NSCharacterSet, "letterCharacterSet")), "integerValue"}];
  if (![objc_msgSend(v7 "slides")] || v8 >= objc_msgSend(objc_msgSend(v7, "slides"), "count"))
  {
    if ([objc_msgSend(v7 "secondarySlides")])
    {
      v10 = [objc_msgSend(v7 "slides")];
      if ([objc_msgSend(v7 "secondarySlides")])
      {
        v8 -= v10;
        if (v8 < [objc_msgSend(v7 "secondarySlides")])
        {
          v9 = [v7 secondarySlides];
          goto LABEL_9;
        }
      }
    }

    return 0;
  }

  v9 = [v7 slides];
LABEL_9:

  return [v9 objectAtIndex:v8];
}

+ (id)layerForContainer:(id)a3 inDocument:(id)a4
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [objc_msgSend(a4 "documentLayerGroup")];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v13;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v13 != v8)
    {
      objc_enumerationMutation(v5);
    }

    v10 = *(*(&v12 + 1) + 8 * v9);
    if ([objc_msgSend(v10 "plug")] == a3)
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

+ (id)idOfCombinedID:(id)a3
{
  v4 = [a3 componentsSeparatedByString:@"/"];
  if (![v4 count])
  {
    return a3;
  }

  return [v4 objectAtIndex:0];
}

+ (id)presetIDOfCombinedID:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"/"];
  if ([v3 count] < 2)
  {
    return @"Default";
  }

  return [v3 objectAtIndex:1];
}

+ (id)placesPinLabelForSlideAssetPath:(id)a3 inDocument:(id)a4
{
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v5 = [a4 layers];
  result = [v5 countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v53;
    v30 = *v53;
    v31 = v5;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v53 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v52 + 1) + 8 * i);
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v11 = [v10 effectContainers];
        v12 = [v11 countByEnumeratingWithState:&v48 objects:v58 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v49;
          v34 = i;
          v35 = v7;
          v32 = *v49;
          v33 = v11;
          do
          {
            v15 = 0;
            do
            {
              if (*v49 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v37 = v15;
              v16 = *(*(&v48 + 1) + 8 * v15);
              v44 = 0u;
              v45 = 0u;
              v46 = 0u;
              v47 = 0u;
              obj = [v16 effects];
              v17 = [obj countByEnumeratingWithState:&v44 objects:v57 count:16];
              if (v17)
              {
                v18 = v17;
                v39 = *v45;
                v36 = v13;
                do
                {
                  for (j = 0; j != v18; j = j + 1)
                  {
                    if (*v45 != v39)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v20 = *(*(&v44 + 1) + 8 * j);
                    if ([objc_msgSend(v20 "effectID")])
                    {
                      v22 = [objc_msgSend(v20 effectAttributeForKey:{@"pinInformation", "objectsAtIndexes:", +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", NSRangeFromString(objc_msgSend(v20, "effectAttributeForKey:", @"pinRange", v21)}];
                      v40 = 0u;
                      v41 = 0u;
                      v42 = 0u;
                      v43 = 0u;
                      v23 = [v22 countByEnumeratingWithState:&v40 objects:v56 count:16];
                      if (v23)
                      {
                        v24 = v23;
                        v25 = 0;
                        v26 = *v41;
                        while (2)
                        {
                          v27 = 0;
                          v28 = v25 + 1;
                          v25 += v24;
                          do
                          {
                            if (*v41 != v26)
                            {
                              objc_enumerationMutation(v22);
                            }

                            v29 = [objc_msgSend(*(*(&v40 + 1) + 8 * v27) objectForKey:{@"photos", "indexOfObject:", a3}];
                            if (v29 != 0x7FFFFFFFFFFFFFFFLL)
                            {
                              if (v29)
                              {
                                return 0;
                              }

                              else
                              {
                                return [objc_msgSend(v20 "texts")];
                              }
                            }

                            v27 = v27 + 1;
                            ++v28;
                          }

                          while (v24 != v27);
                          v24 = [v22 countByEnumeratingWithState:&v40 objects:v56 count:16];
                          if (v24)
                          {
                            continue;
                          }

                          break;
                        }
                      }
                    }
                  }

                  v18 = [obj countByEnumeratingWithState:&v44 objects:v57 count:16];
                  v8 = v30;
                  v5 = v31;
                  i = v34;
                  v7 = v35;
                  v14 = v32;
                  v11 = v33;
                  v13 = v36;
                }

                while (v18);
              }

              v15 = v37 + 1;
            }

            while ((v37 + 1) != v13);
            v13 = [v11 countByEnumeratingWithState:&v48 objects:v58 count:16];
          }

          while (v13);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v52 objects:v59 count:16];
      result = 0;
    }

    while (v7);
  }

  return result;
}

+ (double)aspectRatioOfLayerable:(id)a3 relativeToAspectRatio:(double)a4
{
  v6 = [+[MPUtilities parentsOfObject:](MPUtilities "parentsOfObject:"reverseObjectEnumerator"")];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v11 parent];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [v11 size];
            a4 = a4 * (v12 / v13);
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  [a3 size];
  return a4 * (v14 / v15);
}

+ (double)displayTimeForText:(id)a3
{
  v4 = [a3 parentEffect];
  if (!v4)
  {
    return 0.0;
  }

  v5 = v4;
  v6 = [v4 parentDocument];
  v7 = [v6 titleEffect];
  if (v5 == v7)
  {
    v11 = v7;
    v12 = [v7 effectID];
    [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
    v9 = v13;
    if (([+[MPEffectManager sharedManager](MPEffectManager "sharedManager")] & 1) == 0)
    {
      v14 = +[MREffectManager sharedManager];
      v15 = [v11 formattedAttributes];
      v16 = [v11 effectID];
      v17 = [v11 slides];
      v18 = [v11 texts];
      [v6 aspectRatio];
      v19 = [v14 customTimingWithEffectID:v16 effectAttributes:v15 slideInformation:v17 textInformation:v18 inAspectRatio:?];
      if (v19)
      {
        v20 = v19;
        [v11 fullDuration];
        v22 = v21;
        [v20 mainDuration];
        v24 = v23;
        [v20 phaseInDuration];
        v26 = v24 + v25;
        [v20 phaseOutDuration];
        v28 = v22 / (v26 + v27);
      }

      else
      {
        [v14 defaultMainDurationForEffectID:v12];
        v59 = v58;
        [v14 defaultPhaseInDurationForEffectID:v12];
        v61 = v60;
        [v14 defaultPhaseOutDurationForEffectID:v12];
        v63 = v62;
        [v11 fullDuration];
        v28 = v64 / (v59 + v61 + v63);
      }

      v9 = v9 * v28;
    }

    goto LABEL_19;
  }

  [a3 displayTime];
  if (v8 != 0.0)
  {
    v9 = v8;
LABEL_19:
    [objc_msgSend(v5 "parentContainer")];
    return v9 + v65;
  }

  v29 = [v5 effectID];
  [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  v31 = v30;
  v32 = +[MREffectManager sharedManager];
  v33 = [v5 formattedAttributes];
  v34 = [v5 effectID];
  v35 = [v5 slides];
  v36 = [v5 texts];
  [v6 aspectRatio];
  v37 = [v32 customTimingWithEffectID:v34 effectAttributes:v33 slideInformation:v35 textInformation:v36 inAspectRatio:?];
  if (v37)
  {
    v38 = v37;
    [v5 fullDuration];
    v40 = v39;
    [v38 mainDuration];
    v42 = v41;
    [v38 phaseInDuration];
    v44 = v42 + v43;
    [v38 phaseOutDuration];
    v46 = v40 / (v44 + v45);
  }

  else
  {
    [v32 defaultMainDurationForEffectID:v29];
    v48 = v47;
    [v32 defaultPhaseInDurationForEffectID:v29];
    v50 = v49;
    [v32 defaultPhaseOutDurationForEffectID:v29];
    v52 = v51;
    [v5 fullDuration];
    v46 = v53 / (v48 + v50 + v52);
  }

  v54 = v31 * v46;
  [objc_msgSend(v5 "parentContainer")];
  if (v54 < v55)
  {
    v54 = v55;
  }

  [objc_msgSend(v5 "parentContainer")];
  v57 = v56 + v54;
  [v6 videoDuration];
  if (v57 < result)
  {
    return v57;
  }

  return result;
}

+ (id)executeScript:(id)a3 withHeader:(id)a4 andAttributes:(id)a5
{
  if (!a3)
  {
    return 0;
  }

  v7 = [a3 componentsSeparatedByString:{@", "}];
  v8 = [objc_msgSend(v7 objectAtIndex:{0), "stringByTrimmingCharactersInSet:", +[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet, "whitespaceAndNewlineCharacterSet")}];
  v9 = [objc_msgSend(v7 objectAtIndex:{1), "stringByTrimmingCharactersInSet:", +[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet, "whitespaceAndNewlineCharacterSet")}];
  v10 = [[MUMathExpressionFloatBased alloc] initWithString:v8 error:0];
  v11 = [[MUMathExpressionFloatBased alloc] initWithString:v9 error:0];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v12 = [a5 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v39;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(a5);
        }

        v16 = *(*(&v38 + 1) + 8 * i);
        v17 = [a5 objectForKey:v16];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v18 = objc_opt_class();
          if (![NSStringFromClass(v18) isEqualToString:@"NSCFBoolean"])
          {
            continue;
          }
        }

        [v17 doubleValue];
        *&v19 = v19;
        [(MUMathExpressionFloatBased *)v10 setValue:v16 forVariable:v19];
        [v17 doubleValue];
        *&v20 = v20;
        [(MUMathExpressionFloatBased *)v11 setValue:v16 forVariable:v20];
      }

      v13 = [a5 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v13);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v21 = [a4 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v35;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(a4);
        }

        v25 = *(*(&v34 + 1) + 8 * j);
        v26 = [a4 objectForKey:v25];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v26 doubleValue];
          *&v27 = v27;
          [(MUMathExpressionFloatBased *)v10 setValue:v25 forVariable:v27];
          [v26 doubleValue];
          *&v28 = v28;
          [(MUMathExpressionFloatBased *)v11 setValue:v25 forVariable:v28];
        }
      }

      v22 = [a4 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v22);
  }

  [(MUMathExpressionFloatBased *)v10 evaluate];
  v30 = v29;
  [(MUMathExpressionFloatBased *)v11 evaluate];
  v32 = v31;

  v44.width = v30;
  v44.height = v32;
  return NSStringFromCGSize(v44);
}

+ (id)stringWithNewUUID
{
  v2 = CFUUIDCreate(0);
  v3 = CFUUIDCreateString(0, v2);
  v4 = [NSString stringWithString:v3];
  CFRelease(v3);
  CFRelease(v2);
  return v4;
}

+ (CGColor)CGColorFromString:(id)a3
{
  components = CGRectFromString(a3);
  v3 = +[MPUtilities newColorSpaceForDevice];
  v4 = CGColorCreate(v3, &components.origin.x);
  CGColorSpaceRelease(v3);
  return v4;
}

+ (id)stringFromCGColor:(CGColor *)a3
{
  if (!a3)
  {
    return 0;
  }

  Components = CGColorGetComponents(a3);
  v4 = *Components;
  v5 = *(Components + 1);
  v6 = *(Components + 2);
  v7 = *(Components + 3);

  return NSStringFromCGRect(*&v4);
}

+ (CGColor)CGColorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  components[0] = a3;
  components[1] = a4;
  components[2] = a5;
  components[3] = a6;
  v6 = +[MPUtilities newColorSpaceForDevice];
  v7 = CGColorCreate(v6, components);
  CGColorSpaceRelease(v6);
  return v7;
}

+ (CGColor)blackCGColor
{
  v2 = [MPUtilities newColorSpaceForDevice:0];
  v3 = CGColorCreate(v2, &v5);
  CGColorSpaceRelease(v2);
  return v3;
}

+ (id)createPlugPathToContainer:(id)a3 inDocument:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v6 = +[NSMutableArray array];
  v7 = [a4 montage];
  v8 = [a3 referencingPlug];
  if (!v8)
  {
    return 0;
  }

  for (i = v8; i != [v7 rootPlug]; i = objc_msgSend(objc_msgSend(i, "supercontainer"), "referencingPlug"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = NSStringWithInteger("SI_", [i index]);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }
      }

      v10 = [i idInSupercontainer];
    }

    [v6 insertObject:v10 atIndex:0];
  }

  return v6;
}

+ (id)createPlugPathToObject:(id)a3 inDocument:(id)a4
{
  v6 = +[NSMutableArray array];
  v7 = [a4 montage];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }

        if (![a3 plug])
        {
          a3 = [a3 parentContainer];
        }
      }
    }
  }

  v8 = [a3 plug];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  while (v9 != [v7 rootPlug])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = NSStringWithInteger("SI_", [v9 index]);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          NSLog(@"Hmmmm what to do? Can't create a plug path.");
          continue;
        }
      }

      v10 = [v9 idInSupercontainer];
    }

    [v6 insertObject:v10 atIndex:0];
    v9 = [objc_msgSend(v9 "supercontainer")];
  }

  return v6;
}

+ (id)createMCAction:(id)a3 forPlug:(id)a4 withKey:(id)a5
{
  v8 = [a3 targetObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = +[MCTransitionTrigger transitionForTargetPlugObjectID:withTransitionID:](MCTransitionTrigger, "transitionForTargetPlugObjectID:withTransitionID:", [v8 objectID], objc_msgSend(a3, "transitionID"));
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = +[MCAnimationTrigger animationTriggerForTargetPlugObjectID:withAnimationKey:](MCAnimationTrigger, "animationTriggerForTargetPlugObjectID:withAnimationKey:", [v8 objectID], objc_msgSend(a3, "animationKey"));
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = +[MCActionTrigger actionTriggerForTargetPlugObjectID:withActionKey:](MCActionTrigger, "actionTriggerForTargetPlugObjectID:withActionKey:", [v8 objectID], objc_msgSend(a3, "actionKey"));
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = +[MCStateOperationExpression stateOperationForTargetPlugObjectID:withStateKey:andExpression:](MCStateOperationExpression, "stateOperationForTargetPlugObjectID:withStateKey:andExpression:", [v8 objectID], objc_msgSend(a3, "stateKey"), objc_msgSend(a3, "operation"));
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [MCConditionalAction conditionalActionWithPredicate:0];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v9 = +[MCActionGroup actionGroup];
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v10 = 0;
                goto LABEL_16;
              }

              v9 = +[MCGenericAction genericActionForTargetPlugObjectID:withAttributes:](MCGenericAction, "genericActionForTargetPlugObjectID:withAttributes:", [v8 objectID], objc_msgSend(a3, "attributes"));
            }
          }
        }
      }
    }
  }

  v10 = v9;
LABEL_16:
  [a4 setAction:v10 forKey:a5];
  return v10;
}

+ (void)collectAllActionableLayers:(id)a3 inDictionary:(id)a4
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [a4 setObject:v10 forKey:{objc_msgSend(v10, "uuid")}];
          v11 = [v10 keyedLayers];
        }

        else
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          [a4 setObject:v10 forKey:{objc_msgSend(v10, "uuid")}];
          if ((isKindOfClass & 1) == 0)
          {
            continue;
          }

          v11 = [v10 layers];
        }

        +[MPUtilities collectAllActionableLayers:inDictionary:](MPUtilities, "collectAllActionableLayers:inDictionary:", [v11 allValues], a4);
      }

      v7 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

+ (id)createPlugInContainer:(id)a3 forLayer:(id)a4 key:(id)a5 inDocument:(id)a6
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [objc_msgSend(a6 "montage")];
    v11 = [a3 setPlugForContainer:v10 forID:a5];
    [a4 setMontage:{objc_msgSend(a6, "montage")}];
    [a4 setPlug:v11];
    [a4 setLayerSerializer:v10];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [objc_msgSend(a6 "montage")];
      v11 = [a3 setPlugForContainer:v12 forID:a5];
      [a4 setMontage:{objc_msgSend(a6, "montage")}];
      [a4 setPlug:v11];
      [a4 setLayerEffect:v12];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [objc_msgSend(a6 "montage")];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }

        v13 = [objc_msgSend(a6 "montage")];
      }

      v14 = v13;
      v11 = [a3 setPlugForContainer:v13 forID:a5];
      [a4 setContainer:v14];
      [a4 setPlug:v11];
    }
  }

  return v11;
}

+ (id)createPlugInSlide:(id)a3 forLayer:(id)a4 inDocument:(id)a5
{
  v7 = [objc_msgSend(a5 montage];
  v8 = -[MCObject initFromScratchWithMontage:]([MCPlugSlide alloc], "initFromScratchWithMontage:", [a5 montage]);
  [v8 setContainer:v7];
  [a4 setContainer:v7];
  [a4 setPlug:v8];

  return v8;
}

+ (id)parentsOfObject:(id)a3
{
  v4 = +[NSMutableArray array];
  while (a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return v4;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a3 = [a3 parentContainer];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [a3 parentLayer];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_12;
          }
        }
      }

      v5 = [a3 parent];
    }

    a3 = v5;
LABEL_12:
    [v4 addObject:a3];
  }

  return v4;
}

@end