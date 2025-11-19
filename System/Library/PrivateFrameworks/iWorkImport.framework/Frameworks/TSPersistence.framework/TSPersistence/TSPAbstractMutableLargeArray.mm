@interface TSPAbstractMutableLargeArray
+ (Class)arraySegmentClass;
- (BOOL)mergeSegmentIfNeededAtIndex:(unint64_t)a3;
- (BOOL)shouldBisectForCount:(unint64_t)a3 byteSize:(unint64_t)a4 cost:(unint64_t)a5;
- (NSArray)allObjects;
- (NSMutableArray)mutableArrayWrapper;
- (TSPAbstractMutableLargeArray)initWithArray:(id)a3 context:(id)a4;
- (TSPAbstractMutableLargeArray)initWithContext:(id)a3;
- (TSPAbstractMutableLargeArray)initWithContext:(id)a3 shouldDelayArchiving:(BOOL)a4 delayedArchivingPriority:(unsigned int)a5 storeOutsideObjectArchive:(BOOL)a6;
- (_NSRange)lastRange;
- (_NSRange)rangeOfSegmentIndex:(unint64_t)a3;
- (id).cxx_construct;
- (id)createArraySegment;
- (id)firstObject;
- (id)initDocumentObjectWithContext:(id)a3;
- (id)lastObject;
- (id)objectAtIndex:(unint64_t)a3;
- (id)pop;
- (id)segmentAtIndex:(unint64_t)a3;
- (id)segmentRanges;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)elementCount;
- (unint64_t)estimatedByteSizeOfElementAtIndex:(unint64_t)a3;
- (unint64_t)maxSegmentElementCount;
- (unint64_t)maxSegmentSize;
- (unint64_t)segmentIndexForElementIndex:(unint64_t)a3 firstSegmentIndex:(unint64_t)a4 lastSegmentIndex:(unint64_t)a5 segmentIndexGuess:(unint64_t)a6;
- (unint64_t)segmentIndexForElementIndex:(unint64_t)a3 segmentIndexGuess:(unint64_t)a4;
- (unsigned)delayedArchivingPriority;
- (void)addObject:(id)a3;
- (void)addObjectsFromArray:(id)a3;
- (void)bisectSegmentIfNeeded:(unint64_t)a3;
- (void)commonInit;
- (void)enqueue:(id)a3;
- (void)insertObject:(id)a3 atIndex:(unint64_t)a4;
- (void)largeArraySegmentDidBisectAtIndex:(unint64_t)a3 segments:(id)a4;
- (void)loadFromLargeArrayMessage:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)p_removeObjectsFromSegmentAtSegmentIndex:(unint64_t)a3 atIndexes:(id)a4;
- (void)removeAllObjects;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(unint64_t)a3;
- (void)removeObjectsAtIndexes:(id)a3;
- (void)removeObjectsInRange:(_NSRange)a3;
- (void)removeRangeAtSegmentIndex:(unint64_t)a3;
- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)saveToLargeArrayMessage:(void *)a3 archiver:(id)a4;
- (void)setMaxSegmentElementCount:(unint64_t)a3 willModify:(BOOL)a4;
- (void)setMaxSegmentSize:(unint64_t)a3 willModify:(BOOL)a4;
- (void)setRange:(_NSRange)a3 forSegmentIndex:(unint64_t)a4;
- (void)updateSegmentRangesAfterIndex:(unint64_t)a3;
@end

@implementation TSPAbstractMutableLargeArray

- (TSPAbstractMutableLargeArray)initWithArray:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9 = objc_msgSend_initWithContext_(self, v8, v7);
  if (v9)
  {
    v10 = objc_opt_class();
    v13 = objc_alloc(objc_msgSend_arraySegmentClass(v10, v11, v12));
    shouldDelayArchiving = objc_msgSend_shouldDelayArchiving(v9, v14, v15);
    shouldDelayArchiving_context = objc_msgSend_initWithArray_delegate_shouldDelayArchiving_context_(v13, v17, v6, v9, shouldDelayArchiving, v7);
    segments = v9->_segments;
    v21 = objc_msgSend_referenceForObject_(TSPLazyReference, v20, shouldDelayArchiving_context);
    objc_msgSend_addObject_(segments, v22, v21);

    v9->_estimatedByteSize += objc_msgSend_estimatedByteSize(shouldDelayArchiving_context, v23, v24);
    v27 = objc_msgSend_count(v9, v25, v26);
    v30 = objc_msgSend_count(shouldDelayArchiving_context, v28, v29);
    objc_msgSend_addRange_(v9, v31, v27, v30);
    objc_msgSend_bisectSegmentIfNeeded_(v9, v32, 0);
  }

  return v9;
}

- (void)commonInit
{
  v5.receiver = self;
  v5.super_class = TSPAbstractMutableLargeArray;
  [(TSPObject *)&v5 commonInit];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  segments = self->_segments;
  self->_segments = v3;

  self->_bisectedSegmentIndex = 0x7FFFFFFFFFFFFFFFLL;
  self->_mergingSegmentIndex = 0x7FFFFFFFFFFFFFFFLL;
}

- (TSPAbstractMutableLargeArray)initWithContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSPAbstractMutableLargeArray;
  return [(TSPObject *)&v4 initWithContext:a3];
}

- (id)initDocumentObjectWithContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSPAbstractMutableLargeArray;
  return [(TSPObject *)&v4 initDocumentObjectWithContext:a3];
}

- (TSPAbstractMutableLargeArray)initWithContext:(id)a3 shouldDelayArchiving:(BOOL)a4 delayedArchivingPriority:(unsigned int)a5 storeOutsideObjectArchive:(BOOL)a6
{
  v10.receiver = self;
  v10.super_class = TSPAbstractMutableLargeArray;
  result = [(TSPObject *)&v10 initWithContext:a3];
  if (result)
  {
    result->_shouldDelayArchiving = a4;
    result->_storeOutsideObjectArchive = a6;
    result->_delayedArchivingPriority = a5;
  }

  return result;
}

- (unint64_t)elementCount
{
  end = self->_segmentRanges.__end_;
  if (end == self->_segmentRanges.__begin_)
  {
    return 0;
  }

  else
  {
    return end[-1].length + end[-1].location;
  }
}

- (unint64_t)segmentIndexForElementIndex:(unint64_t)a3 firstSegmentIndex:(unint64_t)a4 lastSegmentIndex:(unint64_t)a5 segmentIndexGuess:(unint64_t)a6
{
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (a5 >= a4)
  {
    begin = self->_segmentRanges.__begin_;
    if (self->_segmentRanges.__end_ - begin > a5)
    {
      v6 = a6 == a5 ? a6 : 0x7FFFFFFFFFFFFFFFLL;
      v8 = a6 == 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v6;
      if (v8 == 0x7FFFFFFFFFFFFFFFLL || ((v9 = &begin[v8], a3 >= v9->location) ? (v10 = a3 - v9->location >= v9->length) : (v10 = 1), v10))
      {
        if (a4 == 0x7FFFFFFFFFFFFFFFLL || ((v11 = &begin[a4].location, v13 = *v11, v12 = v11[1], a3 >= v13) ? (v14 = a3 - v13 >= v12) : (v14 = 1), v14))
        {
          if (a5 == 0x7FFFFFFFFFFFFFFFLL || ((p_location = &begin[a5].location, v17 = *p_location, v16 = p_location[1], a3 >= v17) ? (v18 = a3 - v17 >= v16) : (v18 = 1), v18))
          {
            v6 = 0x7FFFFFFFFFFFFFFFLL;
            if (a5 - a4 >= 2)
            {
              return objc_msgSend_segmentIndexForElementIndex_firstSegmentIndex_lastSegmentIndex_segmentIndexGuess_(self, a2, a3);
            }
          }

          else
          {
            return a5;
          }
        }

        else
        {
          return a4;
        }
      }
    }
  }

  return v6;
}

- (unint64_t)segmentIndexForElementIndex:(unint64_t)a3 segmentIndexGuess:(unint64_t)a4
{
  if (objc_msgSend_segmentCount(self, a2, a3))
  {
    v9 = objc_msgSend_segmentCount(self, v7, v8) - 1;
  }

  else
  {
    v9 = 0;
  }

  return objc_msgSend_segmentIndexForElementIndex_firstSegmentIndex_lastSegmentIndex_segmentIndexGuess_(self, v7, a3, 0, v9, a4);
}

- (_NSRange)rangeOfSegmentIndex:(unint64_t)a3
{
  v3 = &self->_segmentRanges.__begin_[a3];
  location = v3->location;
  length = v3->length;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)lastRange
{
  end = self->_segmentRanges.__end_;
  location = end[-1].location;
  length = end[-1].length;
  result.length = length;
  result.location = location;
  return result;
}

- (void)setRange:(_NSRange)a3 forSegmentIndex:(unint64_t)a4
{
  length = a3.length;
  location = a3.location;
  objc_msgSend_willModify(self, a2, a3.location);
  v8 = &self->_segmentRanges.__begin_[a4];
  v8->location = location;
  v8->length = length;
}

- (void)removeRangeAtSegmentIndex:(unint64_t)a3
{
  objc_msgSend_willModify(self, a2, a3);
  p_segmentRanges = &self->_segmentRanges;
  end = self->_segmentRanges.__end_;
  v7 = &self->_segmentRanges.__begin_[a3];
  v8 = end - &v7[1];
  if (end != &v7[1])
  {
    memmove(v7, &v7[1], end - &v7[1]);
  }

  p_segmentRanges->__end_ = (v7 + v8);
}

- (id)segmentRanges
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = 0; objc_msgSend_segmentCount(self, v3, v4) > i; ++i)
  {
    v8 = MEMORY[0x277CCAE60];
    v9 = objc_msgSend_rangeOfSegmentIndex_(self, v7, i);
    v11 = objc_msgSend_valueWithRange_(v8, v10, v9, v10);
    objc_msgSend_addObject_(v5, v12, v11);
  }

  return v5;
}

- (id)objectAtIndex:(unint64_t)a3
{
  if (objc_msgSend_count(self->_segments, a2, a3) && (v7 = objc_msgSend_segmentIndexForElementIndex_segmentIndexGuess_(self, v5, a3, 0), v7 != 0x7FFFFFFFFFFFFFFFLL) && (v8 = v7, v9 = objc_msgSend_rangeOfSegmentIndex_(self, v5, v7), v10 = a3 >= v9, v11 = a3 - v9, v10))
  {
    v18 = objc_msgSend_segmentAtIndex_(self, v5, v8);
    if (!v18)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSPAbstractMutableLargeArray objectAtIndex:]");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 341, 0, "invalid nil value for '%{public}s'", "segment");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
    }

    v26 = objc_msgSend_objectAtIndex_(v18, v17, v11);
    v28 = objc_msgSend_convertSegmentElementToElement_(self, v27, v26);

    v12 = v28;
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v6);
  if (v12 == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  v15 = v14;

  return v14;
}

- (void)insertObject:(id)a3 atIndex:(unint64_t)a4
{
  v33 = a3;
  objc_msgSend_willModify(self, v6, v7);
  ++self->_mutations;
  v11 = objc_msgSend_segmentIndexForElementIndex_segmentIndexGuess_(self, v8, a4, 0);
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = objc_msgSend_count(self->_segments, v9, v10);
  }

  v13 = objc_msgSend_segmentAtIndex_(self, v9, v11);
  if (!v13)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPAbstractMutableLargeArray insertObject:atIndex:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 365, 0, "invalid nil value for '%{public}s'", "segment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  v21 = objc_msgSend_rangeOfSegmentIndex_(self, v12, v11);
  v25 = objc_msgSend_convertElementToSegmentElement_(self, v22, v33);
  if (!v25)
  {
    v25 = objc_msgSend_null(MEMORY[0x277CBEB68], v23, v24);
  }

  objc_msgSend_insertObject_atIndex_(v13, v23, v25, a4 - v21);
  self->_estimatedByteSize += objc_msgSend_estimatedByteSizeOfElement_(v13, v26, v25);
  v29 = objc_msgSend_count(v13, v27, v28);
  objc_msgSend_setRange_forSegmentIndex_(self, v30, v21, v29, v11);
  objc_msgSend_updateSegmentRangesAfterIndex_(self, v31, v11);
  objc_msgSend_bisectSegmentIfNeeded_(self, v32, v11);
}

- (void)removeObjectAtIndex:(unint64_t)a3
{
  objc_msgSend_willModify(self, a2, a3);
  ++self->_mutations;
  v6 = objc_msgSend_segmentIndexForElementIndex_segmentIndexGuess_(self, v5, a3, 0);
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return;
  }

  v8 = v6;
  v37 = objc_msgSend_segmentAtIndex_(self, v7, v6);
  if (!v37)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPAbstractMutableLargeArray removeObjectAtIndex:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 397, 0, "invalid nil value for '%{public}s'", "segment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v17 = objc_msgSend_rangeOfSegmentIndex_(self, v9, v8);
  v18 = a3 - v17;
  v20 = objc_msgSend_objectAtIndex_(v37, v19, v18);
  v22 = objc_msgSend_estimatedByteSizeOfElement_(v37, v21, v20);

  estimatedByteSize = self->_estimatedByteSize;
  v25 = estimatedByteSize >= v22;
  v26 = estimatedByteSize - v22;
  if (!v25)
  {
    v26 = 1;
  }

  self->_estimatedByteSize = v26;
  objc_msgSend_removeObjectAtIndex_(v37, v23, v18);
  v29 = objc_msgSend_count(v37, v27, v28);
  objc_msgSend_setRange_forSegmentIndex_(self, v30, v17, v29, v8);
  if (v29 || objc_msgSend_segmentCount(self, v31, v32) < 2)
  {
    goto LABEL_11;
  }

  objc_msgSend_removeObjectAtIndex_(self->_segments, v31, v8);
  objc_msgSend_removeRangeAtSegmentIndex_(self, v33, v8);
  if (!v8)
  {
    objc_msgSend_rangeOfSegmentIndex_(self, v34, 0);
    objc_msgSend_setRange_forSegmentIndex_(self, v36, v17, v36, 0);
    v8 = 0;
LABEL_11:
    objc_msgSend_updateSegmentRangesAfterIndex_(self, v31, v8);
    goto LABEL_12;
  }

  objc_msgSend_updateSegmentRangesAfterIndex_(self, v34, --v8);
LABEL_12:
  objc_msgSend_mergeSegmentIfNeededAtIndex_(self, v35, v8);
}

- (void)removeObjectsAtIndexes:(id)a3
{
  v4 = a3;
  if (objc_msgSend_count(v4, v5, v6))
  {
    objc_msgSend_willModify(self, v7, v8);
    ++self->_mutations;
    if (objc_msgSend_segmentCount(self, v9, v10))
    {
      v13 = objc_msgSend_segmentCount(self, v11, v12) - 1;
    }

    else
    {
      v13 = 0;
    }

    v14 = objc_msgSend_count(self, v11, v12);
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v38 = 1;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0x7FFFFFFFFFFFFFFFLL;
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x4012000000;
    v32[3] = sub_276AB11C8;
    v32[4] = nullsub_13;
    v32[5] = &unk_276C58F2F;
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x2020000000;
    v31[3] = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0x7FFFFFFFFFFFFFFFLL;
    v15 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_276AB11D8;
    v26[3] = &unk_27A6E6968;
    v26[6] = v37;
    v26[7] = &v33;
    v26[11] = v14;
    v26[12] = v13;
    v26[8] = v31;
    v26[9] = v32;
    v26[10] = &v27;
    v26[4] = self;
    v26[5] = v15;
    objc_msgSend_enumerateIndexesUsingBlock_(v4, v16, v26);
    if (v34[3] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend_count(v15, v17, v18))
    {
      objc_msgSend_p_removeObjectsFromSegmentAtSegmentIndex_atIndexes_(self, v17, v34[3], v15);
    }

    objc_msgSend_updateSegmentRangesAfterIndex_(self, v17, v28[3]);
    v21 = v28[3];
    while (v21 < objc_msgSend_segmentCount(self, v19, v20))
    {
      objc_msgSend_rangeOfSegmentIndex_(self, v22, v21);
      if (v19 || objc_msgSend_segmentCount(self, 0, v20) < 2)
      {
        ++v21;
      }

      else
      {
        objc_msgSend_removeRangeAtSegmentIndex_(self, v19, v21);
        objc_msgSend_removeObjectAtIndex_(self->_segments, v24, v21);
      }
    }

    for (i = v28[3]; i < objc_msgSend_segmentCount(self, v22, v23); ++i)
    {
        ;
      }
    }

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(v31, 8);
    _Block_object_dispose(v32, 8);
    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(v37, 8);
  }
}

- (void)p_removeObjectsFromSegmentAtSegmentIndex:(unint64_t)a3 atIndexes:(id)a4
{
  v45 = a4;
  v9 = objc_msgSend_segmentAtIndex_(self, v6, a3);
  if (!v9)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPAbstractMutableLargeArray p_removeObjectsFromSegmentAtSegmentIndex:atIndexes:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 547, 0, "invalid nil value for '%{public}s'", "segment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v17 = objc_msgSend_estimatedByteSize(v9, v7, v8);
  objc_msgSend_removeObjectsAtIndexes_(v9, v18, v45);
  v21 = objc_msgSend_estimatedByteSize(v9, v19, v20);
  v23 = v17 - v21;
  if (v17 < v21)
  {
    v23 = 0;
  }

  estimatedByteSize = self->_estimatedByteSize;
  v25 = estimatedByteSize >= v23;
  v26 = estimatedByteSize - v23;
  if (!v25)
  {
    v26 = 1;
  }

  self->_estimatedByteSize = v26;
  v27 = objc_msgSend_rangeOfSegmentIndex_(self, v22, a3);
  v29 = v28;
  if (v28 >= objc_msgSend_count(v45, v28, v30))
  {
    v43 = objc_msgSend_count(v45, v31, v32);
    objc_msgSend_setRange_forSegmentIndex_(self, v44, v27, &v29[-v43], a3);
  }

  else
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSPAbstractMutableLargeArray p_removeObjectsFromSegmentAtSegmentIndex:atIndexes:]");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm");
    v39 = objc_msgSend_count(v45, v37, v38);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v40, v34, v36, 564, 0, "segmentRange length should always at least indexSetForCurrentSegment.count. segmentRangeLength=%tu indexSetForCurrentSegmentCount=%tu", v29, v39);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42);
  }
}

- (void)addObject:(id)a3
{
  v126[2] = *MEMORY[0x277D85DE8];
  v124 = a3;
  objc_msgSend_willModify(self, v4, v5);
  ++self->_mutations;
  v10 = objc_msgSend_count(self->_segments, v6, v7);
  if (v10)
  {
    v11 = 0;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = objc_msgSend_createArraySegment(self, v8, v9);
    segments = self->_segments;
    v16 = objc_msgSend_referenceForObject_(TSPLazyReference, v15, v13);
    objc_msgSend_addObject_(segments, v17, v16);

    v11 = v13;
    objc_msgSend_addRange_(self, v18, 0, 0);
    v12 = 0;
  }

  if (!objc_msgSend_count(self->_segments, v8, v9))
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSPAbstractMutableLargeArray addObject:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 582, 0, "should be at least one segment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
  }

  if (!v10)
  {
LABEL_11:
    if (v11)
    {
      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_23:
    v76 = MEMORY[0x277D81150];
    v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSPAbstractMutableLargeArray addObject:]");
    v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v76, v80, v77, v79, 591, 0, "invalid nil value for '%{public}s'", "segment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v82);
    goto LABEL_24;
  }

  if (objc_msgSend_count(self->_segments, v19, v20))
  {
    v12 = objc_msgSend_count(self->_segments, v19, v28) - 1;
    v30 = objc_msgSend_objectAtIndex_(self->_segments, v29, v12);
    v125 = 0;
    v32 = objc_msgSend_objectAndReturnError_(v30, v31, &v125);
    v33 = v125;

    if (!v32 && v33)
    {
      v84 = objc_opt_class();
      v85 = NSStringFromClass(v84);
      v88 = objc_msgSend_domain(v33, v86, v87);
      v91 = objc_msgSend_code(v33, v89, v90);
      isRecoverable = objc_msgSend_tsp_isRecoverable(v33, v92, v93);
      v97 = objc_msgSend_tsp_hintsDescription(v33, v95, v96);
      v98 = v97;
      if (isRecoverable)
      {
        v99 = @"recoverable=YES, ";
      }

      else
      {
        v99 = &stru_2885C9BB8;
      }

      v122 = v97;
      v120 = v91;
      v121 = v99;
      TSUSetCrashReporterInfo();

      v100 = MEMORY[0x277D81150];
      v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, "[TSPAbstractMutableLargeArray addObject:]", "[TSPAbstractMutableLargeArray addObject:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm", 589, v85, v88, v120, v121, v122, v33);
      v104 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v103, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm");
      v105 = objc_opt_class();
      v106 = NSStringFromClass(v105);
      v109 = objc_msgSend_domain(v33, v107, v108);
      v112 = objc_msgSend_code(v33, v110, v111);
      v115 = objc_msgSend_tsp_isRecoverable(v33, v113, v114);
      v123 = objc_msgSend_tsp_hintsDescription(v33, v116, v117);
      if (v115)
      {
        v119 = @"recoverable=YES, ";
      }

      else
      {
        v119 = &stru_2885C9BB8;
      }

      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v100, v118, v102, v104, 589, 1, "Failed to load lazy reference with error: errorClass=%{public}@, domain=%{public}@, code=%zd, %{public}@hints=%{public}@ (%@) ", v106, v109, v112, v119, v123, v33);

      TSUCrashBreakpoint();
      abort();
    }

    v11 = v32;
    goto LABEL_11;
  }

  if (!v11)
  {
    goto LABEL_23;
  }

LABEL_15:
  v34 = MEMORY[0x277D81150];
  v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSPAbstractMutableLargeArray addObject:]");
  v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v38, v35, v37, 594, 0, "Invalid index for segment");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
  v12 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_16:
  v43 = objc_msgSend_convertElementToSegmentElement_(self, v19, v124);
  if (!v43)
  {
    v43 = objc_msgSend_null(MEMORY[0x277CBEB68], v41, v42);
  }

  v44 = objc_msgSend_estimatedByteSizeOfElement_(v11, v41, v43);
  self->_estimatedByteSize += v44;
  v46 = objc_msgSend_rangeOfSegmentIndex_(self, v45, v12);
  v48 = v47;
  if ((objc_msgSend_disableSegmentation(self, v47, v49) & 1) != 0 || (v51 = objc_msgSend_estimatedCostOfElement_(v11, v50, v43), v54 = objc_msgSend_estimatedByteSize(v11, v52, v53), v57 = objc_msgSend_estimatedCost(v11, v55, v56), !objc_msgSend_shouldBisectForCount_byteSize_cost_(self, v58, (v48 + 1), v54 + v44, v57 + v51)))
  {
    objc_msgSend_addObject_(v11, v50, v43);
    v74 = objc_msgSend_count(v11, v72, v73);
    objc_msgSend_setRange_forSegmentIndex_(self, v75, v46, v74, v12);
  }

  else
  {
    v60 = objc_msgSend_createArraySegment(self, v50, v59);
    objc_msgSend_addObject_(v60, v61, v43);
    self->_bisectedSegmentIdentifier = objc_msgSend_tsp_identifier(v11, v62, v63);
    self->_bisectedSegmentIndex = objc_msgSend_count(self->_segments, v64, v65) - 1;
    v68 = objc_msgSend_count(v11, v66, v67);
    v126[0] = v11;
    v126[1] = v60;
    v70 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v69, v126, 2);
    objc_msgSend_largeArraySegmentDidBisectAtIndex_segments_(self, v71, v68, v70);

    self->_bisectedSegmentIdentifier = 0;
    self->_bisectedSegmentIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_24:
  v83 = *MEMORY[0x277D85DE8];
}

- (void)addObjectsFromArray:(id)a3
{
  v122 = *MEMORY[0x277D85DE8];
  v115 = a3;
  objc_msgSend_willModify(self, v4, v5);
  ++self->_mutations;
  v10 = objc_msgSend_count(self->_segments, v6, v7);
  if (v10)
  {
    v11 = 0;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = objc_msgSend_createArraySegment(self, v8, v9);
    segments = self->_segments;
    v16 = objc_msgSend_referenceForObject_(TSPLazyReference, v15, v13);
    objc_msgSend_addObject_(segments, v17, v16);

    v11 = v13;
    objc_msgSend_addRange_(self, v18, 0, 0);
    v12 = 0;
  }

  if (!objc_msgSend_count(self->_segments, v8, v9))
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSPAbstractMutableLargeArray addObjectsFromArray:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 654, 0, "should be at least one segment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
  }

  if (!v10)
  {
LABEL_11:
    if (v11)
    {
      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_26:
    v67 = MEMORY[0x277D81150];
    v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSPAbstractMutableLargeArray addObjectsFromArray:]");
    v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v71, v68, v70, 663, 0, "invalid nil value for '%{public}s'", "segment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73);
    goto LABEL_27;
  }

  if (objc_msgSend_count(self->_segments, v19, v20))
  {
    v12 = objc_msgSend_count(self->_segments, v19, v28) - 1;
    v30 = objc_msgSend_objectAtIndex_(self->_segments, v29, v12);
    v120 = 0;
    v32 = objc_msgSend_objectAndReturnError_(v30, v31, &v120);
    v33 = v120;

    if (!v32 && v33)
    {
      v75 = objc_opt_class();
      v76 = NSStringFromClass(v75);
      v79 = objc_msgSend_domain(v33, v77, v78);
      v82 = objc_msgSend_code(v33, v80, v81);
      isRecoverable = objc_msgSend_tsp_isRecoverable(v33, v83, v84);
      v88 = objc_msgSend_tsp_hintsDescription(v33, v86, v87);
      v89 = v88;
      if (isRecoverable)
      {
        v90 = @"recoverable=YES, ";
      }

      else
      {
        v90 = &stru_2885C9BB8;
      }

      v113 = v88;
      v111 = v82;
      v112 = v90;
      TSUSetCrashReporterInfo();

      v91 = MEMORY[0x277D81150];
      v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, "[TSPAbstractMutableLargeArray addObjectsFromArray:]", "[TSPAbstractMutableLargeArray addObjectsFromArray:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm", 661, v76, v79, v111, v112, v113, v33);
      v95 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v94, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm");
      v96 = objc_opt_class();
      v97 = NSStringFromClass(v96);
      v100 = objc_msgSend_domain(v33, v98, v99);
      v103 = objc_msgSend_code(v33, v101, v102);
      v114 = objc_msgSend_tsp_isRecoverable(v33, v104, v105);
      v108 = objc_msgSend_tsp_hintsDescription(v33, v106, v107);
      v110 = v108;
      if (v114)
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v91, v109, v93, v95, 661, 1, "Failed to load lazy reference with error: errorClass=%{public}@, domain=%{public}@, code=%zd, %{public}@hints=%{public}@ (%@) ", v97, v100, v103, @"recoverable=YES, ", v108, v33);
      }

      else
      {
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v91, v109, v93, v95, 661, 1, "Failed to load lazy reference with error: errorClass=%{public}@, domain=%{public}@, code=%zd, %{public}@hints=%{public}@ (%@) ", v97, v100, v103, &stru_2885C9BB8, v108, v33);
      }

      TSUCrashBreakpoint();
      abort();
    }

    v11 = v32;
    goto LABEL_11;
  }

  if (!v11)
  {
    goto LABEL_26;
  }

LABEL_15:
  v34 = MEMORY[0x277D81150];
  v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSPAbstractMutableLargeArray addObjectsFromArray:]");
  v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v38, v35, v37, 666, 0, "Invalid index for segment");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
  v12 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_16:
  v41 = MEMORY[0x277CBEB18];
  v42 = objc_msgSend_count(v115, v19, v20);
  v44 = objc_msgSend_arrayWithCapacity_(v41, v43, v42);
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v45 = v115;
  v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v116, v121, 16);
  if (v48)
  {
    v49 = *v117;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v117 != v49)
        {
          objc_enumerationMutation(v45);
        }

        v53 = objc_msgSend_convertElementToSegmentElement_(self, v47, *(*(&v116 + 1) + 8 * i));
        if (!v53)
        {
          v53 = objc_msgSend_null(MEMORY[0x277CBEB68], v51, v52);
        }

        objc_msgSend_addObject_(v44, v51, v53);
      }

      v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v47, &v116, v121, 16);
    }

    while (v48);
  }

  v56 = objc_msgSend_estimatedByteSize(v11, v54, v55);
  objc_msgSend_addObjectsFromArray_(v11, v57, v44);
  self->_estimatedByteSize += objc_msgSend_estimatedByteSize(v11, v58, v59) - v56;
  v61 = objc_msgSend_rangeOfSegmentIndex_(self, v60, v12);
  v64 = objc_msgSend_count(v11, v62, v63);
  objc_msgSend_setRange_forSegmentIndex_(self, v65, v61, v64, v12);
  objc_msgSend_bisectSegmentIfNeeded_(self, v66, v12);

LABEL_27:
  v74 = *MEMORY[0x277D85DE8];
}

- (void)removeLastObject
{
  if (objc_msgSend_count(self->_segments, a2, v2))
  {
    objc_msgSend_willModify(self, v4, v5);
    ++self->_mutations;
    v8 = objc_msgSend_lastObject(self->_segments, v6, v7);
    v81 = 0;
    v10 = objc_msgSend_objectAndReturnError_(v8, v9, &v81);
    v11 = v81;

    if (v10)
    {
      v14 = 1;
    }

    else
    {
      v14 = v11 == 0;
    }

    if (!v14)
    {
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      v45 = objc_msgSend_domain(v11, v43, v44);
      v48 = objc_msgSend_code(v11, v46, v47);
      isRecoverable = objc_msgSend_tsp_isRecoverable(v11, v49, v50);
      v54 = objc_msgSend_tsp_hintsDescription(v11, v52, v53);
      v55 = v54;
      if (isRecoverable)
      {
        v56 = @"recoverable=YES, ";
      }

      else
      {
        v56 = &stru_2885C9BB8;
      }

      v78 = v54;
      v76 = v48;
      v77 = v56;
      TSUSetCrashReporterInfo();

      v57 = MEMORY[0x277D81150];
      v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "[TSPAbstractMutableLargeArray removeLastObject]", "[TSPAbstractMutableLargeArray removeLastObject]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm", 699, v42, v45, v76, v77, v78, v11);
      v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm");
      v62 = objc_opt_class();
      v63 = NSStringFromClass(v62);
      v66 = objc_msgSend_domain(v11, v64, v65);
      v69 = objc_msgSend_code(v11, v67, v68);
      v80 = objc_msgSend_tsp_isRecoverable(v11, v70, v71);
      v79 = objc_msgSend_tsp_hintsDescription(v11, v72, v73);
      if (v80)
      {
        v75 = @"recoverable=YES, ";
      }

      else
      {
        v75 = &stru_2885C9BB8;
      }

      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v74, v59, v61, 699, 1, "Failed to load lazy reference with error: errorClass=%{public}@, domain=%{public}@, code=%zd, %{public}@hints=%{public}@ (%@) ", v63, v66, v69, v75, v79, v11);

      TSUCrashBreakpoint();
      abort();
    }

    Range = objc_msgSend_lastRange(self, v12, v13);
    v18 = objc_msgSend_count(v10, v16, v17);
    v20 = objc_msgSend_objectAtIndex_(v10, v19, v18 - 1);
    v22 = objc_msgSend_estimatedByteSizeOfElement_(v10, v21, v20);

    estimatedByteSize = self->_estimatedByteSize;
    v26 = estimatedByteSize >= v22;
    v27 = estimatedByteSize - v22;
    if (!v26)
    {
      v27 = 1;
    }

    self->_estimatedByteSize = v27;
    objc_msgSend_removeLastObject(v10, v23, v24);
    v30 = objc_msgSend_count(v10, v28, v29);
    v33 = objc_msgSend_segmentCount(self, v31, v32);
    objc_msgSend_setRange_forSegmentIndex_(self, v34, Range, v30, v33 - 1);
    if (!objc_msgSend_count(v10, v35, v36))
    {
      objc_msgSend_removeLastObject(self->_segments, v37, v38);
      objc_msgSend_removeLastRange(self, v39, v40);
    }
  }
}

- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4
{
  v36 = a4;
  objc_msgSend_willModify(self, v6, v7);
  ++self->_mutations;
  v11 = objc_msgSend_segmentIndexForElementIndex_segmentIndexGuess_(self, v8, a3, 0);
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = objc_msgSend_count(self->_segments, v9, v10);
  }

  v13 = objc_msgSend_segmentAtIndex_(self, v9, v11);
  if (!v13)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSPAbstractMutableLargeArray replaceObjectAtIndex:withObject:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 732, 0, "invalid nil value for '%{public}s'", "segment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  v21 = objc_msgSend_rangeOfSegmentIndex_(self, v12, v11);
  v25 = objc_msgSend_convertElementToSegmentElement_(self, v22, v36);
  if (!v25)
  {
    v25 = objc_msgSend_null(MEMORY[0x277CBEB68], v23, v24);
  }

  v26 = a3 - v21;
  v27 = objc_msgSend_objectAtIndex_(v13, v23, v26);
  v29 = objc_msgSend_estimatedByteSizeOfElement_(v13, v28, v27);

  estimatedByteSize = self->_estimatedByteSize;
  v32 = estimatedByteSize >= v29;
  v33 = estimatedByteSize - v29;
  if (v32)
  {
    v34 = v33;
  }

  else
  {
    v34 = 1;
  }

  self->_estimatedByteSize = v34;
  self->_estimatedByteSize = v34 + objc_msgSend_estimatedByteSizeOfElement_(v13, v30, v25);
  objc_msgSend_replaceObjectAtIndex_withObject_(v13, v35, v26, v25);
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  var0 = a3->var0;
  if (!a3->var0)
  {
    a3->var2 = &self->_mutations;
  }

  v10 = objc_msgSend_count(self, a2, a3);
  v12 = v10 - var0;
  if (v10 <= var0)
  {
    return 0;
  }

  v43 = var0;
  v44 = a4;
  if (v12 >= a5)
  {
    v12 = a5;
  }

  v41 = a3;
  v42 = v12;
  if (v12)
  {
    v13 = 0;
    v14 = 0x277D81000uLL;
    v16 = v43;
    v15 = a4;
    v17 = v12;
    do
    {
      v13 = objc_msgSend_segmentIndexForElementIndex_segmentIndexGuess_(self, v11, v16, v13);
      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = *(v14 + 336);
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPAbstractMutableLargeArray countByEnumeratingWithState:objects:count:]");
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 774, 0, "invalid index during fast enumerate");

        objc_msgSend_logBacktraceThrottled(*(v14 + 336), v24, v25);
      }

      else
      {
        v26 = objc_msgSend_rangeOfSegmentIndex_(self, v18, v13);
        v27 = v16 - v26;
        if (v16 >= v26)
        {
          v29 = objc_msgSend_segmentAtIndex_(self, v11, v13);
          if (!v29)
          {
            v30 = MEMORY[0x277D81150];
            v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSPAbstractMutableLargeArray countByEnumeratingWithState:objects:count:]");
            v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v34, v31, v33, 780, 0, "invalid nil value for '%{public}s'", "segment");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
          }

          v37 = objc_msgSend_objectAtIndex_(v29, v28, v27);
          v39 = objc_msgSend_convertSegmentElementToElement_(self, v38, v37);
          *v15 = v39;

          v14 = 0x277D81000;
        }
      }

      ++v15;
      ++v16;
      --v17;
    }

    while (v17);
  }

  result = v42;
  v41->var0 = v42 + v43;
  v41->var1 = v44;
  return result;
}

- (void)removeAllObjects
{
  if (objc_msgSend_count(self, a2, v2))
  {
    objc_msgSend_willModify(self, v4, v5);
    ++self->_mutations;
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    segments = self->_segments;
    self->_segments = v6;

    sub_276AB2E74(&self->_segmentRanges.__begin_, 0);
    self->_estimatedByteSize = 0;
  }
}

- (void)removeObjectsInRange:(_NSRange)a3
{
  if (a3.length)
  {
    length = a3.length;
    location = a3.location;
    do
    {
      objc_msgSend_removeObjectAtIndex_(self, a2, location);
      --length;
    }

    while (length);
  }
}

- (id)firstObject
{
  if (objc_msgSend_count(self, a2, v2))
  {
    v5 = objc_msgSend_segmentAtIndex_(self, v4, 0);
    v7 = objc_msgSend_objectAtIndex_(v5, v6, 0);
    v9 = objc_msgSend_convertSegmentElementToElement_(self, v8, v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)lastObject
{
  v4 = objc_msgSend_segmentCount(self, a2, v2);
  v8 = 0;
  if (objc_msgSend_count(self, v5, v6) && v4)
  {
    v9 = objc_msgSend_segmentAtIndex_(self, v7, v4 - 1);
    v12 = objc_msgSend_count(v9, v10, v11);
    if (v12)
    {
      v14 = objc_msgSend_objectAtIndex_(v9, v13, v12 - 1);
      v8 = objc_msgSend_convertSegmentElementToElement_(self, v15, v14);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)shouldBisectForCount:(unint64_t)a3 byteSize:(unint64_t)a4 cost:(unint64_t)a5
{
  if (a3 <= 1)
  {
    if (objc_msgSend_maxSegmentSize(self, a2, a3, a4, a5) < a4)
    {
      if (UnsafePointer == -1)
      {
        LOBYTE(v7) = 0;
        return v7;
      }

      sub_276BD619C();
    }

    LOBYTE(v7) = 0;
    return v7;
  }

  if (objc_msgSend_maxSegmentElementCount(self, a2, a3) >= a3 && objc_msgSend_maxSegmentSize(self, v9, v10) >= a4)
  {
    v7 = objc_msgSend_maxSegmentCost(self, v11, v12);
    if (v7)
    {
      LOBYTE(v7) = objc_msgSend_maxSegmentCost(self, v13, v14) < a5;
    }
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)bisectSegmentIfNeeded:(unint64_t)a3
{
  if ((objc_msgSend_disableSegmentation(self, a2, a3) & 1) == 0)
  {
    objc_msgSend_rangeOfSegmentIndex_(self, v5, a3);
    v7 = v6;
    v42 = objc_msgSend_segmentAtIndex_(self, v6, a3);
    v10 = objc_msgSend_estimatedByteSize(v42, v8, v9);
    v13 = objc_msgSend_estimatedCost(v42, v11, v12);
    if (objc_msgSend_shouldBisectForCount_byteSize_cost_(self, v14, v7, v10, v13))
    {
      if (!v42)
      {
        v17 = MEMORY[0x277D81150];
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSPAbstractMutableLargeArray bisectSegmentIfNeeded:]");
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 882, 0, "invalid nil value for '%{public}s'", "segment");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
      }

      self->_bisectedSegmentIdentifier = objc_msgSend_tsp_identifier(v42, v15, v16);
      self->_bisectedSegmentIndex = a3;
      v26 = objc_msgSend_count(v42, v24, v25);
      v28 = objc_msgSend_bisectAtIndex_(v42, v27, v26 >> 1);
      self->_bisectedSegmentIdentifier = 0;
      self->_bisectedSegmentIndex = 0x7FFFFFFFFFFFFFFFLL;
      v29 = a3 + 1;
      v31 = objc_msgSend_segmentAtIndex_(self, v30, a3 + 1);
      v34 = v31;
      if (v31)
      {
        v35 = objc_msgSend_tsp_identifier(v31, v32, v33);
      }

      else
      {
        v35 = 0x7FFFFFFFFFFFFFFFLL;
      }

      objc_msgSend_bisectSegmentIfNeeded_(self, v32, a3);
      while (v29 < objc_msgSend_segmentCount(self, v36, v37))
      {
        v39 = objc_msgSend_segmentAtIndex_(self, v38, v29);

        if (objc_msgSend_tsp_identifier(v39, v40, v41) == v35)
        {
          objc_msgSend_bisectSegmentIfNeeded_(self, v36, v29);
          v34 = v39;
          break;
        }

        ++v29;
        v34 = v39;
      }
    }
  }
}

- (BOOL)mergeSegmentIfNeededAtIndex:(unint64_t)a3
{
  if (self->_mergingSegmentIndex == 0x7FFFFFFFFFFFFFFFLL && (v5 = a3 + 1, a3 + 1 < objc_msgSend_segmentCount(self, a2, a3)))
  {
    self->_mergingSegmentIndex = a3;
    v7 = objc_msgSend_rangeOfSegmentIndex_(self, v6, a3);
    v9 = v8;
    objc_msgSend_rangeOfSegmentIndex_(self, v8, v5);
    v11 = v10;
    v13 = objc_msgSend_maxSegmentElementCount(self, v10, v12);
    v15 = 0;
    if (v9 < v13 >> 2 && v11 < v13 >> 1)
    {
      v16 = objc_msgSend_segmentAtIndex_(self, v14, a3);
      v18 = objc_msgSend_segmentAtIndex_(self, v17, v5);
      v21 = v18;
      v15 = 0;
      if (v16 && v18)
      {
        v22 = objc_msgSend_estimatedByteSize(v16, v19, v20);
        v25 = objc_msgSend_estimatedByteSize(v21, v23, v24);
        if (v25 + v22 >= objc_msgSend_maxSegmentSize(self, v26, v27) || objc_msgSend_maxSegmentCost(self, v28, v29) && (v32 = objc_msgSend_estimatedCost(v16, v30, v31), v35 = objc_msgSend_estimatedCost(v21, v33, v34), v35 + v32 >= objc_msgSend_maxSegmentCost(self, v36, v37)))
        {
          v15 = 0;
        }

        else
        {
          objc_msgSend_willModify(v16, v30, v31);
          objc_msgSend_willModify(v21, v38, v39);
          for (i = 0; i < objc_msgSend_count(v21, v40, v41); ++i)
          {
            v45 = objc_msgSend_objectAtIndex_(v21, v43, i);
            objc_msgSend_addObject_(v16, v46, v45);
          }

          while (objc_msgSend_count(v21, v43, v44))
          {
            objc_msgSend_removeLastObject(v21, v48, v49);
          }

          v50 = objc_msgSend_count(v16, v48, v49);
          objc_msgSend_setRange_forSegmentIndex_(self, v51, v7, v50, a3);
          objc_msgSend_removeRangeAtSegmentIndex_(self, v52, v5);
          objc_msgSend_removeObjectAtIndex_(self->_segments, v53, v5);
          v15 = 1;
        }
      }
    }
  }

  else
  {
    v15 = 0;
  }

  self->_mergingSegmentIndex = 0x7FFFFFFFFFFFFFFFLL;
  return v15;
}

- (void)largeArraySegmentDidBisectAtIndex:(unint64_t)a3 segments:(id)a4
{
  v69 = a4;
  if (!v69)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPAbstractMutableLargeArray largeArraySegmentDidBisectAtIndex:segments:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 966, 0, "invalid nil value for '%{public}s'", "segments");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  objc_msgSend_willModify(self, v5, v6);
  ++self->_mutations;
  v68 = objc_msgSend_objectAtIndexedSubscript_(v69, v14, 0);
  if (!v68)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSPAbstractMutableLargeArray largeArraySegmentDidBisectAtIndex:segments:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 972, 0, "invalid nil value for '%{public}s'", "head");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
  }

  bisectedSegmentIdentifier = self->_bisectedSegmentIdentifier;
  if (bisectedSegmentIdentifier == objc_msgSend_tsp_identifier(v68, v15, v16) && (j = self->_bisectedSegmentIndex, j != 0x7FFFFFFFFFFFFFFFLL))
  {
LABEL_12:
    v36 = objc_msgSend_rangeOfSegmentIndex_(self, v25, j);
    v39 = objc_msgSend_count(v68, v37, v38);
    objc_msgSend_setRange_forSegmentIndex_(self, v40, v36, v39, j);
    v43 = objc_msgSend_packageLocatorForSegments(self, v41, v42);
    v46 = objc_msgSend_packageLocator(v68, v44, v45);

    if (!v46)
    {
      objc_msgSend_willModify(v68, v47, v48);
      objc_msgSend_setPackageLocator_(v68, v49, v43);
    }

    for (i = 1; i < objc_msgSend_count(v69, v47, v48); ++i)
    {
      v52 = objc_msgSend_objectAtIndexedSubscript_(v69, v51, i);
      objc_msgSend_setPackageLocator_(v52, v53, v43);
      v56 = objc_msgSend_count(v52, v54, v55);
      v59 = objc_msgSend_count(self->_segments, v57, v58);
      v36 += v39;
      segments = self->_segments;
      if (j + i == v59)
      {
        v62 = objc_msgSend_referenceForObject_(TSPLazyReference, v60, v52);
        objc_msgSend_addObject_(segments, v63, v62);

        objc_msgSend_addRange_(self, v64, v36, v56);
      }

      else
      {
        v65 = objc_msgSend_referenceForObject_(TSPLazyReference, v60, v52);
        objc_msgSend_insertObject_atIndex_(segments, v66, v65, j + i);

        objc_msgSend_insertRange_atSegmentIndex_(self, v67, v36, v56, j + i);
      }

      v39 = v56;
    }
  }

  else
  {
    for (j = 0; j < objc_msgSend_count(self->_segments, v25, v26); ++j)
    {
      v29 = objc_msgSend_objectAtIndexedSubscript_(self->_segments, v28, j);
      v32 = objc_msgSend_tsp_identifier(v29, v30, v31);
      v35 = objc_msgSend_tsp_identifier(v68, v33, v34);

      if (v32 == v35)
      {
        if (j == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        goto LABEL_12;
      }
    }
  }
}

- (unint64_t)maxSegmentElementCount
{
  result = self->_maxSegmentElementCount;
  if (!result)
  {
    return ((0x4000000 * 0xCCCCCCCCCCCCCCCDLL) >> 64) >> 3;
  }

  return result;
}

- (void)setMaxSegmentSize:(unint64_t)a3 willModify:(BOOL)a4
{
  if (a4)
  {
    objc_msgSend_willModify(self, a2, a3);
  }

  self->_maxSegmentSize = a3;
}

- (unint64_t)maxSegmentSize
{
  if (self->_maxSegmentSize)
  {
    return self->_maxSegmentSize;
  }

  else
  {
    return 0x4000000;
  }
}

- (NSArray)allObjects
{
  v3 = [TSPLargeArrayWrapper alloc];
  v5 = objc_msgSend_initWithLargeArray_(v3, v4, self);

  return v5;
}

- (NSMutableArray)mutableArrayWrapper
{
  v3 = [TSPLargeArrayWrapper alloc];
  v5 = objc_msgSend_initWithLargeArray_(v3, v4, self);

  return v5;
}

- (id)segmentAtIndex:(unint64_t)a3
{
  v4 = objc_msgSend_objectAtIndex_(self->_segments, a2, a3);
  v59 = 0;
  v6 = objc_msgSend_objectAndReturnError_(v4, v5, &v59);
  v7 = v59;

  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (!v9)
  {
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v23 = objc_msgSend_domain(v7, v21, v22);
    v26 = objc_msgSend_code(v7, v24, v25);
    isRecoverable = objc_msgSend_tsp_isRecoverable(v7, v27, v28);
    v32 = objc_msgSend_tsp_hintsDescription(v7, v30, v31);
    v33 = v32;
    if (isRecoverable)
    {
      v34 = @"recoverable=YES, ";
    }

    else
    {
      v34 = &stru_2885C9BB8;
    }

    v56 = v32;
    v54 = v26;
    v55 = v34;
    TSUSetCrashReporterInfo();

    v35 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TSPAbstractMutableLargeArray segmentAtIndex:]", "[TSPAbstractMutableLargeArray segmentAtIndex:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm", 1085, v20, v23, v54, v55, v56, v7);
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm");
    v40 = objc_opt_class();
    v41 = NSStringFromClass(v40);
    v44 = objc_msgSend_domain(v7, v42, v43);
    v47 = objc_msgSend_code(v7, v45, v46);
    v58 = objc_msgSend_tsp_isRecoverable(v7, v48, v49);
    v57 = objc_msgSend_tsp_hintsDescription(v7, v50, v51);
    if (v58)
    {
      v53 = @"recoverable=YES, ";
    }

    else
    {
      v53 = &stru_2885C9BB8;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v52, v37, v39, 1085, 1, "Failed to load lazy reference with error: errorClass=%{public}@, domain=%{public}@, code=%zd, %{public}@hints=%{public}@ (%@) ", v41, v44, v47, v53, v57, v7);

    TSUCrashBreakpoint();
    abort();
  }

  objc_msgSend_setDelegate_(v6, v8, self);
  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSPAbstractMutableLargeArray segmentAtIndex:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 1087, 0, "invalid nil value for '%{public}s'", "segment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  return v6;
}

- (void)updateSegmentRangesAfterIndex:(unint64_t)a3
{
  if (objc_msgSend_segmentCount(self, a2, a3) > a3)
  {
    v6 = objc_msgSend_rangeOfSegmentIndex_(self, v5, a3);
    v8 = v7;
    v9 = a3 + 1;
    v11 = objc_msgSend_segmentCount(self, v7, v10);
    while (v9 < v11)
    {
      objc_msgSend_rangeOfSegmentIndex_(self, v12, v9);
      v14 = v13;
      v6 += v8;
      objc_msgSend_setRange_forSegmentIndex_(self, v13, v6, v13, v9++);
      v11 = objc_msgSend_segmentCount(self, v15, v16);
      v8 = v14;
    }
  }
}

- (void)enqueue:(id)a3
{
  v6 = a3;
  if (objc_msgSend_count(self, v4, v5))
  {
    objc_msgSend_insertObject_atIndex_(self, v6, v6, 0);
  }

  else
  {
    objc_msgSend_addObject_(self, v6, v6);
  }
}

- (id)pop
{
  v6 = objc_msgSend_lastObject(self, a2, v2);
  if (v6)
  {
    objc_msgSend_removeLastObject(self, v4, v5);
  }

  return v6;
}

- (unint64_t)estimatedByteSizeOfElementAtIndex:(unint64_t)a3
{
  if (!objc_msgSend_count(self->_segments, a2, a3))
  {
    return 0;
  }

  v6 = objc_msgSend_segmentIndexForElementIndex_segmentIndexGuess_(self, v5, a3, 0);
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = v6;
  v9 = objc_msgSend_rangeOfSegmentIndex_(self, v7, v6);
  v11 = a3 >= v9;
  v12 = a3 - v9;
  if (!v11)
  {
    return 0;
  }

  v16 = objc_msgSend_segmentAtIndex_(self, v10, v8);
  if (!v16)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSPAbstractMutableLargeArray estimatedByteSizeOfElementAtIndex:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 1154, 0, "invalid nil value for '%{public}s'", "segment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
  }

  v24 = objc_msgSend_objectAtIndex_(v16, v15, v12);
  v13 = objc_msgSend_estimatedByteSizeOfElement_(v16, v25, v24);

  return v13;
}

- (unsigned)delayedArchivingPriority
{
  delayedArchivingPriority = self->_delayedArchivingPriority;
  if (!delayedArchivingPriority)
  {
    v4.receiver = self;
    v4.super_class = TSPAbstractMutableLargeArray;
    return [(TSPObject *)&v4 delayedArchivingPriority];
  }

  return delayedArchivingPriority;
}

- (void)loadFromUnarchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v5 = objc_msgSend_messageWithDescriptor_(v7, v4, off_2812FC248[78]);

  objc_msgSend_loadFromLargeArrayMessage_unarchiver_(self, v6, v5, v7);
}

- (void)saveToArchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v4, sub_276AB5148, off_2812FC248[78]);

  objc_msgSend_saveToLargeArrayMessage_archiver_(self, v6, v5, v7);
}

- (void)saveToLargeArrayMessage:(void *)a3 archiver:(id)a4
{
  v46 = a4;
  if (self->_storeOutsideObjectArchive)
  {
    *(a3 + 4) |= 0x10u;
    *(a3 + 93) = 1;
  }

  if (self->_maxSegmentElementCount)
  {
    v8 = objc_msgSend_maxSegmentElementCount(self, v6, v7);
    *(a3 + 4) |= 1u;
    *(a3 + 9) = v8;
  }

  if (self->_maxSegmentSize)
  {
    v9 = objc_msgSend_maxSegmentSize(self, v6, v7);
    *(a3 + 4) |= 2u;
    *(a3 + 10) = v9;
  }

  if (self->_maxSegmentCost)
  {
    v10 = objc_msgSend_maxSegmentCost(self, v6, v7);
    *(a3 + 4) |= 0x40u;
    *(a3 + 13) = v10;
  }

  if (objc_msgSend_shouldDelayArchiving(self, v6, v7))
  {
    shouldDelayArchiving = objc_msgSend_shouldDelayArchiving(self, v11, v12);
    *(a3 + 4) |= 8u;
    *(a3 + 92) = shouldDelayArchiving;
  }

  if (objc_msgSend_shouldDelayArchiving(self, v11, v12))
  {
    delayedArchivingPriority = self->_delayedArchivingPriority;
    if (delayedArchivingPriority)
    {
      *(a3 + 4) |= 4u;
      *(a3 + 22) = delayedArchivingPriority;
    }
  }

  estimatedByteSize = self->_estimatedByteSize;
  if (estimatedByteSize)
  {
    *(a3 + 4) |= 0x20u;
    *(a3 + 12) = estimatedByteSize;
  }

  for (i = 0; i < objc_msgSend_segmentCount(self, v14, v15); ++i)
  {
    v21 = objc_msgSend_objectAtIndex_(self->_segments, v19, i);
    if (!v21)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSPAbstractMutableLargeArray saveToLargeArrayMessage:archiver:]");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 1220, 0, "invalid nil value for '%{public}s'", "segmentReference");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
    }

    v29 = *(a3 + 8);
    if (!v29)
    {
      v31 = *(a3 + 15);
LABEL_25:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3 + 12, v31 + 1);
      v29 = *(a3 + 8);
      v31 = *v29;
      goto LABEL_26;
    }

    v30 = *(a3 + 14);
    v31 = *v29;
    if (v30 < *v29)
    {
      *(a3 + 14) = v30 + 1;
      objc_msgSend_setStrongLazyReference_message_(v46, v20, v21, *&v29[2 * v30 + 2]);
      goto LABEL_27;
    }

    if (v31 == *(a3 + 15))
    {
      goto LABEL_25;
    }

LABEL_26:
    *v29 = v31 + 1;
    v32 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*(a3 + 6));
    v33 = *(a3 + 14);
    v34 = *(a3 + 8) + 8 * v33;
    *(a3 + 14) = v33 + 1;
    *(v34 + 8) = v32;
    objc_msgSend_setStrongLazyReference_message_(v46, v35, v21, v32);
LABEL_27:
  }

  begin = self->_segmentRanges.__begin_;
  end = self->_segmentRanges.__end_;
  while (begin != end)
  {
    location = begin->location;
    length = begin->length;
    v40 = *(a3 + 5);
    if (!v40)
    {
      v42 = *(a3 + 9);
LABEL_35:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3 + 6, v42 + 1);
      v40 = *(a3 + 5);
      v42 = *v40;
      goto LABEL_36;
    }

    v41 = *(a3 + 8);
    v42 = *v40;
    if (v41 < *v40)
    {
      *(a3 + 8) = v41 + 1;
      v43 = *&v40[2 * v41 + 2];
      goto LABEL_37;
    }

    if (v42 == *(a3 + 9))
    {
      goto LABEL_35;
    }

LABEL_36:
    *v40 = v42 + 1;
    v43 = google::protobuf::Arena::CreateMaybeMessage<TSP::Range>(*(a3 + 3));
    v44 = *(a3 + 8);
    v45 = *(a3 + 5) + 8 * v44;
    *(a3 + 8) = v44 + 1;
    *(v45 + 8) = v43;
LABEL_37:
    v48.location = location;
    v48.length = length;
    TSPNSRangeCopyToMessage(v48, v43);
    ++begin;
  }
}

- (void)loadFromLargeArrayMessage:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v9 = objc_msgSend_delegate(v6, v7, v8);
  if (objc_opt_respondsToSelector())
  {
    v12 = objc_msgSend_component(v9, v10, v11);
    self->_storeOutsideObjectArchive = objc_msgSend_isStoredOutsideObjectArchive(v12, v13, v14);
  }

  v15 = *(a3 + 4);
  if (!self->_storeOutsideObjectArchive && (v15 & 0x10) != 0)
  {
    self->_storeOutsideObjectArchive = *(a3 + 93);
  }

  if ((v15 & 8) != 0)
  {
    self->_shouldDelayArchiving = *(a3 + 92);
    if ((v15 & 4) == 0)
    {
LABEL_8:
      if ((v15 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((v15 & 4) == 0)
  {
    goto LABEL_8;
  }

  self->_delayedArchivingPriority = *(a3 + 22);
  v15 = *(a3 + 4);
  if ((v15 & 1) == 0)
  {
LABEL_9:
    if ((v15 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_maxSegmentElementCount = *(a3 + 9);
  if ((v15 & 2) == 0)
  {
LABEL_10:
    if ((v15 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_maxSegmentSize = *(a3 + 10);
  if ((v15 & 0x40) == 0)
  {
LABEL_11:
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_23:
  self->_maxSegmentCost = *(a3 + 13);
  if ((v15 & 0x20) != 0)
  {
LABEL_12:
    self->_estimatedByteSize = *(a3 + 12);
  }

LABEL_13:
  if (*(a3 + 14) >= 1)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_276AB4980;
    v22[3] = &unk_27A6E4220;
    v22[4] = self;
    v16 = v6;
    v17 = objc_opt_class();
    objc_msgSend_readRepeatedLazyReferenceMessage_class_protocol_completion_(v16, v18, a3 + 48, v17, 0, v22);
  }

  if (*(a3 + 8) >= 1)
  {
    v19 = 0;
    do
    {
      v21 = 0uLL;
      *&v21 = TSPNSRangeFromMessage(*(*(a3 + 5) + 8 * v19 + 8));
      *(&v21 + 1) = v20;
      sub_276AB0630(&self->_segmentRanges, &v21);
      ++v19;
    }

    while (v19 < *(a3 + 8));
  }
}

- (id).cxx_construct
{
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 13) = 0;
  return self;
}

- (id)createArraySegment
{
  v3 = objc_opt_class();
  v6 = objc_alloc(objc_msgSend_arraySegmentClass(v3, v4, v5));
  shouldDelayArchiving = objc_msgSend_shouldDelayArchiving(self, v7, v8);
  v12 = objc_msgSend_context(self, v10, v11);
  shouldDelayArchiving_context = objc_msgSend_initWithDelegate_shouldDelayArchiving_context_(v6, v13, self, shouldDelayArchiving, v12);

  v17 = objc_msgSend_storeOutsideObjectArchive(self, v15, v16);
  objc_msgSend_setStoreOutsideObjectArchive_(shouldDelayArchiving_context, v18, v17);
  v21 = objc_msgSend_delayedArchivingPriority(self, v19, v20);
  objc_msgSend_setDelayedArchivingPriority_(shouldDelayArchiving_context, v22, v21);

  return shouldDelayArchiving_context;
}

+ (Class)arraySegmentClass
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSPAbstractMutableLargeArray(Protected) arraySegmentClass]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 1336, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v16 = objc_msgSend_stringWithFormat_(v12, v15, @"Abstract method not overridden by %@: %s", v14, "+[TSPAbstractMutableLargeArray(Protected) arraySegmentClass]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v17, *MEMORY[0x277CBE658], v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (void)setMaxSegmentElementCount:(unint64_t)a3 willModify:(BOOL)a4
{
  if (a4)
  {
    objc_msgSend_willModify(self, a2, a3);
    ++self->_mutations;
    v8 = self->_maxSegmentElementCount - 1;
    self->_maxSegmentElementCount = a3;
    if (v8 >= a3 && objc_msgSend_count(self->_segments, v6, v7))
    {
      v10 = 0;
      do
      {
        objc_msgSend_bisectSegmentIfNeeded_(self, v9, v10++);
      }

      while (v10 < objc_msgSend_count(self->_segments, v11, v12));
    }
  }

  else
  {
    self->_maxSegmentElementCount = a3;
  }
}

@end