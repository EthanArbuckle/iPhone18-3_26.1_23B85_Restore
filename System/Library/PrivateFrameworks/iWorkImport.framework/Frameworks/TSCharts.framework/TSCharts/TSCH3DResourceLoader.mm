@interface TSCH3DResourceLoader
+ (id)loader;
+ (unint64_t)estimatedMemoryInBytesForSize:(tvec2<int>)size samples:(unint64_t)samples hasColorbuffer:(BOOL)colorbuffer hasDepthbuffer:(BOOL)depthbuffer;
- (unint64_t)uploadResource:(id)resource handle:(id)handle insideSession:(id)session config:(id)config;
- (void)destroyHandle:(id)handle insideContext:(id)context;
@end

@implementation TSCH3DResourceLoader

+ (id)loader
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (unint64_t)estimatedMemoryInBytesForSize:(tvec2<int>)size samples:(unint64_t)samples hasColorbuffer:(BOOL)colorbuffer hasDepthbuffer:(BOOL)depthbuffer
{
  v6 = *(*&size + 4) * *size.var0.var0 * samples;
  v7 = 4 * v6;
  if (!colorbuffer)
  {
    v7 = 0;
  }

  v8 = 2 * v6;
  if (!depthbuffer)
  {
    v8 = 0;
  }

  return v7 + v8;
}

- (void)destroyHandle:(id)handle insideContext:(id)context
{
  v56 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  contextCopy = context;
  v13 = objc_msgSend_sharedContext(contextCopy, v8, v9, v10, v11);
  if (!v13)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v14, v15, v16, "[TSCH3DResourceLoader destroyHandle:insideContext:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DResourceLoader.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 37, 0, "invalid nil value for '%{public}s'", "sharedContext");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  objc_msgSend_deactivateHandle_insideContext_(self, v12, v14, v15, v16, handleCopy, v13);
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

        objc_msgSend_deactivateHandle_insideContext_(self, v40, v42, v43, v44, handleCopy, *(*(&v51 + 1) + 8 * i));
      }

      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v40, v42, v43, v44, &v51, v55, 16);
    }

    while (v41);
  }

  objc_msgSend_destroyResourcesInContext_(handleCopy, v47, v48, v49, v50, contextCopy);
}

- (unint64_t)uploadResource:(id)resource handle:(id)handle insideSession:(id)session config:(id)config
{
  handleCopy = handle;
  sessionCopy = session;
  configCopy = config;
  v17 = objc_msgSend_buffer(resource, v13, v14, v15, v16);
  v22 = objc_msgSend_uploadDataBuffer_handle_insideSession_config_(self, v18, v19, v20, v21, v17, handleCopy, sessionCopy, configCopy);

  return v22;
}

@end