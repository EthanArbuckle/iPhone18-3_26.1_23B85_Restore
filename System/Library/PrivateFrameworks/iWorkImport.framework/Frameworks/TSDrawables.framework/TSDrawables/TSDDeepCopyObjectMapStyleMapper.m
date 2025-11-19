@interface TSDDeepCopyObjectMapStyleMapper
- (TSDDeepCopyObjectMapStyleMapper)initWithTargetStylesheet:(id)a3 deepCopyObjectMap:(id)a4 sourceObjectsMayUseMultipleStylesheets:(BOOL)a5;
- (id)mappedStyleForStyle:(id)a3;
@end

@implementation TSDDeepCopyObjectMapStyleMapper

- (TSDDeepCopyObjectMapStyleMapper)initWithTargetStylesheet:(id)a3 deepCopyObjectMap:(id)a4 sourceObjectsMayUseMultipleStylesheets:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = TSDDeepCopyObjectMapStyleMapper;
  v11 = [(TSDDeepCopyObjectMapStyleMapper *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_targetStylesheet, a3);
    objc_storeStrong(&v12->_objectMap, a4);
    v12->_sourceObjectsMayUseMultipleStylesheets = a5;
  }

  return v12;
}

- (id)mappedStyleForStyle:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_stylesheet(v4, v5, v6);
  v10 = objc_msgSend_targetStylesheet(self, v8, v9);

  if (v7 == v10)
  {
    v12 = v4;
  }

  else
  {
    v12 = objc_msgSend_objectForDeepCopy_(self->_objectMap, v11, v4);
    v15 = objc_msgSend_stylesheet(v12, v13, v14);
    v18 = objc_msgSend_targetStylesheet(self, v16, v17);
    v21 = v18;
    if (v15 == v18)
    {
    }

    else
    {
      MayUseMultipleStylesheets = objc_msgSend_sourceObjectsMayUseMultipleStylesheets(self, v19, v20);

      if ((MayUseMultipleStylesheets & 1) == 0)
      {
        v24 = MEMORY[0x277D81150];
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSDDeepCopyObjectMapStyleMapper mappedStyleForStyle:]");
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSPObject_TSDStyledObjectCopyAdditions.mm");
        v30 = objc_msgSend_targetStylesheet(self, v28, v29);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v31, v25, v27, 79, 0, "mapped style %@ is not in the target stylesheet %@. This probably means that the original style was not in the stylesheet before the deep copy.", v12, v30);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
      }
    }
  }

  return v12;
}

@end