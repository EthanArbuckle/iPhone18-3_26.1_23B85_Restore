@interface MRCAMLUtilities
+ (double)valueAtIndex:(int64_t)index forAnimationPath:(id)path atTime:(double)time;
@end

@implementation MRCAMLUtilities

+ (double)valueAtIndex:(int64_t)index forAnimationPath:(id)path atTime:(double)time
{
  v9 = *(path + 1);
  v8 = *(path + 2);
  keyframes = [path keyframes];
  v11 = [keyframes count];
  if (v11 == &dword_0 + 1 || (v12 = time - v9, time - v9 <= 0.0))
  {
    lastObject = [keyframes objectAtIndex:{0, v12}];
    goto LABEL_10;
  }

  if (v12 >= *(path + 2) || (v13 = v11, v11 < 2))
  {
LABEL_8:
    lastObject = [keyframes lastObject];
LABEL_10:
    v18 = 24;
    if (!index)
    {
      v18 = 16;
    }

    return *&lastObject[v18];
  }

  v14 = 0;
  v15 = 1;
  v16 = v12 / v8;
  while (v16 > *([keyframes objectAtIndex:v15] + 4))
  {
    v15 = v14 + 2;
    ++v14;
    if (v13 <= v15)
    {
      goto LABEL_8;
    }
  }

  v20 = [keyframes objectAtIndex:v14];
  v21 = [keyframes objectAtIndex:v15];
  [objc_msgSend(v20 "spline")];
  v23 = 3;
  if (!index)
  {
    v23 = 2;
  }

  return v20[v23] + (v21[v23] - v20[v23]) * v22;
}

@end