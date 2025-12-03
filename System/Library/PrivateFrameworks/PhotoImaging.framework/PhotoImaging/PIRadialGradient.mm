@interface PIRadialGradient
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation PIRadialGradient

+ (id)customAttributes
{
  v32[6] = *MEMORY[0x1E69E9840];
  v31[0] = *MEMORY[0x1E695F6B8];
  v2 = *MEMORY[0x1E695F7D0];
  v30[0] = *MEMORY[0x1E695F7A8];
  v30[1] = v2;
  v30[2] = *MEMORY[0x1E695F7C0];
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
  v32[0] = v19;
  v31[1] = *MEMORY[0x1E695FA70];
  v4 = *MEMORY[0x1E695F740];
  v5 = *MEMORY[0x1E695F6A0];
  v28[0] = *MEMORY[0x1E695F6F0];
  v3 = v28[0];
  v28[1] = v5;
  v29[0] = v4;
  v18 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0];
  v29[1] = v18;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v32[1] = v17;
  v31[2] = @"inputPoint0";
  v26[1] = v5;
  v27[0] = v4;
  v26[0] = v3;
  v16 = [MEMORY[0x1E695F688] vectorWithX:50.0 Y:50.0];
  v27[1] = v16;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v32[2] = v6;
  v31[3] = @"inputPoint1";
  v24[1] = v5;
  v25[0] = v4;
  v24[0] = v3;
  v7 = [MEMORY[0x1E695F688] vectorWithX:250.0 Y:250.0];
  v25[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v32[3] = v8;
  v31[4] = @"inputColor0";
  v9 = *MEMORY[0x1E695F708];
  v22[1] = v5;
  v23[0] = v9;
  v22[0] = v3;
  whiteColor = [MEMORY[0x1E695F610] whiteColor];
  v23[1] = whiteColor;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v32[4] = v11;
  v31[5] = @"inputColor1";
  v20[1] = v5;
  v21[0] = v9;
  v20[0] = v3;
  blackColor = [MEMORY[0x1E695F610] blackColor];
  v21[1] = blackColor;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v32[5] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:6];

  return v14;
}

- (id)outputImage
{
  v49[5] = *MEMORY[0x1E69E9840];
  inputColor0 = [(PIRadialGradient *)self inputColor0];
  v4 = inputColor0;
  if (inputColor0)
  {
    whiteColor = inputColor0;
  }

  else
  {
    whiteColor = [MEMORY[0x1E695F610] whiteColor];
  }

  v6 = whiteColor;

  inputColor1 = [(PIRadialGradient *)self inputColor1];
  v8 = inputColor1;
  if (inputColor1)
  {
    blackColor = inputColor1;
  }

  else
  {
    blackColor = [MEMORY[0x1E695F610] blackColor];
  }

  v10 = blackColor;

  inputCenter = [(PIRadialGradient *)self inputCenter];
  v12 = inputCenter;
  if (inputCenter)
  {
    v13 = inputCenter;
  }

  else
  {
    v13 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0];
  }

  v14 = v13;

  inputPoint0 = [(PIRadialGradient *)self inputPoint0];
  v16 = inputPoint0;
  if (inputPoint0)
  {
    v17 = inputPoint0;
  }

  else
  {
    v17 = [MEMORY[0x1E695F688] vectorWithX:50.0 Y:50.0];
  }

  v18 = v17;

  inputPoint1 = [(PIRadialGradient *)self inputPoint1];
  v20 = inputPoint1;
  if (inputPoint1)
  {
    v21 = inputPoint1;
  }

  else
  {
    v21 = [MEMORY[0x1E695F688] vectorWithX:250.0 Y:250.0];
  }

  v22 = v21;

  [v14 X];
  v46 = v23;
  [v14 Y];
  v24.f64[0] = v46;
  v24.f64[1] = v25;
  v47 = v24;
  [v18 X];
  v44 = v26;
  [v18 Y];
  v27.f64[0] = v44;
  v27.f64[1] = v28;
  v45 = v27;
  [v22 X];
  v43 = v29;
  [v22 Y];
  v30.f64[0] = v43;
  v30.f64[1] = v31;
  v32 = vsubq_f64(v45, v47);
  v33 = vsubq_f64(v30, v47);
  v34 = sqrt(vaddvq_f64(vmulq_f64(v33, v33)));
  v35 = MEMORY[0x1E695F648];
  v36 = *MEMORY[0x1E695FA70];
  v49[0] = v14;
  v48[0] = v36;
  v48[1] = @"inputRadius0";
  v37 = [MEMORY[0x1E696AD98] numberWithDouble:{sqrt(vaddvq_f64(vmulq_f64(v32, v32)))}];
  v49[1] = v37;
  v48[2] = @"inputRadius1";
  v38 = [MEMORY[0x1E696AD98] numberWithDouble:v34];
  v49[2] = v38;
  v49[3] = v6;
  v48[3] = @"inputColor0";
  v48[4] = @"inputColor1";
  v49[4] = v10;
  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:5];
  v40 = [v35 filterWithName:@"CIRadialGradient" withInputParameters:v39];

  outputImage = [v40 outputImage];

  return outputImage;
}

@end