@interface TSPAbstractMutableLargeArraySegment
- (NSArray)allObjects;
- (NSMutableArray)mutableArrayWrapper;
- (TSPAbstractMutableLargeArraySegment)initWithArray:(id)array context:(id)context;
- (TSPAbstractMutableLargeArraySegment)initWithArray:(id)array delegate:(id)delegate shouldDelayArchiving:(BOOL)archiving context:(id)context;
- (TSPAbstractMutableLargeArraySegment)initWithContext:(id)context;
- (TSPAbstractMutableLargeArraySegment)initWithDelegate:(id)delegate shouldDelayArchiving:(BOOL)archiving context:(id)context;
- (TSPMutableLargeArraySegmentDelegate)delegate;
- (id)bisectAtIndex:(unint64_t)index;
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)estimatedByteSizeOfElement:(id)element;
- (unsigned)delayedArchivingPriority;
- (void)addObject:(id)object;
- (void)addObject:(id)object willModify:(BOOL)modify;
- (void)addObjectsFromArray:(id)array;
- (void)commonInit;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)loadFromLargeArraySegmentMessage:(const void *)message unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)loadStoreOutsideObjectArchiveFromUnarchiver:(id)unarchiver;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)removeObjectsAtIndexes:(id)indexes;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
- (void)saveToArchiver:(id)archiver;
- (void)saveToLargeArraySegmentMessage:(void *)message archiver:(id)archiver;
- (void)setPackageLocator:(id)locator;
@end

@implementation TSPAbstractMutableLargeArraySegment

- (TSPAbstractMutableLargeArraySegment)initWithContext:(id)context
{
  v4.receiver = self;
  v4.super_class = TSPAbstractMutableLargeArraySegment;
  return [(TSPObject *)&v4 initWithContext:context];
}

- (TSPAbstractMutableLargeArraySegment)initWithDelegate:(id)delegate shouldDelayArchiving:(BOOL)archiving context:(id)context
{
  delegateCopy = delegate;
  v10 = objc_msgSend_initWithContext_(self, v9, context);
  v11 = v10;
  if (v10)
  {
    objc_storeWeak((v10 + 112), delegateCopy);
    v11->_shouldDelayArchiving = archiving;
  }

  return v11;
}

- (TSPAbstractMutableLargeArraySegment)initWithArray:(id)array context:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v8 = objc_msgSend_initWithContext_(self, v7, context);
  if (v8)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = arrayCopy;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v17, v21, 16);
    if (v12)
    {
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v9);
          }

          objc_msgSend_addObject_willModify_(v8, v11, *(*(&v17 + 1) + 8 * v14++), 0, v17);
        }

        while (v12 != v14);
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v17, v21, 16);
      }

      while (v12);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

- (TSPAbstractMutableLargeArraySegment)initWithArray:(id)array delegate:(id)delegate shouldDelayArchiving:(BOOL)archiving context:(id)context
{
  delegateCopy = delegate;
  v12 = objc_msgSend_initWithArray_context_(self, v11, array, context);
  v13 = v12;
  if (v12)
  {
    objc_storeWeak((v12 + 112), delegateCopy);
    v13->_shouldDelayArchiving = archiving;
  }

  return v13;
}

- (void)commonInit
{
  v5.receiver = self;
  v5.super_class = TSPAbstractMutableLargeArraySegment;
  [(TSPObject *)&v5 commonInit];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  backingStore = self->_backingStore;
  self->_backingStore = v3;
}

- (id)objectAtIndex:(unint64_t)index
{
  v3 = objc_msgSend_objectAtIndex_(self->_backingStore, a2, index);
  v6 = objc_msgSend_null(MEMORY[0x277CBEB68], v4, v5);
  if (v3 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  return v7;
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  objectCopy = object;
  objc_msgSend_willModify(self, v6, v7);
  ++self->_mutations;
  backingStore = self->_backingStore;
  v11 = objectCopy;
  if (!objectCopy)
  {
    v11 = objc_msgSend_null(MEMORY[0x277CBEB68], v8, v9);
  }

  objc_msgSend_insertObject_atIndex_(backingStore, v8, v11, index);
  v12 = objectCopy;
  if (!objectCopy)
  {

    v12 = 0;
  }

  self->_estimatedByteSize += objc_msgSend_estimatedByteSizeOfElement_(self, v12, v12);
  self->_estimatedCost += objc_msgSend_estimatedCostOfElement_(self, v13, objectCopy);
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  objc_msgSend_willModify(self, a2, index);
  ++self->_mutations;
  v6 = objc_msgSend_objectAtIndexedSubscript_(self->_backingStore, v5, index);
  v8 = objc_msgSend_estimatedByteSizeOfElement_(self, v7, v6);

  estimatedByteSize = self->_estimatedByteSize;
  v11 = estimatedByteSize >= v8;
  v12 = estimatedByteSize - v8;
  if (!v11)
  {
    v12 = 1;
  }

  self->_estimatedByteSize = v12;
  v13 = objc_msgSend_objectAtIndexedSubscript_(self->_backingStore, v9, index);
  v15 = objc_msgSend_estimatedCostOfElement_(self, v14, v13);

  estimatedCost = self->_estimatedCost;
  v11 = estimatedCost >= v15;
  v18 = estimatedCost - v15;
  if (!v11)
  {
    v18 = 0;
  }

  self->_estimatedCost = v18;
  backingStore = self->_backingStore;

  objc_msgSend_removeObjectAtIndex_(backingStore, v16, index);
}

- (void)removeObjectsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  if (objc_msgSend_count(indexesCopy, v5, v6))
  {
    Index = objc_msgSend_firstIndex(indexesCopy, v7, v8);
    if (Index < objc_msgSend_count(self->_backingStore, v10, v11))
    {
      objc_msgSend_willModify(self, v12, v13);
      ++self->_mutations;
      v65 = 0;
      v66 = &v65;
      v67 = 0x2020000000;
      v68 = 0;
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = sub_2769DC320;
      v64[3] = &unk_27A6E3C58;
      v64[4] = self;
      v64[5] = &v65;
      objc_msgSend_enumerateIndexesUsingBlock_(indexesCopy, v14, v64);
      v17 = v66[3];
      estimatedByteSize = self->_estimatedByteSize;
      v19 = estimatedByteSize >= v17;
      v20 = estimatedByteSize - v17;
      if (!v19)
      {
        v20 = 1;
      }

      self->_estimatedByteSize = v20;
      v21 = objc_msgSend_count(indexesCopy, v15, v16);
      v24 = objc_msgSend_count(indexesCopy, v22, v23);
      v27 = objc_msgSend_count(self->_backingStore, v25, v26);
      if (v24 * v21 <= (v27 - objc_msgSend_firstIndex(indexesCopy, v28, v29)))
      {
        objc_msgSend_removeObjectsAtIndexes_(self->_backingStore, v30, indexesCopy);
      }

      else
      {
        v62[0] = 0;
        v62[1] = v62;
        v62[2] = 0x2020000000;
        v63 = 1;
        v56 = 0;
        v57 = &v56;
        v58 = 0x4012000000;
        v59 = sub_2769DC3B0;
        v60 = nullsub_4;
        v61 = &unk_276C58F2F;
        v52 = 0;
        v53 = &v52;
        v54 = 0x2020000000;
        v55 = 0x7FFFFFFFFFFFFFFFLL;
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = sub_2769DC3C0;
        v51[3] = &unk_27A6E3C80;
        v51[6] = &v52;
        v51[7] = &v56;
        v51[4] = self;
        v51[5] = v62;
        objc_msgSend_enumerateRangesUsingBlock_(indexesCopy, v30, v51);
        if (v53[3] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v33 = MEMORY[0x277D81150];
          v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSPAbstractMutableLargeArraySegment removeObjectsAtIndexes:]");
          v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArraySegment.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v37, v34, v36, 214, 0, "Unexpected nextPos");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39);
        }

        for (i = v57[7] + v57[6]; ; ++i)
        {
          v41 = objc_msgSend_count(self->_backingStore, v31, v32);
          backingStore = self->_backingStore;
          if (i >= v41)
          {
            break;
          }

          v45 = objc_msgSend_objectAtIndexedSubscript_(self->_backingStore, v42, i);
          v46 = self->_backingStore;
          ++v53[3];
          objc_msgSend_setObject_atIndexedSubscript_(v46, v47, v45);
        }

        v48 = v53[3];
        v49 = objc_msgSend_count(backingStore, v42, v43);
        objc_msgSend_removeObjectsInRange_(backingStore, v50, v48, v49 - v53[3]);
        _Block_object_dispose(&v52, 8);
        _Block_object_dispose(&v56, 8);
        _Block_object_dispose(v62, 8);
      }

      _Block_object_dispose(&v65, 8);
    }
  }
}

- (void)addObject:(id)object willModify:(BOOL)modify
{
  modifyCopy = modify;
  objectCopy = object;
  if (modifyCopy)
  {
    objc_msgSend_willModify(self, v6, v7);
  }

  ++self->_mutations;
  backingStore = self->_backingStore;
  v9 = objectCopy;
  if (!objectCopy)
  {
    v9 = objc_msgSend_null(MEMORY[0x277CBEB68], v6, v7);
  }

  objc_msgSend_addObject_(backingStore, v6, v9);
  v10 = objectCopy;
  if (!objectCopy)
  {

    v10 = 0;
  }

  self->_estimatedByteSize += objc_msgSend_estimatedByteSizeOfElement_(self, v10, v10);
  self->_estimatedCost += objc_msgSend_estimatedCostOfElement_(self, v11, objectCopy);
}

- (void)addObject:(id)object
{
  objectCopy = object;
  v8 = objectCopy;
  if (!objectCopy)
  {
    objectCopy = objc_msgSend_null(MEMORY[0x277CBEB68], v4, v5);
  }

  objc_msgSend_addObject_willModify_(self, v4, objectCopy, 1);
  v7 = v8;
  if (!v8)
  {

    v7 = 0;
  }
}

- (void)addObjectsFromArray:(id)array
{
  v22 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  objc_msgSend_willModify(self, v5, v6);
  ++self->_mutations;
  objc_msgSend_addObjectsFromArray_(self->_backingStore, v7, arrayCopy);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = arrayCopy;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v17, v21, 16);
  if (v11)
  {
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        self->_estimatedByteSize += objc_msgSend_estimatedByteSizeOfElement_(self, v10, v14, v17);
        self->_estimatedCost += objc_msgSend_estimatedCostOfElement_(self, v15, v14);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v17, v21, 16);
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeLastObject
{
  if (objc_msgSend_count(self, a2, v2))
  {
    objc_msgSend_willModify(self, v4, v5);
    ++self->_mutations;
    v8 = objc_msgSend_lastObject(self->_backingStore, v6, v7);
    v10 = objc_msgSend_estimatedByteSizeOfElement_(self, v9, v8);

    estimatedByteSize = self->_estimatedByteSize;
    v14 = estimatedByteSize >= v10;
    v15 = estimatedByteSize - v10;
    if (!v14)
    {
      v15 = 1;
    }

    self->_estimatedByteSize = v15;
    v16 = objc_msgSend_lastObject(self->_backingStore, v11, v12);
    v18 = objc_msgSend_estimatedCostOfElement_(self, v17, v16);

    estimatedCost = self->_estimatedCost;
    v14 = estimatedCost >= v18;
    v22 = estimatedCost - v18;
    if (!v14)
    {
      v22 = 0;
    }

    self->_estimatedCost = v22;
    backingStore = self->_backingStore;

    objc_msgSend_removeLastObject(backingStore, v19, v20);
  }
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  objectCopy = object;
  objc_msgSend_willModify(self, v6, v7);
  ++self->_mutations;
  v9 = objc_msgSend_objectAtIndexedSubscript_(self->_backingStore, v8, index);
  v11 = objc_msgSend_estimatedByteSizeOfElement_(self, v10, v9);

  estimatedByteSize = self->_estimatedByteSize;
  v15 = estimatedByteSize >= v11;
  v16 = estimatedByteSize - v11;
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  self->_estimatedByteSize = v17;
  v18 = objectCopy;
  if (!objectCopy)
  {
    v18 = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v13);
  }

  self->_estimatedByteSize = objc_msgSend_estimatedByteSizeOfElement_(self, v12, v18) + v17;
  if (!objectCopy)
  {
  }

  v20 = objc_msgSend_objectAtIndexedSubscript_(self->_backingStore, v19, index);
  v22 = objc_msgSend_estimatedCostOfElement_(self, v21, v20);

  estimatedCost = self->_estimatedCost;
  v15 = estimatedCost >= v22;
  v26 = estimatedCost - v22;
  if (v15)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  self->_estimatedCost = v27;
  v28 = objectCopy;
  if (!objectCopy)
  {
    v28 = objc_msgSend_null(MEMORY[0x277CBEB68], v23, v24);
  }

  self->_estimatedCost = objc_msgSend_estimatedCostOfElement_(self, v23, v28) + v27;
  v30 = objectCopy;
  if (objectCopy)
  {
    backingStore = self->_backingStore;
  }

  else
  {

    backingStore = self->_backingStore;
    v30 = objc_msgSend_null(MEMORY[0x277CBEB68], v32, v33);
  }

  v34 = v30;
  objc_msgSend_replaceObjectAtIndex_withObject_(backingStore, v29, index, v30);
  v35 = objectCopy;
  if (!objectCopy)
  {

    v35 = 0;
  }
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  var0 = state->var0;
  if (!state->var0)
  {
    state->var2 = &self->_mutations;
  }

  v10 = objc_msgSend_count(self, a2, state);
  if (v10 <= var0)
  {
    return 0;
  }

  if (v10 - var0 < count)
  {
    count = v10 - var0;
  }

  if (count)
  {
    v12 = var0;
    objectsCopy = objects;
    countCopy = count;
    do
    {
      v15 = objc_msgSend_objectAtIndex_(self, v11, v12);
      *objectsCopy++ = v15;

      ++v12;
      --countCopy;
    }

    while (countCopy);
  }

  state->var0 = count + var0;
  state->var1 = objects;
  return count;
}

- (NSArray)allObjects
{
  v3 = [TSPLargeArraySegmentWrapper alloc];
  v5 = objc_msgSend_initWithLargeArraySegment_(v3, v4, self);

  return v5;
}

- (NSMutableArray)mutableArrayWrapper
{
  v3 = [TSPLargeArraySegmentWrapper alloc];
  v5 = objc_msgSend_initWithLargeArraySegment_(v3, v4, self);

  return v5;
}

- (id)bisectAtIndex:(unint64_t)index
{
  indexCopy = index;
  v45[2] = *MEMORY[0x277D85DE8];
  objc_msgSend_willModify(self, a2, index);
  ++self->_mutations;
  if (objc_msgSend_count(self, v5, v6) < indexCopy)
  {
    indexCopy = objc_msgSend_count(self, v7, v8);
  }

  v9 = objc_msgSend_allObjects(self, v7, v8);
  v12 = objc_msgSend_count(self, v10, v11);
  v14 = objc_msgSend_subarrayWithRange_(v9, v13, indexCopy, v12 - indexCopy);

  v15 = objc_alloc(objc_opt_class());
  v18 = objc_msgSend_delegate(self, v16, v17);
  shouldDelayArchiving = objc_msgSend_shouldDelayArchiving(self, v19, v20);
  v24 = objc_msgSend_context(self, v22, v23);
  shouldDelayArchiving_context = objc_msgSend_initWithArray_delegate_shouldDelayArchiving_context_(v15, v25, v14, v18, shouldDelayArchiving, v24);

  v29 = objc_msgSend_storeOutsideObjectArchive(self, v27, v28);
  objc_msgSend_setStoreOutsideObjectArchive_(shouldDelayArchiving_context, v30, v29);
  v33 = objc_msgSend_delayedArchivingPriority(self, v31, v32);
  objc_msgSend_setDelayedArchivingPriority_(shouldDelayArchiving_context, v34, v33);
  while (objc_msgSend_count(self, v35, v36) > indexCopy)
  {
    objc_msgSend_removeLastObject(self, v37, v38);
  }

  v39 = objc_msgSend_delegate(self, v37, v38);
  v45[0] = self;
  v45[1] = shouldDelayArchiving_context;
  v41 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v40, v45, 2);
  objc_msgSend_largeArraySegmentDidBisectAtIndex_segments_(v39, v42, indexCopy, v41);

  v43 = *MEMORY[0x277D85DE8];

  return shouldDelayArchiving_context;
}

- (unint64_t)estimatedByteSizeOfElement:(id)element
{
  elementCopy = element;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPAbstractMutableLargeArraySegment estimatedByteSizeOfElement:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArraySegment.mm");
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v6, v8, 359, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v19 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v17, "[TSPAbstractMutableLargeArraySegment estimatedByteSizeOfElement:]");
  v21 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v20, *MEMORY[0x277CBE658], v19, 0);
  v22 = v21;

  objc_exception_throw(v21);
}

- (unsigned)delayedArchivingPriority
{
  delayedArchivingPriority = self->_delayedArchivingPriority;
  if (!delayedArchivingPriority)
  {
    v4.receiver = self;
    v4.super_class = TSPAbstractMutableLargeArraySegment;
    return [(TSPObject *)&v4 delayedArchivingPriority];
  }

  return delayedArchivingPriority;
}

- (void)setPackageLocator:(id)locator
{
  locatorCopy = locator;
  packageLocator = self->_packageLocator;
  v6 = locatorCopy;
  v14 = v6;
  if (packageLocator == v6)
  {

LABEL_9:
    goto LABEL_10;
  }

  if (!v6 || !packageLocator)
  {

    goto LABEL_8;
  }

  isEqualToString = objc_msgSend_isEqualToString_(packageLocator, v7, v6);

  if ((isEqualToString & 1) == 0)
  {
LABEL_8:
    objc_msgSend_willModify(self, v9, v10);
    v13 = objc_msgSend_copy(v14, v11, v12);
    packageLocator = self->_packageLocator;
    self->_packageLocator = v13;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812FC248[64]);

  objc_msgSend_loadFromLargeArraySegmentMessage_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2769DD7F0, off_2812FC248[64]);

  objc_msgSend_saveToLargeArraySegmentMessage_archiver_(self, v6, v5, archiverCopy);
}

- (void)loadStoreOutsideObjectArchiveFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v6 = objc_msgSend_delegate(unarchiverCopy, v4, v5);
  if (objc_opt_respondsToSelector())
  {
    v9 = objc_msgSend_component(v6, v7, v8);
    self->_storeOutsideObjectArchive = objc_msgSend_isStoredOutsideObjectArchive(v9, v10, v11);
  }
}

- (void)saveToLargeArraySegmentMessage:(void *)message archiver:(id)archiver
{
  if (objc_msgSend_shouldDelayArchiving(self, a2, message, archiver))
  {
    shouldDelayArchiving = objc_msgSend_shouldDelayArchiving(self, v6, v7);
    *(message + 4) |= 2u;
    *(message + 32) = shouldDelayArchiving;
  }

  if (objc_msgSend_shouldDelayArchiving(self, v6, v7) && objc_msgSend_delayedArchivingPriority(self, v9, v10) != 500)
  {
    v11 = objc_msgSend_delayedArchivingPriority(self, v9, v10);
    *(message + 4) |= 4u;
    *(message + 9) = v11;
  }

  v12 = objc_msgSend_packageLocator(self, v9, v10);

  if (v12)
  {
    v18 = objc_msgSend_packageLocator(self, v13, v14);
    v17 = objc_msgSend_tsp_protobufString(v18, v15, v16);
    sub_2769DD4F8(message, v17);
  }
}

- (void)loadFromLargeArraySegmentMessage:(const void *)message unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  objc_msgSend_loadStoreOutsideObjectArchiveFromUnarchiver_(self, v6, unarchiverCopy);
  v8 = *(message + 4);
  if ((v8 & 2) != 0)
  {
    objc_msgSend_setShouldDelayArchiving_(self, v7, *(message + 32));
    v8 = *(message + 4);
  }

  if ((v8 & 4) != 0)
  {
    objc_msgSend_setDelayedArchivingPriority_(self, v7, *(message + 9));
    v8 = *(message + 4);
  }

  if (v8)
  {
    v9 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v7, *(message + 3) & 0xFFFFFFFFFFFFFFFELL);
    objc_msgSend_setPackageLocator_(self, v10, v9);
  }
}

- (TSPMutableLargeArraySegmentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end