@interface SUImageDataProvider
- (BOOL)isEqual:(id)equal;
- (BOOL)parseData:(id)data returningError:(id *)error;
- (CGSize)finalSize;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newImageFromImage:(id)image;
- (unint64_t)hash;
- (void)_getFinalSize:(CGSize *)size imageFrame:(CGRect *)frame forImage:(id)image withModifier:(id)modifier;
- (void)dealloc;
@end

@implementation SUImageDataProvider

- (void)dealloc
{
  [(SUImageDataProvider *)self setFillColor:0];
  [(SUImageDataProvider *)self setModifier:0];
  v3.receiver = self;
  v3.super_class = SUImageDataProvider;
  [(SUImageDataProvider *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SUImageDataProvider;
  v4 = [(ISDataProvider *)&v8 copyWithZone:zone];
  v4[14] = [(SUImageDataProvider *)self fillColor];
  [(SUImageDataProvider *)self finalSize];
  v4[15] = v5;
  v4[16] = v6;
  v4[18] = [(SUImageDataProvider *)self modifier];
  return v4;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);

  return [(NSString *)v3 hash];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if (!-[UIColor isEqual:](-[SUImageDataProvider fillColor](self, "fillColor"), "isEqual:", [equal fillColor]))
  {
    return 0;
  }

  [(SUImageDataProvider *)self finalSize];
  v6 = v5;
  v8 = v7;
  [equal finalSize];
  if (v6 != v10 || v8 != v9)
  {
    return 0;
  }

  modifier = [(SUImageDataProvider *)self modifier];
  modifier2 = [equal modifier];

  return [(SUImageModifier *)modifier isEqual:modifier2];
}

- (id)newImageFromImage:(id)image
{
  if (!image)
  {
    return 0;
  }

  imageCopy = image;
  modifier = [(SUImageDataProvider *)self modifier];
  v6 = imageCopy;
  if (modifier)
  {

    imageCopy = [(SUImageModifier *)modifier newImageForImage:imageCopy];
  }

  [(SUImageDataProvider *)self finalSize];
  v8 = v7;
  v10 = v9;
  v32 = v7;
  v33 = v9;
  v31.origin = *MEMORY[0x1E695F058];
  [imageCopy size];
  v31.size.width = v11;
  v31.size.height = v12;
  if (v8 == *MEMORY[0x1E695F060] && v10 == *(MEMORY[0x1E695F060] + 8))
  {
    [imageCopy size];
    v32 = v14;
    v33 = v15;
  }

  [(SUImageDataProvider *)self _getFinalSize:&v32 imageFrame:&v31 forImage:imageCopy withModifier:modifier];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (DeviceRGB)
  {
    v17 = DeviceRGB;
    fillColor = [(SUImageDataProvider *)self fillColor];
    if (!fillColor || fillColor == [MEMORY[0x1E69DC888] clearColor])
    {
      v19 = 8194;
    }

    else
    {
      v19 = 8198;
    }

    [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
    v22 = v21;
    *&v21 = v21 * v33;
    v23 = v22 * v32;
    v24 = CGBitmapContextCreate(0, vcvtps_u32_f32(v23), vcvtps_u32_f32(*&v21), 8uLL, (vcvtd_n_u64_f64(ceilf(v23), 3uLL) + 31) & 0xFFFFFFFFFFFFFFE0, v17, v19);
    if (v24)
    {
      v25 = v24;
      CGContextSetInterpolationQuality(v24, kCGInterpolationHigh);
      CGContextSetFillColorSpace(v25, v17);
      CGContextScaleCTM(v25, v22, v22);
      CGAffineTransformMakeScale(&v30, v22, v22);
      CGContextSetBaseCTM();
      if (fillColor)
      {
        CGContextSetFillColorWithColor(v25, [(UIColor *)fillColor CGColor]);
        CGContextSetCompositeOperation();
        v34.size.width = v32;
        v34.size.height = v33;
        v34.origin.x = 0.0;
        v34.origin.y = 0.0;
        CGContextFillRect(v25, v34);
      }

      [(SUImageModifier *)modifier drawBeforeImageForContext:v25 imageFrame:*&v31.origin finalSize:v31.size.width, v31.size.height, v32, v33];
      cGImage = [imageCopy CGImage];
      CGContextDrawImage(v25, v31, cGImage);
      [(SUImageModifier *)modifier drawAfterImageForContext:v25 imageFrame:*&v31.origin finalSize:v31.size.width, v31.size.height, v32, v33];
      Image = CGBitmapContextCreateImage(v25);
      if (Image)
      {
        v28 = Image;
        v20 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:Image scale:0 orientation:v22];
        CGImageRelease(v28);
      }

      else
      {
        v20 = 0;
      }

      CFRelease(v25);
    }

    else
    {
      v20 = 0;
    }

    CGColorSpaceRelease(v17);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)parseData:(id)data returningError:(id *)error
{
  v5 = CGImageSourceCreateWithData(data, 0);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (CGImageSourceGetCount(v5) && (ImageAtIndex = CGImageSourceCreateImageAtIndex(v6, 0, 0)) != 0)
  {
    v8 = ImageAtIndex;
    [(SUImageDataProvider *)self inputImageScale];
    if (v9 >= 0.00000011920929)
    {
      v10 = v9;
    }

    else
    {
      v10 = 1.0;
    }

    v11 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v8 scale:0 orientation:v10];
    v12 = [(SUImageDataProvider *)self newImageFromImage:v11];
    if (!v12)
    {
      v12 = v11;
    }

    [(ISDataProvider *)self setOutput:v12];

    CGImageRelease(v8);
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  CFRelease(v6);
  return v13;
}

- (void)_getFinalSize:(CGSize *)size imageFrame:(CGRect *)frame forImage:(id)image withModifier:(id)modifier
{
  width = size->width;
  height = size->height;
  x = frame->origin.x;
  y = frame->origin.y;
  v15 = frame->size.width;
  v14 = frame->size.height;
  if ([modifier scalesImage])
  {
    modifierCopy2 = modifier;
    v17 = width;
    v18 = height;
LABEL_16:
    [modifierCopy2 finalSizeForSize:v17 originalSize:{v18, width, height}];
    v20 = v33;
    v22 = v34;
    [modifier imageFrameForImage:image currentFrame:x finalSize:{y, v15, v14, v33, v34}];
    x = v35;
    y = v36;
    v15 = v37;
    v14 = v38;
    goto LABEL_17;
  }

  if (modifier)
  {
    [modifier finalSizeForSize:width originalSize:{height, width, height}];
    v20 = v19;
    v22 = v21;
    [modifier imageFrameForImage:image currentFrame:x finalSize:{y, v15, v14, v19, v21}];
    x = v23;
    y = v24;
    v15 = v25;
    v14 = v26;
  }

  else
  {
    v22 = height;
    v20 = width;
  }

  if (v20 == *MEMORY[0x1E695F060] && v22 == *(MEMORY[0x1E695F060] + 8))
  {
    [image size];
    v20 = v31;
    v22 = v32;
    if (!modifier)
    {
      goto LABEL_17;
    }

LABEL_15:
    modifierCopy2 = modifier;
    v17 = v20;
    v18 = v22;
    goto LABEL_16;
  }

  v28 = v22 / v14;
  if (v22 / v14 >= v20 / v15)
  {
    v28 = v20 / v15;
  }

  v29 = v14 * v28;
  v14 = ceilf(v29);
  v30 = v15 * v28;
  v15 = ceilf(v30);
  if (modifier)
  {
    goto LABEL_15;
  }

LABEL_17:
  size->width = v20;
  size->height = v22;
  frame->origin.x = x;
  frame->origin.y = y;
  frame->size.width = v15;
  frame->size.height = v14;
}

- (CGSize)finalSize
{
  objc_copyStruct(v4, &self->_finalSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end