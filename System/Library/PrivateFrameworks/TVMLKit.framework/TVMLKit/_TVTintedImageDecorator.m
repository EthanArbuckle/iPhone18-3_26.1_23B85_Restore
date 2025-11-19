@interface _TVTintedImageDecorator
- (_TVTintedImageDecorator)initWithTintColor:(id)a3;
- (id)decoratorIdentifier;
- (void)drawInContext:(id)a3 imageRect:(CGRect)a4;
@end

@implementation _TVTintedImageDecorator

- (_TVTintedImageDecorator)initWithTintColor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _TVTintedImageDecorator;
  v6 = [(TVImageScaleDecorator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tintColor, a3);
  }

  return v7;
}

- (id)decoratorIdentifier
{
  v3 = [(_TVTintedImageDecorator *)self tintColor];
  v39.receiver = self;
  v39.super_class = _TVTintedImageDecorator;
  v4 = [(TVImageScaleDecorator *)&v39 decoratorIdentifier];
  v5 = [v4 mutableCopy];

  v6 = [v3 color];
  if (v6 || [v3 colorType] != 3)
  {
    v9 = v6;
  }

  else
  {
    v7 = [v3 gradientColors];
    if ([v7 count] == 1)
    {
      v8 = [v3 gradientColors];
      v9 = [v8 firstObject];
    }

    else
    {
      v9 = 0;
    }
  }

  if (v9)
  {
    v37 = 0.0;
    v38 = 0.0;
    v35 = 0.0;
    v36 = 0.0;
    [v9 getRed:&v38 green:&v37 blue:&v36 alpha:&v35];
    [v5 appendFormat:@"_t"];
    v10 = &off_26CE87000;
    LODWORD(v10) = vcvtad_u64_f64(v38 * 255.0);
    LODWORD(v11) = vcvtad_u64_f64(v37 * 255.0);
    LODWORD(v12) = vcvtad_u64_f64(v36 * 255.0);
    v13 = v35;
    [v5 appendFormat:@"%02X%02X%02X%.1f", v10, v11, v12, v13];
  }

  else if ([v3 colorType] == 3)
  {
    v14 = [v3 gradientColors];
    v15 = [v14 count];

    if (v15 >= 2)
    {
      [v5 appendFormat:@"_t"];
      v16 = [v3 gradientColors];
      v17 = [v16 count];

      if (v17)
      {
        v18 = 0;
        do
        {
          v19 = [v3 gradientPoints];
          v20 = [v19 objectAtIndex:v18];
          [v20 floatValue];
          v22 = v21;

          v23 = [v3 gradientColors];
          v24 = [v23 objectAtIndex:v18];

          v37 = 0.0;
          v38 = 0.0;
          v35 = 0.0;
          v36 = 0.0;
          [v24 getRed:&v38 green:&v37 blue:&v36 alpha:&v35];
          LODWORD(v25) = vcvtad_u64_f64(v38 * 255.0);
          LODWORD(v26) = vcvtad_u64_f64(v37 * 255.0);
          LODWORD(v27) = vcvtad_u64_f64(v36 * 255.0);
          v28 = v35;
          [v5 appendFormat:@"%.2f:%02X%02X%02X%.1f", *&v22, v25, v26, v27, v28];
          v29 = [v3 gradientColors];
          v30 = [v29 count] - 1;

          if (v18 < v30)
          {
            [v5 appendString:{@", "}];
          }

          ++v18;
          v31 = [v3 gradientColors];
          v32 = [v31 count];
        }

        while (v18 < v32);
      }
    }
  }

  v33 = [v5 copy];

  return v33;
}

- (void)drawInContext:(id)a3 imageRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  v46 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(_TVTintedImageDecorator *)self tintColor];
  if (v8)
  {
    v9 = [v7 CGContext];
    CGContextSaveGState(v9);
    CGContextTranslateCTM(v9, 0.0, height);
    CGContextScaleCTM(v9, 1.0, -1.0);
    v10 = [v8 color];
    if (v10 || [v8 colorType] != 3)
    {
      v13 = v10;
    }

    else
    {
      v11 = [v8 gradientColors];
      if ([v11 count] == 1)
      {
        v12 = [v8 gradientColors];
        v13 = [v12 firstObject];
      }

      else
      {
        v13 = 0;
      }
    }

    if (v13)
    {
      v14 = [v8 color];
      CGContextSetFillColorWithColor(v9, [v14 CGColor]);

      v47.origin.x = 0.0;
      v47.origin.y = 0.0;
      v47.size.width = width;
      v47.size.height = height;
      CGContextFillRect(v9, v47);
    }

    else if ([v8 colorType] == 3)
    {
      v15 = [v8 gradientColors];
      v16 = [v15 count];

      if (v16 >= 2)
      {
        v17 = [v8 gradientPoints];
        v18 = [v17 count];

        v19 = malloc_type_malloc(8 * v18, 0x100004000313F17uLL);
        if (v19)
        {
          v20 = v19;
          v21 = [v8 gradientPoints];
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = __51___TVTintedImageDecorator_drawInContext_imageRect___block_invoke;
          v44[3] = &__block_descriptor_40_e25_v32__0__NSNumber_8Q16_B24l;
          locations = v20;
          v44[4] = v20;
          [v21 enumerateObjectsUsingBlock:v44];

          v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:v18];
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v23 = [v8 gradientColors];
          v24 = [v23 countByEnumeratingWithState:&v40 objects:v45 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v41;
            do
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v41 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                [v22 addObject:{objc_msgSend(*(*(&v40 + 1) + 8 * i), "CGColor")}];
              }

              v25 = [v23 countByEnumeratingWithState:&v40 objects:v45 count:16];
            }

            while (v25);
          }

          v28 = CGGradientCreateWithColors(0, v22, locations);
          v29 = MEMORY[0x277CBF348];
          v30 = [v8 gradientDirectionType];
          v31 = *locations;
          if (v30 == 1)
          {
            v32 = *v29;
            v33 = height * (1.0 - v31);
            v34 = height * (1.0 - locations[v18 - 1]);
            v35 = v34 - v33;
            v36 = *v29;
          }

          else
          {
            v33 = v29[1];
            v32 = width * v31;
            v36 = width * locations[v18 - 1];
            v35 = v36 - width * v31;
            v34 = v33;
            height = width;
          }

          if (v18)
          {
            v37 = fabs(v35);
            v38 = locations;
            do
            {
              *v38 = height * (*v38 - v31) / v37;
              ++v38;
              --v18;
            }

            while (v18);
          }

          if (v28)
          {
            CGContextDrawLinearGradient(v9, v28, *&v32, *&v36, 0);
            CGGradientRelease(v28);
          }

          free(locations);
        }
      }
    }

    CGContextRestoreGState(v9);
  }
}

@end