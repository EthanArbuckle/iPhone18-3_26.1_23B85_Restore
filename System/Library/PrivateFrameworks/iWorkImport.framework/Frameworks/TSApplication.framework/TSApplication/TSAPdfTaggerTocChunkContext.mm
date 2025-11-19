@interface TSAPdfTaggerTocChunkContext
- (TSAPdfTaggerTocChunkContext)initWithStateOfTagger:(id)a3 tocChunkRep:(id)a4;
- (int)levelForParagraphStyle:(id)a3;
- (void)setUp;
@end

@implementation TSAPdfTaggerTocChunkContext

- (TSAPdfTaggerTocChunkContext)initWithStateOfTagger:(id)a3 tocChunkRep:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = TSAPdfTaggerTocChunkContext;
  v8 = [(TSAPdfTaggerContext *)&v13 initWithStateOfTagger:v6];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_tocChunkRep, a4);
    v10 = objc_opt_new();
    paragraphStyleToLevelMap = v9->_paragraphStyleToLevelMap;
    v9->_paragraphStyleToLevelMap = v10;
  }

  return v9;
}

- (int)levelForParagraphStyle:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_valueWithNonretainedObject_(MEMORY[0x277CCAE60], v5, v4, v6);
  v10 = objc_msgSend_objectForKeyedSubscript_(self->_paragraphStyleToLevelMap, v8, v7, v9);
  sub_2760CB2EC(v10 != 0, "Level number object not found for paragraph style %@", v11, v12, v13, v14, v15, v16, v4);
  v20 = objc_msgSend_intValue(v10, v17, v18, v19);

  return v20;
}

- (void)setUp
{
  v86 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_tocInfo(self->_tocChunkRep, a2, v2, v3);
  v70 = objc_msgSend_textStorage(v4, v5, v6, v7);

  v69 = objc_opt_new();
  v11 = objc_msgSend_range(v70, v8, v9, v10);
  v13 = v12;
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = sub_2760CBB34;
  v82[3] = &unk_27A6B08F0;
  v14 = v69;
  v83 = v14;
  objc_msgSend_enumerateParagraphsIntersectingTextRange_usingBlock_(v70, v15, v11, v13, v82);
  v73 = objc_opt_new();
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v16 = v14;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v78, v85, 16);
  if (v21)
  {
    v22 = *v79;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v79 != v22)
        {
          objc_enumerationMutation(v16);
        }

        v24 = objc_msgSend_nonretainedObjectValue(*(*(&v78 + 1) + 8 * i), v18, v19, v20);
        objc_msgSend_floatValueForProperty_(v24, v25, 80, v26);
        v30 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v27, v28, v29);
        objc_msgSend_addObject_(v73, v31, v30, v32);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v78, v85, 16);
    }

    while (v21);
  }

  v36 = objc_msgSend_allObjects(v73, v33, v34, v35);
  v39 = objc_msgSend_sortedArrayUsingSelector_(v36, v37, sel_compare_, v38);

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v16;
  v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v74, v84, 16);
  if (v44)
  {
    v45 = *v75;
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v75 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v47 = *(*(&v74 + 1) + 8 * j);
        v48 = objc_msgSend_nonretainedObjectValue(v47, v41, v42, v43);
        objc_msgSend_floatValueForProperty_(v48, v49, 80, v50);
        v54 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v51, v52, v53);
        v57 = objc_msgSend_indexOfObject_(v39, v55, v54, v56);

        sub_2760CB2EC(v57 != 0x7FFFFFFFFFFFFFFFLL, "Indent not found in array of indents", v58, v59, v60, v61, v62, v63, v68);
        v66 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v64, v57, v65);
        objc_msgSend_setObject_forKeyedSubscript_(self->_paragraphStyleToLevelMap, v67, v66, v47);
      }

      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v41, &v74, v84, 16);
    }

    while (v44);
  }
}

@end