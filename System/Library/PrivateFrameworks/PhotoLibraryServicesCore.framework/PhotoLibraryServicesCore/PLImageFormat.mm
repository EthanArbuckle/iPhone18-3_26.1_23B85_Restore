@interface PLImageFormat
+ (PLImageFormat)formatWithID:(unsigned __int16)d;
+ (id)_syncFormats;
- (BOOL)_isAcceptableForDesiredImageSize:(CGSize)size;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFormat:(id)format;
- (CGSize)_shortSideFormatScaledSizeForSourceSize:(CGSize)size capLength:(BOOL)length;
- (CGSize)scaledSizeForSourceSize:(CGSize)size;
- (CGSize)scaledSizeForSourceSize:(CGSize)size capLength:(BOOL)length;
- (CGSize)size;
- (Class)_tableClass;
- (PLImageFormat)init;
- (PLImageFormat)initWithFormatID:(unsigned __int16)d;
- (PLImageFormat)initWithName:(id)name size:(CGSize)size isCropped:(BOOL)cropped version:(int64_t)version isAlwaysFullScreen:(BOOL)screen formatMode:(int64_t)mode thumbnailKind:(int64_t)thumbnailKind;
- (id)createTableWithPath:(id)path readOnly:(BOOL)only format:(id)format;
- (id)description;
- (id)thumbnailSpecification;
- (int64_t)compare:(id)compare;
- (unint64_t)fullSizeDesiredLongSide;
- (unint64_t)fullSizeMinShortSide;
- (unint64_t)tableFormatBytesPerPixel;
- (unint64_t)tableFormatBytesPerRowForWidth:(int)width;
@end

@implementation PLImageFormat

- (Class)_tableClass
{
  thumbnailKind = self->_thumbnailKind;
  if (thumbnailKind == 1 || thumbnailKind == 4 || thumbnailKind == 3)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (unint64_t)tableFormatBytesPerPixel
{
  thumbnailKind = [(PLImageFormat *)self thumbnailKind];
  if ((thumbnailKind - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_1AAA8F568[thumbnailKind - 1];
  }
}

- (BOOL)_isAcceptableForDesiredImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(PLImageFormat *)self dimension];
  v7 = v6;
  formatMode = [(PLImageFormat *)self formatMode];
  if (width >= height)
  {
    v9 = width;
  }

  else
  {
    v9 = height;
  }

  return v9 < v7 * 1.005 && formatMode != 1;
}

- (id)createTableWithPath:(id)path readOnly:(BOOL)only format:(id)format
{
  onlyCopy = only;
  formatCopy = format;
  pathCopy = path;
  v10 = [objc_alloc(-[PLImageFormat _tableClass](self "_tableClass"))];

  return v10;
}

- (id)thumbnailSpecification
{
  v13[6] = *MEMORY[0x1E69E9840];
  v12[0] = @"cropMode";
  if (self->_isCropped)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v3];
  v13[0] = v4;
  v12[1] = @"width";
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_size.width];
  v13[1] = v5;
  v12[2] = @"height";
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_size.height];
  v13[2] = v6;
  v12[3] = @"kind";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_thumbnailKind];
  v13[3] = v7;
  v12[4] = @"bpp";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{-[PLImageFormat tableFormatBytesPerPixel](self, "tableFormatBytesPerPixel")}];
  v13[4] = v8;
  v12[5] = @"formatID";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[PLImageFormat formatID](self, "formatID")}];
  v13[5] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:6];

  return v10;
}

- (unint64_t)tableFormatBytesPerRowForWidth:(int)width
{
  tableFormatBytesPerPixel = [(PLImageFormat *)self tableFormatBytesPerPixel];
  if (width + 7 <= 0)
  {
    v5 = -(-(width + 7) & 7);
  }

  else
  {
    v5 = (width + 7) & 7;
  }

  return tableFormatBytesPerPixel * (width + 7 - v5);
}

- (CGSize)scaledSizeForSourceSize:(CGSize)size capLength:(BOOL)length
{
  lengthCopy = length;
  height = size.height;
  width = size.width;
  if ([(PLImageFormat *)self dimensionsReferToShortSide])
  {

    [(PLImageFormat *)self _shortSideFormatScaledSizeForSourceSize:lengthCopy capLength:width, height];
  }

  else
  {

    [(PLImageFormat *)self scaledSizeForSourceSize:width, height];
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)scaledSizeForSourceSize:(CGSize)size
{
  v3 = PLScaledSizeWithinSizeCore(size.width, size.height, self->_size.width, self->_size.height);
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_shortSideFormatScaledSizeForSourceSize:(CGSize)size capLength:(BOOL)length
{
  width = self->_size.width;
  if (width < self->_size.height)
  {
    width = self->_size.height;
  }

  if (length)
  {
    v5 = 5 * width;
  }

  else
  {
    v5 = 0x7FFFFFFFLL;
  }

  v6 = PLScaleDimensionsForThumbnailCore(width, width, v5, 2, size.width, size.height);
  result.height = v7;
  result.width = v6;
  return result;
}

- (unint64_t)fullSizeMinShortSide
{
  if (self->_formatID - 4035 >= 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLImageFormat.m" lineNumber:657 description:@"Passed a format that isn't a full size format"];
  }

  return self->_size.width;
}

- (unint64_t)fullSizeDesiredLongSide
{
  if (self->_formatID - 4035 >= 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLImageFormat.m" lineNumber:643 description:@"Passed a format that isn't a full size format"];
  }

  return (self->_size.width / 0.75);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PLImageFormat *)self isEqualToFormat:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToFormat:(id)format
{
  formatCopy = format;
  v5 = formatCopy;
  if (self->_formatID)
  {
    formatID = self->_formatID;
    v7 = formatID == [formatCopy formatID];
  }

  else
  {
    [formatCopy size];
    v11 = self->_size.width == v10 && self->_size.height == v9;
    if (!v11 || (dimension = self->_dimension, [v5 dimension], dimension != v13) || (isCropped = self->_isCropped, isCropped != objc_msgSend(v5, "isCropped")) || (formatMode = self->_formatMode, formatMode != objc_msgSend(v5, "formatMode")) || (thumbnailKind = self->_thumbnailKind, thumbnailKind != objc_msgSend(v5, "thumbnailKind")) || (isAlwaysFullScreen = self->_isAlwaysFullScreen, isAlwaysFullScreen != objc_msgSend(v5, "isAlwaysFullScreen")))
    {
      v8 = 0;
      goto LABEL_18;
    }

    version = self->_version;
    v7 = version == [v5 version];
  }

  v8 = v7;
LABEL_18:

  return v8;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  [(PLImageFormat *)self dimension];
  v6 = v5;
  [compareCopy dimension];
  if (v6 <= 0.0 || v7 <= 0.0)
  {
    formatID = [(PLImageFormat *)self formatID];
    formatID2 = [compareCopy formatID];
    if (formatID >= formatID2)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }

    if (formatID <= formatID2)
    {
      v9 = v12;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v8 = -1;
    if (v6 >= v7)
    {
      v8 = 0;
    }

    if (v6 <= v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1;
    }
  }

  return v9;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = PLImageFormat;
  v3 = [(PLImageFormat *)&v8 description];
  shortDescription = [(PLImageFormat *)self shortDescription];
  [(PLImageFormat *)self dimension];
  v6 = [v3 stringByAppendingFormat:@" - %@, %f", shortDescription, v5];

  return v6;
}

- (PLImageFormat)initWithFormatID:(unsigned __int16)d
{
  selfCopy = self;
  if (d > 3506)
  {
    if (d <= 4133)
    {
      if (d <= 4031)
      {
        if (d > 4008)
        {
          if (d > 4028)
          {
            if (d != 4029)
            {
              if (d == 4030)
              {
                v5 = @"AspectLong180Table";
                v6 = 180.0;
                goto LABEL_152;
              }

              v5 = @"AspectLong120";
              v8 = 0x405E000000000000;
LABEL_151:
              v6 = *&v8;
LABEL_152:
              v7 = v6;
              v13 = 0;
              v14 = 0;
              v15 = 0;
              v16 = 2;
LABEL_153:
              v23 = 1;
              goto LABEL_178;
            }

            v5 = @"AspectLong180Table_ASTC";
            v6 = 180.0;
LABEL_161:
            v7 = v6;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            v16 = 2;
            goto LABEL_174;
          }

          if (d == 4009)
          {
            v9 = @"FilledScreen";
          }

          else
          {
            if (d != 4011)
            {
              goto LABEL_188;
            }

            v9 = @"FilledHalfScreen";
          }

LABEL_158:
          v10 = -1.0;
          v18 = -1.0;
          v25 = 0;
          v26 = 1;
LABEL_186:
          v27 = [(PLImageFormat *)self initWithName:v9 size:v25 isCropped:0 version:v26 isAlwaysFullScreen:v10, v18];
          goto LABEL_187;
        }

        if (d <= 3601)
        {
          if (d != 3507)
          {
            if (d != 3601)
            {
              goto LABEL_188;
            }

            v5 = @"AspectLong160Table";
            v8 = 0x4064000000000000;
            goto LABEL_151;
          }

          v5 = @"AspectLong360";
          v6 = 360.0;
LABEL_176:
          v7 = v6;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 2;
          goto LABEL_177;
        }

        if (d != 3602)
        {
          if (d != 4007)
          {
            goto LABEL_188;
          }

          v9 = @"FullScreen";
          goto LABEL_158;
        }

        v5 = @"AspectLong160Table_BC7";
        v12 = 0x4064000000000000;
        goto LABEL_129;
      }

      if (d > 4039)
      {
        if (d > 4130)
        {
          if (d == 4131)
          {
            v5 = @"AspectLong240";
            v6 = 240.0;
            goto LABEL_176;
          }

          if (d == 4132)
          {
            v5 = @"AspectLong64";
            v8 = 0x4050000000000000;
            goto LABEL_151;
          }

          v5 = @"AspectLong64_BC7";
          v12 = 0x4050000000000000;
LABEL_129:
          v6 = *&v12;
          v7 = *&v12;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 2;
LABEL_130:
          v23 = 4;
LABEL_178:
          v27 = [(PLImageFormat *)self initWithName:v5 size:v13 isCropped:v14 version:v15 isAlwaysFullScreen:v16 formatMode:v23 thumbnailKind:v6, v7];
LABEL_187:
          selfCopy = v27;
LABEL_188:
          if (selfCopy)
          {
            selfCopy->_formatID = d;
          }

          return selfCopy;
        }

        if (d == 4040)
        {
          v9 = @"WildcatStack";
          v10 = 166.0;
        }

        else
        {
          if (d != 4100)
          {
            goto LABEL_188;
          }

          v9 = @"WildcatCachedStackedImage";
          v10 = 210.0;
        }

        goto LABEL_163;
      }

      if (d > 4035)
      {
        if (d == 4036)
        {
          v5 = @"FullSize768";
          v17 = 0x4088000000000000;
        }

        else
        {
          if (d != 4037)
          {
            goto LABEL_188;
          }

          v5 = @"FullSize3072";
          v17 = 0x40A8000000000000;
        }
      }

      else
      {
        if (d == 4032)
        {
          v5 = @"AspectLong32";
          v8 = 0x4040000000000000;
          goto LABEL_151;
        }

        if (d != 4035)
        {
          goto LABEL_188;
        }

        v5 = @"FullSize1536";
        v17 = 0x4098000000000000;
      }

      v6 = *&v17;
      v7 = *&v17;
      v13 = 0;
      v14 = 0;
      v15 = 0;
LABEL_156:
      v16 = 4;
      v23 = 0;
      goto LABEL_178;
    }

    if (d > 8000)
    {
      if (d <= 9987)
      {
        if (d > 8100)
        {
          if (d == 8101)
          {
            v9 = @"VideoScrubber64Landscape";
            v10 = 86.0;
          }

          else
          {
            if (d != 8102)
            {
              goto LABEL_188;
            }

            v9 = @"VideoScrubber64Portrait";
            v10 = 48.0;
          }

          v22 = 0x4050000000000000;
        }

        else
        {
          if (d != 8001)
          {
            if (d != 8002)
            {
              goto LABEL_188;
            }

            v9 = @"VideoScrubber32Portrait";
            v18 = 32.0;
            v10 = 24.0;
            goto LABEL_184;
          }

          v9 = @"VideoScrubber32Landscape";
          v10 = 43.0;
          v22 = 0x4040000000000000;
        }

        goto LABEL_141;
      }

      if (d <= 9997)
      {
        if (d == 9988)
        {
          v10 = *MEMORY[0x1E695F060];
          v18 = *(MEMORY[0x1E695F060] + 8);
          v9 = @"SubstandardCurrent";
          goto LABEL_170;
        }

        if (d != 9997)
        {
          goto LABEL_188;
        }

        v6 = *MEMORY[0x1E695F060];
        v7 = *(MEMORY[0x1E695F060] + 8);
        v5 = @"FullResolutionPenultimate";
        v13 = 0;
        v14 = 3;
      }

      else
      {
        switch(d)
        {
          case 0x270Eu:
            v6 = *MEMORY[0x1E695F060];
            v7 = *(MEMORY[0x1E695F060] + 8);
            v5 = @"FullResolutionCurrent";
            v13 = 0;
            v14 = 0;
            break;
          case 0x270Fu:
            v6 = *MEMORY[0x1E695F060];
            v7 = *(MEMORY[0x1E695F060] + 8);
            v5 = @"FullResolutionUnadjusted";
            v13 = 0;
            v14 = 1;
            break;
          case 0x2710u:
            v6 = *MEMORY[0x1E695F060];
            v7 = *(MEMORY[0x1E695F060] + 8);
            v5 = @"FullResolutionOriginal";
            v13 = 0;
            v14 = 2;
            break;
          default:
            goto LABEL_188;
        }
      }

      v15 = 1;
      goto LABEL_156;
    }

    if (d > 4530)
    {
      if (d > 5000)
      {
        switch(d)
        {
          case 0x1389u:
            v5 = @"AspectShort128";
            v24 = 0x4060000000000000;
            break;
          case 0x138Bu:
            v5 = @"AspectShort256";
            v24 = 0x4070000000000000;
            break;
          case 0x138Du:
            v5 = @"AspectShort360";
            v6 = 360.0;
            goto LABEL_149;
          default:
            goto LABEL_188;
        }

        v6 = *&v24;
LABEL_149:
        v7 = v6;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 3;
LABEL_177:
        v23 = 2;
        goto LABEL_178;
      }

      if (d != 4531)
      {
        if (d != 4532)
        {
          goto LABEL_188;
        }

        v5 = @"AspectLong120_BC7";
        v12 = 0x405E000000000000;
        goto LABEL_129;
      }

      v5 = @"AspectLong120_ASTC";
      v21 = 0x405E000000000000;
LABEL_160:
      v6 = *&v21;
      goto LABEL_161;
    }

    if (d > 4199)
    {
      if (d == 4200)
      {
        v9 = @"WildcatCachedStackedImageHiDPI";
        v10 = 420.0;
      }

      else
      {
        if (d != 4300)
        {
          goto LABEL_188;
        }

        v9 = @"PhotoStreamDerivedSize";
        v10 = 1536.0;
      }
    }

    else
    {
      if (d == 4134)
      {
        v5 = @"AspectLong64_ASTC";
        v21 = 0x4050000000000000;
        goto LABEL_160;
      }

      if (d != 4140)
      {
        goto LABEL_188;
      }

      v9 = @"WildcatStackHiDPI";
      v10 = 332.0;
    }

LABEL_163:
    v18 = v10;
LABEL_170:
    v25 = 0;
LABEL_185:
    v26 = 0;
    goto LABEL_186;
  }

  if (d > 3300)
  {
    if (d <= 3349)
    {
      switch(d)
      {
        case 0xCE5u:
          v5 = @"Square16";
          v6 = 16.0;
          v7 = 16.0;
          goto LABEL_122;
        case 0xCE7u:
          v5 = @"Square22";
          v6 = 22.0;
          v7 = 22.0;
          goto LABEL_122;
        case 0xCE8u:
          v5 = @"Square25";
          v6 = 25.0;
          v7 = 25.0;
          goto LABEL_122;
        case 0xCE9u:
          v5 = @"Square32";
          v20 = 0x4040000000000000;
          goto LABEL_112;
        case 0xCEAu:
          v5 = @"Square39";
          v6 = 39.0;
          goto LABEL_121;
        case 0xCEBu:
          v5 = @"Square40_ASTC";
          v19 = 0x4044000000000000;
          goto LABEL_172;
        case 0xCEDu:
          v5 = @"Square64";
          v20 = 0x4050000000000000;
          goto LABEL_112;
        case 0xCEEu:
          v5 = @"Square75";
          v6 = 75.0;
          goto LABEL_121;
        case 0xCEFu:
          v5 = @"Square78";
          v6 = 78.0;
          goto LABEL_121;
        case 0xCF2u:
          v5 = @"Square125";
          v6 = 125.0;
          goto LABEL_121;
        case 0xCF3u:
          v5 = @"Square128";
          v20 = 0x4060000000000000;
LABEL_112:
          v6 = *&v20;
LABEL_121:
          v7 = v6;
LABEL_122:
          v13 = 1;
          v14 = 0;
          v15 = 0;
          v16 = 1;
          goto LABEL_153;
        case 0xCF4u:
          v5 = @"Square128_ASTC";
          v19 = 0x4060000000000000;
          goto LABEL_172;
        case 0xCF7u:
          v5 = @"Square157";
          v6 = 157.0;
          v7 = 157.0;
          v13 = 1;
          v14 = 0;
          v15 = 0;
          v16 = 1;
          goto LABEL_177;
        case 0xCFCu:
          v5 = @"Square124_ASTC";
          v19 = 0x405F000000000000;
          goto LABEL_172;
        case 0xD06u:
          v5 = @"Square24_ASTC";
          v6 = 24.0;
          v7 = 24.0;
          goto LABEL_173;
        case 0xD0Bu:
          v5 = @"Square64_ASTC";
          v19 = 0x4050000000000000;
          goto LABEL_172;
        default:
          goto LABEL_188;
      }
    }

    if (d <= 3500)
    {
      switch(d)
      {
        case 0xD16u:
          v5 = @"Square76_ASTC";
          v19 = 0x4053000000000000;
          break;
        case 0xD1Bu:
          v5 = @"Square32_ASTC";
          v19 = 0x4040000000000000;
          break;
        case 0xD1Cu:
          v5 = @"Square32_BC7";
          v6 = 32.0;
          v7 = 32.0;
          v13 = 1;
          v14 = 0;
          v15 = 0;
          v16 = 1;
          goto LABEL_130;
        default:
          goto LABEL_188;
      }

LABEL_172:
      v6 = *&v19;
      v7 = *&v19;
LABEL_173:
      v13 = 1;
      v14 = 0;
      v15 = 0;
      v16 = 1;
LABEL_174:
      v23 = 3;
      goto LABEL_178;
    }

    switch(d)
    {
      case 0xDADu:
        v5 = @"AspectLong132";
        v6 = 132.0;
        break;
      case 0xDAFu:
        v5 = @"AspectLong180";
        v6 = 180.0;
        break;
      case 0xDB1u:
        v5 = @"AspectLong264";
        v6 = 264.0;
        break;
      default:
        goto LABEL_188;
    }

    goto LABEL_176;
  }

  if (d > 3033)
  {
    if (d <= 3140)
    {
      switch(d)
      {
        case 0xBDAu:
          v9 = @"PosterThumbnail";
          v10 = 55.0;
          break;
        case 0xBDFu:
          v9 = @"LowResFullScreen";
          v10 = 160.0;
          v11 = 0x405E000000000000;
LABEL_169:
          v18 = *&v11;
          goto LABEL_170;
        case 0xBE1u:
          v9 = @"Square79Baked";
          v10 = 79.0;
          break;
        default:
          goto LABEL_188;
      }

      goto LABEL_183;
    }

    if (d <= 3211)
    {
      if (d == 3141)
      {
        v9 = @"Square158Baked";
        v10 = 158.0;
      }

      else
      {
        if (d != 3143)
        {
          goto LABEL_188;
        }

        v9 = @"PosterThumbnailHiDPI";
        v10 = 110.0;
      }

LABEL_183:
      v18 = v10;
      goto LABEL_184;
    }

    if (d == 3212)
    {
      v9 = @"VideoScrubberLandscapeHiDPI";
      v10 = 78.0;
    }

    else
    {
      if (d != 3213)
      {
        goto LABEL_188;
      }

      v9 = @"VideoScrubberPortraitHiDPI";
      v10 = 44.0;
    }

    v22 = 0x404D000000000000;
LABEL_141:
    v18 = *&v22;
LABEL_184:
    v25 = 1;
    goto LABEL_185;
  }

  if (d > 1095)
  {
    if (d > 3011)
    {
      if (d != 3012)
      {
        if (d != 3013)
        {
          goto LABEL_188;
        }

        v9 = @"VideoScrubberPortrait";
        v10 = 22.0;
        v18 = 29.0;
        goto LABEL_184;
      }

      v9 = @"VideoScrubberLandscape";
      v10 = 39.0;
    }

    else
    {
      if (d != 1096)
      {
        if (d != 3010)
        {
          goto LABEL_188;
        }

        v9 = @"LowResFullScreenPortrait";
        v10 = 120.0;
        v11 = 0x4064000000000000;
        goto LABEL_169;
      }

      v9 = @"ThumbnailHiDPI";
      v10 = 150.0;
    }

    goto LABEL_183;
  }

  if (d)
  {
    if (d == 901)
    {
      v9 = @"FaceThumbnail";
      v10 = 132.0;
    }

    else
    {
      if (d != 1095)
      {
        goto LABEL_188;
      }

      v9 = @"Thumbnail";
      v10 = 75.0;
    }

    goto LABEL_183;
  }

  v28 = PLImageManagerGetLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    *v30 = 0;
    _os_log_impl(&dword_1AA9BD000, v28, OS_LOG_TYPE_DEBUG, "Creating an image format with an unknown type is an error", v30, 2u);
  }

  return 0;
}

- (PLImageFormat)initWithName:(id)name size:(CGSize)size isCropped:(BOOL)cropped version:(int64_t)version isAlwaysFullScreen:(BOOL)screen formatMode:(int64_t)mode thumbnailKind:(int64_t)thumbnailKind
{
  height = size.height;
  width = size.width;
  nameCopy = name;
  v31.receiver = self;
  v31.super_class = PLImageFormat;
  v19 = [(PLImageFormat *)&v31 init];
  v20 = v19;
  if (v19)
  {
    v19->_formatID = 0;
    v21 = [nameCopy copy];
    name = v20->_name;
    v20->_name = v21;

    v20->_size.width = width;
    v20->_size.height = height;
    v20->_isCropped = cropped;
    v20->_thumbnailKind = thumbnailKind;
    v20->_formatMode = mode;
    v20->_dimension = width;
    v20->_version = version;
    v20->_isAlwaysFullScreen = screen;
    if (thumbnailKind && (mode - 1) >= 3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v20 file:@"PLImageFormat.m" lineNumber:155 description:{@"Thumbnail image formats must be either square, aspect short, or aspect long"}];

      thumbnailKind = v20->_thumbnailKind;
    }

    if ((thumbnailKind - 3) <= 1)
    {
      v24 = width + 3;
      v25 = v24 <= 0 ? -(-v24 & 3) : v24 & 3;
      if (width != (v24 - v25) || ((v26 = height + 3, v26 <= 0) ? (v27 = -(-v26 & 3)) : (v27 = v26 & 3), height != (v26 - v27)))
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:v20 file:@"PLImageFormat.m" lineNumber:158 description:@"ASTC/BC7 format dimensions must be in even multiples of 4."];
      }
    }

    _tableClass = [(PLImageFormat *)v20 _tableClass];
    v20->_metalPixelFormat = [(objc_class *)_tableClass metalPixelFormat];
    v20->_colorSpaceName = [(objc_class *)_tableClass colorSpaceName];
  }

  return v20;
}

- (PLImageFormat)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-[PLAssetFormat init] unsupported" userInfo:0];
  objc_exception_throw(v2);
}

+ (PLImageFormat)formatWithID:(unsigned __int16)d
{
  dCopy = d;
  v25 = *MEMORY[0x1E69E9840];
  pl_dispatch_once(&formatWithID__onceToken, &__block_literal_global_265);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7063;
  v21 = __Block_byref_object_dispose__7064;
  v22 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __30__PLImageFormat_formatWithID___block_invoke_267;
  v15[3] = &unk_1E7930E08;
  v15[4] = &v17;
  v16 = dCopy;
  pl_dispatch_sync(formatWithID__readerWriterQueue, v15);
  if (!v18[5])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __30__PLImageFormat_formatWithID___block_invoke_2;
    v13[3] = &unk_1E7930E08;
    v13[4] = &v17;
    v14 = dCopy;
    pl_dispatch_barrier_sync(formatWithID__readerWriterQueue, v13);
    if (!v18[5])
    {
      _syncFormats = [self _syncFormats];
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:dCopy];
      v7 = [_syncFormats objectForKey:v6];
      v8 = v18[5];
      v18[5] = v7;
    }
  }

  v9 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    shortDescription = [v18[5] shortDescription];
    *buf = 138412290;
    v24 = shortDescription;
    _os_log_impl(&dword_1AA9BD000, v9, OS_LOG_TYPE_DEBUG, "PLImageFormat formatWithID returning: %@", buf, 0xCu);
  }

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __30__PLImageFormat_formatWithID___block_invoke_267(uint64_t a1)
{
  v2 = formatWithID__idsToFormats;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*(a1 + 40)];
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __30__PLImageFormat_formatWithID___block_invoke_2(uint64_t a1)
{
  v2 = formatWithID__idsToFormats;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*(a1 + 40)];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v7 = [[PLImageFormat alloc] initWithFormatID:*(a1 + 40)];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(*(*(a1 + 32) + 8) + 40);
    if (v10)
    {
      v11 = formatWithID__idsToFormats;
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*(a1 + 40)];
      [v11 setObject:v10 forKeyedSubscript:v12];
    }
  }
}

uint64_t __30__PLImageFormat_formatWithID___block_invoke()
{
  v0 = dispatch_queue_create("com.apple.photos.PLImageFormat", MEMORY[0x1E69E96A8]);
  v1 = formatWithID__readerWriterQueue;
  formatWithID__readerWriterQueue = v0;

  formatWithID__idsToFormats = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_syncFormats
{
  pl_dispatch_once(&_syncFormats_onceToken, &__block_literal_global_7068);
  v2 = _syncFormats_syncFormats;

  return v2;
}

void __29__PLImageFormat__syncFormats__block_invoke()
{
  v30 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = dlopen("/usr/lib/libMobileCheckpoint.dylib", 1);
  v2 = dlsym(v1, "MCCopyCheckpointValue");
  v3 = v2(@"ImageSpecifications");
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:@"/System/Library/CoreServices/Checkpoint.xml"];
    v4 = [v5 objectForKey:@"ImageSpecifications"];

    if (!v4)
    {
      goto LABEL_14;
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 1;
    v10 = *v26;
    do
    {
      v11 = 0;
      v24 = v9;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v6);
        }

        if ((v9 & 1) == 0)
        {
          v12 = *(*(&v25 + 1) + 8 * v11);
          v13 = [v12 objectForKey:@"RenderWidth"];
          v14 = [v13 intValue];
          v15 = [v12 objectForKey:@"RenderHeight"];
          v16 = [v15 intValue];

          v17 = [v12 objectForKey:@"Crop"];
          v18 = [v17 intValue] > 0;

          v19 = [[PLImageFormat alloc] initWithName:@"?" size:v18 isCropped:v14, v16];
          v20 = [v12 objectForKey:@"FormatId"];
          -[PLImageFormat setFormatID:](v19, "setFormatID:", [v20 intValue]);

          v21 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[PLImageFormat formatID](v19, "formatID")}];
          [v0 setObject:v19 forKeyedSubscript:v21];
        }

        LOBYTE(v9) = v9 ^ 1;
        ++v11;
      }

      while (v8 != v11);
      v9 = v24 ^ v8;
      v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

LABEL_14:
  v22 = [v0 copy];
  v23 = _syncFormats_syncFormats;
  _syncFormats_syncFormats = v22;
}

@end