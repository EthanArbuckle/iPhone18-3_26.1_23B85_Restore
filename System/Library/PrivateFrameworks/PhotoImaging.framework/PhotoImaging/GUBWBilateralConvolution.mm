@interface GUBWBilateralConvolution
+ (id)BWBilateralKernels;
+ (id)bilateralLoop11Kernel;
+ (id)bilateralLoop2Kernel;
+ (id)bilateralLoop5Kernel;
- (id)doBilateralLoop:(id)a3 points:(id)a4 weights:(id)a5 slope:(id)a6;
- (id)outputImage;
@end

@implementation GUBWBilateralConvolution

+ (id)bilateralLoop11Kernel
{
  v2 = [a1 BWBilateralKernels];
  v3 = [v2 objectForKeyedSubscript:@"bilateralLoop11"];

  return v3;
}

+ (id)bilateralLoop5Kernel
{
  v2 = [a1 BWBilateralKernels];
  v3 = [v2 objectForKeyedSubscript:@"bilateralLoop5"];

  return v3;
}

+ (id)bilateralLoop2Kernel
{
  v2 = [a1 BWBilateralKernels];
  v3 = [v2 objectForKeyedSubscript:@"bilateralLoop2"];

  return v3;
}

+ (id)BWBilateralKernels
{
  if (BWBilateralKernels_onceToken != -1)
  {
    dispatch_once(&BWBilateralKernels_onceToken, &__block_literal_global_118);
  }

  v3 = BWBilateralKernels_BWBilateralKernels;

  return v3;
}

uint64_t __46__GUBWBilateralConvolution_BWBilateralKernels__block_invoke()
{
  v0 = [MEMORY[0x1E695F660] kernelsDictionaryWithString:&cfstr_KernelVec4Bila];
  v1 = BWBilateralKernels_BWBilateralKernels;
  BWBilateralKernels_BWBilateralKernels = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)outputImage
{
  v3 = [(NSArray *)self->_inputPoints count];
  v4 = [(NSArray *)self->_inputWeights count];
  if (v3)
  {
    v5 = v4 == v3;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    [(NSNumber *)self->_inputEdgeDetail floatValue];
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:__exp10(v7 + -3.0) * -200.0];
    v9 = [MEMORY[0x1E695F680] samplerWithImage:self->_inputImage];
    v6 = [(GUBWBilateralConvolution *)self doBilateralLoop:v9 points:self->_inputPoints weights:self->_inputWeights slope:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)doBilateralLoop:(id)a3 points:(id)a4 weights:(id)a5 slope:(id)a6
{
  v77[3] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [a4 count];
  v14 = MEMORY[0x1E696AD98];
  [v12 doubleValue];
  v16 = v15;

  v17 = [v14 numberWithDouble:-v16];
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __65__GUBWBilateralConvolution_doBilateralLoop_points_weights_slope___block_invoke;
  v74[3] = &unk_1E82AA790;
  v74[4] = self;
  v18 = MEMORY[0x1CCA61740](v74);
  switch(v13)
  {
    case 11:
      v75[0] = v10;
      v75[1] = v17;
      v73 = v17;
      v42 = MEMORY[0x1E695F688];
      v70 = [v11 objectAtIndex:0];
      [v70 floatValue];
      v44 = v43;
      v69 = [v11 objectAtIndex:1];
      [v69 floatValue];
      v46 = v45;
      v68 = [v11 objectAtIndex:2];
      [v68 floatValue];
      v48 = v47;
      v67 = [v11 objectAtIndex:3];
      [v67 floatValue];
      v50 = [v42 vectorWithX:v44 Y:v46 Z:v48 W:v49];
      v75[2] = v50;
      v51 = MEMORY[0x1E695F688];
      v52 = [v11 objectAtIndex:5];
      [v52 floatValue];
      v54 = v53;
      [v11 objectAtIndex:6];
      v55 = v71 = v18;
      [v55 floatValue];
      v57 = v56;
      v58 = [v11 objectAtIndex:7];
      [v58 floatValue];
      v60 = v59;
      v61 = [v11 objectAtIndex:9];
      [v61 floatValue];
      v63 = [v51 vectorWithX:v54 Y:v57 Z:v60 W:v62];
      v75[3] = v63;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:4];

      v17 = v73;
      v18 = v71;

      v27 = [objc_opt_class() bilateralLoop11Kernel];
      goto LABEL_7;
    case 5:
      v76[0] = v10;
      v76[1] = v17;
      v28 = MEMORY[0x1E695F688];
      v72 = [v11 objectAtIndex:0];
      [v72 floatValue];
      v30 = v29;
      v31 = [v11 objectAtIndex:1];
      [v31 floatValue];
      v33 = v32;
      v34 = [v11 objectAtIndex:2];
      [v34 floatValue];
      v36 = v35;
      [v11 objectAtIndex:3];
      v37 = v10;
      v39 = v38 = v18;
      [v39 floatValue];
      v41 = [v28 vectorWithX:v30 Y:v33 Z:v36 W:v40];
      v76[2] = v41;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:3];

      v18 = v38;
      v10 = v37;

      v27 = [objc_opt_class() bilateralLoop5Kernel];
      goto LABEL_7;
    case 2:
      v77[0] = v10;
      v77[1] = v17;
      v19 = MEMORY[0x1E695F688];
      v20 = [v11 objectAtIndex:0];
      [v20 floatValue];
      v22 = v21;
      v23 = [v11 objectAtIndex:1];
      [v23 floatValue];
      v25 = [v19 vectorWithX:v22 Y:v24];
      v77[2] = v25;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:3];

      v27 = [objc_opt_class() bilateralLoop2Kernel];
LABEL_7:
      v64 = v27;
      [v10 extent];
      v65 = [v64 applyWithExtent:v18 roiCallback:v26 arguments:?];

      goto LABEL_9;
  }

  v26 = 0;
  v65 = 0;
LABEL_9:

  return v65;
}

@end