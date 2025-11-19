@interface PKBarcode(PKUIAdditions)
- (double)sizeForPassStyle:()PKUIAdditions;
- (double)variance;
- (id)_imageFromBarcodeMessage;
- (id)imageWithSize:()PKUIAdditions;
@end

@implementation PKBarcode(PKUIAdditions)

- (id)_imageFromBarcodeMessage
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 format];
  v4 = MEMORY[0x1E695F648];
  v5 = PKBarcodeFilterNameForFormat();
  v6 = [v4 filterWithName:v5];

  v7 = [a1 messageData];
  [v6 setValue:v7 forKey:@"inputMessage"];

  if (v3 == 4)
  {
    if ([a1 shouldRemoveQuietZone])
    {
      [v6 setValue:&unk_1F3CC6C68 forKey:@"inputQuietSpace"];
    }
  }

  else
  {
    v8 = [a1 options];
    v9 = v8;
    v10 = MEMORY[0x1E695E0F8];
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    [v6 setValue:v11 forKey:@"inputOptions"];
    [a1 shouldRemoveQuietZone];
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = [MEMORY[0x1E69DCAB8] imageWithCGImage:{objc_msgSend(v6, "outputCGImage")}];
  }

  else
  {
    v13 = [v6 valueForKey:@"outputImage"];
    if (qword_1EBD6AC70 != -1)
    {
      dispatch_once(&qword_1EBD6AC70, &__block_literal_global_94);
    }

    v14 = _MergedGlobals_595;
    [v13 extent];
    v15 = [v14 createCGImage:v13 fromRect:?];

    v12 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v15];
    CGImageRelease(v15);
  }

  objc_autoreleasePoolPop(v2);

  return v12;
}

- (id)imageWithSize:()PKUIAdditions
{
  v6 = [a1 image];
  v7 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v7 scale];
  v9 = v8;

  v10 = a2 * v9;
  v11 = a3 * v9;
  [v6 size];
  v13 = a2 * v9 / v12;
  [v6 size];
  v15 = a3 * v9 / v14;
  [v6 size];
  v48 = v16;
  v17 = v13;
  v47 = floorf(v17);
  [v6 size];
  v46 = v18;
  *&a3 = v15;
  v19 = floorf(*&a3);
  [v6 size];
  v21 = v20;
  v22 = ceilf(v17);
  [v6 size];
  v24 = v23;
  v25 = ceilf(*&a3);
  [a1 variance];
  v28 = vabdd_f64(v46 * v19, v11);
  v29 = v24 * v25 - v11;
  v30 = vabdd_f64(v48 * v47, v10);
  if (v26 <= 0.0)
  {
    v26 = v27;
  }

  else
  {
    v29 = v21 * v22 - v10;
    v28 = v30;
  }

  v31 = fabs(v29);
  v32 = v9 * v26;
  if (v28 <= v32)
  {
    v33 = v19;
  }

  else
  {
    v33 = v25;
  }

  if (v28 <= v32)
  {
    v34 = v47;
  }

  else
  {
    v34 = v22;
  }

  if (v31 <= v32)
  {
    v35 = v25;
  }

  else
  {
    v35 = v33;
  }

  if (v31 <= v32)
  {
    v36 = v22;
  }

  else
  {
    v36 = v34;
  }

  [v6 size];
  v38 = v37 * (v36 / v9);
  [v6 size];
  v40 = v39 * (v35 / v9);
  v41 = [v6 CGImage];
  v51.width = v38;
  v51.height = v40;
  UIGraphicsBeginImageContextWithOptions(v51, 0, v9);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetInterpolationQuality(CurrentContext, kCGInterpolationNone);
  transform.b = 0.0;
  transform.c = 0.0;
  transform.a = 1.0;
  *&transform.d = xmmword_1BE1153F0;
  transform.ty = v40;
  CGContextConcatCTM(CurrentContext, &transform);
  v52.origin.x = 0.0;
  v52.origin.y = 0.0;
  v52.size.width = v38;
  v52.size.height = v40;
  CGContextDrawImage(CurrentContext, v52, v41);
  Image = CGBitmapContextCreateImage(CurrentContext);
  UIGraphicsEndImageContext();
  v44 = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image scale:objc_msgSend(v6 orientation:{"imageOrientation"), v9}];
  CGImageRelease(Image);

  return v44;
}

- (double)variance
{
  v1 = [a1 format] - 1;
  if (v1 > 2)
  {
    return *MEMORY[0x1E695F060];
  }

  else
  {
    return dbl_1BE115438[v1];
  }
}

- (double)sizeForPassStyle:()PKUIAdditions
{
  if (a3 < 8)
  {
LABEL_2:
    v3 = [a1 format] - 1;
    if (v3 < 4)
    {
      return dbl_1BE115450[v3];
    }

    return *MEMORY[0x1E695F060];
  }

  if (a3 == 8)
  {
    v5 = [a1 format];
    result = 245.0;
    if (v5 > 2)
    {
      if (v5 != 4)
      {
        if (v5 == 3)
        {
          return 160.0;
        }

        return *MEMORY[0x1E695F060];
      }
    }

    else
    {
      if (v5 == 1)
      {
        return dbl_1BE115400[PKUseTallPasses() == 0];
      }

      if (v5 != 2)
      {
        return *MEMORY[0x1E695F060];
      }
    }

    return result;
  }

  if (a3 != 10)
  {
    if (a3 == 9)
    {
      goto LABEL_2;
    }

    return *MEMORY[0x1E695F060];
  }

  v6 = [a1 format];
  if (v6 <= 1)
  {
    if (v6 != 1)
    {
      return *MEMORY[0x1E695F060];
    }

    return 135.0;
  }

  result = 245.0;
  if (v6 == 2)
  {
    return result;
  }

  if (v6 == 3)
  {
    return 135.0;
  }

  if (v6 != 4)
  {
    return *MEMORY[0x1E695F060];
  }

  return result;
}

@end