@interface PVImage
+ (PVImage)imageWithCGImage:(CGImage *)a3 orientation:(unsigned int)a4 adjustmentVersion:(id)a5 creationDate:(id)a6;
+ (PVImage)imageWithCIImage:(id)a3 assetWidth:(unint64_t)a4 assetHeight:(unint64_t)a5 orientation:(unsigned int)a6 adjustmentVersion:(id)a7 creationDate:(id)a8;
+ (PVImage)imageWithData:(id)a3 imageCreationOptions:(id)a4 assetWidth:(unint64_t)a5 assetHeight:(unint64_t)a6 adjustmentVersion:(id)a7 creationDate:(id)a8;
+ (PVImage)imageWithURL:(id)a3 assetWidth:(unint64_t)a4 assetHeight:(unint64_t)a5 imageCreationOptions:(id)a6 adjustmentVersion:(id)a7 creationDate:(id)a8;
- (CGRect)imageRectForNormalizedRect:(CGRect)a3;
- (PVImage)initWithCGImage:(CGImage *)a3 orientation:(unsigned int)a4 adjustmentVersion:(id)a5 creationDate:(id)a6;
- (PVImage)initWithCIImage:(id)a3 assetWidth:(unint64_t)a4 assetHeight:(unint64_t)a5 orientation:(unsigned int)a6 adjustmentVersion:(id)a7 creationDate:(id)a8;
- (PVImage)initWithData:(id)a3 imageCreationOptions:(id)a4 assetWidth:(unint64_t)a5 assetHeight:(unint64_t)a6 adjustmentVersion:(id)a7 creationDate:(id)a8;
- (PVImage)initWithURL:(id)a3 assetWidth:(unint64_t)a4 assetHeight:(unint64_t)a5 imageCreationOptions:(id)a6 adjustmentVersion:(id)a7 creationDate:(id)a8;
- (void)dealloc;
@end

@implementation PVImage

- (CGRect)imageRectForNormalizedRect:(CGRect)a3
{
  v3.f64[0] = a3.origin.x;
  v3.f64[1] = a3.origin.y;
  v4.f64[0] = a3.size.width;
  v4.f64[1] = a3.size.height;
  __asm { FMOV            V6.2D, #1.0 }

  LODWORD(_Q6.f64[0]) = vuzp1_s8(vmovn_s32(vuzp1q_s32(vcgtq_f64(v3, _Q6), vcgtq_f64(v4, _Q6))), *&a3.origin.x).u32[0];
  HIDWORD(_Q6.f64[0]) = vuzp1_s8(*&a3, vmovn_s32(vuzp1q_s32(vcltzq_f64(v3), vcltzq_f64(v4)))).i32[1];
  if (vmaxv_u8(vcltz_s8(vshl_n_s8(*&_Q6.f64[0], 7uLL))))
  {
    v10 = *MEMORY[0x277CBF398];
    v11 = *(MEMORY[0x277CBF398] + 8);
    v12 = *(MEMORY[0x277CBF398] + 16);
    v13 = *(MEMORY[0x277CBF398] + 24);
  }

  else
  {
    y = a3.origin.y;
    height = a3.size.height;
    x = a3.origin.x;
    width = a3.size.width;
    v15 = [(PVImage *)self orientedWidth];
    v16 = [(PVImage *)self orientedHeight];
    if (v15 >= v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = v16;
    }

    v10 = x * v15;
    v12 = width * v17;
    v11 = y * v16;
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

- (PVImage)initWithURL:(id)a3 assetWidth:(unint64_t)a4 assetHeight:(unint64_t)a5 imageCreationOptions:(id)a6 adjustmentVersion:(id)a7 creationDate:(id)a8
{
  v43 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if (v14)
  {
    v40.receiver = self;
    v40.super_class = PVImage;
    v18 = [(PVImage *)&v40 init];
    if (v18)
    {
      v19 = CGImageSourceCreateWithURL(v14, v15);
      if (v19)
      {
        v20 = v19;
        v39 = a5;
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

        ImageAtIndex = CGImageSourceCreateImageAtIndex(v20, 0, v15);
        if (ImageAtIndex)
        {
          v28 = ImageAtIndex;
          v18->_width = CGImageGetWidth(ImageAtIndex);
          v18->_height = CGImageGetHeight(v28);
          v18->_CGImage = v28;
        }

        CFRelease(v20);
        v29 = [(__CFURL *)v14 copy];
        imageURL = v18->_imageURL;
        v18->_imageURL = v29;

        v18->_assetWidth = a4;
        v18->_assetHeight = v39;
        v31 = [v16 copy];
        adjustmentVersion = v18->_adjustmentVersion;
        v18->_adjustmentVersion = v31;

        v33 = GroupingIdentifierFromDate(v17);
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
    v26 = self;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (PVImage)initWithData:(id)a3 imageCreationOptions:(id)a4 assetWidth:(unint64_t)a5 assetHeight:(unint64_t)a6 adjustmentVersion:(id)a7 creationDate:(id)a8
{
  v43 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a8;
  if (v15)
  {
    v40.receiver = self;
    v40.super_class = PVImage;
    v19 = [(PVImage *)&v40 init];
    if (v19)
    {
      v20 = CGImageSourceCreateWithData(v15, v16);
      if (v20)
      {
        v21 = v20;
        v39 = a5;
        v22 = CGImageSourceCopyMetadataAtIndex(v20, 0, 0);
        if (v22)
        {
          v23 = v22;
          v38 = a6;
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
          a6 = v38;
        }

        else
        {
          IntValue = 1;
        }

        ImageAtIndex = CGImageSourceCreateImageAtIndex(v21, 0, v16);
        if (ImageAtIndex)
        {
          v29 = ImageAtIndex;
          v19->_CGImage = ImageAtIndex;
          v19->_width = CGImageGetWidth(ImageAtIndex);
          v19->_height = CGImageGetHeight(v29);
          v19->_assetWidth = v39;
          v19->_assetHeight = a6;
        }

        CFRelease(v21);
        objc_storeStrong(&v19->_imageData, a3);
        v30 = [v17 copy];
        adjustmentVersion = v19->_adjustmentVersion;
        v19->_adjustmentVersion = v30;

        v32 = GroupingIdentifierFromDate(v18);
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
    v27 = self;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (PVImage)initWithCIImage:(id)a3 assetWidth:(unint64_t)a4 assetHeight:(unint64_t)a5 orientation:(unsigned int)a6 adjustmentVersion:(id)a7 creationDate:(id)a8
{
  v15 = a3;
  v16 = a7;
  v17 = a8;
  if (v15)
  {
    v32.receiver = self;
    v32.super_class = PVImage;
    v18 = [(PVImage *)&v32 init];
    if (v18)
    {
      [v15 extent];
      v20 = v19;
      v22 = v21;
      objc_storeStrong(&v18->_CIImage, a3);
      v18->_width = v20;
      v18->_height = v22;
      v18->_assetWidth = a4;
      v18->_assetHeight = a5;
      v23 = [v16 copy];
      adjustmentVersion = v18->_adjustmentVersion;
      v18->_adjustmentVersion = v23;

      v25 = GroupingIdentifierFromDate(v17);
      groupingIdentifier = v18->_groupingIdentifier;
      v18->_groupingIdentifier = v25;

      v18->_orientation = a6;
      v27 = 32;
      if (a6 - 5 >= 4)
      {
        v28 = 32;
      }

      else
      {
        v28 = 40;
      }

      if (a6 - 5 >= 4)
      {
        v27 = 40;
      }

      v29 = *(&v18->super.isa + v27);
      v18->_orientedWidth = *(&v18->super.isa + v28);
      v18->_orientedHeight = v29;
    }

    self = v18;
    v30 = self;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (PVImage)initWithCGImage:(CGImage *)a3 orientation:(unsigned int)a4 adjustmentVersion:(id)a5 creationDate:(id)a6
{
  v10 = a5;
  v11 = a6;
  if (a3)
  {
    v25.receiver = self;
    v25.super_class = PVImage;
    v12 = [(PVImage *)&v25 init];
    if (v12)
    {
      CGImageRetain(a3);
      v12->_CGImage = a3;
      v12->_width = CGImageGetWidth(a3);
      Height = CGImageGetHeight(a3);
      v12->_height = Height;
      width = v12->_width;
      if (a4 - 5 >= 4)
      {
        v15 = v12->_width;
      }

      else
      {
        v15 = Height;
      }

      if (a4 - 5 >= 4)
      {
        width = Height;
      }

      v12->_assetWidth = v15;
      v12->_assetHeight = width;
      if (a4 - 5 >= 4)
      {
        v16 = 32;
      }

      else
      {
        v16 = 40;
      }

      if (a4 - 5 >= 4)
      {
        v17 = 40;
      }

      else
      {
        v17 = 32;
      }

      v12->_bytesPerRow = CGImageGetBytesPerRow(a3);
      v18 = [v10 copy];
      adjustmentVersion = v12->_adjustmentVersion;
      v12->_adjustmentVersion = v18;

      v20 = GroupingIdentifierFromDate(v11);
      groupingIdentifier = v12->_groupingIdentifier;
      v12->_groupingIdentifier = v20;

      v12->_orientation = a4;
      v22 = *(&v12->super.isa + v17);
      v12->_orientedWidth = *(&v12->super.isa + v16);
      v12->_orientedHeight = v22;
    }

    self = v12;
    v23 = self;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (PVImage)imageWithData:(id)a3 imageCreationOptions:(id)a4 assetWidth:(unint64_t)a5 assetHeight:(unint64_t)a6 adjustmentVersion:(id)a7 creationDate:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a4;
  v16 = a3;
  v17 = [[PVImage alloc] initWithData:v16 imageCreationOptions:v15 assetWidth:a5 assetHeight:a6 adjustmentVersion:v14 creationDate:v13];

  return v17;
}

+ (PVImage)imageWithURL:(id)a3 assetWidth:(unint64_t)a4 assetHeight:(unint64_t)a5 imageCreationOptions:(id)a6 adjustmentVersion:(id)a7 creationDate:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a3;
  v17 = [[PVImage alloc] initWithURL:v16 assetWidth:a4 assetHeight:a5 imageCreationOptions:v15 adjustmentVersion:v14 creationDate:v13];

  return v17;
}

+ (PVImage)imageWithCIImage:(id)a3 assetWidth:(unint64_t)a4 assetHeight:(unint64_t)a5 orientation:(unsigned int)a6 adjustmentVersion:(id)a7 creationDate:(id)a8
{
  v9 = *&a6;
  v13 = a8;
  v14 = a7;
  v15 = a3;
  v16 = [[PVImage alloc] initWithCIImage:v15 assetWidth:a4 assetHeight:a5 orientation:v9 adjustmentVersion:v14 creationDate:v13];

  return v16;
}

+ (PVImage)imageWithCGImage:(CGImage *)a3 orientation:(unsigned int)a4 adjustmentVersion:(id)a5 creationDate:(id)a6
{
  v7 = *&a4;
  v9 = a6;
  v10 = a5;
  v11 = [[PVImage alloc] initWithCGImage:a3 orientation:v7 adjustmentVersion:v10 creationDate:v9];

  return v11;
}

@end