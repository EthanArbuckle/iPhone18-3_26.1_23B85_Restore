@interface TSDConnectionLineInfo
- (BOOL)allowsParentGroupToBeResizedWithoutAspectRatioLock;
- (CGAffineTransform)computeLayoutFullTransform;
- (Class)layoutClass;
- (TSDConnectionLineInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style;
- (TSDDrawableInfo)connectedFrom;
- (TSDDrawableInfo)connectedTo;
- (id)computeLayoutInfoGeometry;
- (id)typeName;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (void)computeLayoutInfoGeometry:(id *)geometry andPathSource:(id *)source;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)performBlockWithTemporaryLayout:(id)layout;
- (void)saveGeometryToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setConnectedFrom:(id)from;
- (void)setConnectedFromID:(id)d;
- (void)setConnectedTo:(id)to;
- (void)setConnectedToID:(id)d;
- (void)willCopyWithOtherDrawables:(id)drawables;
@end

@implementation TSDConnectionLineInfo

- (TSDConnectionLineInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style
{
  styleCopy = style;
  geometryCopy = geometry;
  contextCopy = context;
  objc_msgSend_size(geometryCopy, v11, v12);
  v15 = objc_msgSend_pathSourceOfLength_(TSDConnectionLinePathSource, v13, v14);
  v17 = objc_msgSend_initWithContext_geometry_style_pathSource_(self, v16, contextCopy, geometryCopy, styleCopy, v15);

  return v17;
}

- (Class)layoutClass
{
  objc_opt_class();
  v5 = objc_msgSend_pathSource(self, v3, v4);
  v6 = TSUDynamicCast();

  if (objc_msgSend_type(v6, v7, v8) > 1)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSDConnectionLineInfo layoutClass]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDConnectionLineInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 83, 0, "Wrong connection line path source type.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v17 = objc_opt_class();

  return v17;
}

- (TSDDrawableInfo)connectedTo
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->mConnectedToID && !selfCopy->mConnectedToInfo && objc_msgSend_tsp_isInDocument(selfCopy, v3, v4))
  {
    v7 = objc_msgSend_context(selfCopy, v5, v6);
    v9 = objc_msgSend_objectWithUUID_(v7, v8, selfCopy->mConnectedToID);
    objc_opt_class();
    v10 = TSUClassAndProtocolCast();

    if (selfCopy->mConnectedToInfo != v10)
    {
      objc_msgSend_willModify(selfCopy, v11, v12, &unk_2885A1E40);
      objc_storeStrong(&selfCopy->mConnectedToInfo, v10);
    }
  }

  objc_sync_exit(selfCopy);

  mConnectedToInfo = selfCopy->mConnectedToInfo;

  return mConnectedToInfo;
}

- (TSDDrawableInfo)connectedFrom
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->mConnectedFromID && !selfCopy->mConnectedFromInfo && objc_msgSend_tsp_isInDocument(selfCopy, v3, v4))
  {
    v7 = objc_msgSend_context(selfCopy, v5, v6);
    v9 = objc_msgSend_objectWithUUID_(v7, v8, selfCopy->mConnectedFromID);
    objc_opt_class();
    v10 = TSUClassAndProtocolCast();

    if (selfCopy->mConnectedFromInfo != v10)
    {
      objc_msgSend_willModify(selfCopy, v11, v12, &unk_2885A1E40);
      objc_storeStrong(&selfCopy->mConnectedFromInfo, v10);
    }
  }

  objc_sync_exit(selfCopy);

  mConnectedFromInfo = selfCopy->mConnectedFromInfo;

  return mConnectedFromInfo;
}

- (void)setConnectedToID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_connectedToID(self, v5, v6);

  if (v7 != dCopy)
  {
    objc_msgSend_willModify(self, v8, v9);
    objc_msgSend_willChangeProperty_(self, v10, 541);
    objc_storeStrong(&self->mConnectedToID, d);
    if (self->mConnectedToID)
    {
      if (!objc_msgSend_tsp_isInDocument(self, v11, v12))
      {
        goto LABEL_8;
      }

      v15 = objc_msgSend_context(self, v13, v14);
      v17 = objc_msgSend_objectWithUUID_(v15, v16, self->mConnectedToID);
      objc_opt_class();
      mConnectedToInfo = TSUClassAndProtocolCast();

      objc_storeStrong(&self->mConnectedToInfo, mConnectedToInfo);
      if (!self->mConnectedToInfo)
      {
        sub_27680A974();
      }
    }

    else
    {
      mConnectedToInfo = self->mConnectedToInfo;
      self->mConnectedToInfo = 0;
    }
  }

LABEL_8:
}

- (void)setConnectedFromID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_connectedFromID(self, v5, v6);

  if (v7 != dCopy)
  {
    objc_msgSend_willModify(self, v8, v9);
    objc_msgSend_willChangeProperty_(self, v10, 542);
    objc_storeStrong(&self->mConnectedFromID, d);
    if (self->mConnectedFromID)
    {
      if (!objc_msgSend_tsp_isInDocument(self, v11, v12))
      {
        goto LABEL_8;
      }

      v15 = objc_msgSend_context(self, v13, v14);
      v17 = objc_msgSend_objectWithUUID_(v15, v16, self->mConnectedFromID);
      objc_opt_class();
      mConnectedFromInfo = TSUClassAndProtocolCast();

      objc_storeStrong(&self->mConnectedFromInfo, mConnectedFromInfo);
      if (!self->mConnectedFromInfo)
      {
        sub_27680AA18();
      }
    }

    else
    {
      mConnectedFromInfo = self->mConnectedFromInfo;
      self->mConnectedFromInfo = 0;
    }
  }

LABEL_8:
}

- (void)setConnectedTo:(id)to
{
  toCopy = to;
  if (toCopy)
  {
    v6 = objc_msgSend_connectedTo(self, v4, v5);

    v9 = toCopy;
    if (v6 == toCopy)
    {
      goto LABEL_8;
    }

    v10 = objc_msgSend_objectUUID(toCopy, v7, v8);
    v13 = objc_msgSend_copy(v10, v11, v12);

    if (!v13)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSDConnectionLineInfo setConnectedTo:]");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDConnectionLineInfo.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 235, 0, "object connected to connection line must have a UUID");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    }

    objc_msgSend_setConnectedToID_(self, v14, v13);
    objc_msgSend_setConnectedToInfo_(self, v22, toCopy);
  }

  else
  {
    objc_msgSend_setConnectedToID_(self, v4, 0);
    objc_msgSend_setConnectedToInfo_(self, v23, 0);
  }

  v9 = toCopy;
LABEL_8:
}

- (void)setConnectedFrom:(id)from
{
  fromCopy = from;
  if (fromCopy)
  {
    v6 = objc_msgSend_connectedFrom(self, v4, v5);

    v9 = fromCopy;
    if (v6 == fromCopy)
    {
      goto LABEL_8;
    }

    v10 = objc_msgSend_objectUUID(fromCopy, v7, v8);
    v13 = objc_msgSend_copy(v10, v11, v12);

    if (!v13)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSDConnectionLineInfo setConnectedFrom:]");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDConnectionLineInfo.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 249, 0, "object connected to connection line must have a UUID");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    }

    objc_msgSend_setConnectedFromID_(self, v14, v13);
    objc_msgSend_setConnectedFromInfo_(self, v22, fromCopy);
  }

  else
  {
    objc_msgSend_setConnectedFromID_(self, v4, 0);
    objc_msgSend_setConnectedFromInfo_(self, v23, 0);
  }

  v9 = fromCopy;
LABEL_8:
}

- (id)computeLayoutInfoGeometry
{
  v4 = 0;
  objc_msgSend_computeLayoutInfoGeometry_andPathSource_(self, a2, &v4, 0);
  v2 = v4;

  return v2;
}

- (void)computeLayoutInfoGeometry:(id *)geometry andPathSource:(id *)source
{
  v7 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], a2, self);
  v12 = objc_msgSend_connectedFrom(self, v8, v9);
  if (v12)
  {
    objc_msgSend_addObject_(v7, v10, v12);
  }

  v14 = objc_msgSend_connectedTo(self, v10, v11);
  if (v14)
  {
    objc_msgSend_addObject_(v7, v13, v14);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_276720108;
  v15[3] = &unk_27A6CD5A0;
  v15[4] = self;
  v15[5] = geometry;
  v15[6] = source;
  objc_msgSend_temporaryLayoutControllerForInfos_useInBlock_(TSDLayoutController, v13, v7, v15);
}

- (CGAffineTransform)computeLayoutFullTransform
{
  v5 = objc_msgSend_computeLayoutInfoGeometry(self, a3, v3);
  if (v5)
  {
    v9 = v5;
    objc_msgSend_fullTransform(v5, v6, v7);
    v5 = v9;
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (BOOL)allowsParentGroupToBeResizedWithoutAspectRatioLock
{
  v11.receiver = self;
  v11.super_class = TSDConnectionLineInfo;
  if (![(TSDShapeInfo *)&v11 allowsParentGroupToBeResizedWithoutAspectRatioLock])
  {
    return 0;
  }

  objc_opt_class();
  v5 = objc_msgSend_pathSource(self, v3, v4);
  v6 = TSUDynamicCast();

  if (v6)
  {
    v9 = objc_msgSend_type(v6, v7, v8) != 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)willCopyWithOtherDrawables:(id)drawables
{
  v24 = objc_msgSend_mutableCopy(drawables, a2, drawables);
  if (objc_msgSend_count(v24, v4, v5))
  {
    v8 = 0;
    do
    {
      v9 = objc_msgSend_objectAtIndex_(v24, v6, v8);
      if (objc_opt_respondsToSelector())
      {
        v12 = objc_msgSend_childInfos(v9, v10, v11);
        objc_msgSend_addObjectsFromArray_(v24, v13, v12);
      }

      ++v8;
    }

    while (v8 < objc_msgSend_count(v24, v14, v15));
  }

  v16 = objc_msgSend_connectedTo(self, v6, v7);
  v18 = objc_msgSend_containsObject_(v24, v17, v16);

  if ((v18 & 1) == 0)
  {
    *&self->mInvalidFlags |= 2u;
  }

  v21 = objc_msgSend_connectedFrom(self, v19, v20);
  v23 = objc_msgSend_containsObject_(v24, v22, v21);

  if ((v23 & 1) == 0)
  {
    *&self->mInvalidFlags |= 1u;
  }
}

- (void)performBlockWithTemporaryLayout:(id)layout
{
  layoutCopy = layout;
  v6 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], v5, self);
  v9 = objc_msgSend_connectedFrom(self, v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_connectedFrom(self, v10, v11);
    objc_msgSend_addObject_(v6, v13, v12);
  }

  v14 = objc_msgSend_connectedTo(self, v10, v11);

  if (v14)
  {
    v17 = objc_msgSend_connectedTo(self, v15, v16);
    objc_msgSend_addObject_(v6, v18, v17);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_276720548;
  v21[3] = &unk_27A6CD5C8;
  v21[4] = self;
  v22 = layoutCopy;
  v19 = layoutCopy;
  objc_msgSend_temporaryLayoutControllerForInfos_useInBlock_(TSDLayoutController, v20, v6, v21);
}

- (id)typeName
{
  v3 = sub_2767B590C(self, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"Connection Line", &stru_28857D120, @"TSDrawables");

  return v5;
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  contextCopy = context;
  objectCopy = object;
  objc_opt_class();
  v8 = TSUDynamicCast();

  if (v8)
  {
    v11 = objc_msgSend_computeLayoutInfoGeometry(self, v9, v10);
    v14 = objc_msgSend_computeLayoutInfoGeometry(v8, v12, v13);
    v15 = TSDMixingTypeWithObjects(v11, v14, contextCopy);
    v16 = TSDMixingTypeBestFromMixingTypes(5, v15);

    v34 = 0;
    objc_msgSend_computeLayoutInfoGeometry_andPathSource_(self, v17, 0, &v34);
    v18 = v34;
    v33 = 0;
    objc_msgSend_computeLayoutInfoGeometry_andPathSource_(v8, v19, 0, &v33);
    v20 = v33;
    v22 = objc_msgSend_mixingTypeWithObject_context_(v18, v21, v20, contextCopy);
    v23 = TSDMixingTypeBestFromMixingTypes(v16, v22);
    if (v23 < 4)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23;
    }
  }

  else
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSDConnectionLineInfo mixingTypeWithObject:context:]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDConnectionLineInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v29, v26, v28, 705, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
    v24 = 1;
  }

  return v24;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 3))
  {
    v7 = *(archive + 3);
  }

  else
  {
    v7 = &TSD::_ShapeArchive_default_instance_;
  }

  v40.receiver = self;
  v40.super_class = TSDConnectionLineInfo;
  [(TSDShapeInfo *)&v40 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v9 = *(archive + 4);
  if ((v9 & 2) != 0)
  {
    v10 = *(archive + 4);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = sub_27677B6D8;
    v39[3] = &unk_27A6CDC48;
    v39[4] = self;
    v11 = unarchiverCopy;
    v12 = objc_opt_class();
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v11, v13, v10, v12, 0, v39);

    v9 = *(archive + 4);
  }

  if ((v9 & 4) != 0)
  {
    v14 = *(archive + 5);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_27677B6F0;
    v38[3] = &unk_27A6CDC48;
    v38[4] = self;
    v15 = unarchiverCopy;
    v16 = objc_opt_class();
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v15, v17, v14, v16, 0, v38);

    v9 = *(archive + 4);
  }

  if ((v9 & 0x10) != 0)
  {
    v18 = objc_msgSend_readWeakObjectUUIDReferenceMessage_(unarchiverCopy, v8, *(archive + 7));
    mConnectedFromID = self->mConnectedFromID;
    self->mConnectedFromID = v18;

    v9 = *(archive + 4);
  }

  if ((v9 & 8) != 0)
  {
    v20 = objc_msgSend_readWeakObjectUUIDReferenceMessage_(unarchiverCopy, v8, *(archive + 6));
    mConnectedToID = self->mConnectedToID;
    self->mConnectedToID = v20;
  }

  mPathSource = self->super.mPathSource;
  v23 = objc_opt_class();
  if ((objc_msgSend_isMemberOfClass_(mPathSource, v24, v23) & 1) == 0)
  {
    v27 = [TSDConnectionLinePathSource alloc];
    v30 = objc_msgSend_bezierPath(self->super.mPathSource, v28, v29);
    v32 = objc_msgSend_initWithBezierPath_(v27, v31, v30);

    v33 = self->super.mPathSource;
    self->super.mPathSource = v32;
  }

  v34 = objc_msgSend_sourceType(unarchiverCopy, v25, v26);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_27677B708;
  v36[3] = &unk_27A6CDC70;
  v36[4] = self;
  v37 = v34;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v35, v36);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812F5188[82]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_27677BBA4;
  v22[3] = &unk_27A6CC520;
  archiveCopy = archive;
  v7 = archiverCopy;
  v23 = v7;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, archive, v22);
  mConnectedFromID = self->mConnectedFromID;
  if (mConnectedFromID)
  {
    *(archive + 4) |= 0x10u;
    v11 = *(archive + 7);
    if (!v11)
    {
      v12 = *(archive + 1);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x277C9BAE0](v12);
      *(archive + 7) = v11;
    }

    objc_msgSend_setWeakReferenceToObjectUUID_message_(v7, v9, mConnectedFromID, v11);
  }

  mConnectedToID = self->mConnectedToID;
  if (mConnectedToID)
  {
    *(archive + 4) |= 8u;
    v14 = *(archive + 6);
    if (!v14)
    {
      v15 = *(archive + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x277C9BAE0](v15);
      *(archive + 6) = v14;
    }

    objc_msgSend_setWeakReferenceToObjectUUID_message_(v7, v9, mConnectedToID, v14);
  }

  mConnectedFromInfo = self->mConnectedFromInfo;
  if (mConnectedFromInfo)
  {
    *(archive + 4) |= 2u;
    v17 = *(archive + 4);
    if (!v17)
    {
      v18 = *(archive + 1);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = MEMORY[0x277C9BB20](v18);
      *(archive + 4) = v17;
    }

    objc_msgSend_setWeakReference_message_(v7, v9, mConnectedFromInfo, v17);
  }

  mConnectedToInfo = self->mConnectedToInfo;
  if (mConnectedToInfo)
  {
    *(archive + 4) |= 4u;
    v20 = *(archive + 5);
    if (!v20)
    {
      v21 = *(archive + 1);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = MEMORY[0x277C9BB20](v21);
      *(archive + 5) = v20;
    }

    objc_msgSend_setWeakReference_message_(v7, v9, mConnectedToInfo, v20);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_27677BD78, off_2812F5188[82]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)saveGeometryToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v8 = objc_msgSend_computeLayoutInfoGeometry(self, v6, v7);
  objc_msgSend_saveToArchive_archiver_(v8, v9, archive, archiverCopy);
}

@end