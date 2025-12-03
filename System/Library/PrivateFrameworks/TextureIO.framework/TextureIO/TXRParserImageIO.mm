@interface TXRParserImageIO
+ (CGImage)newCGImageFromImage:(id)image colorSpace:(CGColorSpace *)space error:(id *)error;
+ (id)decodeCGImage:(CGImage *)image desiredPixelFormat:(unint64_t)format bufferAllocator:(id)allocator options:(id)options error:(id *)error;
+ (id)decodeCGImageNonIndexed:(CGImage *)indexed desiredPixelFormat:(unint64_t)format bufferAllocator:(id)allocator options:(id)options error:(id *)error;
+ (int)determineColorSpaceClass:(CGImage *)class displayGamut:(unint64_t)gamut options:(id)options;
- (BOOL)parseData:(id)data bufferAllocator:(id)allocator options:(id)options error:(id *)error;
@end

@implementation TXRParserImageIO

- (BOOL)parseData:(id)data bufferAllocator:(id)allocator options:(id)options error:(id *)error
{
  allocatorCopy = allocator;
  optionsCopy = options;
  v12 = CGImageSourceCreateWithData(data, 0);
  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = v12;
  v14 = CGImageSourceCopyPropertiesAtIndex(v12, 0, 0);
  if (!v14)
  {
    goto LABEL_11;
  }

  if (optionsCopy)
  {
    v15 = v14;
    v16 = *MEMORY[0x277CD3410];
    if (CFDictionaryContainsKey(v14, *MEMORY[0x277CD3410]))
    {
      v17 = CFDictionaryGetValue(v15, v16);
      integerValue = [v17 integerValue];
      if (([optionsCopy originOperation] & 0xF) != 0)
      {
        v19 = [optionsCopy copyWithZone:0];

        [v19 setOriginOperation:{objc_msgSend(v19, "originOperation") & 0xFFFFFFFFFFFFFFF0}];
        [v19 setOriginOperation:{objc_msgSend(v19, "originOperation") | integerValue}];
        optionsCopy = v19;
      }
    }
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v13, 0, 0);
  if (ImageAtIndex)
  {
    v21 = [TXRParserImageIO decodeCGImage:ImageAtIndex desiredPixelFormat:0 bufferAllocator:allocatorCopy options:optionsCopy error:error];
    v22 = v21 != 0;
    if (v21)
    {
      v23 = objc_alloc_init(TXRImageInfo);
      imageInfo = self->_imageInfo;
      self->_imageInfo = v23;

      -[TXRImageInfo setBytesPerRow:](self->_imageInfo, "setBytesPerRow:", [v21 bytesPerRow]);
      -[TXRImageInfo setBytesPerImage:](self->_imageInfo, "setBytesPerImage:", [v21 bytesPerImage]);
      buffer = [v21 buffer];
      [(TXRImageInfo *)self->_imageInfo setBuffer:buffer];

      -[TXRImageInfo setOffset:](self->_imageInfo, "setOffset:", [v21 offset]);
      v26 = objc_alloc_init(TXRTextureInfo);
      textureInfo = self->_textureInfo;
      self->_textureInfo = v26;

      -[TXRTextureInfo setPixelFormat:](self->_textureInfo, "setPixelFormat:", [v21 pixelFormat]);
      -[TXRTextureInfo setAlphaInfo:](self->_textureInfo, "setAlphaInfo:", [v21 alphaInfo]);
      [v21 dimensions];
      [(TXRTextureInfo *)self->_textureInfo setDimensions:?];
      [(TXRTextureInfo *)self->_textureInfo setCubemap:0];
      [(TXRTextureInfo *)self->_textureInfo setMipmapLevelCount:1];
      [(TXRTextureInfo *)self->_textureInfo setArrayLength:1];
    }

    else if (error)
    {
      *error = _newTXRErrorWithCodeAndErrorString(0, @"Image decoding failed");
    }
  }

  else
  {
LABEL_11:
    if (error)
    {
      _newTXRErrorWithCodeAndErrorString(0, @"Image decoding failed");
      *error = v22 = 0;
    }

    else
    {
      v22 = 0;
    }
  }

  return v22;
}

+ (int)determineColorSpaceClass:(CGImage *)class displayGamut:(unint64_t)gamut options:(id)options
{
  optionsCopy = options;
  v8 = optionsCopy;
  if (optionsCopy && [optionsCopy colorSpaceHandling])
  {
    colorSpaceHandling = [v8 colorSpaceHandling];
    if ((colorSpaceHandling - 1) >= 3)
    {
      +[TXRParserImageIO determineColorSpaceClass:displayGamut:options:];
    }

    v10 = 3 - colorSpaceHandling;
  }

  else
  {
    ColorSpace = CGImageGetColorSpace(class);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    DeviceGray = CGColorSpaceCreateDeviceGray();
    if (!ColorSpace || (v14 = DeviceGray, CFEqual(DeviceRGB, ColorSpace)) || CFEqual(v14, ColorSpace))
    {
      v10 = 0;
    }

    else
    {
      CGColorSpaceRelease(DeviceRGB);
      CGColorSpaceRelease(v14);
      v16 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
      if (!CFEqual(ColorSpace, v16))
      {
        CGColorSpaceRelease(v16);
        v17 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF460]);
        if (CFEqual(ColorSpace, v17))
        {
          v10 = 1;
          goto LABEL_9;
        }

        CGColorSpaceRelease(v17);
        if (gamut == 1 && CGColorSpaceIsWideGamutRGB(ColorSpace))
        {
          v10 = 3;
          goto LABEL_9;
        }
      }

      v10 = 2;
    }
  }

LABEL_9:

  return v10;
}

+ (id)decodeCGImage:(CGImage *)image desiredPixelFormat:(unint64_t)format bufferAllocator:(id)allocator options:(id)options error:(id *)error
{
  optionsCopy = options;
  allocatorCopy = allocator;
  ColorSpace = CGImageGetColorSpace(image);
  CGColorSpaceRetain(ColorSpace);
  v15 = [self decodeCGImageNonIndexed:image desiredPixelFormat:format bufferAllocator:allocatorCopy options:optionsCopy error:error];

  CGColorSpaceRelease(ColorSpace);

  return v15;
}

+ (id)decodeCGImageNonIndexed:(CGImage *)indexed desiredPixelFormat:(unint64_t)format bufferAllocator:(id)allocator options:(id)options error:(id *)error
{
  v75[2] = *MEMORY[0x277D85DE8];
  allocatorCopy = allocator;
  optionsCopy = options;
  Width = CGImageGetWidth(indexed);
  Height = CGImageGetHeight(indexed);
  v14 = [TXRParserImageIO determineColorSpaceClass:indexed displayGamut:1 options:optionsCopy];
  ColorSpace = 0;
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v16 = MEMORY[0x277CBF4A8];
    }

    else
    {
      if (v14 != 3)
      {
        goto LABEL_11;
      }

      v16 = MEMORY[0x277CBF428];
    }

LABEL_19:
    ColorSpace = CGColorSpaceCreateWithName(*v16);
    if (!optionsCopy)
    {
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  if (v14)
  {
    if (v14 == 1)
    {
      v16 = MEMORY[0x277CBF460];
      goto LABEL_19;
    }
  }

  else
  {
    ColorSpace = CGImageGetColorSpace(indexed);
    if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
    {
      ColorSpace = CGColorSpaceCreateDeviceRGB();
    }

    CGColorSpaceRetain(ColorSpace);
  }

LABEL_11:
  if (!optionsCopy)
  {
LABEL_20:
    AlphaInfo = CGImageGetAlphaInfo(indexed);
    v19 = 0;
    v18 = AlphaInfo - 1;
    goto LABEL_21;
  }

LABEL_12:
  multiplyAlpha = [optionsCopy multiplyAlpha];
  v18 = CGImageGetAlphaInfo(indexed) - 1;
  if (!multiplyAlpha)
  {
    v19 = 0;
LABEL_21:
    v20 = 2 * (v18 > 3);
    v21 = 8451;
    goto LABEL_22;
  }

  v19 = 1;
  if (v18 < 4)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  v21 = 8449;
LABEL_22:
  v23 = 0x8000000020;
  v24 = 125;
  if (format <= 39)
  {
    if (format - 10 < 2)
    {
LABEL_77:
      if (v19)
      {
        v21 = 1;
      }

      else
      {
        v21 = 3;
      }

      v23 = 0x800000008;
      v24 = 11;
    }

    else if (format - 30 >= 2)
    {
      if (v19)
      {
        v48 = 4353;
      }

      else
      {
        v48 = 4355;
      }

      if (format == 25)
      {
        v21 = v48;
        v24 = 25;
        *&v23 = COERCE_DOUBLE(0x1000000010);
      }
    }

    else
    {
LABEL_55:
      if (v19)
      {
        v21 = 1;
      }

      else
      {
        v21 = 3;
      }

      v23 = 0x1000000008;
      v24 = 31;
    }
  }

  else
  {
    switch(format)
    {
      case 0x37uLL:
      case 0x8DuLL:
      case 0xAAuLL:
      case 0xACuLL:
        if (v19)
        {
          v21 = 8449;
        }

        else
        {
          v21 = 8451;
        }

        v23 = 0x2000000020;
        v24 = 55;
        break;
      case 0x38uLL:
      case 0x39uLL:
      case 0x3AuLL:
      case 0x3BuLL:
      case 0x3CuLL:
      case 0x3DuLL:
      case 0x3EuLL:
      case 0x3FuLL:
      case 0x40uLL:
      case 0x42uLL:
      case 0x43uLL:
      case 0x44uLL:
      case 0x45uLL:
      case 0x48uLL:
      case 0x49uLL:
      case 0x4AuLL:
      case 0x4BuLL:
      case 0x4CuLL:
      case 0x4DuLL:
      case 0x4EuLL:
      case 0x4FuLL:
      case 0x52uLL:
      case 0x53uLL:
      case 0x54uLL:
      case 0x55uLL:
      case 0x56uLL:
      case 0x57uLL:
      case 0x58uLL:
      case 0x59uLL:
      case 0x5AuLL:
      case 0x5BuLL:
      case 0x5CuLL:
      case 0x5DuLL:
      case 0x5EuLL:
      case 0x5FuLL:
      case 0x60uLL:
      case 0x61uLL:
      case 0x62uLL:
      case 0x63uLL:
      case 0x64uLL:
      case 0x65uLL:
      case 0x66uLL:
      case 0x67uLL:
      case 0x68uLL:
      case 0x6AuLL:
      case 0x6BuLL:
      case 0x6CuLL:
      case 0x6DuLL:
      case 0x6EuLL:
      case 0x6FuLL:
      case 0x70uLL:
      case 0x71uLL:
      case 0x72uLL:
      case 0x74uLL:
      case 0x75uLL:
      case 0x76uLL:
      case 0x77uLL:
      case 0x78uLL:
      case 0x79uLL:
      case 0x7AuLL:
      case 0x7BuLL:
      case 0x7CuLL:
      case 0x7EuLL:
      case 0x7FuLL:
      case 0x80uLL:
      case 0x81uLL:
      case 0x88uLL:
      case 0x89uLL:
      case 0x8AuLL:
      case 0x8BuLL:
      case 0x90uLL:
      case 0x91uLL:
      case 0x92uLL:
      case 0x93uLL:
      case 0x94uLL:
      case 0x95uLL:
      case 0x9AuLL:
      case 0x9BuLL:
      case 0x9CuLL:
      case 0x9DuLL:
      case 0x9EuLL:
      case 0x9FuLL:
      case 0xA8uLL:
      case 0xA9uLL:
      case 0xABuLL:
      case 0xADuLL:
      case 0xAFuLL:
      case 0xB1uLL:
      case 0xB8uLL:
      case 0xB9uLL:
      case 0xBFuLL:
      case 0xC9uLL:
      case 0xCAuLL:
      case 0xCBuLL:
      case 0xD1uLL:
        break;
      case 0x41uLL:
        if (v19)
        {
          v21 = 4353;
        }

        else
        {
          v21 = 4355;
        }

        v23 = 0x2000000010;
        v24 = 65;
        break;
      case 0x46uLL:
      case 0x47uLL:
      case 0x82uLL:
      case 0x83uLL:
      case 0x84uLL:
      case 0x85uLL:
      case 0x86uLL:
      case 0x87uLL:
      case 0x98uLL:
      case 0x99uLL:
      case 0xA0uLL:
      case 0xA1uLL:
      case 0xA2uLL:
      case 0xA3uLL:
      case 0xA4uLL:
      case 0xA5uLL:
      case 0xA6uLL:
      case 0xA7uLL:
      case 0xB2uLL:
      case 0xB3uLL:
      case 0xB4uLL:
      case 0xB5uLL:
      case 0xB6uLL:
      case 0xB7uLL:
      case 0xBAuLL:
      case 0xBBuLL:
      case 0xBCuLL:
      case 0xBDuLL:
      case 0xBEuLL:
      case 0xC0uLL:
      case 0xC1uLL:
      case 0xC2uLL:
      case 0xC3uLL:
      case 0xC4uLL:
      case 0xC5uLL:
      case 0xC6uLL:
      case 0xC7uLL:
      case 0xC8uLL:
      case 0xCCuLL:
      case 0xCDuLL:
      case 0xCEuLL:
      case 0xCFuLL:
      case 0xD0uLL:
      case 0xD2uLL:
      case 0xD3uLL:
      case 0xD4uLL:
      case 0xD5uLL:
      case 0xD6uLL:
      case 0xD7uLL:
      case 0xD8uLL:
      case 0xD9uLL:
      case 0xDAuLL:
        if (v19)
        {
          v21 = 1;
        }

        else
        {
          v21 = 3;
        }

        v23 = 0x2000000008;
        v24 = 71;
        break;
      case 0x50uLL:
      case 0x51uLL:
        if (v19)
        {
          v21 = 8194;
        }

        else
        {
          v21 = 8196;
        }

        v23 = 0x2000000008;
        v24 = 81;
        break;
      case 0x69uLL:
      case 0xAEuLL:
      case 0xB0uLL:
        if (v19)
        {
          v21 = 8449;
        }

        else
        {
          v21 = 8451;
        }

        v23 = 0x4000000020;
        v24 = 105;
        break;
      case 0x73uLL:
        if (v19)
        {
          v21 = 4353;
        }

        else
        {
          v21 = 4355;
        }

        v23 = 0x4000000010;
        v24 = 115;
        break;
      case 0x7DuLL:
      case 0x8FuLL:
      case 0x96uLL:
      case 0x97uLL:
        if (v19)
        {
          v21 = 8449;
        }

        else
        {
          v21 = 8451;
        }

        v24 = 125;
        break;
      case 0x8CuLL:
        goto LABEL_77;
      case 0x8EuLL:
        goto LABEL_55;
      default:
        if (format == 41)
        {
          if (v19)
          {
            v21 = 4098;
          }

          else
          {
            v21 = 4100;
          }

          v23 = 0x1000000005;
          v24 = 41;
        }

        else if (format == 40)
        {
          v23 = 0x1000000005;
          v21 = 5;
          v24 = 40;
        }

        break;
    }
  }

  v59 = v24;
  v57 = pixelBytes(v24);
  v25 = Width * v57;
  v63 = Height * v25;
  v61 = [allocatorCopy newBufferWithLength:?];
  v64 = [v61 map];
  originOperation = [optionsCopy originOperation];
  v62 = allocatorCopy;
  v58 = v20;
  if (originOperation > 255)
  {
    switch(originOperation)
    {
      case 256:
        goto LABEL_31;
      case 768:
LABEL_33:
        v28 = Height;
        v29 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v63];
        bytes = [v64 bytes];
        goto LABEL_34;
      case 512:
        goto LABEL_31;
    }
  }

  else
  {
    v27 = originOperation - 15;
    if ((originOperation - 15) <= 0x39)
    {
      if (((1 << v27) & 0x1540000000002A8) != 0)
      {
LABEL_31:
        v28 = Height;
        v29 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v63];
        bytes = [v29 mutableBytes];
        goto LABEL_34;
      }

      if (((1 << v27) & 0x288000000000150) != 0)
      {
        goto LABEL_33;
      }

      if (((1 << v27) & 0x2000000000003) != 0)
      {
        goto LABEL_199;
      }
    }

    if ((originOperation - 1) < 8 || originOperation == 240)
    {
LABEL_199:
      +[TXRParserImageIO decodeCGImageNonIndexed:desiredPixelFormat:bufferAllocator:options:error:];
    }
  }

  v28 = Height;
  bytes = [v64 bytes];
  v29 = 0;
LABEL_34:
  v31 = v28;
  v73[0] = bytes;
  v73[1] = v28;
  v32 = Width;
  v73[2] = Width;
  v73[3] = Width * v57;
  v72 = 0;
  v68[0] = v23;
  v68[1] = ColorSpace;
  v69 = v21;
  v70 = 0;
  v71 = 0;
  v33 = bytes;
  if (MEMORY[0x2743860E0](v73, v68, 0, indexed, 512))
  {
    _newTXRErrorWithCodeAndErrorString(0, @"Could retrieve image data from CGImageRef");
    *error = v34 = 0;
    v35 = v61;
    v36 = v29;
    v37 = optionsCopy;
    goto LABEL_192;
  }

  v55 = v28;
  v56 = Width;
  CGColorSpaceRelease(ColorSpace);
  v36 = v29;
  v38 = v25;
  v37 = optionsCopy;
  if (optionsCopy)
  {
    originOperation2 = [optionsCopy originOperation];
    v40 = 0;
    v41 = 1;
    if (originOperation2 <= 65)
    {
      if (originOperation2 > 21)
      {
        if (originOperation2 <= 23)
        {
          if (originOperation2 != 22)
          {
LABEL_96:
            mutableBytes = [v36 mutableBytes];
            v40 = 0;
            bytes2 = 0;
            v54 = 0x100000000;
            goto LABEL_102;
          }

LABEL_124:
          v42 = v40;
          [v64 bytes];
          v40 = v41;
          goto LABEL_125;
        }

        if (originOperation2 == 24)
        {
LABEL_123:
          v41 = 0;
          v40 = 1;
          goto LABEL_124;
        }

        if (originOperation2 != 65)
        {
          v42 = 0;
          if (originOperation2 == 64)
          {
            goto LABEL_68;
          }

          goto LABEL_125;
        }

LABEL_101:
        mutableBytes = [v64 bytes];
        v54 = 0;
        v40 = 0;
        bytes2 = 0;
LABEL_102:
        v46 = componentsPerPixel(v59);
        v43 = v46;
        src.data = v33;
        src.height = v31;
        src.width = v32;
        src.rowBytes = v38;
        dest.data = mutableBytes;
        dest.height = v31;
        dest.width = v32;
        dest.rowBytes = v38;
        if (v46 > 2)
        {
          if (v46 != 4)
          {
            +[TXRParserImageIO decodeCGImageNonIndexed:desiredPixelFormat:bufferAllocator:options:error:];
          }

          if (v57 == 16)
          {
            v47 = vImageVerticalReflect_ARGBFFFF(&src, &dest, 0);
            goto LABEL_136;
          }

          if (v57 != 8)
          {
            if (v57 != 4)
            {
              +[TXRParserImageIO decodeCGImageNonIndexed:desiredPixelFormat:bufferAllocator:options:error:];
            }

            v47 = vImageVerticalReflect_ARGB8888(&src, &dest, 0);
LABEL_136:
            if (error && !v47)
            {
              *error = _newTXRErrorWithCodeAndErrorString(0, @"Unable to vertically flip image");
            }

            v33 = mutableBytes;
            if ((v54 & 1) == 0)
            {
LABEL_169:
              if (v40)
              {
                v50 = 3;
              }

              else
              {
                v50 = 1;
              }

              if ((v40 & 1) == 0 && !HIDWORD(v54))
              {
                goto LABEL_191;
              }

              src.data = v33;
              src.height = v31;
              src.width = v32;
              src.rowBytes = v38;
              dest.data = [v64 bytes];
              dest.height = v31;
              dest.width = v32;
              dest.rowBytes = v38;
              v75[0] = 0;
              v75[1] = 0;
              v74 = 0;
              *backColor = 0;
              if (v43 > 2)
              {
                if (v43 != 4)
                {
                  +[TXRParserImageIO decodeCGImageNonIndexed:desiredPixelFormat:bufferAllocator:options:error:];
                }

                if (v57 == 16)
                {
                  vImageRotate90_ARGBFFFF(&src, &dest, v50, v75, 0);
                  goto LABEL_191;
                }

                if (v57 != 8)
                {
                  if (v57 != 4)
                  {
                    +[TXRParserImageIO decodeCGImageNonIndexed:desiredPixelFormat:bufferAllocator:options:error:];
                  }

                  vImageRotate90_ARGB8888(&src, &dest, v50, backColor, 0);
                  goto LABEL_191;
                }
              }

              else
              {
                if (v43 == 1)
                {
                  if (v57 == 4)
                  {
                    vImageRotate90_PlanarF(&src, &dest, v50, 0.0, 0);
                    goto LABEL_191;
                  }

                  if (v57 != 2)
                  {
                    if (v57 != 1)
                    {
                      +[TXRParserImageIO decodeCGImageNonIndexed:desiredPixelFormat:bufferAllocator:options:error:];
                    }

                    vImageRotate90_Planar8(&src, &dest, v50, 0, 0);
                    goto LABEL_191;
                  }

                  goto LABEL_187;
                }

                if (v57 != 4)
                {
                  if (v57 != 2)
                  {
                    +[TXRParserImageIO decodeCGImageNonIndexed:desiredPixelFormat:bufferAllocator:options:error:];
                  }

LABEL_187:
                  vImageRotate90_Planar16U(&src, &dest, v50, 0, 0);
                  goto LABEL_191;
                }
              }

              vImageRotate90_ARGB16U(&src, &dest, v50, &v74, 0);
              goto LABEL_191;
            }

LABEL_140:
            src.data = mutableBytes;
            src.height = v31;
            src.width = v32;
            src.rowBytes = v38;
            dest.data = bytes2;
            dest.height = v31;
            dest.width = v32;
            dest.rowBytes = v38;
            if (v43 > 2)
            {
              if (v43 != 4)
              {
                +[TXRParserImageIO decodeCGImageNonIndexed:desiredPixelFormat:bufferAllocator:options:error:];
              }

              if (v57 == 16)
              {
                v49 = vImageHorizontalReflect_ARGBFFFF(&src, &dest, 0);
                goto LABEL_165;
              }

              if (v57 != 8)
              {
                if (v57 != 4)
                {
                  +[TXRParserImageIO decodeCGImageNonIndexed:desiredPixelFormat:bufferAllocator:options:error:];
                }

                v49 = vImageHorizontalReflect_ARGB8888(&src, &dest, 0);
                goto LABEL_165;
              }
            }

            else
            {
              if (v43 == 1)
              {
                if (v57 != 4)
                {
                  if (v57 != 2)
                  {
                    if (v57 != 1)
                    {
                      +[TXRParserImageIO decodeCGImageNonIndexed:desiredPixelFormat:bufferAllocator:options:error:];
                    }

                    v49 = vImageHorizontalReflect_Planar8(&src, &dest, 0);
                    goto LABEL_165;
                  }

                  goto LABEL_153;
                }

                v49 = vImageHorizontalReflect_PlanarF(&src, &dest, 0);
LABEL_165:
                if (error && !v49)
                {
                  *error = _newTXRErrorWithCodeAndErrorString(0, @"Unable to horizontally flip image");
                }

                v33 = bytes2;
                goto LABEL_169;
              }

              if (v57 != 4)
              {
                if (v57 != 2)
                {
                  +[TXRParserImageIO decodeCGImageNonIndexed:desiredPixelFormat:bufferAllocator:options:error:];
                }

LABEL_153:
                v49 = vImageHorizontalReflect_Planar16U(&src, &dest, 0);
                goto LABEL_165;
              }
            }

            v49 = vImageHorizontalReflect_ARGB16U(&src, &dest, 0);
            goto LABEL_165;
          }
        }

        else
        {
          if (v46 == 1)
          {
            if (v57 == 4)
            {
              v47 = vImageVerticalReflect_PlanarF(&src, &dest, 0);
              goto LABEL_136;
            }

            if (v57 != 2)
            {
              if (v57 != 1)
              {
                +[TXRParserImageIO decodeCGImageNonIndexed:desiredPixelFormat:bufferAllocator:options:error:];
              }

              v47 = vImageVerticalReflect_Planar8(&src, &dest, 0);
              goto LABEL_136;
            }

LABEL_115:
            v47 = vImageVerticalReflect_Planar16U(&src, &dest, 0);
            goto LABEL_136;
          }

          if (v57 != 4)
          {
            if (v57 != 2)
            {
              +[TXRParserImageIO decodeCGImageNonIndexed:desiredPixelFormat:bufferAllocator:options:error:];
            }

            goto LABEL_115;
          }
        }

        v47 = vImageVerticalReflect_ARGB16U(&src, &dest, 0);
        goto LABEL_136;
      }

      if (originOperation2 > 18)
      {
        if (originOperation2 != 19)
        {
          if (originOperation2 == 20)
          {
            goto LABEL_101;
          }

          goto LABEL_99;
        }

LABEL_100:
        mutableBytes = [v36 mutableBytes];
        bytes2 = [v64 bytes];
        v40 = 0;
        v54 = 1;
        goto LABEL_102;
      }

      if (originOperation2 != 18)
      {
        if ((originOperation2 - 1) >= 8)
        {
          v42 = 0;
          if ((originOperation2 - 15) >= 2)
          {
            goto LABEL_125;
          }
        }

LABEL_68:
        +[TXRParserImageIO decodeCGImageNonIndexed:desiredPixelFormat:bufferAllocator:options:error:];
      }
    }

    else
    {
      if (originOperation2 <= 71)
      {
        if (originOperation2 > 68)
        {
          if (originOperation2 != 69)
          {
            if (originOperation2 != 70)
            {
              goto LABEL_124;
            }

            goto LABEL_96;
          }

          goto LABEL_123;
        }

        if (originOperation2 != 66)
        {
          v42 = 0;
          if (originOperation2 != 67)
          {
            goto LABEL_125;
          }

          goto LABEL_94;
        }

        goto LABEL_100;
      }

      if (originOperation2 <= 511)
      {
        if (originOperation2 != 72)
        {
          if (originOperation2 != 256)
          {
            v42 = 0;
            if (originOperation2 == 240)
            {
              goto LABEL_68;
            }

LABEL_125:
            HIDWORD(v54) = v42;
            v43 = componentsPerPixel(v59);
            goto LABEL_169;
          }

          goto LABEL_101;
        }

LABEL_99:
        mutableBytes = [v36 mutableBytes];
        v54 = 0;
        bytes2 = 0;
        v40 = 1;
        goto LABEL_102;
      }

      if (originOperation2 != 512)
      {
        v42 = 0;
        if (originOperation2 != 768)
        {
          goto LABEL_125;
        }

        goto LABEL_100;
      }
    }

LABEL_94:
    v43 = componentsPerPixel(v59);
    v40 = 0;
    HIDWORD(v54) = 0;
    bytes2 = 0;
    mutableBytes = v33;
    goto LABEL_140;
  }

LABEL_191:
  v51 = COERCE_DOUBLE(__PAIR64__(v55, v56));
  v35 = v61;
  v34 = [[TXRImageIndependent alloc] initWithDimensions:v59 pixelFormat:v58 alphaInfo:v38 bytesPerRow:v63 bytesPerImage:v61 buffer:0 offset:v51];
LABEL_192:

  v52 = *MEMORY[0x277D85DE8];

  return v34;
}

+ (CGImage)newCGImageFromImage:(id)image colorSpace:(CGColorSpace *)space error:(id *)error
{
  imageCopy = image;
  v8 = imageCopy;
  if (!space)
  {
    if (isSRGB([imageCopy pixelFormat]))
    {
      v9 = MEMORY[0x277CBF430];
    }

    else
    {
      v9 = MEMORY[0x277CBF428];
    }

    space = CGColorSpaceCreateWithName(*v9);
LABEL_10:
    NumberOfComponents = CGColorSpaceGetNumberOfComponents(space);
    pixelFormat = [v8 pixelFormat];
    if (NumberOfComponents == 2)
    {
      if (pixelFormat == 30)
      {
        v13 = 3;
        goto LABEL_32;
      }

      if ([v8 pixelFormat] != 65)
      {
        v13 = 8451;
        if ([v8 pixelFormat] == 105)
        {
          goto LABEL_32;
        }

        v14 = 105;
        goto LABEL_28;
      }
    }

    else
    {
      if (NumberOfComponents == 1)
      {
        if (pixelFormat == 10)
        {
          v13 = 0;
LABEL_32:
          buffer = [v8 buffer];
          v18 = [buffer map];

          v19 = CGDataProviderCreateWithData(0, [v18 bytes], objc_msgSend(v8, "bytesPerImage"), 0);
          v20 = pixelBytes([v8 pixelFormat]);
          v21 = 8 * (v20 & 0x1Fu) / componentsPerPixel([v8 pixelFormat]);
          v22 = pixelBytes([v8 pixelFormat]);
          [v8 dimensions];
          v24 = v23 * v22;
          [v8 dimensions];
          v26 = v25;
          [v8 dimensions];
          v10 = CGImageCreate(v26, v27, v21, 8 * (v20 & 0x1F), v24, space, v13, v19, 0, 0, kCGRenderingIntentDefault);
          CGColorSpaceRelease(space);

          goto LABEL_33;
        }

        if ([v8 pixelFormat] == 25)
        {
          v13 = 4352;
          goto LABEL_32;
        }

        v13 = 8448;
        if ([v8 pixelFormat] == 55)
        {
          goto LABEL_32;
        }

        v14 = 55;
LABEL_28:
        v15 = objc_alloc_init(TXRDefaultBufferAllocator);
        v16 = [TXRDataConverter newImageFromSourceImage:v8 newPixelFormat:v14 bufferAllocator:v15 gammaDegamma:0 error:error];

        v8 = v16;
        goto LABEL_32;
      }

      if (pixelFormat == 80 || [v8 pixelFormat] == 81)
      {
        v13 = 8196;
        goto LABEL_32;
      }

      if ([v8 pixelFormat] == 70 || objc_msgSend(v8, "pixelFormat") == 71)
      {
        v13 = 16387;
        goto LABEL_32;
      }

      if ([v8 pixelFormat] != 115)
      {
        v13 = 8451;
        if ([v8 pixelFormat] == 125)
        {
          goto LABEL_32;
        }

        v14 = 125;
        goto LABEL_28;
      }
    }

    v13 = 4355;
    goto LABEL_32;
  }

  if (CGColorSpaceGetModel(space) < kCGColorSpaceModelCMYK)
  {
    CGColorSpaceRetain(space);
    goto LABEL_10;
  }

  if (error)
  {
    _newTXRErrorWithCodeAndErrorString(13, @"Cannot create CGImage with given colorSpace.  ColorModel of colorSpace must be Monochrome or RGB ");
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_33:

  return v10;
}

@end