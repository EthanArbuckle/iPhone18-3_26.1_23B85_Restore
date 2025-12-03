@interface PLKShadowDescriptor
+ (id)shadowWithRadius:(double)radius offset:(CGSize)offset alpha:(double)alpha;
+ (id)shadowWithRadius:(double)radius offset:(CGSize)offset alpha:(double)alpha strength:(double)strength;
+ (void)classicDrawShadows:(id)shadows renderScale:(double)scale color:(id)color context:(id)context;
+ (void)drawShadows:(id)shadows forImage:(id)image contentRect:(CGRect)rect renderScale:(double)scale color:(id)color;
+ (void)drawShadows:(id)shadows renderScale:(double)scale color:(id)color context:(id)context;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToShadow:(id)shadow;
- (CGSize)offset;
- (PLKShadowDescriptor)init;
- (PLKShadowDescriptor)initWithCoder:(id)coder;
- (PLKShadowDescriptor)initWithRadius:(double)radius offset:(CGSize)offset alpha:(double)alpha strength:(double)strength;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLKShadowDescriptor

- (CGSize)offset
{
  width = self->_offset.width;
  height = self->_offset.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (id)shadowWithRadius:(double)radius offset:(CGSize)offset alpha:(double)alpha strength:(double)strength
{
  v6 = [[self alloc] initWithRadius:radius offset:offset.width alpha:offset.height strength:{alpha, strength}];

  return v6;
}

+ (id)shadowWithRadius:(double)radius offset:(CGSize)offset alpha:(double)alpha
{
  v5 = [[self alloc] initWithRadius:radius offset:offset.width alpha:offset.height strength:{alpha, 1.0}];

  return v5;
}

- (PLKShadowDescriptor)init
{
  [(PLKShadowDescriptor *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PLKShadowDescriptor)initWithRadius:(double)radius offset:(CGSize)offset alpha:(double)alpha strength:(double)strength
{
  height = offset.height;
  width = offset.width;
  v12.receiver = self;
  v12.super_class = PLKShadowDescriptor;
  result = [(PLKShadowDescriptor *)&v12 init];
  if (result)
  {
    result->_offset.width = width;
    result->_offset.height = height;
    result->_radius = radius;
    result->_alpha = alpha;
    result->_strength = strength;
  }

  return result;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PLKShadowDescriptor *)self isEqualToShadow:v5];
  }

  return v6;
}

- (BOOL)isEqualToShadow:(id)shadow
{
  shadowCopy = shadow;
  v5 = shadowCopy;
  if (self == shadowCopy)
  {
    v12 = 1;
  }

  else if (shadowCopy && ([(PLKShadowDescriptor *)shadowCopy radius], [(PLKShadowDescriptor *)self radius], BSFloatEqualToFloat()) && ([(PLKShadowDescriptor *)v5 alpha], [(PLKShadowDescriptor *)self alpha], BSFloatEqualToFloat()) && ([(PLKShadowDescriptor *)v5 strength], [(PLKShadowDescriptor *)self strength], BSFloatEqualToFloat()))
  {
    [(PLKShadowDescriptor *)v5 offset];
    v7 = v6;
    v9 = v8;
    [(PLKShadowDescriptor *)self offset];
    v12 = v9 == v11 && v7 == v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (void)drawShadows:(id)shadows renderScale:(double)scale color:(id)color context:(id)context
{
  shadowsCopy = shadows;
  colorCopy = color;
  contextCopy = context;
  v13 = contextCopy;
  if (colorCopy)
  {
    v14 = colorCopy;
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __61__PLKShadowDescriptor_drawShadows_renderScale_color_context___block_invoke;
    v16[3] = &unk_27835B760;
    v6 = &v17;
    v17 = contextCopy;
    v14 = __61__PLKShadowDescriptor_drawShadows_renderScale_color_context___block_invoke(v16);
  }

  currentImage = [v13 currentImage];
  [v13 contentRect];
  [self drawShadows:shadowsCopy forImage:currentImage contentRect:v14 renderScale:? color:?];

  if (!colorCopy)
  {
  }
}

id __61__PLKShadowDescriptor_drawShadows_renderScale_color_context___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) format];
  v2 = [v1 contextType];

  if (v2 - 2 >= 3)
  {
    if (v2 <= 1)
    {
      v3 = [MEMORY[0x277D75348] blackColor];
    }
  }

  else
  {
    v3 = [MEMORY[0x277D75348] whiteColor];
  }

  return v3;
}

+ (void)drawShadows:(id)shadows forImage:(id)image contentRect:(CGRect)rect renderScale:(double)scale color:(id)color
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v85 = *MEMORY[0x277D85DE8];
  shadowsCopy = shadows;
  imageCopy = image;
  colorCopy = color;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v17 = shadowsCopy;
  if ([v17 count] == 1)
  {
  }

  else
  {
    firstObject = [v17 firstObject];
    [firstObject strength];

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v77 objects:v84 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v78;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v78 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v77 + 1) + 8 * i) strength];
          if (!BSFloatEqualToFloat())
          {

            goto LABEL_28;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v77 objects:v84 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }
  }

  firstObject2 = [v17 firstObject];
  [firstObject2 strength];
  IsOne = BSFloatIsOne();

  if (IsOne)
  {
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v26 = v17;
    v27 = [v26 countByEnumeratingWithState:&v73 objects:v83 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v74;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v74 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v73 + 1) + 8 * j);
          [v31 offset];
          v33 = v32 * scale;
          [v31 offset];
          v35 = v34 * scale;
          [v31 radius];
          v37 = v36 * scale;
          [v31 alpha];
          v38 = [colorCopy colorWithAlphaComponent:?];
          cGColor = [v38 CGColor];
          v86.width = v33;
          v86.height = v35;
          CGContextSetShadowWithColor(CurrentContext, v86, v37, cGColor);

          CGContextBeginTransparencyLayer(CurrentContext, 0);
        }

        v28 = [v26 countByEnumeratingWithState:&v73 objects:v83 count:16];
      }

      while (v28);
    }

    [imageCopy drawInRect:{x, y, width, height}];
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v40 = v26;
    v41 = [v40 countByEnumeratingWithState:&v69 objects:v82 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v70;
      while (1)
      {
        if (*v70 != v43)
        {
          objc_enumerationMutation(v40);
        }

        CGContextEndTransparencyLayer(CurrentContext);
        if (!--v42)
        {
          v42 = [v40 countByEnumeratingWithState:&v69 objects:v82 count:16];
          if (!v42)
          {
            break;
          }
        }
      }
    }
  }

  else
  {
LABEL_28:
    scaleCopy = scale;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v44 = v17;
    v45 = [v44 countByEnumeratingWithState:&v65 objects:v81 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v66;
      do
      {
        for (k = 0; k != v46; ++k)
        {
          if (*v66 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v65 + 1) + 8 * k);
          [v49 strength];
          if ((BSFloatLessThanOrEqualToFloat() & 1) == 0)
          {
            [v49 offset];
            v51 = v50 * scaleCopy;
            [v49 offset];
            v53 = v52 * scaleCopy;
            [v49 radius];
            v55 = v54 * scaleCopy;
            cGColor2 = [colorCopy CGColor];
            v87.width = v51;
            v87.height = v53;
            CGContextSetShadowWithColor(CurrentContext, v87, v55, cGColor2);
            CGContextBeginTransparencyLayer(CurrentContext, 0);
            [v49 alpha];
            v58 = v57;
            [v49 strength];
            for (m = v58 * v59; m > 0.00000011920929; m = m + -1.0)
            {
              if (m + 0.00000011920929 <= 1.0)
              {
                v61 = m;
              }

              else
              {
                v61 = 1.0;
              }

              [imageCopy drawInRect:0 blendMode:x alpha:{y, width, height, v61}];
            }

            CGContextEndTransparencyLayer(CurrentContext);
          }
        }

        v46 = [v44 countByEnumeratingWithState:&v65 objects:v81 count:16];
      }

      while (v46);
    }
  }

  CGContextRestoreGState(CurrentContext);
  v62 = *MEMORY[0x277D85DE8];
}

+ (void)classicDrawShadows:(id)shadows renderScale:(double)scale color:(id)color context:(id)context
{
  v107 = *MEMORY[0x277D85DE8];
  shadowsCopy = shadows;
  i = color;
  contextCopy = context;
  v11 = contextCopy;
  if (i)
  {
    v64 = i;
  }

  else
  {
    v104[0] = MEMORY[0x277D85DD0];
    v104[1] = 3221225472;
    v104[2] = __68__PLKShadowDescriptor_classicDrawShadows_renderScale_color_context___block_invoke;
    v104[3] = &unk_27835B760;
    v105 = contextCopy;
    v64 = __68__PLKShadowDescriptor_classicDrawShadows_renderScale_color_context___block_invoke(v104);
    v58 = &v105;
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  obj = shadowsCopy;
  v63 = [obj countByEnumeratingWithState:&v100 objects:v106 count:16];
  if (v63)
  {
    v62 = *v101;
    v60 = v11;
    v61 = i;
    do
    {
      v12 = 0;
      do
      {
        if (*v101 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v100 + 1) + 8 * v12);
        [v13 strength];
        v73 = v14;
        [v13 radius];
        v75 = v15;
        [v13 alpha];
        v72 = v16;
        [v13 offset];
        v70 = v17;
        v71 = v18;
        currentImage = [v11 currentImage];
        [v11 contentRect];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        [currentImage size];
        v29 = v28;
        v31 = v30;
        format = [v11 format];
        if (objc_opt_respondsToSelector())
        {
          contextType = [format contextType];
        }

        else
        {
          contextType = 4;
        }

        [format scale];
        v77 = v34;
        if (objc_opt_respondsToSelector())
        {
          memoryPool = [format memoryPool];
        }

        else
        {
          memoryPool = 0;
        }

        v36 = currentImage;
        v37 = v36;
        v38 = v36;
        if (contextType == 4)
        {
          v38 = [v36 _flatImageWithColor:v64];
        }

        v39 = (v29 + v75 * 2.0) * scale;
        v40 = ceilf(v39);
        v41 = (v31 + v75 * 2.0) * scale;
        v42 = ceilf(v41);
        v57 = v77;
        UIRectCenteredIntegralRectScale();
        v68 = v44;
        v69 = v43;
        v67 = v45;
        v47 = v46;
        v48 = v77 * scale;
        v49 = v75 * (v77 * scale);
        if (v49 < 2.0)
        {
          v49 = 2.0;
        }

        v76 = v49;
        v65 = v37;
        v66 = v12;
        if (memoryPool)
        {
          v94 = v40;
          v95 = v42;
          v96 = *&v77;
          v97 = contextType;
          if (([memoryPool plk_compatibleWithDescriptor:{&v94, *&v77}] & 1) == 0)
          {

            memoryPool = 0;
          }
        }

        v94 = 0.0;
        v95 = COERCE_DOUBLE(&v94);
        v96 = 0x3032000000;
        v97 = __Block_byref_object_copy_;
        v98 = __Block_byref_object_dispose_;
        v99 = 0;
        v50 = MEMORY[0x277D755B8];
        v78[0] = MEMORY[0x277D85DD0];
        v78[1] = 3221225472;
        v78[2] = __68__PLKShadowDescriptor_classicDrawShadows_renderScale_color_context___block_invoke_8;
        v78[3] = &unk_27835B7A8;
        v79 = v64;
        v83 = v40;
        v84 = v42;
        v85 = v69;
        v86 = v47;
        v87 = v68;
        v88 = v67;
        v51 = v38;
        v80 = v51;
        v82 = &v94;
        v89 = v77;
        v90 = contextType;
        v52 = memoryPool;
        v81 = v52;
        v91 = (v70 * v48);
        v92 = (v71 * v48);
        v93 = vcvtmd_u64_f64(v76 * 3.0 * 2.50662827 * 0.25 + 0.5) | 1;
        v53 = [v50 plk_imageFromContextWithSize:contextType scale:v52 type:v78 pool:v40 drawing:{v42, v77}];
        v54 = v73 * v72;
        v11 = v60;
        for (i = v61; v54 > 0.00000011920929; v54 = v54 + -1.0)
        {
          if (v54 + 0.00000011920929 <= 1.0)
          {
            v55 = v54;
          }

          else
          {
            v55 = 1.0;
          }

          [*(*&v95 + 40) drawInRect:0 blendMode:v21 alpha:{v23, v25, v27, v55, *&v57}];
        }

        _Block_object_dispose(&v94, 8);
        v12 = v66 + 1;
      }

      while (v66 + 1 != v63);
      v63 = [obj countByEnumeratingWithState:&v100 objects:v106 count:16];
    }

    while (v63);
  }

  if (!i)
  {
  }

  v56 = *MEMORY[0x277D85DE8];
}

id __68__PLKShadowDescriptor_classicDrawShadows_renderScale_color_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) format];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_5;
  }

  v4 = [*(a1 + 32) format];
  v5 = [v4 contextType];

  if (v5 - 2 < 3)
  {
    v6 = [MEMORY[0x277D75348] whiteColor];
    goto LABEL_6;
  }

  if (v5 <= 1)
  {
LABEL_5:
    v6 = [MEMORY[0x277D75348] blackColor];
  }

LABEL_6:

  return v6;
}

void __68__PLKShadowDescriptor_classicDrawShadows_renderScale_color_context___block_invoke_8(uint64_t a1)
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetFillColorWithColor(CurrentContext, [*(a1 + 32) CGColor]);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  CGContextTranslateCTM(CurrentContext, 0.0, -*(a1 + 72));
  CGContextDrawImage(CurrentContext, *(a1 + 80), [*(a1 + 40) CGImage]);
  Data = CGBitmapContextGetData(CurrentContext);
  Width = CGBitmapContextGetWidth(CurrentContext);
  Height = CGBitmapContextGetHeight(CurrentContext);
  BytesPerRow = CGBitmapContextGetBytesPerRow(CurrentContext);
  v7 = *(a1 + 112);
  v8 = *(a1 + 120);
  v9 = *(a1 + 48);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __68__PLKShadowDescriptor_classicDrawShadows_renderScale_color_context___block_invoke_2;
  v16 = &__block_descriptor_84_e5_v8__0l;
  v17 = v8;
  v18 = Data;
  v19 = Height;
  v20 = Width;
  v21 = BytesPerRow;
  v22 = *(a1 + 128);
  v23 = *(a1 + 136);
  v10 = [MEMORY[0x277D755B8] plk_imageFromContextWithSize:*(a1 + 64) scale:*(a1 + 72) type:v7 pool:? drawing:?];
  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

vImage_Error __68__PLKShadowDescriptor_classicDrawShadows_renderScale_color_context___block_invoke_2(uint64_t a1)
{
  CurrentContext = UIGraphicsGetCurrentContext();
  dest.data = CGBitmapContextGetData(CurrentContext);
  dest.width = CGBitmapContextGetWidth(CurrentContext);
  dest.height = CGBitmapContextGetHeight(CurrentContext);
  dest.rowBytes = CGBitmapContextGetBytesPerRow(CurrentContext);
  v3 = *(a1 + 72);
  v4 = *(a1 + 76);
  v5 = *(a1 + 80);
  if ((*(a1 + 32) - 3) > 1)
  {
    return vImageTentConvolve_ARGB8888((a1 + 40), &dest, 0, v3, v4, v5, v5, 0, 0x1018u);
  }

  else
  {
    return vImageTentConvolve_Planar8((a1 + 40), &dest, 0, v3, v4, v5, v5, 0, 0x1018u);
  }
}

- (void)encodeWithCoder:(id)coder
{
  radius = self->_radius;
  coderCopy = coder;
  *&v5 = radius;
  [coderCopy encodeFloat:@"_radius" forKey:v5];
  [coderCopy encodeCGSize:@"_offset" forKey:{self->_offset.width, self->_offset.height}];
  alpha = self->_alpha;
  *&alpha = alpha;
  [coderCopy encodeFloat:@"_alpha" forKey:alpha];
  strength = self->_strength;
  *&strength = strength;
  [coderCopy encodeFloat:@"_strength" forKey:strength];
}

- (PLKShadowDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeFloatForKey:@"_radius"];
  v6 = v5;
  [coderCopy decodeCGSizeForKey:@"_offset"];
  v8 = v7;
  v10 = v9;
  [coderCopy decodeFloatForKey:@"_alpha"];
  v12 = v11;
  [coderCopy decodeFloatForKey:@"_strength"];
  v14 = v13;

  return [(PLKShadowDescriptor *)self initWithRadius:v6 offset:v8 alpha:v10 strength:v12, v14];
}

@end