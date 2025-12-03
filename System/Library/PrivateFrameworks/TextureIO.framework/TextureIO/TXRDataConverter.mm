@interface TXRDataConverter
+ (id)newImageFromSourceImage:(id)image newPixelFormat:(unint64_t)format bufferAllocator:(id)allocator multiplyAlpha:(BOOL)alpha gammaDegamma:(BOOL)degamma error:(id *)error;
+ (id)newPixelFormatSetForCGImage:(CGImage *)image displayGamut:(unint64_t)gamut options:(id)options;
@end

@implementation TXRDataConverter

+ (id)newImageFromSourceImage:(id)image newPixelFormat:(unint64_t)format bufferAllocator:(id)allocator multiplyAlpha:(BOOL)alpha gammaDegamma:(BOOL)degamma error:(id *)error
{
  degammaCopy = degamma;
  alphaCopy = alpha;
  imageCopy = image;
  allocatorCopy = allocator;
  if (alphaCopy)
  {
    pixelFormat = [imageCopy pixelFormat];
    alphaCopy = 1;
    if (pixelFormat > 129)
    {
      if (((pixelFormat - 130) > 0x35 || ((1 << (pixelFormat + 126)) & 0x30003C00C0003FLL) == 0) && (pixelFormat - 552) >= 2)
      {
        goto LABEL_91;
      }
    }

    else if (((pixelFormat - 65) > 0x3C || ((1 << (pixelFormat - 65)) & 0x1C07A000060183E1) == 0) && (pixelFormat > 0x2B || ((1 << pixelFormat) & 0xE0000000002) == 0))
    {
LABEL_91:
      alphaCopy = 0;
    }
  }

  if (format - 130 < 0xE && ((0x3C3Fu >> (format + 126)) & 1) != 0)
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    LOBYTE(v15) = 1;
    if (format - 150 >= 4 && (format & 0xFFFFFFFFFFFFFFF8) != 0xA0)
    {
      if (format - 170 >= 0x31)
      {
        LOBYTE(v15) = 0;
      }

      else
      {
        v15 = 0x1FF7C7FDF3F55uLL >> (format + 86);
      }
    }
  }

  pixelFormat2 = [imageCopy pixelFormat];
  v109 = allocatorCopy;
  formatCopy = format;
  v112 = imageCopy;
  v96 = alphaCopy;
  v97 = degammaCopy;
  v98 = v15;
  if (((pixelFormat2 - 130) > 0xD || ((1 << (pixelFormat2 + 126)) & 0x3C3F) == 0) && (pixelFormat2 - 150) >= 4 && (pixelFormat2 & 0xFFFFFFFFFFFFFFF8) != 0xA0 && ((pixelFormat2 - 170) > 0x30 || ((1 << (pixelFormat2 + 86)) & 0x1FF7C7FDF3F55) == 0))
  {
    v18 = imageCopy;
    goto LABEL_36;
  }

  v17 = imageCopy;
  v18 = v17;
  v19 = format & 0xFFFFFFFFFFFFFFFELL;
  if ((format & 0xFFFFFFFFFFFFFFFELL) == 0x46)
  {
    v20 = at_texel_format_rgba8_unorm;
    goto LABEL_28;
  }

  switch(v19)
  {
    case 0x50uLL:
      v20 = at_texel_format_bgra8_unorm;
LABEL_28:
      formatCopy2 = format;
      goto LABEL_29;
    case 0xAuLL:
      v20 = at_texel_format_l8_unorm;
      goto LABEL_28;
    case 0x1EuLL:
      v20 = at_texel_format_la8_unorm;
      goto LABEL_28;
  }

  if (isGammaEncoded([(TXRImageIndependent *)v17 pixelFormat]))
  {
    formatCopy2 = 71;
  }

  else
  {
    formatCopy2 = 70;
  }

  v20 = at_texel_format_rgba8_unorm;
LABEL_29:
  if ([(TXRImageIndependent *)v18 pixelFormat]== 204 || [(TXRImageIndependent *)v18 pixelFormat]== 186)
  {
    v22 = at_block_format_astc_4x4_ldr;
  }

  else
  {
    if ([(TXRImageIndependent *)v18 pixelFormat]!= 212 && [(TXRImageIndependent *)v18 pixelFormat]!= 194)
    {
      if (error)
      {
        _newTXRErrorWithCodeAndErrorString(0, @"Cannot decompress from specified format");
        *error = v39 = 0;
      }

      else
      {
        v39 = 0;
      }

      goto LABEL_75;
    }

    v22 = at_block_format_astc_8x8_ldr;
  }

  buffer = [(TXRImage *)v18 buffer];
  v23 = [buffer map];
  src.blocks = [v23 bytes];
  src.rowBytes = [(TXRImage *)v18 bytesPerRow];
  src.sliceBytes = [(TXRImage *)v18 bytesPerImage];
  [(TXRImageIndependent *)v18 dimensions];
  MemoryLayout = getMemoryLayout(formatCopy2, v24);
  v27 = v26;
  [(TXRImageIndependent *)v18 dimensions];
  v106 = v28;
  [(TXRImageIndependent *)v18 dimensions];
  v105 = v29;
  [(TXRImageIndependent *)v18 dimensions];
  v102 = v30;
  [(TXRImageIndependent *)v18 dimensions];
  v32 = [allocatorCopy newBufferWithLength:v27 * v31];
  v33 = [v32 map];
  *(&dest.validSize + 3) = 0;
  dest.texels = [v33 bytes];
  *&dest.validSize.x = __PAIR64__(v105, v106);
  dest.validSize.z = v102;
  dest.rowBytes = MemoryLayout;
  dest.sliceBytes = v27;
  v34 = at_encoder_create(v20, at_alpha_not_premultiplied, v22, at_alpha_not_premultiplied, 0);
  if (!v34)
  {
    +[TXRDataConverter newImageFromSourceImage:newPixelFormat:bufferAllocator:multiplyAlpha:gammaDegamma:error:];
  }

  v35 = v34;
  at_encoder_decompress_texels(v34, &src, &dest, at_flags_default);
  v36 = [TXRImageIndependent alloc];
  [(TXRImageIndependent *)v18 dimensions];
  v38 = [(TXRImageIndependent *)v36 initWithDimensions:formatCopy2 pixelFormat:[(TXRImageIndependent *)v18 alphaInfo] alphaInfo:MemoryLayout bytesPerRow:v27 bytesPerImage:v32 buffer:0 offset:v37];

  format = formatCopy;
  if (formatCopy2 != formatCopy)
  {

    v18 = v38;
    imageCopy = v112;
    allocatorCopy = v109;
    LOBYTE(v15) = v98;
LABEL_36:
    formatCopy11 = format;
    if (v15)
    {
      formatCopy11 = format;
      if ([(TXRImageIndependent *)v18 pixelFormat]!= 70)
      {
        formatCopy11 = format;
        if ([(TXRImageIndependent *)v18 pixelFormat]!= 80)
        {
          formatCopy11 = format;
          if ([(TXRImageIndependent *)v18 pixelFormat]!= 30)
          {
            formatCopy11 = format;
            if ([(TXRImageIndependent *)v18 pixelFormat]!= 10)
            {
              formatCopy11 = format;
              if ([(TXRImageIndependent *)v18 pixelFormat]!= 71)
              {
                formatCopy11 = format;
                if ([(TXRImageIndependent *)v18 pixelFormat]!= 81)
                {
                  formatCopy11 = format;
                  if ([(TXRImageIndependent *)v18 pixelFormat]!= 31)
                  {
                    formatCopy11 = format;
                    if ([(TXRImageIndependent *)v18 pixelFormat]!= 11)
                    {
                      if (isGammaEncoded(format))
                      {
                        formatCopy11 = 71;
                      }

                      else
                      {
                        formatCopy11 = 70;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    [imageCopy dimensions];
    v42 = getMemoryLayout(formatCopy11, v41);
    v44 = v43;
    [imageCopy dimensions];
    v46 = [allocatorCopy newBufferWithLength:v44 * v45];
    v47 = [TXRImageIndependent alloc];
    [imageCopy dimensions];
    v49 = -[TXRImageIndependent initWithDimensions:pixelFormat:alphaInfo:bytesPerRow:bytesPerImage:buffer:offset:](v47, "initWithDimensions:pixelFormat:alphaInfo:bytesPerRow:bytesPerImage:buffer:offset:", formatCopy11, [imageCopy alphaInfo], v42, v44, v46, 0, v48);
    v104 = v46;
    if ((v15 & (formatCopy11 == format)) == 0)
    {
      v101 = formatCopy11;
      v100 = [v46 map];
      bytes = [v100 bytes];
      buffer2 = [(TXRImage *)v18 buffer];
      v52 = [buffer2 map];

      v94 = v52;
      bytes2 = [v52 bytes];
      v54 = imageCopy;
      v55 = bytes;
      [v54 dimensions];
      if ((fastConvert(v96, v97, [(TXRImageIndependent *)v49 pixelFormat], [(TXRImage *)v49 bytesPerRow], [(TXRImage *)v49 bytesPerImage], bytes, [(TXRImageIndependent *)v18 pixelFormat], [(TXRImage *)v18 bytesPerRow], [(TXRImage *)v18 bytesPerImage], bytes2) & 1) == 0)
      {
        [v112 dimensions];
        v93 = v56;
        pixelFormat3 = [(TXRImageIndependent *)v49 pixelFormat];
        bytesPerRow = [(TXRImage *)v49 bytesPerRow];
        bytesPerImage = [(TXRImage *)v49 bytesPerImage];
        pixelFormat4 = [(TXRImageIndependent *)v18 pixelFormat];
        bytesPerRow2 = [(TXRImage *)v18 bytesPerRow];
        bytesPerImage2 = [(TXRImage *)v18 bytesPerImage];
        slowConvert(v96, v97, pixelFormat3, bytesPerRow, bytesPerImage, v55, pixelFormat4, bytesPerRow2, v93, v63, v64, v65, bytesPerImage2, bytes2);
      }

      imageCopy = v112;
      allocatorCopy = v109;
      format = formatCopy;
      LOBYTE(v15) = v98;
      v46 = v104;
      formatCopy11 = v101;
    }

    if ((v15 & 1) == 0)
    {
      v39 = v49;
LABEL_74:

      goto LABEL_75;
    }

    if (formatCopy11 == format)
    {
      v66 = allocatorCopy;
      v67 = v49;
      v68 = v18;
    }

    else
    {
      [imageCopy dimensions];
      v70 = getMemoryLayout(format, v69);
      v72 = v71;
      [imageCopy dimensions];
      v66 = allocatorCopy;
      v74 = v49;
      v75 = [allocatorCopy newBufferWithLength:v72 * v73];
      v76 = [TXRImageIndependent alloc];
      [imageCopy dimensions];
      v107 = v77;
      alphaInfo = [imageCopy alphaInfo];
      v79 = v76;
      format = formatCopy;
      v67 = [(TXRImageIndependent *)v79 initWithDimensions:formatCopy pixelFormat:alphaInfo alphaInfo:v70 bytesPerRow:v72 bytesPerImage:v75 buffer:0 offset:v107];
      v68 = v74;

      v49 = v74;
    }

    if ([(TXRImageIndependent *)v68 pixelFormat]== 70 || [(TXRImageIndependent *)v68 pixelFormat]== 71)
    {
      v80 = at_texel_format_rgba8_unorm;
    }

    else if ([(TXRImageIndependent *)v68 pixelFormat]== 80 || [(TXRImageIndependent *)v68 pixelFormat]== 81)
    {
      v80 = at_texel_format_bgra8_unorm;
    }

    else if ([(TXRImageIndependent *)v68 pixelFormat]== 30 || [(TXRImageIndependent *)v68 pixelFormat]== 31)
    {
      v80 = at_texel_format_la8_unorm;
    }

    else
    {
      if ([(TXRImageIndependent *)v68 pixelFormat]!= 10 && [(TXRImageIndependent *)v68 pixelFormat]!= 11)
      {
        +[TXRDataConverter newImageFromSourceImage:newPixelFormat:bufferAllocator:multiplyAlpha:gammaDegamma:error:];
      }

      v80 = at_texel_format_l8_unorm;
    }

    v81 = at_block_format_astc_4x4_ldr;
    if (format > 203)
    {
      if (format == 204)
      {
        goto LABEL_71;
      }

      if (format != 212)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (format == 186)
      {
        goto LABEL_71;
      }

      if (format != 194)
      {
LABEL_66:
        if ((format & 0xFFFFFFFFFFFFFFFELL) != 0x98)
        {
          if (error)
          {
            _newTXRErrorWithCodeAndErrorString(0, @"Cannot compress to specified format");
            *error = v39 = 0;
          }

          else
          {
            v39 = 0;
          }

LABEL_73:

          allocatorCopy = v66;
          v46 = v104;
          goto LABEL_74;
        }

        v81 = at_block_format_bc7;
LABEL_71:
        v82 = v49;
        v83 = at_encoder_create(v80, at_alpha_not_premultiplied, v81, at_alpha_not_premultiplied, 0);
        if (!v83)
        {
          +[TXRDataConverter newImageFromSourceImage:newPixelFormat:bufferAllocator:multiplyAlpha:gammaDegamma:error:];
        }

        v84 = v83;
        buffer3 = [(TXRImage *)v68 buffer];
        v86 = [buffer3 map];

        [imageCopy dimensions];
        v111 = v87;
        [imageCopy dimensions];
        v108 = v88;
        [imageCopy dimensions];
        v103 = v89;
        memset(&dest.validSize.z, 0, 24);
        dest.texels = [v86 bytes];
        *&dest.validSize.x = __PAIR64__(v108, v111);
        dest.validSize.z = v103;
        dest.rowBytes = [(TXRImage *)v68 bytesPerRow];
        dest.sliceBytes = [(TXRImage *)v68 bytesPerImage];
        buffer4 = [(TXRImage *)v67 buffer];
        v91 = [buffer4 map];

        src.blocks = [v91 bytes];
        src.rowBytes = [(TXRImage *)v67 bytesPerRow];
        src.sliceBytes = [(TXRImage *)v67 bytesPerImage];
        at_encoder_compress_texels(v84, &dest, &src, 2.0e-15, at_flags_default);
        v39 = v67;

        v49 = v82;
        goto LABEL_73;
      }
    }

    v81 = at_block_format_astc_8x8_ldr;
    goto LABEL_71;
  }

  v18 = v38;

  v39 = v18;
  imageCopy = v112;
  allocatorCopy = v109;
LABEL_75:

  return v39;
}

+ (id)newPixelFormatSetForCGImage:(CGImage *)image displayGamut:(unint64_t)gamut options:(id)options
{
  v7 = MEMORY[0x277CBEB40];
  optionsCopy = options;
  v9 = objc_alloc_init(v7);
  v10 = [TXRParserImageIO determineColorSpaceClass:image displayGamut:gamut options:optionsCopy];

  BitsPerPixel = CGImageGetBitsPerPixel(image);
  v12 = CGImageGetBitmapInfo(image) & 0x1F;
  if (v10 < 2)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:204];
    [v9 addObject:v17];

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:152];
    [v9 addObject:v18];

    if (BitsPerPixel != 8)
    {
      v15 = MEMORY[0x277CCABB0];
      v16 = 70;
      goto LABEL_15;
    }

    v15 = MEMORY[0x277CCABB0];
    if (v12 != 7)
    {
      v16 = 10;
LABEL_15:
      v21 = [v15 numberWithUnsignedInteger:v16];
      [v9 addObject:v21];

      return v9;
    }

LABEL_12:
    v16 = 1;
    goto LABEL_15;
  }

  if (v10 == 2)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:186];
    [v9 addObject:v19];

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:153];
    [v9 addObject:v20];

    v15 = MEMORY[0x277CCABB0];
    if (v12 != 7)
    {
      v16 = 71;
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v10 == 3)
  {
    if (v12 == 7)
    {
      v13 = 1;
    }

    else
    {
      v13 = 555;
    }

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
    [v9 addObject:v14];

    v15 = MEMORY[0x277CCABB0];
    v16 = 115;
    goto LABEL_15;
  }

  return v9;
}

@end