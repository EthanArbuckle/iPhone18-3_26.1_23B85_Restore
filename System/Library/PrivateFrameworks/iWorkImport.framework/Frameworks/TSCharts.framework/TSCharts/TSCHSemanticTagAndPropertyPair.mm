@interface TSCHSemanticTagAndPropertyPair
+ (id)pairWithSemanticTag:(id)tag property:(int)property;
+ (id)semanticTagToSemanticUsagesMapForSemanticUsages:(id)usages;
- (BOOL)isEqual:(id)equal;
- (TSCHSemanticTagAndPropertyPair)initWithSemanticTag:(id)tag property:(int)property;
- (id)description;
@end

@implementation TSCHSemanticTagAndPropertyPair

+ (id)semanticTagToSemanticUsagesMapForSemanticUsages:(id)usages
{
  v64 = *MEMORY[0x277D85DE8];
  usagesCopy = usages;
  v8 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v4, v5, v6, v7);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = usagesCopy;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, v10, v11, v12, &v59, v63, 16);
  if (v13)
  {
    v14 = v13;
    v15 = *v60;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v60 != v15)
        {
          objc_enumerationMutation(obj);
        }

        objc_opt_class();
        v18 = TSUCheckedDynamicCast();
        if (!v18)
        {
          v22 = MEMORY[0x277D81150];
          v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v19, v20, v21, "+[TSCHSemanticTagAndPropertyPair semanticTagToSemanticUsagesMapForSemanticUsages:]");
          v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHSemanticTagAndPropertyPair.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 20, 0, "invalid nil value for '%{public}s'", "semanticUsage");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
        }

        v37 = objc_msgSend_semanticTag(v18, v17, v19, v20, v21);
        v38 = objc_opt_class();
        v43 = objc_msgSend_tsu_objectForKey_withDefaultOfClass_(v8, v39, v40, v41, v42, v37, v38);
        objc_msgSend_addObject_(v43, v44, v45, v46, v47, v18);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v48, v49, v50, v51, &v59, v63, 16);
    }

    while (v14);
  }

  v56 = objc_msgSend_copy(v8, v52, v53, v54, v55);

  return v56;
}

+ (id)pairWithSemanticTag:(id)tag property:(int)property
{
  v4 = *&property;
  tagCopy = tag;
  v7 = [self alloc];
  v12 = objc_msgSend_initWithSemanticTag_property_(v7, v8, v9, v10, v11, tagCopy, v4);

  return v12;
}

- (TSCHSemanticTagAndPropertyPair)initWithSemanticTag:(id)tag property:(int)property
{
  tagCopy = tag;
  v15.receiver = self;
  v15.super_class = TSCHSemanticTagAndPropertyPair;
  v8 = [(TSCHSemanticTagAndPropertyPair *)&v15 init];
  if (v8)
  {
    v12 = objc_msgSend_copy(tagCopy, v7, v9, v10, v11);
    semanticTag = v8->_semanticTag;
    v8->_semanticTag = v12;

    v8->_property = property;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();

  v10 = v5 && objc_msgSend_isEqual_(self->_semanticTag, v6, v7, v8, v9, *(v5 + 16)) && self->_property == *(v5 + 8);
  return v10;
}

- (id)description
{
  v63.receiver = self;
  v63.super_class = TSCHSemanticTagAndPropertyPair;
  v3 = [(TSCHSemanticTagAndPropertyPair *)&v63 description];
  v8 = objc_msgSend_mutableCopy(v3, v4, v5, v6, v7);

  v9 = MEMORY[0x277CCACA8];
  v14 = objc_msgSend_semanticTag(self, v10, v11, v12, v13);
  v19 = objc_msgSend_type(v14, v15, v16, v17, v18);
  v20 = sub_2762E6140(v19);
  v21 = MEMORY[0x277CCABB0];
  v26 = objc_msgSend_semanticTag(self, v22, v23, v24, v25);
  v31 = objc_msgSend_index(v26, v27, v28, v29, v30);
  v36 = objc_msgSend_numberWithUnsignedInteger_(v21, v32, v33, v34, v35, v31);
  v41 = objc_msgSend_stringWithFormat_(v9, v37, v38, v39, v40, @"type: %@ index: %@", v20, v36);

  v42 = MEMORY[0x277CCACA8];
  objc_msgSend_property(self, v43, v44, v45, v46);
  v47 = String();
  v52 = objc_msgSend_stringWithFormat_(v42, v48, v49, v50, v51, @" tag: { %@ } property: %@", v41, v47);

  v57 = objc_msgSend_length(v8, v53, v54, v55, v56);
  objc_msgSend_insertString_atIndex_(v8, v58, v59, v60, v61, v52, v57 - 1);

  return v8;
}

@end