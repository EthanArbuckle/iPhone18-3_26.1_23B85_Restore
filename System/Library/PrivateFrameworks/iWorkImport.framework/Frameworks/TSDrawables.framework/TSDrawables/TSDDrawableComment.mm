@interface TSDDrawableComment
- (BOOL)isHighlight;
- (BOOL)isInDocument;
- (NSDate)date;
- (NSString)description;
- (NSString)parentUUID;
- (TSDDrawableComment)initWithParent:(id)parent storage:(id)storage;
- (TSDDrawableInfo)parent;
- (TSKAnnotationAuthor)author;
- (id)copyWithZone:(_NSZone *)zone;
- (void)commentWillBeAddedToDocumentRoot;
- (void)setAuthor:(id)author;
- (void)setStorage:(id)storage;
@end

@implementation TSDDrawableComment

- (TSDDrawableComment)initWithParent:(id)parent storage:(id)storage
{
  parentCopy = parent;
  storageCopy = storage;
  v9 = storageCopy;
  if (parentCopy)
  {
    if (storageCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSDDrawableComment initWithParent:storage:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableComment.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 37, 0, "Invalid parameter not satisfying: %{public}s", "parent != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v20 = MEMORY[0x277D81150];
  v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSDDrawableComment initWithParent:storage:]");
  v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableComment.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 38, 0, "Invalid parameter not satisfying: %{public}s", "storage != nil");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
LABEL_3:
  v27.receiver = self;
  v27.super_class = TSDDrawableComment;
  v10 = [(TSDDrawableComment *)&v27 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_parent, parentCopy);
    objc_storeStrong(&v11->mStorage, storage);
  }

  return v11;
}

- (NSString)parentUUID
{
  v3 = objc_msgSend_parent(self, a2, v2);
  v6 = objc_msgSend_objectUUID(v3, v4, v5);
  v9 = objc_msgSend_UUIDString(v6, v7, v8);

  return v9;
}

- (void)setStorage:(id)storage
{
  storageCopy = storage;
  if (self->mStorage != storageCopy)
  {
    v15 = storageCopy;
    v8 = objc_msgSend_parent(self, v6, v7);
    objc_msgSend_willModify(v8, v9, v10);

    v13 = objc_msgSend_parent(self, v11, v12);
    objc_msgSend_willChangeProperty_(v13, v14, 550);

    objc_storeStrong(&self->mStorage, storage);
    storageCopy = v15;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_storage(self, a2, zone);
  v7 = objc_msgSend_storage(self, v5, v6);
  v10 = objc_msgSend_context(v7, v8, v9);
  v12 = objc_msgSend_copyWithContext_(v4, v11, v10);

  v13 = objc_alloc(objc_opt_class());
  v16 = objc_msgSend_parent(self, v14, v15);
  v18 = objc_msgSend_initWithParent_storage_(v13, v17, v16, v12);

  return v18;
}

- (NSString)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_parent(self, a2, v2);
  v7 = objc_msgSend_stringWithFormat_(v4, v6, @"<TSDDrawableComment: %p\n\t parent: %@\n\t storage %@>", self, v5, self->mStorage);

  return v7;
}

- (TSKAnnotationAuthor)author
{
  v3 = objc_msgSend_storage(self, a2, v2);
  v6 = objc_msgSend_author(v3, v4, v5);

  return v6;
}

- (void)setAuthor:(id)author
{
  authorCopy = author;
  v10 = objc_msgSend_storage(self, v5, v6);
  v8 = objc_msgSend_copyWithAuthor_(v10, v7, authorCopy);

  objc_msgSend_setStorage_(self, v9, v8);
}

- (NSDate)date
{
  v3 = objc_msgSend_storage(self, a2, v2);
  v6 = objc_msgSend_creationDate(v3, v4, v5);

  return v6;
}

- (BOOL)isHighlight
{
  v3 = objc_msgSend_storage(self, a2, v2);
  v6 = objc_msgSend_text(v3, v4, v5);
  v9 = objc_msgSend_length(v6, v7, v8) == 0;

  return v9;
}

- (void)commentWillBeAddedToDocumentRoot
{
  v5 = objc_msgSend_storage(self, a2, v2);
  objc_msgSend_commentWillBeAddedToDocumentRoot(v5, v3, v4);
}

- (BOOL)isInDocument
{
  v3 = objc_msgSend_parent(self, a2, v2);
  v6 = objc_msgSend_tsp_isInDocument(v3, v4, v5);

  return v6;
}

- (TSDDrawableInfo)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end