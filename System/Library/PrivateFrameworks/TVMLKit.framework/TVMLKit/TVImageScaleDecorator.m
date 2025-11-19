@interface TVImageScaleDecorator
- (BOOL)isEqual:(id)a3;
- (BOOL)needsAlphaForImage:(id)a3;
- (CGSize)_scaleToSizeAdjustedForUpscaling;
- (CGSize)scaleToSize;
- (TVCornerRadii)cornerRadii;
- (TVImageScaleDecorator)initWithScaleToSize:(CGSize)a3 cropToFit:(BOOL)a4;
- (TVImageScaleDecorator)initWithScaleToSize:(CGSize)a3 scaleMode:(int64_t)a4;
- (UIEdgeInsets)_paddingAdjustedForUpscaling;
- (UIEdgeInsets)padding;
- (double)_focusedSizeIncreaseFactor;
- (id)_imageFixedForRotation:(id)a3;
- (id)decorate:(id)a3 scaledWithSize:(CGSize)a4 croppedToFit:(BOOL)a5;
- (id)decoratorIdentifier;
- (unint64_t)hash;
- (void)_applyCornerMaskForRect:(CGRect)a3 toContext:(CGContext *)a4;
- (void)setCropToFit:(BOOL)a3;
@end

@implementation TVImageScaleDecorator

- (TVImageScaleDecorator)initWithScaleToSize:(CGSize)a3 scaleMode:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = TVImageScaleDecorator;
  result = [(TVImageScaleDecorator *)&v8 init];
  if (result)
  {
    result->_scaleToSize.width = width;
    result->_scaleToSize.height = height;
    result->_scaleMode = a4;
    *&result->_cornerRadii.topLeft = TVCornerRadiiZero;
    *&result->_cornerRadii.bottomLeft = *&qword_26CE880D8;
    result->_preservesAlpha = 1;
  }

  return result;
}

- (TVImageScaleDecorator)initWithScaleToSize:(CGSize)a3 cropToFit:(BOOL)a4
{
  if (a4)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return [(TVImageScaleDecorator *)self initWithScaleToSize:v4 scaleMode:a3.width, a3.height];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 scaleMode] == 2 && -[TVImageScaleDecorator scaleMode](self, "scaleMode") == 2)
  {
    v5 = [v4 bgColor];
    v6 = [(TVImageScaleDecorator *)self bgColor];
    v7 = v5 == v6;
  }

  else
  {
    v7 = 1;
  }

  [v4 cornerRadii];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(TVImageScaleDecorator *)self cornerRadii];
  if (v9 == v16 && ([(TVImageScaleDecorator *)self cornerRadii], v11 == v17) && ([(TVImageScaleDecorator *)self cornerRadii], v13 == v18))
  {
    [(TVImageScaleDecorator *)self cornerRadii];
    v20 = v15 == v19;
  }

  else
  {
    v20 = 0;
  }

  v45.receiver = self;
  v45.super_class = TVImageScaleDecorator;
  if (![(TVImageDecorator *)&v45 isEqual:v4])
  {
    goto LABEL_20;
  }

  [v4 scaleToSize];
  v22 = v21;
  v24 = v23;
  [(TVImageScaleDecorator *)self scaleToSize];
  v26 = 0;
  if (v22 == v27 && v24 == v25)
  {
    [v4 padding];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    [(TVImageScaleDecorator *)self padding];
    v26 = 0;
    if (v31 == v39 && v29 == v36 && v35 == v38 && v33 == v37)
    {
      v40 = [v4 scaleMode];
      if (v40 == [(TVImageScaleDecorator *)self scaleMode])
      {
        [v4 focusedSizeIncrease];
        v42 = v41;
        [(TVImageScaleDecorator *)self focusedSizeIncrease];
        if (v42 == v43)
        {
          v26 = v7 && v20;
          goto LABEL_21;
        }
      }

LABEL_20:
      v26 = 0;
    }
  }

LABEL_21:

  return v26;
}

- (unint64_t)hash
{
  v2 = MEMORY[0x277CCAE60];
  [(TVImageScaleDecorator *)self scaleToSize];
  v3 = [v2 valueWithCGSize:?];
  v4 = [v3 hash];

  return v4;
}

- (void)setCropToFit:(BOOL)a3
{
  v3 = 3;
  if (!a3)
  {
    v3 = 1;
  }

  self->_scaleMode = v3;
}

- (id)decoratorIdentifier
{
  v3 = [MEMORY[0x277CCAB68] string];
  width = self->_scaleToSize.width;
  if (width != 0.0)
  {
    height = self->_scaleToSize.height;
    if (height != 0.0)
    {
      v6 = width;
      v7 = height;
      v8 = [MEMORY[0x277D759A0] mainScreen];
      [v8 scale];
      [v3 appendFormat:@"%dx%d_%.0f", v6, v7, v9];

      if (!self->_preservesAlpha)
      {
        [v3 appendString:@"_noAlpha"];
      }

      scaleMode = self->_scaleMode;
      if (scaleMode == 2)
      {
        [v3 appendString:@"_fitBB"];
        bgColor = self->_bgColor;
        if (bgColor)
        {
          v40 = 0.0;
          v41 = 0.0;
          v38 = 0.0;
          v39 = 0.0;
          [(UIColor *)bgColor getRed:&v41 green:&v40 blue:&v39 alpha:&v38];
          v13 = &off_26CE87000;
          LODWORD(v13) = vcvtad_u64_f64(v41 * 255.0);
          LODWORD(v14) = vcvtad_u64_f64(v40 * 255.0);
          LODWORD(v15) = vcvtad_u64_f64(v39 * 255.0);
          v16 = v38;
          [v3 appendFormat:@"(%02X%02X%02X%.1f)", v13, v14, v15, v16];
        }
      }

      else
      {
        if (scaleMode == 4)
        {
          v11 = @"_fitHeight";
        }

        else
        {
          if (scaleMode != 3)
          {
            goto LABEL_13;
          }

          v11 = @"_fill";
        }

        [v3 appendString:v11];
      }
    }
  }

LABEL_13:
  if (![TVCornerUtilities radiiIsZero:self->_cornerRadii.topLeft, self->_cornerRadii.topRight, self->_cornerRadii.bottomLeft, self->_cornerRadii.bottomRight])
  {
    topLeft = self->_cornerRadii.topLeft;
    topRight = self->_cornerRadii.topRight;
    bottomLeft = self->_cornerRadii.bottomLeft;
    bottomRight = self->_cornerRadii.bottomRight;
    [v3 appendFormat:@"_br(%.f, %.f, %.f, %.f)", topLeft, topRight, bottomLeft, bottomRight];
  }

  [(TVImageScaleDecorator *)self padding];
  v22.f64[1] = v21;
  v24.f64[1] = v23;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v22, *MEMORY[0x277D768C8]), vceqq_f64(v24, *(MEMORY[0x277D768C8] + 16))))) & 1) == 0)
  {
    [(TVImageScaleDecorator *)self padding];
    v26 = v25;
    v27 = v26;
    [(TVImageScaleDecorator *)self padding];
    *&v28 = v28;
    v29 = *&v28;
    [(TVImageScaleDecorator *)self padding];
    v31 = v30;
    v32 = v31;
    [(TVImageScaleDecorator *)self padding];
    v34 = v33;
    [v3 appendFormat:@"_pad(%.f, %.f, %.f, %.f)", *&v27, *&v29, *&v32, v34];
  }

  if ([v3 length])
  {
    v35 = v3;
  }

  else
  {
    v35 = 0;
  }

  v36 = v35;

  return v35;
}

- (id)decorate:(id)a3 scaledWithSize:(CGSize)a4 croppedToFit:(BOOL)a5
{
  v5 = a5;
  height = a4.height;
  width = a4.width;
  v9 = a3;
  [(TVImageScaleDecorator *)self _scaleToSizeAdjustedForUpscaling];
  v11 = v10;
  v13 = v12;
  [(TVImageScaleDecorator *)self _paddingAdjustedForUpscaling];
  if (v11 != *MEMORY[0x277CBF3A8] || v13 != *(MEMORY[0x277CBF3A8] + 8))
  {
    v21 = v11 == width && v13 == height;
    if (!v21 || ((v22 = self->_scaleMode, v22 == 3) ? (v23 = !v5) : (v23 = 0), !v23 ? (v24 = v22 == 2) : (v24 = 1), !v24 ? (v25 = v22 == 4) : (v25 = 1), v25 || (v71.f64[0] = v14, v71.f64[1] = v15, v72.f64[0] = v16, v72.f64[1] = v18, (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v71, *MEMORY[0x277D768C8]), vceqq_f64(v72, *(MEMORY[0x277D768C8] + 16)))))) & 1) != 0)))
    {
      v83 = v15;
      v84 = v14;
      v86 = v11;
      v26 = [v9 orientation] >= 2 && objc_msgSend(v9, "orientation") < 9;
      [v9 pixelBounds];
      v28 = v27;
      v30 = v29;
      v31 = MEMORY[0x277CBF3A0];
      v32 = 0.0;
      v34 = v83;
      v33 = v84;
      if (v26)
      {
        v35 = [v9 orientation];
        v34 = v83;
        v33 = v84;
        if (v35 <= 4)
        {
          v36 = v30;
        }

        else
        {
          v36 = v28;
        }

        if (v35 > 4)
        {
          v28 = v30;
        }

        v30 = v36;
      }

      v37 = *v31;
      v38 = v31[1];
      v39 = v31[2];
      v40 = v31[3];
      v41 = v34 + 0.0;
      v42 = v33 + 0.0;
      scaleMode = self->_scaleMode;
      if (scaleMode <= 2)
      {
        if (scaleMode == 1)
        {
          v108.width = v28;
          v108.height = v30;
          v116.origin.x = v34 + 0.0;
          v116.origin.y = v33 + 0.0;
          v116.size.width = v11 - (v83 + v81);
          v116.size.height = v13 - (v84 + v82);
          *(&v39 - 2) = AVMakeRectWithAspectRatioInsideRect(v108, v116);
          v51 = v39;
          v13 = v40;
          v52 = *MEMORY[0x277CBF348];
          v32 = *(MEMORY[0x277CBF348] + 8);
          v38 = v32;
          v37 = *MEMORY[0x277CBF348];
LABEL_44:
          v113 = CGRectIntegral(*&v37);
          x = v113.origin.x;
          y = v113.origin.y;
          v58 = v113.size.width;
          v59 = v113.size.height;
          v113.origin.x = v52;
          v113.origin.y = v32;
          v113.size.width = v51;
          v113.size.height = v13;
          v114 = CGRectIntegral(v113);
          v60 = v114.origin.x;
          v61 = v114.origin.y;
          v62 = v114.size.width;
          v63 = v114.size.height;
          v64 = +[TVGraphicsImageRenderer formatWithCGImage:](TVGraphicsImageRenderer, "formatWithCGImage:", [v9 image]);
          v65 = [(TVImageScaleDecorator *)self needsAlphaForImage:v9];
          v66 = [(TVImageScaleDecorator *)self bgColor];
          v67 = v66;
          if (v65)
          {
            v68 = 1;
          }

          else
          {
            v68 = 0;
            if (self->_scaleMode == 2 && v66)
            {
              v105 = 0.0;
              [(UIColor *)self->_bgColor getRed:0 green:0 blue:0 alpha:&v105];
              v68 = v105 < 1.0;
            }
          }

          [v64 setOpaque:v68 ^ 1];
          v93[0] = MEMORY[0x277D85DD0];
          v93[1] = 3221225472;
          v93[2] = __62__TVImageScaleDecorator_decorate_scaledWithSize_croppedToFit___block_invoke;
          v93[3] = &unk_279D6E540;
          v93[4] = self;
          v95 = v60;
          v96 = v61;
          v97 = v62;
          v98 = v63;
          v103 = v68;
          v99 = x;
          v100 = y;
          v101 = v58;
          v102 = v59;
          v94 = v9;
          v104 = v26;
          v69 = [TVGraphicsImageRenderer imageWithSize:v64 format:v93 actions:v62, v63];
          v70 = +[TVImage imageWithCGImageRef:preserveAlpha:](TVImage, "imageWithCGImageRef:preserveAlpha:", [v69 CGImage], v68);

          goto LABEL_58;
        }

        if (scaleMode == 2)
        {
          v107.width = v28;
          v107.height = v30;
          v115.origin.x = v34 + 0.0;
          v115.origin.y = v33 + 0.0;
          v115.size.width = v11 - (v83 + v81);
          v115.size.height = v13 - (v84 + v82);
          *&v37 = AVMakeRectWithAspectRatioInsideRect(v107, v115);
        }

LABEL_43:
        v52 = 0.0;
        v51 = v86;
        goto LABEL_44;
      }

      if (scaleMode == 3)
      {
        v111.origin.x = v34 + 0.0;
        v111.origin.y = v33 + 0.0;
        v111.size.width = v11 - (v83 + v81);
        v111.size.height = v13 - (v84 + v82);
        v53 = CGRectGetWidth(v111);
        v85 = v13 - (v84 + v82);
        v112.size.height = v85;
        v54 = v53 / v28;
        v112.origin.x = v41;
        v112.origin.y = v42;
        v112.size.width = v86 - (v83 + v81);
        v55 = CGRectGetHeight(v112) / v30;
        if (v54 >= v55)
        {
          v55 = v54;
        }

        v46 = v28 * v55;
        v45 = v30 * v55;
        v47 = v41;
        v48 = v42;
        v49 = v86 - (v83 + v81);
        v50 = v85;
      }

      else
      {
        if (scaleMode != 4)
        {
          goto LABEL_43;
        }

        v109.origin.x = v34 + 0.0;
        v109.origin.y = v33 + 0.0;
        v109.size.width = v11 - (v83 + v81);
        v109.size.height = v13 - (v84 + v82);
        v44 = v28 * (CGRectGetHeight(v109) / v30);
        v110.origin.x = v41;
        v110.origin.y = v42;
        v110.size.width = v11 - (v83 + v81);
        v110.size.height = v13 - (v84 + v82);
        v45 = CGRectGetHeight(v110);
        v46 = v44;
        v47 = v41;
        v48 = v42;
        v49 = v11 - (v83 + v81);
        v50 = v13 - (v84 + v82);
      }

      [TVMLUtilities centerRect:0.0 inRect:0.0, v46, v45, v47, v48, v49, v50];
      goto LABEL_43;
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 && [TVCornerUtilities radiiIsZero:self->_cornerRadii.topLeft, self->_cornerRadii.topRight, self->_cornerRadii.bottomLeft, self->_cornerRadii.bottomRight])
  {
    v70 = v9;
    goto LABEL_59;
  }

  [v9 pixelBounds];
  v74 = v73;
  v76 = v75;
  v64 = +[TVGraphicsImageRenderer formatWithCGImage:](TVGraphicsImageRenderer, "formatWithCGImage:", [v9 image]);
  v77 = [(TVImageScaleDecorator *)self needsAlphaForImage:v9];
  [v64 setOpaque:v77 ^ 1];
  [v64 setScale:1.0];
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = __62__TVImageScaleDecorator_decorate_scaledWithSize_croppedToFit___block_invoke_2;
  v87[3] = &unk_279D6E568;
  v89 = 0;
  v90 = 0;
  v87[4] = self;
  v91 = v74;
  v92 = v76;
  v88 = v9;
  v78 = [TVGraphicsImageRenderer imageWithSize:v64 format:v87 actions:v74, v76];
  v79 = v78;
  if (v78)
  {
    v70 = +[TVImage imageWithCGImageRef:preserveAlpha:](TVImage, "imageWithCGImageRef:preserveAlpha:", [v78 CGImage], v77);
  }

  else
  {
    v70 = 0;
  }

LABEL_58:
LABEL_59:

  return v70;
}

void __62__TVImageScaleDecorator_decorate_scaledWithSize_croppedToFit___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  [*(a1 + 32) _applyCornerMaskForRect:objc_msgSend(v9 toContext:{"CGContext"), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  if (*(a1 + 112) != 1 || *(*(a1 + 32) + 16) == 2 && !CGRectEqualToRect(*(a1 + 48), *(a1 + 80)))
  {
    v3 = [*(a1 + 32) bgColor];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = [MEMORY[0x277D75348] whiteColor];
    }

    v6 = v5;

    [v6 setFill];
    UIRectFill(*(a1 + 48));
  }

  v7 = [*(a1 + 40) uiImage];
  if (*(a1 + 113) == 1)
  {
    v8 = [*(a1 + 32) _imageFixedForRotation:*(a1 + 40)];

    v7 = v8;
  }

  [v7 drawInRect:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) drawInContext:v9 imageRect:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
  }
}

void __62__TVImageScaleDecorator_decorate_scaledWithSize_croppedToFit___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) _applyCornerMaskForRect:objc_msgSend(v4 toContext:{"CGContext"), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v3 = [*(a1 + 40) uiImage];
  [v3 drawInRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];

  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) drawInContext:v4 imageRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  }
}

- (double)_focusedSizeIncreaseFactor
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  if ([v3 userInterfaceIdiom] == 2)
  {
    v4 = [(TVImageScaleDecorator *)self centerGrowth];

    result = 1.0;
    if (!v4)
    {
      [(TVImageScaleDecorator *)self _scaleToSizeAdjustedForUpscaling];
      v7 = v6;
      [(TVImageScaleDecorator *)self scaleToSize];
      return v7 / v8;
    }
  }

  else
  {

    return 1.0;
  }

  return result;
}

- (BOOL)needsAlphaForImage:(id)a3
{
  v4 = a3;
  if ([(TVImageScaleDecorator *)self preservesAlpha])
  {
    if ([v4 hasAlpha])
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      [(TVImageScaleDecorator *)self cornerRadii];
      v5 = ![TVCornerUtilities radiiIsZero:?];
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)_imageFixedForRotation:(id)a3
{
  v3 = a3;
  v4 = +[TVGraphicsImageRenderer formatWithCGImage:](TVGraphicsImageRenderer, "formatWithCGImage:", [v3 image]);
  [v4 setOpaque:{objc_msgSend(v3, "hasAlpha") ^ 1}];
  [v4 setScale:1.0];
  v5 = [v3 orientation];
  [v3 pixelBounds];
  v7 = v6;
  v9 = v8;
  [v3 pixelBounds];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __48__TVImageScaleDecorator__imageFixedForRotation___block_invoke;
  v17[3] = &unk_279D6E590;
  if (v5 <= 4)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  if (v5 <= 4)
  {
    v13 = v11;
  }

  else
  {
    v13 = v7;
  }

  v19 = v12;
  v20 = v13;
  v21 = v5;
  v22 = v7;
  v23 = v9;
  v18 = v3;
  v14 = v3;
  v15 = [TVGraphicsImageRenderer imageWithSize:v4 format:v17 actions:v12, v13];

  return v15;
}

void __48__TVImageScaleDecorator__imageFixedForRotation___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  CGContextSetInterpolationQuality(v3, kCGInterpolationHigh);
  v4 = 0.0;
  CGContextTranslateCTM(v3, 0.0, *(a1 + 48));
  CGContextScaleCTM(v3, 1.0, -1.0);
  v5 = *(a1 + 56);
  if (v5 <= 4)
  {
    switch(v5)
    {
      case 2:
        v6 = xmmword_26CE87A60;
        v7 = xmmword_26CE87A70;
        v4 = *(a1 + 64);
        goto LABEL_13;
      case 3:
        v6 = xmmword_26CE87A80;
        v7 = xmmword_26CE87A70;
        v4 = *(a1 + 64);
        v8 = *(a1 + 72);
        goto LABEL_17;
      case 4:
        v6 = xmmword_26CE87A80;
        v7 = xmmword_26CE87A50;
        v8 = *(a1 + 72);
        goto LABEL_17;
    }

    goto LABEL_14;
  }

  v6 = xmmword_26CE87A50;
  if (v5 > 6)
  {
    v7 = xmmword_26CE87A60;
    if (v5 == 7)
    {
LABEL_13:
      v8 = 0.0;
      goto LABEL_17;
    }

    if (v5 == 8)
    {
      v6 = xmmword_26CE87A70;
      v4 = *(a1 + 72);
      goto LABEL_13;
    }

LABEL_14:
    v7 = *MEMORY[0x277CBF2C0];
    v6 = *(MEMORY[0x277CBF2C0] + 16);
    v4 = *(MEMORY[0x277CBF2C0] + 32);
    v8 = *(MEMORY[0x277CBF2C0] + 40);
    goto LABEL_17;
  }

  if (v5 == 5)
  {
    v6 = xmmword_26CE87A70;
    v7 = xmmword_26CE87A80;
    v8 = *(a1 + 64);
    v4 = *(a1 + 72);
  }

  else
  {
    v7 = xmmword_26CE87A80;
    v8 = *(a1 + 64);
  }

LABEL_17:
  *&v12.a = v7;
  *&v12.c = v6;
  v12.tx = v4;
  v12.ty = v8;
  CGContextConcatCTM(v3, &v12);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = [*(a1 + 32) image];
  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v13.size.width = v9;
  v13.size.height = v10;
  CGContextDrawImage(v3, v13, v11);
}

- (CGSize)_scaleToSizeAdjustedForUpscaling
{
  [(TVImageScaleDecorator *)self scaleToSize];
  v5 = v4;
  v6 = v3;
  if (v4 > 0.0 && v3 > 0.0)
  {
    [(TVImageScaleDecorator *)self focusedSizeIncrease];
    v8 = v7;
    if ([(TVImageScaleDecorator *)self centerGrowth])
    {
      v6 = v6 + v8;
    }

    else
    {
      if (v5 <= v6)
      {
        v9 = v6;
      }

      else
      {
        v9 = v5;
      }

      v10 = (v9 + v8) / v9;
      v5 = floor(v5 * v10);
      v6 = floor(v6 * v10);
    }
  }

  v11 = v5;
  v12 = v6;
  result.height = v12;
  result.width = v11;
  return result;
}

- (UIEdgeInsets)_paddingAdjustedForUpscaling
{
  [(TVImageScaleDecorator *)self padding];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(TVImageScaleDecorator *)self _focusedSizeIncreaseFactor];
  if (v11 > 1.0)
  {
    v4 = floor(v4 * v11);
    v6 = floor(v6 * v11);
    v8 = floor(v8 * v11);
    v10 = floor(v10 * v11);
  }

  v12 = v4;
  v13 = v6;
  v14 = v8;
  v15 = v10;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (void)_applyCornerMaskForRect:(CGRect)a3 toContext:(CGContext *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(TVImageScaleDecorator *)self _focusedSizeIncreaseFactor];
  v10 = v9;
  [(TVImageScaleDecorator *)self cornerRadii];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if (![TVCornerUtilities radiiIsZero:?])
  {
    v19 = [TVCornerUtilities createPathForRadii:[(TVImageScaleDecorator *)self cornerContinuous] inRect:v10 * v12 isContinuous:v10 * v14, v10 * v16, v10 * v18, x, y, width, height];
    CGContextAddPath(a4, v19);
    CGPathRelease(v19);

    CGContextClip(a4);
  }
}

- (CGSize)scaleToSize
{
  width = self->_scaleToSize.width;
  height = self->_scaleToSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (TVCornerRadii)cornerRadii
{
  topLeft = self->_cornerRadii.topLeft;
  topRight = self->_cornerRadii.topRight;
  bottomLeft = self->_cornerRadii.bottomLeft;
  bottomRight = self->_cornerRadii.bottomRight;
  result.bottomRight = bottomRight;
  result.bottomLeft = bottomLeft;
  result.topRight = topRight;
  result.topLeft = topLeft;
  return result;
}

@end