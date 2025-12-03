@interface TSPLazyReferenceArray
- (TSPLazyReferenceArray)init;
- (TSPLazyReferenceArray)initWithArray:(id)array;
- (TSPLazyReferenceArray)initWithCapacity:(unint64_t)capacity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectsAtIndexes:(id)indexes;
- (id)subarrayWithRange:(_NSRange)range;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)addObject:(id)object;
- (void)addObjectsFromArray:(id)array;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromArray:(id)array;
- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromArray:(id)array range:(_NSRange)a5;
@end

@implementation TSPLazyReferenceArray

- (TSPLazyReferenceArray)init
{
  v6.receiver = self;
  v6.super_class = TSPLazyReferenceArray;
  v2 = [(TSPLazyReferenceArray *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    references = v2->_references;
    v2->_references = v3;
  }

  return v2;
}

- (TSPLazyReferenceArray)initWithCapacity:(unint64_t)capacity
{
  v10.receiver = self;
  v10.super_class = TSPLazyReferenceArray;
  v4 = [(TSPLazyReferenceArray *)&v10 init];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CBEB18]);
    v7 = objc_msgSend_initWithCapacity_(v5, v6, capacity);
    references = v4->_references;
    v4->_references = v7;
  }

  return v4;
}

- (TSPLazyReferenceArray)initWithArray:(id)array
{
  arrayCopy = array;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12.receiver = self;
    v12.super_class = TSPLazyReferenceArray;
    v5 = [(TSPLazyReferenceArray *)&v12 init];
    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x277CBEB18]);
      v8 = objc_msgSend_initWithArray_(v6, v7, arrayCopy[1]);
      references = v5->_references;
      v5->_references = v8;
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = TSPLazyReferenceArray;
    v5 = [(TSPLazyReferenceArray *)&v11 initWithArray:arrayCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPLazyReferenceArray copyWithZone:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPLazyReferenceArray.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 52, 0, "Use -mutableCopy instead of -copy");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  return 0;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPLazyReferenceArray mutableCopyWithZone:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPLazyReferenceArray.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 58, 0, "Implement copying for TSPLazyReferenceArray");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  return 0;
}

- (id)objectAtIndex:(unint64_t)index
{
  v3 = objc_msgSend_objectAtIndexedSubscript_(self->_references, a2, index);
  v49 = 0;
  v5 = objc_msgSend_objectAndReturnError_(v3, v4, &v49);
  v6 = v49;

  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (!v7)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v13 = objc_msgSend_domain(v6, v11, v12);
    v16 = objc_msgSend_code(v6, v14, v15);
    isRecoverable = objc_msgSend_tsp_isRecoverable(v6, v17, v18);
    v22 = objc_msgSend_tsp_hintsDescription(v6, v20, v21);
    v23 = v22;
    if (isRecoverable)
    {
      v24 = @"recoverable=YES, ";
    }

    else
    {
      v24 = &stru_2885C9BB8;
    }

    v47 = v22;
    v45 = v16;
    v46 = v24;
    TSUSetCrashReporterInfo();

    v25 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSPLazyReferenceArray objectAtIndex:]", "[TSPLazyReferenceArray objectAtIndex:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPLazyReferenceArray.mm", 69, v10, v13, v45, v46, v47, v6);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPLazyReferenceArray.mm");
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    v34 = objc_msgSend_domain(v6, v32, v33);
    v37 = objc_msgSend_code(v6, v35, v36);
    v40 = objc_msgSend_tsp_isRecoverable(v6, v38, v39);
    v48 = objc_msgSend_tsp_hintsDescription(v6, v41, v42);
    if (v40)
    {
      v44 = @"recoverable=YES, ";
    }

    else
    {
      v44 = &stru_2885C9BB8;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v43, v27, v29, 69, 1, "Failed to load lazy reference with error: errorClass=%{public}@, domain=%{public}@, code=%zd, %{public}@hints=%{public}@ (%@) ", v31, v34, v37, v44, v48, v6);

    TSUCrashBreakpoint();
    abort();
  }

  return v5;
}

- (id)objectsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  v5 = [TSPLazyReferenceArray alloc];
  v7 = objc_msgSend_objectsAtIndexes_(self->_references, v6, indexesCopy);
  v9 = objc_msgSend_initWithArray_(v5, v8, v7);

  return v9;
}

- (id)subarrayWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = [TSPLazyReferenceArray alloc];
  v8 = objc_msgSend_subarrayWithRange_(self->_references, v7, location, length);
  v10 = objc_msgSend_initWithArray_(v6, v9, v8);

  return v10;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  var0 = state->var0;
  if (!state->var0)
  {
    state->var2 = &self->_mutations;
  }

  v10 = objc_msgSend_count(self->_references, a2, state);
  if (v10 <= var0)
  {
    return 0;
  }

  stateCopy = state;
  objectsCopy = objects;
  if (v10 - var0 >= count)
  {
    countCopy = count;
  }

  else
  {
    countCopy = v10 - var0;
  }

  if (countCopy)
  {
    v13 = var0;
    v14 = countCopy;
    do
    {
      v15 = objc_msgSend_objectAtIndexedSubscript_(self->_references, v11, v13);
      v63 = 0;
      v17 = objc_msgSend_objectAndReturnError_(v15, v16, &v63);
      v18 = v63;

      if (v17)
      {
        v19 = 1;
      }

      else
      {
        v19 = v18 == 0;
      }

      if (!v19)
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v25 = objc_msgSend_domain(v18, v23, v24);
        v28 = objc_msgSend_code(v18, v26, v27);
        isRecoverable = objc_msgSend_tsp_isRecoverable(v18, v29, v30);
        v34 = objc_msgSend_tsp_hintsDescription(v18, v32, v33);
        v35 = v34;
        if (isRecoverable)
        {
          v36 = @"recoverable=YES, ";
        }

        else
        {
          v36 = &stru_2885C9BB8;
        }

        v59 = v34;
        v57 = v28;
        v58 = v36;
        TSUSetCrashReporterInfo();

        v37 = MEMORY[0x277D81150];
        v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[TSPLazyReferenceArray countByEnumeratingWithState:objects:count:]", "[TSPLazyReferenceArray countByEnumeratingWithState:objects:count:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPLazyReferenceArray.mm", 102, v22, v25, v57, v58, v59, v18);
        v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPLazyReferenceArray.mm");
        v42 = objc_opt_class();
        v43 = NSStringFromClass(v42);
        v46 = objc_msgSend_domain(v18, v44, v45);
        v49 = objc_msgSend_code(v18, v47, v48);
        v52 = objc_msgSend_tsp_isRecoverable(v18, v50, v51);
        v62 = objc_msgSend_tsp_hintsDescription(v18, v53, v54);
        if (v52)
        {
          v56 = @"recoverable=YES, ";
        }

        else
        {
          v56 = &stru_2885C9BB8;
        }

        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v55, v39, v41, 102, 1, "Failed to load lazy reference with error: errorClass=%{public}@, domain=%{public}@, code=%zd, %{public}@hints=%{public}@ (%@) ", v43, v46, v49, v56, v62, v18);

        TSUCrashBreakpoint();
        abort();
      }

      *objects++ = v17;

      ++v13;
      --v14;
    }

    while (v14);
  }

  stateCopy->var0 = countCopy + var0;
  stateCopy->var1 = objectsCopy;
  return countCopy;
}

- (void)addObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_addObject_(self->_references, v4, objectCopy);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPLazyReferenceArray addObject:]");
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPLazyReferenceArray.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 116, 0, "Don't put non-TSPObjects in TSPLazyReferenceArray");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
    }

    references = self->_references;
    v14 = objc_msgSend_referenceForObject_(TSPLazyReference, v5, objectCopy);
    objc_msgSend_addObject_(references, v15, v14);
  }

  ++self->_mutations;
}

- (void)addObjectsFromArray:(id)array
{
  arrayCopy = array;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_addObjectsFromArray_(self->_references, v5, arrayCopy[1]);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TSPLazyReferenceArray;
    [(TSPLazyReferenceArray *)&v6 addObjectsFromArray:arrayCopy];
  }

  ++self->_mutations;
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_insertObject_atIndex_(self->_references, v6, objectCopy, index);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPLazyReferenceArray insertObject:atIndex:]");
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPLazyReferenceArray.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 140, 0, "Don't put non-TSPObjects in TSPLazyReferenceArray");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    }

    references = self->_references;
    v16 = objc_msgSend_referenceForObject_(TSPLazyReference, v7, objectCopy);
    objc_msgSend_insertObject_atIndex_(references, v17, v16, index);
  }

  ++self->_mutations;
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_replaceObjectAtIndex_withObject_(self->_references, v6, index, objectCopy);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPLazyReferenceArray replaceObjectAtIndex:withObject:]");
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPLazyReferenceArray.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 168, 0, "Don't put non-TSPObjects in TSPLazyReferenceArray");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    }

    references = self->_references;
    v16 = objc_msgSend_referenceForObject_(TSPLazyReference, v7, objectCopy);
    objc_msgSend_replaceObjectAtIndex_withObject_(references, v17, index, v16);
  }

  ++self->_mutations;
}

- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromArray:(id)array
{
  length = range.length;
  location = range.location;
  arrayCopy = array;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_replaceObjectsInRange_withObjectsFromArray_(self->_references, v8, location, length, arrayCopy[1]);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TSPLazyReferenceArray;
    [(TSPLazyReferenceArray *)&v9 replaceObjectsInRange:location withObjectsFromArray:length, arrayCopy];
  }

  ++self->_mutations;
}

- (void)replaceObjectsInRange:(_NSRange)range withObjectsFromArray:(id)array range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v7 = range.length;
  v8 = range.location;
  arrayCopy = array;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_replaceObjectsInRange_withObjectsFromArray_range_(self->_references, v11, v8, v7, arrayCopy[1], location, length);
  }

  else
  {
    v12.receiver = self;
    v12.super_class = TSPLazyReferenceArray;
    [(TSPLazyReferenceArray *)&v12 replaceObjectsInRange:v8 withObjectsFromArray:v7 range:arrayCopy, location, length];
  }

  ++self->_mutations;
}

@end