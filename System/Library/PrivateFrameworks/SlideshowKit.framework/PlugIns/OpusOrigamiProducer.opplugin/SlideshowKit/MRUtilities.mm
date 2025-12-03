@interface MRUtilities
+ (CGPoint)valueForPointAnimationPath:(id)path withPlugTiming:(id)timing atTime:(double)time defaultsTo:(CGPoint)to previousKeyPoint:(CGPoint *)point nextKeyPoint:(CGPoint *)keyPoint animationIsOver:(BOOL *)over;
+ (double)transformTime:(double)time forAnimationPath:(id)path withPlugTiming:(id)timing;
+ (double)valueForScalarAnimationPath:(id)path withPlugTiming:(id)timing atTime:(double)time defaultsTo:(double)to previousKeyValue:(double *)value nextKeyValue:(double *)keyValue animationIsOver:(BOOL *)over;
+ (id)executeScript:(id)script withHeader:(id)header andAttributes:(id)attributes;
+ (int64_t)operatingSystemMajorVersion;
+ (int64_t)operatingSystemMinorVersion;
+ (int64_t)operationQueueConcurrentOperationCount;
+ (void)initialize;
@end

@implementation MRUtilities

+ (void)initialize
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___MRUtilities;
  objc_msgSendSuper2(&v2, "initialize");
}

+ (double)valueForScalarAnimationPath:(id)path withPlugTiming:(id)timing atTime:(double)time defaultsTo:(double)to previousKeyValue:(double *)value nextKeyValue:(double *)keyValue animationIsOver:(BOOL *)over
{
  [self transformTime:time forAnimationPath:? withPlugTiming:?];
  v16 = v15;
  if (over)
  {
    *over = 1;
  }

  v17 = [path orderedKeyframesWithPlugTiming:timing];
  v18 = [v17 count];
  if (!v18)
  {
    goto LABEL_15;
  }

  v19 = v18;
  if (v18 == &dword_0 + 1 || v16 <= 0.0)
  {
    if (over)
    {
      *over = v18 == &dword_0 + 1;
    }

    lastObject = [v17 objectAtIndex:0];
    goto LABEL_14;
  }

  [timing fullDuration];
  if (v16 >= v20)
  {
LABEL_10:
    lastObject = [v17 lastObject];
LABEL_14:
    [lastObject value];
    to = v25;
LABEL_15:
    if (keyValue)
    {
      *keyValue = to;
    }

    if (value)
    {
      *value = to;
    }

    return to;
  }

  v21 = 0;
  v22 = 1;
  while (1)
  {
    +[MCAnimationPathKeyframed timeForKeyframe:withPlugTiming:](MCAnimationPathKeyframed, "timeForKeyframe:withPlugTiming:", [v17 objectAtIndex:v22], timing);
    if (v16 <= v23)
    {
      break;
    }

    v22 = v21 + 2;
    ++v21;
    if (v19 <= v22)
    {
      goto LABEL_10;
    }
  }

  if (over)
  {
    *over = 0;
  }

  v27 = [v17 objectAtIndex:v21];
  v28 = [v17 objectAtIndex:v22];
  [MCAnimationPathKeyframed timeForKeyframe:v27 withPlugTiming:timing];
  v30 = v29;
  [MCAnimationPathKeyframed timeForKeyframe:v28 withPlugTiming:timing];
  v32 = (v16 - v30) / (v31 - v30);
  if (v16 - v30 > 0.0)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0.0;
  }

  [v27 value];
  if (value)
  {
    *value = v34;
  }

  [v28 value];
  if (keyValue)
  {
    *keyValue = v35;
  }

  [v27 value];
  v37 = v36;
  [v28 value];
  v39 = v38;
  [v27 value];
  return v37 + (v39 - v40) * v33;
}

+ (CGPoint)valueForPointAnimationPath:(id)path withPlugTiming:(id)timing atTime:(double)time defaultsTo:(CGPoint)to previousKeyPoint:(CGPoint *)point nextKeyPoint:(CGPoint *)keyPoint animationIsOver:(BOOL *)over
{
  y = to.y;
  x = to.x;
  [self transformTime:time forAnimationPath:? withPlugTiming:?];
  v17 = v16;
  v57[0] = 0;
  v57[1] = 0;
  if (point)
  {
    pointCopy = point;
  }

  else
  {
    pointCopy = v57;
  }

  if (keyPoint)
  {
    keyPointCopy = keyPoint;
  }

  else
  {
    keyPointCopy = v57;
  }

  if (over)
  {
    overCopy = over;
  }

  else
  {
    overCopy = v57;
  }

  *overCopy = 1;
  v21 = [path orderedKeyframesWithPlugTiming:timing];
  v22 = [v21 count];
  if (!v22)
  {
    keyPointCopy->x = x;
    if (keyPoint)
    {
      keyPointCopy2 = keyPoint;
    }

    else
    {
      keyPointCopy2 = v57;
    }

    keyPointCopy2->y = y;
    *pointCopy = *keyPointCopy;
    v32 = pointCopy->x;
    if (point)
    {
      pointCopy3 = point;
    }

    else
    {
      pointCopy3 = v57;
    }

LABEL_35:
    v38 = pointCopy3->y;
    goto LABEL_42;
  }

  v23 = v22;
  if (v22 == &dword_0 + 1 || v17 <= 0.0)
  {
    *overCopy = v22 == &dword_0 + 1;
    lastObject = [v21 objectAtIndex:0];
    goto LABEL_29;
  }

  [timing fullDuration];
  if (v17 >= v24)
  {
    lastObject = [v21 lastObject];
LABEL_29:
    [lastObject point];
    keyPointCopy->x = v36;
    pointCopy3 = v57;
    if (keyPoint)
    {
      keyPointCopy3 = keyPoint;
    }

    else
    {
      keyPointCopy3 = v57;
    }

    keyPointCopy3->y = v35;
    *pointCopy = *keyPointCopy;
    v32 = pointCopy->x;
LABEL_33:
    if (point)
    {
      pointCopy3 = point;
    }

    goto LABEL_35;
  }

  v56 = keyPointCopy;
  v25 = 0;
  v26 = 1;
  while (1)
  {
    +[MCAnimationPathKeyframed timeForKeyframe:withPlugTiming:](MCAnimationPathKeyframed, "timeForKeyframe:withPlugTiming:", [v21 objectAtIndex:{v26, v56}], timing);
    if (v17 <= v27)
    {
      break;
    }

    v26 = v25 + 2;
    ++v25;
    if (v23 <= v26)
    {
      [objc_msgSend(v21 "lastObject")];
      v56->x = v29;
      pointCopy3 = v57;
      if (keyPoint)
      {
        keyPointCopy4 = keyPoint;
      }

      else
      {
        keyPointCopy4 = v57;
      }

      keyPointCopy4->y = v28;
      *pointCopy = *v56;
      v32 = pointCopy->x;
      goto LABEL_33;
    }
  }

  *overCopy = 0;
  v39 = [v21 objectAtIndex:v25];
  v40 = [v21 objectAtIndex:v26];
  [v39 point];
  v42 = v41;
  v44 = v43;
  [v40 point];
  v46 = v45;
  v48 = v47;
  [MCAnimationPathKeyframed timeForKeyframe:v39 withPlugTiming:timing];
  v50 = v49;
  v51 = v17 - v49;
  [MCAnimationPathKeyframed timeForKeyframe:v40 withPlugTiming:timing];
  v53 = v51 / (v52 - v50);
  pointCopy->x = v42;
  keyPointCopy5 = v57;
  if (point)
  {
    pointCopy4 = point;
  }

  else
  {
    pointCopy4 = v57;
  }

  pointCopy4->y = v44;
  v56->x = v46;
  if (keyPoint)
  {
    keyPointCopy5 = keyPoint;
  }

  keyPointCopy5->y = v48;
  v32 = v42 + (v46 - v42) * v53;
  v38 = v44 + (v48 - v44) * v53;
LABEL_42:
  result.y = v38;
  result.x = v32;
  return result;
}

+ (double)transformTime:(double)time forAnimationPath:(id)path withPlugTiming:(id)timing
{
  [timing fullDuration];
  v9 = v8;
  v10 = [path orderedKeyframesWithPlugTiming:timing];
  v11 = [v10 count];
  result = 0.0;
  if (time > 0.0 && v11 >= 2)
  {
    if (v9 <= time)
    {
      return v9;
    }

    else
    {
      v14 = v11;
      v15 = 0;
      v16 = 1;
      while (1)
      {
        +[MCAnimationPathKeyframed timeForKeyframe:withPlugTiming:](MCAnimationPathKeyframed, "timeForKeyframe:withPlugTiming:", [v10 objectAtIndex:{v16, result}], timing);
        if (result >= time)
        {
          break;
        }

        v16 = v15 + 2;
        ++v15;
        if (v14 <= v16)
        {
          return v9;
        }
      }

      v17 = [v10 objectAtIndex:v15];
      v18 = [v10 objectAtIndex:v16];
      [MCAnimationPathKeyframed timeForKeyframe:v17 withPlugTiming:timing];
      v20 = v19;
      [MCAnimationPathKeyframed timeForKeyframe:v18 withPlugTiming:timing];
      v22 = v21 - v20;
      v23 = (time - v20) / (v21 - v20);
      [v17 postControl];
      v25 = v24;
      [v18 preControl];
      return v20 + Spline1(v23, 0.0, v25, v26 + 1.0, 1.0, 0.0, 0.0, 1.0, 1.0) * v22;
    }
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
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v12 = [attributes countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v38;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(attributes);
        }

        v16 = *(*(&v37 + 1) + 8 * i);
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

        [v17 floatValue];
        v20 = v19;
        [(MUMathExpressionFloatBased *)v10 setValue:v16 forVariable:?];
        LODWORD(v21) = v20;
        [(MUMathExpressionFloatBased *)v11 setValue:v16 forVariable:v21];
      }

      v13 = [attributes countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v13);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v22 = [header countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v34;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(header);
        }

        v26 = *(*(&v33 + 1) + 8 * j);
        v27 = [header objectForKey:v26];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v27 floatValue];
          [(MUMathExpressionFloatBased *)v10 setValue:v26 forVariable:?];
          [v27 floatValue];
          [(MUMathExpressionFloatBased *)v11 setValue:v26 forVariable:?];
        }
      }

      v23 = [header countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v23);
  }

  [(MUMathExpressionFloatBased *)v10 evaluate];
  v29 = v28;
  [(MUMathExpressionFloatBased *)v11 evaluate];
  v31 = v30;

  v43.width = v29;
  v43.height = v31;
  return NSStringFromCGSize(v43);
}

+ (int64_t)operationQueueConcurrentOperationCount
{
  result = qword_1EE6A0;
  if (qword_1EE6A0 == -1)
  {
    result = [+[NSProcessInfo processInfo](NSProcessInfo processorCount];
    qword_1EE6A0 = result;
  }

  return result;
}

+ (int64_t)operatingSystemMinorVersion
{
  size = 0;
  *v6 = 0x200000001;
  sysctl(v6, 2u, 0, &size, 0, 0);
  v2 = malloc_type_malloc(size, 0x100004077774924uLL);
  sysctl(v6, 2u, v2, &size, 0, 0);
  v3 = [-[NSArray objectAtIndex:](-[NSString componentsSeparatedByString:](+[NSString stringWithUTF8String:](NSString stringWithUTF8String:{v2), "componentsSeparatedByString:", @".", "objectAtIndex:", 1), "integerValue"}];
  free(v2);
  return v3;
}

+ (int64_t)operatingSystemMajorVersion
{
  size = 0;
  *v21 = 0x200000001;
  sysctl(v21, 2u, 0, &size, 0, 0);
  v2 = malloc_type_malloc(size, 0x100004077774924uLL);
  sysctl(v21, 2u, v2, &size, 0, 0);
  v3 = [NSString stringWithUTF8String:v2];
  v4 = 0;
  v5 = 1;
  v6 = 6;
  while (1)
  {
    v7 = v5;
    if ([(NSString *)v3 characterAtIndex:v4]!= a10[v4])
    {
      break;
    }

    v5 = 0;
    v4 = 1;
    if ((v7 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v8 = 0;
  v9 = 1;
  v6 = 7;
  while (1)
  {
    v10 = v9;
    if ([(NSString *)v3 characterAtIndex:v8]!= a11[v8])
    {
      break;
    }

    v9 = 0;
    v8 = 1;
    if ((v10 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v11 = 0;
  v12 = 1;
  v6 = 8;
  while (1)
  {
    v13 = v12;
    if ([(NSString *)v3 characterAtIndex:v11]!= a12[v11])
    {
      break;
    }

    v12 = 0;
    v11 = 1;
    if ((v13 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v14 = 0;
  v15 = 0;
  do
  {
    v16 = v14;
    v17 = [(NSString *)v3 characterAtIndex:v15];
    v18 = a13[v15];
    if (v17 != v18)
    {
      break;
    }

    v14 = 1;
    v15 = 1;
  }

  while ((v16 & 1) == 0);
  if (v17 == v18)
  {
    v6 = 9;
  }

  else
  {
    v6 = 0;
  }

LABEL_19:
  free(v2);
  return v6;
}

@end