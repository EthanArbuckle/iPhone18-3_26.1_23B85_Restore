@interface MRCAMLUtilities
+ (double)valueAtIndex:(int64_t)a3 forAnimationPath:(id)a4 atTime:(double)a5;
@end

@implementation MRCAMLUtilities

+ (double)valueAtIndex:(int64_t)a3 forAnimationPath:(id)a4 atTime:(double)a5
{
  v9 = *(a4 + 1);
  v8 = *(a4 + 2);
  v10 = [a4 keyframes];
  v11 = [v10 count];
  if (v11 == &dword_0 + 1 || (v12 = a5 - v9, a5 - v9 <= 0.0))
  {
    v17 = [v10 objectAtIndex:{0, v12}];
    goto LABEL_10;
  }

  if (v12 >= *(a4 + 2) || (v13 = v11, v11 < 2))
  {
LABEL_8:
    v17 = [v10 lastObject];
LABEL_10:
    v18 = 24;
    if (!a3)
    {
      v18 = 16;
    }

    return *&v17[v18];
  }

  v14 = 0;
  v15 = 1;
  v16 = v12 / v8;
  while (v16 > *([v10 objectAtIndex:v15] + 4))
  {
    v15 = v14 + 2;
    ++v14;
    if (v13 <= v15)
    {
      goto LABEL_8;
    }
  }

  v20 = [v10 objectAtIndex:v14];
  v21 = [v10 objectAtIndex:v15];
  [objc_msgSend(v20 "spline")];
  v23 = 3;
  if (!a3)
  {
    v23 = 2;
  }

  return v20[v23] + (v21[v23] - v20[v23]) * v22;
}

@end