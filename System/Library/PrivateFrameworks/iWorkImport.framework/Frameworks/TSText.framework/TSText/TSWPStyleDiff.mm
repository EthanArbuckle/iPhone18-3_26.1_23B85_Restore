@interface TSWPStyleDiff
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToStyleDiff:(id)diff;
- (TSWPStyleDiff)initWithContext:(id)context changeSet:(id)set;
- (TSWPStyleDiff)initWithContext:(id)context style:(id)style;
- (id)changedPropertyNames:(id)names;
- (id)description;
- (id)styleDiffForTable:(unint64_t)table storage:(id)storage currentObject:(id)object;
- (unint64_t)hash;
- (void)didInitFromSOS;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSWPStyleDiff

- (void)didInitFromSOS
{
  v2.receiver = self;
  v2.super_class = TSWPStyleDiff;
  [(TSWPStyleDiff *)&v2 didInitFromSOS];
}

- (TSWPStyleDiff)initWithContext:(id)context style:(id)style
{
  contextCopy = context;
  styleCopy = style;
  v12.receiver = self;
  v12.super_class = TSWPStyleDiff;
  v8 = [(TSWPStyleDiff *)&v12 initWithContext:contextCopy];
  v10 = v8;
  if (v8)
  {
    objc_msgSend_setStyle_(v8, v9, styleCopy);
  }

  return v10;
}

- (TSWPStyleDiff)initWithContext:(id)context changeSet:(id)set
{
  contextCopy = context;
  setCopy = set;
  v12.receiver = self;
  v12.super_class = TSWPStyleDiff;
  v8 = [(TSWPStyleDiff *)&v12 initWithContext:contextCopy];
  v10 = v8;
  if (v8)
  {
    objc_msgSend_setChangeSet_(v8, v9, setCopy);
  }

  return v10;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v5 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPStyleDiff loadFromArchive:unarchiver:]");
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStyleDiff.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v7, v9, 98, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  v13 = MEMORY[0x277CBEAD8];
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%s: %s", "Do not call method", "[TSWPStyleDiff loadFromArchive:unarchiver:]");
  v17 = objc_msgSend_exceptionWithName_reason_userInfo_(v13, v16, *MEMORY[0x277CBE658], v15, 0);
  v18 = v17;

  objc_exception_throw(v17);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812DCBA8[86]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  style = self->_style;
  if (style)
  {
    *(archive + 4) |= 1u;
    v8 = *(archive + 3);
    if (!v8)
    {
      v9 = *(archive + 1);
      if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
      }

      v8 = MEMORY[0x277CA3250](v9);
      *(archive + 3) = v8;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v6, style, v8);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276EADE54, off_2812DCBA8[86]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (id)styleDiffForTable:(unint64_t)table storage:(id)storage currentObject:(id)object
{
  storageCopy = storage;
  objectCopy = object;
  v10 = [TSWPStyleDiff alloc];
  v13 = objc_msgSend_context(storageCopy, v11, v12);
  v15 = objc_msgSend_initWithContext_(v10, v14, v13);

  objc_opt_class();
  v16 = TSUDynamicCast();
  v19 = v16;
  if (objectCopy && !v16)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSWPStyleDiff styleDiffForTable:storage:currentObject:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStyleDiff.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 146, 0, "only style objects should be in the attribute table");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
  }

  v27 = objc_msgSend_changeSet(self, v17, v18);

  if (v27)
  {
    v31 = objc_msgSend_stylesheet(storageCopy, v28, v29);
    if (table <= 2)
    {
      if (!table)
      {
        objc_opt_class();
        v56 = TSUDynamicCast();
        v40 = v56;
        if (v19 && !v56)
        {
          v81 = MEMORY[0x277D81150];
          v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "[TSWPStyleDiff styleDiffForTable:storage:currentObject:]");
          v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStyleDiff.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v60, v57, v59, 161, 0, "Old paragraph style was not a paragraph style...");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62);
        }

        goto LABEL_25;
      }

      if (table == 2)
      {
        v42 = MEMORY[0x277D81150];
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSWPStyleDiff styleDiffForTable:storage:currentObject:]");
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStyleDiff.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v44, v33, v35, 170, 0, "no support for list style change sets yet");
        goto LABEL_24;
      }
    }

    else
    {
      switch(table)
      {
        case 3uLL:
          objc_opt_class();
          v45 = TSUDynamicCast();
          v48 = objc_msgSend_defaultCharacterStyle(v31, v46, v47);
          v49 = v48;
          if (v45)
          {
            v50 = v45;
          }

          else
          {
            v50 = v48;
          }

          v40 = v50;

          goto LABEL_25;
        case 9uLL:
          v53 = MEMORY[0x277D81150];
          v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSWPStyleDiff styleDiffForTable:storage:currentObject:]");
          v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStyleDiff.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v55, v33, v35, 166, 0, "no support for column style change sets yet");
          goto LABEL_24;
        case 0x16uLL:
          v32 = MEMORY[0x277D81150];
          v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSWPStyleDiff styleDiffForTable:storage:currentObject:]");
          v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStyleDiff.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 174, 0, "no support for drop cap style change sets yet");
LABEL_24:

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67);
          v40 = 0;
LABEL_25:
          v68 = objc_msgSend_changeSet(self, v51, v52);
          v70 = objc_msgSend_variationStyleFrom_inStylesheet_(v68, v69, v40, v31);

          if (table == 3)
          {
            v73 = objc_msgSend_defaultCharacterStyle(v31, v71, v72);
            if (v70 == v73)
            {
              v74 = 0;
            }

            else
            {
              v74 = v70;
            }

            v75 = v74;

            v70 = v75;
          }

          objc_msgSend_setStyle_(v15, v71, v70);
          v78 = objc_msgSend_changeSet(self, v76, v77);
          objc_msgSend_setPreviouslyAppliedChangeSet_(v15, v79, v78);

          goto LABEL_31;
      }
    }

    v63 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSWPStyleDiff styleDiffForTable:storage:currentObject:]");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStyleDiff.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v65, v33, v35, 178, 0, "hit an unsupported table kind");
    goto LABEL_24;
  }

  v37 = objc_msgSend_style(self, v28, v29);

  if (!v37)
  {
    goto LABEL_32;
  }

  v40 = objc_msgSend_style(self, v38, v39);
  objc_msgSend_setStyle_(v15, v41, v40);
LABEL_31:

LABEL_32:

  return v15;
}

- (id)changedPropertyNames:(id)names
{
  v27 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = objc_msgSend_changeSet(self, v8, v9);
  v13 = objc_msgSend_changedPropertyPaths(v10, v11, v12);

  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v22, v26, 16);
  if (v16)
  {
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"%@.%@", namesCopy, *(*(&v22 + 1) + 8 * i));
        objc_msgSend_addObject_(v7, v20, v19);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v22, v26, 16);
    }

    while (v16);
  }

  return v7;
}

- (BOOL)isEqualToStyleDiff:(id)diff
{
  diffCopy = diff;
  if (diffCopy)
  {
    v10 = objc_msgSend_style(self, v5, v6);
    if (v10 || (objc_msgSend_style(diffCopy, v8, v9), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v11 = objc_msgSend_style(self, v8, v9);
      v14 = objc_msgSend_style(diffCopy, v12, v13);
      v15 = v11 == v14;

      if (v10)
      {
LABEL_9:

        v21 = objc_msgSend_changeSet(self, v17, v18);
        if (v21 || (objc_msgSend_changeSet(diffCopy, v19, v20), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v22 = objc_msgSend_changeSet(self, v19, v20);
          v25 = objc_msgSend_changeSet(diffCopy, v23, v24);
          isEqual = objc_msgSend_isEqual_(v22, v26, v25);

          if (v21)
          {
LABEL_15:

            v16 = v15 & isEqual;
            goto LABEL_16;
          }
        }

        else
        {
          isEqual = 1;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v15 = 1;
    }

    goto LABEL_9;
  }

  v16 = 0;
LABEL_16:

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqualToStyleDiff = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isEqualToStyleDiff = objc_msgSend_isEqualToStyleDiff_(self, v5, equalCopy);
    }

    else
    {
      isEqualToStyleDiff = 0;
    }
  }

  return isEqualToStyleDiff;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277D811E8]);
  v6 = objc_msgSend_style(self, v4, v5);
  objc_msgSend_addObject_(v3, v7, v6);

  v10 = objc_msgSend_changeSet(self, v8, v9);
  objc_msgSend_addObject_(v3, v11, v10);

  v14 = objc_msgSend_hashValue(v3, v12, v13);
  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277D811A8];
  v4 = objc_opt_class();
  v7 = objc_msgSend_style(self, v5, v6);
  v10 = objc_msgSend_changeSet(self, v8, v9);
  v13 = objc_msgSend_previouslyAppliedChangeSet(self, v11, v12);
  v15 = objc_msgSend_descriptionWithObject_class_format_(v3, v14, self, v4, @"\n style:%@\n changeSet:%@\n previouslyAppliedChangeSet:%@", v7, v10, v13);
  v18 = objc_msgSend_descriptionString(v15, v16, v17);

  return v18;
}

@end