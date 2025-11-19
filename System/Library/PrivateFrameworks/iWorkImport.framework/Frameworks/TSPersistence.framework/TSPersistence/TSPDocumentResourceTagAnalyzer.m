@interface TSPDocumentResourceTagAnalyzer
- (NSSet)allDocumentResourceInfos;
- (NSSet)allTags;
- (NSSet)untaggedDocumentResourceInfos;
- (id)description;
- (id)minimumTagsWithPreferredTags:(id)a3;
- (void)addDocumentResourceInfo:(id)a3;
@end

@implementation TSPDocumentResourceTagAnalyzer

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TSPDocumentResourceTagAnalyzer;
  v4 = [(TSPDocumentResourceTagAnalyzer *)&v8 description];
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"%@ - _tagsToDocumentResourceInfosDictionary: (%@)", v4, self->_tagsToDocumentResourceInfosDictionary);

  return v6;
}

- (void)addDocumentResourceInfo:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_tags(v4, v5, v6);
  if (objc_msgSend_count(v7, v8, v9))
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = v7;
    v11 = v7;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v39, v43, 16);
    if (v13)
    {
      v15 = v13;
      v16 = *v40;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v40 != v16)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v39 + 1) + 8 * i);
          v19 = objc_msgSend_objectForKeyedSubscript_(self->_tagsToDocumentResourceInfosDictionary, v14, v18);
          if (v19)
          {
            v21 = v19;
            objc_msgSend_addObject_(v19, v20, v4);
          }

          else
          {
            v21 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB58], v20, v4);
            tagsToDocumentResourceInfosDictionary = self->_tagsToDocumentResourceInfosDictionary;
            if (tagsToDocumentResourceInfosDictionary)
            {
              objc_msgSend_setObject_forKeyedSubscript_(tagsToDocumentResourceInfosDictionary, v22, v21, v18);
            }

            else
            {
              v24 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEB38], v22, v21, v18);
              v25 = self->_tagsToDocumentResourceInfosDictionary;
              self->_tagsToDocumentResourceInfosDictionary = v24;
            }
          }
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v39, v43, 16);
      }

      while (v15);
    }

    v7 = v38;
  }

  else
  {
    untaggedDocumentResourceInfos = self->_untaggedDocumentResourceInfos;
    if (untaggedDocumentResourceInfos)
    {
      objc_msgSend_addObject_(untaggedDocumentResourceInfos, v10, v4);
    }

    else
    {
      v28 = objc_alloc(MEMORY[0x277CBEB58]);
      v30 = objc_msgSend_initWithObjects_(v28, v29, v4, 0);
      v31 = self->_untaggedDocumentResourceInfos;
      self->_untaggedDocumentResourceInfos = v30;
    }
  }

  documentResourceInfos = self->_documentResourceInfos;
  if (documentResourceInfos)
  {
    objc_msgSend_addObject_(documentResourceInfos, v26, v4);
  }

  else
  {
    v33 = objc_alloc(MEMORY[0x277CBEB58]);
    v35 = objc_msgSend_initWithObjects_(v33, v34, v4, 0);
    v36 = self->_documentResourceInfos;
    self->_documentResourceInfos = v35;
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (NSSet)allTags
{
  v3 = objc_msgSend_allKeys(self->_tagsToDocumentResourceInfosDictionary, a2, v2);
  if (objc_msgSend_count(v3, v4, v5))
  {
    v7 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v6, v3);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)minimumTagsWithPreferredTags:(id)a3
{
  v70 = *MEMORY[0x277D85DE8];
  v61 = a3;
  v6 = objc_msgSend_count(self->_tagsToDocumentResourceInfosDictionary, v4, v5);
  if (v6)
  {
    v8 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v7, v6);
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v9 = self;
    obj = self->_tagsToDocumentResourceInfosDictionary;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v65, v69, 16);
    if (v11)
    {
      v14 = v11;
      v15 = *v66;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v66 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v65 + 1) + 8 * i);
          v18 = objc_msgSend_count(v8, v12, v13);
          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v62[2] = sub_276A7BADC;
          v62[3] = &unk_27A6E5A88;
          v63 = v61;
          v64 = v9;
          v20 = objc_msgSend_indexOfObject_inSortedRange_options_usingComparator_(v8, v19, v17, 0, v18, 1024, v62);
          objc_msgSend_insertObject_atIndex_(v8, v21, v17, v20);
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v65, v69, 16);
      }

      while (v14);
    }

    v24 = objc_msgSend_firstObject(v8, v22, v23);
    v26 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB58], v25, v24);
    obja = v24;
    v27 = v24;
    v28 = v26;
    v30 = objc_msgSend_objectForKeyedSubscript_(v9->_tagsToDocumentResourceInfosDictionary, v29, v27);
    v33 = objc_msgSend_mutableCopy(v30, v31, v32);

    v36 = objc_msgSend_count(v8, v34, v35);
    if (v36 >= 2)
    {
      v39 = v36;
      v40 = 1;
      while (1)
      {
        v41 = objc_msgSend_objectAtIndexedSubscript_(v8, v37, v40);
        v43 = objc_msgSend_objectForKeyedSubscript_(v9->_tagsToDocumentResourceInfosDictionary, v42, v41);
        v46 = objc_msgSend_count(v33, v44, v45);
        objc_msgSend_unionSet_(v33, v47, v43);
        v50 = objc_msgSend_count(v33, v48, v49);
        if (v50 > v46)
        {
          v52 = v50;
          objc_msgSend_addObject_(v28, v51, v41);
          if (v52 >= objc_msgSend_count(v9->_documentResourceInfos, v53, v54))
          {
            break;
          }
        }

        if (v39 == ++v40)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v56 = v28;
    v55 = objc_msgSend_copy(v28, v37, v38);
  }

  else
  {
    v55 = 0;
  }

  v57 = *MEMORY[0x277D85DE8];

  return v55;
}

- (NSSet)allDocumentResourceInfos
{
  v3 = objc_msgSend_copy(self->_documentResourceInfos, a2, v2);

  return v3;
}

- (NSSet)untaggedDocumentResourceInfos
{
  v3 = objc_msgSend_copy(self->_untaggedDocumentResourceInfos, a2, v2);

  return v3;
}

@end