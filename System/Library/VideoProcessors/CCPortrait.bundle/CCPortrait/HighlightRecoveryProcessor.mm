@interface HighlightRecoveryProcessor
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
@end

@implementation HighlightRecoveryProcessor

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  outputCopy = output;
  argumentsCopy = arguments;
  inputsCopy = inputs;
  v51 = objc_msgSend_objectAtIndexedSubscript_(inputsCopy, v11, 0);
  v50 = objc_msgSend_objectAtIndexedSubscript_(inputsCopy, v12, 1);

  v15 = objc_msgSend_metalCommandBuffer(outputCopy, v13, v14);
  v48 = objc_msgSend_metalTexture(v51, v16, v17);
  v47 = objc_msgSend_metalTexture(outputCopy, v18, v19);

  v22 = objc_msgSend_metalTexture(v50, v20, v21);
  v45 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v23, @"dynamicParams");
  v49 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v24, @"iterations");
  v44 = objc_msgSend_intValue(v49, v25, v26);
  v46 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v27, @"tileSize");
  v43 = objc_msgSend_intValue(v46, v28, v29);
  v31 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v30, @"scanKernel");
  v33 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v32, @"diffuseKernel");
  v35 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v34, @"copyBackKernel");
  v37 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v36, @"copyKernel");
  v39 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v38, @"constants");

  v42 = 1;
  LOBYTE(v44) = objc_msgSend_runHighlightRecoveryWithInputTexture_outputTexture_temporaryTexture_dynamicParams_iterations_tileSize_scanKernel_diffuseKernel_copyBackKernel_copyKernel_commandBuffer_constants_forCoreImage_(UniHighlightRecovery, v40, v48, v47, v22, v45, v44, v43, v31, v33, v35, v37, v15, v39, v42);

  return v44;
}

@end