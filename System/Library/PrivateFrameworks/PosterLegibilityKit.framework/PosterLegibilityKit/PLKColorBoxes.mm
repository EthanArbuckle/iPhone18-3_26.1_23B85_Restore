@interface PLKColorBoxes
+ (id)_mergeColor:(uint64_t)color withColor:(void *)withColor firstWeight:(void *)weight secondWeight:;
+ (id)colorBoxesForAverageColor:(id)color contrast:(double)contrast;
+ (id)colorBoxesForImage:(id)image;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToColorBoxes:(id)boxes;
- (PLKColorBoxes)initWithCoder:(id)coder;
- (UIColor)averageColor;
- (double)imageSize;
- (double)luma;
- (double)lumaInRect:(CGRect)rect;
- (double)rectForColorBoxAtRow:(uint64_t)row col:;
- (double)saturation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initWithColorBoxes:(uint64_t)boxes size:(uint64_t)size rowCount:(uint64_t)count columnCount:(char)columnCount totalContrast8:(char)contrast8 totalSaturation8:(uint64_t)saturation8 imageSize:(double)imageSize downsampledBoxSize:(double)self0 effectiveDownsampleFactor:(uint64_t)self1 pixelHeight:(uint64_t)self2 pixelWidth:(uint64_t)self3;
- (uint64_t)colorBoxAtRow:(uint64_t)row col:;
- (uint64_t)colorBoxesRowMajor;
- (uint64_t)columnCount;
- (uint64_t)downsampledBoxSize;
- (uint64_t)effectiveDownsampleFactor;
- (uint64_t)pixelHeight;
- (uint64_t)pixelWidth;
- (uint64_t)rowCount;
- (uint64_t)setTotalSaturation8:(uint64_t)result;
- (uint64_t)size;
- (uint64_t)totalContrast8;
- (uint64_t)totalSaturation8;
- (uint64_t)version;
- (unint64_t)hash;
- (void)_calculateMissingSaturationDataIfNeeded;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLKColorBoxes

+ (id)colorBoxesForImage:(id)image
{
  v119 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  v4 = imageCopy;
  if (!imageCopy)
  {
    goto LABEL_17;
  }

  [imageCopy size];
  v7 = v5;
  v8 = v6;
  v9 = v5 == *MEMORY[0x277CBF3A8] && v6 == *(MEMORY[0x277CBF3A8] + 8);
  if (v9 || (v5 <= 4.0 || v6 <= 4.0 ? (v10 = 1) : (v10 = 4), (v11 = vcvtpd_u64_f64(v5 / v10), v5 <= 4.0 || v6 <= 4.0) ? (v12 = 16) : (v12 = 4), (v13 = vcvtpd_u64_f64(v6 / v10), v11) ? (v14 = v13 == 0) : (v14 = 1), v14))
  {
LABEL_17:
    v15 = 0;
    goto LABEL_18;
  }

  if (v5 > 4.0 && v6 > 4.0)
  {
    v18 = 2;
  }

  else
  {
    v18 = 4;
  }

  if (((v12 - 1) & v13) != 0)
  {
    v19 = (v13 >> v18) + 1;
  }

  else
  {
    v19 = v13 >> v18;
  }

  v107 = v18;
  if (((v12 - 1) & v11) != 0)
  {
    v20 = (v11 >> v18) + 1;
  }

  else
  {
    v20 = v11 >> v18;
  }

  if (is_mul_ok(v19, v20))
  {
    v109 = v19 * v20;
    v104 = malloc_type_calloc(v19 * v20, 5uLL, 0x1000040957D8CC4uLL);
    if (v104)
    {
      v106 = v12;
      [v4 scale];
      v22 = v13;
      v24 = v11 / v23;
      [v4 scale];
      v26 = v13 / v25;
      plk_wrappedIOSurface = [v4 plk_wrappedIOSurface];
      v28 = 0.0;
      v21 = [v4 plk_cropImageWithRect:plk_wrappedIOSurface != 0 outputSize:0.0 canUseIOSurface:{0.0, v7, v8, v24, v26}];

      v100 = v13;
      AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
      space = CGColorSpaceCreateDeviceRGB();
      v29 = CGBitmapContextCreate(0, v11, v13, 8uLL, AlignedBytesPerRow, space, 0x4001u);
      CGContextSetInterpolationQuality(v29, kCGInterpolationLow);
      plk_CGImageBackedImage = [v21 plk_CGImageBackedImage];
      cGImage = [plk_CGImageBackedImage CGImage];
      v121.origin.x = 0.0;
      v121.origin.y = 0.0;
      v121.size.width = v11;
      v121.size.height = v22;
      CGContextDrawImage(v29, v121, cGImage);

      c = v29;
      Data = CGBitmapContextGetData(v29);
      v112 = v20;
      if (v19)
      {
        v102 = 0;
        v103 = v11;
        v94 = v21;
        v95 = v10;
        v101 = v19;
        v96 = v4;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v99 = Data + 1;
        v40 = AlignedBytesPerRow;
        do
        {
          if (v20)
          {
            v113 = 0;
            v41 = v102 << v107;
            if ((v102 << v107) + v106 >= v100)
            {
              v42 = v100 - (v102 << v107);
            }

            else
            {
              v42 = v106;
            }

            v43 = v42 + v41;
            v111 = v102 * v20;
            v105 = &v99[v40 * v41];
            do
            {
              if (v41 >= v43)
              {
                v45 = 0;
                v64 = 0.0;
                v65 = 0.0;
                v66 = 0.0;
                v67 = 0.0;
                v68 = 0.0;
                v69 = 0.0;
              }

              else
              {
                v44 = v41;
                v45 = 0;
                v46 = 0;
                v47 = 0;
                v48 = 0;
                v49 = 0;
                v50 = 0;
                v51 = 0;
                v52 = v113 << v107;
                if ((v113 << v107) + v106 >= v103)
                {
                  v53 = v103 - (v113 << v107);
                }

                else
                {
                  v53 = v106;
                }

                v54 = &v105[4 * v52];
                v55 = v44;
                do
                {
                  if (v52 < v53 + v52)
                  {
                    v45 += v53;
                    v56 = v54;
                    v57 = v53;
                    do
                    {
                      v58 = *(v56 - 1);
                      v51 += v58;
                      v59 = *v56;
                      v50 += v59;
                      v60 = v56[1];
                      v49 += v60;
                      v61 = (v58 * v58);
                      v48 += v61;
                      v62 = (v59 * v59);
                      v47 += v62;
                      v63 = (v60 * v60);
                      v46 += v63;
                      v33 += v58;
                      v34 += v59;
                      v39 += v60;
                      v38 += v61;
                      v37 += v62;
                      v36 += v63;
                      v56 += 4;
                      --v57;
                    }

                    while (v57);
                    v35 += v53;
                  }

                  ++v55;
                  v54 += v40;
                }

                while (v55 != v43);
                v64 = v51;
                v65 = v50;
                v66 = v49;
                v67 = v48;
                v68 = v47;
                v69 = v46;
              }

              v70 = contrast(v45, v64, v65, v66, v67, v68, v69);
              if (v113 + v111 >= v109)
              {
                v82 = PLKLogCommon();
                if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218752;
                  *&buf[4] = v113 + v111;
                  *&buf[12] = 2048;
                  *&buf[14] = v102;
                  v115 = 2048;
                  v116 = v113;
                  v117 = 2048;
                  v118 = v112;
                  _os_log_error_impl(&dword_21E5D5000, v82, OS_LOG_TYPE_ERROR, "Bad box index '%lu' from row %lu column %lu and column count %lu", buf, 0x2Au);
                }
              }

              else
              {
                v108 = v70;
                v71.f64[0] = v64;
                v72.f64[0] = v67;
                v73 = saturation(v45, v71, v65, v66, v72, v68, v69);
                v74 = 1.0 / v45;
                v75 = llround(v74 * v66);
                v76 = v75 & ~(v75 >> 63);
                if (v76 >= 255)
                {
                  LOBYTE(v76) = -1;
                }

                v77 = llround(v74 * v65);
                v78 = v77 & ~(v77 >> 63);
                if (v78 >= 255)
                {
                  LOBYTE(v78) = -1;
                }

                v79 = llround(v74 * v64);
                v80 = v79 & ~(v79 >> 63);
                if (v80 >= 255)
                {
                  LOBYTE(v80) = -1;
                }

                v81 = &v104[5 * v113 + 5 * v111];
                *v81 = v80;
                v81[1] = v78;
                v81[2] = v76;
                v81[3] = v108;
                v81[4] = v73;
              }

              v20 = v112;
              ++v113;
              v40 = AlignedBytesPerRow;
              v41 = v102 << v107;
            }

            while (v113 != v112);
          }

          ++v102;
        }

        while (v102 != v101);
        v83 = v33;
        v84 = v34;
        v28 = v39;
        v85 = v38;
        v86 = v37;
        v87 = v36;
        v4 = v96;
        v19 = v101;
        v21 = v94;
        v10 = v95;
        v11 = v103;
      }

      else
      {
        v35 = 0;
        v85 = 0.0;
        v86 = 0.0;
        v87 = 0.0;
        v84 = 0.0;
        v83 = 0.0;
      }

      v88 = contrast(v35, v83, v84, v28, v85, v86, v87);
      v89.f64[0] = v83;
      v90.f64[0] = v85;
      v91 = saturation(v35, v89, v84, v28, v90, v86, v87);
      CGContextRelease(c);
      CGColorSpaceRelease(space);
      v92 = [PLKColorBoxes alloc];
      if (v92)
      {
        *buf = v92;
        *&buf[8] = PLKColorBoxes;
        v93 = objc_msgSendSuper2(buf, sel_init);
        v15 = v93;
        if (v93)
        {
          *(v93 + 10) = v104;
          *(v93 + 11) = v19;
          *(v93 + 12) = v112;
          v93[40] = v88;
          v93[41] = v91;
          *(v93 + 1) = v7;
          *(v93 + 2) = v8;
          *(v93 + 6) = v106;
          *(v93 + 7) = v10;
          *(v93 + 8) = v100;
          *(v93 + 9) = v11;
          *(v93 + 104) = xmmword_21E5F3D80;
          v93[24] = 1;
        }

        goto LABEL_74;
      }
    }

    else
    {
      v21 = PLKLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        +[PLKColorBoxes colorBoxesForImage:];
      }
    }
  }

  else
  {
    v21 = PLKLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[PLKColorBoxes colorBoxesForImage:];
    }
  }

  v15 = 0;
LABEL_74:

LABEL_18:
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)colorBoxesForAverageColor:(id)color contrast:(double)contrast
{
  v49 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  v8 = colorCopy;
  if (colorCopy)
  {
    v41 = 0.0;
    v42 = 0.0;
    v39 = 0;
    v40 = 0.0;
    if ([colorCopy getRed:&v42 green:&v41 blue:&v40 alpha:&v39])
    {
      v9 = 0.0;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __52__PLKColorBoxes_colorBoxesForAverageColor_contrast___block_invoke;
      v35[3] = &unk_27835B890;
      v10 = v8;
      v36 = v10;
      v37 = a2;
      selfCopy = self;
      v11 = MEMORY[0x223D5FAC0](v35);
      v12 = (v11)[2](v11, @"red", v42 * 255.0);
      v13 = (v11)[2](v11, @"green", v41 * 255.0);
      v14 = (v11)[2](v11, @"blue", v40 * 255.0);
      v15 = (v11)[2](v11, @"contrast", fmin(fmax(contrast, 0.0), 1.0) * 255.0);
      v16 = fmax(v42, fmax(v41, v40));
      if (v16 > 0.0)
      {
        v9 = (v16 - fmin(v42, fmin(v41, v40))) / v16 * 255.0;
      }

      v17 = (v11)[2](v11, @"saturation", v9);
      v18 = malloc_type_calloc(1uLL, 5uLL, 0x1000040957D8CC4uLL);
      if (v18)
      {
        v19 = v18;
        *v18 = v12;
        v18[1] = v13;
        v18[2] = v14;
        v18[3] = v15;
        v18[4] = v17;
        v20 = PLKLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.receiver) = 67110144;
          HIDWORD(buf.receiver) = v12;
          LOWORD(buf.super_class) = 1024;
          *(&buf.super_class + 2) = v13;
          HIWORD(buf.super_class) = 1024;
          v44 = v14;
          v45 = 1024;
          v46 = v15;
          v47 = 1024;
          v48 = v17;
          _os_log_impl(&dword_21E5D5000, v20, OS_LOG_TYPE_INFO, "Created color boxes for solid color (R:%d G:%d B:%d C:%d S:%d)", &buf, 0x20u);
        }

        v21 = [PLKColorBoxes alloc];
        if (v21)
        {
          buf.receiver = v21;
          buf.super_class = PLKColorBoxes;
          v22 = objc_msgSendSuper2(&buf, sel_init);
          v23 = v22;
          if (v22)
          {
            *(v22 + 10) = v19;
            *(v22 + 88) = vdupq_n_s64(1uLL);
            v22[40] = v15;
            v22[41] = v17;
            __asm { FMOV            V0.2D, #16.0 }

            *(v22 + 8) = _Q0;
            *(v22 + 3) = xmmword_21E5F3D90;
            *(v22 + 4) = vdupq_n_s64(0x10uLL);
            *(v22 + 104) = xmmword_21E5F3D80;
            v22[24] = 1;
          }
        }

        else
        {
          v23 = 0;
        }

        v29 = v10;
        v30 = v23[4];
        v23[4] = v29;
      }

      else
      {
        v30 = PLKLogCommon();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          +[PLKColorBoxes colorBoxesForAverageColor:contrast:];
        }

        v23 = 0;
      }

      v32 = v36;
    }

    else
    {
      v32 = PLKLogCommon();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        +[PLKColorBoxes colorBoxesForAverageColor:contrast:];
      }

      v23 = 0;
    }
  }

  else
  {
    v31 = PLKLogCommon();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      +[PLKColorBoxes colorBoxesForAverageColor:contrast:];
    }

    v23 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v23;
}

uint64_t __52__PLKColorBoxes_colorBoxesForAverageColor_contrast___block_invoke(uint64_t a1, void *a2, double a3)
{
  v3 = llround(a3);
  if (v3 >= 0x100)
  {
    __52__PLKColorBoxes_colorBoxesForAverageColor_contrast___block_invoke_cold_1(a1, a2, v3);
  }

  if ((v3 & ~(v3 >> 63)) >= 255)
  {
    return 255;
  }

  else
  {
    return v3 & ~(v3 >> 63);
  }
}

- (UIColor)averageColor
{
  averageColor = self->_averageColor;
  if (!averageColor)
  {
    v4 = PLKAverageColorFromColorBoxes(self, *MEMORY[0x277CBF390], *(MEMORY[0x277CBF390] + 8), *(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24), 0.0);
    v5 = self->_averageColor;
    self->_averageColor = v4;

    averageColor = self->_averageColor;
  }

  v6 = averageColor;

  return v6;
}

- (double)saturation
{
  if (self->_version <= 1 && !self->_saturationCalculated)
  {
    [(PLKColorBoxes *)self _calculateMissingSaturationDataIfNeeded:v2];
  }

  LOBYTE(v2.f64[0]) = self->_totalSaturation8;
  v2.f64[0] = *&v2.f64[0] / 255.0;
  return v2.f64[0];
}

- (double)luma
{
  averageColor = [(PLKColorBoxes *)self averageColor];
  [averageColor _luminance];
  v4 = v3;

  return v4;
}

- (double)lumaInRect:(CGRect)rect
{
  v3 = [(PLKColorBoxes *)self averageColorInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  [v3 _luminance];
  v5 = v4;

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = 5 * self->_rowCount * self->_columnCount;
  v5 = malloc_type_malloc(v4, 0x1000040957D8CC4uLL);
  if (v5)
  {
    v6 = v5;
    memcpy(v5, self->_colorBoxesRowMajor, v4);
    columnCount = self->_columnCount;
    size = self->_size;
    rowCount = self->_rowCount;
    totalContrast8 = self->_totalContrast8;
    totalSaturation8 = self->_totalSaturation8;
    width = self->_imageSize.width;
    height = self->_imageSize.height;
    v16 = *&self->_downsampledBoxSize;
    v17 = *&self->_pixelHeight;
    result = [PLKColorBoxes alloc];
    if (result)
    {
      v18.receiver = result;
      v18.super_class = PLKColorBoxes;
      result = [(PLKColorBoxes *)&v18 init];
      if (result)
      {
        *(result + 10) = v6;
        *(result + 11) = rowCount;
        *(result + 12) = columnCount;
        *(result + 13) = size;
        *(result + 40) = totalContrast8;
        *(result + 41) = totalSaturation8;
        *(result + 1) = width;
        *(result + 2) = height;
        *(result + 3) = v16;
        *(result + 4) = v17;
        *(result + 14) = 2;
        *(result + 24) = 1;
      }
    }
  }

  else
  {
    v15 = PLKLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PLKColorBoxes copyWithZone:];
    }

    return 0;
  }

  return result;
}

- (PLKColorBoxes)initWithCoder:(id)coder
{
  v31 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = PLKColorBoxes;
  v5 = [(PLKColorBoxes *)&v28 init];
  if (v5)
  {
    [coderCopy decodeCGSizeForKey:@"imageSize"];
    v5->_imageSize.width = v6;
    v5->_imageSize.height = v7;
    v5->_downsampledBoxSize = [coderCopy decodeIntegerForKey:@"downsampledBoxSize"];
    v5->_effectiveDownsampleFactor = [coderCopy decodeIntegerForKey:@"effectiveDownsampleFactor"];
    v5->_pixelHeight = [coderCopy decodeIntegerForKey:@"pixelHeight"];
    v5->_pixelWidth = [coderCopy decodeIntegerForKey:@"pixelWidth"];
    v5->_rowCount = [coderCopy decodeIntegerForKey:@"rowCount"];
    v5->_columnCount = [coderCopy decodeIntegerForKey:@"columnCount"];
    v5->_size = [coderCopy decodeIntegerForKey:@"size"];
    v5->_totalContrast8 = [coderCopy decodeIntForKey:@"totalContrast8"];
    if ([coderCopy containsValueForKey:@"version"])
    {
      version = [coderCopy decodeIntegerForKey:@"version"];
      v5->_version = version;
    }

    else
    {
      v5->_version = 1;
      v9 = PLKLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_21E5D5000, v9, OS_LOG_TYPE_INFO, "Decoding legacy PLKColorBoxes without version info, assuming version 1", buf, 2u);
      }

      version = v5->_version;
    }

    if (version < 2)
    {
      v5->_totalSaturation8 = 0;
      v5->_saturationCalculated = 0;
      v10 = PLKLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_21E5D5000, v10, OS_LOG_TYPE_INFO, "Legacy PLKColorBoxes detected, saturation data will be calculated on demand", buf, 2u);
      }
    }

    else
    {
      v5->_totalSaturation8 = [coderCopy decodeIntForKey:@"totalSaturation8"];
      v5->_saturationCalculated = 1;
    }

    __n = 0;
    v11 = [coderCopy decodeBytesForKey:@"colorBoxesRowMajor" returnedLength:&__n];
    if (!v11)
    {
      v20 = PLKLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [PLKColorBoxes initWithCoder:];
      }

      goto LABEL_39;
    }

    v12 = v11;
    v13 = v5->_columnCount * v5->_rowCount;
    v14 = v5->_version;
    if (v14 != 2)
    {
      if (v14 == 1)
      {
        if (__n == 4 * v13)
        {
          v15 = malloc_type_calloc(v5->_columnCount * v5->_rowCount, 5uLL, 0x1000040957D8CC4uLL);
          if (v15)
          {
            if (v13)
            {
              p_var4 = &v15->var4;
              v17 = v13;
              do
              {
                v18 = *v12++;
                *(p_var4 - 1) = v18;
                *p_var4 = 0;
                p_var4 += 5;
                --v17;
              }

              while (v17);
            }

            v5->_colorBoxesRowMajor = v15;
            v19 = PLKLogCommon();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              v30 = v13;
              _os_log_impl(&dword_21E5D5000, v19, OS_LOG_TYPE_INFO, "Successfully converted %lu legacy color boxes to current format", buf, 0xCu);
            }

            goto LABEL_28;
          }

          v20 = PLKLogCommon();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [PLKColorBoxes initWithCoder:];
          }
        }

        else
        {
          v20 = PLKLogCommon();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [PLKColorBoxes initWithCoder:?];
          }
        }
      }

      else
      {
        v20 = PLKLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [(PLKColorBoxes *)&v5->_version initWithCoder:v20];
        }
      }

LABEL_39:

      v24 = 0;
      goto LABEL_40;
    }

    v21 = 5 * v13;
    if (__n != v21)
    {
      v20 = PLKLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [PLKColorBoxes initWithCoder:?];
      }

      goto LABEL_39;
    }

    v22 = malloc_type_malloc(v21, 0x1000040957D8CC4uLL);
    if (!v22)
    {
      v20 = PLKLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [PLKColorBoxes initWithCoder:];
      }

      goto LABEL_39;
    }

    v23 = v22;
    memcpy(v22, v12, __n);
    v5->_colorBoxesRowMajor = v23;
  }

LABEL_28:
  v24 = v5;
LABEL_40:

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (void)dealloc
{
  colorBoxesRowMajor = self->_colorBoxesRowMajor;
  if (colorBoxesRowMajor)
  {
    free(colorBoxesRowMajor);
  }

  v4.receiver = self;
  v4.super_class = PLKColorBoxes;
  [(PLKColorBoxes *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  coderCopy = coder;
  [coderCopy encodeCGSize:@"imageSize" forKey:{width, height}];
  [coderCopy encodeInteger:self->_downsampledBoxSize forKey:@"downsampledBoxSize"];
  [coderCopy encodeInteger:self->_effectiveDownsampleFactor forKey:@"effectiveDownsampleFactor"];
  [coderCopy encodeInteger:self->_pixelHeight forKey:@"pixelHeight"];
  [coderCopy encodeInteger:self->_pixelWidth forKey:@"pixelWidth"];
  [coderCopy encodeInteger:self->_rowCount forKey:@"rowCount"];
  [coderCopy encodeInteger:self->_columnCount forKey:@"columnCount"];
  [coderCopy encodeInteger:self->_size forKey:@"size"];
  [coderCopy encodeInt:self->_totalContrast8 forKey:@"totalContrast8"];
  [coderCopy encodeInt:self->_totalSaturation8 forKey:@"totalSaturation8"];
  [coderCopy encodeInteger:self->_version forKey:@"version"];
  [coderCopy encodeBytes:self->_colorBoxesRowMajor length:5 * self->_rowCount * self->_columnCount forKey:@"colorBoxesRowMajor"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PLKColorBoxes *)self isEqualToColorBoxes:v5];
  }

  return v6;
}

- (BOOL)isEqualToColorBoxes:(id)boxes
{
  boxesCopy = boxes;
  if (self == boxesCopy)
  {
    goto LABEL_22;
  }

  if (!boxesCopy || self->_size != boxesCopy->_size || (rowCount = self->_rowCount, rowCount != boxesCopy->_rowCount) || (columnCount = self->_columnCount, columnCount != boxesCopy->_columnCount) || self->_totalContrast8 != boxesCopy->_totalContrast8 || self->_totalSaturation8 != boxesCopy->_totalSaturation8 || self->_version != boxesCopy->_version)
  {
LABEL_21:
    v7 = 0;
    goto LABEL_23;
  }

  v7 = 0;
  if (self->_imageSize.width == boxesCopy->_imageSize.width)
  {
    v8 = *&boxesCopy->_imageSize.height;
    height = self->_imageSize.height;
    if (height == *&v8)
    {
      if (self->_downsampledBoxSize == boxesCopy->_downsampledBoxSize && self->_effectiveDownsampleFactor == boxesCopy->_effectiveDownsampleFactor && self->_pixelHeight == boxesCopy->_pixelHeight && self->_pixelWidth == boxesCopy->_pixelWidth)
      {
        v10 = columnCount * rowCount;
        if (v10)
        {
          p_var1 = &boxesCopy->_colorBoxesRowMajor->var1;
          v12 = &self->_colorBoxesRowMajor->var1;
          v7 = 1;
          while (*(v12 - 1) == *(p_var1 - 1))
          {
            v8.i32[0] = *v12;
            LODWORD(height) = *p_var1;
            *&height = vmovl_u8(*&height).u64[0] & 0xFF00FF00FF00FFLL;
            v8 = vceq_s16((vmovl_u8(v8).u64[0] & 0xFF00FF00FF00FFLL), *&height);
            if ((vminv_u16(v8) & 1) == 0)
            {
              break;
            }

            p_var1 += 5;
            v12 += 5;
            if (!--v10)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_21;
        }

LABEL_22:
        v7 = 1;
        goto LABEL_23;
      }

      goto LABEL_21;
    }
  }

LABEL_23:

  return v7;
}

- (unint64_t)hash
{
  columnCount = self->_columnCount;
  rowCount = self->_rowCount;
  v4 = rowCount - self->_size + 32 * self->_size;
  v5 = self->_totalContrast8 - (columnCount - v4 + 32 * v4) + 32 * (columnCount - v4 + 32 * v4);
  v6 = (self->_imageSize.width * 100.0) - (self->_totalSaturation8 - v5 + 32 * v5) + 32 * (self->_totalSaturation8 - v5 + 32 * v5);
  v7 = (self->_imageSize.height * 100.0) - v6 + 32 * v6;
  v8 = columnCount * rowCount;
  v9 = columnCount * rowCount / 0xA;
  if (v9 <= 1)
  {
    v9 = 1;
  }

  if (v8)
  {
    v10 = 0;
    p_var2 = &self->_colorBoxesRowMajor->var2;
    do
    {
      v12 = *(p_var2 - 2) - v7 + 32 * v7;
      v13 = *(p_var2 - 1) - v12 + 32 * v12;
      v7 = *p_var2 - v13 + 32 * v13;
      v10 += v9;
      p_var2 += 5 * v9;
    }

    while (v10 < v8);
  }

  v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
  return v14 ^ (v14 >> 31);
}

+ (id)_mergeColor:(uint64_t)color withColor:(void *)withColor firstWeight:(void *)weight secondWeight:
{
  withColorCopy = withColor;
  weightCopy = weight;
  objc_opt_self();
  if (!(withColorCopy | weightCopy))
  {
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    goto LABEL_16;
  }

  if (!withColorCopy)
  {
    goto LABEL_11;
  }

  if (weightCopy)
  {
    v21 = 0.0;
    v22 = 0.0;
    v19 = 0;
    v20 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    v16 = 0.0;
    if ([withColorCopy getRed:&v22 green:&v21 blue:&v20 alpha:{&v19, 0}])
    {
      if ([weightCopy getRed:&v18 green:&v17 blue:&v16 alpha:&v15])
      {
        systemGrayColor = [MEMORY[0x277D75348] colorWithRed:fmin(fmax(v18 * a2 + v22 * self green:0.0) blue:1.0) alpha:{fmin(fmax(v17 * a2 + v21 * self, 0.0), 1.0), fmin(fmax(v16 * a2 + v20 * self, 0.0), 1.0), 1.0}];
        goto LABEL_16;
      }

      v12 = PLKLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[PLKColorBoxes _mergeColor:withColor:firstWeight:secondWeight:];
      }

      goto LABEL_15;
    }

    v11 = PLKLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[PLKColorBoxes _mergeColor:withColor:firstWeight:secondWeight:];
    }

LABEL_11:
    systemGrayColor = weightCopy;
    goto LABEL_16;
  }

LABEL_15:
  systemGrayColor = withColorCopy;
LABEL_16:
  v13 = systemGrayColor;

  return v13;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendPointer:self->_colorBoxesRowMajor withName:@"Color boxes"];
  v5 = [v3 appendInteger:self->_size withName:@"Size"];
  v6 = [v3 appendInteger:self->_rowCount withName:@"Rows"];
  v7 = [v3 appendInteger:self->_columnCount withName:@"Columns"];
  v8 = [v3 appendInteger:self->_totalContrast8 withName:@"Contrast"];
  v9 = [v3 appendInteger:self->_totalSaturation8 withName:@"Saturation"];
  v10 = [v3 appendInteger:self->_version withName:@"Version"];
  build = [v3 build];

  return build;
}

- (id)initWithColorBoxes:(uint64_t)boxes size:(uint64_t)size rowCount:(uint64_t)count columnCount:(char)columnCount totalContrast8:(char)contrast8 totalSaturation8:(uint64_t)saturation8 imageSize:(double)imageSize downsampledBoxSize:(double)self0 effectiveDownsampleFactor:(uint64_t)self1 pixelHeight:(uint64_t)self2 pixelWidth:(uint64_t)self3
{
  if (result)
  {
    v22.receiver = result;
    v22.super_class = PLKColorBoxes;
    result = objc_msgSendSuper2(&v22, sel_init);
    if (result)
    {
      *(result + 10) = a2;
      *(result + 11) = size;
      *(result + 12) = count;
      *(result + 13) = boxes;
      *(result + 40) = columnCount;
      *(result + 41) = contrast8;
      *(result + 1) = imageSize;
      *(result + 2) = boxSize;
      *(result + 6) = saturation8;
      *(result + 7) = factor;
      *(result + 8) = height;
      *(result + 9) = width;
      *(result + 14) = 2;
      *(result + 24) = 1;
    }
  }

  return result;
}

- (void)_calculateMissingSaturationDataIfNeeded
{
  if (self && (*(self + 24) & 1) == 0)
  {
    v6 = 0;
    v7 = *(self + 96) * *(self + 88);
    if (v7)
    {
      v8 = (*(self + 80) + 2);
      v9 = *(self + 96) * *(self + 88);
      do
      {
        LOBYTE(a2.f64[0]) = *(v8 - 2);
        a2.f64[0] = *&a2.f64[0];
        LOBYTE(a3) = *(v8 - 1);
        LOBYTE(a4) = *v8;
        a5.f64[0] = a2.f64[0] * a2.f64[0];
        v10 = saturation(1uLL, a2, *&a3, *&a4, a5, *&a3 * *&a3, *&a4 * *&a4);
        v8[2] = v10;
        v6 += v10;
        v8 += 5;
        --v9;
      }

      while (v9);
    }

    *(self + 41) = v6 / v7;
    *(self + 24) = 1;
    v11 = PLKLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_21E5D5000, v11, OS_LOG_TYPE_INFO, "Calculated approximate saturation data for legacy color boxes", v12, 2u);
    }
  }
}

- (double)rectForColorBoxAtRow:(uint64_t)row col:
{
  if (!self)
  {
    return 0.0;
  }

  v3 = self[6];
  if ((v3 * a2 + v3) < self[8])
  {
    v4 = self[6];
  }

  self[9];
  return (self[7] * v3 * row);
}

- (uint64_t)colorBoxAtRow:(uint64_t)row col:
{
  if (result)
  {
    return *(result + 80) + 5 * row + 5 * *(result + 96) * a2;
  }

  return result;
}

- (uint64_t)size
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

- (uint64_t)rowCount
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

- (uint64_t)columnCount
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

- (uint64_t)totalContrast8
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)totalSaturation8
{
  if (result)
  {
    return *(result + 41);
  }

  return result;
}

- (uint64_t)version
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

- (double)imageSize
{
  if (!self)
  {
    return 0.0;
  }

  result = *(self + 8);
  v2 = *(self + 16);
  return result;
}

- (uint64_t)downsampledBoxSize
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (uint64_t)effectiveDownsampleFactor
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (uint64_t)pixelHeight
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (uint64_t)pixelWidth
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

- (uint64_t)colorBoxesRowMajor
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

- (uint64_t)setTotalSaturation8:(uint64_t)result
{
  if (result)
  {
    *(result + 41) = a2;
  }

  return result;
}

+ (void)colorBoxesForImage:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_21E5D5000, v0, v1, "Failed to allocate color box buffer with row count %lu column count %lu", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)colorBoxesForImage:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_21E5D5000, v0, v1, "Detected overflow trying to multiply row count %lu with column count %lu", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

void __52__PLKColorBoxes_colorBoxesForAverageColor_contrast___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCACA8];
  v7 = *(a1 + 32);
  v8 = v7;
  v9 = a2;
  ColorSpace = CGColorGetColorSpace([v7 CGColor]);
  v11 = [v6 stringWithFormat:@"%@ component out of bounds. value: %lu, color: %@, colorSpace: %@", v9, a3, v7, CGColorSpaceGetName(ColorSpace)];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    v13 = NSStringFromSelector(*(a1 + 40));
    v14 = *(a1 + 48);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = *(a1 + 48);
    *buf = 138544642;
    v19 = v13;
    v20 = 2114;
    v21 = v16;
    v22 = 2048;
    v23 = v17;
    v24 = 2114;
    v25 = @"PLKColorBoxes.m";
    v26 = 1024;
    v27 = 447;
    v28 = 2114;
    v29 = v11;
    _os_log_fault_impl(&dword_21E5D5000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)initWithCoder:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3(&dword_21E5D5000, v2, v3, "Color boxes data length mismatch for v2: expected %lu, got %lu", v5, v6);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)initWithCoder:(uint64_t *)a1 .cold.3(uint64_t *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3(&dword_21E5D5000, v2, v3, "Color boxes data length mismatch for v1: expected %lu, got %lu", v5, v6);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)initWithCoder:(uint64_t *)a1 .cold.5(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_error_impl(&dword_21E5D5000, a2, OS_LOG_TYPE_ERROR, "Unsupported PLKColorBoxes version: %ld", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end