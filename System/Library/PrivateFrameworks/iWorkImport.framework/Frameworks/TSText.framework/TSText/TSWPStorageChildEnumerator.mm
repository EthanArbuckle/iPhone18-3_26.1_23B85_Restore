@interface TSWPStorageChildEnumerator
- (TSWPStorageChildEnumerator)initWithStorage:(id)storage;
- (id)nextObject;
@end

@implementation TSWPStorageChildEnumerator

- (TSWPStorageChildEnumerator)initWithStorage:(id)storage
{
  storageCopy = storage;
  v9.receiver = self;
  v9.super_class = TSWPStorageChildEnumerator;
  v6 = [(TSWPStorageChildEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storage, storage);
  }

  return v7;
}

- (id)nextObject
{
  v4 = objc_msgSend_charOffsetArray(self, a2, v2);

  if (!v4)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objc_msgSend_setCharOffsetArray_(self, v8, v7);
    v11 = objc_msgSend_storage(self, v9, v10);
    v14 = objc_msgSend_length(v11, v12, v13);

    v17 = objc_msgSend_storage(self, v15, v16);
    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = sub_276F31734;
    v95[3] = &unk_27A6F6AA0;
    v18 = v7;
    v96 = v18;
    objc_msgSend_enumerateAttachmentsInTextRange_usingBlock_(v17, v19, 0, v14, v95);

    v22 = objc_msgSend_storage(self, v20, v21);
    v24 = objc_msgSend_footnoteRangeForTextRange_(v22, v23, 0, v14);
    v26 = v25;

    if (v26)
    {
      v29 = 0;
      v30 = 1;
      do
      {
        v94[0] = 0x7FFFFFFFFFFFFFFFLL;
        v31 = objc_msgSend_storage(self, v27, v28);
        v33 = objc_msgSend_footnoteAtFootnoteIndex_outCharIndex_(v31, v32, v29 + v24, v94);

        if (v33)
        {
          v34 = objc_alloc(MEMORY[0x277CCABB0]);
          v36 = objc_msgSend_initWithUnsignedInteger_(v34, v35, v94[0]);
          v37 = objc_alloc(MEMORY[0x277CBEB18]);
          v39 = objc_msgSend_initWithObjects_(v37, v38, v33, v36, 0);
          objc_msgSend_addObject_(v18, v40, v39);
        }

        v29 = v30;
        v41 = v26 > v30++;
      }

      while (v41);
    }

    v42 = objc_msgSend_storage(self, v27, v28);
    v45 = objc_msgSend_sectionCount(v42, v43, v44);

    if (v45)
    {
      v48 = 0;
      v49 = 1;
      do
      {
        v94[0] = 0;
        v94[1] = 0;
        v50 = objc_msgSend_storage(self, v46, v47);
        v52 = objc_msgSend_sectionAtSectionIndex_effectiveRange_(v50, v51, v48, v94);

        if (v52)
        {
          v53 = objc_alloc(MEMORY[0x277CCABB0]);
          v55 = objc_msgSend_initWithUnsignedInteger_(v53, v54, v94[0]);
          v56 = objc_alloc(MEMORY[0x277CBEB18]);
          v58 = objc_msgSend_initWithObjects_(v56, v57, v52, v55, 0);
          objc_msgSend_addObject_(v18, v59, v58);
        }

        v48 = v49;
        v41 = v45 > v49++;
      }

      while (v41);
    }

    objc_msgSend_sortUsingFunction_context_(v18, v46, sub_276F317E0, 0);
  }

  v60 = objc_msgSend_storage(self, v5, v6);

  if (!v60)
  {
LABEL_21:
    v91 = 0;
    goto LABEL_26;
  }

  while (1)
  {
    v63 = objc_msgSend_charOffsetArray(self, v61, v62);
    v66 = objc_msgSend_count(v63, v64, v65);
    v69 = objc_msgSend_index(self, v67, v68);

    if (v66 <= v69)
    {
      objc_msgSend_setStorage_(self, v70, 0);
      goto LABEL_20;
    }

    v72 = objc_msgSend_charOffsetArray(self, v70, v71);
    v75 = objc_msgSend_index(self, v73, v74);
    objc_msgSend_setIndex_(self, v76, v75 + 1);
    v78 = objc_msgSend_objectAtIndexedSubscript_(v72, v77, v75);
    v80 = objc_msgSend_objectAtIndexedSubscript_(v78, v79, 0);

    if (objc_msgSend_conformsToProtocol_(v80, v81, &unk_28865EC20))
    {
      v92 = v80;
      goto LABEL_25;
    }

    if (objc_msgSend_isDrawable(v80, v82, v83))
    {
      v92 = objc_msgSend_drawable(v80, v84, v85);
      goto LABEL_25;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

LABEL_20:
    v90 = objc_msgSend_storage(self, v88, v89);

    if (!v90)
    {
      goto LABEL_21;
    }
  }

  v92 = objc_msgSend_containedStorage(v80, v86, v87);
LABEL_25:
  v91 = v92;

LABEL_26:

  return v91;
}

@end