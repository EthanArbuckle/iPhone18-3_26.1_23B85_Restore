@interface PISmartColorFilterHDR
+ (id)customAttributes;
- (BOOL)_isIdentity;
- (id)_kernelCNeg;
- (id)_kernelCPos;
- (id)_kernelCast;
- (id)_kernelV_gt1;
- (id)_kernelV_lt1;
- (id)outputImage;
@end

@implementation PISmartColorFilterHDR

+ (id)customAttributes
{
  v32[4] = *MEMORY[0x1E69E9840];
  v31[0] = *MEMORY[0x1E695F6B8];
  v2 = *MEMORY[0x1E695F7D0];
  v30[0] = *MEMORY[0x1E695F7C8];
  v30[1] = v2;
  v3 = *MEMORY[0x1E695F788];
  v30[2] = *MEMORY[0x1E695F7C0];
  v30[3] = v3;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
  v32[0] = v17;
  v31[1] = @"inputVibrancy";
  v5 = *MEMORY[0x1E695F6E8];
  v22[0] = *MEMORY[0x1E695F6D8];
  v4 = v22[0];
  v22[1] = v5;
  v28[0] = &unk_1F471F610;
  v28[1] = &unk_1F471F610;
  v7 = *MEMORY[0x1E695F6D0];
  v23 = *MEMORY[0x1E695F6E0];
  v6 = v23;
  v24 = v7;
  v28[2] = &unk_1F471F620;
  v28[3] = &unk_1F471F630;
  v9 = *MEMORY[0x1E695F6C8];
  v25 = *MEMORY[0x1E695F6A0];
  v8 = v25;
  v26 = v9;
  v28[4] = &unk_1F471F640;
  v28[5] = &unk_1F471F640;
  v27 = *MEMORY[0x1E695F6F0];
  v10 = v27;
  v29 = *MEMORY[0x1E695F758];
  v11 = v29;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v22 count:7];
  v32[1] = v16;
  v31[2] = *MEMORY[0x1E695FA88];
  v20[0] = v4;
  v20[1] = v5;
  v21[0] = &unk_1F471F610;
  v21[1] = &unk_1F471F610;
  v20[2] = v6;
  v20[3] = v7;
  v21[2] = &unk_1F471F620;
  v21[3] = &unk_1F471F630;
  v20[4] = v8;
  v20[5] = v9;
  v21[4] = &unk_1F471F640;
  v21[5] = &unk_1F471F640;
  v20[6] = v10;
  v21[6] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:7];
  v32[2] = v12;
  v31[3] = @"inputCast";
  v18[0] = v4;
  v18[1] = v5;
  v19[0] = &unk_1F471F610;
  v19[1] = &unk_1F471F610;
  v18[2] = v6;
  v18[3] = v7;
  v19[2] = &unk_1F471F620;
  v19[3] = &unk_1F471F620;
  v18[4] = v8;
  v18[5] = v9;
  v19[4] = &unk_1F471F640;
  v19[5] = &unk_1F471F640;
  v18[6] = v10;
  v19[6] = v11;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:7];
  v32[3] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:4];

  return v14;
}

- (id)outputImage
{
  v81[2] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    v3 = 0;
    goto LABEL_36;
  }

  if ([(PISmartColorFilterHDR *)self _isIdentity])
  {
    v3 = self->inputImage;
    goto LABEL_36;
  }

  [(NSNumber *)self->inputVibrancy doubleValue];
  v5 = fmin(fmax(v4, -1.0), 2.0);
  [(NSNumber *)self->inputContrast doubleValue];
  v7 = fmin(fmax(v6, -1.0), 2.0);
  [(NSNumber *)self->inputCast doubleValue];
  v9 = fmin(fmax(v8, -1.0), 1.0);
  v10 = self->inputImage;
  v3 = v10;
  if (fabs(v5) < 1.0e-10)
  {
    if (fabs(v7) < 1.0e-10)
    {
      if (fabsf(v9) < 1.0e-10)
      {
        goto LABEL_36;
      }

      v13 = 1;
LABEL_23:
      if (v9 <= 0.0)
      {
        if (v9 > -0.5)
        {
          *&v11 = v9 * -2.0;
          v49 = 0x3CA3D70ABD4CCCCDLL;
LABEL_28:
          *&v11 = vmul_n_f32(v49, *&v11);
          v74 = v11;
          v50 = 0.3;
          if (!v13)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

        v51 = (v9 + 0.5) * -2.0;
        v52 = 1.0;
        v53 = 1.0 - v51;
        *&v12 = vmul_n_f32(0xBCA3D70ABE0F5C29, v51);
        v54 = 0x3CA3D70ABD4CCCCDLL;
      }

      else
      {
        if (v9 < 0.5)
        {
          *&v11 = v9 + v9;
          v49 = 0xBD23D70A3DCCCCCDLL;
          goto LABEL_28;
        }

        v51 = (v9 + -0.5) + (v9 + -0.5);
        v52 = 1.0;
        v53 = 1.0 - v51;
        *&v12 = vmul_n_f32(0x3C23D70A3E3851ECLL, v51);
        v54 = 0xBD23D70A3DCCCCCDLL;
      }

      *&v12 = vmla_n_f32(*&v12, v54, v53);
      v74 = v12;
      v50 = (v52 + (v51 * -0.6)) * 0.3;
      if (!v13)
      {
LABEL_34:
        _kernelCast = [(PISmartColorFilterHDR *)self _kernelCast];
        [(CIImage *)v3 extent];
        v58 = v57;
        v60 = v59;
        v62 = v61;
        v64 = v63;
        v76[0] = v3;
        v76[1] = &unk_1F471F630;
        v65 = [MEMORY[0x1E696AD98] numberWithFloat:v75];
        v76[2] = v65;
        HIDWORD(v66) = HIDWORD(v75);
        LODWORD(v66) = HIDWORD(v75);
        v67 = [MEMORY[0x1E696AD98] numberWithFloat:v66];
        v76[3] = v67;
        *&v68 = v50;
        v69 = [MEMORY[0x1E696AD98] numberWithFloat:v68];
        v76[4] = v69;
        v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:5];
        v71 = [_kernelCast applyWithExtent:v70 arguments:{v58, v60, v62, v64}];

        v3 = v71;
        goto LABEL_35;
      }

LABEL_33:
      imageByUnpremultiplyingAlpha = [(CIImage *)v3 imageByUnpremultiplyingAlpha];

      v3 = imageByUnpremultiplyingAlpha;
      goto LABEL_34;
    }

    imageByUnpremultiplyingAlpha2 = [(CIImage *)v10 imageByUnpremultiplyingAlpha];

    v3 = imageByUnpremultiplyingAlpha2;
    goto LABEL_17;
  }

  if (v5 <= 0.0)
  {
    v14 = v5 + 1.0;
  }

  else
  {
    v14 = v5 * 3.0 + 1.0;
  }

  imageByUnpremultiplyingAlpha3 = [(CIImage *)v10 imageByUnpremultiplyingAlpha];

  if (v14 >= 1.0)
  {
    [(PISmartColorFilterHDR *)self _kernelV_gt1];
  }

  else
  {
    [(PISmartColorFilterHDR *)self _kernelV_lt1];
  }
  v17 = ;
  [imageByUnpremultiplyingAlpha3 extent];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v81[0] = imageByUnpremultiplyingAlpha3;
  v26 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
  v81[1] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:2];
  v3 = [v17 applyWithExtent:v27 arguments:{v19, v21, v23, v25}];

  if (fabs(v7) >= 1.0e-10)
  {
LABEL_17:
    v28 = v7 + v7;
    if (v7 + v7 <= 0.0)
    {
      v78 = @"inputAmount";
      v40 = [MEMORY[0x1E696AD98] numberWithDouble:{fmax(v28 / 6.0, -0.4)}];
      v79 = v40;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
      v42 = [(CIImage *)v3 imageByApplyingFilter:@"CIVibrance" withInputParameters:v41];

      _kernelCNeg = [(PISmartColorFilterHDR *)self _kernelCNeg];
      [(CIImage *)v42 extent];
      v31 = v43;
      v33 = v44;
      v35 = v45;
      v37 = v46;
      v77[0] = v42;
      v38 = [MEMORY[0x1E696AD98] numberWithDouble:-v28];
      v77[1] = v38;
      v39 = v77;
      v3 = v42;
    }

    else
    {
      _kernelCNeg = [(PISmartColorFilterHDR *)self _kernelCPos];
      [(CIImage *)v3 extent];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v80[0] = v3;
      v38 = [MEMORY[0x1E696AD98] numberWithDouble:v7 + v7];
      v80[1] = v38;
      v39 = v80;
    }

    v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
    v48 = [_kernelCNeg applyWithExtent:v47 arguments:{v31, v33, v35, v37}];

    v3 = v48;
  }

  if (fabsf(v9) >= 1.0e-10)
  {
    v13 = 0;
    goto LABEL_23;
  }

LABEL_35:
  imageByPremultiplyingAlpha = [(CIImage *)v3 imageByPremultiplyingAlpha];

  v3 = imageByPremultiplyingAlpha;
LABEL_36:

  return v3;
}

- (id)_kernelCast
{
  if (_kernelCast_once != -1)
  {
    dispatch_once(&_kernelCast_once, &__block_literal_global_48_8763);
  }

  v3 = _kernelCast_singleton;

  return v3;
}

uint64_t __36__PISmartColorFilterHDR__kernelCast__block_invoke()
{
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 _smartcolor_cast_HDR (__sample im, float lum, float grayI, float grayQ, float strength) \n { \n vec4 pix = clamp(im, 0.0, 1.0) \n pix.rgb = pow(pix.rgb, vec3(.25)); \n pix.rgb = pix.r * vec3(0.299, 0.595716, 0.211456) + \n pix.g * vec3(0.587, -0.274453, -0.522591) + \n pix.b * vec3(0.114, -0.321263, 0.311135); \n vec2 grayOffset = vec2(grayI, grayQ) ; \n vec3 result = pix.rgb; \n float newStrength = 1.0 + (strength-1.0)*(1.0-pix.r) ; \n result.gb = pix.gb + newStrength*grayOffset ; \n float damp = max(min(1.0, pix.r/(lum+0.00001)), 0.0) ; \n result.rgb = mix(pix.rgb, result.rgb, damp) ; \n pix.rgb = result.r * vec3(1.0) + \n result.g * vec3(0.956296, -0.272122, -1.10699) + \n result.b * vec3(0.621024, -0.647381, 1.70461); \n pix.rgb = clamp(pix.rgb, 0.0, 1.0); \n pix.rgb *= pix.rgb*pix.rgb*pix.rgb; \n pix.rgb += min(im.rgb, 0.0) + max(im.rgb, 1.0) -1.0; \n return pix; \n }"}];;
  v1 = _kernelCast_singleton;
  _kernelCast_singleton = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)_kernelV_lt1
{
  if (_kernelV_lt1_once != -1)
  {
    dispatch_once(&_kernelV_lt1_once, &__block_literal_global_43_8769);
  }

  v3 = _kernelV_lt1_singleton;

  return v3;
}

uint64_t __37__PISmartColorFilterHDR__kernelV_lt1__block_invoke()
{
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 _smartcolor_vibrancy_lt1_HDR (__sample im, float amt) \n { \n float gray = dot(im.rgb, vec3(0.333333)) \n im.rgb = mix(vec3(gray), im.rgb, amt); \n return im; \n }"}];;
  v1 = _kernelV_lt1_singleton;
  _kernelV_lt1_singleton = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)_kernelV_gt1
{
  if (_kernelV_gt1_once != -1)
  {
    dispatch_once(&_kernelV_gt1_once, &__block_literal_global_38);
  }

  v3 = _kernelV_gt1_singleton;

  return v3;
}

uint64_t __37__PISmartColorFilterHDR__kernelV_gt1__block_invoke()
{
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 _smartcolor_vibrancy_gt1_HDR (__sample im, float amt) \n { \n float gray = dot(clamp(im.rgb, 0.0, 1.0), vec3(.3, .5, .2)) \n float y = dot(clamp(im.rgb, 0.0, 1.0), vec3(.4, .2, .1)); \n float damp = 1.0-4.0*y*(1.0-y); \n float s = 1.0/(im.r+im.g+im.b); \n float r = im.r*s; \n float b = im.b*s; \n float d = 1.0-.8*smoothstep(0.2, 0.4, r-b); \n damp *= d; \n damp = amt > 2.5 ? min(damp+(amt-2.5)/5.0, 1.0) : damp; \n float sat = min(amt, 3.0); \n vec4 result; \n result.rgb = (im.rgb - gray)*sat + gray; \n result.rgb = mix(im.rgb, result.rgb, damp); \n result.a = im.a; \n return result; \n }"}];;
  v1 = _kernelV_gt1_singleton;
  _kernelV_gt1_singleton = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)_kernelCNeg
{
  if (_kernelCNeg_once != -1)
  {
    dispatch_once(&_kernelCNeg_once, &__block_literal_global_33_8777);
  }

  v3 = _kernelCNeg_singleton;

  return v3;
}

uint64_t __36__PISmartColorFilterHDR__kernelCNeg__block_invoke()
{
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 _smartcolor_contrast_darken_HDR (__sample im, float amt) \n { \n vec3 diff = im.rgb-dot(im.rgb, vec3(.0, .3, .5)) \n float dist = distance(diff, vec3(0.0)); \n dist = smoothstep(0.0, 1.0, dist); \n float strength = 5.0*dist*amt; \n vec3 pos = max(im.rgb, 1.0)-1.0 + min(im.rgb, 0.0); \n im.rgb = clamp(im.rgb, 0.0, 1.0); \n strength *= (im.b-im.g); \n float gray = 1.0-min(dot(im.rgb, vec3(0.5, 0.7, -0.20)), 1.0); \n vec4 result; \n result.rgb = strength < 0.0 ? pow(im.rgb, vec3(1.0-strength*gray)) : im.rgb/(strength+1.0-(im.rgb*strength)); \n result.rgb += pos; result.a = im.a; \n return result; \n }"}];;
  v1 = _kernelCNeg_singleton;
  _kernelCNeg_singleton = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)_kernelCPos
{
  if (_kernelCPos_once != -1)
  {
    dispatch_once(&_kernelCPos_once, &__block_literal_global_8782);
  }

  v3 = _kernelCPos_singleton;

  return v3;
}

uint64_t __36__PISmartColorFilterHDR__kernelCPos__block_invoke()
{
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 _smartcolor_contrast_HDR (__sample im, float amt) \n { \n vec3 diff = im.rgb-dot(im.rgb, vec3(.0, .3, .5)) \n float dist = distance(diff, vec3(0.0)); \n dist = smoothstep(0.0, 1.0, dist); \n float strength = 5.0*dist*amt; \n vec3 pos = max(im.rgb, 1.0)-1.0 + min(im.rgb, 0.0); \n im.rgb = clamp(im.rgb, 0.0, 1.0); \n strength *= (im.b-im.g); \n strength = max(strength, -0.35); \n vec4 result; \n result.rgb = im.rgb/(strength + 1.0 - (im.rgb*strength)) + pos; \n result.a = im.a; \n return result; \n }"}];;
  v1 = _kernelCPos_singleton;
  _kernelCPos_singleton = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (BOOL)_isIdentity
{
  [(NSNumber *)self->inputVibrancy doubleValue];
  v4 = v3;
  [(NSNumber *)self->inputContrast doubleValue];
  v6 = v5;
  [(NSNumber *)self->inputCast doubleValue];
  result = 0;
  if (fabs(v4) < 1.0e-10 && fabs(v6) < 1.0e-10)
  {
    return fabs(v7) < 1.0e-10;
  }

  return result;
}

@end