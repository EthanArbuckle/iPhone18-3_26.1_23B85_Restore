@interface TSCH3DResourceLoader
+ (id)loader;
+ (unint64_t)estimatedMemoryInBytesForSize:(tvec2<int>)a3 samples:(unint64_t)a4 hasColorbuffer:(BOOL)a5 hasDepthbuffer:(BOOL)a6;
- (unint64_t)uploadResource:(id)a3 handle:(id)a4 insideSession:(id)a5 config:(id)a6;
- (void)destroyHandle:(id)a3 insideContext:(id)a4;
@end

@implementation TSCH3DResourceLoader

+ (id)loader
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (unint64_t)estimatedMemoryInBytesForSize:(tvec2<int>)a3 samples:(unint64_t)a4 hasColorbuffer:(BOOL)a5 hasDepthbuffer:(BOOL)a6
{
  v6 = *(*&a3 + 4) * *a3.var0.var0 * a4;
  v7 = 4 * v6;
  if (!a5)
  {
    v7 = 0;
  }

  v8 = 2 * v6;
  if (!a6)
  {
    v8 = 0;
  }

  return v7 + v8;
}

- (void)destroyHandle:(id)a3 insideContext:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v13 = objc_msgSend_sharedContext(v7, v8, v9, v10, v11);
  if (!v13)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v14, v15, v16, "[TSCH3DResourceLoader destroyHandle:insideContext:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DResourceLoader.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 37, 0, "invalid nil value for '%{public}s'", "sharedContext");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  objc_msgSend_deactivateHandle_insideContext_(self, v12, v14, v15, v16, v6, v13);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v35 = objc_msgSend_childrenContexts(v13, v32, 0.0, v33, v34);
  v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, v37, v38, v39, &v51, v55, 16);
  if (v41)
  {
    v45 = *v52;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v52 != v45)
        {
          objc_enumerationMutation(v35);
        }

        objc_msgSend_deactivateHandle_insideContext_(self, v40, v42, v43, v44, v6, *(*(&v51 + 1) + 8 * i));
      }

      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v40, v42, v43, v44, &v51, v55, 16);
    }

    while (v41);
  }

  objc_msgSend_destroyResourcesInContext_(v6, v47, v48, v49, v50, v7);
}

- (unint64_t)uploadResource:(id)a3 handle:(id)a4 insideSession:(id)a5 config:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v17 = objc_msgSend_buffer(a3, v13, v14, v15, v16);
  v22 = objc_msgSend_uploadDataBuffer_handle_insideSession_config_(self, v18, v19, v20, v21, v17, v10, v11, v12);

  return v22;
}

@end