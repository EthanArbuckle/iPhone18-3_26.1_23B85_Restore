@interface KNOutlineSelection
- (BOOL)isEqual:(id)a3;
- (KNOutlineSelection)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (KNOutlineSelection)initWithSlideNodes:(id)a3 slideNodeToEdit:(id)a4 selectedParagraphIndexesForSlideNodes:(id)a5 rangeInSelectedParagraph:(_NSRange)a6;
- (_NSRange)absoluteRangeInStorage:(id)a3;
- (_NSRange)rangeInSelectedParagraph;
- (id)contiguousIndexesForSelectedParagraphIndexesForSlideNodes:(id)a3;
- (id)description;
- (id)estimatedTextSelection;
- (id)updatedOutlineSelectionWithTextSelection:(id)a3;
- (unint64_t)hash;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation KNOutlineSelection

- (KNOutlineSelection)initWithSlideNodes:(id)a3 slideNodeToEdit:(id)a4 selectedParagraphIndexesForSlideNodes:(id)a5 rangeInSelectedParagraph:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v40.receiver = self;
  v40.super_class = KNOutlineSelection;
  v14 = [(KNSlideCollectionSelection *)&v40 initWithSlideNodes:v11 slideNodeToEdit:v12];
  v16 = v14;
  if (v14)
  {
    v17 = objc_msgSend_contiguousIndexesForSelectedParagraphIndexesForSlideNodes_(v14, v15, v13);
    selectedParagraphIndexesForSlideNodes = v16->_selectedParagraphIndexesForSlideNodes;
    v16->_selectedParagraphIndexesForSlideNodes = v17;

    v16->_rangeInSelectedParagraph.location = location;
    v16->_rangeInSelectedParagraph.length = length;
    if (location != *MEMORY[0x277D81490] || length != *(MEMORY[0x277D81490] + 8))
    {
      if (objc_msgSend_count(v16->_selectedParagraphIndexesForSlideNodes, v19, v20) == 1)
      {
        v24 = objc_msgSend_allKeys(v16->_selectedParagraphIndexesForSlideNodes, v22, v23);
        v26 = objc_msgSend_objectAtIndexedSubscript_(v24, v25, 0);
        v28 = objc_msgSend_objectForKeyedSubscript_(v16->_selectedParagraphIndexesForSlideNodes, v27, v26);
        if (objc_msgSend_count(v28, v29, v30) != 1)
        {
          v32 = MEMORY[0x277D81150];
          v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[KNOutlineSelection initWithSlideNodes:slideNodeToEdit:selectedParagraphIndexesForSlideNodes:rangeInSelectedParagraph:]");
          v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNOutlineSelection.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 56, 0, "Only one paragraph can be selected if a rangeInSelectedParagraphs is given");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
        }
      }

      else if (*MEMORY[0x277D81408] != -1)
      {
        sub_275E5B570();
      }
    }
  }

  return v16;
}

- (id)contiguousIndexesForSelectedParagraphIndexesForSlideNodes:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v3 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = v29;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v30, v34, 16);
  if (v7)
  {
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = objc_msgSend_objectForKeyedSubscript_(v4, v6, v10);
        v12 = MEMORY[0x277CCAA78];
        Index = objc_msgSend_firstIndex(v11, v13, v14);
        v18 = objc_msgSend_lastIndex(v11, v16, v17);
        v21 = objc_msgSend_firstIndex(v11, v19, v20);
        v23 = objc_msgSend_indexSetWithIndexesInRange_(v12, v22, Index, v18 - v21 + 1);
        objc_msgSend_setObject_forUncopiedKey_(v3, v24, v23, v10);
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v30, v34, 16);
    }

    while (v7);
  }

  v27 = objc_msgSend_copy(v3, v25, v26);

  return v27;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = KNOutlineSelection;
  v4 = [(KNSlideCollectionSelection *)&v10 description];
  selectedParagraphIndexesForSlideNodes = self->_selectedParagraphIndexesForSlideNodes;
  v6 = NSStringFromRange(self->_rangeInSelectedParagraph);
  v8 = objc_msgSend_stringWithFormat_(v3, v7, @"%@\n Selected Paragraphs:%@\n Range in Selected Paragraphs: %@", v4, selectedParagraphIndexesForSlideNodes, v6);

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v21 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v8 = objc_msgSend_slideNodes(self, v6, v7);
      v36 = v8;
      v11 = objc_msgSend_slideNodes(v5, v9, v10);
      v35 = v11;
      v14 = objc_msgSend_slideNodeToEdit(self, v12, v13);
      v34 = v14;
      v19 = objc_msgSend_slideNodeToEdit(v5, v15, v16);
      if (v8 == v11 || objc_msgSend_isEqual_(v8, v17, v11))
      {
        if (v14 == v19)
        {
          isEqual = 1;
        }

        else
        {
          isEqual = objc_msgSend_isEqual_(v14, v17, v19);
        }
      }

      else
      {
        isEqual = 0;
      }

      location = self->_rangeInSelectedParagraph.location;
      length = self->_rangeInSelectedParagraph.length;
      v24 = objc_msgSend_rangeInSelectedParagraph(v5, v17, v18);
      v26 = v25;
      selectedParagraphIndexesForSlideNodes = self->_selectedParagraphIndexesForSlideNodes;
      v29 = objc_msgSend_selectedParagraphIndexesForSlideNodes(v5, v25, v28);
      isEqualToDictionary = objc_msgSend_isEqualToDictionary_(selectedParagraphIndexesForSlideNodes, v30, v29);

      if (location == v24)
      {
        v32 = isEqual;
      }

      else
      {
        v32 = 0;
      }

      if (length != v26)
      {
        v32 = 0;
      }

      v21 = v32 & isEqualToDictionary;
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_slideNodes(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_slideNodeToEdit(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12);
  v16 = objc_msgSend_hash(self->_selectedParagraphIndexesForSlideNodes, v14, v15);
  p_rangeInSelectedParagraph = &self->_rangeInSelectedParagraph;
  location = self->_rangeInSelectedParagraph.location;
  v19 = v13 ^ v7 ^ p_rangeInSelectedParagraph->length ^ v16;

  return v19 ^ location;
}

- (_NSRange)absoluteRangeInStorage:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_slideNodes(self, v5, v6);
  v9 = objc_msgSend_parentSlideNodeForInfo_(KNSlideNode, v8, v4);
  v11 = objc_msgSend_containsObject_(v7, v10, v9);

  if ((v11 & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[KNOutlineSelection absoluteRangeInStorage:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNOutlineSelection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 119, 0, "Storage should be in selected slide node.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  v21 = objc_msgSend_slideNodes(self, v12, v13);
  v24 = objc_msgSend_count(v21, v22, v23);

  if (v24 != 1)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[KNOutlineSelection absoluteRangeInStorage:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNOutlineSelection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 120, 0, "absolute ranges can only be calculated for single-slide outline selections");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
  }

  v34 = objc_msgSend_rangeInSelectedParagraph(self, v25, v26);
  v36 = v35;
  v38 = objc_msgSend_selectedParagraphIndexesForSlideNodes(self, v35, v37);
  v41 = objc_msgSend_slideNodeToEdit(self, v39, v40);
  v43 = objc_msgSend_objectForKey_(v38, v42, v41);
  Index = objc_msgSend_firstIndex(v43, v44, v45);

  if (Index)
  {
    v34 += objc_msgSend_textRangeForParagraphAtIndex_(v4, v47, Index - 1);
  }

  v48 = v34;
  v49 = v36;
  result.length = v49;
  result.location = v48;
  return result;
}

- (id)estimatedTextSelection
{
  v4 = *MEMORY[0x277D81490];
  v5 = *(MEMORY[0x277D81490] + 8);
  if (v4 == objc_msgSend_rangeInSelectedParagraph(self, a2, v2) && v5 == v6)
  {
    v26 = 0;
  }

  else
  {
    v9 = objc_msgSend_slideNodeToEdit(self, v6, v7);
    v12 = objc_msgSend_slide(v9, v10, v11);
    v15 = objc_msgSend_selectedParagraphIndexesForSlideNodes(self, v13, v14);
    v17 = objc_msgSend_objectForKey_(v15, v16, v9);
    Index = objc_msgSend_firstIndex(v17, v18, v19);

    if (Index)
    {
      objc_msgSend_bodyPlaceholder(v12, v21, v22);
    }

    else
    {
      objc_msgSend_titlePlaceholder(v12, v21, v22);
    }
    v23 = ;
    v27 = objc_msgSend_textStorage(v23, v24, v25);

    v29 = objc_msgSend_absoluteRangeInStorage_(self, v28, v27);
    v26 = objc_msgSend_selectionWithRange_(MEMORY[0x277D80EF8], v30, v29, v30);
  }

  return v26;
}

- (id)updatedOutlineSelectionWithTextSelection:(id)a3
{
  v74 = a3;
  v6 = objc_msgSend_selectedParagraphIndexesForSlideNodes(self, v4, v5);
  if (objc_msgSend_count(v6, v7, v8) != 1)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[KNOutlineSelection updatedOutlineSelectionWithTextSelection:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNOutlineSelection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 162, 0, "outline text command selection behavior requires an outline selection with only one paragraph index.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v17 = self;
  if (objc_msgSend_count(v6, v18, v19) == 1)
  {
    v22 = objc_msgSend_allValues(v6, v20, v21);
    v25 = objc_msgSend_firstObject(v22, v23, v24);
    Index = objc_msgSend_firstIndex(v25, v26, v27);

    v33 = objc_msgSend_DEPRECATED_range(v74, v29, v30);
    v34 = v31;
    if (Index)
    {
      v35 = objc_msgSend_slideNodeToEdit(v17, v31, v32);
      v38 = objc_msgSend_slide(v35, v36, v37);
      v41 = objc_msgSend_bodyPlaceholder(v38, v39, v40);
      v44 = objc_msgSend_textStorage(v41, v42, v43);

      v47 = objc_msgSend_textRangeForParagraphAtIndex_(v44, v45, Index - 1);
      if (v33 < v47)
      {
        v48 = v46;
        v49 = MEMORY[0x277D81150];
        v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "[KNOutlineSelection updatedOutlineSelectionWithTextSelection:]");
        v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNOutlineSelection.mm");
        v76.location = v47;
        v76.length = v48;
        v53 = NSStringFromRange(v76);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v54, v50, v52, 181, 0, "The computed text selection for outline selection %@ starts before the previous paragraph range %@", v17, v53);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56);
      }

      v33 -= v47;
    }

    if (v33 == *MEMORY[0x277D81490] && v34 == *(MEMORY[0x277D81490] + 8))
    {
      v57 = MEMORY[0x277D81150];
      v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[KNOutlineSelection updatedOutlineSelectionWithTextSelection:]");
      v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNOutlineSelection.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v61, v58, v60, 186, 0, "outline text command selection behavior failed to update the range in selected paragraph.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63);
    }

    v64 = objc_alloc(objc_opt_class());
    v67 = objc_msgSend_slideNodes(v17, v65, v66);
    v70 = objc_msgSend_slideNodeToEdit(v17, v68, v69);
    v72 = objc_msgSend_initWithSlideNodes_slideNodeToEdit_selectedParagraphIndexesForSlideNodes_rangeInSelectedParagraph_(v64, v71, v67, v70, v6, v33, v34);

    v17 = v72;
  }

  return v17;
}

- (KNOutlineSelection)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v31.receiver = self;
  v31.super_class = KNOutlineSelection;
  v22 = a4;
  v5 = [(KNSlideCollectionSelection *)&v31 initWithArchive:a3 unarchiver:?];
  v6 = v5;
  if (v5)
  {
    if ((*(a3 + 16) & 2) != 0)
    {
      v5->_rangeInSelectedParagraph.location = TSPNSRangeFromMessage();
      v6->_rangeInSelectedParagraph.length = v7;
    }

    else
    {
      v5->_rangeInSelectedParagraph = *MEMORY[0x277D81490];
    }

    v8 = *(a3 + 14);
    if (v8 >= 1)
    {
      v21 = v6;
      v9 = objc_alloc(MEMORY[0x277D81278]);
      v11 = objc_msgSend_initWithCapacity_(v9, v10, v8);
      v12 = 8;
      do
      {
        sub_275E13BCC(v29, *(*(a3 + 8) + v12));
        if (v30)
        {
          v13 = v30;
        }

        else
        {
          v13 = MEMORY[0x277D80A18];
        }

        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3321888768;
        v26[2] = sub_275DC5BDC;
        v26[3] = &unk_2884D5138;
        sub_275E13BCC(v28, v29);
        v14 = v11;
        v27 = v14;
        v15 = v22;
        v16 = objc_opt_class();
        objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v15, v17, v13, v16, 0, v26);

        sub_275E13C50(v28);
        sub_275E13C50(v29);
        v12 += 8;
        --v8;
      }

      while (v8);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_275DC5C90;
      v23[3] = &unk_27A698BD8;
      v6 = v21;
      v24 = v21;
      v18 = v14;
      v25 = v18;
      objc_msgSend_addFinalizeHandler_(v15, v19, v23);
    }
  }

  return v6;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v36.receiver = self;
  v36.super_class = KNOutlineSelection;
  [(KNSlideCollectionSelection *)&v36 saveToArchive:a3 archiver:v6];
  if (self->_rangeInSelectedParagraph.location != *MEMORY[0x277D81490] || self->_rangeInSelectedParagraph.length != *(MEMORY[0x277D81490] + 8))
  {
    objc_msgSend_rangeInSelectedParagraph(self, v7, v8);
    *(a3 + 4) |= 2u;
    if (!*(a3 + 10))
    {
      v10 = *(a3 + 1);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(a3 + 10) = MEMORY[0x277C8F030](v10);
    }

    TSPNSRangeCopyToMessage();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = objc_msgSend_selectedParagraphIndexesForSlideNodes(self, v7, v8);
  obj = v11;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v32, v37, 16);
  if (v14)
  {
    v15 = *v33;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        v19 = objc_msgSend_objectForKeyedSubscript_(self->_selectedParagraphIndexesForSlideNodes, v13, v17);
        v20 = *(a3 + 8);
        if (!v20)
        {
          goto LABEL_20;
        }

        v21 = *(a3 + 14);
        v22 = *v20;
        if (v21 < *v20)
        {
          *(a3 + 14) = v21 + 1;
          v23 = *&v20[2 * v21 + 2];
          goto LABEL_22;
        }

        if (v22 == *(a3 + 15))
        {
LABEL_20:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 48));
          v20 = *(a3 + 8);
          v22 = *v20;
        }

        *v20 = v22 + 1;
        v23 = sub_275E2136C(*(a3 + 6));
        v24 = *(a3 + 14);
        v25 = *(a3 + 8) + 8 * v24;
        *(a3 + 14) = v24 + 1;
        *(v25 + 8) = v23;
LABEL_22:
        *(v23 + 16) |= 1u;
        v26 = *(v23 + 24);
        if (!v26)
        {
          v27 = *(v23 + 8);
          if (v27)
          {
            v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
          }

          v26 = MEMORY[0x277C8F050](v27);
          *(v23 + 24) = v26;
        }

        objc_msgSend_setWeakReference_message_(v6, v18, v17, v26);
        *(v23 + 16) |= 2u;
        v29 = *(v23 + 32);
        if (!v29)
        {
          v30 = *(v23 + 8);
          if (v30)
          {
            v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
          }

          v29 = MEMORY[0x277C8F040](v30);
          *(v23 + 32) = v29;
        }

        objc_msgSend_tsp_saveToMessage_(v19, v28, v29);
      }

      v11 = obj;
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v32, v37, 16);
    }

    while (v14);
  }
}

- (_NSRange)rangeInSelectedParagraph
{
  p_rangeInSelectedParagraph = &self->_rangeInSelectedParagraph;
  location = self->_rangeInSelectedParagraph.location;
  length = p_rangeInSelectedParagraph->length;
  result.length = length;
  result.location = location;
  return result;
}

@end