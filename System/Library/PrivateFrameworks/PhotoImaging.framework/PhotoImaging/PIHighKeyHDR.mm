@interface PIHighKeyHDR
+ (id)customAttributes;
- (id)_highKeyHDR;
- (id)outputImage;
@end

@implementation PIHighKeyHDR

+ (id)customAttributes
{
  v14[2] = *MEMORY[0x1E69E9840];
  v13[0] = *MEMORY[0x1E695F6B8];
  v2 = *MEMORY[0x1E695F7D0];
  v12[0] = *MEMORY[0x1E695F790];
  v12[1] = v2;
  v12[2] = *MEMORY[0x1E695F7C0];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  v13[1] = @"inputStrength";
  v4 = *MEMORY[0x1E695F6D0];
  v10[0] = *MEMORY[0x1E695F6A0];
  v10[1] = v4;
  v11[0] = &unk_1F471F6C0;
  v11[1] = &unk_1F471F6D0;
  v5 = *MEMORY[0x1E695F6F0];
  v10[2] = *MEMORY[0x1E695F6D8];
  v10[3] = v5;
  v14[0] = v3;
  v6 = *MEMORY[0x1E695F758];
  v11[2] = &unk_1F471F6E0;
  v11[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];
  v14[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v8;
}

- (id)outputImage
{
  v18[2] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  if (inputImage)
  {
    v4 = inputImage;
    v5 = [(PIHighKeyHDR *)self _highKeyHDR];
    [(CIImage *)self->inputImage extent];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    inputStrength = self->inputStrength;
    v18[0] = v4;
    v18[1] = inputStrength;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

    v16 = [v5 applyWithExtent:v15 arguments:{v7, v9, v11, v13}];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_highKeyHDR
{
  if (_highKeyHDR_once != -1)
  {
    dispatch_once(&_highKeyHDR_once, &__block_literal_global_12114);
  }

  v3 = _highKeyHDR_singleton;

  return v3;
}

uint64_t __27__PIHighKeyHDR__highKeyHDR__block_invoke()
{
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"kernel vec4 _highKeyHDR(__sample im, float str) \n { \n vec3 neg = min(im.rgb, 0.0) \n vec3 pos = max(im.rgb, 1.0) - 1.0; \n im = clamp(im, 0.0, 1.0); \n vec4 im2 = 1.0-((im-1.0)*(im-1.0)); \n im2 = sqrt(im2); \n float y = dot(im.rgb, vec3(.333333)); \n float y2 = sqrt(1.0-(y-1.0)*(y-1.0)); \n y2 = mix(y2, smoothstep(0.0, 1.0, y2), 0.5); \n vec4 im3 = (y>0) ? im*y2/y : vec4(0.0, 0.0, 0.0, 1.0) ; \n im3 = mix(im3, im2, .7*sqrt(y2)); \n im3 = mix(im, im3, sqrt(y)) ; \n im.rgb = mix(im.rgb, im3.rgb, str) + pos + neg; \n return im; } \n"}];;
  v1 = _highKeyHDR_singleton;
  _highKeyHDR_singleton = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end