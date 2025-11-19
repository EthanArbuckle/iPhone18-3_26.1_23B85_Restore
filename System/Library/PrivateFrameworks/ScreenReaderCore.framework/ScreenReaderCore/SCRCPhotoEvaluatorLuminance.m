@interface SCRCPhotoEvaluatorLuminance
+ (id)detect:(id)a3 inRect:(CGRect)a4;
@end

@implementation SCRCPhotoEvaluatorLuminance

+ (id)detect:(id)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  if (CGRectIsEmpty(v44) || (v45.origin.x = x, v45.origin.y = y, v45.size.width = width, v45.size.height = height, CGRectIsNull(v45)) || (v46.origin.x = x, v46.origin.y = y, v46.size.width = width, v46.size.height = height, CGRectIsInfinite(v46)))
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
      v40 = 0.0;
      v41 = 0.0;
      v39 = 0.0;
      v38 = 0.0;
      v37 = 0.0;
    }

    else
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = v13 + v14 * (v21 + v23 * v15) + 2;
      do
      {
        v31 = height;
        v32 = v30;
        if (v18 >= 1)
        {
          do
          {
            v33 = *(v32 - 2);
            v34 = *(v32 - 1);
            v35 = *v32;
            v25 += v33;
            v26 += v34;
            v27 += v35;
            v36 = v34 + v33 + v35;
            if (v36 < 0xC0)
            {
              ++v29;
            }

            if (v36 > 0x242)
            {
              ++v28;
            }

            v32 += v15 * v14;
            --v31;
          }

          while (v31);
        }

        ++v24;
        v30 += v14;
      }

      while (v24 != v17);
      v37 = v25;
      v38 = v26;
      v39 = v27;
      v40 = v29;
      v41 = v28;
    }

    v42 = (v17 * v18);
    v10 = [[SCRCPhotoEvaluatorResultLuminance alloc] initWithDarknessLevel:v40 / v42 brightnessLevel:v41 / v42 averageLevel:(v39 / (v42 * 255.0) + v38 / (v42 * 255.0) + v37 / (v42 * 255.0)) / 3.0];
  }

  v11 = v10;

  return v11;
}

@end