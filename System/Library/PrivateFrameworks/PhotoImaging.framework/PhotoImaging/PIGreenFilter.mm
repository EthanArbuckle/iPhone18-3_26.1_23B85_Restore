@interface PIGreenFilter
- (CGRect)outputMaskSurroundExtent;
- (id)outputImage;
@end

@implementation PIGreenFilter

- (CGRect)outputMaskSurroundExtent
{
  inputMaskImage = [(PIGreenFilter *)self inputMaskImage];
  [inputMaskImage extent];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v29.origin.x = v5;
  v29.origin.y = v7;
  v29.size.width = v9;
  v29.size.height = v11;
  v30 = CGRectInset(v29, v9 * -0.1, v11 * -0.1);
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  inputImage = [(PIGreenFilter *)self inputImage];
  [inputImage extent];
  v34.origin.x = v17;
  v34.origin.y = v18;
  v34.size.width = v19;
  v34.size.height = v20;
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v32 = CGRectIntersection(v31, v34);
  v21 = v32.origin.x;
  v22 = v32.origin.y;
  v23 = v32.size.width;
  v24 = v32.size.height;

  v25 = v21;
  v26 = v22;
  v27 = v23;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (id)outputImage
{
  greenImage = [MEMORY[0x1E695F658] greenImage];
  inputImage = [(PIGreenFilter *)self inputImage];
  [inputImage extent];
  v5 = [greenImage imageByCroppingToRect:?];

  return v5;
}

@end