@interface PIPhotoGrain
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation PIPhotoGrain

+ (id)customAttributes
{
  v24[4] = *MEMORY[0x1E69E9840];
  v23[0] = *MEMORY[0x1E695F6B8];
  v22 = *MEMORY[0x1E695F7C8];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v24[0] = v13;
  v23[1] = @"inputLevel";
  v3 = *MEMORY[0x1E695F6E0];
  v18[0] = *MEMORY[0x1E695F6E8];
  v2 = v18[0];
  v18[1] = v3;
  v21[0] = &unk_1F471F400;
  v21[1] = &unk_1F471F410;
  v5 = *MEMORY[0x1E695F6F0];
  v19 = *MEMORY[0x1E695F6A0];
  v4 = v19;
  v20 = v5;
  v6 = *MEMORY[0x1E695F718];
  v21[2] = &unk_1F471F400;
  v21[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v18 count:4];
  v24[1] = v7;
  v23[2] = @"inputAmount";
  v16[0] = v2;
  v16[1] = v3;
  v17[0] = &unk_1F471F400;
  v17[1] = &unk_1F471F410;
  v8 = *MEMORY[0x1E695F6C8];
  v16[2] = v4;
  v16[3] = v8;
  v17[2] = &unk_1F471F410;
  v17[3] = &unk_1F471F400;
  v16[4] = v5;
  v17[4] = *MEMORY[0x1E695F758];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:5];
  v24[2] = v9;
  v23[3] = @"inputPhase";
  v14[0] = v2;
  v14[1] = v3;
  v15[0] = &unk_1F471F400;
  v15[1] = &unk_1F471F410;
  v14[2] = v4;
  v14[3] = v5;
  v15[2] = &unk_1F471F410;
  v15[3] = v6;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v24[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:4];

  return v11;
}

- (id)outputImage
{
  v24[3] = *MEMORY[0x1E69E9840];
  inputLevel = [(PIPhotoGrain *)self inputLevel];
  [inputLevel floatValue];
  v5 = v4;

  v6 = exp2f((v5 * 10.0) + -3.0) * 100.0;
  inputAmount = [(PIPhotoGrain *)self inputAmount];
  [inputAmount floatValue];
  v9 = v8;

  inputPhase = [(PIPhotoGrain *)self inputPhase];
  [inputPhase floatValue];
  v12 = v11;

  inputImage = [(PIPhotoGrain *)self inputImage];
  v23[0] = @"inputISO";
  *&v14 = v6;
  v15 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
  v24[0] = v15;
  v23[1] = @"inputAmount";
  LODWORD(v16) = v9;
  v17 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
  v24[1] = v17;
  v23[2] = @"inputSeed";
  LODWORD(v18) = v12;
  v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
  v24[2] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v21 = [inputImage imageByApplyingFilter:@"CIPhotoGrain" withInputParameters:v20];

  return v21;
}

@end