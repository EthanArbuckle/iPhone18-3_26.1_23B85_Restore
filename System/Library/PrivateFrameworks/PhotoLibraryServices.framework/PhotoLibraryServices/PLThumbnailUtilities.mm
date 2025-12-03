@interface PLThumbnailUtilities
+ (BOOL)_performSWDownscaleTo5551OnSourceImage:(CGImage *)image withSourceDimensions:(id)dimensions withSpecification:(id)specification destinationData:(id)data imageRect:(CGRect *)rect bytesPerRow:(int *)row;
+ (BOOL)_validateSpecification:(id)specification destinationData:(id *)data;
+ (BOOL)_validateSpecifications:(id)specifications destinationData:(id *)data;
+ (BOOL)performHWCascadingDownscaleTo5551OnIOSurface:(__IOSurface *)surface withSpecifications:(id)specifications destinationData:(id *)data usingContext:(id)context;
+ (BOOL)performSWCascadingDownscaleTo5551OnImage:(CGImage *)image withSpecifications:(id)specifications destinationData:(id *)data;
+ (BOOL)performSWDownscaleTo5551OnImage:(CGImage *)image withSpecification:(id)specification destinationData:(id *)data imageRect:(CGRect *)rect bytesPerRow:(int *)row;
+ (id)_destinationDataArrayFromSpecifications:(id)specifications;
+ (id)_destinationDataFromSpecification:(id)specification;
+ (int)_bytesPerRowForSpecification:(id)specification;
+ (int)_requiredDataLengthForSpecification:(id)specification;
@end

@implementation PLThumbnailUtilities

+ (BOOL)performSWCascadingDownscaleTo5551OnImage:(CGImage *)image withSpecifications:(id)specifications destinationData:(id *)data
{
  v36 = *MEMORY[0x1E69E9840];
  specificationsCopy = specifications;
  selfCopy = self;
  if ([self _validateSpecifications:specificationsCopy destinationData:data])
  {
    v30 = *data;
    CGImageGetWidth(image);
    CGImageGetHeight(image);
    v25 = PLSizeMake();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = specificationsCopy;
    v9 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v27 = 0;
      image = image;
      v24 = specificationsCopy;
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
        intValue = [v17 intValue];

        if (intValue == 2)
        {
          imageCopy = SquareCroppedImage;
          v20 = v27;
          if (!SquareCroppedImage)
          {
            SquareCroppedImage = PLThumbnailCreateSquareCroppedImage(image);
            CGImageGetWidth(SquareCroppedImage);
            CGImageGetHeight(SquareCroppedImage);
            v20 = PLSizeMake();
            imageCopy = SquareCroppedImage;
            v27 = v20;
          }
        }

        else
        {
          imageCopy = image;
          v20 = v25;
        }

        v21 = [v30 objectAtIndex:v12];
        v22 = [selfCopy _performSWDownscaleTo5551OnSourceImage:imageCopy withSourceDimensions:v20 withSpecification:v16 destinationData:v21 imageRect:0 bytesPerRow:0];

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

      specificationsCopy = v24;
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

+ (BOOL)performSWDownscaleTo5551OnImage:(CGImage *)image withSpecification:(id)specification destinationData:(id *)data imageRect:(CGRect *)rect bytesPerRow:(int *)row
{
  specificationCopy = specification;
  if ([self _validateSpecification:specificationCopy destinationData:data])
  {
    v13 = *data;
    CGImageGetWidth(image);
    CGImageGetHeight(image);
    v14 = [self _performSWDownscaleTo5551OnSourceImage:image withSourceDimensions:PLSizeMake() withSpecification:specificationCopy destinationData:v13 imageRect:rect bytesPerRow:row];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (BOOL)_performSWDownscaleTo5551OnSourceImage:(CGImage *)image withSourceDimensions:(id)dimensions withSpecification:(id)specification destinationData:(id)data imageRect:(CGRect *)rect bytesPerRow:(int *)row
{
  specificationCopy = specification;
  dataCopy = data;
  if (image)
  {
    v15 = [specificationCopy objectForKey:*MEMORY[0x1E69C02E8]];
    [v15 intValue];
    v16 = [specificationCopy objectForKey:*MEMORY[0x1E69C02E0]];
    [v16 intValue];
    v17 = PLSizeMake();

    PLRectByCenteringAndScalingDimensionsToFitDimensions();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = [self _bytesPerRowForSpecification:specificationCopy];
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v28 = CGBitmapContextCreate([dataCopy mutableBytes], v17, v17 >> 32, 5uLL, v26, DeviceRGB, 0x1006u);
    v29 = v28 != 0;
    if (v28)
    {
      v30 = v28;
      v32.origin.x = v19;
      v32.origin.y = v21;
      v32.size.width = v23;
      v32.size.height = v25;
      CGContextDrawImage(v28, v32, image);
      CGContextRelease(v30);
    }

    CGColorSpaceRelease(DeviceRGB);
    if (rect)
    {
      rect->origin.x = v19;
      rect->origin.y = v21;
      rect->size.width = v23;
      rect->size.height = v25;
    }

    if (row)
    {
      *row = v26;
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

+ (BOOL)performHWCascadingDownscaleTo5551OnIOSurface:(__IOSurface *)surface withSpecifications:(id)specifications destinationData:(id *)data usingContext:(id)context
{
  specificationsCopy = specifications;
  contextCopy = context;
  v12 = [self _validateSpecifications:specificationsCopy destinationData:data];
  v13 = 0;
  if (!v12 || !surface || !contextCopy)
  {
    goto LABEL_15;
  }

  v14 = *data;
  v15 = [specificationsCopy count];
  v16 = v15 << 32;
  v17 = malloc_type_malloc(8 * v15, 0x100004000313F17uLL);
  v18 = malloc_type_malloc(4 * v15, 0x100004052888210uLL);
  if (v15 << 32)
  {
    v29 = v15;
    surfaceCopy = surface;
    v31 = v14;
    v32 = contextCopy;
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
      v22 = [specificationsCopy objectAtIndex:v19];
      [v22 objectForKey:v34];
      v24 = v23 = specificationsCopy;
      [v24 intValue];
      v25 = [v22 objectForKey:v33];
      [v25 intValue];
      v26 = PLSizeMake();

      specificationsCopy = v23;
      v17[v19] = v26;
      v27 = [v22 objectForKey:v20];
      v18[v19] = [v27 intValue];

      ++v19;
    }

    while (v21 != v19);
    v14 = v31;
    contextCopy = v32;
    v13 = [v32 downscaleImageSurface:surfaceCopy destinationCount:v29 sizes:v17 cropModes:v18 pixelFormat:892679473 bytesPerRowAlignment:16 destinationData:v31];
    goto LABEL_11;
  }

  v13 = [contextCopy downscaleImageSurface:surface destinationCount:v15 sizes:v17 cropModes:v18 pixelFormat:892679473 bytesPerRowAlignment:16 destinationData:v14];
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

+ (BOOL)_validateSpecifications:(id)specifications destinationData:(id *)data
{
  v41 = *MEMORY[0x1E69E9840];
  specificationsCopy = specifications;
  v7 = specificationsCopy;
  if (!data)
  {
    goto LABEL_21;
  }

  v8 = [specificationsCopy count];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    dataCopy = data;
    selfCopy = self;
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

    self = selfCopy;
    v7 = v35;
    data = dataCopy;
    goto LABEL_14;
  }

  if (!v8)
  {
LABEL_21:
    v31 = 0;
    goto LABEL_25;
  }

LABEL_14:
  v23 = *data;
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
          v30 = [self _requiredDataLengthForSpecification:v28];

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
    [self _destinationDataArrayFromSpecifications:v9];
    *data = v9 = 0;
    v31 = 1;
  }

LABEL_24:

LABEL_25:
  return v31;
}

+ (BOOL)_validateSpecification:(id)specification destinationData:(id *)data
{
  specificationCopy = specification;
  v7 = specificationCopy;
  if (data)
  {
    v8 = [specificationCopy objectForKey:*MEMORY[0x1E69C02E8]];
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
          v13 = *data;
          v14 = *data;
          if (v13)
          {
            v15 = v14;
            data = [v14 length];

            LOBYTE(data) = data >= [self _requiredDataLengthForSpecification:v7];
          }

          else
          {
            v17 = [self _destinationDataFromSpecification:v7];
            v18 = v17;
            *data = v17;
            LOBYTE(data) = 1;
          }

          goto LABEL_9;
        }
      }

      else
      {
      }
    }

    LOBYTE(data) = 0;
  }

LABEL_9:

  return data;
}

+ (id)_destinationDataArrayFromSpecifications:(id)specifications
{
  v18 = *MEMORY[0x1E69E9840];
  specificationsCopy = specifications;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = specificationsCopy;
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

        v11 = [self _destinationDataFromSpecification:{*(*(&v13 + 1) + 8 * i), v13}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)_destinationDataFromSpecification:(id)specification
{
  v4 = MEMORY[0x1E695DF88];
  specificationCopy = specification;
  v6 = [v4 alloc];
  LODWORD(self) = [self _requiredDataLengthForSpecification:specificationCopy];

  v7 = [v6 initWithLength:self];

  return v7;
}

+ (int)_requiredDataLengthForSpecification:(id)specification
{
  v4 = *MEMORY[0x1E69C02E0];
  specificationCopy = specification;
  v6 = [specificationCopy objectForKey:v4];
  intValue = [v6 intValue];

  LODWORD(self) = [self _bytesPerRowForSpecification:specificationCopy];
  return self * intValue;
}

+ (int)_bytesPerRowForSpecification:(id)specification
{
  v3 = *MEMORY[0x1E69C02E8];
  specificationCopy = specification;
  v5 = [specificationCopy objectForKey:v3];
  intValue = [v5 intValue];

  v7 = [specificationCopy objectForKey:*MEMORY[0x1E69C0610]];

  LOWORD(specificationCopy) = [v7 intValue];
  v8 = [MEMORY[0x1E69BF260] formatWithID:specificationCopy];
  LODWORD(specificationCopy) = [v8 tableFormatBytesPerRowForWidth:intValue];

  return specificationCopy;
}

@end