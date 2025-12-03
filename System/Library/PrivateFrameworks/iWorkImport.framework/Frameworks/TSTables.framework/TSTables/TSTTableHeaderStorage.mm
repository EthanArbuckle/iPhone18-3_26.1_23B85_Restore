@interface TSTTableHeaderStorage
- (NSIndexSet)populatedIndexes;
- (TSTTableHeaderStorage)initWithBucket:(id)bucket owner:(id)owner;
- (TSTTableHeaderStorage)initWithOwner:(id)owner;
- (double)sizeAtIndex:(unsigned int)index;
- (id)cellStyleAtIndex:(unsigned int)index;
- (id)initFromArchive:(const void *)archive unarchiver:(id)unarchiver owner:(id)owner;
- (id)metadataAtIndex:(unsigned int)index hidingAction:(unsigned __int8)action defaultSize:(double)size uuid:(TSKUIDStruct)uuid;
- (id)textStyleAtIndex:(unsigned int)index;
- (unint64_t)archivingCompatibilityVersion;
- (unint64_t)cellCountAtIndex:(unsigned int)index;
- (unint64_t)count;
- (unint64_t)defaultStyleHandlesAtIndex:(unsigned int)index outCellStyleHandle:(id *)handle outTextStyleHandle:(id *)styleHandle;
- (unint64_t)defaultStylesAtIndex:(unsigned int)index outCellStyle:(id *)style outTextStyle:(id *)textStyle;
- (unint64_t)totalCellCount;
- (unsigned)hidingStateAtIndex:(unsigned int)index;
- (unsigned)maxIndex;
- (unsigned)minIndex;
- (void)decrementCellCountAtIndex:(unsigned int)index byAmount:(unint64_t)amount;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)forceLoadHeaders;
- (void)incrementCellCountAtIndex:(unsigned int)index byAmount:(unint64_t)amount;
- (void)moveIndexRange:(_NSRange)range toIndex:(unsigned int)index;
- (void)removeIndexesAtIndex:(unsigned int)index count:(unsigned int)count;
- (void)reset;
- (void)resetAllCellCounts;
- (void)setCellStyle:(id)style atIndex:(unsigned int)index;
- (void)setHidingState:(unsigned __int8)state atIndex:(unsigned int)index;
- (void)setSize:(double)size atIndex:(unsigned int)index;
- (void)setTextStyle:(id)style atIndex:(unsigned int)index;
- (void)shiftIndexesBackAtIndex:(unsigned int)index count:(unsigned int)count;
- (void)shiftIndexesForwardAtIndex:(unsigned int)index count:(unsigned int)count;
- (void)swapIndex:(unsigned int)index withIndex:(unsigned int)withIndex;
- (void)updateHeaderAtIndex:(unsigned int)index fromMetadata:(id)metadata;
- (void)updateStylesWithBlock:(id)block;
@end

@implementation TSTTableHeaderStorage

- (TSTTableHeaderStorage)initWithOwner:(id)owner
{
  ownerCopy = owner;
  v17.receiver = self;
  v17.super_class = TSTTableHeaderStorage;
  v9 = [(TSTTableHeaderStorage *)&v17 initWithOwner:ownerCopy];
  if (v9)
  {
    v10 = objc_msgSend_context(ownerCopy, v5, v6, v7, v8);
    v11 = sub_2211AC86C([TSTTableHeaderStorageBucket alloc], v10, 0, 0x10000);
    buckets = v9->_buckets;
    v13 = v9->_buckets[0];
    v9->_buckets[0] = v11;

    for (i = 1; i != 16; ++i)
    {
      v15 = buckets[i];
      buckets[i] = 0;
    }

    v9->_bucketCount = 1;
  }

  return v9;
}

- (TSTTableHeaderStorage)initWithBucket:(id)bucket owner:(id)owner
{
  bucketCopy = bucket;
  ownerCopy = owner;
  v12 = objc_msgSend_initWithOwner_(self, v9, ownerCopy, v10, v11);
  if (v12)
  {
    sub_2216F746C(bucketCopy, 0, 0x10000);
    objc_storeStrong(v12->_buckets, bucket);
    v12->_bucketCount = 1;
  }

  return v12;
}

- (id)initFromArchive:(const void *)archive unarchiver:(id)unarchiver owner:(id)owner
{
  unarchiverCopy = unarchiver;
  ownerCopy = owner;
  v31.receiver = self;
  v31.super_class = TSTTableHeaderStorage;
  v13 = [(TSTTableHeaderStorage *)&v31 initWithOwner:ownerCopy];
  if (v13)
  {
    if (*(archive + 12) != 1)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTTableHeaderStorage initFromArchive:unarchiver:owner:]", v11, v12);
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v17, v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 148, 0, "Don't know how to handle this bucket hash function!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    }

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_2211A9F98;
    v29[3] = &unk_27845D8D8;
    v30 = v13;
    v25 = unarchiverCopy;
    v26 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v25, v27, archive + 24, v26, 0, v29);
  }

  return v13;
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 1u;
  *(archive + 12) = 1;
  bucketCount = self->_bucketCount;
  if (bucketCount < 2)
  {
    v12 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v6, self->_buckets[0], v7, v8);
  }

  else
  {
    if (bucketCount != 16)
    {
      TSUSetCrashReporterInfo();
      v16 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTTableHeaderStorage encodeToArchive:archiver:]", v18, v19, "[TSTTableHeaderStorage encodeToArchive:archiver:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", 173);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v22, v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v25, v20, v24, 173, 1, "Bad bucket count during archiving!");

      TSUCrashBreakpoint();
      abort();
    }

    objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v6, 0xA000000000003, @"TSTExpandedTables", v8);
    v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, self->_buckets, 16, v11);
  }

  v15 = v12;
  objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v13, v12, archive + 24, v14);
}

- (unint64_t)archivingCompatibilityVersion
{
  if (self->_bucketCount <= 1)
  {
    return 0x300020000000ALL;
  }

  else
  {
    return 0xA000000000003;
  }
}

- (double)sizeAtIndex:(unsigned int)index
{
  v5 = *&index;
  if (index >= 0x100000)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableHeaderStorage sizeAtIndex:]", v3, v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 193, 0, "Unexpected header bucket index: %u!", v5);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
    return 0.0;
  }

  v17 = self->_buckets[HIWORD(index)];
  if (!v17)
  {
    return 0.0;
  }

  return sub_2216F6E0C(v17);
}

- (void)setSize:(double)size atIndex:(unsigned int)index
{
  v6 = *&index;
  sub_2211A9790(self, *&index, *&index, v4, v5);
  if (v6 < 0x100000)
  {
    v23 = self->_buckets[WORD1(v6)];
  }

  else
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTableHeaderStorage setSize:atIndex:]", v10, v11);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 200, 0, "Unexpected header bucket index: %u!", v6);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    v23 = 0;
  }

  sub_2216F6E58(v23, v6, size);
}

- (unsigned)hidingStateAtIndex:(unsigned int)index
{
  v5 = *&index;
  if (index >= 0x100000)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableHeaderStorage hidingStateAtIndex:]", v3, v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 206, 0, "Unexpected header bucket index: %u!", v5);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
    return 0;
  }

  v17 = self->_buckets[HIWORD(index)];
  if (!v17)
  {
    return 0;
  }

  return sub_2216F6F28(v17);
}

- (void)setHidingState:(unsigned __int8)state atIndex:(unsigned int)index
{
  v5 = *&index;
  stateCopy = state;
  sub_2211A9790(self, *&index, state, *&index, v4);
  if (v5 < 0x100000)
  {
    v22 = self->_buckets[WORD1(v5)];
  }

  else
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableHeaderStorage setHidingState:atIndex:]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 213, 0, "Unexpected header bucket index: %u!", v5);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    v22 = 0;
  }

  sub_2216F6F74(v22, stateCopy, v5, v9, v10);
}

- (id)cellStyleAtIndex:(unsigned int)index
{
  v5 = *&index;
  if (index < 0x100000)
  {
    v17 = self->_buckets[HIWORD(index)];
    if (v17)
    {
      v17 = sub_2216F7044(v17);
    }
  }

  else
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableHeaderStorage cellStyleAtIndex:]", v3, v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 219, 0, "Unexpected header bucket index: %u!", v5);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
    v17 = 0;
  }

  return v17;
}

- (void)setCellStyle:(id)style atIndex:(unsigned int)index
{
  v4 = *&index;
  styleCopy = style;
  sub_2211A9790(self, v4, v6, v7, v8);
  if (v4 < 0x100000)
  {
    v23 = self->_buckets[v4 >> 16];
  }

  else
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTableHeaderStorage setCellStyle:atIndex:]", v10, v11);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 226, 0, "Unexpected header bucket index: %u!", v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    v23 = 0;
  }

  sub_2211ACD34(v23, styleCopy, v4);
}

- (id)textStyleAtIndex:(unsigned int)index
{
  v5 = *&index;
  if (index < 0x100000)
  {
    v17 = self->_buckets[HIWORD(index)];
    if (v17)
    {
      v17 = sub_2211ACE6C(v17, *&index, *&index, v3, v4);
    }
  }

  else
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableHeaderStorage textStyleAtIndex:]", v3, v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 232, 0, "Unexpected header bucket index: %u!", v5);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
    v17 = 0;
  }

  return v17;
}

- (void)setTextStyle:(id)style atIndex:(unsigned int)index
{
  v4 = *&index;
  styleCopy = style;
  sub_2211A9790(self, v4, v6, v7, v8);
  if (v4 < 0x100000)
  {
    v23 = self->_buckets[v4 >> 16];
  }

  else
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTableHeaderStorage setTextStyle:atIndex:]", v10, v11);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 239, 0, "Unexpected header bucket index: %u!", v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    v23 = 0;
  }

  sub_2211ACF04(v23, styleCopy, v4);
}

- (unint64_t)defaultStylesAtIndex:(unsigned int)index outCellStyle:(id *)style outTextStyle:(id *)textStyle
{
  v7 = *&index;
  if (index < 0x100000)
  {
    v19 = self->_buckets[HIWORD(index)];
  }

  else
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableHeaderStorage defaultStylesAtIndex:outCellStyle:outTextStyle:]", style, textStyle);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 247, 0, "Unexpected header bucket index: %u!", v7);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
    v19 = 0;
  }

  return sub_2216F7128(v19, v7, style, textStyle);
}

- (unint64_t)defaultStyleHandlesAtIndex:(unsigned int)index outCellStyleHandle:(id *)handle outTextStyleHandle:(id *)styleHandle
{
  v7 = *&index;
  if (index < 0x100000)
  {
    v19 = self->_buckets[HIWORD(index)];
  }

  else
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableHeaderStorage defaultStyleHandlesAtIndex:outCellStyleHandle:outTextStyleHandle:]", handle, styleHandle);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 255, 0, "Unexpected header bucket index: %u!", v7);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
    v19 = 0;
  }

  return sub_2216F71C8(v19, v7, handle, styleHandle);
}

- (void)updateStylesWithBlock:(id)block
{
  blockCopy = block;
  if (self->_bucketCount)
  {
    v4 = 0;
    do
    {
      sub_2211AD178(self->_buckets[v4++], blockCopy);
    }

    while (v4 < self->_bucketCount);
  }
}

- (id)metadataAtIndex:(unsigned int)index hidingAction:(unsigned __int8)action defaultSize:(double)size uuid:(TSKUIDStruct)uuid
{
  upper = uuid._upper;
  lower = uuid._lower;
  actionCopy = action;
  v10 = *&index;
  if (index >= 0x100000)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableHeaderStorage metadataAtIndex:hidingAction:defaultSize:uuid:]", action, uuid._lower);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 273, 0, "Unexpected header bucket index: %u!", v10);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
LABEL_5:
    v24 = [TSTColumnRowMetadata alloc];
    v23 = objc_msgSend_initWithSize_hidingAction_cellStyle_textStyle_columnRowUID_(v24, v25, actionCopy, 0, 0, lower, upper, size);
    goto LABEL_6;
  }

  v22 = self->_buckets[HIWORD(index)];
  if (!v22)
  {
    goto LABEL_5;
  }

  v23 = sub_2216F70B4(v22, *&index, action, uuid._lower, uuid._upper);
  if (!v23)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v23;
}

- (void)updateHeaderAtIndex:(unsigned int)index fromMetadata:(id)metadata
{
  v4 = *&index;
  metadataCopy = metadata;
  sub_2211A9790(self, v4, v6, v7, v8);
  if (v4 < 0x100000)
  {
    v23 = self->_buckets[v4 >> 16];
  }

  else
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTableHeaderStorage updateHeaderAtIndex:fromMetadata:]", v10, v11);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 295, 0, "Unexpected header bucket index: %u!", v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    v23 = 0;
  }

  sub_2211AD03C(v23, v4, metadataCopy);
}

- (void)removeIndexesAtIndex:(unsigned int)index count:(unsigned int)count
{
  if (count + index > index)
  {
    countCopy = count;
    v6 = *&index;
    do
    {
      if (v6 < 0x100000)
      {
        v19 = self->_buckets[WORD1(v6)];
      }

      else
      {
        v8 = MEMORY[0x277D81150];
        v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableHeaderStorage removeIndexesAtIndex:count:]", *&count, v4);
        v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v11, v12);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 304, 0, "Unexpected header bucket index: %u!", v6);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
        v19 = 0;
      }

      sub_2211ADC14(v19, 0, v6);
      v6 = (v6 + 1);
      --countCopy;
    }

    while (countCopy);
  }
}

- (void)shiftIndexesForwardAtIndex:(unsigned int)index count:(unsigned int)count
{
  v5 = *&count;
  v6 = *&index;
  buckets = self->_buckets;
  v9 = sub_2211AD968(self->_buckets[0], *&index, *&count, *&count, v4);
  bucketCount = self->_bucketCount;
  if (bucketCount == 1)
  {
    v34 = v9;
    if (objc_msgSend_count(v9, v10, v11, v12, v13))
    {
      sub_2211A9944(self, v10, v11, v12, v13);
    }

    bucketCount = self->_bucketCount;
    v9 = v34;
  }

  if (bucketCount >= 2)
  {
    v15 = 1;
    v16 = v9;
    do
    {
      p_isa = &buckets[v15]->super.super.isa;
      sub_2211ADE0C(p_isa, v16);
      v35 = sub_2211AD968(p_isa, v6, v5, v18, v19);

      ++v15;
      v9 = v35;
      v16 = v35;
    }

    while (v15 < self->_bucketCount);
  }

  v36 = v9;
  if (objc_msgSend_count(v9, v10, v11, v12, v13))
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSTTableHeaderStorage shiftIndexesForwardAtIndex:count:]", v21, v22);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v26, v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v28, 326, 0, "Headers spilled out of our last bucket during shift!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }
}

- (void)shiftIndexesBackAtIndex:(unsigned int)index count:(unsigned int)count
{
  v5 = *&count;
  v6 = *&index;
  bucketCount = self->_bucketCount;
  if (bucketCount == 1)
  {
    v8 = sub_2211AD740(self->_buckets[0], *&index, *&count, *&count, v4);
  }

  else if (bucketCount - 1 < 0)
  {
    v8 = 0;
  }

  else
  {
    v9 = 0;
    p_owner = &self->super._owner;
    do
    {
      p_isa = &p_owner[bucketCount]->super.isa;
      sub_2211ADE0C(p_isa, v9);
      v28 = sub_2211AD740(p_isa, v6, v5, v12, v13);

      --bucketCount;
      v8 = v28;
      v9 = v28;
    }

    while (bucketCount > 0);
  }

  v29 = v8;
  if (objc_msgSend_count(v8, a2, *&index, *&count, v4))
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTTableHeaderStorage shiftIndexesBackAtIndex:count:]", v15, v16);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 344, 0, "Headers spilled below zero!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }
}

- (void)swapIndex:(unsigned int)index withIndex:(unsigned int)withIndex
{
  v5 = *&withIndex;
  v6 = *&index;
  v8 = sub_2211A9AE4(&self->super.super.isa, *&index, *&index, *&withIndex, v4);
  v12 = v8;
  if (v8)
  {
    v13 = sub_2211ADAF8(v8, v6, v9, v10, v11);
    if (v13)
    {
      v26 = v13;
      sub_2211ADC14(v12, 0, v6);
      v13 = v26;
    }
  }

  else
  {
    v13 = 0;
  }

  v27 = v13;
  v14 = sub_2211A9AE4(&self->super.super.isa, v5, v9, v10, v11);
  v18 = v14;
  if (v14 && (sub_2211ADAF8(v14, v5, v15, v16, v17), (v19 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    sub_2211ADC14(v18, 0, v5);
    v20 = v27 != 0;
    v21 = 1;
    v22 = v19;
  }

  else
  {
    v22 = 0;
    if (!v27)
    {
      goto LABEL_19;
    }

    v21 = 0;
    v20 = 1;
  }

  if ((v5 | v6) >= 0x10000)
  {
    if (v6 <= v5)
    {
      v23 = v5;
    }

    else
    {
      v23 = v6;
    }

    sub_2211A9790(self, v23, v15, v16, v17);
  }

  if (v20)
  {
    v24 = sub_2211A9AE4(&self->super.super.isa, v5, v15, v16, v17);

    sub_2211ADC14(v24, v27, v5);
  }

  if (v21)
  {
    v25 = sub_2211A9AE4(&self->super.super.isa, v6, v15, v16, v17);

    sub_2211ADC14(v25, v22, v6);
  }

LABEL_19:
}

- (void)moveIndexRange:(_NSRange)range toIndex:(unsigned int)index
{
  location = range.location;
  if (LODWORD(range.location) < index && LODWORD(range.location) + LODWORD(range.length) > index)
  {
    TSUSetCrashReporterInfo();
    v4 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTTableHeaderStorage moveIndexRange:toIndex:]", v6, v7, "[TSTTableHeaderStorage moveIndexRange:toIndex:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", 399, location);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v13, v8, v12, 399, 1, "Move ranges cannot overlap!");

    TSUCrashBreakpoint();
    abort();
  }

  operator new();
}

- (unint64_t)cellCountAtIndex:(unsigned int)index
{
  v5 = *&index;
  if (index >= 0x100000)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableHeaderStorage cellCountAtIndex:]", v3, v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 441, 0, "Unexpected header bucket index: %u!", v5);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
    return 0;
  }

  v17 = self->_buckets[HIWORD(index)];
  if (!v17)
  {
    return 0;
  }

  return sub_2216F7268(v17);
}

- (void)decrementCellCountAtIndex:(unsigned int)index byAmount:(unint64_t)amount
{
  amountCopy = amount;
  v6 = *&index;
  if (index < 0x100000)
  {
    v18 = self->_buckets[HIWORD(index)];
  }

  else
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableHeaderStorage decrementCellCountAtIndex:byAmount:]", amount, v4);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 447, 0, "Unexpected header bucket index: %u!", v6);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
    v18 = 0;
  }

  sub_2216F7350(v18, v6, amountCopy);
}

- (void)incrementCellCountAtIndex:(unsigned int)index byAmount:(unint64_t)amount
{
  v6 = *&index;
  sub_2211A9790(self, *&index, *&index, amount, v4);
  if (v6 < 0x100000)
  {
    v22 = self->_buckets[WORD1(v6)];
  }

  else
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableHeaderStorage incrementCellCountAtIndex:byAmount:]", v9, v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableHeaderStorage.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 454, 0, "Unexpected header bucket index: %u!", v6);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    v22 = 0;
  }

  sub_2216F72A8(v22, v6, amount);
}

- (void)resetAllCellCounts
{
  if (self->_bucketCount)
  {
    v6 = 0;
    buckets = self->_buckets;
    do
    {
      sub_2211AD3C8(&buckets[v6++]->super.super.isa, a2, v2, v3, v4);
    }

    while (v6 < self->_bucketCount);
  }
}

- (unint64_t)totalCellCount
{
  if (!self->_bucketCount)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  buckets = self->_buckets;
  do
  {
    v7 += sub_2211AD5FC(buckets[v6++], a2, v2, v3, v4);
  }

  while (v6 < self->_bucketCount);
  return v7;
}

- (void)forceLoadHeaders
{
  if (self->_bucketCount)
  {
    v6 = 0;
    buckets = self->_buckets;
    do
    {
      sub_2216F73F8(buckets[v6++], a2, v2, v3, v4);
    }

    while (v6 < self->_bucketCount);
  }
}

- (void)reset
{
  if (self->_bucketCount)
  {
    v6 = 0;
    buckets = self->_buckets;
    do
    {
      sub_2216F7418(&buckets[v6++]->super.super.isa, a2, v2, v3, v4);
    }

    while (v6 < self->_bucketCount);
  }
}

- (unint64_t)count
{
  if (!self->_bucketCount)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  buckets = self->_buckets;
  do
  {
    v7 += sub_2216F6D84(buckets[v6++], a2, v2, v3, v4);
  }

  while (v6 < self->_bucketCount);
  return v7;
}

- (unsigned)minIndex
{
  buckets = self->_buckets;
  v11 = sub_2216F6D9C(self->_buckets[0], a2, v2, v3, v4);
  if (self->_bucketCount >= 2)
  {
    v12 = 1;
    do
    {
      v13 = sub_2216F6D9C(buckets[v12], v7, v8, v9, v10);
      if (v11 >= v13)
      {
        v11 = v13;
      }

      ++v12;
    }

    while (v12 < self->_bucketCount);
  }

  return v11;
}

- (unsigned)maxIndex
{
  buckets = self->_buckets;
  v11 = sub_2216F6DD4(self->_buckets[0], a2, v2, v3, v4);
  if (self->_bucketCount >= 2)
  {
    v12 = 1;
    do
    {
      v13 = sub_2216F6DD4(buckets[v12], v7, v8, v9, v10);
      if (v11 <= v13)
      {
        v11 = v13;
      }

      ++v12;
    }

    while (v12 < self->_bucketCount);
  }

  return v11;
}

- (NSIndexSet)populatedIndexes
{
  v10 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, v2, v3, v4);
  if (self->_bucketCount)
  {
    v11 = 0;
    do
    {
      v12 = sub_2211AC9D0(self->_buckets[v11], v6, v7, v8, v9);
      objc_msgSend_addIndexes_(v10, v13, v12, v14, v15);

      ++v11;
    }

    while (v11 < self->_bucketCount);
  }

  v16 = objc_alloc(MEMORY[0x277CCAA78]);
  v20 = objc_msgSend_initWithIndexSet_(v16, v17, v10, v18, v19);

  return v20;
}

@end