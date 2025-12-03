@interface PISpatioTemporalGuidedFilterProcessor
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
@end

@implementation PISpatioTemporalGuidedFilterProcessor

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  v91 = *MEMORY[0x1E69E9840];
  inputsCopy = inputs;
  argumentsCopy = arguments;
  outputCopy = output;
  metalCommandBuffer = [outputCopy metalCommandBuffer];
  device = [metalCommandBuffer device];
  v12 = [inputsCopy objectAtIndexedSubscript:0];
  v74 = inputsCopy;
  v77 = [inputsCopy objectAtIndexedSubscript:1];
  v69 = v12;
  metalTexture = [v12 metalTexture];
  v72 = outputCopy;
  metalTexture2 = [outputCopy metalTexture];
  width = [metalTexture width];
  height = [metalTexture height];
  v16 = [argumentsCopy objectForKeyedSubscript:@"epsilon"];
  v17 = v16;
  v18 = &unk_1F471F4E0;
  if (v16)
  {
    v18 = v16;
  }

  v19 = v18;

  v20 = [argumentsCopy objectForKeyedSubscript:@"radius"];
  v21 = v20;
  v22 = &unk_1F471EAC0;
  if (v20)
  {
    v22 = v20;
  }

  v23 = v22;

  v24 = [argumentsCopy objectForKeyedSubscript:@"channels"];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = @"RGB";
  }

  v27 = v26;

  v76 = v27;
  v28 = [(__CFString *)v27 isEqualToString:@"RGB"];
  v29 = [argumentsCopy objectForKeyedSubscript:@"iterations"];
  v30 = v29;
  v31 = &unk_1F471EAD8;
  if (v29)
  {
    v31 = v29;
  }

  v79 = v31;

  v73 = argumentsCopy;
  v32 = [argumentsCopy objectForKeyedSubscript:@"constrainToAlpha"];
  bOOLValue = [v32 BOOLValue];

  v34 = MEMORY[0x1E6974620];
  v67 = v23;
  v35 = (2 * [v23 unsignedIntegerValue]) | 1;
  v68 = v19;
  [v19 floatValue];
  if (v28)
  {
    v36 = 3;
  }

  else
  {
    v36 = 1;
  }

  v37 = [v34 filterDescriptorWithWidth:width height:height arrayLength:1 kernelSpatialDiameter:v35 kernelTemporalDiameter:1 epsilon:v36 sourceChannels:3 guideChannels:?];
  v70 = device;
  v78 = [objc_alloc(MEMORY[0x1E6974618]) initWithDevice:device filterDescriptor:v37];
  v82 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  17106181 = 0;
  v65 = bOOLValue;
  if (bOOLValue)
  {
    17106181 = [metalTexture newTextureViewWithPixelFormat:objc_msgSend(metalTexture textureType:"pixelFormat") levels:objc_msgSend(metalTexture slices:"textureType") swizzle:0, 1, 0, 1, 17106181];
  }

  v40 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:25 width:objc_msgSend(metalTexture2 height:"width") mipmapped:objc_msgSend(metalTexture2, "height"), 0];
  [v40 setStorageMode:2];
  v80 = v40;
  [v40 setUsage:3];
  v66 = v37;
  v75 = 17106181;
  if (v28)
  {
    v64 = v28;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v41 = [&unk_1F471FC98 countByEnumeratingWithState:&v83 objects:v90 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v84;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v84 != v43)
          {
            objc_enumerationMutation(&unk_1F471FC98);
          }

          v28 = (65793 * [*(*(&v83 + 1) + 8 * i) unsignedCharValue]) | v28 & 0xFFFFFFFF00000000 | 0x1000000;
          v45 = [metalTexture newTextureViewWithPixelFormat:objc_msgSend(metalTexture textureType:"pixelFormat") levels:objc_msgSend(metalTexture slices:"textureType") swizzle:0, 1, 0, 1, v28];
          [v82 addObject:v45];
          device2 = [metalTexture2 device];
          v47 = [device2 newTextureWithDescriptor:v80];

          [v38 addObject:v47];
        }

        v42 = [&unk_1F471FC98 countByEnumeratingWithState:&v83 objects:v90 count:16];
      }

      while (v42);
    }

    if (v65)
    {
      v89[0] = v75;
      v89[1] = v75;
      v89[2] = v75;
      v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:3];
    }

    else
    {
      v48 = 0;
    }

    v50 = metalCommandBuffer;
    v52 = v77;
    v49 = v64;
  }

  else
  {
    if (([(__CFString *)v76 isEqualToString:@"Red"]& 1) != 0)
    {
      v49 = 0;
      v50 = metalCommandBuffer;
      v51 = 16908802;
      v52 = v77;
    }

    else
    {
      v52 = v77;
      v49 = 0;
      if (([(__CFString *)v76 isEqualToString:@"Green"]& 1) != 0)
      {
        v50 = metalCommandBuffer;
        v51 = 16974595;
      }

      else
      {
        v50 = metalCommandBuffer;
        if ([(__CFString *)v76 isEqualToString:@"Blue"])
        {
          v51 = 17040388;
        }

        else
        {
          v51 = 0x1000000;
        }
      }
    }

    v53 = [metalTexture newTextureViewWithPixelFormat:objc_msgSend(metalTexture textureType:"pixelFormat") levels:objc_msgSend(metalTexture slices:"textureType") swizzle:0, 1, 0, 1, v51];
    [v82 addObject:v53];
    v48 = 0;
    if (bOOLValue)
    {
      v88 = v75;
      v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
    }

    device3 = [metalTexture2 device];
    v55 = [device3 newTextureWithDescriptor:v80];

    [v38 addObject:v55];
  }

  metalTexture3 = [v52 metalTexture];
  [v78 encodeToCommandBuffer:v50 sourceTextureArray:v82 guidanceTexture:metalTexture3 constraintsTextureArray:v48 numberOfIterations:objc_msgSend(v79 destinationTextureArray:{"unsignedIntegerValue"), v38}];

  if (v49)
  {
    v57 = metalTexture2;
    [PICombineRGBKernel combineRGBTextures:v38 intoDestinationTexture:metalTexture2 withCommandBuffer:v50];
  }

  else
  {
    v58 = [v38 objectAtIndexedSubscript:0];
    v87[0] = v58;
    v59 = [v38 objectAtIndexedSubscript:0];
    v87[1] = v59;
    [v38 objectAtIndexedSubscript:0];
    v61 = v60 = v50;
    v87[2] = v61;
    v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:3];
    v57 = metalTexture2;
    [PICombineRGBKernel combineRGBTextures:v62 intoDestinationTexture:metalTexture2 withCommandBuffer:v60];

    v50 = v60;
    v52 = v77;
  }

  return 1;
}

@end