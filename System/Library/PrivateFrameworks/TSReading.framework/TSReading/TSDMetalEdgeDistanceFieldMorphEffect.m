@interface TSDMetalEdgeDistanceFieldMorphEffect
+ (void)didEndWithDevice:(id)a3;
+ (void)willBeginWithDevice:(id)a3 pixelFormat:(unint64_t)a4 motionBlur:(BOOL)a5 motionBlurIgnoreTextureOpacity:(BOOL)a6;
- ($1AB5FA073B851C12C2339EC22442E995)textureMatchingTextureAdjustment;
- (BOOL)p_fillScanlineCenters:(CGPoint *)a3 scanlineMinMaxZeroes:(CGPoint *)a4 samples:(unint64_t)a5 fromTexture:(id)a6 textureSize:(CGSize)a7;
- (CGAffineTransform)p_affineTransformWithTextureAdjustment:(SEL)a3 textureSize:(id)a4;
- (CGContext)newContextFromTexture:(id)a3;
- (CGRect)p_actualPixelBoundsOfTexturedRectangle:(id)a3;
- (TSDMetalEdgeDistanceFieldMorphEffect)initWithOutgoingTR:(id)a3 incomingTR:(id)a4 metalContext:(id)a5 motionBlur:(BOOL)a6 motionBlurIgnoreTextureOpacity:(BOOL)a7 capabilities:(id)a8;
- (double)p_errorFromApplyingTextureAdjustment:(id)a3 toOutgoingScanlineCenters:(CGPoint *)a4 outgoingScanlineZeroes:(CGPoint *)a5 incomingScanlineCenters:(CGPoint *)a6 incomingScanlineZeroes:(CGPoint *)a7 samples:(unint64_t)a8;
- (double)p_errorFromApplyingTextureAdjustment:(id)a3 toOutgoingValue:(double)a4 incomingValue:(double)a5 sample:(unint64_t)a6 sampleCount:(unint64_t)a7;
- (id)initWithOutgoingTextureName:(double)a3 outgoingTextureSize:(double)a4 outgoingTextBounds:(double)a5 outgoingColor:(double)a6 incomingTextureName:(double)a7 incomingTextureSize:(uint64_t)a8 incomingTextBounds:(void *)a9 incomingColor:(void *)a10 metalContext:(void *)a11 motionBlur:(uint64_t)a12 motionBlurIgnoreTextureOpacity:(uint64_t)a13 capabilities:(void *)a14;
- (void)dealloc;
- (void)encodeWith:(id)a3 morphPercent:(double)a4 MVPMatrix:(CATransform3D *)a5 opacity:(double)a6 generateTextureMatrices:(BOOL)a7;
- (void)encodeWith:(id)a3 morphPercent:(double)a4 MVPMatrix:(CATransform3D *)a5 opacity:(double)a6 outgoingTextureMatrix:(CGAffineTransform *)a7 incomingTextureMatrix:(CGAffineTransform *)a8;
- (void)teardown;
@end

@implementation TSDMetalEdgeDistanceFieldMorphEffect

+ (void)willBeginWithDevice:(id)a3 pixelFormat:(unint64_t)a4 motionBlur:(BOOL)a5 motionBlurIgnoreTextureOpacity:(BOOL)a6
{
  v10 = a3;
  if (!s_TSDMetalEdgeDistanceFieldMorphEffect_shader)
  {
    v7 = objc_alloc_init(MEMORY[0x277CD6F68]);
    [v7 setPixelFormat:a4];
    [v7 setBlendingEnabled:1];
    [v7 setRgbBlendOperation:0];
    [v7 setAlphaBlendOperation:0];
    [v7 setSourceRGBBlendFactor:1];
    [v7 setSourceAlphaBlendFactor:1];
    [v7 setDestinationRGBBlendFactor:5];
    [v7 setDestinationAlphaBlendFactor:5];
    v8 = [[TSDMetalShader alloc] initCustomShaderWithVertexShader:@"TSDMetalEdgeDistanceField_Morph_VertexShader" fragmentShader:@"TSDMetalEdgeDistanceField_Morph_FragmentShader" device:v10 library:@"KeynoteMetalLibrary" colorAttachment:v7];
    v9 = s_TSDMetalEdgeDistanceFieldMorphEffect_shader;
    s_TSDMetalEdgeDistanceFieldMorphEffect_shader = v8;
  }

  [TSDMetalEdgeDistanceField willBeginWithDevice:v10];
  ++s_TSDMetalEdgeDistanceFieldMorphEffectPipelineReferenceCount;
}

+ (void)didEndWithDevice:(id)a3
{
  [TSDMetalEdgeDistanceField didEndWithDevice:a3];
  v3 = s_TSDMetalEdgeDistanceFieldMorphEffectPipelineReferenceCount;
  v4 = --s_TSDMetalEdgeDistanceFieldMorphEffectPipelineReferenceCount;
  if (v3 <= 0)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDMetalEdgeDistanceFieldMorphEffect didEndWithDevice:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:553 description:@"overreleasing pipeline reference count!"];

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

- (TSDMetalEdgeDistanceFieldMorphEffect)initWithOutgoingTR:(id)a3 incomingTR:(id)a4 metalContext:(id)a5 motionBlur:(BOOL)a6 motionBlurIgnoreTextureOpacity:(BOOL)a7 capabilities:(id)a8
{
  v9 = a7;
  v10 = a6;
  v73 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v67 = a8;
  v17 = [v16 device];
  [objc_opt_class() willBeginWithDevice:v17 pixelFormat:objc_msgSend(v16 motionBlur:"pixelFormat") motionBlurIgnoreTextureOpacity:v10, v9];
  v68 = v17;
  objc_storeStrong(&self->_metalDevice, v17);
  [(TSDMetalEdgeDistanceFieldMorphEffect *)self p_actualPixelBoundsOfTexturedRectangle:v14];
  v65 = v19;
  v66 = v18;
  v63 = v21;
  v64 = v20;
  v71 = 0u;
  v72 = 0u;
  v22 = [v14 textColor];
  if (!v22)
  {
    v23 = [MEMORY[0x277D6C290] currentHandler];
    v24 = v9;
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalEdgeDistanceFieldMorphEffect initWithOutgoingTR:incomingTR:metalContext:motionBlur:motionBlurIgnoreTextureOpacity:capabilities:]"];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
    [v23 handleFailureInFunction:v25 file:v26 lineNumber:578 description:@"outgoingColor is nil!"];

    v9 = v24;
  }

  [v22 getRGBAComponents:&v71];
  v27 = v71;
  v28 = v72;
  [(TSDMetalEdgeDistanceFieldMorphEffect *)self p_actualPixelBoundsOfTexturedRectangle:v15];
  v61 = v30;
  v62 = v29;
  v59 = v32;
  v60 = v31;
  v69 = 0u;
  v70 = 0u;
  v33 = [v15 textColor];
  if (!v33)
  {
    v34 = [MEMORY[0x277D6C290] currentHandler];
    [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalEdgeDistanceFieldMorphEffect initWithOutgoingTR:incomingTR:metalContext:motionBlur:motionBlurIgnoreTextureOpacity:capabilities:]"];
    v58 = v10;
    v36 = v35 = v9;
    v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
    [v34 handleFailureInFunction:v36 file:v37 lineNumber:586 description:@"incomingColor is nil!"];

    v9 = v35;
    v10 = v58;
  }

  *&v38 = *(&v28 + 1);
  *&v39 = *&v28;
  v57 = __PAIR64__(v38, v39);
  *&v40 = *(&v27 + 1);
  *&v41 = *&v27;
  [v33 getRGBAComponents:&v69];
  *&v42 = *&v69;
  *&v43 = *(&v69 + 1);
  *&v44 = *&v70;
  *&v45 = *(&v70 + 1);
  v46 = [v16 device];
  [v15 setupMetalTextureForDevice:v46];

  v47 = [v14 metalTexture];
  [v14 size];
  v49 = v48;
  v51 = v50;
  v52 = [v15 metalTexture];
  [v15 size];
  v55 = [(TSDMetalEdgeDistanceFieldMorphEffect *)self initWithOutgoingTextureName:v47 outgoingTextureSize:v52 outgoingTextBounds:v16 outgoingColor:v10 incomingTextureName:v9 incomingTextureSize:v67 incomingTextBounds:v49 incomingColor:v51 metalContext:v66 motionBlur:v65 motionBlurIgnoreTextureOpacity:v64 capabilities:v63, __PAIR64__(v40, v41), v57, v53, v54, v62, v61, v60, v59, __PAIR64__(v43, v42), __PAIR64__(v45, v44)];

  return v55;
}

- (id)initWithOutgoingTextureName:(double)a3 outgoingTextureSize:(double)a4 outgoingTextBounds:(double)a5 outgoingColor:(double)a6 incomingTextureName:(double)a7 incomingTextureSize:(uint64_t)a8 incomingTextBounds:(void *)a9 incomingColor:(void *)a10 metalContext:(void *)a11 motionBlur:(uint64_t)a12 motionBlurIgnoreTextureOpacity:(uint64_t)a13 capabilities:(void *)a14
{
  v38 = a9;
  v39 = a10;
  v40 = a11;
  v41 = a14;
  v64.receiver = a1;
  v64.super_class = TSDMetalEdgeDistanceFieldMorphEffect;
  v42 = objc_msgSendSuper2(&v64, sel_init);
  if (v42)
  {
    v43 = [v40 device];
    v44 = *(v42 + 30);
    *(v42 + 30) = v43;

    v45 = a3 / 3.0;
    if (a2 > a3 / 3.0)
    {
      v45 = a2;
    }

    v46 = a22 / 3.0;
    if (a21 > a22 / 3.0)
    {
      v46 = a21;
    }

    v60 = a7;
    v61 = a6;
    v47 = round(v45 * -0.05);
    v48 = round(v46 * -0.05);
    v49 = [TSDMetalEdgeDistanceField distanceFieldTextureWithTexture:v38 textureSize:0 maxDistance:1 edgeInsets:0 downsampleScale:v40 floatTexture:v41 makeCPUReadable:a2 metalContext:a3 capabilities:0.0, v47, 0.0, v47, 1.0];
    v50 = *(v42 + 32);
    *(v42 + 32) = v49;

    v51 = [TSDMetalEdgeDistanceField distanceFieldTextureWithTexture:v39 textureSize:0 maxDistance:1 edgeInsets:0 downsampleScale:v40 floatTexture:v41 makeCPUReadable:a21 metalContext:a22 capabilities:0.0, v48, 0.0, v48, 1.0];
    v52 = *(v42 + 33);
    *(v42 + 33) = v51;

    CGAffineTransformMakeScale(&v63, a2 / [*(v42 + 32) width], a3 / objc_msgSend(*(v42 + 32), "height"));
    v53 = *&v63.c;
    *(v42 + 7) = *&v63.a;
    *(v42 + 8) = v53;
    *(v42 + 9) = *&v63.tx;
    v54 = *(v42 + 8);
    *&v62.a = *(v42 + 7);
    *&v62.c = v54;
    *&v62.tx = *(v42 + 9);
    CGAffineTransformTranslate(&v63, &v62, -v47 / a2, -0.0 / a3);
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
    *(v42 + 2) = a4;
    *(v42 + 3) = a5;
    *(v42 + 4) = v61;
    *(v42 + 5) = v60;
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

- (CGContext)newContextFromTexture:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && (v5 = [v3 image]) != 0)
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

- (CGRect)p_actualPixelBoundsOfTexturedRectangle:(id)a3
{
  v4 = a3;
  v5 = [(TSDMetalEdgeDistanceFieldMorphEffect *)self newContextFromTexture:v4];
  v6 = v5;
  if (v5 && (BytesPerRow = CGBitmapContextGetBytesPerRow(v5), (Data = CGBitmapContextGetData(v6)) != 0))
  {
    v9 = Data;
    [v4 size];
    v11 = v10;
    [v4 contentRect];
    v13 = v12;
    [v4 size];
    v15 = v14;
    [v4 contentRect];
    v17 = vcvtmd_s64_f64(v15 * v16);
    [v4 size];
    v19 = v18;
    [v4 contentRect];
    v21 = v20;
    [v4 size];
    v23 = v22;
    [v4 contentRect];
    v27 = vcvtpd_s64_f64(v23 * v26);
    if (v17 >= v27)
    {
LABEL_11:
      CGContextRelease(v6);
      v38 = [MEMORY[0x277D6C290] currentHandler];
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalEdgeDistanceFieldMorphEffect p_actualPixelBoundsOfTexturedRectangle:]"];
      v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
      [v38 handleFailureInFunction:v39 file:v40 lineNumber:717 description:@"Couldn't find non-zero pixel from bottom!"];
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
          v58 = [MEMORY[0x277D6C290] currentHandler];
          v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalEdgeDistanceFieldMorphEffect p_actualPixelBoundsOfTexturedRectangle:]"];
          v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
          v61 = @"Couldn't find non-zero pixel from top!";
          v62 = v58;
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
        v58 = [MEMORY[0x277D6C290] currentHandler];
        v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalEdgeDistanceFieldMorphEffect p_actualPixelBoundsOfTexturedRectangle:]"];
        v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
        v61 = @"Couldn't find non-zero pixel from left!";
        v62 = v58;
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
            [v4 size];
            v87 = TSDRectWithSize();
            v90 = TSDNormalizedPointInRect(v81, v83, v87, v88, v89);
            v92 = v91;
            [v4 size];
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

        v58 = [MEMORY[0x277D6C290] currentHandler];
        v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalEdgeDistanceFieldMorphEffect p_actualPixelBoundsOfTexturedRectangle:]"];
        v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
        v61 = @"Couldn't find non-zero pixel from right!";
        v62 = v58;
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
    [v4 size];
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

- (BOOL)p_fillScanlineCenters:(CGPoint *)a3 scanlineMinMaxZeroes:(CGPoint *)a4 samples:(unint64_t)a5 fromTexture:(id)a6 textureSize:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  v12 = a6;
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_46:
    v63 = [MEMORY[0x277D6C290] currentHandler];
    v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalEdgeDistanceFieldMorphEffect p_fillScanlineCenters:scanlineMinMaxZeroes:samples:fromTexture:textureSize:]"];
    v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
    [v63 handleFailureInFunction:v64 file:v65 lineNumber:828 description:@"scanlineZeroes is NULL!"];

    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_47;
  }

  v60 = [MEMORY[0x277D6C290] currentHandler];
  v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalEdgeDistanceFieldMorphEffect p_fillScanlineCenters:scanlineMinMaxZeroes:samples:fromTexture:textureSize:]"];
  v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
  [v60 handleFailureInFunction:v61 file:v62 lineNumber:827 description:@"scanlineCenters is NULL!"];

  if (!a4)
  {
    goto LABEL_46;
  }

LABEL_3:
  if (a5)
  {
    goto LABEL_4;
  }

LABEL_47:
  v66 = [MEMORY[0x277D6C290] currentHandler];
  v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalEdgeDistanceFieldMorphEffect p_fillScanlineCenters:scanlineMinMaxZeroes:samples:fromTexture:textureSize:]"];
  v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
  [v66 handleFailureInFunction:v67 file:v68 lineNumber:829 description:@"sampleCount is 0!"];

LABEL_4:
  v13 = width;
  v14 = height;
  v15 = malloc_type_malloc(8 * width * height, 0x9FD5E39CuLL);
  memset(v84, 0, 24);
  v84[3] = width;
  v84[4] = height;
  v84[5] = 1;
  v78 = 8 * width;
  [v12 getBytes:v15 bytesPerRow:v78 fromRegion:v84 mipmapLevel:0];
  v16 = objc_opt_new();
  v76 = v15;
  if (a5)
  {
    v83 = 0;
    v17 = 0;
    v18 = (a5 + 2);
    v19 = (v13 - 1);
    v79 = v13;
    v77 = vdupq_lane_s64(COERCE__INT64(v13), 0);
    v20 = v15 + 16;
    v21 = v15;
    v22 = 2 - v13;
    v70 = v21 - 8;
    v71 = v20;
    v74 = a4;
    v75 = a5;
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
        a4 = v74;
        a5 = v75;
        v14 = v72;
        v13 = v73;
      }

      v80 = v23;
      v43 = -1.0;
      v44 = -1.0;
      if ([v16 count])
      {
        v45 = [v16 firstObject];
        [v45 doubleValue];
        v44 = v46 / v79;
      }

      if ([v16 count] >= 2)
      {
        v47 = [v16 lastObject];
        [v47 doubleValue];
        v43 = v48 / v79;
      }

      v49 = &a3[v17];
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
      a4[v17] = vdivq_f64(v58, v77);
      v59 = v43 != -1.0 || v44 != -1.0;
      v83 += v59;
      [v16 removeAllObjects];
      ++v17;
    }

    while (v82 != a5);
  }

  else
  {
    v83 = 0;
  }

  free(v76);

  return v83 > a5 >> 1;
}

- (double)p_errorFromApplyingTextureAdjustment:(id)a3 toOutgoingValue:(double)a4 incomingValue:(double)a5 sample:(unint64_t)a6 sampleCount:(unint64_t)a7
{
  var0 = a3.var0;
  result = 0.0;
  if (a4 >= 0.0 && a5 >= 0.0)
  {
    var2 = a3.var2;
    var1 = a3.var1;
    v14 = (a6 + 1) / (a7 + 2);
    [(TSDMetalTextureInfo *)self->_outgoingTextureInfo size];
    [(TSDMetalEdgeDistanceFieldMorphEffect *)self p_affineTransformWithTextureAdjustment:var0 textureSize:var1, var2, v15, v16];
    return vabdd_f64(v14 * 0.0 + 0.0 * a4 + 0.0, a5);
  }

  return result;
}

- (double)p_errorFromApplyingTextureAdjustment:(id)a3 toOutgoingScanlineCenters:(CGPoint *)a4 outgoingScanlineZeroes:(CGPoint *)a5 incomingScanlineCenters:(CGPoint *)a6 incomingScanlineZeroes:(CGPoint *)a7 samples:(unint64_t)a8
{
  if (!a8)
  {
    return 0.0;
  }

  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  v13 = 0;
  p_y = &a7->y;
  v15 = &a4->y;
  v16 = &a5->y;
  v17 = &a6->y;
  v18 = 0.0;
  do
  {
    v19 = *v15;
    v20 = *v17;
    [(TSDMetalEdgeDistanceFieldMorphEffect *)self p_errorFromApplyingTextureAdjustment:v13 toOutgoingValue:a8 incomingValue:var0 sample:var1 sampleCount:var2, *(v15 - 1), *(v17 - 1)];
    v22 = v21 + 0.0;
    [(TSDMetalEdgeDistanceFieldMorphEffect *)self p_errorFromApplyingTextureAdjustment:v13 toOutgoingValue:a8 incomingValue:var0 sample:var1 sampleCount:var2, v19, v20];
    v24 = v22 + v23;
    v25 = *v16;
    v26 = *p_y;
    [(TSDMetalEdgeDistanceFieldMorphEffect *)self p_errorFromApplyingTextureAdjustment:v13 toOutgoingValue:a8 incomingValue:var0 sample:var1 sampleCount:var2, *(v16 - 1), *(p_y - 1)];
    v28 = v27 + 0.0;
    [(TSDMetalEdgeDistanceFieldMorphEffect *)self p_errorFromApplyingTextureAdjustment:v13++ toOutgoingValue:a8 incomingValue:var0 sample:var1 sampleCount:var2, v25, v26];
    p_y += 2;
    v18 = v18 + v24 + (v28 + v29) * 0.25;
    v15 += 2;
    v16 += 2;
    v17 += 2;
  }

  while (a8 != v13);
  return v18;
}

- (CGAffineTransform)p_affineTransformWithTextureAdjustment:(SEL)a3 textureSize:(id)a4
{
  retstr->a = a4.var2;
  retstr->b = 0.0;
  retstr->c = a4.var0;
  retstr->d = 1.0;
  retstr->tx = a4.var1;
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
    v5 = [(TSDMetalTextureInfo *)self->_outgoingTextureInfo name];
    [(TSDMetalTextureInfo *)self->_outgoingTextureInfo size];
    v6 = [(TSDMetalEdgeDistanceFieldMorphEffect *)self p_fillScanlineCenters:v28 scanlineMinMaxZeroes:v27 samples:10 fromTexture:v5 textureSize:?];

    scale = 1.0;
    skew = 0.0;
    if (v6)
    {
      v7 = [(TSDMetalTextureInfo *)self->_incomingTextureInfo name];
      [(TSDMetalTextureInfo *)self->_incomingTextureInfo size];
      v8 = [(TSDMetalEdgeDistanceFieldMorphEffect *)self p_fillScanlineCenters:v26 scanlineMinMaxZeroes:v25 samples:10 fromTexture:v7 textureSize:?];

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

- (void)encodeWith:(id)a3 morphPercent:(double)a4 MVPMatrix:(CATransform3D *)a5 opacity:(double)a6 outgoingTextureMatrix:(CGAffineTransform *)a7 incomingTextureMatrix:(CGAffineTransform *)a8
{
  v14 = a3;
  if (self->_didTeardown)
  {
    v15 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalEdgeDistanceFieldMorphEffect encodeWith:morphPercent:MVPMatrix:opacity:outgoingTextureMatrix:incomingTextureMatrix:]"];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
    [v15 handleFailureInFunction:v16 file:v17 lineNumber:1116 description:@"Trying to draw after calling teardown!"];
  }

  v18 = *&self->_outgoingTextureEdgeInsetsAdjustmentMatrix.c;
  *&t1.a = *&self->_outgoingTextureEdgeInsetsAdjustmentMatrix.a;
  *&t1.c = v18;
  *&t1.tx = *&self->_outgoingTextureEdgeInsetsAdjustmentMatrix.tx;
  v19 = *&a7->c;
  *&t2.a = *&a7->a;
  *&t2.c = v19;
  *&t2.tx = *&a7->tx;
  CGAffineTransformConcat(&v34, &t1, &t2);
  v20 = *&v34.c;
  *&a7->a = *&v34.a;
  *&a7->c = v20;
  *&a7->tx = *&v34.tx;
  v21 = *&self->_incomingTextureEdgeInsetsAdjustmentMatrix.c;
  *&t1.a = *&self->_incomingTextureEdgeInsetsAdjustmentMatrix.a;
  *&t1.c = v21;
  *&t1.tx = *&self->_incomingTextureEdgeInsetsAdjustmentMatrix.tx;
  v22 = *&a8->c;
  *&t2.a = *&a8->a;
  *&t2.c = v22;
  *&t2.tx = *&a8->tx;
  CGAffineTransformConcat(&v34, &t1, &t2);
  v23 = *&v34.c;
  *&a8->a = *&v34.a;
  *&a8->c = v23;
  *&a8->tx = *&v34.tx;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v24 = vcvt_f32_f64(*&a7->a);
  *&v23 = vcvt_f32_f64(*&a7->c);
  v25 = vcvt_f32_f64(*&a7->tx);
  DWORD2(v36) = 0;
  *&v36 = v24;
  DWORD2(v37) = 0;
  *&v37 = v23;
  DWORD2(v38) = 1065353216;
  *&v38 = v25;
  v26 = vcvt_f32_f64(*&a8->a);
  *&v23 = vcvt_f32_f64(*&a8->c);
  v27 = vcvt_f32_f64(*&a8->tx);
  DWORD2(v39) = 0;
  *&v39 = v26;
  DWORD2(v40) = 0;
  *&v40 = v23;
  DWORD2(v41) = 1065353216;
  *&v41 = v27;
  v28 = vcvt_hight_f32_f64(vcvt_f32_f64(*&a5->m21), *&a5->m23);
  v29 = vcvt_hight_f32_f64(vcvt_f32_f64(*&a5->m31), *&a5->m33);
  v30 = vcvt_hight_f32_f64(vcvt_f32_f64(*&a5->m41), *&a5->m43);
  *&v34.a = vcvt_hight_f32_f64(vcvt_f32_f64(*&a5->m11), *&a5->m13);
  *&v34.c = v28;
  *&v34.tx = v29;
  v35 = v30;
  t1.b = 0.0;
  v26.f32[0] = a4;
  *&v23 = a6;
  *&t1.a = __PAIR64__(v26.u32[0], v23);
  incomingTextColor = self->_incomingTextColor;
  *&t1.c = self->_outgoingTextColor;
  *&t1.tx = incomingTextColor;
  [s_TSDMetalEdgeDistanceFieldMorphEffect_shader setPipelineStateWithEncoder:v14 vertexBytes:&v34 fragmentBytes:&t1];
  v32 = [(TSDMetalTextureInfo *)self->_outgoingTextureInfo name];
  [v14 setFragmentTexture:v32 atIndex:0];

  v33 = [(TSDMetalTextureInfo *)self->_incomingTextureInfo name];
  [v14 setFragmentTexture:v33 atIndex:1];
}

- (void)encodeWith:(id)a3 morphPercent:(double)a4 MVPMatrix:(CATransform3D *)a5 opacity:(double)a6 generateTextureMatrices:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = *(MEMORY[0x277CBF2C0] + 16);
  *&v49.a = *MEMORY[0x277CBF2C0];
  *&v49.c = v13;
  *&v49.tx = *(MEMORY[0x277CBF2C0] + 32);
  *&v48.a = *&v49.a;
  *&v48.c = v13;
  *&v48.tx = *&v49.tx;
  if (v7)
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
              TSDTransformConvertingRectToRectAtPercent(&v42, self->_outgoingTextBounds.origin.x, width, height, self->_incomingTextBounds.origin.x, self->_incomingTextBounds.origin.y, v38, v39, a4);
              CGAffineTransformInvert(&v49, &v42);
              TSDTransformConvertingRectToRectAtPercent(&v42, self->_incomingTextBounds.origin.x, self->_incomingTextBounds.size.width, self->_incomingTextBounds.size.height, self->_outgoingTextBounds.origin.x, self->_outgoingTextBounds.origin.y, self->_outgoingTextBounds.size.width, self->_outgoingTextBounds.size.height, 1.0 - a4);
              CGAffineTransformInvert(&v48, &v42);
            }
          }
        }
      }
    }
  }

  v32 = *&a5->m33;
  v44 = *&a5->m31;
  v45 = v32;
  v33 = *&a5->m43;
  v46 = *&a5->m41;
  v47 = v33;
  v34 = *&a5->m13;
  *&v42.a = *&a5->m11;
  *&v42.c = v34;
  v35 = *&a5->m23;
  *&v42.tx = *&a5->m21;
  v43 = v35;
  v41 = v49;
  v40 = v48;
  [(TSDMetalEdgeDistanceFieldMorphEffect *)self encodeWith:v12 morphPercent:&v42 MVPMatrix:&v41 opacity:&v40 outgoingTextureMatrix:a4 incomingTextureMatrix:a6];
}

@end