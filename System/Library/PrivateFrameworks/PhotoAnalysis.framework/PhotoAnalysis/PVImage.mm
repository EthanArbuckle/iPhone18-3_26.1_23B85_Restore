@interface PVImage
+ (PVImage)imageWithCGImage:(CGImage *)image orientation:(unsigned int)orientation adjustmentVersion:(id)version creationDate:(id)date;
+ (PVImage)imageWithCIImage:(id)image assetWidth:(unint64_t)width assetHeight:(unint64_t)height orientation:(unsigned int)orientation adjustmentVersion:(id)version creationDate:(id)date;
+ (PVImage)imageWithData:(id)data imageCreationOptions:(id)options assetWidth:(unint64_t)width assetHeight:(unint64_t)height adjustmentVersion:(id)version creationDate:(id)date;
+ (PVImage)imageWithURL:(id)l assetWidth:(unint64_t)width assetHeight:(unint64_t)height imageCreationOptions:(id)options adjustmentVersion:(id)version creationDate:(id)date;
- (CGRect)imageRectForNormalizedRect:(CGRect)rect;
- (PVImage)initWithCGImage:(CGImage *)image orientation:(unsigned int)orientation adjustmentVersion:(id)version creationDate:(id)date;
- (PVImage)initWithCIImage:(id)image assetWidth:(unint64_t)width assetHeight:(unint64_t)height orientation:(unsigned int)orientation adjustmentVersion:(id)version creationDate:(id)date;
- (PVImage)initWithData:(id)data imageCreationOptions:(id)options assetWidth:(unint64_t)width assetHeight:(unint64_t)height adjustmentVersion:(id)version creationDate:(id)date;
- (PVImage)initWithURL:(id)l assetWidth:(unint64_t)width assetHeight:(unint64_t)height imageCreationOptions:(id)options adjustmentVersion:(id)version creationDate:(id)date;
- (void)dealloc;
@end

@implementation PVImage

- (CGRect)imageRectForNormalizedRect:(CGRect)rect
{
  v3.f64[0] = rect.origin.x;
  v3.f64[1] = rect.origin.y;
  v4.f64[0] = rect.size.width;
  v4.f64[1] = rect.size.height;
  __asm { FMOV            V6.2D, #1.0 }

  LODWORD(_Q6.f64[0]) = vuzp1_s8(vmovn_s32(vuzp1q_s32(vcgtq_f64(v3, _Q6), vcgtq_f64(v4, _Q6))), *&rect.origin.x).u32[0];
  HIDWORD(_Q6.f64[0]) = vuzp1_s8(*&rect, vmovn_s32(vuzp1q_s32(vcltzq_f64(v3), vcltzq_f64(v4)))).i32[1];
  if (vmaxv_u8(vcltz_s8(vshl_n_s8(*&_Q6.f64[0], 7uLL))))
  {
    v10 = *MEMORY[0x277CBF398];
    v11 = *(MEMORY[0x277CBF398] + 8);
    v12 = *(MEMORY[0x277CBF398] + 16);
    v13 = *(MEMORY[0x277CBF398] + 24);
  }

  else
  {
    y = rect.origin.y;
    height = rect.size.height;
    x = rect.origin.x;
    width = rect.size.width;
    orientedWidth = [(PVImage *)self orientedWidth];
    orientedHeight = [(PVImage *)self orientedHeight];
    if (orientedWidth >= orientedHeight)
    {
      v17 = orientedWidth;
    }

    else
    {
      v17 = orientedHeight;
    }

    v10 = x * orientedWidth;
    v12 = width * v17;
    v11 = y * orientedHeight;
    v13 = height * v17;
  }

  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)dealloc
{
  CGImageRelease(self->_CGImage);
  v3.receiver = self;
  v3.super_class = PVImage;
  [(PVImage *)&v3 dealloc];
}

- (PVImage)initWithURL:(id)l assetWidth:(unint64_t)width assetHeight:(unint64_t)height imageCreationOptions:(id)options adjustmentVersion:(id)version creationDate:(id)date
{
  v43 = *MEMORY[0x277D85DE8];
  lCopy = l;
  optionsCopy = options;
  versionCopy = version;
  dateCopy = date;
  if (lCopy)
  {
    v40.receiver = self;
    v40.super_class = PVImage;
    v18 = [(PVImage *)&v40 init];
    if (v18)
    {
      v19 = CGImageSourceCreateWithURL(lCopy, optionsCopy);
      if (v19)
      {
        v20 = v19;
        heightCopy = height;
        v21 = CGImageSourceCopyMetadataAtIndex(v19, 0, 0);
        if (v21)
        {
          v22 = v21;
          v23 = CGImageMetadataCopyStringValueWithPath(v21, 0, @"tiff:Orientation");
          if (v23)
          {
            v24 = v23;
            IntValue = CFStringGetIntValue(v23);
            if ((IntValue - 9) <= 0xFFFFFFF7)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                v42 = IntValue;
                _os_log_error_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ERROR: Invalid orientation found: %d. Using a default value of 1", buf, 8u);
              }

              IntValue = 1;
            }

            CFRelease(v24);
          }

          else
          {
            IntValue = 1;
          }

          CFRelease(v22);
        }

        else
        {
          IntValue = 1;
        }

        ImageAtIndex = CGImageSourceCreateImageAtIndex(v20, 0, optionsCopy);
        if (ImageAtIndex)
        {
          v28 = ImageAtIndex;
          v18->_width = CGImageGetWidth(ImageAtIndex);
          v18->_height = CGImageGetHeight(v28);
          v18->_CGImage = v28;
        }

        CFRelease(v20);
        v29 = [(__CFURL *)lCopy copy];
        imageURL = v18->_imageURL;
        v18->_imageURL = v29;

        v18->_assetWidth = width;
        v18->_assetHeight = heightCopy;
        v31 = [versionCopy copy];
        adjustmentVersion = v18->_adjustmentVersion;
        v18->_adjustmentVersion = v31;

        v33 = GroupingIdentifierFromDate(dateCopy);
        groupingIdentifier = v18->_groupingIdentifier;
        v18->_groupingIdentifier = v33;

        v18->_orientation = IntValue;
        v35 = 32;
        if ((IntValue - 5) >= 4)
        {
          v36 = 32;
        }

        else
        {
          v36 = 40;
        }

        if ((IntValue - 5) >= 4)
        {
          v35 = 40;
        }

        v37 = *(&v18->super.isa + v35);
        v18->_orientedWidth = *(&v18->super.isa + v36);
        v18->_orientedHeight = v37;
      }

      else
      {

        v18 = 0;
      }
    }

    self = v18;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PVImage)initWithData:(id)data imageCreationOptions:(id)options assetWidth:(unint64_t)width assetHeight:(unint64_t)height adjustmentVersion:(id)version creationDate:(id)date
{
  v43 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  optionsCopy = options;
  versionCopy = version;
  dateCopy = date;
  if (dataCopy)
  {
    v40.receiver = self;
    v40.super_class = PVImage;
    v19 = [(PVImage *)&v40 init];
    if (v19)
    {
      v20 = CGImageSourceCreateWithData(dataCopy, optionsCopy);
      if (v20)
      {
        v21 = v20;
        widthCopy = width;
        v22 = CGImageSourceCopyMetadataAtIndex(v20, 0, 0);
        if (v22)
        {
          v23 = v22;
          heightCopy = height;
          v24 = CGImageMetadataCopyStringValueWithPath(v22, 0, @"tiff:Orientation");
          if (v24)
          {
            v25 = v24;
            IntValue = CFStringGetIntValue(v24);
            if ((IntValue - 9) <= 0xFFFFFFF7)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                v42 = IntValue;
                _os_log_error_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ERROR: Invalid orientation found: %d. Using a default value of 1", buf, 8u);
              }

              IntValue = 1;
            }

            CFRelease(v25);
          }

          else
          {
            IntValue = 1;
          }

          CFRelease(v23);
          height = heightCopy;
        }

        else
        {
          IntValue = 1;
        }

        ImageAtIndex = CGImageSourceCreateImageAtIndex(v21, 0, optionsCopy);
        if (ImageAtIndex)
        {
          v29 = ImageAtIndex;
          v19->_CGImage = ImageAtIndex;
          v19->_width = CGImageGetWidth(ImageAtIndex);
          v19->_height = CGImageGetHeight(v29);
          v19->_assetWidth = widthCopy;
          v19->_assetHeight = height;
        }

        CFRelease(v21);
        objc_storeStrong(&v19->_imageData, data);
        v30 = [versionCopy copy];
        adjustmentVersion = v19->_adjustmentVersion;
        v19->_adjustmentVersion = v30;

        v32 = GroupingIdentifierFromDate(dateCopy);
        groupingIdentifier = v19->_groupingIdentifier;
        v19->_groupingIdentifier = v32;

        v19->_orientation = IntValue;
        v34 = 32;
        if ((IntValue - 5) >= 4)
        {
          v35 = 32;
        }

        else
        {
          v35 = 40;
        }

        if ((IntValue - 5) >= 4)
        {
          v34 = 40;
        }

        v36 = *(&v19->super.isa + v34);
        v19->_orientedWidth = *(&v19->super.isa + v35);
        v19->_orientedHeight = v36;
      }

      else
      {

        v19 = 0;
      }
    }

    self = v19;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PVImage)initWithCIImage:(id)image assetWidth:(unint64_t)width assetHeight:(unint64_t)height orientation:(unsigned int)orientation adjustmentVersion:(id)version creationDate:(id)date
{
  imageCopy = image;
  versionCopy = version;
  dateCopy = date;
  if (imageCopy)
  {
    v32.receiver = self;
    v32.super_class = PVImage;
    v18 = [(PVImage *)&v32 init];
    if (v18)
    {
      [imageCopy extent];
      v20 = v19;
      v22 = v21;
      objc_storeStrong(&v18->_CIImage, image);
      v18->_width = v20;
      v18->_height = v22;
      v18->_assetWidth = width;
      v18->_assetHeight = height;
      v23 = [versionCopy copy];
      adjustmentVersion = v18->_adjustmentVersion;
      v18->_adjustmentVersion = v23;

      v25 = GroupingIdentifierFromDate(dateCopy);
      groupingIdentifier = v18->_groupingIdentifier;
      v18->_groupingIdentifier = v25;

      v18->_orientation = orientation;
      v27 = 32;
      if (orientation - 5 >= 4)
      {
        v28 = 32;
      }

      else
      {
        v28 = 40;
      }

      if (orientation - 5 >= 4)
      {
        v27 = 40;
      }

      v29 = *(&v18->super.isa + v27);
      v18->_orientedWidth = *(&v18->super.isa + v28);
      v18->_orientedHeight = v29;
    }

    self = v18;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PVImage)initWithCGImage:(CGImage *)image orientation:(unsigned int)orientation adjustmentVersion:(id)version creationDate:(id)date
{
  versionCopy = version;
  dateCopy = date;
  if (image)
  {
    v25.receiver = self;
    v25.super_class = PVImage;
    v12 = [(PVImage *)&v25 init];
    if (v12)
    {
      CGImageRetain(image);
      v12->_CGImage = image;
      v12->_width = CGImageGetWidth(image);
      Height = CGImageGetHeight(image);
      v12->_height = Height;
      width = v12->_width;
      if (orientation - 5 >= 4)
      {
        v15 = v12->_width;
      }

      else
      {
        v15 = Height;
      }

      if (orientation - 5 >= 4)
      {
        width = Height;
      }

      v12->_assetWidth = v15;
      v12->_assetHeight = width;
      if (orientation - 5 >= 4)
      {
        v16 = 32;
      }

      else
      {
        v16 = 40;
      }

      if (orientation - 5 >= 4)
      {
        v17 = 40;
      }

      else
      {
        v17 = 32;
      }

      v12->_bytesPerRow = CGImageGetBytesPerRow(image);
      v18 = [versionCopy copy];
      adjustmentVersion = v12->_adjustmentVersion;
      v12->_adjustmentVersion = v18;

      v20 = GroupingIdentifierFromDate(dateCopy);
      groupingIdentifier = v12->_groupingIdentifier;
      v12->_groupingIdentifier = v20;

      v12->_orientation = orientation;
      v22 = *(&v12->super.isa + v17);
      v12->_orientedWidth = *(&v12->super.isa + v16);
      v12->_orientedHeight = v22;
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (PVImage)imageWithData:(id)data imageCreationOptions:(id)options assetWidth:(unint64_t)width assetHeight:(unint64_t)height adjustmentVersion:(id)version creationDate:(id)date
{
  dateCopy = date;
  versionCopy = version;
  optionsCopy = options;
  dataCopy = data;
  v17 = [[PVImage alloc] initWithData:dataCopy imageCreationOptions:optionsCopy assetWidth:width assetHeight:height adjustmentVersion:versionCopy creationDate:dateCopy];

  return v17;
}

+ (PVImage)imageWithURL:(id)l assetWidth:(unint64_t)width assetHeight:(unint64_t)height imageCreationOptions:(id)options adjustmentVersion:(id)version creationDate:(id)date
{
  dateCopy = date;
  versionCopy = version;
  optionsCopy = options;
  lCopy = l;
  v17 = [[PVImage alloc] initWithURL:lCopy assetWidth:width assetHeight:height imageCreationOptions:optionsCopy adjustmentVersion:versionCopy creationDate:dateCopy];

  return v17;
}

+ (PVImage)imageWithCIImage:(id)image assetWidth:(unint64_t)width assetHeight:(unint64_t)height orientation:(unsigned int)orientation adjustmentVersion:(id)version creationDate:(id)date
{
  v9 = *&orientation;
  dateCopy = date;
  versionCopy = version;
  imageCopy = image;
  v16 = [[PVImage alloc] initWithCIImage:imageCopy assetWidth:width assetHeight:height orientation:v9 adjustmentVersion:versionCopy creationDate:dateCopy];

  return v16;
}

+ (PVImage)imageWithCGImage:(CGImage *)image orientation:(unsigned int)orientation adjustmentVersion:(id)version creationDate:(id)date
{
  v7 = *&orientation;
  dateCopy = date;
  versionCopy = version;
  v11 = [[PVImage alloc] initWithCGImage:image orientation:v7 adjustmentVersion:versionCopy creationDate:dateCopy];

  return v11;
}

@end