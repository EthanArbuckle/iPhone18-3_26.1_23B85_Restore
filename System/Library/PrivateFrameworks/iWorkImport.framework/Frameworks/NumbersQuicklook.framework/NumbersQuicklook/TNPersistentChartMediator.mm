@interface TNPersistentChartMediator
- (TSKUIDStruct)formulaOwnerUID;
- (id)formulaOwner;
- (id)nsFormulaOwnerUID;
- (id)objectToArchiveInDependencyTracker;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)registerWithCalcEngineForDocumentLoad:(id)load ownerKind:(unsigned __int16)kind;
- (void)saveToArchiver:(id)archiver;
- (void)unregisterFromCalcEngine:(id)engine;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
- (void)willModify;
@end

@implementation TNPersistentChartMediator

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (objc_msgSend_fileFormatVersion(unarchiverCopy, v5, v6) == 0x300020000000ALL)
  {
    objc_msgSend_willModifyForUpgrade(self, v7, v8);
  }

  v9 = unarchiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v11 = objc_msgSend_messageWithDescriptor_(v9, v10, off_2812DAFE8[36]);

  v12 = [TNChartMediator alloc];
  v14 = objc_msgSend_initFromArchive_unarchiver_(v12, v13, v11, v9);
  v15 = *MEMORY[0x277D80088];
  v16 = *(&self->super.super.super.isa + v15);
  *(&self->super.super.super.isa + v15) = v14;

  if (*(v11 + 32))
  {
    v17 = *(v11 + 32);
  }

  else
  {
    v17 = MEMORY[0x277D80098];
  }

  v18.receiver = self;
  v18.super_class = TNPersistentChartMediator;
  [(TSCHPersistentChartMediator *)&v18 loadFromArchive:v17];
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_275F07010, off_2812DAFE8[36]);

  *(v6 + 16) |= 2u;
  v7 = *(v6 + 32);
  if (!v7)
  {
    v8 = *(v6 + 8);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = MEMORY[0x277C91000](v8);
    *(v6 + 32) = v7;
  }

  v14.receiver = self;
  v14.super_class = TNPersistentChartMediator;
  [(TSCHPersistentChartMediator *)&v14 saveToArchive:v7];
  objc_opt_class();
  v11 = objc_msgSend_mediator(self, v9, v10);
  v12 = TSUDynamicCast();

  objc_msgSend_saveToArchive_archiver_(v12, v13, v6, archiverCopy);
}

- (void)willModify
{
  v2.receiver = self;
  v2.super_class = TNPersistentChartMediator;
  [(TNPersistentChartMediator *)&v2 willModify];
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  rootCopy = root;
  contextCopy = context;
  v9 = objc_msgSend_context(rootCopy, v7, v8);
  objc_msgSend_wasAddedToDocumentWithContext_(self, v10, v9);

  objc_opt_class();
  v13 = objc_msgSend_mediator(self, v11, v12);
  v14 = TSUDynamicCast();

  v17 = objc_msgSend_calculationEngine(rootCopy, v15, v16);
  v19 = v17;
  if (v14 && v17)
  {
    objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v14, v18, rootCopy, contextCopy);
    v20 = MEMORY[0x277D80D40];
    v23 = objc_msgSend_insertedTableInfos(contextCopy, v21, v22);
    objc_msgSend_performRewritesForInsertedTableInfos_(v20, v24, v23);
  }
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  rootCopy = root;
  objc_opt_class();
  v6 = objc_msgSend_mediator(self, v4, v5);
  v7 = TSUDynamicCast();

  v10 = objc_msgSend_calculationEngine(rootCopy, v8, v9);
  v13 = v10;
  if (v7)
  {
    v14 = v10 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    objc_msgSend_willBeRemovedFromDocumentRoot_(v7, v11, rootCopy);
  }

  v15 = objc_msgSend_context(rootCopy, v11, v12);
  objc_msgSend_willBeRemovedFromDocumentWithContext_(self, v16, v15);
}

- (void)registerWithCalcEngineForDocumentLoad:(id)load ownerKind:(unsigned __int16)kind
{
  kindCopy = kind;
  loadCopy = load;
  v8 = objc_msgSend_mediator(self, v6, v7);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_registerWithCalcEngineForDocumentLoad_ownerKind_(v8, v9, loadCopy, kindCopy);
  }
}

- (void)unregisterFromCalcEngine:(id)engine
{
  engineCopy = engine;
  v6 = objc_msgSend_mediator(self, v4, v5);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_unregisterFromCalcEngine_(v6, v7, engineCopy);
  }
}

- (id)formulaOwner
{
  v3 = objc_msgSend_mediator(self, a2, v2);
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_msgSend_formulaOwner(v3, v4, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (TSKUIDStruct)formulaOwnerUID
{
  v3 = objc_msgSend_mediator(self, a2, v2);
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_msgSend_formulaOwnerUID(v3, v4, v5);
    v8 = v7;
  }

  else
  {
    v8 = 0;
    v6 = 0;
  }

  v9 = v6;
  v10 = v8;
  result._upper = v10;
  result._lower = v9;
  return result;
}

- (id)nsFormulaOwnerUID
{
  v6._lower = objc_msgSend_formulaOwnerUID(self, a2, v2);
  v6._upper = v3;
  v4 = TSKUIDStruct::NSUUIDValue(&v6);

  return v4;
}

- (id)objectToArchiveInDependencyTracker
{
  v3 = objc_msgSend_mediator(self, a2, v2);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TNPersistentChartMediator objectToArchiveInDependencyTracker]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNChartMediator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 446, 0, "Unable to archive chart mediator in dependency tracker.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = objc_msgSend_objectToArchiveInDependencyTracker(v3, v4, v5);

  return v13;
}

@end