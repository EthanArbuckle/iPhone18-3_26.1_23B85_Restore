@interface MPUtilities
+ ($421962E1114BB55FD51FACB03C2AC210)scaledFilterPresetVectorValue:(SEL)value withKey:(id *)key forFilterID:(id)d andPresetID:(id)iD;
+ (CGColor)CGColorFromString:(id)string;
+ (CGColor)CGColorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
+ (CGColor)blackCGColor;
+ (CGPoint)computePointValueForAnimationPath:(id)path atTime:(double)time defaultsTo:(CGPoint)to;
+ (CGPoint)scaledFilterPresetPointValue:(CGPoint)value withKey:(id)key forFilterID:(id)d andPresetID:(id)iD;
+ (double)aspectRatioOfLayerable:(id)layerable relativeToAspectRatio:(double)ratio;
+ (double)computeScalarValueForAnimationPath:(id)path atTime:(double)time defaultsTo:(double)to context:(id)context;
+ (double)displayTimeForText:(id)text;
+ (double)scaledFilterPresetScalarValue:(double)value withKey:(id)key forFilterID:(id)d andPresetID:(id)iD;
+ (double)transformTime:(double)time forAnimationPath:(id)path;
+ (id)animationsPathsFromFilterID:(id)d andPresetID:(id)iD;
+ (id)attributesFormMPFilter:(id)filter atTime:(double)time;
+ (id)attributesFromAnimationPathsInFilter:(id)filter atTime:(double)time;
+ (id)computeVectorValueForAnimationPath:(id)path atTime:(double)time defaultsTo:(id)to;
+ (id)createMCAction:(id)action forPlug:(id)plug withKey:(id)key;
+ (id)createPlugInContainer:(id)container forLayer:(id)layer key:(id)key inDocument:(id)document;
+ (id)createPlugInSlide:(id)slide forLayer:(id)layer inDocument:(id)document;
+ (id)createPlugPathToContainer:(id)container inDocument:(id)document;
+ (id)createPlugPathToObject:(id)object inDocument:(id)document;
+ (id)effectContainersForTime:(double)time inDocument:(id)document;
+ (id)effectForMCContainerEffect:(id)effect inDocument:(id)document;
+ (id)effectForMCContainerWithObjectID:(id)d inDocument:(id)document;
+ (id)executeScript:(id)script withHeader:(id)header andAttributes:(id)attributes;
+ (id)idOfCombinedID:(id)d;
+ (id)layerForContainer:(id)container inDocument:(id)document;
+ (id)parentsOfObject:(id)object;
+ (id)placesPinLabelForSlideAssetPath:(id)path inDocument:(id)document;
+ (id)presetIDOfCombinedID:(id)d;
+ (id)slideForElementID:(id)d withMCContainerEffect:(id)effect inDocument:(id)document;
+ (id)slideForPath:(id)path inDocument:(id)document;
+ (id)slideForSlide:(id)slide inDocument:(id)document;
+ (id)stringFromCGColor:(CGColor *)color;
+ (id)stringWithNewUUID;
+ (id)textForElementID:(id)d withMCContainerEffect:(id)effect inDocument:(id)document;
+ (id)textForIndex:(int64_t)index inMCContainerWithObjectID:(id)d inDocument:(id)document;
+ (id)textsDisplayedAtTime:(double)time inDocument:(id)document;
+ (unint64_t)timeOffSetFromString:(id)string;
+ (void)collectAllActionableLayers:(id)layers inDictionary:(id)dictionary;
+ (void)syncAnimationPaths:(id)paths;
@end

@implementation MPUtilities

+ (unint64_t)timeOffSetFromString:(id)string
{
  if ([string isEqualToString:@"relativeFromTimeInForFullDuration"])
  {
    return 0;
  }

  if ([string isEqualToString:@"relativeFromTimeInForPhaseInDuration"])
  {
    return 1;
  }

  if ([string isEqualToString:@"relativeFromMainStartForPhaseInDuration"])
  {
    return 2;
  }

  if ([string isEqualToString:@"relativeFromMainStartForMainDuration"])
  {
    return 3;
  }

  if ([string isEqualToString:@"relativeFromMainEndForMainDuration"])
  {
    return 4;
  }

  if ([string isEqualToString:@"relativeFromMainEndForPhaseOutDuration"])
  {
    return 5;
  }

  if ([string isEqualToString:@"relativeFromTimeOutForPhaseOutDuration"])
  {
    return 6;
  }

  if ([string isEqualToString:@"relativeFromTimeOutForFullDuration"])
  {
    return 7;
  }

  return 0;
}

+ (double)transformTime:(double)time forAnimationPath:(id)path
{
  orderedKeyframes = [path orderedKeyframes];
  v7 = [orderedKeyframes count];
  v8 = 0.0;
  if (time <= 0.0 || v7 < 2)
  {
    return v8;
  }

  v8 = 1.0;
  if (time >= 1.0)
  {
    return v8;
  }

  v10 = v7;
  v11 = 0;
  v12 = 1;
  while (1)
  {
    [path relativeTimeForKeyframe:{objc_msgSend(orderedKeyframes, "objectAtIndex:", v12)}];
    if (v13 >= time)
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

  v15 = [orderedKeyframes objectAtIndex:v11];
  v16 = [orderedKeyframes objectAtIndex:v12];
  [path relativeTimeForKeyframe:v15];
  v18 = v17;
  [path relativeTimeForKeyframe:v16];
  v20 = v19 - v18;
  v21 = (time - v18) / (v19 - v18);
  [v15 postControl];
  v23 = v22;
  [v16 preControl];
  return v18 + Spline1(v21, 0.0, v23, v24 + 1.0, 1.0, 0.0, 0.0, 1.0, 1.0) * v20;
}

+ (double)computeScalarValueForAnimationPath:(id)path atTime:(double)time defaultsTo:(double)to context:(id)context
{
  animationPath = [path animationPath];
  v11 = [objc_msgSend(path "parent")];
  v12 = [animationPath orderedKeyframesWithPlugTiming:v11];
  v13 = [v12 count];
  isTriggered = [animationPath isTriggered];
  if (v13)
  {
    v15 = isTriggered;
    if (((time <= 0.0) & isTriggered) == 0)
    {
      if (time > 0.0 && (v13 != &dword_0 + 1) | isTriggered & 1)
      {
        if (time < 1.0)
        {
          v16 = isTriggered ^ 1;
          if (v13 > v16)
          {
            v17 = v16 + 1;
            while (1)
            {
              +[MCAnimationPathKeyframed timeForKeyframe:withPlugTiming:](MCAnimationPathKeyframed, "timeForKeyframe:withPlugTiming:", [v12 objectAtIndex:v16], v11);
              v19 = v18;
              [v11 fullDuration];
              if (v19 / v20 >= time)
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
                v33 = v30 / v31 <= time || v28 > time;
                toCopy2 = to;
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

                  functionParameters = [v23 functionParameters];
                  if (functionParameters)
                  {
                    [(MUMathExpressionFloatBased *)v37 setVariableValues:functionParameters];
                  }

                  if (context)
                  {
                    [(MUMathExpressionFloatBased *)v37 setVariableValues:context];
                  }

                  v41 = 0.0;
                  if (v28 < time)
                  {
                    v41 = 1.0;
                    if (v32 > time)
                    {
                      v41 = (time - v28) / (v32 - v28);
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
                    *&v46 = to;
                    [(MUMathExpressionFloatBased *)v37 setValue:@"startValue" forVariable:v46];
                  }

                  [(MUMathExpressionFloatBased *)v37 evaluate];
                  toCopy2 = v47;
                }
              }

              else
              {
                [v23 value];
                toCopy2 = v38;
                v33 = 1;
              }
            }

            else
            {
              toCopy2 = to;
              v33 = 1;
              v28 = 0.0;
            }

LABEL_37:
            if (!v33 || !v24)
            {
              return toCopy2;
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
              toCopy3 = v56;
              goto LABEL_58;
            }

            toCopy3 = to;
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
                functionParameters2 = [v24 functionParameters];
                if (functionParameters2)
                {
                  [(MUMathExpressionFloatBased *)v55 setVariableValues:functionParameters2];
                }

                if (context)
                {
                  [(MUMathExpressionFloatBased *)v55 setVariableValues:context];
                }

                [v24 functionTimeOffset];
                *&v59 = v59;
                [(MUMathExpressionFloatBased *)v55 setValue:@"time" forVariable:v59];
                if (v15)
                {
                  *&v60 = toCopy3;
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
            v62 = (time - v28) / (v51 - v28);
            [v23 postControl];
            v64 = v63;
            [v24 preControl];
            v66 = v28 + Spline1(v62, 0.0, v64, v65 + 1.0, 1.0, 0.0, 0.0, 1.0, 1.0) * v61 - v28;
            v67 = 0.0;
            if (v66 > 0.0)
            {
              v67 = v66 / v61;
            }

            return (toCopy2 + ((toCopy3 - toCopy2) * v67));
          }
        }

LABEL_10:
        lastObject = [v12 lastObject];
      }

      else
      {
        lastObject = [v12 objectAtIndex:0];
      }

      v23 = lastObject;
      v24 = 0;
      goto LABEL_13;
    }
  }

  return to;
}

+ (CGPoint)computePointValueForAnimationPath:(id)path atTime:(double)time defaultsTo:(CGPoint)to
{
  y = to.y;
  x = to.x;
  [self transformTime:time forAnimationPath:?];
  v9 = v8;
  orderedKeyframes = [path orderedKeyframes];
  v11 = [orderedKeyframes count];
  if (!v11)
  {
    goto LABEL_17;
  }

  if (v11 == &dword_0 + 1 || v9 <= 0.0)
  {
    lastObject = [orderedKeyframes objectAtIndex:0];
LABEL_16:
    [lastObject point];
    x = v21;
    y = v22;
    goto LABEL_17;
  }

  if (v9 >= 1.0)
  {
    lastObject = [orderedKeyframes lastObject];
    goto LABEL_16;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v12 = [orderedKeyframes countByEnumeratingWithState:&v45 objects:v49 count:16];
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
          objc_enumerationMutation(orderedKeyframes);
        }

        v14 = *(*(&v45 + 1) + 8 * v16);
        [path relativeTimeForKeyframe:v14];
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
      v13 = [orderedKeyframes countByEnumeratingWithState:&v45 objects:v49 count:16];
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
      [path relativeTimeForKeyframe:v14];
      v26 = v25;
      [path relativeTimeForKeyframe:v19];
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

+ (id)computeVectorValueForAnimationPath:(id)path atTime:(double)time defaultsTo:(id)to
{
  [self transformTime:time forAnimationPath:?];
  v8 = v7;
  orderedKeyframes = [path orderedKeyframes];
  v10 = [orderedKeyframes count];
  if (!v10)
  {
    return to;
  }

  if (v10 == &dword_0 + 1 || v8 <= 0.0)
  {
    lastObject = [orderedKeyframes objectAtIndex:0];
  }

  else
  {
    if (v8 < 1.0)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v11 = [orderedKeyframes countByEnumeratingWithState:&v38 objects:v42 count:16];
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
            objc_enumerationMutation(orderedKeyframes);
          }

          v13 = *(*(&v38 + 1) + 8 * v15);
          [path relativeTimeForKeyframe:v13];
          if (v17 > v8)
          {
            break;
          }

          v15 = v15 + 1;
          v16 = v13;
          if (v12 == v15)
          {
            v12 = [orderedKeyframes countByEnumeratingWithState:&v38 objects:v42 count:16];
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
          v18 = [to count];
          LOBYTE(v36) = [to count];
          [path relativeTimeForKeyframe:v16];
          v20 = v19;
          [path relativeTimeForKeyframe:v13];
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

      return to;
    }

    lastObject = [orderedKeyframes lastObject];
  }

  return [lastObject vector];
}

+ (double)scaledFilterPresetScalarValue:(double)value withKey:(id)key forFilterID:(id)d andPresetID:(id)iD
{
  if (!iD)
  {
    return value;
  }

  sharedManager = [+[MPFilterManager sharedManager](MPFilterManager sharedManager];
  v8 = [sharedManager objectForKey:@"boxMin"];
  v9 = [sharedManager objectForKey:@"boxMax"];
  if (!(v8 | v9))
  {
    return value;
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
    return v12 + (v14 - v12) * value;
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
  return v12 + (v14 - v12) * value;
}

+ (CGPoint)scaledFilterPresetPointValue:(CGPoint)value withKey:(id)key forFilterID:(id)d andPresetID:(id)iD
{
  y = value.y;
  x = value.x;
  if (iD)
  {
    v9 = [+[MPFilterManager sharedManager](MPFilterManager "sharedManager")];
    v10 = [v9 objectForKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"boxMin %@", key)}];
    v11 = [v9 objectForKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"boxMax %@", key)}];
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

+ ($421962E1114BB55FD51FACB03C2AC210)scaledFilterPresetVectorValue:(SEL)value withKey:(id *)key forFilterID:(id)d andPresetID:(id)iD
{
  if (a7)
  {
    v10 = [+[MPFilterManager sharedManager](MPFilterManager "sharedManager")];
    v11 = [v10 objectForKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"boxMin %@", d)}];
    result = [v10 objectForKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"boxMax %@", d)}];
    if (v11 | result)
    {
      v12 = result;
      var0 = key->var0;
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
        var1 = key->var1;
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

  *&retstr->var0 = *&key->var0;
  retstr->var1[3] = key->var1[3];
  return result;
}

+ (id)attributesFormMPFilter:(id)filter atTime:(double)time
{
  v6 = +[NSMutableDictionary dictionary];
  [v6 addEntriesFromDictionary:{objc_msgSend(+[MPFilterManager sharedManager](MPFilterManager, "sharedManager"), "attributesForFilterID:andPresetID:", objc_msgSend(filter, "filterID"), objc_msgSend(filter, "presetID"))}];
  [v6 addEntriesFromDictionary:{+[MPUtilities attributesFromAnimationPathsInFilter:atTime:](MPUtilities, "attributesFromAnimationPathsInFilter:atTime:", filter, time)}];
  return v6;
}

+ (id)attributesFromAnimationPathsInFilter:(id)filter atTime:(double)time
{
  v6 = [MPUtilities defaultAttributesForMPFilter:?];
  v7 = +[NSMutableDictionary dictionary];
  v8 = +[NSMutableDictionary dictionaryWithDictionary:](NSMutableDictionary, "dictionaryWithDictionary:", +[MPUtilities animationsPathsFromFilterID:andPresetID:](MPUtilities, "animationsPathsFromFilterID:andPresetID:", [filter filterID], objc_msgSend(filter, "presetID")));
  -[NSMutableDictionary addEntriesFromDictionary:](v8, "addEntriesFromDictionary:", [filter animationPaths]);
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
          orderedKeyframes = [v14 orderedKeyframes];
          if ([objc_msgSend(orderedKeyframes "lastObject")])
          {
            [objc_msgSend(v6 objectForKey:{v13), "floatValue"}];
            [MPUtilities computeScalarValueForAnimationPath:v15 atTime:0 defaultsTo:time context:v17];
            *&v18 = v18;
            v19 = [NSNumber numberWithFloat:v18];
          }

          else if ([objc_msgSend(orderedKeyframes "lastObject")])
          {
            v20 = CGPointFromString([v6 objectForKey:v13]);
            [MPUtilities computePointValueForAnimationPath:v15 atTime:time defaultsTo:v20.x, v20.y];
            v19 = NSStringFromCGPoint(v27);
          }

          else
          {
            if (![objc_msgSend(orderedKeyframes "lastObject")])
            {
              continue;
            }

            v19 = [+[MPUtilities computeVectorValueForAnimationPath:atTime:defaultsTo:](MPUtilities computeVectorValueForAnimationPath:v15 atTime:+[MPVector vectorFromString:](MPVector defaultsTo:{"vectorFromString:", objc_msgSend(v6, "objectForKey:", v13)), time), "CIColorString"}];
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

+ (id)animationsPathsFromFilterID:(id)d andPresetID:(id)iD
{
  v6 = +[MPFilterManager sharedManager];
  dCopy = d;
  dCopy2 = d;
  iDCopy = iD;
  v9 = [v6 animationsForFilterID:dCopy2 andPresetID:iD];
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
                [MPUtilities scaledFilterPresetPointValue:v11 withKey:dCopy forFilterID:iDCopy andPresetID:?];
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
              [MPUtilities scaledFilterPresetVectorValue:&v41 withKey:v11 forFilterID:dCopy andPresetID:iDCopy];
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
            [MPUtilities scaledFilterPresetScalarValue:v11 withKey:dCopy forFilterID:iDCopy andPresetID:v18];
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

+ (void)syncAnimationPaths:(id)paths
{
  v35 = +[NSMutableArray array];
  obj = paths;
  v41 = +[NSMutableSet set];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v34 = [paths countByEnumeratingWithState:&v56 objects:v63 count:16];
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
        keyframes = [v5 keyframes];
        v7 = [keyframes countByEnumeratingWithState:&v52 objects:v62 count:16];
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
                objc_enumerationMutation(keyframes);
              }

              v11 = *(*(&v52 + 1) + 8 * i);
              [v11 time];
              v12 = [NSNumber numberWithDouble:?];
              [v6 relativeTimeForKeyframe:v11];
              v13 = +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", v12, @"origTime", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:"), @"relTime", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", [v11 offsetType]), @"offsetType", 0);
              [v42 addObject:v13];
              [v41 addObject:v13];
            }

            v8 = [keyframes countByEnumeratingWithState:&v52 objects:v62 count:16];
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

+ (id)effectContainersForTime:(double)time inDocument:(id)document
{
  v6 = +[NSMutableSet set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  layers = [document layers];
  v8 = [layers countByEnumeratingWithState:&v30 objects:v35 count:16];
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
          objc_enumerationMutation(layers);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        [v12 timeIn];
        v14 = v13;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        effectContainers = [v12 effectContainers];
        v16 = [effectContainers countByEnumeratingWithState:&v26 objects:v34 count:16];
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
                objc_enumerationMutation(effectContainers);
              }

              v20 = *(*(&v26 + 1) + 8 * j);
              if (v14 <= time)
              {
                [*(*(&v26 + 1) + 8 * j) duration];
                if (v14 + v21 >= time)
                {
                  [v6 addObject:v20];
                }
              }

              [v20 duration];
              v23 = v22;
              [v20 outroTransitionDuration];
              v14 = v14 + v23 - v24;
            }

            v17 = [effectContainers countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v17);
        }
      }

      v9 = [layers countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v9);
  }

  return v6;
}

+ (id)textForIndex:(int64_t)index inMCContainerWithObjectID:(id)d inDocument:(id)document
{
  v7 = [objc_msgSend(document "montage")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v8 = [MPUtilities effectForMCContainerEffect:v7 inDocument:document];
  if ([objc_msgSend(v8 "texts")] <= index)
  {
    return 0;
  }

  texts = [v8 texts];

  return [texts objectAtIndex:index];
}

+ (id)effectForMCContainerWithObjectID:(id)d inDocument:(id)document
{
  v5 = [objc_msgSend(document "montage")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [MPUtilities effectForMCContainerEffect:v5 inDocument:document];
}

+ (id)effectForMCContainerEffect:(id)effect inDocument:(id)document
{
  result = [self createPlugPathToContainer:? inDocument:?];
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
  effectCopy = effect;
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
      if (!HasPrefix && (([document conformsToProtocol:&OBJC_PROTOCOL___MPManualLayerSupport] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
      {
        documentCopy2 = [document layerForKey:{v11, effectCopy}];
        if (!documentCopy2)
        {
          if (([document conformsToProtocol:&OBJC_PROTOCOL___MPAutomaticLayerSupport] & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v15 = objc_msgSend(document, "layers"), v31 = 0u, v32 = 0u, v33 = 0u, v34 = 0u, (v16 = objc_msgSend(v15, "countByEnumeratingWithState:objects:count:", &v31, v40, 16)) == 0))
          {
            documentCopy2 = 0;
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

            documentCopy2 = *(*(&v31 + 1) + 8 * v19);
            if ([objc_msgSend(objc_msgSend(documentCopy2 "plug")])
            {
              break;
            }

            if (v17 == ++v19)
            {
              v17 = [v15 countByEnumeratingWithState:&v31 objects:v40 count:16];
              documentCopy2 = 0;
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
          v13 = [document layerForKey:v11];
        }

        else
        {
          if (!HasPrefix || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || [document countOfEffects] < 2 || (v20 = objc_msgSend(document, "effects"), v27 = 0u, v28 = 0u, v29 = 0u, v30 = 0u, (v21 = objc_msgSend(v20, "countByEnumeratingWithState:objects:count:", &v27, v39, 16)) == 0))
            {
              documentCopy2 = document;
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

              documentCopy2 = *(*(&v27 + 1) + 8 * v24);
              if ([objc_msgSend(objc_msgSend(documentCopy2 plug])
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

                documentCopy2 = document;
                break;
              }
            }

            effect = effectCopy;
            goto LABEL_41;
          }

          v13 = [objc_msgSend(document "effectContainers")];
        }

        documentCopy2 = v13;
      }

LABEL_44:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [documentCopy2 countOfEffects] == &dword_0 + 1)
      {
        document = [objc_msgSend(documentCopy2 "effects")];
      }

      else
      {
        document = documentCopy2;
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

      if ([document container] == effect)
      {
        return document;
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

+ (id)slideForSlide:(id)slide inDocument:(id)document
{
  v5 = +[MPUtilities effectForMCContainerEffect:inDocument:](MPUtilities, "effectForMCContainerEffect:inDocument:", [slide container], document);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [objc_msgSend(v5 "slides")];
  if (v7 <= [slide index])
  {
    return 0;
  }

  slides = [v6 slides];
  index = [slide index];

  return [slides objectAtIndex:index];
}

+ (id)slideForPath:(id)path inDocument:(id)document
{
  v5 = [objc_msgSend(document "montage")];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  slides = [v5 slides];
  if (![slides count])
  {
    return 0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [slides countByEnumeratingWithState:&v18 objects:v22 count:16];
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
      objc_enumerationMutation(slides);
    }

    v12 = *(*(&v18 + 1) + 8 * v11);
    v13 = +[MPUtilities effectForMCContainerEffect:inDocument:](MPUtilities, "effectForMCContainerEffect:inDocument:", [v12 container], document);
    if (v13)
    {
      v14 = v13;
      index = [v12 index];
      if (index < [objc_msgSend(v14 "slides")])
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
      v9 = [slides countByEnumeratingWithState:&v18 objects:v22 count:16];
      v16 = 0;
      if (v9)
      {
        goto LABEL_5;
      }

      return v16;
    }
  }
}

+ (id)textsDisplayedAtTime:(double)time inDocument:(id)document
{
  v5 = [MPUtilities effectContainersForTime:document inDocument:?];
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
        effects = [v8 effects];
        v12 = [effects countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = time - v10;
          v15 = *v39;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v39 != v15)
              {
                objc_enumerationMutation(effects);
              }

              v17 = *(*(&v38 + 1) + 8 * i);
              v34 = 0u;
              v35 = 0u;
              v36 = 0u;
              v37 = 0u;
              texts = [v17 texts];
              v19 = [texts countByEnumeratingWithState:&v34 objects:v46 count:16];
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
                      objc_enumerationMutation(texts);
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

                  v20 = [texts countByEnumeratingWithState:&v34 objects:v46 count:16];
                }

                while (v20);
              }
            }

            v13 = [effects countByEnumeratingWithState:&v38 objects:v47 count:16];
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

+ (id)textForElementID:(id)d withMCContainerEffect:(id)effect inDocument:(id)document
{
  v6 = [MPUtilities effectForMCContainerEffect:effect inDocument:document];
  v7 = [objc_msgSend(d stringByTrimmingCharactersInSet:{+[NSCharacterSet letterCharacterSet](NSCharacterSet, "letterCharacterSet")), "integerValue"}];
  if (!v6)
  {
    return 0;
  }

  v8 = v7;
  if (![objc_msgSend(v6 "texts")] || v8 >= objc_msgSend(objc_msgSend(v6, "texts"), "count"))
  {
    return 0;
  }

  texts = [v6 texts];

  return [texts objectAtIndex:v8];
}

+ (id)slideForElementID:(id)d withMCContainerEffect:(id)effect inDocument:(id)document
{
  v6 = [MPUtilities effectForMCContainerEffect:effect inDocument:document];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [objc_msgSend(d stringByTrimmingCharactersInSet:{+[NSCharacterSet letterCharacterSet](NSCharacterSet, "letterCharacterSet")), "integerValue"}];
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
          secondarySlides = [v7 secondarySlides];
          goto LABEL_9;
        }
      }
    }

    return 0;
  }

  secondarySlides = [v7 slides];
LABEL_9:

  return [secondarySlides objectAtIndex:v8];
}

+ (id)layerForContainer:(id)container inDocument:(id)document
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [objc_msgSend(document "documentLayerGroup")];
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
    if ([objc_msgSend(v10 "plug")] == container)
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

+ (id)idOfCombinedID:(id)d
{
  v4 = [d componentsSeparatedByString:@"/"];
  if (![v4 count])
  {
    return d;
  }

  return [v4 objectAtIndex:0];
}

+ (id)presetIDOfCombinedID:(id)d
{
  v3 = [d componentsSeparatedByString:@"/"];
  if ([v3 count] < 2)
  {
    return @"Default";
  }

  return [v3 objectAtIndex:1];
}

+ (id)placesPinLabelForSlideAssetPath:(id)path inDocument:(id)document
{
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  layers = [document layers];
  result = [layers countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v53;
    v30 = *v53;
    v31 = layers;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v53 != v8)
        {
          objc_enumerationMutation(layers);
        }

        v10 = *(*(&v52 + 1) + 8 * i);
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        effectContainers = [v10 effectContainers];
        v12 = [effectContainers countByEnumeratingWithState:&v48 objects:v58 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v49;
          v34 = i;
          v35 = v7;
          v32 = *v49;
          v33 = effectContainers;
          do
          {
            v15 = 0;
            do
            {
              if (*v49 != v14)
              {
                objc_enumerationMutation(effectContainers);
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

                            v29 = [objc_msgSend(*(*(&v40 + 1) + 8 * v27) objectForKey:{@"photos", "indexOfObject:", path}];
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
                  layers = v31;
                  i = v34;
                  v7 = v35;
                  v14 = v32;
                  effectContainers = v33;
                  v13 = v36;
                }

                while (v18);
              }

              v15 = v37 + 1;
            }

            while ((v37 + 1) != v13);
            v13 = [effectContainers countByEnumeratingWithState:&v48 objects:v58 count:16];
          }

          while (v13);
        }
      }

      v7 = [layers countByEnumeratingWithState:&v52 objects:v59 count:16];
      result = 0;
    }

    while (v7);
  }

  return result;
}

+ (double)aspectRatioOfLayerable:(id)layerable relativeToAspectRatio:(double)ratio
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
            ratio = ratio * (v12 / v13);
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  [layerable size];
  return ratio * (v14 / v15);
}

+ (double)displayTimeForText:(id)text
{
  parentEffect = [text parentEffect];
  if (!parentEffect)
  {
    return 0.0;
  }

  v5 = parentEffect;
  parentDocument = [parentEffect parentDocument];
  titleEffect = [parentDocument titleEffect];
  if (v5 == titleEffect)
  {
    v11 = titleEffect;
    effectID = [titleEffect effectID];
    [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
    v9 = v13;
    if (([+[MPEffectManager sharedManager](MPEffectManager "sharedManager")] & 1) == 0)
    {
      v14 = +[MREffectManager sharedManager];
      formattedAttributes = [v11 formattedAttributes];
      effectID2 = [v11 effectID];
      slides = [v11 slides];
      texts = [v11 texts];
      [parentDocument aspectRatio];
      v19 = [v14 customTimingWithEffectID:effectID2 effectAttributes:formattedAttributes slideInformation:slides textInformation:texts inAspectRatio:?];
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
        [v14 defaultMainDurationForEffectID:effectID];
        v59 = v58;
        [v14 defaultPhaseInDurationForEffectID:effectID];
        v61 = v60;
        [v14 defaultPhaseOutDurationForEffectID:effectID];
        v63 = v62;
        [v11 fullDuration];
        v28 = v64 / (v59 + v61 + v63);
      }

      v9 = v9 * v28;
    }

    goto LABEL_19;
  }

  [text displayTime];
  if (v8 != 0.0)
  {
    v9 = v8;
LABEL_19:
    [objc_msgSend(v5 "parentContainer")];
    return v9 + v65;
  }

  effectID3 = [v5 effectID];
  [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
  v31 = v30;
  v32 = +[MREffectManager sharedManager];
  formattedAttributes2 = [v5 formattedAttributes];
  effectID4 = [v5 effectID];
  slides2 = [v5 slides];
  texts2 = [v5 texts];
  [parentDocument aspectRatio];
  v37 = [v32 customTimingWithEffectID:effectID4 effectAttributes:formattedAttributes2 slideInformation:slides2 textInformation:texts2 inAspectRatio:?];
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
    [v32 defaultMainDurationForEffectID:effectID3];
    v48 = v47;
    [v32 defaultPhaseInDurationForEffectID:effectID3];
    v50 = v49;
    [v32 defaultPhaseOutDurationForEffectID:effectID3];
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
  [parentDocument videoDuration];
  if (v57 < result)
  {
    return v57;
  }

  return result;
}

+ (id)executeScript:(id)script withHeader:(id)header andAttributes:(id)attributes
{
  if (!script)
  {
    return 0;
  }

  v7 = [script componentsSeparatedByString:{@", "}];
  v8 = [objc_msgSend(v7 objectAtIndex:{0), "stringByTrimmingCharactersInSet:", +[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet, "whitespaceAndNewlineCharacterSet")}];
  v9 = [objc_msgSend(v7 objectAtIndex:{1), "stringByTrimmingCharactersInSet:", +[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet, "whitespaceAndNewlineCharacterSet")}];
  v10 = [[MUMathExpressionFloatBased alloc] initWithString:v8 error:0];
  v11 = [[MUMathExpressionFloatBased alloc] initWithString:v9 error:0];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v12 = [attributes countByEnumeratingWithState:&v38 objects:v43 count:16];
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
          objc_enumerationMutation(attributes);
        }

        v16 = *(*(&v38 + 1) + 8 * i);
        v17 = [attributes objectForKey:v16];
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

      v13 = [attributes countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v13);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v21 = [header countByEnumeratingWithState:&v34 objects:v42 count:16];
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
          objc_enumerationMutation(header);
        }

        v25 = *(*(&v34 + 1) + 8 * j);
        v26 = [header objectForKey:v25];
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

      v22 = [header countByEnumeratingWithState:&v34 objects:v42 count:16];
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

+ (CGColor)CGColorFromString:(id)string
{
  components = CGRectFromString(string);
  v3 = +[MPUtilities newColorSpaceForDevice];
  v4 = CGColorCreate(v3, &components.origin.x);
  CGColorSpaceRelease(v3);
  return v4;
}

+ (id)stringFromCGColor:(CGColor *)color
{
  if (!color)
  {
    return 0;
  }

  Components = CGColorGetComponents(color);
  v4 = *Components;
  v5 = *(Components + 1);
  v6 = *(Components + 2);
  v7 = *(Components + 3);

  return NSStringFromCGRect(*&v4);
}

+ (CGColor)CGColorWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  components[0] = red;
  components[1] = green;
  components[2] = blue;
  components[3] = alpha;
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

+ (id)createPlugPathToContainer:(id)container inDocument:(id)document
{
  if (!container)
  {
    return 0;
  }

  v6 = +[NSMutableArray array];
  montage = [document montage];
  referencingPlug = [container referencingPlug];
  if (!referencingPlug)
  {
    return 0;
  }

  for (i = referencingPlug; i != [montage rootPlug]; i = objc_msgSend(objc_msgSend(i, "supercontainer"), "referencingPlug"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      idInSupercontainer = NSStringWithInteger("SI_", [i index]);
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

      idInSupercontainer = [i idInSupercontainer];
    }

    [v6 insertObject:idInSupercontainer atIndex:0];
  }

  return v6;
}

+ (id)createPlugPathToObject:(id)object inDocument:(id)document
{
  v6 = +[NSMutableArray array];
  montage = [document montage];
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

        if (![object plug])
        {
          object = [object parentContainer];
        }
      }
    }
  }

  plug = [object plug];
  if (!plug)
  {
    return 0;
  }

  v9 = plug;
  while (v9 != [montage rootPlug])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      idInSupercontainer = NSStringWithInteger("SI_", [v9 index]);
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

      idInSupercontainer = [v9 idInSupercontainer];
    }

    [v6 insertObject:idInSupercontainer atIndex:0];
    v9 = [objc_msgSend(v9 "supercontainer")];
  }

  return v6;
}

+ (id)createMCAction:(id)action forPlug:(id)plug withKey:(id)key
{
  targetObject = [action targetObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = +[MCTransitionTrigger transitionForTargetPlugObjectID:withTransitionID:](MCTransitionTrigger, "transitionForTargetPlugObjectID:withTransitionID:", [targetObject objectID], objc_msgSend(action, "transitionID"));
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = +[MCAnimationTrigger animationTriggerForTargetPlugObjectID:withAnimationKey:](MCAnimationTrigger, "animationTriggerForTargetPlugObjectID:withAnimationKey:", [targetObject objectID], objc_msgSend(action, "animationKey"));
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = +[MCActionTrigger actionTriggerForTargetPlugObjectID:withActionKey:](MCActionTrigger, "actionTriggerForTargetPlugObjectID:withActionKey:", [targetObject objectID], objc_msgSend(action, "actionKey"));
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = +[MCStateOperationExpression stateOperationForTargetPlugObjectID:withStateKey:andExpression:](MCStateOperationExpression, "stateOperationForTargetPlugObjectID:withStateKey:andExpression:", [targetObject objectID], objc_msgSend(action, "stateKey"), objc_msgSend(action, "operation"));
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

              v9 = +[MCGenericAction genericActionForTargetPlugObjectID:withAttributes:](MCGenericAction, "genericActionForTargetPlugObjectID:withAttributes:", [targetObject objectID], objc_msgSend(action, "attributes"));
            }
          }
        }
      }
    }
  }

  v10 = v9;
LABEL_16:
  [plug setAction:v10 forKey:key];
  return v10;
}

+ (void)collectAllActionableLayers:(id)layers inDictionary:(id)dictionary
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [layers countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(layers);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [dictionary setObject:v10 forKey:{objc_msgSend(v10, "uuid")}];
          keyedLayers = [v10 keyedLayers];
        }

        else
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          [dictionary setObject:v10 forKey:{objc_msgSend(v10, "uuid")}];
          if ((isKindOfClass & 1) == 0)
          {
            continue;
          }

          keyedLayers = [v10 layers];
        }

        +[MPUtilities collectAllActionableLayers:inDictionary:](MPUtilities, "collectAllActionableLayers:inDictionary:", [keyedLayers allValues], dictionary);
      }

      v7 = [layers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

+ (id)createPlugInContainer:(id)container forLayer:(id)layer key:(id)key inDocument:(id)document
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [objc_msgSend(document "montage")];
    v11 = [container setPlugForContainer:v10 forID:key];
    [layer setMontage:{objc_msgSend(document, "montage")}];
    [layer setPlug:v11];
    [layer setLayerSerializer:v10];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [objc_msgSend(document "montage")];
      v11 = [container setPlugForContainer:v12 forID:key];
      [layer setMontage:{objc_msgSend(document, "montage")}];
      [layer setPlug:v11];
      [layer setLayerEffect:v12];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [objc_msgSend(document "montage")];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }

        v13 = [objc_msgSend(document "montage")];
      }

      v14 = v13;
      v11 = [container setPlugForContainer:v13 forID:key];
      [layer setContainer:v14];
      [layer setPlug:v11];
    }
  }

  return v11;
}

+ (id)createPlugInSlide:(id)slide forLayer:(id)layer inDocument:(id)document
{
  montage = [objc_msgSend(document montage];
  v8 = -[MCObject initFromScratchWithMontage:]([MCPlugSlide alloc], "initFromScratchWithMontage:", [document montage]);
  [v8 setContainer:montage];
  [layer setContainer:montage];
  [layer setPlug:v8];

  return v8;
}

+ (id)parentsOfObject:(id)object
{
  v4 = +[NSMutableArray array];
  while (object)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return v4;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      object = [object parentContainer];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      parentLayer = [object parentLayer];
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

      parentLayer = [object parent];
    }

    object = parentLayer;
LABEL_12:
    [v4 addObject:object];
  }

  return v4;
}

@end