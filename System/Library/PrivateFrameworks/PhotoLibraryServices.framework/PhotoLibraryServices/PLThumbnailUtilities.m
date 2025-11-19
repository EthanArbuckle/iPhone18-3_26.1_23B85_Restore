@interface PLThumbnailUtilities
+ (BOOL)_performSWDownscaleTo5551OnSourceImage:(CGImage *)a3 withSourceDimensions:(id)a4 withSpecification:(id)a5 destinationData:(id)a6 imageRect:(CGRect *)a7 bytesPerRow:(int *)a8;
+ (BOOL)_validateSpecification:(id)a3 destinationData:(id *)a4;
+ (BOOL)_validateSpecifications:(id)a3 destinationData:(id *)a4;
+ (BOOL)performHWCascadingDownscaleTo5551OnIOSurface:(__IOSurface *)a3 withSpecifications:(id)a4 destinationData:(id *)a5 usingContext:(id)a6;
+ (BOOL)performSWCascadingDownscaleTo5551OnImage:(CGImage *)a3 withSpecifications:(id)a4 destinationData:(id *)a5;
+ (BOOL)performSWDownscaleTo5551OnImage:(CGImage *)a3 withSpecification:(id)a4 destinationData:(id *)a5 imageRect:(CGRect *)a6 bytesPerRow:(int *)a7;
+ (id)_destinationDataArrayFromSpecifications:(id)a3;
+ (id)_destinationDataFromSpecification:(id)a3;
+ (int)_bytesPerRowForSpecification:(id)a3;
+ (int)_requiredDataLengthForSpecification:(id)a3;
@end

@implementation PLThumbnailUtilities

+ (BOOL)performSWCascadingDownscaleTo5551OnImage:(CGImage *)a3 withSpecifications:(id)a4 destinationData:(id *)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v29 = a1;
  if ([a1 _validateSpecifications:v8 destinationData:a5])
  {
    v30 = *a5;
    CGImageGetWidth(a3);
    CGImageGetHeight(a3);
    v25 = PLSizeMake();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v27 = 0;
      image = a3;
      v24 = v8;
      SquareCroppedImage = 0;
      v12 = 0;
      v13 = *v32;
      v14 = *MEMORY[0x1E69C02D8];
LABEL_4:
      v15 = 0;
      while (1)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v31 + 1) + 8 * v15);
        v17 = [v16 objectForKey:v14];
        v18 = [v17 intValue];

        if (v18 == 2)
        {
          v19 = SquareCroppedImage;
          v20 = v27;
          if (!SquareCroppedImage)
          {
            SquareCroppedImage = PLThumbnailCreateSquareCroppedImage(image);
            CGImageGetWidth(SquareCroppedImage);
            CGImageGetHeight(SquareCroppedImage);
            v20 = PLSizeMake();
            v19 = SquareCroppedImage;
            v27 = v20;
          }
        }

        else
        {
          v19 = image;
          v20 = v25;
        }

        v21 = [v30 objectAtIndex:v12];
        v22 = [v29 _performSWDownscaleTo5551OnSourceImage:v19 withSourceDimensions:v20 withSpecification:v16 destinationData:v21 imageRect:0 bytesPerRow:0];

        if (!v22)
        {
          break;
        }

        ++v12;
        if (v10 == ++v15)
        {
          v10 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          LOBYTE(v22) = 1;
          break;
        }
      }

      v8 = v24;
    }

    else
    {
      SquareCroppedImage = 0;
      LOBYTE(v22) = 1;
    }

    CGImageRelease(SquareCroppedImage);
  }

  else
  {
    LOBYTE(v22) = 0;
  }

  return v22;
}

+ (BOOL)performSWDownscaleTo5551OnImage:(CGImage *)a3 withSpecification:(id)a4 destinationData:(id *)a5 imageRect:(CGRect *)a6 bytesPerRow:(int *)a7
{
  v12 = a4;
  if ([a1 _validateSpecification:v12 destinationData:a5])
  {
    v13 = *a5;
    CGImageGetWidth(a3);
    CGImageGetHeight(a3);
    v14 = [a1 _performSWDownscaleTo5551OnSourceImage:a3 withSourceDimensions:PLSizeMake() withSpecification:v12 destinationData:v13 imageRect:a6 bytesPerRow:a7];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (BOOL)_performSWDownscaleTo5551OnSourceImage:(CGImage *)a3 withSourceDimensions:(id)a4 withSpecification:(id)a5 destinationData:(id)a6 imageRect:(CGRect *)a7 bytesPerRow:(int *)a8
{
  v13 = a5;
  v14 = a6;
  if (a3)
  {
    v15 = [v13 objectForKey:*MEMORY[0x1E69C02E8]];
    [v15 intValue];
    v16 = [v13 objectForKey:*MEMORY[0x1E69C02E0]];
    [v16 intValue];
    v17 = PLSizeMake();

    PLRectByCenteringAndScalingDimensionsToFitDimensions();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = [a1 _bytesPerRowForSpecification:v13];
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v28 = CGBitmapContextCreate([v14 mutableBytes], v17, v17 >> 32, 5uLL, v26, DeviceRGB, 0x1006u);
    v29 = v28 != 0;
    if (v28)
    {
      v30 = v28;
      v32.origin.x = v19;
      v32.origin.y = v21;
      v32.size.width = v23;
      v32.size.height = v25;
      CGContextDrawImage(v28, v32, a3);
      CGContextRelease(v30);
    }

    CGColorSpaceRelease(DeviceRGB);
    if (a7)
    {
      a7->origin.x = v19;
      a7->origin.y = v21;
      a7->size.width = v23;
      a7->size.height = v25;
    }

    if (a8)
    {
      *a8 = v26;
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

+ (BOOL)performHWCascadingDownscaleTo5551OnIOSurface:(__IOSurface *)a3 withSpecifications:(id)a4 destinationData:(id *)a5 usingContext:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = [a1 _validateSpecifications:v10 destinationData:a5];
  v13 = 0;
  if (!v12 || !a3 || !v11)
  {
    goto LABEL_15;
  }

  v14 = *a5;
  v15 = [v10 count];
  v16 = v15 << 32;
  v17 = malloc_type_malloc(8 * v15, 0x100004000313F17uLL);
  v18 = malloc_type_malloc(4 * v15, 0x100004052888210uLL);
  if (v15 << 32)
  {
    v29 = v15;
    v30 = a3;
    v31 = v14;
    v32 = v11;
    v19 = 0;
    v34 = *MEMORY[0x1E69C02E8];
    v33 = *MEMORY[0x1E69C02E0];
    v20 = *MEMORY[0x1E69C02D8];
    if ((v16 >> 32) <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v16 >> 32;
    }

    do
    {
      v22 = [v10 objectAtIndex:v19];
      [v22 objectForKey:v34];
      v24 = v23 = v10;
      [v24 intValue];
      v25 = [v22 objectForKey:v33];
      [v25 intValue];
      v26 = PLSizeMake();

      v10 = v23;
      v17[v19] = v26;
      v27 = [v22 objectForKey:v20];
      v18[v19] = [v27 intValue];

      ++v19;
    }

    while (v21 != v19);
    v14 = v31;
    v11 = v32;
    v13 = [v32 downscaleImageSurface:v30 destinationCount:v29 sizes:v17 cropModes:v18 pixelFormat:892679473 bytesPerRowAlignment:16 destinationData:v31];
    goto LABEL_11;
  }

  v13 = [v11 downscaleImageSurface:a3 destinationCount:v15 sizes:v17 cropModes:v18 pixelFormat:892679473 bytesPerRowAlignment:16 destinationData:v14];
  if (v17)
  {
LABEL_11:
    free(v17);
  }

  if (v18)
  {
    free(v18);
  }

LABEL_15:
  return v13;
}

+ (BOOL)_validateSpecifications:(id)a3 destinationData:(id *)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (!a4)
  {
    goto LABEL_21;
  }

  v8 = [v6 count];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v33 = a4;
    v34 = a1;
    v35 = v7;
    v12 = *v37;
    v13 = *MEMORY[0x1E69C02E8];
    v14 = *MEMORY[0x1E69C02E0];
    v15 = *MEMORY[0x1E69C02D8];
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v36 + 1) + 8 * i);
        v18 = [v17 objectForKey:v13];
        if (!v18)
        {
          goto LABEL_23;
        }

        v19 = v18;
        v20 = [v17 objectForKey:v14];
        if (!v20)
        {

LABEL_23:
          v31 = 0;
          v7 = v35;
          goto LABEL_24;
        }

        v21 = v20;
        v22 = [v17 objectForKey:v15];

        if (!v22)
        {
          goto LABEL_23;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    a1 = v34;
    v7 = v35;
    a4 = v33;
    goto LABEL_14;
  }

  if (!v8)
  {
LABEL_21:
    v31 = 0;
    goto LABEL_25;
  }

LABEL_14:
  v23 = *a4;
  if (v23)
  {
    v24 = v23;
    v25 = [v9 count];
    if (v25 == [v24 count])
    {
      if ([v9 count])
      {
        v26 = 0;
        do
        {
          v27 = [v24 objectAtIndex:v26];
          v28 = [v9 objectAtIndex:v26];
          v29 = [v27 length];
          v30 = [a1 _requiredDataLengthForSpecification:v28];

          v31 = v29 >= v30;
          if (v29 < v30)
          {
            break;
          }

          ++v26;
          v31 = 1;
        }

        while (v26 < [v9 count]);
      }

      else
      {
        v31 = 1;
      }
    }

    else
    {
      v31 = 0;
    }

    v9 = v24;
  }

  else
  {
    [a1 _destinationDataArrayFromSpecifications:v9];
    *a4 = v9 = 0;
    v31 = 1;
  }

LABEL_24:

LABEL_25:
  return v31;
}

+ (BOOL)_validateSpecification:(id)a3 destinationData:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    v8 = [v6 objectForKey:*MEMORY[0x1E69C02E8]];
    if (v8)
    {
      v9 = v8;
      v10 = [v7 objectForKey:*MEMORY[0x1E69C02E0]];
      if (v10)
      {
        v11 = v10;
        v12 = [v7 objectForKey:*MEMORY[0x1E69C02D8]];

        if (v12)
        {
          v13 = *a4;
          v14 = *a4;
          if (v13)
          {
            v15 = v14;
            a4 = [v14 length];

            LOBYTE(a4) = a4 >= [a1 _requiredDataLengthForSpecification:v7];
          }

          else
          {
            v17 = [a1 _destinationDataFromSpecification:v7];
            v18 = v17;
            *a4 = v17;
            LOBYTE(a4) = 1;
          }

          goto LABEL_9;
        }
      }

      else
      {
      }
    }

    LOBYTE(a4) = 0;
  }

LABEL_9:

  return a4;
}

+ (id)_destinationDataArrayFromSpecifications:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [a1 _destinationDataFromSpecification:{*(*(&v13 + 1) + 8 * i), v13}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)_destinationDataFromSpecification:(id)a3
{
  v4 = MEMORY[0x1E695DF88];
  v5 = a3;
  v6 = [v4 alloc];
  LODWORD(a1) = [a1 _requiredDataLengthForSpecification:v5];

  v7 = [v6 initWithLength:a1];

  return v7;
}

+ (int)_requiredDataLengthForSpecification:(id)a3
{
  v4 = *MEMORY[0x1E69C02E0];
  v5 = a3;
  v6 = [v5 objectForKey:v4];
  v7 = [v6 intValue];

  LODWORD(a1) = [a1 _bytesPerRowForSpecification:v5];
  return a1 * v7;
}

+ (int)_bytesPerRowForSpecification:(id)a3
{
  v3 = *MEMORY[0x1E69C02E8];
  v4 = a3;
  v5 = [v4 objectForKey:v3];
  v6 = [v5 intValue];

  v7 = [v4 objectForKey:*MEMORY[0x1E69C0610]];

  LOWORD(v4) = [v7 intValue];
  v8 = [MEMORY[0x1E69BF260] formatWithID:v4];
  LODWORD(v4) = [v8 tableFormatBytesPerRowForWidth:v6];

  return v4;
}

@end