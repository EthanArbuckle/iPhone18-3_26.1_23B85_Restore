@interface TSPDecoderReadCoordinator
- (BOOL)endReading;
- (BOOL)hasDocumentVersionUUID;
- (BOOL)isCrossAppPaste;
- (BOOL)isCrossDocumentPaste;
- (BOOL)isExternalLazyReference:(id)reference;
- (BOOL)readLazyReference:(id)reference object:(id *)object error:(id *)error;
- (TSPDecoderReadCoordinator)init;
- (TSPDecoderReadCoordinator)initWithDecoder:(id)decoder context:(id)context finalizeHandlerQueue:(id)queue delegate:(id)delegate;
- (id)context;
- (id)externalObjectForIdentifier:(int64_t)identifier componentIdentifier:(int64_t)componentIdentifier isReadFinished:(BOOL)finished;
- (id)objectForIdentifier:(int64_t)identifier;
- (id)reader:(id)reader wantsDataForIdentifier:(int64_t)identifier;
- (id)unarchivedObjectForIdentifier:(int64_t)identifier isReadFinished:(BOOL)finished;
- (int64_t)reader:(id)reader wantsObjectIdentifierForUUID:(id)d;
- (unint64_t)fileFormatVersion;
- (unint64_t)readVersion;
- (unsigned)sourceType;
- (void)didUpdateLazyReferenceDelegate:(id)delegate;
- (void)readComponent:(id)component completionQueue:(id)queue completion:(id)completion;
- (void)readRootObjectWithCompletionQueue:(id)queue completion:(id)completion;
- (void)reader:(id)reader didReadLazyReference:(id)reference;
- (void)reader:(id)reader didUnarchiveObject:(id)object;
@end

@implementation TSPDecoderReadCoordinator

- (TSPDecoderReadCoordinator)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDecoderReadCoordinator init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDecoderReadCoordinator.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 39, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPDecoderReadCoordinator init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPDecoderReadCoordinator)initWithDecoder:(id)decoder context:(id)context finalizeHandlerQueue:(id)queue delegate:(id)delegate
{
  decoderCopy = decoder;
  contextCopy = context;
  queueCopy = queue;
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = TSPDecoderReadCoordinator;
  v15 = [(TSPReadCoordinatorBase *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_decoder, decoder);
    objc_storeWeak(&v16->_context, contextCopy);
    objc_storeStrong(&v16->_finalizeHandlerQueue, queue);
    objc_storeWeak(&v16->_delegate, delegateCopy);
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("TSPDecoderReadCoordinator.Data", v17);
    dataQueue = v16->_dataQueue;
    v16->_dataQueue = v18;
  }

  return v16;
}

- (BOOL)isExternalLazyReference:(id)reference
{
  referenceCopy = reference;
  rootObjectComponent = self->_rootObjectComponent;
  v8 = objc_msgSend_tsp_identifier(referenceCopy, v6, v7);
  LOBYTE(rootObjectComponent) = objc_msgSend_externalReferenceInfoForObjectIdentifier_(rootObjectComponent, v9, v8) != 0;

  return rootObjectComponent;
}

- (BOOL)endReading
{
  if (objc_msgSend_success(self, a2, v2))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_msgSend_canResolveExternalReferences(WeakRetained, v7, v8))
    {
      v11 = objc_msgSend_resolveExternalReferences(self, v9, v10);

      if (!v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    objc_msgSend_setLazyReferencesDelegateToObjectContext(self, v4, v5);
  }

LABEL_7:

  return objc_msgSend_success(self, v4, v5);
}

- (void)didUpdateLazyReferenceDelegate:(id)delegate
{
  delegateCopy = delegate;
  if ((objc_msgSend_isExternalLazyReference_(self, v4, delegateCopy) & 1) == 0)
  {
    objc_msgSend_resetIdentifierFromCopy_(delegateCopy, v5, 1);
  }
}

- (void)readRootObjectWithCompletionQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_276A47648;
  aBlock[3] = &unk_27A6E4B68;
  v8 = queueCopy;
  v38 = v8;
  v9 = completionCopy;
  v39 = v9;
  v10 = _Block_copy(aBlock);
  v11 = dispatch_get_global_queue(0, 0);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_276A47768;
  v33[3] = &unk_27A6E4BB8;
  v33[4] = self;
  v13 = v10;
  v36 = v13;
  v14 = WeakRetained;
  v34 = v14;
  v15 = v11;
  v35 = v15;
  v16 = _Block_copy(v33);
  v21 = objc_msgSend_cachedMetadataObject(v14, v17, v18);
  if (v21)
  {
    (*(v16 + 2))(v16, 1, v21, 0, 0);
  }

  else
  {
    v23 = objc_msgSend_metadataComponent(v14, v19, v20);
    if (!v23)
    {
      v30 = MEMORY[0x277D81150];
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSPDecoderReadCoordinator readRootObjectWithCompletionQueue:completion:]");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDecoderReadCoordinator.mm");
      v26 = v30;
      v31 = v25;
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v27, v32, v25, 126, 0, "invalid nil value for '%{public}s'", "metadataComponent");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
    }

    objc_msgSend_readComponent_completionQueue_completion_(self, v22, v23, v15, v16);
  }
}

- (void)readComponent:(id)component completionQueue:(id)queue completion:(id)completion
{
  componentCopy = component;
  queueCopy = queue;
  completionCopy = completion;
  if (!componentCopy)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSPDecoderReadCoordinator readComponent:completionQueue:completion:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDecoderReadCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 139, 0, "Component should not be nil.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
LABEL_8:
    v28 = objc_msgSend_tsp_readCorruptedDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v15, 0);
    objc_msgSend_setError_(self, v29, v28);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276A47F18;
    block[3] = &unk_27A6E2C78;
    v34 = v28;
    v35 = completionCopy;
    v23 = v28;
    dispatch_async(queueCopy, block);

    Channel = v35;
    goto LABEL_9;
  }

  decoder = self->_decoder;
  if (self->_rootObjectComponent == componentCopy)
  {
    ChannelForRootObjectComponent = objc_msgSend_newReadChannelForRootObjectComponent(decoder, v10, v11);
  }

  else
  {
    ChannelForRootObjectComponent = objc_msgSend_newReadChannelForMetadata(decoder, v10, v11);
  }

  v23 = ChannelForRootObjectComponent;
  if (!ChannelForRootObjectComponent)
  {
    goto LABEL_8;
  }

  v24 = [TSPComponentReader alloc];
  Channel = objc_msgSend_initWithComponent_finalizeHandlerQueue_delegate_readChannel_(v24, v25, componentCopy, self->_finalizeHandlerQueue, self, v23);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_276A47F38;
  v30[3] = &unk_27A6E4BE0;
  v30[4] = self;
  v31 = componentCopy;
  v32 = completionCopy;
  objc_msgSend_readWithIOCompletionQueue_ioCompletion_completionQueue_completion_(Channel, v27, 0, 0, queueCopy, v30);

LABEL_9:
}

- (unint64_t)fileFormatVersion
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_msgSend_fileFormatVersion(WeakRetained, v3, v4);

  return v5;
}

- (unint64_t)readVersion
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  Version = objc_msgSend_readVersion(WeakRetained, v3, v4);

  return Version;
}

- (id)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (id)unarchivedObjectForIdentifier:(int64_t)identifier isReadFinished:(BOOL)finished
{
  if (finished)
  {
    v5 = objc_msgSend_tsp_objectForIdentifier_(self->_objects, a2, identifier);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)externalObjectForIdentifier:(int64_t)identifier componentIdentifier:(int64_t)componentIdentifier isReadFinished:(BOOL)finished
{
  finishedCopy = finished;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!objc_msgSend_canResolveExternalReferences(WeakRetained, v10, v11))
  {
    v18 = 0;
    goto LABEL_11;
  }

  if (finishedCopy)
  {
    if (objc_msgSend_shouldResolveExternalReferencesUsingObjectUUID(WeakRetained, v12, v13))
    {
      v15 = objc_msgSend_objectUUIDForExternalReferenceToIdentifier_(WeakRetained, v14, identifier);
      if (v15)
      {
        v16 = objc_loadWeakRetained(&self->_context);
        v18 = objc_msgSend_objectWithUUID_onlyIfLoaded_validateNewObjects_identifier_(v16, v17, v15, 0, 0, 0);
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_10;
    }

    v15 = objc_loadWeakRetained(&self->_context);
    v20 = objc_msgSend_readObjectIfNeededForIdentifier_isWeakReference_componentIdentifier_(v15, v21, identifier, 1, componentIdentifier);
  }

  else
  {
    v15 = objc_loadWeakRetained(&self->_context);
    v20 = objc_msgSend_objectForIdentifier_(v15, v19, identifier);
  }

  v18 = v20;
LABEL_10:

LABEL_11:

  return v18;
}

- (int64_t)reader:(id)reader wantsObjectIdentifierForUUID:(id)d
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_msgSend_objectIdentifierForUUID_(WeakRetained, v7, dCopy);

  return v8;
}

- (id)reader:(id)reader wantsDataForIdentifier:(int64_t)identifier
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v7 = objc_loadWeakRetained(&self->_delegate);
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_276A48618;
  v43 = sub_276A48628;
  v44 = objc_msgSend_cachedDataForIdentifier_(v7, v8, identifier);
  if (v40[5])
  {
    isDecodingTransientObject = objc_msgSend_isDecodingTransientObject(v7, v9, v10);
    v13 = v40[5];
    if (isDecodingTransientObject)
    {
      v14 = v13;
    }

    else
    {
      v14 = objc_msgSend_copyWithContext_(v13, v11, WeakRetained);
    }

    v29 = v14;
  }

  else
  {
    v15 = objc_msgSend_dataInfoForIdentifier_(v7, v9, identifier);
    v20 = objc_msgSend_digest(v15, v16, v17);
    if (v20)
    {
      dataQueue = self->_dataQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_276A48630;
      block[3] = &unk_27A6E4C08;
      v32 = WeakRetained;
      v37 = &v39;
      v33 = v20;
      v34 = v15;
      selfCopy = self;
      identifierCopy = identifier;
      v36 = v7;
      dispatch_sync(dataQueue, block);
    }

    v22 = v40[5];
    v23 = objc_msgSend_dataMetadata(v15, v18, v19);
    objc_msgSend_setToCopyOfMetadataIfNil_(v22, v24, v23);

    v27 = v40[5];
    if (v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = objc_msgSend_null(TSPData, v25, v26);
    }

    v29 = v28;
  }

  _Block_object_dispose(&v39, 8);

  return v29;
}

- (void)reader:(id)reader didUnarchiveObject:(id)object
{
  objectCopy = object;
  objc_msgSend_setTsp_identifier_(objectCopy, v4, 0);
  objc_msgSend_setTsp_component_(objectCopy, v5, 0);
}

- (void)reader:(id)reader didReadLazyReference:(id)reference
{
  readerCopy = reader;
  referenceCopy = reference;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_msgSend_canResolveExternalReferences(WeakRetained, v9, v10) && objc_msgSend_shouldResolveExternalReferencesUsingObjectUUID(WeakRetained, v11, v12) && objc_msgSend_isExternalLazyReference_(self, v13, referenceCopy))
  {
    v25 = 0;
    v16 = objc_msgSend_tsp_identifier(referenceCopy, v14, v15);
    v19 = objc_msgSend_objectUUIDForExternalReferenceToIdentifier_(WeakRetained, v17, v16);
    if (v19)
    {
      v20 = objc_loadWeakRetained(&self->_context);
      v22 = objc_msgSend_objectWithUUID_onlyIfLoaded_validateNewObjects_identifier_(v20, v21, v19, 1, 0, &v25);

      objc_msgSend_resetToIdentifier_(referenceCopy, v23, v25);
    }

    else
    {
      objc_msgSend_resetToIdentifier_(referenceCopy, v18, 0);
    }
  }

  v24.receiver = self;
  v24.super_class = TSPDecoderReadCoordinator;
  [(TSPReadCoordinatorBase *)&v24 reader:readerCopy didReadLazyReference:referenceCopy];
}

- (BOOL)hasDocumentVersionUUID
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  hasDocumentVersionUUID = objc_msgSend_hasDocumentVersionUUID(WeakRetained, v3, v4);

  return hasDocumentVersionUUID;
}

- (unsigned)sourceType
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_msgSend_sourceType(WeakRetained, v3, v4);

  return v5;
}

- (BOOL)isCrossDocumentPaste
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  isCrossDocumentPaste = objc_msgSend_isCrossDocumentPaste(WeakRetained, v3, v4);

  return isCrossDocumentPaste;
}

- (BOOL)isCrossAppPaste
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  isCrossAppPaste = objc_msgSend_isCrossAppPaste(WeakRetained, v3, v4);

  return isCrossAppPaste;
}

- (id)objectForIdentifier:(int64_t)identifier
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDecoderReadCoordinator objectForIdentifier:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDecoderReadCoordinator.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 385, 0, "Lazy reference resolution for objects from a decoder cannot happen while the root object is getting unarchived.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  return 0;
}

- (BOOL)readLazyReference:(id)reference object:(id *)object error:(id *)error
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDecoderReadCoordinator readLazyReference:object:error:]", object, error);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDecoderReadCoordinator.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 390, 0, "Lazy reference resolution for objects from a decoder cannot happen while the root object is getting unarchived.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  return 0;
}

@end