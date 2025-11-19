@interface SCRCPhotoEvaluatorColor
+ (id)detect:(id)a3 inRect:(CGRect)a4;
@end

@implementation SCRCPhotoEvaluatorColor

+ (id)detect:(id)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  if (CGRectIsEmpty(v36) || (v37.origin.x = x, v37.origin.y = y, v37.size.width = width, v37.size.height = height, CGRectIsNull(v37)) || (v38.origin.x = x, v38.origin.y = y, v38.size.width = width, v38.size.height = height, CGRectIsInfinite(v38)))
  {
    v10 = [a1 detect:v9];
  }

  else
  {
    v13 = [v9 data];
    v14 = [v9 bytesPerPixel];
    v15 = [v9 width];
    v16 = [v9 height];
    v17 = width;
    v18 = height;
    v19 = y;
    v20 = v15 - width;
    if (v20 >= x)
    {
      v20 = x;
    }

    if (x >= 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = v16 - v18;
    if (v16 - v18 >= v19)
    {
      v22 = y;
    }

    if (v19 >= 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v17 < 1)
    {
      v32 = 0.0;
      v33 = 0.0;
      v31 = 0.0;
    }

    else
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = v13 + v14 * (v21 + v23 * v15) + 2;
      do
      {
        v29 = height;
        v30 = v28;
        if (v18 >= 1)
        {
          do
          {
            v25 += *(v30 - 2);
            v27 += *(v30 - 1);
            v26 += *v30;
            v30 += v15 * v14;
            --v29;
          }

          while (v29);
        }

        ++v24;
        v28 += v14;
      }

      while (v24 != v17);
      v31 = v25;
      v32 = v27;
      v33 = v26;
    }

    v34 = (v17 * v18) * 255.0;
    v10 = [[SCRCPhotoEvaluatorResultColor alloc] initWithRedLevel:v31 / v34 blueLevel:v33 / v34 greenLevel:v32 / v34];
  }

  v11 = v10;

  return v11;
}

@end