@interface GuidedFilterProcessor
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
+ (int)formatForInputAtIndex:(int)index;
@end

@implementation GuidedFilterProcessor

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  inputsCopy = inputs;
  argumentsCopy = arguments;
  outputCopy = output;
  v13 = objc_msgSend_metalCommandBuffer(outputCopy, v11, v12);
  v16 = objc_msgSend_device(v13, v14, v15);
  v19 = objc_msgSend_findKernel_device_(UniDeviceCache, v17, argumentsCopy, v16);
  if (v19)
  {
    v20 = objc_msgSend_objectAtIndexedSubscript_(inputsCopy, v18, 0);
    v23 = objc_msgSend_metalTexture(v20, v21, v22);

    v42 = inputsCopy;
    v25 = objc_msgSend_objectAtIndexedSubscript_(inputsCopy, v24, 1);
    v44 = objc_msgSend_metalTexture(v25, v26, v27);

    v43 = objc_msgSend_metalTexture(outputCopy, v28, v29);
    v41 = v23;
    v46 = v23;
    v31 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v30, &v46, 1);
    v34 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v32, @"iterations");
    if (v34)
    {
      v23 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v33, @"iterations");
      v37 = objc_msgSend_unsignedIntegerValue(v23, v35, v36);
    }

    else
    {
      v37 = 50;
    }

    v45 = v43;
    v38 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v33, &v45, 1);
    objc_msgSend_encodeToCommandBuffer_sourceTextureArray_guidanceTexture_constraintsTextureArray_numberOfIterations_destinationTextureArray_(v19, v39, v13, v31, v44, 0, v37, v38);

    if (v34)
    {
    }

    inputsCopy = v42;
  }

  return v19 != 0;
}

+ (int)formatForInputAtIndex:(int)index
{
  if (index)
  {
    if (index != 1)
    {
      sub_2956CD920();
    }

    v3 = MEMORY[0x29EDB91D8];
  }

  else
  {
    v3 = MEMORY[0x29EDB9218];
  }

  return *v3;
}

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  argumentsCopy = arguments;
  v8 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v7, @"imageExtents");
  if (!v8)
  {
    sub_2956CD978();
  }

  v10 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v9, @"imageExtents");
  if (objc_msgSend_count(v10, v11, v12) <= input)
  {
    sub_2956CD94C();
  }

  v14 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v13, @"imageExtents");
  v16 = objc_msgSend_objectAtIndexedSubscript_(v14, v15, input);
  objc_msgSend_CGRectValue(v16, v17, v18);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = v20;
  v28 = v22;
  v29 = v24;
  v30 = v26;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

@end