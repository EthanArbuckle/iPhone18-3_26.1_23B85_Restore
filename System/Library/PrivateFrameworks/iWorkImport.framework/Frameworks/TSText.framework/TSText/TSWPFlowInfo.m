@interface TSWPFlowInfo
+ (id)p_colorForIndex:(unint64_t)a3;
+ (id)p_darkColorForColor:(id)a3;
+ (id)p_darkColorForIndex:(unint64_t)a3;
- (BOOL)containsRotatedOrFlippedTextBox;
- (BOOL)isLocked;
- (NSArray)childInfos;
- (NSString)debugDescription;
- (TSUColor)userInterfaceFillColor;
- (TSUColor)userInterfaceStrokeColor;
- (TSWPFlowInfo)initWithStorage:(id)a3 context:(id)a4;
- (id)childEnumerator;
- (id)copyWithContext:(id)a3;
- (id)displayNameOfMaxLength:(unint64_t)a3 usesEllipsis:(BOOL)a4;
- (id)extractTextStorage;
- (unint64_t)indexOfTextBox:(id)a3;
- (unint64_t)textOrientation;
- (void)adoptStylesheet:(id)a3 withMapper:(id)a4;
- (void)dealloc;
- (void)i_uncheckedSetTextboxes:(id)a3;
- (void)loadFromFlowInfoArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)pSaveToFlowInfoArchive:(void *)a3 archiver:(id)a4 textBoxes:(id)a5;
- (void)processSelectedStoragesWithStatisticsController:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)saveWithOnlyLinkedTextBoxes:(id)a3 archiver:(id)a4;
- (void)setGeometry:(id)a3;
- (void)setOwningAttachment:(id)a3;
- (void)setParentInfo:(id)a3;
- (void)setPrimitiveGeometry:(id)a3;
- (void)setTextStorage:(id)a3;
- (void)setTextboxes:(id)a3;
- (void)setUserInterfaceIdentifier:(unint64_t)a3;
- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)wasRemovedFromDocumentRoot:(id)a3;
- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
@end

@implementation TSWPFlowInfo

- (TSWPFlowInfo)initWithStorage:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = TSWPFlowInfo;
  v8 = [(TSWPFlowInfo *)&v12 initWithContext:v7];
  v10 = v8;
  if (v8)
  {
    objc_msgSend_setTextStorage_(v8, v9, v6);
  }

  return v10;
}

- (void)dealloc
{
  objc_msgSend_clearBackPointerToParentInfoIfNeeded_(self->_textStorage, a2, self);
  v3.receiver = self;
  v3.super_class = TSWPFlowInfo;
  [(TSWPFlowInfo *)&v3 dealloc];
}

- (void)setTextStorage:(id)a3
{
  v17 = a3;
  if (self->_textStorage != v17)
  {
    objc_msgSend_willModify(self, v5, v6);
    if (self->_textStorage)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPFlowInfo setTextStorage:]");
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFlowInfo.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 55, 0, "expected nil value for '%{public}s'", "_textStorage");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
      objc_msgSend_clearBackPointerToParentInfoIfNeeded_(self->_textStorage, v15, self);
    }

    else
    {
      objc_msgSend_clearBackPointerToParentInfoIfNeeded_(0, v7, self);
    }

    objc_storeStrong(&self->_textStorage, a3);
    objc_msgSend_setParentInfo_(self->_textStorage, v16, self);
  }
}

- (void)setTextboxes:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v44 = a3;
  objc_msgSend_willModify(self, v5, v6);
  objc_storeStrong(&self->_textboxes, a3);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v7 = self->_textboxes;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v45, v49, 16);
  if (v11)
  {
    v12 = *v46;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v46 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v45 + 1) + 8 * i);
        v15 = objc_msgSend_textFlow(v14, v9, v10);
        v16 = v15 == 0;

        if (v16)
        {
          v19 = MEMORY[0x277D81150];
          v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSWPFlowInfo setTextboxes:]");
          v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFlowInfo.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 69, 0, "unexpected nil textFlow in textbox being added.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
        }

        v26 = objc_msgSend_textFlow(v14, v17, v18);
        v27 = v26 == self;

        if (!v27)
        {
          v28 = MEMORY[0x277D81150];
          v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPFlowInfo setTextboxes:]");
          v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFlowInfo.mm");
          v34 = objc_msgSend_textFlow(v14, v32, v33);
          v37 = objc_msgSend_objectUUID(v34, v35, v36);
          v40 = objc_msgSend_objectUUID(self, v38, v39);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v41, v29, v31, 72, 0, "Expected textFlow property of text boxes to match the flow they are being added to.  (%@ vs %@)", v37, v40);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43);
          goto LABEL_13;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v45, v49, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)setUserInterfaceIdentifier:(unint64_t)a3
{
  v3 = a3;
  objc_msgSend_willModify(self, a2, a3);
  self->_userInterfaceIdentifier = v3 & 7;
}

+ (id)p_colorForIndex:(unint64_t)a3
{
  v3 = a3;
  if (qword_280A583C8 != -1)
  {
    sub_276F4F620();
  }

  v4 = qword_280A583C0;

  return objc_msgSend_objectAtIndexedSubscript_(v4, a2, v3 & 7);
}

+ (id)p_darkColorForColor:(id)a3
{
  v3 = a3;
  objc_msgSend_redComponent(v3, v4, v5);
  objc_msgSend_greenComponent(v3, v6, v7);
  objc_msgSend_blueComponent(v3, v8, v9);
  TSURGBToHSB();
  v10 = MEMORY[0x277D81180];
  objc_msgSend_alphaComponent(v3, v11, v12);
  v16 = objc_msgSend_colorWithHue_saturation_brightness_alpha_(v10, v13, v14, 0.0, 0.0, 0.0 * 0.8, v15);

  return v16;
}

+ (id)p_darkColorForIndex:(unint64_t)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276DD8A50;
  block[3] = &unk_27A6F3D70;
  block[4] = a1;
  if (qword_280A583D8 != -1)
  {
    dispatch_once(&qword_280A583D8, block);
  }

  v4 = objc_msgSend_objectAtIndexedSubscript_(qword_280A583D0, a2, v3 & 7);

  return v4;
}

- (TSUColor)userInterfaceFillColor
{
  v3 = objc_opt_class();
  v7 = objc_msgSend_userInterfaceIdentifier(self, v4, v5);

  return objc_msgSend_p_colorForIndex_(v3, v6, v7);
}

- (TSUColor)userInterfaceStrokeColor
{
  v3 = objc_opt_class();
  v6 = objc_msgSend_userInterfaceIdentifier(self, v4, v5);

  return MEMORY[0x2821F9670](v3, sel_p_darkColorForIndex_, v6);
}

- (BOOL)isLocked
{
  v4 = objc_msgSend_textboxes(self, a2, v2);
  if (objc_msgSend_count(v4, v5, v6))
  {
    v9 = objc_msgSend_textboxes(self, v7, v8);
    v12 = objc_msgSend_firstObject(v9, v10, v11);
    isLocked = objc_msgSend_isLocked(v12, v13, v14);
  }

  else
  {
    isLocked = 0;
  }

  return isLocked;
}

- (unint64_t)textOrientation
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_textboxes;
  v4 = 0;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v12, v16, 16);
  if (v7)
  {
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v2);
      }

      v10 = objc_msgSend_textIsVertical(*(*(&v12 + 1) + 8 * v9), v5, v6, v12) ? 2 : 1;
      v4 |= v10;
      if (v4 == 3)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v12, v16, 16);
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v4;
}

- (unint64_t)indexOfTextBox:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_textboxes(self, v5, v6);
  v9 = objc_msgSend_indexOfObject_(v7, v8, v4);

  return v9;
}

- (id)displayNameOfMaxLength:(unint64_t)a3 usesEllipsis:(BOOL)a4
{
  v4 = a4;
  v7 = objc_msgSend_textStorage(self, a2, a3);
  objc_msgSend_range(v7, v8, v9);
  v11 = v10;

  v14 = objc_msgSend_textStorage(self, v12, v13);
  v16 = v14;
  if (v11 >= a3)
  {
    objc_msgSend_plainTextStringFromRange_convertTextualAttachments_includeChildTextStorages_forExport_withLayoutParent_(v14, v15, 0, a3, 1, 0, 0, 0);
  }

  else
  {
    objc_msgSend_plainTextStringFromRange_convertTextualAttachments_includeChildTextStorages_forExport_withLayoutParent_(v14, v15, 0, v11, 1, 0, 0, 0);
  }
  v17 = ;

  v19 = objc_msgSend_normalizedNameForName_(TSWPBookmarkField, v18, v17);

  if (v4)
  {
    v22 = objc_msgSend_length(v19, v20, v21);
    if (v11 > a3)
    {
      if (v22)
      {
        v25 = sub_276E32640(v22, v23, v24);
        v27 = objc_msgSend_localizedStringForKey_value_table_(v25, v26, @"%@…", &stru_28860A0F0, @"TSText");

        v29 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v28, v27, v19);

        v19 = v29;
      }
    }
  }

  return v19;
}

- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v11 = a3;
  v6 = a4;
  v9 = objc_msgSend_textStorage(self, v7, v8);
  objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v9, v10, v11, v6);
}

- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v15 = a3;
  v6 = a4;
  v9 = objc_msgSend_context(v15, v7, v8);
  objc_msgSend_wasAddedToDocumentWithContext_(self, v10, v9);

  v13 = objc_msgSend_textStorage(self, v11, v12);
  objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v13, v14, v15, v6);
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  v12 = a3;
  v6 = objc_msgSend_textStorage(self, v4, v5);
  objc_msgSend_willBeRemovedFromDocumentRoot_(v6, v7, v12);

  v10 = objc_msgSend_context(v12, v8, v9);
  objc_msgSend_willBeRemovedFromDocumentWithContext_(self, v11, v10);
}

- (void)wasRemovedFromDocumentRoot:(id)a3
{
  v8 = a3;
  v6 = objc_msgSend_textStorage(self, v4, v5);
  objc_msgSend_wasRemovedFromDocumentRoot_(v6, v7, v8);
}

- (id)childEnumerator
{
  v6 = objc_msgSend_childInfos(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_childInfos(self, v4, v5);
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v10 = objc_msgSend_objectEnumerator(v7, v8, v9);

  return v10;
}

- (NSArray)childInfos
{
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_textStorage(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_textStorage(self, v4, v5);
    v11[0] = v7;
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, v11, 1);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithContext:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_textStorage(self, v5, v6);
  v9 = objc_msgSend_copyWithContext_(v7, v8, v4);

  objc_msgSend_clearBackPointerToParentInfoIfNeeded_(v9, v10, self);
  v11 = objc_alloc(objc_opt_class());
  v15 = objc_msgSend_initWithStorage_context_(v11, v12, v9, v4);
  if (v15)
  {
    v16 = objc_msgSend_textboxes(self, v13, v14);
    v19 = objc_msgSend_count(v16, v17, v18);

    if (v19)
    {
      v22 = objc_msgSend_array(MEMORY[0x277CBEB18], v20, v21);
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v25 = objc_msgSend_textboxes(self, v23, v24, 0);
      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v37, v41, 16);
      if (v29)
      {
        v30 = *v38;
        do
        {
          v31 = 0;
          do
          {
            if (*v38 != v30)
            {
              objc_enumerationMutation(v25);
            }

            v32 = objc_msgSend_replicateForReinsertion(*(*(&v37 + 1) + 8 * v31), v27, v28);
            objc_msgSend_setTextFlow_(v32, v33, v15);
            objc_msgSend_addObject_(v22, v34, v32);

            ++v31;
          }

          while (v29 != v31);
          v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v27, &v37, v41, 16);
        }

        while (v29);
      }

      objc_msgSend_setTextboxes_(v15, v35, v22);
    }
  }

  return v15;
}

- (void)setParentInfo:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPFlowInfo setParentInfo:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFlowInfo.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v6, v8, 257, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s: %s", "Do not call method", "[TSWPFlowInfo setParentInfo:]");
  v16 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v15, *MEMORY[0x277CBE658], v14, 0);
  v17 = v16;

  objc_exception_throw(v16);
}

- (void)setOwningAttachment:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPFlowInfo setOwningAttachment:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFlowInfo.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v6, v8, 276, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s: %s", "Do not call method", "[TSWPFlowInfo setOwningAttachment:]");
  v16 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v15, *MEMORY[0x277CBE658], v14, 0);
  v17 = v16;

  objc_exception_throw(v16);
}

- (void)setGeometry:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPFlowInfo setGeometry:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFlowInfo.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v6, v8, 292, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s: %s", "Do not call method", "[TSWPFlowInfo setGeometry:]");
  v16 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v15, *MEMORY[0x277CBE658], v14, 0);
  v17 = v16;

  objc_exception_throw(v16);
}

- (void)setPrimitiveGeometry:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPFlowInfo setPrimitiveGeometry:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFlowInfo.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v6, v8, 296, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s: %s", "Do not call method", "[TSWPFlowInfo setPrimitiveGeometry:]");
  v16 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v15, *MEMORY[0x277CBE658], v14, 0);
  v17 = v16;

  objc_exception_throw(v16);
}

- (BOOL)containsRotatedOrFlippedTextBox
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = self->_textboxes;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v20, v24, 16);
  if (v6)
  {
    v7 = *v21;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = objc_msgSend_geometry(*(*(&v20 + 1) + 8 * i), v4, v5, v20);
        v12 = v9;
        if (v9)
        {
          objc_msgSend_angle(v9, v10, v11);
          if (v15 != 0.0 || (objc_msgSend_horizontalFlip(v12, v13, v14) & 1) != 0 || (objc_msgSend_verticalFlip(v12, v16, v17) & 1) != 0)
          {

            v18 = 1;
            goto LABEL_15;
          }
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v20, v24, 16);
      v18 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_15:

  return v18;
}

- (void)loadFromUnarchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(v7, v4, off_2812DC408[178]);

  objc_msgSend_loadFromFlowInfoArchive_unarchiver_(self, v6, v5, v7);
}

- (void)loadFromFlowInfoArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (*(a3 + 16))
  {
    v8 = *(a3 + 6);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_276DDA1FC;
    v16[3] = &unk_27A6F46C0;
    v16[4] = self;
    v9 = v6;
    v10 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v9, v11, v8, v10, 0, v16);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_276DDA208;
  v15[3] = &unk_27A6F4740;
  v15[4] = self;
  v12 = v7;
  v13 = objc_opt_class();
  objc_msgSend_readRepeatedWeakReferenceMessage_class_protocol_completion_(v12, v14, a3 + 24, v13, 0, v15);

  self->_userInterfaceIdentifier = 0x7FFFFFFFFFFFFFFFLL;
  if ((*(a3 + 16) & 2) != 0)
  {
    self->_userInterfaceIdentifier = *(a3 + 14);
  }
}

- (void)saveToArchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v10, v4, sub_276DDA894, off_2812DC408[178]);

  v8 = objc_msgSend_textboxes(self, v6, v7);
  objc_msgSend_pSaveToFlowInfoArchive_archiver_textBoxes_(self, v9, v5, v10, v8);
}

- (void)pSaveToFlowInfoArchive:(void *)a3 archiver:(id)a4 textBoxes:(id)a5
{
  v22 = a4;
  v8 = a5;
  v11 = objc_msgSend_textStorage(self, v9, v10);

  if (v11)
  {
    v15 = objc_msgSend_textStorage(self, v12, v13);
    *(a3 + 4) |= 1u;
    v16 = *(a3 + 6);
    if (!v16)
    {
      v17 = *(a3 + 1);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x277CA3250](v17);
      *(a3 + 6) = v16;
    }

    objc_msgSend_setStrongReference_message_(v22, v14, v15, v16);
  }

  if (objc_msgSend_count(v8, v12, v13))
  {
    objc_msgSend_setWeakReferenceArray_message_(v22, v18, v8, a3 + 24);
  }

  if (self->_userInterfaceIdentifier != 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = objc_msgSend_userInterfaceIdentifier(self, v18, v19);
    *(a3 + 4) |= 2u;
    *(a3 + 14) = v20;
  }

  if (objc_msgSend_count(v8, v18, v19) >= 2)
  {
    objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(v22, v21, *MEMORY[0x277D80980], *MEMORY[0x277D80980], @"TSWPLinkedTextBoxes");
  }
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return objc_msgSend_stringWithFormat_(v3, v5, @"(%@*) %p textStorage: %@\ntextBoxes: %@\nuserInterfaceIdentifier: %lu", v4, self, self->_textStorage, self->_textboxes, self->_userInterfaceIdentifier);
}

- (void)adoptStylesheet:(id)a3 withMapper:(id)a4
{
  v13 = a3;
  v6 = a4;
  objc_msgSend_pushMappingContext_(v6, v7, self);
  v10 = objc_msgSend_textStorage(self, v8, v9);
  objc_msgSend_adoptStylesheet_withMapper_(v10, v11, v13, v6);

  objc_msgSend_popMappingContext_(v6, v12, self);
}

- (void)processSelectedStoragesWithStatisticsController:(id)a3
{
  v8 = a3;
  v6 = objc_msgSend_textStorage(self, v4, v5);
  objc_msgSend_processStorageForStatistics_processSelection_(v8, v7, v6, 0);
}

- (void)i_uncheckedSetTextboxes:(id)a3
{
  v4 = a3;
  objc_msgSend_willModify(self, v5, v6);
  textboxes = self->_textboxes;
  self->_textboxes = v4;
}

- (void)saveWithOnlyLinkedTextBoxes:(id)a3 archiver:(id)a4
{
  v15 = a3;
  v6 = a4;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithNewFunction_descriptor_(v6, v7, sub_276DDA894, off_2812DC408[178]);

  v11 = objc_msgSend_textboxes(self, v9, v10);
  v13 = objc_msgSend_tsu_arrayWithObjectsInSet_(v11, v12, v15);
  objc_msgSend_pSaveToFlowInfoArchive_archiver_textBoxes_(self, v14, v8, v6, v13);
}

- (id)extractTextStorage
{
  v3 = self->_textStorage;
  objc_msgSend_clearBackPointerToParentInfoIfNeeded_(v3, v4, self);
  textStorage = self->_textStorage;
  self->_textStorage = 0;

  return v3;
}

@end