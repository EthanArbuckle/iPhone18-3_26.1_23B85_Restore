@interface PIPortraitDebugFilter
- (id)outputImage;
@end

@implementation PIPortraitDebugFilter

- (id)outputImage
{
  v117[7] = *MEMORY[0x1E69E9840];
  inputImage = [(PIPortraitDebugFilter *)self inputImage];
  depthInfo = [(PIPortraitDebugFilter *)self depthInfo];
  if (depthInfo)
  {
    [inputImage extent];
    v6 = v5;
    v8 = v7;
    cyanColor = [MEMORY[0x1E695F610] cyanColor];
    v117[0] = cyanColor;
    magentaColor = [MEMORY[0x1E695F610] magentaColor];
    v117[1] = magentaColor;
    [MEMORY[0x1E695F610] yellowColor];
    v11 = v105 = depthInfo;
    v117[2] = v11;
    redColor = [MEMORY[0x1E695F610] redColor];
    v117[3] = redColor;
    greenColor = [MEMORY[0x1E695F610] greenColor];
    v117[4] = greenColor;
    blueColor = [MEMORY[0x1E695F610] blueColor];
    v117[5] = blueColor;
    grayColor = [MEMORY[0x1E695F610] grayColor];
    v117[6] = grayColor;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:7];

    v17 = MEMORY[0x1E695F648];
    v114 = *MEMORY[0x1E695FAA8];
    v18 = v114;
    v19 = [MEMORY[0x1E695F688] vectorWithCGRect:{-25.0, -25.0, 50.0, 50.0}];
    v115 = *MEMORY[0x1E695FB10];
    v20 = v115;
    v116[0] = v19;
    v116[1] = &unk_1F471EDC0;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v116 forKeys:&v114 count:2];
    v22 = [v17 filterWithName:@"CIRoundedRectangleStrokeGenerator" withInputParameters:v21];

    v23 = MEMORY[0x1E695F648];
    v104 = v18;
    v112[0] = v18;
    v24 = [MEMORY[0x1E695F688] vectorWithCGRect:{-25.0, -25.0, 50.0, 50.0}];
    v103 = v20;
    v112[1] = v20;
    v113[0] = v24;
    v113[1] = &unk_1F471EDC0;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v113 forKeys:v112 count:2];
    v106 = [v23 filterWithName:@"CIRoundedRectangleGenerator" withInputParameters:v25];

    v26 = [v105 objectForKeyedSubscript:@"faces"];
    if ([v26 count])
    {
      v27 = 0;
      v107 = *MEMORY[0x1E695FB48];
      v108 = *MEMORY[0x1E695FA78];
      do
      {
        v28 = [v26 objectAtIndexedSubscript:v27];
        v29 = [v16 objectAtIndexedSubscript:{v27 % objc_msgSend(v16, "count")}];
        v30 = [v28 objectForKeyedSubscript:@"leftEyeX"];
        if (v30)
        {
          v31 = v30;
          v32 = [v28 objectForKeyedSubscript:@"leftEyeY"];

          if (v32)
          {
            [v22 setValue:v29 forKey:v108];
            [v22 setValue:&unk_1F471EDD8 forKey:v107];
            v33 = [v28 objectForKeyedSubscript:@"leftEyeX"];
            [v33 doubleValue];
            v35 = v34;

            v36 = [v28 objectForKeyedSubscript:@"leftEyeY"];
            [v36 doubleValue];
            v38 = v37;

            outputImage = [v22 outputImage];
            CGAffineTransformMakeTranslation(&v109, v6 * v35, v8 * v38);
            v40 = [outputImage imageByApplyingTransform:&v109];

            v41 = [v40 imageByCompositingOverImage:inputImage];

            inputImage = v41;
          }
        }

        v42 = [v28 objectForKeyedSubscript:@"rightEyeX"];
        if (v42)
        {
          v43 = v42;
          v44 = [v28 objectForKeyedSubscript:@"rightEyeY"];

          if (v44)
          {
            [v22 setValue:v29 forKey:v108];
            [v22 setValue:&unk_1F471EDF0 forKey:v107];
            v45 = [v28 objectForKeyedSubscript:@"rightEyeX"];
            [v45 doubleValue];
            v47 = v46;

            v48 = [v28 objectForKeyedSubscript:@"rightEyeY"];
            [v48 doubleValue];
            v50 = v49;

            outputImage2 = [v22 outputImage];
            CGAffineTransformMakeTranslation(&v109, v6 * v47, v8 * v50);
            v52 = [outputImage2 imageByApplyingTransform:&v109];

            v53 = [v52 imageByCompositingOverImage:inputImage];

            inputImage = v53;
          }
        }

        v54 = [v28 objectForKeyedSubscript:@"noseX"];
        if (v54)
        {
          v55 = v54;
          v56 = [v28 objectForKeyedSubscript:@"noseY"];

          if (v56)
          {
            [v106 setValue:v29 forKey:v108];
            outputImage3 = [v106 outputImage];
            v58 = [v28 objectForKeyedSubscript:@"noseX"];
            [v58 doubleValue];
            v60 = v59;

            v61 = [v28 objectForKeyedSubscript:@"noseY"];
            [v61 doubleValue];
            v63 = v62;

            CGAffineTransformMakeTranslation(&v109, v6 * v60, v8 * v63);
            v64 = [outputImage3 imageByApplyingTransform:&v109];

            v65 = [v64 imageByCompositingOverImage:inputImage];

            inputImage = v65;
          }
        }

        v66 = [v28 objectForKeyedSubscript:@"chinX"];
        if (v66)
        {
          v67 = v66;
          v68 = [v28 objectForKeyedSubscript:@"chinY"];

          if (v68)
          {
            v69 = [v28 objectForKeyedSubscript:@"chinX"];
            [v69 doubleValue];
            v71 = v70;

            v72 = [v28 objectForKeyedSubscript:@"chinY"];
            [v72 doubleValue];
            v74 = v73;

            v75 = [MEMORY[0x1E695F658] imageWithColor:v29];
            v76 = [v75 imageByCroppingToRect:{-22.0, -22.0, 44.0, 44.0}];

            CGAffineTransformMakeTranslation(&v109, v6 * v71, v8 * v74);
            v77 = [v76 imageByApplyingTransform:&v109];

            v78 = [v77 imageByCompositingOverImage:inputImage];

            inputImage = v78;
          }
        }

        ++v27;
      }

      while (v27 < [v26 count]);
    }

    depthInfo = v105;
    v79 = [v105 objectForKeyedSubscript:@"focusRect"];
    v80 = v79;
    if (v79)
    {
      v81 = [v79 objectForKeyedSubscript:@"x"];
      [v81 doubleValue];
      v83 = v6 * v82;

      v84 = [v80 objectForKeyedSubscript:@"y"];
      [v84 doubleValue];
      v86 = v8 * v85;

      v87 = [v80 objectForKeyedSubscript:@"w"];
      [v87 doubleValue];
      v89 = v6 * v88;

      v90 = [v80 objectForKeyedSubscript:@"h"];
      [v90 doubleValue];
      v92 = v8 * v91;

      v93 = MEMORY[0x1E695F648];
      v110[0] = v104;
      v94 = [MEMORY[0x1E695F688] vectorWithCGRect:{v83, v86, v89, v92}];
      v111[0] = v94;
      v111[1] = &unk_1F471EE08;
      v95 = *MEMORY[0x1E695FB48];
      v110[1] = v103;
      v110[2] = v95;
      v111[2] = &unk_1F471EE20;
      v110[3] = *MEMORY[0x1E695FA78];
      yellowColor = [MEMORY[0x1E695F610] yellowColor];
      v111[3] = yellowColor;
      v97 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v111 forKeys:v110 count:4];
      v98 = [v93 filterWithName:@"CIRoundedRectangleStrokeGenerator" withInputParameters:v97];
      outputImage4 = [v98 outputImage];

      v100 = [outputImage4 imageByCompositingOverImage:inputImage];

      inputImage = v100;
      depthInfo = v105;
    }

    v101 = inputImage;
  }

  else
  {
    v101 = inputImage;
  }

  return v101;
}

@end