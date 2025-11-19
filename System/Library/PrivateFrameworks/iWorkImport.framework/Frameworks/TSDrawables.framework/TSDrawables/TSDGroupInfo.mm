@interface TSDGroupInfo
+ (Class)classForUnarchiver:(id)a3;
+ (id)groupGeometryFromChildrenInfos:(id)a3;
+ (id)groupGeometryFromChildrenInfos:(id)a3 currentlyLaidOutWithLayoutController:(id)a4;
+ (id)p_drawablesToInsertForGroup:(id)a3 outDidUngroup:(BOOL *)a4 filteredWithBlock:(id)a5;
- (BOOL)allowsParentGroupToBeResizedWithoutAspectRatioLock;
- (BOOL)canAnchor;
- (BOOL)canAspectRatioLockBeChangedByUser;
- (BOOL)canCopyData;
- (BOOL)isEffectivelyEmpty;
- (BOOL)isNonGroupedChild:(id)a3;
- (BOOL)needsDownload;
- (BOOL)shouldBeIgnoredWhenCopying;
- (BOOL)supportsParentRotation;
- (NSArray)allNestedChildrenInfos;
- (NSArray)allNestedChildrenInfosIncludingGroups;
- (NSArray)containedModels;
- (NSSet)infosToObserveForAttachedInfo;
- (TSDGroupInfo)initWithContext:(id)a3 geometry:(id)a4;
- (id)childEnumerator;
- (id)childEnumeratorForUserSearch;
- (id)groupedGeometryForChildInfo:(id)a3;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)p_ungroupedGeometryForInfo:(id)a3;
- (id)typeName;
- (id)ungroupedGeometryForChildInfo:(id)a3;
- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4;
- (void)addChildInfo:(id)a3;
- (void)adjustModelInPreparationForBecomingInline;
- (void)adoptStylesheet:(id)a3 withMapper:(id)a4;
- (void)dealloc;
- (void)didCopy;
- (void)ensureGeometryFitsChildren;
- (void)insertChildInfo:(id)a3 above:(id)a4;
- (void)insertChildInfo:(id)a3 atIndex:(unint64_t)a4;
- (void)insertChildInfo:(id)a3 below:(id)a4;
- (void)insertContainedModel:(id)a3 atIndex:(unint64_t)a4;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4 upgradeDOLC:(BOOL)a5;
- (void)loadFromUnarchiver:(id)a3;
- (void)makeChildGeometriesRelativeAndComputeOwnAbsoluteGeometry;
- (void)moveChildren:(id)a3 toIndexes:(id)a4;
- (void)moveModel:(id)a3 toIndex:(unint64_t)a4;
- (void)removeAllChildrenInDocument:(BOOL)a3;
- (void)removeContainedModel:(id)a3;
- (void)replaceChildInfo:(id)a3 with:(id)a4;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)setChildInfos:(id)a3;
- (void)setGeometry:(id)a3;
- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)wasRemovedFromDocumentRoot:(id)a3;
- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
- (void)willCopyWithOtherDrawables:(id)a3;
@end

@implementation TSDGroupInfo

- (void)loadFromUnarchiver:(id)a3
{
  v12 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(v12, v4, off_2812F5188[74]);

  self->mIsInDocument = objc_msgSend_isFromCopy(v12, v6, v7) ^ 1;
  v10 = objc_msgSend_preUFFVersion(v12, v8, v9) < 0x2CBDB2375;
  objc_msgSend_loadFromArchive_unarchiver_upgradeDOLC_(self, v11, v5, v12, v10);
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4 upgradeDOLC:(BOOL)a5
{
  v8 = a4;
  if (*(a3 + 9))
  {
    v9 = *(a3 + 9);
  }

  else
  {
    v9 = &TSD::_DrawableArchive_default_instance_;
  }

  v62.receiver = self;
  v62.super_class = TSDGroupInfo;
  [(TSDDrawableInfo *)&v62 loadFromArchive:v9 unarchiver:v8];
  v12 = objc_msgSend_unarchivingContext(MEMORY[0x277D805F0], v10, v11);
  v15 = objc_msgSend_sourceType(v8, v13, v14) == 1;
  v18 = objc_msgSend_geometry(self, v16, v17);
  if (objc_msgSend_widthValid(v18, v19, v20))
  {
    v23 = objc_msgSend_geometry(self, v21, v22);
    v26 = objc_msgSend_heightValid(v23, v24, v25);

    if (v26)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  objc_msgSend_willModifyForUpgrade(self, v27, v28);
  v31 = objc_msgSend_geometry(self, v29, v30);
  v34 = objc_msgSend_mutableCopy(v31, v32, v33);

  objc_msgSend_size(v34, v35, v36);
  v38 = v37;
  v40 = v39;
  if ((objc_msgSend_widthValid(v34, v41, v42) & 1) == 0)
  {
    if (*MEMORY[0x277D81408] != -1)
    {
      sub_2768084EC();
    }

    objc_msgSend_setWidthValid_(v34, v43, 1);
    objc_msgSend_size(v34, v45, v46);
    if (v47 < 0.1)
    {
      v38 = 0.1;
    }
  }

  if ((objc_msgSend_heightValid(v34, v43, v44) & 1) == 0)
  {
    if (*MEMORY[0x277D81408] != -1)
    {
      sub_276808514();
    }

    objc_msgSend_setHeightValid_(v34, v48, 1);
    objc_msgSend_size(v34, v50, v51);
    if (v52 < 0.1)
    {
      v40 = 0.1;
    }
  }

  objc_msgSend_setSize_(v34, v48, v49, v38, v40);
  objc_msgSend_setGeometry_(self, v53, v34);

LABEL_19:
  if (*(a3 + 14) < 1)
  {
    v57 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mChildInfos = self->mChildInfos;
    self->mChildInfos = v57;
  }

  else
  {
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = sub_276655FAC;
    v59[3] = &unk_27A6CC4F8;
    v60 = a5;
    v59[4] = self;
    v59[5] = v12;
    v61 = v15;
    v54 = v8;
    v55 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v54, v56, a3 + 48, v55, 0, v59);
  }
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = sub_276656550;
  v45[3] = &unk_27A6CC520;
  v48 = a3;
  v7 = v6;
  v46 = v7;
  v47 = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, a3, v45);
  v11 = objc_msgSend_geometry(self, v9, v10);
  if ((objc_msgSend_widthValid(v11, v12, v13) & 1) == 0)
  {

    goto LABEL_5;
  }

  v16 = objc_msgSend_geometry(self, v14, v15);
  v19 = objc_msgSend_heightValid(v16, v17, v18);

  if ((v19 & 1) == 0)
  {
LABEL_5:
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSDGroupInfo(PersistenceAdditions) saveToArchive:archiver:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGroupInfoPersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 145, 0, "Should not be archiving a group with an invalid width or height!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
  }

  v28 = MEMORY[0x277D81150];
  v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSDGroupInfo(PersistenceAdditions) saveToArchive:archiver:]");
  v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGroupInfoPersistenceAdditions.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 159, 0, "Shouldn't be saving in Quick Look.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
  v37 = objc_msgSend_childInfos(self, v35, v36);
  v40 = objc_msgSend_count(v37, v38, v39);

  if (v40)
  {
    v43 = objc_msgSend_childInfos(self, v41, v42);
    objc_msgSend_setStrongReferenceArray_message_(v7, v44, v43, a3 + 48);
  }
}

- (void)saveToArchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v4, sub_276656694, off_2812F5188[74]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, v7);
}

+ (Class)classForUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(v4, v5, off_2812F5188[74]);

  if (google::protobuf::internal::ExtensionSet::Has((v6 + 16)))
  {
    a1 = objc_opt_class();
  }

  v7 = a1;

  return a1;
}

- (TSDGroupInfo)initWithContext:(id)a3 geometry:(id)a4
{
  v13.receiver = self;
  v13.super_class = TSDGroupInfo;
  v4 = [(TSDDrawableInfo *)&v13 initWithContext:a3 geometry:a4];
  v7 = v4;
  if (v4)
  {
    v4->super.mAspectRatioLocked = 1;
    v8 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6);
    mChildInfos = v7->mChildInfos;
    v7->mChildInfos = v8;

    objc_msgSend_p_didUpdateChildInfos(v7, v10, v11);
  }

  return v7;
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->mChildInfos;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v11, v15, 16);
  if (v5)
  {
    v7 = v5;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_clearBackPointerToParentInfoIfNeeded_(*(*(&v11 + 1) + 8 * v9++), v6, self);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v11, v15, 16);
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = TSDGroupInfo;
  [(TSDGroupInfo *)&v10 dealloc];
}

- (BOOL)canAspectRatioLockBeChangedByUser
{
  v22 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = TSDGroupInfo;
  v3 = [(TSDDrawableInfo *)&v20 canAspectRatioLockBeChangedByUser];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && v3)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = objc_msgSend_allNestedChildrenInfosIncludingGroups(self, v4, v5, 0);
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v16, v21, 16);
    if (v8)
    {
      v11 = v8;
      v12 = *v17;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v6);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          if (v14 != self && !objc_msgSend_allowsParentGroupToBeResizedWithoutAspectRatioLock(v14, v9, v10))
          {
            LOBYTE(v3) = 0;
            goto LABEL_14;
          }
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v16, v21, 16);
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    LOBYTE(v3) = 1;
LABEL_14:
  }

  return v3;
}

- (BOOL)allowsParentGroupToBeResizedWithoutAspectRatioLock
{
  v21 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = TSDGroupInfo;
  v3 = [(TSDDrawableInfo *)&v19 allowsParentGroupToBeResizedWithoutAspectRatioLock];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = objc_msgSend_childInfos(self, v4, v5, 0);
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v15, v20, 16);
    if (v8)
    {
      v11 = v8;
      v12 = *v16;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v6);
          }

          if (!objc_msgSend_allowsParentGroupToBeResizedWithoutAspectRatioLock(*(*(&v15 + 1) + 8 * i), v9, v10))
          {
            v3 = 0;
            goto LABEL_12;
          }
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v15, v20, 16);
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return v3;
}

- (BOOL)supportsParentRotation
{
  v24 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = TSDGroupInfo;
  if (![(TSDDrawableInfo *)&v22 supportsParentRotation])
  {
    return 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v6 = objc_msgSend_childInfos(self, v3, v4, 0, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v18, v23, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        objc_opt_class();
        v12 = TSUDynamicCast();
        v15 = objc_msgSend_supportsParentRotation(v12, v13, v14);

        if (!v15)
        {
          v5 = 0;
          goto LABEL_15;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v16, &v18, v23, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v5 = 1;
LABEL_15:

  return v5;
}

- (BOOL)shouldBeIgnoredWhenCopying
{
  v12.receiver = self;
  v12.super_class = TSDGroupInfo;
  if ([(TSDDrawableInfo *)&v12 shouldBeIgnoredWhenCopying])
  {
    return 1;
  }

  v6 = objc_msgSend_childInfos(self, v3, v4);
  if (objc_msgSend_count(v6, v7, v8))
  {
    isEffectivelyEmpty = objc_msgSend_isEffectivelyEmpty(self, v9, v10);
  }

  else
  {
    isEffectivelyEmpty = 1;
  }

  return isEffectivelyEmpty;
}

- (void)adjustModelInPreparationForBecomingInline
{
  v22 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = TSDGroupInfo;
  [(TSDDrawableInfo *)&v20 adjustModelInPreparationForBecomingInline];
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v5 = objc_msgSend_childInfos(self, v3, v4, 0, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v16, v21, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        objc_opt_class();
        v11 = TSUDynamicCast();
        v14 = v11;
        if (v11)
        {
          objc_msgSend_adjustModelInPreparationForBecomingInline(v11, v12, v13);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v15, &v16, v21, 16);
    }

    while (v8);
  }
}

- (void)setGeometry:(id)a3
{
  v5 = a3;
  v18 = v5;
  if (!v5)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDGroupInfo setGeometry:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGroupInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 220, 0, "invalid nil value for '%{public}s'", "newGeometry");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    v5 = 0;
  }

  if ((objc_msgSend_isEqual_(v5, v6, self->super.mGeometry) & 1) == 0)
  {
    objc_msgSend_willModify(self, v14, v15);
    if (objc_msgSend_isEqualExceptForPosition_(v18, v16, self->super.mGeometry))
    {
      objc_msgSend_willChangeProperty_(self, v17, 513);
    }

    else
    {
      objc_msgSend_willChangeProperty_(self, v17, 512);
    }

    objc_storeStrong(&self->super.mGeometry, a3);
  }
}

- (BOOL)isEffectivelyEmpty
{
  v21 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = objc_msgSend_childInfos(self, a2, v2, 0, 0);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v16, v20, 16);
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v3);
        }

        objc_opt_class();
        v9 = TSUDynamicCast();
        v12 = v9;
        if (!v9 || (objc_msgSend_isEffectivelyEmpty(v9, v10, v11) & 1) == 0)
        {

          v14 = 0;
          goto LABEL_13;
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v13, &v16, v20, 16);
      v14 = 1;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 1;
  }

LABEL_13:

  return v14;
}

- (NSArray)allNestedChildrenInfos
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = objc_msgSend_childInfos(self, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v24, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = objc_msgSend_allNestedChildrenInfos(v13, v14, v15);
          objc_msgSend_addObjectsFromArray_(v4, v17, v16);
        }

        else
        {
          objc_msgSend_addObject_(v4, v14, v13);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v18, &v20, v24, 16);
    }

    while (v10);
  }

  return v4;
}

- (NSArray)allNestedChildrenInfosIncludingGroups
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = objc_msgSend_childInfos(self, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v24, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = objc_msgSend_allNestedChildrenInfosIncludingGroups(v13, v14, v15);
          objc_msgSend_addObjectsFromArray_(v4, v17, v16);
        }

        objc_msgSend_addObject_(v4, v14, v13);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v18, &v20, v24, 16);
    }

    while (v10);
  }

  return v4;
}

- (BOOL)isNonGroupedChild:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDGroupInfo isNonGroupedChild:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGroupInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 315, 0, "invalid nil value for '%{public}s'", "childToTest");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = objc_msgSend_caption(self, v4, v5);

  if (v14 == v6)
  {
    v18 = 1;
  }

  else
  {
    v17 = objc_msgSend_title(self, v15, v16);
    v18 = v17 == v6;
  }

  return v18;
}

- (NSSet)infosToObserveForAttachedInfo
{
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_msgSend_childInfos(self, a2, v2);
  v6 = objc_msgSend_setWithArray_(v3, v5, v4);

  return v6;
}

- (NSArray)containedModels
{
  v3 = objc_msgSend_childInfos(self, a2, v2);
  v6 = objc_msgSend_copy(v3, v4, v5);

  return v6;
}

- (void)insertContainedModel:(id)a3 atIndex:(unint64_t)a4
{
  v6 = TSUProtocolCast();
  v15 = v6;
  if (v6)
  {
    objc_msgSend_insertChildInfo_atIndex_(self, v6, v6, a4, &unk_2885A16B8);
  }

  else
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDGroupInfo insertContainedModel:atIndex:]", &unk_2885A16B8);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGroupInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 352, 0, "Must provide an info!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }
}

- (void)removeContainedModel:(id)a3
{
  v4 = TSUProtocolCast();
  v13 = v4;
  if (v4)
  {
    objc_msgSend_removeChildInfo_(self, v4, v4, &unk_2885A16B8);
  }

  else
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDGroupInfo removeContainedModel:]", &unk_2885A16B8);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGroupInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 360, 0, "Must provide an info!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }
}

- (void)moveModel:(id)a3 toIndex:(unint64_t)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = TSUProtocolCast();
  v8 = v6;
  if (v6)
  {
    v20[0] = v6;
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v20, 1, &unk_2885A16B8);
    v11 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v10, a4);
    objc_msgSend_moveChildren_toIndexes_(self, v12, v9, v11);
  }

  else
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDGroupInfo moveModel:toIndex:]", &unk_2885A16B8);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGroupInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 368, 0, "Must provide an info!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }
}

- (void)setChildInfos:(id)a3
{
  v99 = *MEMORY[0x277D85DE8];
  v5 = a3;
  mChildInfos = self->mChildInfos;
  if (mChildInfos != v5 && (objc_msgSend_isEqual_(mChildInfos, v4, v5) & 1) == 0)
  {
    objc_msgSend_willModify(self, v7, v8);
    objc_msgSend_willChangeProperty_(self, v9, 514);
    if (v5)
    {
      v10 = objc_alloc(MEMORY[0x277CBEB98]);
      v12 = objc_msgSend_initWithArray_(v10, v11, v5);
    }

    else
    {
      v12 = 0;
    }

    if (self->mIsInDocument)
    {
      v76 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v75 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v15 = objc_msgSend_documentRoot(self, v13, v14);
      v74 = objc_msgSend_defaultContext(MEMORY[0x277D805F0], v16, v17);
    }

    else
    {
      v74 = 0;
      v75 = 0;
      v15 = 0;
      v76 = 0;
    }

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v18 = self->mChildInfos;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v91, v98, 16);
    if (v20)
    {
      v22 = v20;
      v23 = *v92;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v92 != v23)
          {
            objc_enumerationMutation(v18);
          }

          v25 = *(*(&v91 + 1) + 8 * i);
          if ((objc_msgSend_containsObject_(v12, v21, v25) & 1) == 0)
          {
            if (self->mIsInDocument)
            {
              objc_msgSend_addObject_(v76, v21, v25);
              objc_msgSend_willBeRemovedFromDocumentRoot_(v25, v26, v15);
            }

            objc_msgSend_setParentInfo_(v25, v21, 0);
          }
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v91, v98, 16);
      }

      while (v22);
    }

    v72 = v12;
    if (self->mChildInfos)
    {
      v27 = objc_alloc(MEMORY[0x277CBEB98]);
      v29 = objc_msgSend_initWithArray_(v27, v28, self->mChildInfos);
    }

    else
    {
      v29 = 0;
    }

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v73 = v5;
    obj = v5;
    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, &v87, v97, 16);
    v77 = v29;
    if (v31)
    {
      v32 = v31;
      v33 = *v88;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v88 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v87 + 1) + 8 * j);
          objc_opt_class();
          v36 = TSUDynamicCast();

          if (!v36)
          {
            v38 = MEMORY[0x277D81150];
            v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "[TSDGroupInfo setChildInfos:]");
            v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGroupInfo.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v42, v39, v41, 406, 0, "Group children must be TSDDrawableInfos.");

            v29 = v77;
            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44);
          }

          if ((objc_msgSend_containsObject_(v29, v37, v35) & 1) == 0)
          {
            v47 = objc_msgSend_parentInfo(v35, v45, v46);
            v48 = TSUProtocolCast();

            objc_msgSend_removeChildInfo_(v48, v49, v35, &unk_2885A1948);
            if (self->mIsInDocument)
            {
              objc_msgSend_addObject_(v75, v50, v35);
              objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v35, v51, v15, v74);
            }

            objc_msgSend_setParentInfo_(v35, v50, self);
          }
        }

        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v45, &v87, v97, 16);
      }

      while (v32);
    }

    v54 = objc_msgSend_mutableCopy(obj, v52, v53);
    v55 = self->mChildInfos;
    self->mChildInfos = v54;

    objc_msgSend_p_didUpdateChildInfos(self, v56, v57);
    if (self->mIsInDocument)
    {
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v58 = v76;
      v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v59, &v83, v96, 16);
      if (v60)
      {
        v62 = v60;
        v63 = *v84;
        do
        {
          for (k = 0; k != v62; ++k)
          {
            if (*v84 != v63)
            {
              objc_enumerationMutation(v58);
            }

            objc_msgSend_wasRemovedFromDocumentRoot_(*(*(&v83 + 1) + 8 * k), v61, v15);
          }

          v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v61, &v83, v96, 16);
        }

        while (v62);
      }

      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v65 = v75;
      v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v66, &v79, v95, 16);
      if (v67)
      {
        v69 = v67;
        v70 = *v80;
        do
        {
          for (m = 0; m != v69; ++m)
          {
            if (*v80 != v70)
            {
              objc_enumerationMutation(v65);
            }

            objc_msgSend_wasAddedToDocumentRoot_dolcContext_(*(*(&v79 + 1) + 8 * m), v68, v15, v74);
          }

          v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v68, &v79, v95, 16);
        }

        while (v69);
      }
    }

    v5 = v73;
  }
}

- (void)addChildInfo:(id)a3
{
  v9 = a3;
  mChildInfos = self->mChildInfos;
  if (mChildInfos)
  {
    v7 = objc_msgSend_count(mChildInfos, v4, v5);
    objc_msgSend_insertChildInfo_atIndex_(self, v8, v9, v7);
  }

  else
  {
    objc_msgSend_insertChildInfo_atIndex_(self, v4, v9, 0);
  }
}

- (void)insertChildInfo:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v39 = v6;
    objc_opt_class();
    v7 = TSUDynamicCast();

    if (!v7)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSDGroupInfo insertChildInfo:atIndex:]");
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGroupInfo.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 446, 0, "Group children must be TSDDrawableInfos.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    }

    objc_msgSend_willModify(self, v8, v9);
    objc_msgSend_willChangeProperty_(self, v17, 514);
    v20 = objc_msgSend_parentInfo(v39, v18, v19);
    v38 = &unk_2885A1948;
    v21 = TSUProtocolCast();

    if (v21)
    {
      objc_msgSend_removeChildInfo_(v21, v22, v39, &unk_2885A1948);
    }

    if (!self->mChildInfos)
    {
      v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
      mChildInfos = self->mChildInfos;
      self->mChildInfos = v23;
    }

    objc_msgSend_setParentInfo_(v39, v22, self, v38);
    v29 = objc_msgSend_defaultContext(MEMORY[0x277D805F0], v25, v26);
    if (self->mIsInDocument)
    {
      v30 = objc_msgSend_documentRoot(self, v27, v28);
      objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v39, v31, v30, v29);
    }

    objc_msgSend_insertObject_atIndex_(self->mChildInfos, v27, v39, a4);
    objc_msgSend_p_didUpdateChildInfos(self, v32, v33);
    if (self->mIsInDocument)
    {
      v36 = objc_msgSend_documentRoot(self, v34, v35);
      objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v39, v37, v36, v29);
    }

    v6 = v39;
  }
}

- (void)insertChildInfo:(id)a3 below:(id)a4
{
  v11 = a3;
  v7 = a4;
  mChildInfos = self->mChildInfos;
  if (mChildInfos)
  {
    v9 = objc_msgSend_indexOfObjectIdenticalTo_(mChildInfos, v6, v7);
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_insertChildInfo_atIndex_(self, v10, v11, v9);
    }
  }
}

- (void)insertChildInfo:(id)a3 above:(id)a4
{
  v11 = a3;
  v7 = a4;
  mChildInfos = self->mChildInfos;
  if (mChildInfos)
  {
    v9 = objc_msgSend_indexOfObjectIdenticalTo_(mChildInfos, v6, v7);
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_insertChildInfo_atIndex_(self, v10, v11, v9 + 1);
    }
  }
}

- (void)moveChildren:(id)a3 toIndexes:(id)a4
{
  v52 = a3;
  v6 = a4;
  v9 = objc_msgSend_count(v52, v7, v8);
  v12 = objc_msgSend_count(v6, v10, v11);
  Index = objc_msgSend_lastIndex(v6, v13, v14);
  v18 = objc_msgSend_count(self->mChildInfos, v16, v17);
  v21 = v18;
  if (v9 != v12)
  {
    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSDGroupInfo moveChildren:toIndexes:]");
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGroupInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v42, v39, v41, 502, 0, "Can't move drawables to indexes, counts don't match.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44);
    if (Index < v21)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (Index >= v18)
  {
LABEL_9:
    v45 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSDGroupInfo moveChildren:toIndexes:]");
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGroupInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v49, v46, v48, 503, 0, "Can't move drawables to indexes, one or more indexes out of range.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51);
    goto LABEL_10;
  }

  v22 = objc_msgSend_mutableCopy(self->mChildInfos, v19, v20);
  objc_msgSend_removeObjectsInArray_(v22, v23, v52);
  v28 = v21 - v9;
  if (objc_msgSend_count(v22, v24, v25) != v21 - v9)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSDGroupInfo moveChildren:toIndexes:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGroupInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 509, 0, "Can't move drawables to indexes, not all drawables are in this group.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
  }

  if (objc_msgSend_count(v22, v26, v27) == v28)
  {
    objc_msgSend_insertObjects_atIndexes_(v22, v36, v52, v6);
    objc_msgSend_setChildInfos_(self, v37, v22);
  }

LABEL_10:
}

- (void)removeAllChildrenInDocument:(BOOL)a3
{
  v3 = a3;
  v40 = *MEMORY[0x277D85DE8];
  objc_msgSend_willModify(self, a2, a3);
  v5 = self->mChildInfos;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v34, v39, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v35;
    do
    {
      v12 = 0;
      do
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v34 + 1) + 8 * v12);
        if (v3)
        {
          v14 = objc_msgSend_documentRoot(self, v8, v9);
          objc_msgSend_willBeRemovedFromDocumentRoot_(v13, v15, v14);
        }

        objc_msgSend_setParentInfo_(v13, v8, 0);
        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v34, v39, 16);
    }

    while (v10);
  }

  mChildInfos = self->mChildInfos;
  self->mChildInfos = 0;

  objc_msgSend_p_didUpdateChildInfos(self, v17, v18);
  if (v3)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = v5;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v30, v38, 16);
    if (v21)
    {
      v24 = v21;
      v25 = *v31;
      do
      {
        v26 = 0;
        do
        {
          if (*v31 != v25)
          {
            objc_enumerationMutation(v19);
          }

          v27 = *(*(&v30 + 1) + 8 * v26);
          v28 = objc_msgSend_documentRoot(self, v22, v23, v30);
          objc_msgSend_wasRemovedFromDocumentRoot_(v27, v29, v28);

          ++v26;
        }

        while (v24 != v26);
        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v30, v38, 16);
      }

      while (v24);
    }
  }
}

- (id)groupedGeometryForChildInfo:(id)a3
{
  v4 = objc_msgSend_geometry(a3, a2, a3);
  v7 = objc_msgSend_geometry(self, v5, v6);
  v9 = objc_msgSend_geometryRelativeToGeometry_(v4, v8, v7);

  return v9;
}

- (id)ungroupedGeometryForChildInfo:(id)a3
{
  v4 = a3;
  if ((objc_msgSend_containsObject_(self->mChildInfos, v5, v4) & 1) == 0)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDGroupInfo ungroupedGeometryForChildInfo:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGroupInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 544, 0, "Can't get ungrouped geometry for a drawable which isn't a child of the group.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = objc_msgSend_p_ungroupedGeometryForInfo_(self, v6, v4);

  return v14;
}

- (id)p_ungroupedGeometryForInfo:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_geometry(v4, v5, v6);
  objc_opt_class();
  v8 = TSUDynamicCast();

  if (v8 && objc_msgSend_wantsCounterRotationWhenNotSupportingParentRotationInRotatedParent(v8, v9, v10) && (objc_msgSend_supportsParentRotation(v8, v9, v10) & 1) == 0)
  {
    objc_msgSend_transformInRoot(self, v9, v10);
    v18 = objc_msgSend_geometry(v8, v16, v17);
    v21 = v18;
    if (v18)
    {
      objc_msgSend_transform(v18, v19, v20);
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    v22 = TSUIsTransformFlipped();
    v11 = objc_msgSend_infoGeometryForTransformInRoot_isChildFlipped_(TSDCounterRotateInfo, v23, &v42, v22);

    memset(&v42, 0, sizeof(v42));
    if (v11)
    {
      objc_msgSend_transform(v11, v24, v25);
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    v26 = objc_msgSend_geometry(self, v24, v25);
    v29 = v26;
    if (v26)
    {
      objc_msgSend_transform(v26, v27, v28);
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    CGAffineTransformConcat(&v42, &t1, &t2);

    memset(&t1, 0, sizeof(t1));
    if (v7)
    {
      objc_msgSend_fullTransform(v7, v30, v31);
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    v39 = v42;
    CGAffineTransformConcat(&t1, &t2, &v39);
    v34 = objc_msgSend_widthValid(v7, v32, v33);
    v37 = objc_msgSend_heightValid(v7, v35, v36);
    t2 = t1;
    v13 = objc_msgSend_geometryFromFullTransform_widthValid_heightValid_(TSDInfoGeometry, v38, &t2, v34, v37);
  }

  else
  {
    v11 = objc_msgSend_geometry(self, v9, v10);
    v13 = objc_msgSend_geometryWithParentGeometry_(v7, v12, v11);
  }

  v14 = v13;

  return v14;
}

+ (id)groupGeometryFromChildrenInfos:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_2766F1900;
  v17 = sub_2766F1910;
  v18 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2766F1918;
  v9[3] = &unk_27A6CD0D8;
  v11 = &v13;
  v12 = a1;
  v5 = v4;
  v10 = v5;
  objc_msgSend_temporaryLayoutControllerForInfos_useInBlock_(TSDLayoutController, v6, v5, v9);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

+ (id)groupGeometryFromChildrenInfos:(id)a3 currentlyLaidOutWithLayoutController:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "+[TSDGroupInfo groupGeometryFromChildrenInfos:currentlyLaidOutWithLayoutController:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGroupInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 577, 0, "invalid nil value for '%{public}s'", "layoutController");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v50 = 0;
  v51 = &v50;
  v52 = 0x4010000000;
  v53 = "";
  v15 = *(MEMORY[0x277CBF398] + 16);
  v54 = *MEMORY[0x277CBF398];
  v55 = v15;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v16 = v5;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v46, v56, 16);
  if (v19)
  {
    v20 = *v47;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v47 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v46 + 1) + 8 * i);
        v23 = objc_msgSend_layoutForInfo_(v7, v18, v22);
        v26 = v23;
        if (v23)
        {
          v27 = v51;
          v28 = objc_msgSend_pureGeometry(v23, v24, v25);
          v31 = v28;
          if (v28)
          {
            objc_msgSend_fullTransform(v28, v29, v30);
          }

          else
          {
            memset(&v45, 0, sizeof(v45));
          }

          v59.origin.x = 0.0;
          v59.origin.y = 0.0;
          v59.size.width = 1.0;
          v59.size.height = 1.0;
          v61 = CGRectApplyAffineTransform(v59, &v45);
          v60 = CGRectUnion(v27[1], v61);
          v51[1] = v60;
        }

        else
        {
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = sub_2766F1CAC;
          v42[3] = &unk_27A6CD100;
          v43 = 0;
          v44 = &v50;
          objc_msgSend_performBlockWithTemporaryLayout_(v22, v24, v42);
          v31 = v43;
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v46, v56, 16);
    }

    while (v19);
  }

  __asm { FMOV            V1.2D, #1.0 }

  v51[1].size = vmaxnmq_f64(v51[1].size, _Q1);
  v37 = [TSDInfoGeometry alloc];
  v40 = objc_msgSend_initWithPosition_size_(v37, v38, v39, v51[1].origin.x, v51[1].origin.y, v51[1].size.width, v51[1].size.height);
  _Block_object_dispose(&v50, 8);

  return v40;
}

- (void)makeChildGeometriesRelativeAndComputeOwnAbsoluteGeometry
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_groupGeometryFromChildrenInfos_(TSDGroupInfo, a2, self->mChildInfos);
  objc_msgSend_setGeometry_(self, v4, v3);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->mChildInfos;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v15, v19, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = objc_msgSend_groupedGeometryForChildInfo_(self, v8, v12, v15);
        objc_msgSend_setGeometry_(v12, v14, v13);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v15, v19, 16);
    }

    while (v9);
  }
}

- (void)replaceChildInfo:(id)a3 with:(id)a4
{
  v25 = a3;
  v7 = a4;
  mChildInfos = self->mChildInfos;
  if (mChildInfos)
  {
    v9 = objc_msgSend_indexOfObjectIdenticalTo_(mChildInfos, v6, v25);
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v9;
      objc_msgSend_willModify(self, v10, v11);
      objc_msgSend_willChangeProperty_(self, v13, 514);
      if (self->mIsInDocument)
      {
        v16 = objc_msgSend_documentRoot(self, v14, v15);
        objc_msgSend_willBeRemovedFromDocumentRoot_(v25, v17, v16);
      }

      objc_msgSend_removeObjectAtIndex_(self->mChildInfos, v14, v12);
      objc_msgSend_p_didUpdateChildInfos(self, v18, v19);
      objc_msgSend_setParentInfo_(v25, v20, 0);
      if (self->mIsInDocument)
      {
        v23 = objc_msgSend_documentRoot(self, v21, v22);
        objc_msgSend_wasRemovedFromDocumentRoot_(v25, v24, v23);
      }

      objc_msgSend_insertChildInfo_atIndex_(self, v21, v7, v12);
    }
  }
}

- (void)ensureGeometryFitsChildren
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_childInfos(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    x = *MEMORY[0x277CBF398];
    y = *(MEMORY[0x277CBF398] + 8);
    width = *(MEMORY[0x277CBF398] + 16);
    height = *(MEMORY[0x277CBF398] + 24);
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v14 = objc_msgSend_childInfos(self, v8, v9);
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v68, v73, 16);
    if (v16)
    {
      v19 = v16;
      v20 = *v69;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v69 != v20)
          {
            objc_enumerationMutation(v14);
          }

          v22 = *(*(&v68 + 1) + 8 * i);
          if (v22)
          {
            objc_msgSend_computeFullTransform(v22, v17, v18);
          }

          else
          {
            memset(&v67, 0, sizeof(v67));
          }

          v75.origin.x = 0.0;
          v75.origin.y = 0.0;
          v75.size.width = 1.0;
          v75.size.height = 1.0;
          v78 = CGRectApplyAffineTransform(v75, &v67);
          v76.origin.x = x;
          v76.origin.y = y;
          v76.size.width = width;
          v76.size.height = height;
          v77 = CGRectUnion(v76, v78);
          x = v77.origin.x;
          y = v77.origin.y;
          width = v77.size.width;
          height = v77.size.height;
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v68, v73, 16);
      }

      while (v19);
    }

    v23 = fmax(width, 1.0);
    v24 = fmax(height, 1.0);
    v27 = objc_msgSend_geometry(self, v25, v26);
    objc_msgSend_size(v27, v28, v29);
    v31 = v30;
    v33 = v32;

    v34 = fmax(v31, 1.0);
    v35 = fmax(v33, 1.0);
    memset(&v67, 0, sizeof(v67));
    CGAffineTransformMakeScale(&v67, v23 / v34, v24 / v35);
    CGAffineTransformMakeTranslation(&t2, x / v34, y / v35);
    t1 = v67;
    CGAffineTransformConcat(&v66, &t1, &t2);
    v67 = v66;
    v38 = objc_msgSend_geometry(self, v36, v37);
    v41 = v38;
    if (v38)
    {
      objc_msgSend_fullTransform(v38, v39, v40);
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    t1 = v67;
    CGAffineTransformConcat(&v66, &t1, &t2);
    v43 = objc_msgSend_geometryFromFullTransform_(TSDInfoGeometry, v42, &v66);
    objc_msgSend_setGeometry_(self, v44, v43);

    CGAffineTransformMakeTranslation(&v66, -x, -y);
    v67 = v66;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v47 = objc_msgSend_childInfos(self, v45, v46, 0);
    v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v60, v72, 16);
    if (v49)
    {
      v52 = v49;
      v53 = *v61;
      do
      {
        for (j = 0; j != v52; ++j)
        {
          if (*v61 != v53)
          {
            objc_enumerationMutation(v47);
          }

          v55 = *(*(&v60 + 1) + 8 * j);
          v56 = objc_msgSend_geometry(v55, v50, v51);
          v66 = v67;
          v58 = objc_msgSend_geometryByAppendingTransform_(v56, v57, &v66);
          objc_msgSend_setGeometry_(v55, v59, v58);
        }

        v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v50, &v60, v72, 16);
      }

      while (v52);
    }
  }
}

- (void)willCopyWithOtherDrawables:(id)a3
{
  v5 = a3;
  v9 = objc_msgSend_childInfos(self, v6, v7);
  objc_msgSend_makeObjectsPerformSelector_withObject_(v9, v8, a2, v5);
}

- (void)didCopy
{
  v5 = objc_msgSend_childInfos(self, a2, v2);
  objc_msgSend_makeObjectsPerformSelector_(v5, v4, a2);
}

- (BOOL)canAnchor
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = TSDGroupInfo;
  if (![(TSDDrawableInfo *)&v17 canAnchor])
  {
    return 0;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->mChildInfos;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v13, v18, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v3);
        }

        if (!objc_msgSend_canAnchor(*(*(&v13 + 1) + 8 * i), v6, v7, v13))
        {
          v11 = 0;
          goto LABEL_13;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v13, v18, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_13:

  return v11;
}

- (id)childEnumeratorForUserSearch
{
  v3 = MEMORY[0x277D81148];
  v11.receiver = self;
  v11.super_class = TSDGroupInfo;
  v4 = [(TSDDrawableInfo *)&v11 childEnumeratorForUserSearch];
  v7 = objc_msgSend_objectEnumerator(self->mChildInfos, v5, v6);
  v9 = objc_msgSend_aggregateEnumeratorWithObjects_(v3, v8, v4, v7, 0);

  return v9;
}

- (id)childEnumerator
{
  v3 = MEMORY[0x277D81148];
  v11.receiver = self;
  v11.super_class = TSDGroupInfo;
  v4 = [(TSDDrawableInfo *)&v11 childEnumerator];
  v7 = objc_msgSend_objectEnumerator(self->mChildInfos, v5, v6);
  v9 = objc_msgSend_aggregateEnumeratorWithObjects_(v3, v8, v4, v7, 0);

  return v9;
}

- (id)typeName
{
  v3 = sub_2767B590C(self, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"Group", &stru_28857D120, @"TSDrawables");

  return v5;
}

- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = TSDGroupInfo;
  [(TSDDrawableInfo *)&v21 willBeAddedToDocumentRoot:v6 dolcContext:v7];
  if ((objc_msgSend_wasUnarchived(v7, v8, v9) & 1) == 0)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = self->mChildInfos;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v17, v22, 16);
    if (v12)
    {
      v14 = v12;
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(v10);
          }

          objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(*(*(&v17 + 1) + 8 * v16++), v13, v6, v7, v17);
        }

        while (v14 != v16);
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v17, v22, 16);
      }

      while (v14);
    }
  }
}

- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = TSDGroupInfo;
  [(TSDDrawableInfo *)&v21 wasAddedToDocumentRoot:v6 dolcContext:v7];
  self->mIsInDocument = 1;
  if ((objc_msgSend_wasUnarchived(v7, v8, v9) & 1) == 0)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = self->mChildInfos;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v17, v22, 16);
    if (v12)
    {
      v14 = v12;
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(v10);
          }

          objc_msgSend_wasAddedToDocumentRoot_dolcContext_(*(*(&v17 + 1) + 8 * v16++), v13, v6, v7, v17);
        }

        while (v14 != v16);
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v17, v22, 16);
      }

      while (v14);
    }
  }
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = TSDGroupInfo;
  [(TSDDrawableInfo *)&v16 willBeRemovedFromDocumentRoot:v4];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->mChildInfos;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v12, v17, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_willBeRemovedFromDocumentRoot_(*(*(&v12 + 1) + 8 * v11++), v8, v4, v12);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v12, v17, 16);
    }

    while (v9);
  }

  self->mIsInDocument = 0;
}

- (void)wasRemovedFromDocumentRoot:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = TSDGroupInfo;
  [(TSDDrawableInfo *)&v16 wasRemovedFromDocumentRoot:v4];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->mChildInfos;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v12, v17, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_wasRemovedFromDocumentRoot_(*(*(&v12 + 1) + 8 * v11++), v8, v4, v12);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v12, v17, 16);
    }

    while (v9);
  }
}

- (BOOL)needsDownload
{
  v16 = *MEMORY[0x277D85DE8];
  objc_msgSend_allNestedChildrenInfos(self, a2, v2);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v14 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v11, v15, 16);
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v3);
        }

        if (objc_msgSend_needsDownload(*(*(&v11 + 1) + 8 * i), v5, v6, v11))
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v11, v15, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (BOOL)canCopyData
{
  v18 = *MEMORY[0x277D85DE8];
  objc_msgSend_allNestedChildrenInfos(self, a2, v2);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v16 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v13, v17, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v3);
        }

        if (!objc_msgSend_canCopyData(*(*(&v13 + 1) + 8 * i), v6, v7, v13))
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v13, v17, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (void)adoptStylesheet:(id)a3 withMapper:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = TSDGroupInfo;
  [(TSDDrawableInfo *)&v19 adoptStylesheet:v6 withMapper:v7];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->mChildInfos;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v15, v20, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_adoptStylesheet_withMapper_(*(*(&v15 + 1) + 8 * v14++), v11, v6, v7, v15);
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v15, v20, 16);
    }

    while (v12);
  }
}

- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4
{
  v5 = a3;
  objc_opt_class();
  v53 = v5;
  v8 = TSUDynamicCast();
  if (!v8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDGroupInfo mixingTypeWithObject:context:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGroupInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 907, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_msgSend_childInfos(self, v6, v7);
  v19 = objc_msgSend_count(v16, v17, v18);
  v22 = objc_msgSend_childInfos(v8, v20, v21);
  v25 = objc_msgSend_count(v22, v23, v24);

  if (v19 == v25)
  {
    v28 = objc_msgSend_childInfos(self, v26, v27);
    v31 = objc_msgSend_count(v28, v29, v30);

    if (v31)
    {
      v34 = 0;
      v35 = 1;
      while (1)
      {
        v36 = objc_msgSend_childInfos(self, v32, v33);
        v38 = objc_msgSend_objectAtIndexedSubscript_(v36, v37, v34);
        objc_opt_class();
        v39 = TSUClassAndProtocolCast();

        v42 = objc_msgSend_childInfos(v8, v40, v41, &unk_28859E080, v53);
        v44 = objc_msgSend_objectAtIndexedSubscript_(v42, v43, v34);
        objc_opt_class();
        v45 = TSUClassAndProtocolCast();

        if (!v39 || !v45)
        {
          break;
        }

        ++v34;
        v48 = objc_msgSend_childInfos(self, v46, v47, &unk_28859E080);
        v51 = objc_msgSend_count(v48, v49, v50);

        if (v34 >= v51)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v35 = 4;
    }
  }

  else
  {
    v35 = 1;
  }

  return v35;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDGroupInfo mixedObjectWithFraction:ofObject:]", a3);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGroupInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 929, 0, "TSDGroupInfo does not implement TSDMixing!");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  return 0;
}

+ (id)p_drawablesToInsertForGroup:(id)a3 outDidUngroup:(BOOL *)a4 filteredWithBlock:(id)a5
{
  v84 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v66 = a5;
  v64 = a4;
  if (objc_msgSend_isFreehandDrawing(v8, v9, v10))
  {
    v13 = 0;
  }

  else
  {
    v14 = objc_msgSend_childInfos(v8, v11, v12);
    v13 = objc_msgSend_count(v14, v15, v16) < 2;
  }

  v17 = objc_alloc(MEMORY[0x277CBEB18]);
  v20 = objc_msgSend_childInfos(v8, v18, v19);
  v23 = objc_msgSend_count(v20, v21, v22);
  v25 = objc_msgSend_initWithCapacity_(v17, v24, v23);

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v65 = v8;
  v28 = objc_msgSend_childInfos(v8, v26, v27);
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v76, v83, 16);
  if (v30)
  {
    v31 = v30;
    v32 = *v77;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v77 != v32)
        {
          objc_enumerationMutation(v28);
        }

        objc_opt_class();
        v35 = TSUDynamicCast();
        if (v35)
        {
          v75 = 0;
          v36 = objc_msgSend_p_drawablesToInsertForGroup_outDidUngroup_filteredWithBlock_(a1, v34, v35, &v75, v66);
          objc_msgSend_addObjectsFromArray_(v25, v37, v36);

          v13 |= v75;
        }

        else
        {
          objc_opt_class();
          v38 = TSUCheckedDynamicCast();
          objc_msgSend_addObject_(v25, v39, v38);
        }
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v40, &v76, v83, 16);
    }

    while (v31);
  }

  if (v13)
  {
LABEL_25:
    v52 = v25;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v54, &v67, v81, 16);
    v50 = v65;
    if (v55)
    {
      v57 = v55;
      v58 = *v68;
      do
      {
        for (j = 0; j != v57; ++j)
        {
          if (*v68 != v58)
          {
            objc_enumerationMutation(v52);
          }

          v60 = *(*(&v67 + 1) + 8 * j);
          v61 = objc_msgSend_p_ungroupedGeometryForInfo_(v65, v56, v60);
          objc_msgSend_setGeometry_(v60, v62, v61);
        }

        v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v56, &v67, v81, 16);
      }

      while (v57);
    }

    objc_msgSend_removeAllChildrenInDocument_(v65, v56, 0);
    v53 = 1;
  }

  else
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v41 = v25;
    v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, &v71, v82, 16);
    if (v43)
    {
      v44 = v43;
      v45 = *v72;
      while (2)
      {
        for (k = 0; k != v44; ++k)
        {
          if (*v72 != v45)
          {
            objc_enumerationMutation(v41);
          }

          objc_opt_class();
          v47 = TSUDynamicCast();
          v48 = v66[2](v66, v47);

          if (!v48)
          {

            goto LABEL_25;
          }
        }

        v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v49, &v71, v82, 16);
        if (v44)
        {
          continue;
        }

        break;
      }
    }

    v50 = v65;
    v80 = v65;
    v52 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v51, &v80, 1);
    v53 = 0;
  }

  if (v64)
  {
    *v64 = v53;
  }

  return v52;
}

@end