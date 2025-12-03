@interface PIDefinitionFilter
+ (id)definitionKernel;
- (id)outputImage;
@end

@implementation PIDefinitionFilter

+ (id)definitionKernel
{
  if (definitionKernel_onceToken != -1)
  {
    dispatch_once(&definitionKernel_onceToken, &__block_literal_global_7730);
  }

  v3 = definitionKernel_s_definitionKernel;

  return v3;
}

uint64_t __38__PIDefinitionFilter_definitionKernel__block_invoke()
{
  v0 = [MEMORY[0x1E695F618] kernelWithString:{@"vec4 meaningBlur(vec4 im, vec4 b)\n{\nvec4 result = im\nfloat thresh = 0.1;\nfloat g1 = max(max(im.r, im.g), im.b);\nfloat g2 = dot(b.rgb, vec3(1.0/3.0));\nfloat diff = max(g2-g1, -1.0);\ndiff = smoothstep(0.1-thresh, 0.1+thresh, diff);\nresult.rgb = mix(im.rgb, b.rgb, diff+0.5);\nreturn result;\n}\nvec4 clarityNew(vec4 s, vec4 b, float intensity)\n{\nfloat sl = (s.r + s.g + s.b);\nfloat bl = (b.r + b.g + b.b);\nfloat dl = sl + (sl - bl) * intensity;\nfloat mult = dl / max(sl, 0.0001);\nmult = 1.571 * (mult - 1.0);\nmult = mult / (1.0 + abs(mult));\nmult += 1.0;\nmult = clamp(mult, 1.0 - 0.5 * abs(intensity), 1.0 + 1.0 * abs(intensity));\ns.rgb = s.rgb * mult;\nreturn s;\n}\nkernel vec4 definition(sampler image, sampler blur, float intensity)\n{\nvec4 imgSample = sample(image, samplerCoord(image));\nvec4 blurSample = sample(blur, samplerCoord(blur));\nvec4 meaning = meaningBlur(imgSample, blurSample);\nvec4 clarity = clarityNew(imgSample, meaning, intensity);\nreturn clarity;\n}\n\n"}];;
  v1 = definitionKernel_s_definitionKernel;
  definitionKernel_s_definitionKernel = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)outputImage
{
  v11[3] = *MEMORY[0x1E69E9840];
  imageByUnpremultiplyingAlpha = [(CIImage *)self->_inputImage imageByUnpremultiplyingAlpha];
  imageByUnpremultiplyingAlpha2 = [(CIImage *)self->_inputBlurImage imageByUnpremultiplyingAlpha];
  inputIntensity = self->_inputIntensity;
  v11[1] = imageByUnpremultiplyingAlpha2;
  v11[2] = inputIntensity;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];

  definitionKernel = [objc_opt_class() definitionKernel];
  [(CIImage *)self->_inputImage extent];
  v8 = [definitionKernel applyWithExtent:v6 arguments:?];

  imageByPremultiplyingAlpha = [v8 imageByPremultiplyingAlpha];

  return imageByPremultiplyingAlpha;
}

@end