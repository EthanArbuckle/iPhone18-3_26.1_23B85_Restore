@interface KNSlideCollectionSelection
- (BOOL)isContiguous;
- (BOOL)isEqual:(id)equal;
- (KNSlideCollectionSelection)init;
- (KNSlideCollectionSelection)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (KNSlideCollectionSelection)initWithSlideNode:(id)node;
- (KNSlideCollectionSelection)initWithSlideNodes:(id)nodes slideNodeToEdit:(id)edit;
- (id)UUIDDescription;
- (id)description;
- (unint64_t)hash;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation KNSlideCollectionSelection

- (KNSlideCollectionSelection)initWithSlideNodes:(id)nodes slideNodeToEdit:(id)edit
{
  nodesCopy = nodes;
  editCopy = edit;
  if (editCopy && (objc_msgSend_containsObject_(nodesCopy, v7, editCopy) & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[KNSlideCollectionSelection initWithSlideNodes:slideNodeToEdit:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideCollectionSelection.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 38, 0, "Invalid parameter not satisfying: %{public}s", "(slideNodeToEdit == nil) || [slideNodes containsObject:slideNodeToEdit]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v23.receiver = self;
  v23.super_class = KNSlideCollectionSelection;
  v19 = [(KNSlideCollectionSelection *)&v23 init];
  if (v19)
  {
    v20 = objc_msgSend_copy(nodesCopy, v17, v18);
    slideNodes = v19->_slideNodes;
    v19->_slideNodes = v20;

    objc_storeStrong(&v19->_slideNodeToEdit, edit);
  }

  return v19;
}

- (KNSlideCollectionSelection)initWithSlideNode:(id)node
{
  nodeCopy = node;
  if (nodeCopy)
  {
    objc_msgSend_orderedSetWithObject_(MEMORY[0x277CBEB70], v4, nodeCopy);
  }

  else
  {
    objc_msgSend_orderedSet(MEMORY[0x277CBEB70], v4, v5);
  }
  v7 = ;
  v9 = objc_msgSend_initWithSlideNodes_slideNodeToEdit_(self, v8, v7, nodeCopy);

  return v9;
}

- (KNSlideCollectionSelection)init
{
  v4 = objc_msgSend_orderedSet(MEMORY[0x277CBEB70], a2, v2);
  v6 = objc_msgSend_initWithSlideNodes_slideNodeToEdit_(self, v5, v4, 0);

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v7 = objc_msgSend_slideNodes(self, v5, v6);
  v10 = objc_msgSend_slideNodeToEdit(self, v8, v9);
  v12 = objc_msgSend_stringWithFormat_(v3, v11, @"<%@ %p slideNodes=(%@) slideNodeToEdit=%@>", v4, self, v7, v10);

  return v12;
}

- (id)UUIDDescription
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  selfCopy = self;
  v6 = objc_msgSend_slideNodes(self, v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8);
  v11 = objc_msgSend_initWithCapacity_(v3, v10, v9);

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v14 = objc_msgSend_slideNodes(self, v12, v13);
  obj = v14;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v44, v48, 16);
  if (v16)
  {
    v17 = *v45;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v45 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v44 + 1) + 8 * i);
        v20 = MEMORY[0x277CCACA8];
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v25 = objc_msgSend_objectUUIDPath(v19, v23, v24);
        v27 = objc_msgSend_stringWithFormat_(v20, v26, @"%@ %p %@", v22, v19, v25);
        objc_msgSend_addObject_(v11, v28, v27);
      }

      v14 = obj;
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v44, v48, 16);
    }

    while (v16);
  }

  v30 = MEMORY[0x277CCACA8];
  v31 = objc_opt_class();
  v32 = NSStringFromClass(v31);
  v35 = objc_msgSend_slideNodeToEdit(selfCopy, v33, v34);
  v38 = objc_msgSend_objectUUIDPath(v35, v36, v37);
  v40 = objc_msgSend_stringWithFormat_(v30, v39, @"<%@ %p slideNodes=(%@) slideNodeToEdit=%@>", v32, selfCopy, v11, v38);

  return v40;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    isEqual = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
    {
      v7 = equalCopy;
      v10 = objc_msgSend_slideNodes(self, v8, v9);
      v13 = objc_msgSend_slideNodes(v7, v11, v12);
      v16 = objc_msgSend_slideNodeToEdit(self, v14, v15);
      v20 = objc_msgSend_slideNodeToEdit(v7, v17, v18);
      if (v10 == v13 || objc_msgSend_isEqual_(v10, v19, v13))
      {
        if (v16 == v20)
        {
          isEqual = 1;
        }

        else
        {
          isEqual = objc_msgSend_isEqual_(v16, v19, v20);
        }
      }

      else
      {
        isEqual = 0;
      }
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_slideNodes(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_slideNodeToEdit(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12);

  return v13 ^ v7;
}

- (BOOL)isContiguous
{
  v3 = objc_msgSend_slideNodes(self, a2, v2);
  v8 = objc_msgSend_count(v3, v4, v5);
  if (v8 < 2)
  {
    v24 = 1;
  }

  else
  {
    v9 = objc_msgSend_firstObject(v3, v6, v7);
    v12 = objc_msgSend_lastObject(v3, v10, v11);
    v15 = objc_msgSend_slideTree(v9, v13, v14);
    v18 = v15;
    if (v15)
    {
      v19 = objc_msgSend_slideNodes(v15, v16, v17);
      v21 = objc_msgSend_indexOfObject_(v19, v20, v9);
      v23 = objc_msgSend_indexOfObject_(v19, v22, v12) - v21 + 1;

      if (v23 == v8)
      {
        v24 = -1;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 1;
    }
  }

  return v24 & 1;
}

- (KNSlideCollectionSelection)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v22.receiver = self;
  v22.super_class = KNSlideCollectionSelection;
  v7 = [(KNSlideCollectionSelection *)&v22 init];
  v8 = v7;
  if (v7)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_275DBD774;
    v20[3] = &unk_27A697A10;
    v9 = v7;
    v21 = v9;
    v10 = unarchiverCopy;
    v11 = objc_opt_class();
    objc_msgSend_readRepeatedWeakReferenceMessage_class_protocol_completion_(v10, v12, archive + 24, v11, 0, v20);

    v13 = *(archive + 9);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_275DBD7F8;
    v18[3] = &unk_27A698B88;
    v19 = v9;
    v14 = v10;
    v16 = objc_opt_class();
    if (v13)
    {
      objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v14, v15, v13, v16, 0, v18);
    }

    else
    {
      objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v14, v15, MEMORY[0x277D80A18], v16, 0, v18);
    }
  }

  return v8;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v8 = objc_msgSend_array(self->_slideNodes, v6, v7);
  objc_msgSend_setWeakReferenceArray_message_(archiverCopy, v9, v8, archive + 24);

  v12 = objc_msgSend_slideNodeToEdit(self, v10, v11);

  if (v12)
  {
    slideNodeToEdit = self->_slideNodeToEdit;
    *(archive + 4) |= 1u;
    v15 = *(archive + 9);
    if (!v15)
    {
      v16 = *(archive + 1);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = MEMORY[0x277C8F050](v16);
      *(archive + 9) = v15;
    }

    objc_msgSend_setWeakReference_message_(archiverCopy, v13, slideNodeToEdit, v15);
  }
}

@end