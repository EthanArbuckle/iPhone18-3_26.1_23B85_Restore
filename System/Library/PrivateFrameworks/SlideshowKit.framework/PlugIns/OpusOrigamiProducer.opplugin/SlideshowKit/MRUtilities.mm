@interface MRUtilities
+ (CGPoint)valueForPointAnimationPath:(id)a3 withPlugTiming:(id)a4 atTime:(double)a5 defaultsTo:(CGPoint)a6 previousKeyPoint:(CGPoint *)a7 nextKeyPoint:(CGPoint *)a8 animationIsOver:(BOOL *)a9;
+ (double)transformTime:(double)a3 forAnimationPath:(id)a4 withPlugTiming:(id)a5;
+ (double)valueForScalarAnimationPath:(id)a3 withPlugTiming:(id)a4 atTime:(double)a5 defaultsTo:(double)a6 previousKeyValue:(double *)a7 nextKeyValue:(double *)a8 animationIsOver:(BOOL *)a9;
+ (id)executeScript:(id)a3 withHeader:(id)a4 andAttributes:(id)a5;
+ (int64_t)operatingSystemMajorVersion;
+ (int64_t)operatingSystemMinorVersion;
+ (int64_t)operationQueueConcurrentOperationCount;
+ (void)initialize;
@end

@implementation MRUtilities

+ (void)initialize
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___MRUtilities;
  objc_msgSendSuper2(&v2, "initialize");
}

+ (double)valueForScalarAnimationPath:(id)a3 withPlugTiming:(id)a4 atTime:(double)a5 defaultsTo:(double)a6 previousKeyValue:(double *)a7 nextKeyValue:(double *)a8 animationIsOver:(BOOL *)a9
{
  [a1 transformTime:a5 forAnimationPath:? withPlugTiming:?];
  v16 = v15;
  if (a9)
  {
    *a9 = 1;
  }

  v17 = [a3 orderedKeyframesWithPlugTiming:a4];
  v18 = [v17 count];
  if (!v18)
  {
    goto LABEL_15;
  }

  v19 = v18;
  if (v18 == &dword_0 + 1 || v16 <= 0.0)
  {
    if (a9)
    {
      *a9 = v18 == &dword_0 + 1;
    }

    v24 = [v17 objectAtIndex:0];
    goto LABEL_14;
  }

  [a4 fullDuration];
  if (v16 >= v20)
  {
LABEL_10:
    v24 = [v17 lastObject];
LABEL_14:
    [v24 value];
    a6 = v25;
LABEL_15:
    if (a8)
    {
      *a8 = a6;
    }

    if (a7)
    {
      *a7 = a6;
    }

    return a6;
  }

  v21 = 0;
  v22 = 1;
  while (1)
  {
    +[MCAnimationPathKeyframed timeForKeyframe:withPlugTiming:](MCAnimationPathKeyframed, "timeForKeyframe:withPlugTiming:", [v17 objectAtIndex:v22], a4);
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

  if (a9)
  {
    *a9 = 0;
  }

  v27 = [v17 objectAtIndex:v21];
  v28 = [v17 objectAtIndex:v22];
  [MCAnimationPathKeyframed timeForKeyframe:v27 withPlugTiming:a4];
  v30 = v29;
  [MCAnimationPathKeyframed timeForKeyframe:v28 withPlugTiming:a4];
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
  if (a7)
  {
    *a7 = v34;
  }

  [v28 value];
  if (a8)
  {
    *a8 = v35;
  }

  [v27 value];
  v37 = v36;
  [v28 value];
  v39 = v38;
  [v27 value];
  return v37 + (v39 - v40) * v33;
}

+ (CGPoint)valueForPointAnimationPath:(id)a3 withPlugTiming:(id)a4 atTime:(double)a5 defaultsTo:(CGPoint)a6 previousKeyPoint:(CGPoint *)a7 nextKeyPoint:(CGPoint *)a8 animationIsOver:(BOOL *)a9
{
  y = a6.y;
  x = a6.x;
  [a1 transformTime:a5 forAnimationPath:? withPlugTiming:?];
  v17 = v16;
  v57[0] = 0;
  v57[1] = 0;
  if (a7)
  {
    v18 = a7;
  }

  else
  {
    v18 = v57;
  }

  if (a8)
  {
    v19 = a8;
  }

  else
  {
    v19 = v57;
  }

  if (a9)
  {
    v20 = a9;
  }

  else
  {
    v20 = v57;
  }

  *v20 = 1;
  v21 = [a3 orderedKeyframesWithPlugTiming:a4];
  v22 = [v21 count];
  if (!v22)
  {
    v19->x = x;
    if (a8)
    {
      v33 = a8;
    }

    else
    {
      v33 = v57;
    }

    v33->y = y;
    *v18 = *v19;
    v32 = v18->x;
    if (a7)
    {
      v30 = a7;
    }

    else
    {
      v30 = v57;
    }

LABEL_35:
    v38 = v30->y;
    goto LABEL_42;
  }

  v23 = v22;
  if (v22 == &dword_0 + 1 || v17 <= 0.0)
  {
    *v20 = v22 == &dword_0 + 1;
    v34 = [v21 objectAtIndex:0];
    goto LABEL_29;
  }

  [a4 fullDuration];
  if (v17 >= v24)
  {
    v34 = [v21 lastObject];
LABEL_29:
    [v34 point];
    v19->x = v36;
    v30 = v57;
    if (a8)
    {
      v37 = a8;
    }

    else
    {
      v37 = v57;
    }

    v37->y = v35;
    *v18 = *v19;
    v32 = v18->x;
LABEL_33:
    if (a7)
    {
      v30 = a7;
    }

    goto LABEL_35;
  }

  v56 = v19;
  v25 = 0;
  v26 = 1;
  while (1)
  {
    +[MCAnimationPathKeyframed timeForKeyframe:withPlugTiming:](MCAnimationPathKeyframed, "timeForKeyframe:withPlugTiming:", [v21 objectAtIndex:{v26, v56}], a4);
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
      v30 = v57;
      if (a8)
      {
        v31 = a8;
      }

      else
      {
        v31 = v57;
      }

      v31->y = v28;
      *v18 = *v56;
      v32 = v18->x;
      goto LABEL_33;
    }
  }

  *v20 = 0;
  v39 = [v21 objectAtIndex:v25];
  v40 = [v21 objectAtIndex:v26];
  [v39 point];
  v42 = v41;
  v44 = v43;
  [v40 point];
  v46 = v45;
  v48 = v47;
  [MCAnimationPathKeyframed timeForKeyframe:v39 withPlugTiming:a4];
  v50 = v49;
  v51 = v17 - v49;
  [MCAnimationPathKeyframed timeForKeyframe:v40 withPlugTiming:a4];
  v53 = v51 / (v52 - v50);
  v18->x = v42;
  v54 = v57;
  if (a7)
  {
    v55 = a7;
  }

  else
  {
    v55 = v57;
  }

  v55->y = v44;
  v56->x = v46;
  if (a8)
  {
    v54 = a8;
  }

  v54->y = v48;
  v32 = v42 + (v46 - v42) * v53;
  v38 = v44 + (v48 - v44) * v53;
LABEL_42:
  result.y = v38;
  result.x = v32;
  return result;
}

+ (double)transformTime:(double)a3 forAnimationPath:(id)a4 withPlugTiming:(id)a5
{
  [a5 fullDuration];
  v9 = v8;
  v10 = [a4 orderedKeyframesWithPlugTiming:a5];
  v11 = [v10 count];
  result = 0.0;
  if (a3 > 0.0 && v11 >= 2)
  {
    if (v9 <= a3)
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
        +[MCAnimationPathKeyframed timeForKeyframe:withPlugTiming:](MCAnimationPathKeyframed, "timeForKeyframe:withPlugTiming:", [v10 objectAtIndex:{v16, result}], a5);
        if (result >= a3)
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
      [MCAnimationPathKeyframed timeForKeyframe:v17 withPlugTiming:a5];
      v20 = v19;
      [MCAnimationPathKeyframed timeForKeyframe:v18 withPlugTiming:a5];
      v22 = v21 - v20;
      v23 = (a3 - v20) / (v21 - v20);
      [v17 postControl];
      v25 = v24;
      [v18 preControl];
      return v20 + Spline1(v23, 0.0, v25, v26 + 1.0, 1.0, 0.0, 0.0, 1.0, 1.0) * v22;
    }
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
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v12 = [a5 countByEnumeratingWithState:&v37 objects:v42 count:16];
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
          objc_enumerationMutation(a5);
        }

        v16 = *(*(&v37 + 1) + 8 * i);
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

        [v17 floatValue];
        v20 = v19;
        [(MUMathExpressionFloatBased *)v10 setValue:v16 forVariable:?];
        LODWORD(v21) = v20;
        [(MUMathExpressionFloatBased *)v11 setValue:v16 forVariable:v21];
      }

      v13 = [a5 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v13);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v22 = [a4 countByEnumeratingWithState:&v33 objects:v41 count:16];
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
          objc_enumerationMutation(a4);
        }

        v26 = *(*(&v33 + 1) + 8 * j);
        v27 = [a4 objectForKey:v26];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v27 floatValue];
          [(MUMathExpressionFloatBased *)v10 setValue:v26 forVariable:?];
          [v27 floatValue];
          [(MUMathExpressionFloatBased *)v11 setValue:v26 forVariable:?];
        }
      }

      v23 = [a4 countByEnumeratingWithState:&v33 objects:v41 count:16];
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