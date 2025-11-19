@interface PLKLegibilityBackgroundContentDescriptor
+ (id)contentDescriptorForColor:(id)a3;
+ (id)contentDescriptorForColor:(id)a3 shadows:(id)a4 renderScale:(double)a5;
+ (id)contentDescriptorForVibrantColorMatrix:(CAColorMatrix *)a3 shadows:(id)a4;
+ (id)contentDescriptorForVibrantColorMatrix:(CAColorMatrix *)a3 shadows:(id)a4 renderScale:(double)a5;
+ (id)defaultContentDescriptor;
- (BOOL)allowsGroupBlending;
- (BOOL)allowsGroupOpacity;
- (BOOL)isEqual:(id)a3;
- (CGSize)sizeForContentSize:(CGSize)a3;
- (id)cacheKey;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)filtersForContextType:(int64_t)a3 options:(int64_t)a4;
- (unint64_t)hash;
- (void)plk_renderWithContext:(id)a3;
@end

@implementation PLKLegibilityBackgroundContentDescriptor

- (id)cacheKey
{
  cacheKey = self->_cacheKey;
  if (!cacheKey)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(PLKLegibilityBackgroundContentDescriptor *)self shadows];
    v6 = [v4 plk_sha256HashForObject:v5 error:0];
    v7 = self->_cacheKey;
    self->_cacheKey = v6;

    cacheKey = self->_cacheKey;
  }

  return cacheKey;
}

- (BOOL)allowsGroupBlending
{
  if (self->_colorMatrixValue)
  {
    return 1;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = PLKLegibilityBackgroundContentDescriptor;
  return [(PLKLegibilityContentDescriptor *)&v5 allowsGroupBlending];
}

+ (id)defaultContentDescriptor
{
  if (defaultContentDescriptor_onceToken_255 != -1)
  {
    +[PLKLegibilityBackgroundContentDescriptor defaultContentDescriptor];
  }

  v3 = defaultContentDescriptor_defaultBackgroundContentDescriptor;

  return v3;
}

void __68__PLKLegibilityBackgroundContentDescriptor_defaultContentDescriptor__block_invoke()
{
  v0 = [PLKLegibilityBackgroundContentDescriptor alloc];
  v1 = [MEMORY[0x277D75348] clearColor];
  v2 = [(PLKLegibilityContentDescriptor *)v0 initWithContentColor:v1];
  v3 = defaultContentDescriptor_defaultBackgroundContentDescriptor;
  defaultContentDescriptor_defaultBackgroundContentDescriptor = v2;

  v4 = *(defaultContentDescriptor_defaultBackgroundContentDescriptor + 24);
  *(defaultContentDescriptor_defaultBackgroundContentDescriptor + 24) = MEMORY[0x277CBEBF8];

  v5 = defaultContentDescriptor_defaultBackgroundContentDescriptor;
  *(defaultContentDescriptor_defaultBackgroundContentDescriptor + 80) = 0x3FF0000000000000;
  v6 = *(v5 + 88);
  *(v5 + 88) = @"(null background content descriptor)";
}

- (CGSize)sizeForContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v49 = *MEMORY[0x277D85DE8];
  cachedMaxShadowRadius = self->_cachedMaxShadowRadius;
  if (cachedMaxShadowRadius)
  {
    [(NSNumber *)cachedMaxShadowRadius doubleValue];
    v8 = v7;
    [(NSNumber *)self->_cachedMaxXOffset doubleValue];
    v10 = v9;
    [(NSNumber *)self->_cachedMinXOffset doubleValue];
    v12 = v11;
    [(NSNumber *)self->_cachedMaxYOffset doubleValue];
    v14 = v13;
    [(NSNumber *)self->_cachedMinYOffset doubleValue];
    v16 = v15;
  }

  else
  {
    v43 = a3.height;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v17 = self->_shadows;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v45;
      v12 = 0.0;
      v16 = 0.0;
      v10 = 0.0;
      v14 = 0.0;
      v8 = 0.0;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v45 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v44 + 1) + 8 * i);
          [v22 radius];
          v24 = v23;
          [v22 offset];
          v26 = v25;
          [v22 offset];
          v8 = fmax(v8, v24);
          v10 = fmax(v10, v26);
          v12 = fmin(v12, v26);
          v14 = fmax(v14, v27);
          v16 = fmin(v16, v27);
        }

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v19);
    }

    else
    {
      v12 = 0.0;
      v16 = 0.0;
      v10 = 0.0;
      v14 = 0.0;
      v8 = 0.0;
    }

    v28 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
    v29 = self->_cachedMaxShadowRadius;
    self->_cachedMaxShadowRadius = v28;

    v30 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    cachedMaxXOffset = self->_cachedMaxXOffset;
    self->_cachedMaxXOffset = v30;

    v32 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
    cachedMinXOffset = self->_cachedMinXOffset;
    self->_cachedMinXOffset = v32;

    v34 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
    cachedMaxYOffset = self->_cachedMaxYOffset;
    self->_cachedMaxYOffset = v34;

    v36 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
    cachedMinYOffset = self->_cachedMinYOffset;
    self->_cachedMinYOffset = v36;

    height = v43;
  }

  v38 = *MEMORY[0x277D85DE8];
  v39 = v8 + fmax(fabs(v12), fabs(v10)) * 2.0 + 2.0;
  v40 = width + ceilf(v39);
  v41 = v8 + fmax(fabs(v16), fabs(v14)) * 2.0 + 2.0;
  v42 = height + ceilf(v41);
  result.height = v42;
  result.width = v40;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = PLKLegibilityBackgroundContentDescriptor;
    if ([(PLKLegibilityContentDescriptor *)&v20 isEqual:v4])
    {
      v5 = objc_opt_class();
      v6 = v4;
      if (v5)
      {
        if (objc_opt_isKindOfClass())
        {
          v7 = v6;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }

      v9 = v7;

      v10 = [(PLKLegibilityContentDescriptor *)v9 contentColor];
      v11 = [(PLKLegibilityContentDescriptor *)self contentColor];
      v12 = BSEqualObjects();

      if (v12 && (shadows = v9->_shadows, v14 = self->_shadows, BSEqualObjects()) && (colorMatrixValue = v9->_colorMatrixValue, v16 = self->_colorMatrixValue, BSEqualObjects()))
      {
        shadowRenderScale = v9->_shadowRenderScale;
        v18 = self->_shadowRenderScale;
        v8 = BSFloatEqualToFloat();
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)contentDescriptorForVibrantColorMatrix:(CAColorMatrix *)a3 shadows:(id)a4
{
  v4 = *&a3->var12;
  v8[2] = *&a3->var8;
  v8[3] = v4;
  v8[4] = *&a3->var16;
  v5 = *&a3->var4;
  v8[0] = *&a3->var0;
  v8[1] = v5;
  v6 = [a1 contentDescriptorForVibrantColorMatrix:v8 shadows:a4 renderScale:1.0];

  return v6;
}

+ (id)contentDescriptorForVibrantColorMatrix:(CAColorMatrix *)a3 shadows:(id)a4 renderScale:(double)a5
{
  v7 = a4;
  v8 = objc_alloc_init(PLKLegibilityBackgroundContentDescriptor);
  v9 = *&a3->var12;
  v16[2] = *&a3->var8;
  v16[3] = v9;
  v16[4] = *&a3->var16;
  v10 = *&a3->var4;
  v16[0] = *&a3->var0;
  v16[1] = v10;
  v11 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:v16];
  colorMatrixValue = v8->_colorMatrixValue;
  v8->_colorMatrixValue = v11;

  v13 = [v7 copy];
  shadows = v8->_shadows;
  v8->_shadows = v13;

  v8->_shadowRenderScale = a5;

  return v8;
}

+ (id)contentDescriptorForColor:(id)a3 shadows:(id)a4 renderScale:(double)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [(PLKLegibilityContentDescriptor *)[PLKLegibilityBackgroundContentDescriptor alloc] initWithContentColor:v8];

  v10 = [v7 copy];
  shadows = v9->_shadows;
  v9->_shadows = v10;

  v9->_shadowRenderScale = a5;

  return v9;
}

+ (id)contentDescriptorForColor:(id)a3
{
  v3 = a3;
  v4 = [(PLKLegibilityContentDescriptor *)[PLKLegibilityBackgroundContentDescriptor alloc] initWithContentColor:v3];

  return v4;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [(PLKLegibilityContentDescriptor *)self compositingFilter];
  v5 = [v3 appendObject:v4];

  v6 = [(PLKLegibilityContentDescriptor *)self contentColor];
  v7 = [v3 appendObject:v6];

  v8 = [v3 appendObject:self->_shadows];
  v9 = [v3 appendCGFloat:self->_shadowRenderScale];
  v10 = [v3 appendObject:self->_colorMatrixValue];
  v11 = [v3 hash];

  return v11;
}

- (id)filtersForContextType:(int64_t)a3 options:(int64_t)a4
{
  v12.receiver = self;
  v12.super_class = PLKLegibilityBackgroundContentDescriptor;
  v6 = [(PLKLegibilityContentDescriptor *)&v12 filtersForContextType:a3 options:?];
  colorMatrixValue = self->_colorMatrixValue;
  if (colorMatrixValue)
  {
    v8 = MEMORY[0x277CD9EA0];
    [(NSValue *)colorMatrixValue CAColorMatrixValue];
    v9 = [v8 plk_vibrantColorMatrixFilterWithVibrantColorMatrix:&v11 options:a4];
    [v6 bs_safeAddObject:v9];
  }

  return v6;
}

- (BOOL)allowsGroupOpacity
{
  if (self->_colorMatrixValue)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = PLKLegibilityBackgroundContentDescriptor;
  return [(PLKLegibilityContentDescriptor *)&v5 allowsGroupOpacity];
}

- (void)plk_renderWithContext:(id)a3
{
  v4 = a3;
  if ([(PLKLegibilityBackgroundContentDescriptor *)self isRenderable])
  {
    v5 = [v4 format];
    [v5 scale];
    v7 = v6;

    v8 = [v4 format];
    v9 = +[PLKImageRendererFormat formatForContextType:scale:](PLKImageRendererFormat, "formatForContextType:scale:", [v8 contextType], v7);

    v10 = [v4 currentImage];
    [v10 size];
    v12 = v11;
    v14 = v13;
    shadowRenderScale = self->_shadowRenderScale;
    v16 = v12 * shadowRenderScale;
    v17 = v13 * shadowRenderScale;
    v18 = [(UIGraphicsImageRenderer *)[PLKImageRenderer alloc] initWithSize:v9 format:v12 * shadowRenderScale, v13 * shadowRenderScale];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __66__PLKLegibilityBackgroundContentDescriptor_plk_renderWithContext___block_invoke;
    v28[3] = &unk_27835B228;
    v29 = v10;
    v30 = v16;
    v31 = v17;
    v19 = v10;
    v20 = [(PLKImageRenderer *)v18 imageWithActions:v28];
    [(PLKLegibilityBackgroundContentDescriptor *)self sizeForContentSize:v12, v14];
    v22 = v21;
    v23 = self->_shadowRenderScale;
    v25 = [(UIGraphicsImageRenderer *)[PLKLegibilityImageRenderer alloc] initWithSize:v9 format:v22 * v23, v24 * v23];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __66__PLKLegibilityBackgroundContentDescriptor_plk_renderWithContext___block_invoke_2;
    v27[3] = &unk_27835B6C8;
    v27[4] = self;
    v26 = [(PLKLegibilityImageRenderer *)v25 renderLegibilityImageDecoratingImage:v20 actions:v27];
    BSRectWithSize();
    [v4 contentRect];
    UIRectCenteredRect();
    [v26 drawInRect:?];
  }
}

uint64_t __66__PLKLegibilityBackgroundContentDescriptor_plk_renderWithContext___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  BSRectWithSize();

  return [v1 drawInRect:?];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v17.receiver = self;
  v17.super_class = PLKLegibilityBackgroundContentDescriptor;
  v4 = [(PLKLegibilityContentDescriptor *)&v17 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [v4 appendObject:self->_shadows withName:@"shadows"];
  v6 = [v4 appendFloat:@"renderScale" withName:self->_shadowRenderScale];
  v7 = [v4 appendFloat:@"renderScale" withName:self->_shadowRenderScale];
  v8 = [v4 appendBool:-[PLKLegibilityBackgroundContentDescriptor usesUILegibility](self withName:{"usesUILegibility"), @"usesUILegibility"}];
  v9 = [v4 appendBool:-[PLKLegibilityBackgroundContentDescriptor isRenderable](self withName:{"isRenderable"), @"isRenderable"}];
  v10 = [(PLKLegibilityBackgroundContentDescriptor *)self cacheKey];
  v11 = [v4 appendObject:v10 withName:@"cacheKey"];

  colorMatrixValue = self->_colorMatrixValue;
  if (colorMatrixValue)
  {
    [(NSValue *)colorMatrixValue CAColorMatrixValue];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"m11:%.3f m15:%.3f m21:%.3f m25:%.3f", 0.0, 0.0, 0.0, 0.0];
    v14 = [v4 appendObject:v13 withName:@"colorMatrix"];
  }

  else
  {
    v15 = [v4 appendObject:@"(null)" withName:@"colorMatrix"];
  }

  return v4;
}

@end