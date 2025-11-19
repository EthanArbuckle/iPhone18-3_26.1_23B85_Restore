@interface HighlightRecoveryProcessor
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
@end

@implementation HighlightRecoveryProcessor

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v51 = objc_msgSend_objectAtIndexedSubscript_(v10, v11, 0);
  v50 = objc_msgSend_objectAtIndexedSubscript_(v10, v12, 1);

  v15 = objc_msgSend_metalCommandBuffer(v8, v13, v14);
  v48 = objc_msgSend_metalTexture(v51, v16, v17);
  v47 = objc_msgSend_metalTexture(v8, v18, v19);

  v22 = objc_msgSend_metalTexture(v50, v20, v21);
  v45 = objc_msgSend_objectForKeyedSubscript_(v9, v23, @"dynamicParams");
  v49 = objc_msgSend_objectForKeyedSubscript_(v9, v24, @"iterations");
  v44 = objc_msgSend_intValue(v49, v25, v26);
  v46 = objc_msgSend_objectForKeyedSubscript_(v9, v27, @"tileSize");
  v43 = objc_msgSend_intValue(v46, v28, v29);
  v31 = objc_msgSend_objectForKeyedSubscript_(v9, v30, @"scanKernel");
  v33 = objc_msgSend_objectForKeyedSubscript_(v9, v32, @"diffuseKernel");
  v35 = objc_msgSend_objectForKeyedSubscript_(v9, v34, @"copyBackKernel");
  v37 = objc_msgSend_objectForKeyedSubscript_(v9, v36, @"copyKernel");
  v39 = objc_msgSend_objectForKeyedSubscript_(v9, v38, @"constants");

  v42 = 1;
  LOBYTE(v44) = objc_msgSend_runHighlightRecoveryWithInputTexture_outputTexture_temporaryTexture_dynamicParams_iterations_tileSize_scanKernel_diffuseKernel_copyBackKernel_copyKernel_commandBuffer_constants_forCoreImage_(UniHighlightRecovery, v40, v48, v47, v22, v45, v44, v43, v31, v33, v35, v37, v15, v39, v42);

  return v44;
}

@end