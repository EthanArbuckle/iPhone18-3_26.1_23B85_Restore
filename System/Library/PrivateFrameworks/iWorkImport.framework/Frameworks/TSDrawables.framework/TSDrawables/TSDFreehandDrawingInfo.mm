@interface TSDFreehandDrawingInfo
- (TSDFreehandDrawingInfo)initWithSpacerShapeAndContext:(id)a3 geometry:(id)a4;
- (id)allNestedChildrenInfosForWrap;
- (id)childEnumerator;
- (id)childEnumeratorForUserSearch;
- (id)infosToObserveForAttachedInfo;
- (id)tsaxTypeDescription;
- (id)typeName;
- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4;
- (void)adoptStylesheet:(id)a3 withMapper:(id)a4;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4 upgradeDOLC:(BOOL)a5;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)setFreehandDrawingSpacerShape:(id)a3;
- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)wasRemovedFromDocumentRoot:(id)a3;
- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
@end

@implementation TSDFreehandDrawingInfo

- (TSDFreehandDrawingInfo)initWithSpacerShapeAndContext:(id)a3 geometry:(id)a4
{
  v5.receiver = self;
  v5.super_class = TSDFreehandDrawingInfo;
  result = [(TSDGroupInfo *)&v5 initWithContext:a3 geometry:a4];
  if (result)
  {
    result->_opacity = 1.0;
  }

  return result;
}

- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (!v9)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSDFreehandDrawingInfo mixingTypeWithObject:context:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFreehandDrawingInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 110, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v29.receiver = self;
  v29.super_class = TSDFreehandDrawingInfo;
  v17 = [(TSDGroupInfo *)&v29 mixingTypeWithObject:v6 context:v7];
  v18 = TSDMixingTypeBestFromMixingTypes(5, v17);
  v21 = objc_msgSend_geometry(self, v19, v20);
  v24 = objc_msgSend_geometry(v9, v22, v23);
  v26 = objc_msgSend_mixingTypeWithObject_context_(v21, v25, v24, v7);
  v27 = TSDMixingTypeBestFromMixingTypes(v18, v26);

  return v27;
}

- (void)adoptStylesheet:(id)a3 withMapper:(id)a4
{
  v6 = a3;
  v7 = a4;
  matched = objc_msgSend_forceMatchStyle(v7, v8, v9);
  objc_msgSend_setForceMatchStyle_(v7, v11, 0);
  v14.receiver = self;
  v14.super_class = TSDFreehandDrawingInfo;
  [(TSDGroupInfo *)&v14 adoptStylesheet:v6 withMapper:v7];
  objc_msgSend_adoptStylesheet_withMapper_(self->_freehandDrawingSpacerShape, v12, v6, v7);
  objc_msgSend_setForceMatchStyle_(v7, v13, matched);
}

- (void)setFreehandDrawingSpacerShape:(id)a3
{
  v9 = a3;
  if (self->_freehandDrawingSpacerShape != v9)
  {
    objc_msgSend_willModify(self, v5, v6);
    objc_msgSend_setParentInfo_(self->_freehandDrawingSpacerShape, v7, 0);
    objc_storeStrong(&self->_freehandDrawingSpacerShape, a3);
    objc_msgSend_setParentInfo_(self->_freehandDrawingSpacerShape, v8, self);
  }
}

- (id)childEnumeratorForUserSearch
{
  v3 = objc_msgSend_titleAndCaptionInfosForUserSearch(self, a2, v2);
  v6 = objc_msgSend_objectEnumerator(v3, v4, v5);

  return v6;
}

- (id)childEnumerator
{
  objc_opt_class();
  v15.receiver = self;
  v15.super_class = TSDFreehandDrawingInfo;
  v3 = [(TSDGroupInfo *)&v15 childEnumerator];
  v4 = TSUCheckedDynamicCast();

  freehandDrawingSpacerShape = self->_freehandDrawingSpacerShape;
  if (freehandDrawingSpacerShape)
  {
    objc_msgSend_addObject_(v4, v5, freehandDrawingSpacerShape);
  }

  else
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDFreehandDrawingInfo childEnumerator]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFreehandDrawingInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 157, 0, "Freehand drawings should always have a spacer shape!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  return v4;
}

- (id)infosToObserveForAttachedInfo
{
  v9.receiver = self;
  v9.super_class = TSDFreehandDrawingInfo;
  v3 = [(TSDGroupInfo *)&v9 infosToObserveForAttachedInfo];
  v5 = v3;
  freehandDrawingSpacerShape = self->_freehandDrawingSpacerShape;
  if (freehandDrawingSpacerShape)
  {
    v7 = objc_msgSend_setByAddingObject_(v3, v4, freehandDrawingSpacerShape);

    v5 = v7;
  }

  return v5;
}

- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TSDFreehandDrawingInfo;
  [(TSDGroupInfo *)&v11 willBeAddedToDocumentRoot:v6 dolcContext:v7];
  if ((objc_msgSend_wasUnarchived(v7, v8, v9) & 1) == 0)
  {
    objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(self->_freehandDrawingSpacerShape, v10, v6, v7);
  }
}

- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TSDFreehandDrawingInfo;
  [(TSDGroupInfo *)&v11 wasAddedToDocumentRoot:v6 dolcContext:v7];
  if ((objc_msgSend_wasUnarchived(v7, v8, v9) & 1) == 0)
  {
    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(self->_freehandDrawingSpacerShape, v10, v6, v7);
  }
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = TSDFreehandDrawingInfo;
  [(TSDGroupInfo *)&v6 willBeRemovedFromDocumentRoot:v4];
  objc_msgSend_willBeRemovedFromDocumentRoot_(self->_freehandDrawingSpacerShape, v5, v4);
}

- (void)wasRemovedFromDocumentRoot:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = TSDFreehandDrawingInfo;
  [(TSDGroupInfo *)&v6 wasRemovedFromDocumentRoot:v4];
  objc_msgSend_wasRemovedFromDocumentRoot_(self->_freehandDrawingSpacerShape, v5, v4);
}

- (id)typeName
{
  v3 = sub_2767B590C(self, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"Drawing", &stru_28857D120, @"TSDrawables");

  return v5;
}

- (id)allNestedChildrenInfosForWrap
{
  v4 = objc_msgSend_documentRoot(self, a2, v2);
  v7 = objc_msgSend_freehandDrawingsRequireSpacerShape(v4, v5, v6);

  if (v7)
  {
    v15.receiver = self;
    v15.super_class = TSDFreehandDrawingInfo;
    v8 = [(TSDGroupInfo *)&v15 allNestedChildrenInfosForWrap];
    v11 = objc_msgSend_mutableCopy(v8, v9, v10);

    objc_msgSend_addObject_(v11, v12, self->_freehandDrawingSpacerShape);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = TSDFreehandDrawingInfo;
    v11 = [(TSDGroupInfo *)&v14 allNestedChildrenInfosForWrap];
  }

  return v11;
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4 upgradeDOLC:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v35.receiver = self;
  v35.super_class = TSDFreehandDrawingInfo;
  [(TSDGroupInfo *)&v35 loadFromArchive:a3 unarchiver:v8 upgradeDOLC:v5];
  if (google::protobuf::internal::ExtensionSet::Has((a3 + 16)))
  {
    Message = google::protobuf::internal::ExtensionSet::GetMessage();
    if (*(Message + 16))
    {
      v21 = objc_msgSend_sourceType(v8, v9, v10);
      v24 = objc_msgSend_unarchivingContext(MEMORY[0x277D805F0], v22, v23);
      v25 = *(Message + 24);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = sub_2766EEF0C;
      v31[3] = &unk_27A6CD0B0;
      v33 = v5;
      v31[4] = self;
      v26 = v24;
      v32 = v26;
      v34 = v21 == 1;
      v27 = v8;
      v29 = objc_opt_class();
      if (v25)
      {
        objc_msgSend_readReferenceMessage_class_protocol_completion_(v27, v28, v25, v29, 0, v31);
      }

      else
      {
        objc_msgSend_readReferenceMessage_class_protocol_completion_(v27, v28, MEMORY[0x277D80A18], v29, 0, v31);
      }
    }

    else
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSDFreehandDrawingInfo loadFromArchive:unarchiver:upgradeDOLC:]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFreehandDrawingInfo.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 386, 0, "This document has an old style sketch object! It's going to assert a lot, please make a new document.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    }

    v30 = *(Message + 40);
    if ((*(Message + 16) & 4) == 0)
    {
      v30 = 1.0;
    }

    objc_msgSend_setOpacity_(self, v19, v20, v30);
  }
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v49[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v48.receiver = self;
  v48.super_class = TSDFreehandDrawingInfo;
  v7 = [(TSDGroupInfo *)&v48 saveToArchive:a3 archiver:v6];
  TSD::FreehandDrawingArchive::default_instance(v7);
  v8 = google::protobuf::internal::ExtensionSet::MutableMessage();
  v9 = *MEMORY[0x277D80990];
  objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(v6, v10, *MEMORY[0x277D80970], *MEMORY[0x277D80990], @"TSDFreehandDrawings");
  freehandDrawingSpacerShape = self->_freehandDrawingSpacerShape;
  if (freehandDrawingSpacerShape || (v13 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSDFreehandDrawingInfo saveToArchive:archiver:]"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFreehandDrawingInfo.mm"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 417, 0, "invalid nil value for '%{public}s'", "_freehandDrawingSpacerShape"), v16, v14, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19), (freehandDrawingSpacerShape = self->_freehandDrawingSpacerShape) != 0))
  {
    *(v8 + 16) |= 1u;
    v21 = *(v8 + 24);
    if (!v21)
    {
      v22 = *(v8 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = MEMORY[0x277C9BB20](v22);
      *(v8 + 24) = v21;
    }

    objc_msgSend_setStrongReference_message_(v6, v11, freehandDrawingSpacerShape, v21);
  }

  objc_msgSend_opacity(self, v11, v20);
  *(v8 + 16) |= 4u;
  *(v8 + 40) = v23;
  v26 = objc_msgSend_documentRoot(self, v24, v25);
  v29 = objc_msgSend_freehandDrawingsRequireSpacerShape(v26, v27, v28);

  if ((objc_msgSend_shouldSaveAlternates(v6, v30, v31) & v29) == 1)
  {
    v33 = objc_msgSend_alternateDiffToMergeBeforeVersion_fileFormatVersion_message_(v6, v32, v9, *MEMORY[0x277D809B8], a3);
    google::protobuf::internal::AssignDescriptors();
    v35 = objc_msgSend_messageWithNewFunction_descriptor_(v33, v34, sub_276656694, off_2812F5188[74]);

    objc_msgSend_removeField_message_(v33, v36, 2, v35);
    v39 = objc_msgSend_freehandDrawingSpacerShape(self, v37, v38);
    v49[0] = v39;
    v41 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v40, v49, 1);
    v44 = objc_msgSend_childInfos(self, v42, v43);
    v46 = objc_msgSend_arrayByAddingObjectsFromArray_(v41, v45, v44);

    objc_msgSend_setStrongReferenceArray_message_(v33, v47, v46, v35 + 48);
  }
}

- (id)tsaxTypeDescription
{
  v3 = sub_2767B590C(self, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"Freehand drawing", &stru_28857D120, @"TSDrawables");

  return v5;
}

@end