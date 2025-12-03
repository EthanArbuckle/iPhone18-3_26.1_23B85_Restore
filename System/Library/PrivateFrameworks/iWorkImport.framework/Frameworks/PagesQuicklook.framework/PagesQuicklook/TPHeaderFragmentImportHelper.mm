@interface TPHeaderFragmentImportHelper
- (BOOL)p_storageIsEffectivelyEmpty:(id)empty;
- (TPHeaderFragmentImportHelper)initWithFragments:(id *)fragments storageContext:(id)context objectsContext:(id)objectsContext;
- (unint64_t)countOfWhitespaceRunsInString:(id)string ranges:(_NSRange)ranges[2];
- (void)p_splitStorageInThree:(int64_t)three withRanges:(_NSRange)ranges[2];
- (void)p_splitStorageInTwo:(int64_t)two withRanges:(_NSRange)ranges[2] firstTarget:(int64_t)target secondTarget:(int64_t)secondTarget;
- (void)processFragmentsForSpaceFormatting;
@end

@implementation TPHeaderFragmentImportHelper

- (TPHeaderFragmentImportHelper)initWithFragments:(id *)fragments storageContext:(id)context objectsContext:(id)objectsContext
{
  contextCopy = context;
  objectsContextCopy = objectsContext;
  v28.receiver = self;
  v28.super_class = TPHeaderFragmentImportHelper;
  v11 = [(TPHeaderFragmentImportHelper *)&v28 init];
  v12 = v11;
  if (v11)
  {
    v11->_fragments = fragments;
    objc_storeStrong(&v11->_storageContext, context);
    objc_storeStrong(&v12->_objectsContext, objectsContext);
    v18 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCA900], v13, v14, v15, v16, v17);
    whitespaceCharacterSet = v12->_whitespaceCharacterSet;
    v12->_whitespaceCharacterSet = v18;

    v25 = objc_msgSend_invertedSet(v12->_whitespaceCharacterSet, v20, v21, v22, v23, v24);
    nonWhitespaceCharacterSet = v12->_nonWhitespaceCharacterSet;
    v12->_nonWhitespaceCharacterSet = v25;
  }

  return v12;
}

- (BOOL)p_storageIsEffectivelyEmpty:(id)empty
{
  emptyCopy = empty;
  v10 = emptyCopy;
  if (emptyCopy)
  {
    v11 = objc_msgSend_string(emptyCopy, v5, v6, v7, v8, v9);
    nonWhitespaceCharacterSet = self->_nonWhitespaceCharacterSet;
    v18 = objc_msgSend_range(v10, v13, v14, v15, v16, v17);
    v24 = objc_msgSend_rangeOfCharacterFromSet_options_range_(v11, v19, v20, v21, v22, v23, nonWhitespaceCharacterSet, 2, v18, v19);

    v25 = v24 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v25 = 1;
  }

  return v25;
}

- (unint64_t)countOfWhitespaceRunsInString:(id)string ranges:(_NSRange)ranges[2]
{
  stringCopy = string;
  *ranges = xmmword_27605FD20;
  ranges[1] = xmmword_27605FD20;
  v7 = ranges + 1;
  v12 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v8, xmmword_27605FD20, v9, v10, v11, stringCopy);
  objc_msgSend_setCharactersToBeSkipped_(v12, v13, v14, v15, v16, v17, 0);
  v23 = 0;
  while ((objc_msgSend_isAtEnd(v12, v18, v19, v20, v21, v22) & 1) == 0)
  {
    objc_msgSend_scanUpToCharactersFromSet_intoString_(v12, v24, v25, v26, v27, v28, self->_whitespaceCharacterSet, 0);
    if (objc_msgSend_isAtEnd(v12, v29, v30, v31, v32, v33))
    {
      v39 = 0;
    }

    else
    {
      v40 = objc_msgSend_scanLocation(v12, v34, v35, v36, v37, v38);
      whitespaceCharacterSet = self->_whitespaceCharacterSet;
      v61[0] = 0;
      objc_msgSend_scanCharactersFromSet_intoString_(v12, v42, v43, v44, v45, v46, whitespaceCharacterSet, v61);
      v39 = v61[0];
      if (objc_msgSend_length(v39, v47, v48, v49, v50, v51) >= 5)
      {
        v57 = objc_msgSend_length(v39, v52, v53, v54, v55, v56);
        v58 = &ranges[ranges->length > ranges[1].length];
        if (v57 > v58->length)
        {
          if (v23 != 2)
          {
            ++v23;
          }

          v58->location = v40;
          v58->length = v57;
          if (ranges->location > ranges[1].location)
          {
            v59 = *ranges;
            *ranges = *v7;
            *v7 = v59;
          }
        }
      }
    }
  }

  return v23;
}

- (void)p_splitStorageInTwo:(int64_t)two withRanges:(_NSRange)ranges[2] firstTarget:(int64_t)target secondTarget:(int64_t)secondTarget
{
  v10 = self->_fragments[two];
  v11 = &ranges[ranges->length <= ranges[1].length];
  location = v11->location;
  length = v11->length;
  v37 = v10;
  v19 = objc_msgSend_length(v10, v14, v15, v16, v17, v18);
  v25 = objc_msgSend_newSubstorageWithRange_storageContext_objectsContext_flags_(v37, v20, v21, v22, v23, v24, 0, location, self->_storageContext, self->_objectsContext, 1);
  v31 = objc_msgSend_newSubstorageWithRange_storageContext_objectsContext_flags_(v37, v26, v27, v28, v29, v30, length + location, v19 - (length + location), self->_storageContext, self->_objectsContext, 1);
  fragments = self->_fragments;
  v33 = fragments[target];
  fragments[target] = v25;
  v34 = v25;

  v35 = self->_fragments;
  v36 = v35[secondTarget];
  v35[secondTarget] = v31;
}

- (void)p_splitStorageInThree:(int64_t)three withRanges:(_NSRange)ranges[2]
{
  v6 = self->_fragments[three];
  location = ranges->location;
  length = ranges->length;
  v9 = ranges[1].location;
  v10 = ranges[1].length;
  v45 = v6;
  v16 = objc_msgSend_length(v6, v11, v12, v13, v14, v15);
  v17 = ranges[1].location;
  v18 = ranges[1].length;
  v24 = objc_msgSend_newSubstorageWithRange_storageContext_objectsContext_flags_(v45, v19, v20, v21, v22, v23, 0, location, self->_storageContext, self->_objectsContext, 1);
  v30 = objc_msgSend_newSubstorageWithRange_storageContext_objectsContext_flags_(v45, v25, v26, v27, v28, v29, length + location, v9 - (length + location), self->_storageContext, self->_objectsContext, 1);
  v36 = objc_msgSend_newSubstorageWithRange_storageContext_objectsContext_flags_(v45, v31, v32, v33, v34, v35, v10 + v9, v16 - (v17 + v18), self->_storageContext, self->_objectsContext, 1);
  fragments = self->_fragments;
  v38 = *fragments;
  *fragments = v24;
  v39 = v24;

  v40 = self->_fragments;
  v41 = v40[1];
  v40[1] = v30;
  v42 = v30;

  v43 = self->_fragments;
  v44 = v43[2];
  v43[2] = v36;
}

- (void)processFragmentsForSpaceFormatting
{
  v69 = *MEMORY[0x277D85DE8];
  IsEffectivelyEmpty = objc_msgSend_p_storageIsEffectivelyEmpty_(self, a2, v2, v3, v4, v5, *self->_fragments);
  v13 = objc_msgSend_p_storageIsEffectivelyEmpty_(self, v8, v9, v10, v11, v12, *(self->_fragments + 1));
  v20 = objc_msgSend_p_storageIsEffectivelyEmpty_(self, v14, v15, v16, v17, v18, *(self->_fragments + 2));
  if ((IsEffectivelyEmpty & 1) != 0 || (objc_msgSend_string(*self->_fragments, v19, v21, v22, v23, v24), v25 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend_countOfWhitespaceRunsInString_ranges_(self, v26, v27, v28, v29, v30, v25, v68), v25, v31 < 1))
  {
    if ((v13 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_8:
    v32 = 1;
    goto LABEL_19;
  }

  if ((v13 & v20) == 1)
  {
    if (v31 == 1)
    {
      objc_msgSend_p_splitStorageInTwo_withRanges_firstTarget_secondTarget_(self, v19, v21, v22, v23, v24, 0, v68, 0, 2);
    }

    else if (v31 == 2)
    {
      objc_msgSend_p_splitStorageInThree_withRanges_(self, v19, v21, v22, v23, v24, 0, v68);
    }
  }

  else if (v13)
  {
    objc_msgSend_p_splitStorageInTwo_withRanges_firstTarget_secondTarget_(self, v19, v21, v22, v23, v24, 0, v68, 0, 1);
  }

  IsEffectivelyEmpty = objc_msgSend_p_storageIsEffectivelyEmpty_(self, v19, v21, v22, v23, v24, *self->_fragments);
  v38 = objc_msgSend_p_storageIsEffectivelyEmpty_(self, v33, v34, v35, v36, v37, *(self->_fragments + 1));
  v20 = objc_msgSend_p_storageIsEffectivelyEmpty_(self, v39, v40, v41, v42, v43, *(self->_fragments + 2));
  if (v38)
  {
    goto LABEL_8;
  }

LABEL_13:
  v44 = objc_msgSend_string(self->_fragments[1], v19, v21, v22, v23, v24);
  v50 = objc_msgSend_countOfWhitespaceRunsInString_ranges_(self, v45, v46, v47, v48, v49, v44, v68);

  if (v50 < 1)
  {
    v32 = 0;
LABEL_19:
    if (v20)
    {
      return;
    }

    goto LABEL_27;
  }

  if ((IsEffectivelyEmpty & v20) == 1)
  {
    if (v50 == 1)
    {
      objc_msgSend_p_splitStorageInTwo_withRanges_firstTarget_secondTarget_(self, v19, v21, v22, v23, v24, 1, v68, 0, 2);
    }

    else if (v50 == 2)
    {
      objc_msgSend_p_splitStorageInThree_withRanges_(self, v19, v21, v22, v23, v24, 1, v68);
    }
  }

  else if (IsEffectivelyEmpty)
  {
    objc_msgSend_p_splitStorageInTwo_withRanges_firstTarget_secondTarget_(self, v19, v21, v22, v23, v24, 1, v68, 0, 1);
  }

  else if (v20)
  {
    objc_msgSend_p_splitStorageInTwo_withRanges_firstTarget_secondTarget_(self, v19, v21, v22, v23, v24, 1, v68, 1, 2);
  }

  v32 = objc_msgSend_p_storageIsEffectivelyEmpty_(self, v19, v21, v22, v23, v24, *(self->_fragments + 1));
  if ((objc_msgSend_p_storageIsEffectivelyEmpty_(self, v51, v52, v53, v54, v55, *(self->_fragments + 2)) & 1) == 0)
  {
LABEL_27:
    v56 = objc_msgSend_string(self->_fragments[2], v19, v21, v22, v23, v24);
    v62 = objc_msgSend_countOfWhitespaceRunsInString_ranges_(self, v57, v58, v59, v60, v61, v56, v68);

    if (((v62 > 0) & v32) != 0)
    {
      objc_msgSend_p_splitStorageInTwo_withRanges_firstTarget_secondTarget_(self, v63, v64, v65, v66, v67, 2, v68, 1, 2);
    }
  }
}

@end