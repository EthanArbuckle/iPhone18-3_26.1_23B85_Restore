@interface TSWPHighlight
+ (id)defaultHighlightWithContext:(id)context includeCommentWithAuthor:(id)author;
+ (id)highlightTextColorForHighlights:(id)highlights;
- (BOOL)isCommentEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentToObject:(id)object;
- (BOOL)isHighlight;
- (BOOL)isInDocument;
- (NSDate)date;
- (NSString)description;
- (NSString)parentUUID;
- (TSKAnnotationAuthor)author;
- (TSWPHighlight)initWithContext:(id)context;
- (TSWPHighlight)initWithContext:(id)context commentStorage:(id)storage;
- (TSWPHighlight)initWithContext:(id)context commentStorage:(id)storage annotationUUID:(id)d;
- (TSWPStorage)parentStorage;
- (id)copyWithContext:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (int)annotationDisplayStringType;
- (unint64_t)hash;
- (void)commentWillBeAddedToDocumentRoot;
- (void)i_setTextAttributeUUIDString:(id)string;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_invalidateAnnotationResultsForDocumentRoot:(id)root key:(id)key;
- (void)resetTextAttributeUUIDString;
- (void)saveToArchiver:(id)archiver;
- (void)setAuthor:(id)author;
- (void)setCommentStorage:(id)storage;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation TSWPHighlight

+ (id)highlightTextColorForHighlights:(id)highlights
{
  v77 = *MEMORY[0x277D85DE8];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = highlights;
  v4 = 0;
  v5 = 0;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v72, v76, 16);
  if (v8)
  {
    v9 = *v73;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v73 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v72 + 1) + 8 * i);
        v12 = objc_msgSend_author(v11, v6, v7);
        v15 = objc_msgSend_colors(v12, v13, v14);
        v18 = objc_msgSend_textHighlightColor(v15, v16, v17);

        v21 = objc_msgSend_author(v11, v19, v20);
        LOBYTE(v15) = objc_msgSend_showAuthorComments(v21, v22, v23);

        if (v15)
        {
          if (v5)
          {
            if (objc_msgSend_isEqual_(v18, v24, v5))
            {
              v28 = objc_msgSend_author(v11, v26, v27);
              v31 = objc_msgSend_colors(v28, v29, v30);
              v34 = objc_msgSend_textHighlightOverlappingDuplicateColor(v31, v32, v33);

              v37 = objc_msgSend_storage(v11, v35, v36);
              v40 = objc_msgSend_creationDate(v37, v38, v39);
            }

            else
            {
              v52 = objc_msgSend_storage(v11, v26, v27);
              v55 = objc_msgSend_creationDate(v52, v53, v54);
              v57 = objc_msgSend_compare_(v4, v56, v55) == -1;

              if (!v57)
              {
                goto LABEL_15;
              }

              v60 = objc_msgSend_author(v11, v58, v59);
              v63 = objc_msgSend_colors(v60, v61, v62);
              v34 = objc_msgSend_textHighlightColor(v63, v64, v65);

              v37 = objc_msgSend_storage(v11, v66, v67);
              v40 = objc_msgSend_creationDate(v37, v68, v69);
            }

            v51 = v40;
            v5 = v34;
          }

          else
          {
            v41 = objc_msgSend_author(v11, v24, v25);
            v44 = objc_msgSend_colors(v41, v42, v43);
            v5 = objc_msgSend_textHighlightColor(v44, v45, v46);

            v37 = objc_msgSend_storage(v11, v47, v48);
            v51 = objc_msgSend_creationDate(v37, v49, v50);
          }

          v4 = v51;
        }

LABEL_15:
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v72, v76, 16);
    }

    while (v8);
  }

  return v5;
}

+ (id)defaultHighlightWithContext:(id)context includeCommentWithAuthor:(id)author
{
  contextCopy = context;
  authorCopy = author;
  if (!authorCopy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "+[TSWPHighlight defaultHighlightWithContext:includeCommentWithAuthor:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPHighlight.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 87, 0, "Invalid parameter not satisfying: %{public}s", "author != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v15 = objc_alloc(objc_opt_class());
  v16 = objc_alloc(MEMORY[0x277D80200]);
  v18 = objc_msgSend_initWithContext_author_(v16, v17, contextCopy, authorCopy);
  v20 = objc_msgSend_initWithContext_commentStorage_(v15, v19, contextCopy, v18);

  return v20;
}

- (TSWPHighlight)initWithContext:(id)context
{
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = TSWPHighlight;
  v7 = [(TSWPHighlight *)&v17 initWithContext:contextCopy];
  if (v7)
  {
    v8 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v5, v6);
    v11 = objc_msgSend_UUIDString(v8, v9, v10);
    v14 = objc_msgSend_copy(v11, v12, v13);
    textAttributeUUIDString = v7->_textAttributeUUIDString;
    v7->_textAttributeUUIDString = v14;
  }

  return v7;
}

- (TSWPHighlight)initWithContext:(id)context commentStorage:(id)storage
{
  storageCopy = storage;
  v9 = objc_msgSend_initWithContext_(self, v8, context);
  v10 = v9;
  if (v9)
  {
    objc_storeStrong((v9 + 64), storage);
  }

  return v10;
}

- (TSWPHighlight)initWithContext:(id)context commentStorage:(id)storage annotationUUID:(id)d
{
  dCopy = d;
  v11 = objc_msgSend_initWithContext_commentStorage_(self, v10, context, storage);
  v12 = v11;
  if (v11)
  {
    objc_storeStrong((v11 + 80), d);
  }

  return v12;
}

- (id)copyWithContext:(id)context
{
  contextCopy = context;
  v7 = objc_msgSend_commentStorage(self, v5, v6);
  v9 = objc_msgSend_copyWithContext_(v7, v8, contextCopy);

  v10 = objc_alloc(objc_opt_class());
  v12 = objc_msgSend_initWithContext_commentStorage_(v10, v11, contextCopy, v9);
  v15 = objc_msgSend_textAttributeUUIDString(self, v13, v14);
  objc_msgSend_i_setTextAttributeUUIDString_(v12, v16, v15);

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_context(self, a2, zone);
  v6 = objc_msgSend_copyWithContext_(self, v5, v4);

  return v6;
}

- (void)i_setTextAttributeUUIDString:(id)string
{
  stringCopy = string;
  v7 = objc_msgSend_textAttributeUUIDString(self, v5, v6);

  if (v7 != stringCopy)
  {
    objc_msgSend_willModify(self, v8, v9);
    objc_storeStrong(&self->_textAttributeUUIDString, string);
  }
}

- (NSString)description
{
  v4 = objc_msgSend_parentStorage(self, a2, v2);
  v5 = &stru_28860A0F0;
  if (!v4)
  {
    v5 = @"Not In Text Storage";
  }

  v6 = v5;

  v9 = objc_msgSend_commentStorage(self, v7, v8);
  v12 = objc_msgSend_text(v9, v10, v11);

  v15 = objc_msgSend_length(v12, v13, v14);
  if (v15 >= 51)
  {
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"<%ld characters>", v15);

    v12 = v17;
  }

  v18 = MEMORY[0x277CCACA8];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v23 = objc_msgSend_commentStorage(self, v21, v22);
  v26 = objc_msgSend_replies(v23, v24, v25);
  v29 = objc_msgSend_count(v26, v27, v28);
  v31 = objc_msgSend_stringWithFormat_(v18, v30, @"<%@: %p\n\t comment = '%@'\n\t replyCount = '%lu'\n\t %@>", v20, self, v12, v29, v6);

  return v31;
}

- (BOOL)isCommentEmpty
{
  v3 = objc_msgSend_commentStorage(self, a2, v2);
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_text(v3, v4, v5);
    v10 = objc_msgSend_length(v7, v8, v9) == 0;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)resetTextAttributeUUIDString
{
  v8 = objc_msgSend_UUID(MEMORY[0x277CCAD78], a2, v2);
  v6 = objc_msgSend_UUIDString(v8, v4, v5);
  objc_msgSend_i_setTextAttributeUUIDString_(self, v7, v6);
}

- (BOOL)isEquivalentToObject:(id)object
{
  objectCopy = object;
  v6 = objectCopy;
  if (self == objectCopy)
  {
    isEqualToString = 1;
  }

  else if (objectCopy && (objc_msgSend_conformsToProtocol_(objectCopy, v5, &unk_288643E30) & 1) != 0)
  {
    v9 = objc_msgSend_textAttributeUUIDString(v6, v7, v8);
    v12 = objc_msgSend_textAttributeUUIDString(self, v10, v11);

    if (!v12)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSWPHighlight isEquivalentToObject:]");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPHighlight.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 201, 0, "Expect to have a UUIDString.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    }

    if (!v9)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSWPHighlight isEquivalentToObject:]");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPHighlight.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 202, 0, "Expect to have a UUIDString for other object.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
    }

    v29 = objc_msgSend_textAttributeUUIDString(self, v13, v14);

    isEqualToString = 0;
    if (v9 && v29)
    {
      v33 = objc_msgSend_textAttributeUUIDString(self, v30, v31);
      isEqualToString = objc_msgSend_isEqualToString_(v33, v34, v9);
    }
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    isEquivalentToObject = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isEquivalentToObject = objc_msgSend_isEquivalentToObject_(self, v6, v5);
  }

  else
  {
    isEquivalentToObject = 0;
  }

  return isEquivalentToObject;
}

- (unint64_t)hash
{
  v3 = objc_msgSend_textAttributeUUIDString(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v7 = unarchiverCopy;
  v8 = *(archive + 4);
  if ((v8 & 2) != 0)
  {
    v9 = *(archive + 4);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_276E429AC;
    v17[3] = &unk_27A6F5AD8;
    v17[4] = self;
    v10 = unarchiverCopy;
    v11 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v10, v12, v9, v11, 0, v17);

    v8 = *(archive + 4);
  }

  if (v8)
  {
    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = objc_msgSend_tsp_initWithProtobufString_(v13, v14, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL);
    if (v16)
    {
      objc_msgSend_i_setTextAttributeUUIDString_(self, v15, v16);
    }
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812DC408[20]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  v23 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_276E434C0, off_2812DC408[20]);

  v9 = objc_msgSend_commentStorage(self, v7, v8);

  if (v9)
  {
    v13 = objc_msgSend_commentStorage(self, v10, v11);
    *(v6 + 16) |= 2u;
    v14 = *(v6 + 32);
    if (!v14)
    {
      v15 = *(v6 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x277CA3250](v15);
      *(v6 + 32) = v14;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v12, v13, v14);
  }

  v16 = objc_msgSend_textAttributeUUIDString(self, v10, v11);

  if (v16)
  {
    v19 = objc_msgSend_textAttributeUUIDString(self, v17, v18);
    sub_276D9F478(v20, v19);

    sub_276E42C1C(v6, __s);
    if (v21)
    {
      free(v21);
    }
  }
}

- (void)setCommentStorage:(id)storage
{
  storageCopy = storage;
  if (self->_commentStorage != storageCopy)
  {
    objc_msgSend_willModify(self, v5, v6);
    objc_storeStrong(&self->_commentStorage, storage);
  }
}

- (NSString)parentUUID
{
  v3 = objc_msgSend_parentStorage(self, a2, v2);
  v6 = objc_msgSend_objectUUID(v3, v4, v5);
  v9 = objc_msgSend_UUIDString(v6, v7, v8);

  return v9;
}

- (TSKAnnotationAuthor)author
{
  v3 = objc_msgSend_commentStorage(self, a2, v2);
  v6 = objc_msgSend_author(v3, v4, v5);

  return v6;
}

- (void)setAuthor:(id)author
{
  authorCopy = author;
  v6 = objc_msgSend_commentStorage(self, v4, v5);
  v8 = objc_msgSend_copyWithAuthor_(v6, v7, authorCopy);
  objc_msgSend_setCommentStorage_(self, v9, v8);
}

- (NSDate)date
{
  v3 = objc_msgSend_commentStorage(self, a2, v2);
  v6 = objc_msgSend_creationDate(v3, v4, v5);

  return v6;
}

- (int)annotationDisplayStringType
{
  v3 = objc_msgSend_storage(self, a2, v2);
  v6 = objc_msgSend_text(v3, v4, v5);
  v9 = objc_msgSend_length(v6, v7, v8);

  if (v9)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (BOOL)isHighlight
{
  v3 = objc_msgSend_storage(self, a2, v2);
  v6 = objc_msgSend_text(v3, v4, v5);
  v9 = objc_msgSend_length(v6, v7, v8) == 0;

  return v9;
}

- (void)p_invalidateAnnotationResultsForDocumentRoot:(id)root key:(id)key
{
  v18[1] = *MEMORY[0x277D85DE8];
  rootCopy = root;
  keyCopy = key;
  v18[0] = self;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, v18, 1);
  v16 = keyCopy;
  v17 = v9;
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, &v17, &v16, 1);
  v14 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v12, v13);
  objc_msgSend_postNotificationName_object_userInfo_(v14, v15, *MEMORY[0x277D805B0], rootCopy, v11);
}

- (void)commentWillBeAddedToDocumentRoot
{
  v4 = objc_msgSend_commentStorage(self, a2, v2);

  if (v4)
  {
    v9 = objc_msgSend_commentStorage(self, v5, v6);
    objc_msgSend_commentWillBeAddedToDocumentRoot(v9, v7, v8);
  }
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  rootCopy = root;
  v7 = objc_msgSend_context(rootCopy, v5, v6);
  objc_msgSend_wasAddedToDocumentWithContext_(self, v8, v7);

  objc_msgSend_p_invalidateAnnotationResultsForDocumentRoot_key_(self, v9, rootCopy, *MEMORY[0x277D805B8]);
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  rootCopy = root;
  objc_msgSend_p_invalidateAnnotationResultsForDocumentRoot_key_(self, v4, rootCopy, *MEMORY[0x277D805C8]);
  v7 = objc_msgSend_context(rootCopy, v5, v6);
  objc_msgSend_willBeRemovedFromDocumentWithContext_(self, v8, v7);
}

- (BOOL)isInDocument
{
  v3 = objc_msgSend_parentStorage(self, a2, v2);
  v6 = objc_msgSend_tsp_isInDocument(v3, v4, v5);

  return v6;
}

- (TSWPStorage)parentStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_parentStorage);

  return WeakRetained;
}

@end