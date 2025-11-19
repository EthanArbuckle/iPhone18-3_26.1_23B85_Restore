@interface TXRDataConverter
+ (id)newImageFromSourceImage:(id)a3 newPixelFormat:(unint64_t)a4 bufferAllocator:(id)a5 multiplyAlpha:(BOOL)a6 gammaDegamma:(BOOL)a7 error:(id *)a8;
+ (id)newPixelFormatSetForCGImage:(CGImage *)a3 displayGamut:(unint64_t)a4 options:(id)a5;
@end

@implementation TXRDataConverter

+ (id)newImageFromSourceImage:(id)a3 newPixelFormat:(unint64_t)a4 bufferAllocator:(id)a5 multiplyAlpha:(BOOL)a6 gammaDegamma:(BOOL)a7 error:(id *)a8
{
  v8 = a7;
  v9 = a6;
  v12 = a3;
  v13 = a5;
  if (v9)
  {
    v14 = [v12 pixelFormat];
    v9 = 1;
    if (v14 > 129)
    {
      if (((v14 - 130) > 0x35 || ((1 << (v14 + 126)) & 0x30003C00C0003FLL) == 0) && (v14 - 552) >= 2)
      {
        goto LABEL_91;
      }
    }

    else if (((v14 - 65) > 0x3C || ((1 << (v14 - 65)) & 0x1C07A000060183E1) == 0) && (v14 > 0x2B || ((1 << v14) & 0xE0000000002) == 0))
    {
LABEL_91:
      v9 = 0;
    }
  }

  if (a4 - 130 < 0xE && ((0x3C3Fu >> (a4 + 126)) & 1) != 0)
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    LOBYTE(v15) = 1;
    if (a4 - 150 >= 4 && (a4 & 0xFFFFFFFFFFFFFFF8) != 0xA0)
    {
      if (a4 - 170 >= 0x31)
      {
        LOBYTE(v15) = 0;
      }

      else
      {
        v15 = 0x1FF7C7FDF3F55uLL >> (a4 + 86);
      }
    }
  }

  v16 = [v12 pixelFormat];
  v109 = v13;
  v110 = a4;
  v112 = v12;
  v96 = v9;
  v97 = v8;
  v98 = v15;
  if (((v16 - 130) > 0xD || ((1 << (v16 + 126)) & 0x3C3F) == 0) && (v16 - 150) >= 4 && (v16 & 0xFFFFFFFFFFFFFFF8) != 0xA0 && ((v16 - 170) > 0x30 || ((1 << (v16 + 86)) & 0x1FF7C7FDF3F55) == 0))
  {
    v18 = v12;
    goto LABEL_36;
  }

  v17 = v12;
  v18 = v17;
  v19 = a4 & 0xFFFFFFFFFFFFFFFELL;
  if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 0x46)
  {
    v20 = at_texel_format_rgba8_unorm;
    goto LABEL_28;
  }

  switch(v19)
  {
    case 0x50uLL:
      v20 = at_texel_format_bgra8_unorm;
LABEL_28:
      v21 = a4;
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
    v21 = 71;
  }

  else
  {
    v21 = 70;
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
      if (a8)
      {
        _newTXRErrorWithCodeAndErrorString(0, @"Cannot decompress from specified format");
        *a8 = v39 = 0;
      }

      else
      {
        v39 = 0;
      }

      goto LABEL_75;
    }

    v22 = at_block_format_astc_8x8_ldr;
  }

  v99 = [(TXRImage *)v18 buffer];
  v23 = [v99 map];
  src.blocks = [v23 bytes];
  src.rowBytes = [(TXRImage *)v18 bytesPerRow];
  src.sliceBytes = [(TXRImage *)v18 bytesPerImage];
  [(TXRImageIndependent *)v18 dimensions];
  MemoryLayout = getMemoryLayout(v21, v24);
  v27 = v26;
  [(TXRImageIndependent *)v18 dimensions];
  v106 = v28;
  [(TXRImageIndependent *)v18 dimensions];
  v105 = v29;
  [(TXRImageIndependent *)v18 dimensions];
  v102 = v30;
  [(TXRImageIndependent *)v18 dimensions];
  v32 = [v13 newBufferWithLength:v27 * v31];
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
  v38 = [(TXRImageIndependent *)v36 initWithDimensions:v21 pixelFormat:[(TXRImageIndependent *)v18 alphaInfo] alphaInfo:MemoryLayout bytesPerRow:v27 bytesPerImage:v32 buffer:0 offset:v37];

  a4 = v110;
  if (v21 != v110)
  {

    v18 = v38;
    v12 = v112;
    v13 = v109;
    LOBYTE(v15) = v98;
LABEL_36:
    v40 = a4;
    if (v15)
    {
      v40 = a4;
      if ([(TXRImageIndependent *)v18 pixelFormat]!= 70)
      {
        v40 = a4;
        if ([(TXRImageIndependent *)v18 pixelFormat]!= 80)
        {
          v40 = a4;
          if ([(TXRImageIndependent *)v18 pixelFormat]!= 30)
          {
            v40 = a4;
            if ([(TXRImageIndependent *)v18 pixelFormat]!= 10)
            {
              v40 = a4;
              if ([(TXRImageIndependent *)v18 pixelFormat]!= 71)
              {
                v40 = a4;
                if ([(TXRImageIndependent *)v18 pixelFormat]!= 81)
                {
                  v40 = a4;
                  if ([(TXRImageIndependent *)v18 pixelFormat]!= 31)
                  {
                    v40 = a4;
                    if ([(TXRImageIndependent *)v18 pixelFormat]!= 11)
                    {
                      if (isGammaEncoded(a4))
                      {
                        v40 = 71;
                      }

                      else
                      {
                        v40 = 70;
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

    [v12 dimensions];
    v42 = getMemoryLayout(v40, v41);
    v44 = v43;
    [v12 dimensions];
    v46 = [v13 newBufferWithLength:v44 * v45];
    v47 = [TXRImageIndependent alloc];
    [v12 dimensions];
    v49 = -[TXRImageIndependent initWithDimensions:pixelFormat:alphaInfo:bytesPerRow:bytesPerImage:buffer:offset:](v47, "initWithDimensions:pixelFormat:alphaInfo:bytesPerRow:bytesPerImage:buffer:offset:", v40, [v12 alphaInfo], v42, v44, v46, 0, v48);
    v104 = v46;
    if ((v15 & (v40 == a4)) == 0)
    {
      v101 = v40;
      v100 = [v46 map];
      v50 = [v100 bytes];
      v51 = [(TXRImage *)v18 buffer];
      v52 = [v51 map];

      v94 = v52;
      v53 = [v52 bytes];
      v54 = v12;
      v55 = v50;
      [v54 dimensions];
      if ((fastConvert(v96, v97, [(TXRImageIndependent *)v49 pixelFormat], [(TXRImage *)v49 bytesPerRow], [(TXRImage *)v49 bytesPerImage], v50, [(TXRImageIndependent *)v18 pixelFormat], [(TXRImage *)v18 bytesPerRow], [(TXRImage *)v18 bytesPerImage], v53) & 1) == 0)
      {
        [v112 dimensions];
        v93 = v56;
        v57 = [(TXRImageIndependent *)v49 pixelFormat];
        v58 = [(TXRImage *)v49 bytesPerRow];
        v59 = [(TXRImage *)v49 bytesPerImage];
        v60 = [(TXRImageIndependent *)v18 pixelFormat];
        v61 = [(TXRImage *)v18 bytesPerRow];
        v62 = [(TXRImage *)v18 bytesPerImage];
        slowConvert(v96, v97, v57, v58, v59, v55, v60, v61, v93, v63, v64, v65, v62, v53);
      }

      v12 = v112;
      v13 = v109;
      a4 = v110;
      LOBYTE(v15) = v98;
      v46 = v104;
      v40 = v101;
    }

    if ((v15 & 1) == 0)
    {
      v39 = v49;
LABEL_74:

      goto LABEL_75;
    }

    if (v40 == a4)
    {
      v66 = v13;
      v67 = v49;
      v68 = v18;
    }

    else
    {
      [v12 dimensions];
      v70 = getMemoryLayout(a4, v69);
      v72 = v71;
      [v12 dimensions];
      v66 = v13;
      v74 = v49;
      v75 = [v13 newBufferWithLength:v72 * v73];
      v76 = [TXRImageIndependent alloc];
      [v12 dimensions];
      v107 = v77;
      v78 = [v12 alphaInfo];
      v79 = v76;
      a4 = v110;
      v67 = [(TXRImageIndependent *)v79 initWithDimensions:v110 pixelFormat:v78 alphaInfo:v70 bytesPerRow:v72 bytesPerImage:v75 buffer:0 offset:v107];
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
    if (a4 > 203)
    {
      if (a4 == 204)
      {
        goto LABEL_71;
      }

      if (a4 != 212)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (a4 == 186)
      {
        goto LABEL_71;
      }

      if (a4 != 194)
      {
LABEL_66:
        if ((a4 & 0xFFFFFFFFFFFFFFFELL) != 0x98)
        {
          if (a8)
          {
            _newTXRErrorWithCodeAndErrorString(0, @"Cannot compress to specified format");
            *a8 = v39 = 0;
          }

          else
          {
            v39 = 0;
          }

LABEL_73:

          v13 = v66;
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
        v85 = [(TXRImage *)v68 buffer];
        v86 = [v85 map];

        [v12 dimensions];
        v111 = v87;
        [v12 dimensions];
        v108 = v88;
        [v12 dimensions];
        v103 = v89;
        memset(&dest.validSize.z, 0, 24);
        dest.texels = [v86 bytes];
        *&dest.validSize.x = __PAIR64__(v108, v111);
        dest.validSize.z = v103;
        dest.rowBytes = [(TXRImage *)v68 bytesPerRow];
        dest.sliceBytes = [(TXRImage *)v68 bytesPerImage];
        v90 = [(TXRImage *)v67 buffer];
        v91 = [v90 map];

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
  v12 = v112;
  v13 = v109;
LABEL_75:

  return v39;
}

+ (id)newPixelFormatSetForCGImage:(CGImage *)a3 displayGamut:(unint64_t)a4 options:(id)a5
{
  v7 = MEMORY[0x277CBEB40];
  v8 = a5;
  v9 = objc_alloc_init(v7);
  v10 = [TXRParserImageIO determineColorSpaceClass:a3 displayGamut:a4 options:v8];

  BitsPerPixel = CGImageGetBitsPerPixel(a3);
  v12 = CGImageGetBitmapInfo(a3) & 0x1F;
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