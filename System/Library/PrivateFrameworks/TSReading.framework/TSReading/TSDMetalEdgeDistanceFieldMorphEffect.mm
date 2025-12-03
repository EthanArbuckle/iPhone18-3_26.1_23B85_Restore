@interface TSDMetalEdgeDistanceFieldMorphEffect
+ (void)didEndWithDevice:(id)device;
+ (void)willBeginWithDevice:(id)device pixelFormat:(unint64_t)format motionBlur:(BOOL)blur motionBlurIgnoreTextureOpacity:(BOOL)opacity;
- ($1AB5FA073B851C12C2339EC22442E995)textureMatchingTextureAdjustment;
- (BOOL)p_fillScanlineCenters:(CGPoint *)centers scanlineMinMaxZeroes:(CGPoint *)zeroes samples:(unint64_t)samples fromTexture:(id)texture textureSize:(CGSize)size;
- (CGAffineTransform)p_affineTransformWithTextureAdjustment:(SEL)adjustment textureSize:(id)size;
- (CGContext)newContextFromTexture:(id)texture;
- (CGRect)p_actualPixelBoundsOfTexturedRectangle:(id)rectangle;
- (TSDMetalEdgeDistanceFieldMorphEffect)initWithOutgoingTR:(id)r incomingTR:(id)tR metalContext:(id)context motionBlur:(BOOL)blur motionBlurIgnoreTextureOpacity:(BOOL)opacity capabilities:(id)capabilities;
- (double)p_errorFromApplyingTextureAdjustment:(id)adjustment toOutgoingScanlineCenters:(CGPoint *)centers outgoingScanlineZeroes:(CGPoint *)zeroes incomingScanlineCenters:(CGPoint *)scanlineCenters incomingScanlineZeroes:(CGPoint *)scanlineZeroes samples:(unint64_t)samples;
- (double)p_errorFromApplyingTextureAdjustment:(id)adjustment toOutgoingValue:(double)value incomingValue:(double)incomingValue sample:(unint64_t)sample sampleCount:(unint64_t)count;
- (id)initWithOutgoingTextureName:(double)name outgoingTextureSize:(double)size outgoingTextBounds:(double)bounds outgoingColor:(double)color incomingTextureName:(double)textureName incomingTextureSize:(uint64_t)textureSize incomingTextBounds:(void *)textBounds incomingColor:(void *)self0 metalContext:(void *)self1 motionBlur:(uint64_t)self2 motionBlurIgnoreTextureOpacity:(uint64_t)self3 capabilities:(void *)self4;
- (void)dealloc;
- (void)encodeWith:(id)with morphPercent:(double)percent MVPMatrix:(CATransform3D *)matrix opacity:(double)opacity generateTextureMatrices:(BOOL)matrices;
- (void)encodeWith:(id)with morphPercent:(double)percent MVPMatrix:(CATransform3D *)matrix opacity:(double)opacity outgoingTextureMatrix:(CGAffineTransform *)textureMatrix incomingTextureMatrix:(CGAffineTransform *)incomingTextureMatrix;
- (void)teardown;
@end

@implementation TSDMetalEdgeDistanceFieldMorphEffect

+ (void)willBeginWithDevice:(id)device pixelFormat:(unint64_t)format motionBlur:(BOOL)blur motionBlurIgnoreTextureOpacity:(BOOL)opacity
{
  deviceCopy = device;
  if (!s_TSDMetalEdgeDistanceFieldMorphEffect_shader)
  {
    v7 = objc_alloc_init(MEMORY[0x277CD6F68]);
    [v7 setPixelFormat:format];
    [v7 setBlendingEnabled:1];
    [v7 setRgbBlendOperation:0];
    [v7 setAlphaBlendOperation:0];
    [v7 setSourceRGBBlendFactor:1];
    [v7 setSourceAlphaBlendFactor:1];
    [v7 setDestinationRGBBlendFactor:5];
    [v7 setDestinationAlphaBlendFactor:5];
    v8 = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:@"TSDMetalEdgeDistanceField_Morph_VertexShader" fragmentShader:@"TSDMetalEdgeDistanceField_Morph_FragmentShader" device:deviceCopy library:@"KeynoteMetalLibrary" colorAttachment:v7];
    v9 = s_TSDMetalEdgeDistanceFieldMorphEffect_shader;
    s_TSDMetalEdgeDistanceFieldMorphEffect_shader = v8;
  }

  [TSDMetalEdgeDistanceField willBeginWithDevice:deviceCopy];
  ++s_TSDMetalEdgeDistanceFieldMorphEffectPipelineReferenceCount;
}

+ (void)didEndWithDevice:(id)device
{
  [TSDMetalEdgeDistanceField didEndWithDevice:device];
  v3 = s_TSDMetalEdgeDistanceFieldMorphEffectPipelineReferenceCount;
  v4 = --s_TSDMetalEdgeDistanceFieldMorphEffectPipelineReferenceCount;
  if (v3 <= 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDMetalEdgeDistanceFieldMorphEffect didEndWithDevice:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
    [currentHandler handleFailureInFunction:v6 file:v7 lineNumber:553 description:@"overreleasing pipeline reference count!"];

    if (s_TSDMetalEdgeDistanceFieldMorphEffectPipelineReferenceCount)
    {
      return;
    }
  }

  else if (v4)
  {
    return;
  }

  v8 = s_TSDMetalEdgeDistanceFieldMorphEffect_shader;
  s_TSDMetalEdgeDistanceFieldMorphEffect_shader = 0;
}

- (TSDMetalEdgeDistanceFieldMorphEffect)initWithOutgoingTR:(id)r incomingTR:(id)tR metalContext:(id)context motionBlur:(BOOL)blur motionBlurIgnoreTextureOpacity:(BOOL)opacity capabilities:(id)capabilities
{
  opacityCopy = opacity;
  blurCopy = blur;
  v73 = *MEMORY[0x277D85DE8];
  rCopy = r;
  tRCopy = tR;
  contextCopy = context;
  capabilitiesCopy = capabilities;
  device = [contextCopy device];
  [objc_opt_class() willBeginWithDevice:device pixelFormat:objc_msgSend(contextCopy motionBlur:"pixelFormat") motionBlurIgnoreTextureOpacity:blurCopy, opacityCopy];
  v68 = device;
  objc_storeStrong(&self->_metalDevice, device);
  [(TSDMetalEdgeDistanceFieldMorphEffect *)self p_actualPixelBoundsOfTexturedRectangle:rCopy];
  v65 = v19;
  v66 = v18;
  v63 = v21;
  v64 = v20;
  v71 = 0u;
  v72 = 0u;
  textColor = [rCopy textColor];
  if (!textColor)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v24 = opacityCopy;
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalEdgeDistanceFieldMorphEffect initWithOutgoingTR:incomingTR:metalContext:motionBlur:motionBlurIgnoreTextureOpacity:capabilities:]"];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
    [currentHandler handleFailureInFunction:v25 file:v26 lineNumber:578 description:@"outgoingColor is nil!"];

    opacityCopy = v24;
  }

  [textColor getRGBAComponents:&v71];
  v27 = v71;
  v28 = v72;
  [(TSDMetalEdgeDistanceFieldMorphEffect *)self p_actualPixelBoundsOfTexturedRectangle:tRCopy];
  v61 = v30;
  v62 = v29;
  v59 = v32;
  v60 = v31;
  v69 = 0u;
  v70 = 0u;
  textColor2 = [tRCopy textColor];
  if (!textColor2)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalEdgeDistanceFieldMorphEffect initWithOutgoingTR:incomingTR:metalContext:motionBlur:motionBlurIgnoreTextureOpacity:capabilities:]"];
    v58 = blurCopy;
    v36 = v35 = opacityCopy;
    v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
    [currentHandler2 handleFailureInFunction:v36 file:v37 lineNumber:586 description:@"incomingColor is nil!"];

    opacityCopy = v35;
    blurCopy = v58;
  }

  *&v38 = *(&v28 + 1);
  *&v39 = *&v28;
  v57 = __PAIR64__(v38, v39);
  *&v40 = *(&v27 + 1);
  *&v41 = *&v27;
  [textColor2 getRGBAComponents:&v69];
  *&v42 = *&v69;
  *&v43 = *(&v69 + 1);
  *&v44 = *&v70;
  *&v45 = *(&v70 + 1);
  device2 = [contextCopy device];
  [tRCopy setupMetalTextureForDevice:device2];

  metalTexture = [rCopy metalTexture];
  [rCopy size];
  v49 = v48;
  v51 = v50;
  metalTexture2 = [tRCopy metalTexture];
  [tRCopy size];
  v55 = [(TSDMetalEdgeDistanceFieldMorphEffect *)self initWithOutgoingTextureName:metalTexture outgoingTextureSize:metalTexture2 outgoingTextBounds:contextCopy outgoingColor:blurCopy incomingTextureName:opacityCopy incomingTextureSize:capabilitiesCopy incomingTextBounds:v49 incomingColor:v51 metalContext:v66 motionBlur:v65 motionBlurIgnoreTextureOpacity:v64 capabilities:v63, __PAIR64__(v40, v41), v57, v53, v54, v62, v61, v60, v59, __PAIR64__(v43, v42), __PAIR64__(v45, v44)];

  return v55;
}

- (id)initWithOutgoingTextureName:(double)name outgoingTextureSize:(double)size outgoingTextBounds:(double)bounds outgoingColor:(double)color incomingTextureName:(double)textureName incomingTextureSize:(uint64_t)textureSize incomingTextBounds:(void *)textBounds incomingColor:(void *)self0 metalContext:(void *)self1 motionBlur:(uint64_t)self2 motionBlurIgnoreTextureOpacity:(uint64_t)self3 capabilities:(void *)self4
{
  textBoundsCopy = textBounds;
  incomingColorCopy = incomingColor;
  contextCopy = context;
  capabilitiesCopy = capabilities;
  v64.receiver = self;
  v64.super_class = TSDMetalEdgeDistanceFieldMorphEffect;
  v42 = objc_msgSendSuper2(&v64, sel_init);
  if (v42)
  {
    device = [contextCopy device];
    v44 = *(v42 + 30);
    *(v42 + 30) = device;

    v45 = name / 3.0;
    if (a2 > name / 3.0)
    {
      v45 = a2;
    }

    v46 = a22 / 3.0;
    if (a21 > a22 / 3.0)
    {
      v46 = a21;
    }

    textureNameCopy = textureName;
    colorCopy = color;
    v47 = round(v45 * -0.05);
    v48 = round(v46 * -0.05);
    v49 = [TSDMetalEdgeDistanceField distanceFieldTextureWithTexture:textBoundsCopy textureSize:0 maxDistance:1 edgeInsets:0 downsampleScale:contextCopy floatTexture:capabilitiesCopy makeCPUReadable:a2 metalContext:name capabilities:0.0, v47, 0.0, v47, 1.0];
    v50 = *(v42 + 32);
    *(v42 + 32) = v49;

    v51 = [TSDMetalEdgeDistanceField distanceFieldTextureWithTexture:incomingColorCopy textureSize:0 maxDistance:1 edgeInsets:0 downsampleScale:contextCopy floatTexture:capabilitiesCopy makeCPUReadable:a21 metalContext:a22 capabilities:0.0, v48, 0.0, v48, 1.0];
    v52 = *(v42 + 33);
    *(v42 + 33) = v51;

    CGAffineTransformMakeScale(&v63, a2 / [*(v42 + 32) width], name / objc_msgSend(*(v42 + 32), "height"));
    v53 = *&v63.c;
    *(v42 + 7) = *&v63.a;
    *(v42 + 8) = v53;
    *(v42 + 9) = *&v63.tx;
    v54 = *(v42 + 8);
    *&v62.a = *(v42 + 7);
    *&v62.c = v54;
    *&v62.tx = *(v42 + 9);
    CGAffineTransformTranslate(&v63, &v62, -v47 / a2, -0.0 / name);
    v55 = *&v63.c;
    *(v42 + 7) = *&v63.a;
    *(v42 + 8) = v55;
    *(v42 + 9) = *&v63.tx;
    CGAffineTransformMakeScale(&v63, a21 / [*(v42 + 33) width], a22 / objc_msgSend(*(v42 + 33), "height"));
    v56 = *&v63.c;
    *(v42 + 10) = *&v63.a;
    *(v42 + 11) = v56;
    *(v42 + 12) = *&v63.tx;
    v57 = *(v42 + 11);
    *&v62.a = *(v42 + 10);
    *&v62.c = v57;
    *&v62.tx = *(v42 + 12);
    CGAffineTransformTranslate(&v63, &v62, -v48 / a21, -0.0 / a22);
    v58 = *&v63.c;
    *(v42 + 10) = *&v63.a;
    *(v42 + 11) = v58;
    *(v42 + 12) = *&v63.tx;
    *(v42 + 2) = size;
    *(v42 + 3) = bounds;
    *(v42 + 4) = colorCopy;
    *(v42 + 5) = textureNameCopy;
    *(v42 + 6) = a23;
    *(v42 + 7) = a24;
    *(v42 + 8) = a25;
    *(v42 + 9) = a26;
    *(v42 + 20) = a17;
    *(v42 + 21) = a18;
    *(v42 + 22) = a19;
    *(v42 + 23) = a20;
    *(v42 + 24) = a27;
    *(v42 + 25) = a28;
    *(v42 + 26) = a29;
    *(v42 + 27) = a30;
  }

  return v42;
}

- (void)dealloc
{
  [(TSDMetalEdgeDistanceFieldMorphEffect *)self teardown];
  v3.receiver = self;
  v3.super_class = TSDMetalEdgeDistanceFieldMorphEffect;
  [(TSDMetalEdgeDistanceFieldMorphEffect *)&v3 dealloc];
}

- (void)teardown
{
  if (!self->_didTeardown)
  {
    self->_didTeardown = 1;
  }
}

- (CGContext)newContextFromTexture:(id)texture
{
  textureCopy = texture;
  v4 = textureCopy;
  if (textureCopy && (v5 = [textureCopy image]) != 0)
  {
    v6 = v5;
    Width = CGImageGetWidth(v5);
    CGImageGetHeight(v6);
    v8 = TSDBitmapContextCreate(3, Width);
    v10.origin.x = TSDRectWithSize();
    CGContextDrawImage(v8, v10, v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGRect)p_actualPixelBoundsOfTexturedRectangle:(id)rectangle
{
  rectangleCopy = rectangle;
  v5 = [(TSDMetalEdgeDistanceFieldMorphEffect *)self newContextFromTexture:rectangleCopy];
  v6 = v5;
  if (v5 && (BytesPerRow = CGBitmapContextGetBytesPerRow(v5), (Data = CGBitmapContextGetData(v6)) != 0))
  {
    v9 = Data;
    [rectangleCopy size];
    v11 = v10;
    [rectangleCopy contentRect];
    v13 = v12;
    [rectangleCopy size];
    v15 = v14;
    [rectangleCopy contentRect];
    v17 = vcvtmd_s64_f64(v15 * v16);
    [rectangleCopy size];
    v19 = v18;
    [rectangleCopy contentRect];
    v21 = v20;
    [rectangleCopy size];
    v23 = v22;
    [rectangleCopy contentRect];
    v27 = vcvtpd_s64_f64(v23 * v26);
    if (v17 >= v27)
    {
LABEL_11:
      CGContextRelease(v6);
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalEdgeDistanceFieldMorphEffect p_actualPixelBoundsOfTexturedRectangle:]"];
      v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
      [currentHandler handleFailureInFunction:v39 file:v40 lineNumber:717 description:@"Couldn't find non-zero pixel from bottom!"];
    }

    else
    {
      v28 = BytesPerRow >> 2;
      v29 = vcvtmd_s64_f64(v11 * v13);
      v30 = v19 * v21;
      v31 = vcvtpd_s64_f64(v19 * v21);
      v32 = (v29 + v17 * (BytesPerRow >> 2)) << 32;
      v33 = BytesPerRow >> 2 << 32;
      v34 = v17;
      while (1)
      {
        v35 = v32;
        v36 = v31 - v29;
        if (v31 > v29)
        {
          while (1)
          {
            LOBYTE(v30) = v9[(v35 >> 30) + 3];
            v37 = *&v30 * 0.00390640259;
            v30 = v37;
            if (v30 > 0.05)
            {
              break;
            }

            v35 += 0x100000000;
            if (!--v36)
            {
              goto LABEL_10;
            }
          }

          if (v34 != -1)
          {
            break;
          }
        }

LABEL_10:
        ++v34;
        v32 += v33;
        if (v34 == v27)
        {
          goto LABEL_11;
        }
      }

      v52 = v34;
      v53 = ((v28 * (v27 - 1)) << 32) + (v29 << 32);
      do
      {
        if (v27 <= v17)
        {
          currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
          v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalEdgeDistanceFieldMorphEffect p_actualPixelBoundsOfTexturedRectangle:]"];
          v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
          v61 = @"Couldn't find non-zero pixel from top!";
          v62 = currentHandler2;
          v63 = v59;
          v64 = v60;
          v65 = 735;
          goto LABEL_25;
        }

        --v27;
        v54 = -1.0;
        v55 = v53;
        v56 = v31 - v29;
        if (v31 > v29)
        {
          while (1)
          {
            LOBYTE(v24) = v9[(v55 >> 30) + 3];
            v57 = *&v24 * 0.00390640259;
            v24 = v57;
            if (v24 > 0.05)
            {
              break;
            }

            v55 += 0x100000000;
            if (!--v56)
            {
              goto LABEL_22;
            }
          }

          v54 = v27;
        }

LABEL_22:
        v53 -= v33;
      }

      while (v54 == -1.0);
      if (v31 <= v29)
      {
LABEL_34:
        currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
        v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalEdgeDistanceFieldMorphEffect p_actualPixelBoundsOfTexturedRectangle:]"];
        v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
        v61 = @"Couldn't find non-zero pixel from left!";
        v62 = currentHandler2;
        v63 = v59;
        v64 = v60;
        v65 = 755;
      }

      else
      {
        v66 = v52;
        *&v67 = v52;
        v68 = v52;
        v69 = (v29 + v52 * v28) << 32;
        v70 = v29;
        while (1)
        {
          v71 = v52 + 1;
          v72 = v69;
          if (v54 >= v68)
          {
            while (1)
            {
              LOBYTE(v67) = v9[(v72 >> 30) + 3];
              v73 = *&v67 * 0.00390640259;
              v67 = v73;
              if (v67 > 0.05)
              {
                break;
              }

              v67 = v71;
              v72 += v33;
              ++v71;
              if (v54 < v67)
              {
                goto LABEL_33;
              }
            }

            if (v70 != -1)
            {
              break;
            }
          }

LABEL_33:
          ++v70;
          v69 += 0x100000000;
          if (v70 == v31)
          {
            goto LABEL_34;
          }
        }

        v74 = v70;
        v75 = ((v31 + v66 * v28) << 32) - 0x100000000;
        v76 = v66 + 1;
        while (v31 > v29)
        {
          --v31;
          v77 = -1.0;
          v78 = v76;
          v79 = v75;
          if (v54 >= v68)
          {
            while (1)
            {
              LOBYTE(v25) = v9[(v79 >> 30) + 3];
              v80 = *&v25 * 0.00390640259;
              v25 = v80;
              if (v25 > 0.05)
              {
                break;
              }

              v25 = v78;
              v79 += v33;
              ++v78;
              if (v54 < v25)
              {
                goto LABEL_42;
              }
            }

            v77 = v31;
          }

LABEL_42:
          v75 -= 0x100000000;
          if (v77 != -1.0)
          {
            v81 = TSDAddPoints(v74, v52, 0.5);
            v83 = v82;
            v84 = TSDAddPoints(v77, v54, 0.5);
            v86 = v85;
            [rectangleCopy size];
            v87 = TSDRectWithSize();
            v90 = TSDNormalizedPointInRect(v81, v83, v87, v88, v89);
            v92 = v91;
            [rectangleCopy size];
            v93 = TSDRectWithSize();
            v96 = TSDNormalizedPointInRect(v84, v86, v93, v94, v95);
            v41 = TSDRectWithPoints(v90, v92, v96);
            v42 = v97;
            v43 = v98;
            v44 = v99;
            CGContextRelease(v6);
            goto LABEL_14;
          }
        }

        currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
        v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalEdgeDistanceFieldMorphEffect p_actualPixelBoundsOfTexturedRectangle:]"];
        v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
        v61 = @"Couldn't find non-zero pixel from right!";
        v62 = currentHandler2;
        v63 = v59;
        v64 = v60;
        v65 = 775;
      }

LABEL_25:
      [v62 handleFailureInFunction:v63 file:v64 lineNumber:v65 description:v61];

      CGContextRelease(v6);
    }

    v41 = *MEMORY[0x277CBF3A0];
    v42 = *(MEMORY[0x277CBF3A0] + 8);
    v43 = *(MEMORY[0x277CBF3A0] + 16);
    v44 = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    CGContextRelease(v6);
    [rectangleCopy size];
    v41 = TSDRectWithSize();
    v42 = v45;
    v43 = v46;
    v44 = v47;
  }

LABEL_14:

  v48 = v41;
  v49 = v42;
  v50 = v43;
  v51 = v44;
  result.size.height = v51;
  result.size.width = v50;
  result.origin.y = v49;
  result.origin.x = v48;
  return result;
}

- (BOOL)p_fillScanlineCenters:(CGPoint *)centers scanlineMinMaxZeroes:(CGPoint *)zeroes samples:(unint64_t)samples fromTexture:(id)texture textureSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  textureCopy = texture;
  if (centers)
  {
    if (zeroes)
    {
      goto LABEL_3;
    }

LABEL_46:
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalEdgeDistanceFieldMorphEffect p_fillScanlineCenters:scanlineMinMaxZeroes:samples:fromTexture:textureSize:]"];
    v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
    [currentHandler handleFailureInFunction:v64 file:v65 lineNumber:828 description:@"scanlineZeroes is NULL!"];

    if (samples)
    {
      goto LABEL_4;
    }

    goto LABEL_47;
  }

  currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
  v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalEdgeDistanceFieldMorphEffect p_fillScanlineCenters:scanlineMinMaxZeroes:samples:fromTexture:textureSize:]"];
  v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
  [currentHandler2 handleFailureInFunction:v61 file:v62 lineNumber:827 description:@"scanlineCenters is NULL!"];

  if (!zeroes)
  {
    goto LABEL_46;
  }

LABEL_3:
  if (samples)
  {
    goto LABEL_4;
  }

LABEL_47:
  currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
  v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalEdgeDistanceFieldMorphEffect p_fillScanlineCenters:scanlineMinMaxZeroes:samples:fromTexture:textureSize:]"];
  v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
  [currentHandler3 handleFailureInFunction:v67 file:v68 lineNumber:829 description:@"sampleCount is 0!"];

LABEL_4:
  v13 = width;
  v14 = height;
  v15 = malloc_type_malloc(8 * width * height, 0x9FD5E39CuLL);
  memset(v84, 0, 24);
  v84[3] = width;
  v84[4] = height;
  v84[5] = 1;
  v78 = 8 * width;
  [textureCopy getBytes:v15 bytesPerRow:v78 fromRegion:v84 mipmapLevel:0];
  v16 = objc_opt_new();
  v76 = v15;
  if (samples)
  {
    v83 = 0;
    v17 = 0;
    v18 = (samples + 2);
    v19 = (v13 - 1);
    v79 = v13;
    v77 = vdupq_lane_s64(COERCE__INT64(v13), 0);
    v20 = v15 + 16;
    v21 = v15;
    v22 = 2 - v13;
    v70 = v21 - 8;
    v71 = v20;
    zeroesCopy = zeroes;
    samplesCopy = samples;
    v72 = v14;
    v73 = v13;
    do
    {
      v82 = v17 + 1;
      v81 = (((v17 + 1) * v14) / v18);
      v23 = -1000.0;
      if (v13 >= 3)
      {
        v24 = 0;
        v25 = &v76[8 * v81 * v13];
        v26 = COERCE_FLOAT(((*(v25 + 4) << 16) & 0x80000000 | (((*(v25 + 4) >> 10) & 0x1F) << 23) | ((*(v25 + 4) & 0x3FF) << 13)) + 939524096);
        v27 = COERCE_FLOAT(((*v25 << 16) & 0x80000000 | (((*v25 >> 10) & 0x1F) << 23) | ((*v25 & 0x3FF) << 13)) + 939524096);
        v28 = &v71[v78 * v81];
        v29 = -1000;
        v30 = 1.79769313e308;
        v31 = 1;
        do
        {
          v32 = v27;
          v27 = v26;
          v33 = *v28;
          v28 += 8;
          v26 = COERCE_FLOAT(((v33 << 16) & 0x80000000 | (((v33 >> 10) & 0x1F) << 23) | ((v33 & 0x3FF) << 13)) + 939524096);
          if (v27 >= v32 && v27 > v26)
          {
            v35 = [MEMORY[0x277CCABB0] numberWithInt:v31];
            [v16 addObject:v35];
          }

          v36 = fabs(v27);
          v37 = fabs(v30);
          v38 = v36 < v37;
          v39 = v36 >= v37;
          if (v36 < v37)
          {
            v40 = v27;
          }

          else
          {
            v40 = v30;
          }

          if (v38)
          {
            v41 = v31;
          }

          else
          {
            v41 = v29;
          }

          v42 = (v24 & 1) == 0;
          v24 = (v24 & 1) != 0 || v39;
          if (v42)
          {
            v30 = v40;
          }

          if (v42)
          {
            v29 = v41;
          }

          ++v31;
        }

        while (v22 + v31 != 1);
        v23 = v29;
        zeroes = zeroesCopy;
        samples = samplesCopy;
        v14 = v72;
        v13 = v73;
      }

      v80 = v23;
      v43 = -1.0;
      v44 = -1.0;
      if ([v16 count])
      {
        firstObject = [v16 firstObject];
        [firstObject doubleValue];
        v44 = v46 / v79;
      }

      if ([v16 count] >= 2)
      {
        lastObject = [v16 lastObject];
        [lastObject doubleValue];
        v43 = v48 / v79;
      }

      v49 = &centers[v17];
      v49->x = v44;
      v49->y = v43;
      v50 = -1000.0;
      if (v43 <= v19)
      {
        v51 = &v70[v78 + v78 * v81];
        v52 = -1000;
        v53 = 1.79769313e308;
        v54 = v13;
        while (1)
        {
          v55 = v52;
          v56 = *v51;
          v51 -= 8;
          v52 = v54;
          v57 = fabs(v53);
          v53 = COERCE_FLOAT(((v56 << 16) & 0x80000000 | (((v56 >> 10) & 0x1F) << 23) | ((v56 & 0x3FF) << 13)) + 939524096);
          if (fabs(v53) > v57)
          {
            break;
          }

          --v54;
          if (v43 > (v52 - 2))
          {
            v55 = v52;
            break;
          }
        }

        v50 = v55;
      }

      v58.f64[0] = v80;
      v58.f64[1] = v50;
      zeroes[v17] = vdivq_f64(v58, v77);
      v59 = v43 != -1.0 || v44 != -1.0;
      v83 += v59;
      [v16 removeAllObjects];
      ++v17;
    }

    while (v82 != samples);
  }

  else
  {
    v83 = 0;
  }

  free(v76);

  return v83 > samples >> 1;
}

- (double)p_errorFromApplyingTextureAdjustment:(id)adjustment toOutgoingValue:(double)value incomingValue:(double)incomingValue sample:(unint64_t)sample sampleCount:(unint64_t)count
{
  var0 = adjustment.var0;
  result = 0.0;
  if (value >= 0.0 && incomingValue >= 0.0)
  {
    var2 = adjustment.var2;
    var1 = adjustment.var1;
    v14 = (sample + 1) / (count + 2);
    [(TSDMetalTextureInfo *)self->_outgoingTextureInfo size];
    [(TSDMetalEdgeDistanceFieldMorphEffect *)self p_affineTransformWithTextureAdjustment:var0 textureSize:var1, var2, v15, v16];
    return vabdd_f64(v14 * 0.0 + 0.0 * value + 0.0, incomingValue);
  }

  return result;
}

- (double)p_errorFromApplyingTextureAdjustment:(id)adjustment toOutgoingScanlineCenters:(CGPoint *)centers outgoingScanlineZeroes:(CGPoint *)zeroes incomingScanlineCenters:(CGPoint *)scanlineCenters incomingScanlineZeroes:(CGPoint *)scanlineZeroes samples:(unint64_t)samples
{
  if (!samples)
  {
    return 0.0;
  }

  var2 = adjustment.var2;
  var1 = adjustment.var1;
  var0 = adjustment.var0;
  v13 = 0;
  p_y = &scanlineZeroes->y;
  v15 = &centers->y;
  v16 = &zeroes->y;
  v17 = &scanlineCenters->y;
  v18 = 0.0;
  do
  {
    v19 = *v15;
    v20 = *v17;
    [(TSDMetalEdgeDistanceFieldMorphEffect *)self p_errorFromApplyingTextureAdjustment:v13 toOutgoingValue:samples incomingValue:var0 sample:var1 sampleCount:var2, *(v15 - 1), *(v17 - 1)];
    v22 = v21 + 0.0;
    [(TSDMetalEdgeDistanceFieldMorphEffect *)self p_errorFromApplyingTextureAdjustment:v13 toOutgoingValue:samples incomingValue:var0 sample:var1 sampleCount:var2, v19, v20];
    v24 = v22 + v23;
    v25 = *v16;
    v26 = *p_y;
    [(TSDMetalEdgeDistanceFieldMorphEffect *)self p_errorFromApplyingTextureAdjustment:v13 toOutgoingValue:samples incomingValue:var0 sample:var1 sampleCount:var2, *(v16 - 1), *(p_y - 1)];
    v28 = v27 + 0.0;
    [(TSDMetalEdgeDistanceFieldMorphEffect *)self p_errorFromApplyingTextureAdjustment:v13++ toOutgoingValue:samples incomingValue:var0 sample:var1 sampleCount:var2, v25, v26];
    p_y += 2;
    v18 = v18 + v24 + (v28 + v29) * 0.25;
    v15 += 2;
    v16 += 2;
    v17 += 2;
  }

  while (samples != v13);
  return v18;
}

- (CGAffineTransform)p_affineTransformWithTextureAdjustment:(SEL)adjustment textureSize:(id)size
{
  retstr->a = size.var2;
  retstr->b = 0.0;
  retstr->c = size.var0;
  retstr->d = 1.0;
  retstr->tx = size.var1;
  retstr->ty = 0.0;
  return self;
}

- ($1AB5FA073B851C12C2339EC22442E995)textureMatchingTextureAdjustment
{
  v29 = *MEMORY[0x277D85DE8];
  if (self->_didSetupTextureAdjustment)
  {
    skew = self->_textureAdjustment.skew;
    skewOffset = self->_textureAdjustment.skewOffset;
    scale = self->_textureAdjustment.scale;
  }

  else
  {
    name = [(TSDMetalTextureInfo *)self->_outgoingTextureInfo name];
    [(TSDMetalTextureInfo *)self->_outgoingTextureInfo size];
    v6 = [(TSDMetalEdgeDistanceFieldMorphEffect *)self p_fillScanlineCenters:v28 scanlineMinMaxZeroes:v27 samples:10 fromTexture:name textureSize:?];

    scale = 1.0;
    skew = 0.0;
    if (v6)
    {
      name2 = [(TSDMetalTextureInfo *)self->_incomingTextureInfo name];
      [(TSDMetalTextureInfo *)self->_incomingTextureInfo size];
      v8 = [(TSDMetalEdgeDistanceFieldMorphEffect *)self p_fillScanlineCenters:v26 scanlineMinMaxZeroes:v25 samples:10 fromTexture:name2 textureSize:?];

      skewOffset = 0.0;
      if (v8)
      {
        v9 = 0;
        v21 = 0.0;
        v22 = 0.0;
        v10 = 1.79769313e308;
        v11 = 1.0;
        scale = 1.0;
        do
        {
          v12 = 1.0 / exp2(v9);
          v23 = v12 * 0.5;
          v13 = v12 * 0.25;
          for (i = -1; i != 2; ++i)
          {
            for (j = -1; j != 2; ++j)
            {
              for (k = -1; k != 2; ++k)
              {
                [(TSDMetalEdgeDistanceFieldMorphEffect *)self p_errorFromApplyingTextureAdjustment:v28 toOutgoingScanlineCenters:v27 outgoingScanlineZeroes:v26 incomingScanlineCenters:v25 incomingScanlineZeroes:10 samples:v21 + i * v23, v22 + j * v23, v11 + k * v13];
                if (v17 < v10)
                {
                  v10 = v17;
                  skew = v21 + i * v23;
                  skewOffset = v22 + j * v23;
                  scale = v11 + k * v13;
                }
              }
            }
          }

          ++v9;
          v11 = scale;
          v21 = skew;
          v22 = skewOffset;
        }

        while (v9 != 10);
      }
    }

    else
    {
      skewOffset = 0.0;
    }

    self->_textureAdjustment.skew = skew;
    self->_textureAdjustment.skewOffset = skewOffset;
    self->_textureAdjustment.scale = scale;
    self->_didSetupTextureAdjustment = 1;
  }

  v18 = skew;
  v19 = skewOffset;
  v20 = scale;
  result.var2 = v20;
  result.var1 = v19;
  result.var0 = v18;
  return result;
}

- (void)encodeWith:(id)with morphPercent:(double)percent MVPMatrix:(CATransform3D *)matrix opacity:(double)opacity outgoingTextureMatrix:(CGAffineTransform *)textureMatrix incomingTextureMatrix:(CGAffineTransform *)incomingTextureMatrix
{
  withCopy = with;
  if (self->_didTeardown)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalEdgeDistanceFieldMorphEffect encodeWith:morphPercent:MVPMatrix:opacity:outgoingTextureMatrix:incomingTextureMatrix:]"];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
    [currentHandler handleFailureInFunction:v16 file:v17 lineNumber:1116 description:@"Trying to draw after calling teardown!"];
  }

  v18 = *&self->_outgoingTextureEdgeInsetsAdjustmentMatrix.c;
  *&t1.a = *&self->_outgoingTextureEdgeInsetsAdjustmentMatrix.a;
  *&t1.c = v18;
  *&t1.tx = *&self->_outgoingTextureEdgeInsetsAdjustmentMatrix.tx;
  v19 = *&textureMatrix->c;
  *&t2.a = *&textureMatrix->a;
  *&t2.c = v19;
  *&t2.tx = *&textureMatrix->tx;
  CGAffineTransformConcat(&v34, &t1, &t2);
  v20 = *&v34.c;
  *&textureMatrix->a = *&v34.a;
  *&textureMatrix->c = v20;
  *&textureMatrix->tx = *&v34.tx;
  v21 = *&self->_incomingTextureEdgeInsetsAdjustmentMatrix.c;
  *&t1.a = *&self->_incomingTextureEdgeInsetsAdjustmentMatrix.a;
  *&t1.c = v21;
  *&t1.tx = *&self->_incomingTextureEdgeInsetsAdjustmentMatrix.tx;
  v22 = *&incomingTextureMatrix->c;
  *&t2.a = *&incomingTextureMatrix->a;
  *&t2.c = v22;
  *&t2.tx = *&incomingTextureMatrix->tx;
  CGAffineTransformConcat(&v34, &t1, &t2);
  v23 = *&v34.c;
  *&incomingTextureMatrix->a = *&v34.a;
  *&incomingTextureMatrix->c = v23;
  *&incomingTextureMatrix->tx = *&v34.tx;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v24 = vcvt_f32_f64(*&textureMatrix->a);
  *&v23 = vcvt_f32_f64(*&textureMatrix->c);
  v25 = vcvt_f32_f64(*&textureMatrix->tx);
  DWORD2(v36) = 0;
  *&v36 = v24;
  DWORD2(v37) = 0;
  *&v37 = v23;
  DWORD2(v38) = 1065353216;
  *&v38 = v25;
  v26 = vcvt_f32_f64(*&incomingTextureMatrix->a);
  *&v23 = vcvt_f32_f64(*&incomingTextureMatrix->c);
  v27 = vcvt_f32_f64(*&incomingTextureMatrix->tx);
  DWORD2(v39) = 0;
  *&v39 = v26;
  DWORD2(v40) = 0;
  *&v40 = v23;
  DWORD2(v41) = 1065353216;
  *&v41 = v27;
  v28 = vcvt_hight_f32_f64(vcvt_f32_f64(*&matrix->m21), *&matrix->m23);
  v29 = vcvt_hight_f32_f64(vcvt_f32_f64(*&matrix->m31), *&matrix->m33);
  v30 = vcvt_hight_f32_f64(vcvt_f32_f64(*&matrix->m41), *&matrix->m43);
  *&v34.a = vcvt_hight_f32_f64(vcvt_f32_f64(*&matrix->m11), *&matrix->m13);
  *&v34.c = v28;
  *&v34.tx = v29;
  v35 = v30;
  t1.b = 0.0;
  v26.f32[0] = percent;
  *&v23 = opacity;
  *&t1.a = __PAIR64__(v26.u32[0], v23);
  incomingTextColor = self->_incomingTextColor;
  *&t1.c = self->_outgoingTextColor;
  *&t1.tx = incomingTextColor;
  [s_TSDMetalEdgeDistanceFieldMorphEffect_shader setPipelineStateWithEncoder:withCopy vertexBytes:&v34 fragmentBytes:&t1];
  name = [(TSDMetalTextureInfo *)self->_outgoingTextureInfo name];
  [withCopy setFragmentTexture:name atIndex:0];

  name2 = [(TSDMetalTextureInfo *)self->_incomingTextureInfo name];
  [withCopy setFragmentTexture:name2 atIndex:1];
}

- (void)encodeWith:(id)with morphPercent:(double)percent MVPMatrix:(CATransform3D *)matrix opacity:(double)opacity generateTextureMatrices:(BOOL)matrices
{
  matricesCopy = matrices;
  withCopy = with;
  v13 = *(MEMORY[0x277CBF2C0] + 16);
  *&v49.a = *MEMORY[0x277CBF2C0];
  *&v49.c = v13;
  *&v49.tx = *(MEMORY[0x277CBF2C0] + 32);
  *&v48.a = *&v49.a;
  *&v48.c = v13;
  *&v48.tx = *&v49.tx;
  if (matricesCopy)
  {
    if (![(TSDMetalEdgeDistanceFieldMorphEffect *)self isTextStyleIdenticalExceptSize]|| (v14 = *MEMORY[0x277CBF3A0], v15 = *(MEMORY[0x277CBF3A0] + 8), v16 = *(MEMORY[0x277CBF3A0] + 16), v17 = *(MEMORY[0x277CBF3A0] + 24), v50.origin.x = *MEMORY[0x277CBF3A0], v50.origin.y = v15, v50.size.width = v16, v50.size.height = v17, CGRectEqualToRect(v50, self->_outgoingTextBounds)) || (v51.origin.x = v14, v51.origin.y = v15, v51.size.width = v16, v51.size.height = v17, CGRectEqualToRect(v51, self->_incomingTextBounds)))
    {
      [(TSDMetalEdgeDistanceFieldMorphEffect *)self textureMatchingTextureAdjustment];
      v18 = TSDMetalEdgeDistanceFieldTextureAdjustmentMix();
      v20 = v19;
      v22 = v21;
      v23 = TSDMetalEdgeDistanceFieldTextureAdjustmentMix();
      v25 = v24;
      v27 = v26;
      [(TSDMetalTextureInfo *)self->_outgoingTextureInfo size];
      [(TSDMetalEdgeDistanceFieldMorphEffect *)self p_affineTransformWithTextureAdjustment:v18 textureSize:v20, v22, v28, v29];
      [(TSDMetalTextureInfo *)self->_incomingTextureInfo size];
      [(TSDMetalEdgeDistanceFieldMorphEffect *)self p_affineTransformWithTextureAdjustment:v23 textureSize:v25, v27, v30, v31];
    }

    else
    {
      width = self->_outgoingTextBounds.size.width;
      if (width > 0.2)
      {
        height = self->_outgoingTextBounds.size.height;
        if (height > 0.2)
        {
          v38 = self->_incomingTextBounds.size.width;
          if (v38 > 0.2)
          {
            v39 = self->_incomingTextBounds.size.height;
            if (v39 > 0.2)
            {
              TSDTransformConvertingRectToRectAtPercent(&v42, self->_outgoingTextBounds.origin.x, width, height, self->_incomingTextBounds.origin.x, self->_incomingTextBounds.origin.y, v38, v39, percent);
              CGAffineTransformInvert(&v49, &v42);
              TSDTransformConvertingRectToRectAtPercent(&v42, self->_incomingTextBounds.origin.x, self->_incomingTextBounds.size.width, self->_incomingTextBounds.size.height, self->_outgoingTextBounds.origin.x, self->_outgoingTextBounds.origin.y, self->_outgoingTextBounds.size.width, self->_outgoingTextBounds.size.height, 1.0 - percent);
              CGAffineTransformInvert(&v48, &v42);
            }
          }
        }
      }
    }
  }

  v32 = *&matrix->m33;
  v44 = *&matrix->m31;
  v45 = v32;
  v33 = *&matrix->m43;
  v46 = *&matrix->m41;
  v47 = v33;
  v34 = *&matrix->m13;
  *&v42.a = *&matrix->m11;
  *&v42.c = v34;
  v35 = *&matrix->m23;
  *&v42.tx = *&matrix->m21;
  v43 = v35;
  v41 = v49;
  v40 = v48;
  [(TSDMetalEdgeDistanceFieldMorphEffect *)self encodeWith:withCopy morphPercent:&v42 MVPMatrix:&v41 opacity:&v40 outgoingTextureMatrix:percent incomingTextureMatrix:opacity];
}

@end