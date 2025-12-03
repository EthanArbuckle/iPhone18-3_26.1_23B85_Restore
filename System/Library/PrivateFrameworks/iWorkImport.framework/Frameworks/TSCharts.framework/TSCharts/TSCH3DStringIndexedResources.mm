@interface TSCH3DStringIndexedResources
- (id)resourceAtIndex:(const void *)index string:(id)string;
@end

@implementation TSCH3DStringIndexedResources

- (id)resourceAtIndex:(const void *)index string:(id)string
{
  stringCopy = string;
  if ((objc_msgSend_hasResourceAtIndex_(self, v7, v8, v9, v10, index) & 1) == 0)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "[TSCH3DStringIndexedResources resourceAtIndex:string:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DStringIndexedResources.mm");
    v22 = MEMORY[0x277CCACA8];
    v64 = *(index + 1);
    sub_276152FD4("ivec2(%d, %d)", v23, v24, v25, v26, v27, v28, v29, *index);
    if (v67 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v22, v30, v31, v32, v33, &__p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v22, v30, v31, v32, v33, __p);
    }
    v35 = ;
    if (v67 < 0)
    {
      operator delete(__p);
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v34, v36, v37, v38, v16, v21, 22, 0, "No resource at index: %@", v35, v64);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
  }

  v65.receiver = self;
  v65.super_class = TSCH3DStringIndexedResources;
  v44 = [(TSCH3DArray2DResources *)&v65 resourceAtIndex:index];
  if (!v44)
  {
    v48 = MEMORY[0x277D81150];
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v45, v46, v47, "[TSCH3DStringIndexedResources resourceAtIndex:string:]");
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, v51, v52, v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DStringIndexedResources.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v55, v56, v57, v58, v49, v54, 26, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60, v61, v62);
  }

  objc_msgSend_setString_(v44, v43, v45, v46, v47, stringCopy);

  return v44;
}

@end