@interface _TVTintedImageDecorator
- (_TVTintedImageDecorator)initWithTintColor:(id)color;
- (id)decoratorIdentifier;
- (void)drawInContext:(id)context imageRect:(CGRect)rect;
@end

@implementation _TVTintedImageDecorator

- (_TVTintedImageDecorator)initWithTintColor:(id)color
{
  colorCopy = color;
  v9.receiver = self;
  v9.super_class = _TVTintedImageDecorator;
  v6 = [(TVImageScaleDecorator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tintColor, color);
  }

  return v7;
}

- (id)decoratorIdentifier
{
  tintColor = [(_TVTintedImageDecorator *)self tintColor];
  v39.receiver = self;
  v39.super_class = _TVTintedImageDecorator;
  decoratorIdentifier = [(TVImageScaleDecorator *)&v39 decoratorIdentifier];
  v5 = [decoratorIdentifier mutableCopy];

  color = [tintColor color];
  if (color || [tintColor colorType] != 3)
  {
    firstObject = color;
  }

  else
  {
    gradientColors = [tintColor gradientColors];
    if ([gradientColors count] == 1)
    {
      gradientColors2 = [tintColor gradientColors];
      firstObject = [gradientColors2 firstObject];
    }

    else
    {
      firstObject = 0;
    }
  }

  if (firstObject)
  {
    v37 = 0.0;
    v38 = 0.0;
    v35 = 0.0;
    v36 = 0.0;
    [firstObject getRed:&v38 green:&v37 blue:&v36 alpha:&v35];
    [v5 appendFormat:@"_t"];
    v10 = &off_26CE87000;
    LODWORD(v10) = vcvtad_u64_f64(v38 * 255.0);
    LODWORD(v11) = vcvtad_u64_f64(v37 * 255.0);
    LODWORD(v12) = vcvtad_u64_f64(v36 * 255.0);
    v13 = v35;
    [v5 appendFormat:@"%02X%02X%02X%.1f", v10, v11, v12, v13];
  }

  else if ([tintColor colorType] == 3)
  {
    gradientColors3 = [tintColor gradientColors];
    v15 = [gradientColors3 count];

    if (v15 >= 2)
    {
      [v5 appendFormat:@"_t"];
      gradientColors4 = [tintColor gradientColors];
      v17 = [gradientColors4 count];

      if (v17)
      {
        v18 = 0;
        do
        {
          gradientPoints = [tintColor gradientPoints];
          v20 = [gradientPoints objectAtIndex:v18];
          [v20 floatValue];
          v22 = v21;

          gradientColors5 = [tintColor gradientColors];
          v24 = [gradientColors5 objectAtIndex:v18];

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
          gradientColors6 = [tintColor gradientColors];
          v30 = [gradientColors6 count] - 1;

          if (v18 < v30)
          {
            [v5 appendString:{@", "}];
          }

          ++v18;
          gradientColors7 = [tintColor gradientColors];
          v32 = [gradientColors7 count];
        }

        while (v18 < v32);
      }
    }
  }

  v33 = [v5 copy];

  return v33;
}

- (void)drawInContext:(id)context imageRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  v46 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  tintColor = [(_TVTintedImageDecorator *)self tintColor];
  if (tintColor)
  {
    cGContext = [contextCopy CGContext];
    CGContextSaveGState(cGContext);
    CGContextTranslateCTM(cGContext, 0.0, height);
    CGContextScaleCTM(cGContext, 1.0, -1.0);
    color = [tintColor color];
    if (color || [tintColor colorType] != 3)
    {
      firstObject = color;
    }

    else
    {
      gradientColors = [tintColor gradientColors];
      if ([gradientColors count] == 1)
      {
        gradientColors2 = [tintColor gradientColors];
        firstObject = [gradientColors2 firstObject];
      }

      else
      {
        firstObject = 0;
      }
    }

    if (firstObject)
    {
      color2 = [tintColor color];
      CGContextSetFillColorWithColor(cGContext, [color2 CGColor]);

      v47.origin.x = 0.0;
      v47.origin.y = 0.0;
      v47.size.width = width;
      v47.size.height = height;
      CGContextFillRect(cGContext, v47);
    }

    else if ([tintColor colorType] == 3)
    {
      gradientColors3 = [tintColor gradientColors];
      v16 = [gradientColors3 count];

      if (v16 >= 2)
      {
        gradientPoints = [tintColor gradientPoints];
        v18 = [gradientPoints count];

        v19 = malloc_type_malloc(8 * v18, 0x100004000313F17uLL);
        if (v19)
        {
          v20 = v19;
          gradientPoints2 = [tintColor gradientPoints];
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = __51___TVTintedImageDecorator_drawInContext_imageRect___block_invoke;
          v44[3] = &__block_descriptor_40_e25_v32__0__NSNumber_8Q16_B24l;
          locations = v20;
          v44[4] = v20;
          [gradientPoints2 enumerateObjectsUsingBlock:v44];

          v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:v18];
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          gradientColors4 = [tintColor gradientColors];
          v24 = [gradientColors4 countByEnumeratingWithState:&v40 objects:v45 count:16];
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
                  objc_enumerationMutation(gradientColors4);
                }

                [v22 addObject:{objc_msgSend(*(*(&v40 + 1) + 8 * i), "CGColor")}];
              }

              v25 = [gradientColors4 countByEnumeratingWithState:&v40 objects:v45 count:16];
            }

            while (v25);
          }

          v28 = CGGradientCreateWithColors(0, v22, locations);
          v29 = MEMORY[0x277CBF348];
          gradientDirectionType = [tintColor gradientDirectionType];
          v31 = *locations;
          if (gradientDirectionType == 1)
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
            CGContextDrawLinearGradient(cGContext, v28, *&v32, *&v36, 0);
            CGGradientRelease(v28);
          }

          free(locations);
        }
      }
    }

    CGContextRestoreGState(cGContext);
  }
}

@end