@interface TSCH3DPyramidLevelResources
+ (id)resourcesWithFBOSize:(tvec2<int>)a3;
- (BOOL)isEqual:(id)a3;
- (TSCH3DPyramidLevelResources)initWithFBOSize:(tvec2<int>)a3;
- (tvec2<int>)size;
@end

@implementation TSCH3DPyramidLevelResources

+ (id)resourcesWithFBOSize:(tvec2<int>)a3
{
  v4 = [a1 alloc];
  v10 = **&a3;
  v8 = objc_msgSend_initWithFBOSize_(v4, v5, v10, v6, v7, &v10);

  return v8;
}

- (TSCH3DPyramidLevelResources)initWithFBOSize:(tvec2<int>)a3
{
  v22.receiver = self;
  v22.super_class = TSCH3DPyramidLevelResources;
  v4 = [(TSCH3DPyramidLevelResources *)&v22 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D812A8]);
    v21 = **&a3;
    v9 = objc_msgSend_pyramidResourceWithFBOSize_(TSCH3DPyramidBlurFBOResource, v6, v21, v7, v8, &v21);
    v21 = **&a3;
    v13 = objc_msgSend_pyramidResourceWithFBOSize_(TSCH3DPyramidBlurFBOResource, v10, v21, v11, v12, &v21);
    second = objc_msgSend_initWithFirst_second_(v5, v14, v15, v16, v17, v9, v13);
    resourcePair = v4->_resourcePair;
    v4->_resourcePair = second;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    v6 = TSUSpecificCast();
    if (v6)
    {
      isEqual = objc_msgSend_isEqual_(self->_resourcePair, v5, v7, v8, v9, v6[1]);
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (tvec2<int>)size
{
  v7 = v2;
  v8 = objc_msgSend_finalResource(self, a2, v3, v4, v5);

  if (!v8)
  {
    v13 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCH3DPyramidLevelResources size]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPyramidBlurShadowsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v20, v21, v22, v33, v18, 99, 0, "invalid nil value for '%{public}s'", "self.finalResource");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = objc_msgSend_finalResource(self, v9, v10, v11, v12);
  v34 = v27;
  if (v27)
  {
    objc_msgSend_size(v27, v28, v29, v30, v31);
  }

  else
  {
    *v7 = 0;
  }

  return v32;
}

@end