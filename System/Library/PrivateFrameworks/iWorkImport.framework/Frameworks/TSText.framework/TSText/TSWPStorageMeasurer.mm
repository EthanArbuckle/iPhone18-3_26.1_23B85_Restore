@interface TSWPStorageMeasurer
- (BOOL)containsStartOfRange:(_NSRange)range;
- (CGPoint)anchorPoint;
- (CGPoint)position;
- (CGRect)targetRectForCanvasRect:(CGRect)rect;
- (CGSize)maxSize;
- (CGSize)measuredSizeWithFlags:(unsigned int)flags;
- (CGSize)measuredSizeWithFlags:(unsigned int)flags minSize:(CGSize)size maxSize:(CGSize)maxSize;
- (CGSize)minSize;
- (TSWPStorageMeasurer)initWithStorage:(id)storage;
- (UIEdgeInsets)adjustedInsetsForTarget:(id)target;
- (double)maxAnchorInBlockDirection;
- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width target:(id)target outWidth:(double *)outWidth outGap:(double *)gap;
- (id)addPartitionableAttachmentLayout:(id)layout;
- (id)columnMetricsForCharIndex:(unint64_t)index outRange:(_NSRange *)range;
- (id)layoutForInlineDrawable:(id)drawable;
- (id)pLayoutWithMinSize:(CGSize)size maxSize:(CGSize)maxSize anchor:(CGPoint)anchor flags:(unsigned int)flags;
- (id)validatedLayoutForAnchoredDrawable:(id)drawable;
@end

@implementation TSWPStorageMeasurer

- (TSWPStorageMeasurer)initWithStorage:(id)storage
{
  storageCopy = storage;
  v8 = objc_msgSend_init(self, v6, v7);
  v9 = v8;
  if (v8)
  {
    objc_storeStrong((v8 + 8), storage);
    v10 = objc_opt_new();
    columns = v9->_columns;
    v9->_columns = v10;
  }

  return v9;
}

- (id)pLayoutWithMinSize:(CGSize)size maxSize:(CGSize)maxSize anchor:(CGPoint)anchor flags:(unsigned int)flags
{
  y = anchor.y;
  x = anchor.x;
  height = maxSize.height;
  width = maxSize.width;
  v11 = size.height;
  v12 = size.width;
  if (objc_msgSend_length(self->_storage, a2, *&flags))
  {
    self->_minSize.width = v12;
    self->_minSize.height = v11;
    self->_maxSize.width = width;
    self->_maxSize.height = height;
    self->_flags = flags;
    self->_anchor.x = x;
    self->_anchor.y = y;
    v14 = [TSWPLayoutManager alloc];
    v16 = objc_msgSend_initWithStorage_owner_(v14, v15, self->_storage, self);
    v18 = objc_msgSend_layOutIntoTarget_withLayoutState_outSync_(v16, v17, self, 0, 0);
    v21 = objc_msgSend_columns(self, v19, v20);
    v24 = objc_msgSend_count(v21, v22, v23);

    if (v24 != 1)
    {
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSWPStorageMeasurer pLayoutWithMinSize:maxSize:anchor:flags:]");
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
      v33 = objc_msgSend_columns(self, v31, v32);
      v36 = objc_msgSend_count(v33, v34, v35);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v37, v28, v30, 844, 0, "Invalid column count: %lu", v36);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39);
    }

    v40 = objc_msgSend_columns(self, v25, v26);
    v43 = objc_msgSend_firstObject(v40, v41, v42);

    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v46 = objc_msgSend_columns(self, v44, v45);
    objc_msgSend_removeAllObjects(v46, v47, v48);

    v49 = *MEMORY[0x277CBF3A8];
    self->_minSize = *MEMORY[0x277CBF3A8];
    self->_maxSize = v49;
    self->_flags = 0;
    self->_anchor = *MEMORY[0x277CBF348];
  }

  else
  {
    v43 = 0;
  }

  return v43;
}

- (CGSize)measuredSizeWithFlags:(unsigned int)flags
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  v5 = objc_msgSend_pLayoutWithMinSize_maxSize_anchor_flags_(self, a2, flags | 0x1000, *MEMORY[0x277CBF3A8], v4, 4294967300.0, 4294967300.0, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
  v8 = v5;
  if (v5)
  {
    objc_msgSend_frameBounds(v5, v6, v7);
    v3 = v9;
    v4 = v10;
  }

  v11 = v3;
  v12 = v4;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)measuredSizeWithFlags:(unsigned int)flags minSize:(CGSize)size maxSize:(CGSize)maxSize
{
  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  v7 = objc_msgSend_pLayoutWithMinSize_maxSize_anchor_flags_(self, a2, flags | 0x1000, size.width, size.height, maxSize.width, maxSize.height, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
  v10 = v7;
  if (v7)
  {
    objc_msgSend_frameBounds(v7, v8, v9);
    v5 = v11;
    v6 = v12;
  }

  v13 = v5;
  v14 = v6;
  result.height = v14;
  result.width = v13;
  return result;
}

- (id)columnMetricsForCharIndex:(unint64_t)index outRange:(_NSRange *)range
{
  if (objc_msgSend_supportsColumnStyles(self->_storage, a2, index, range))
  {
    selfCopy = objc_msgSend_columnStyleAtCharIndex_effectiveRange_(self->_storage, v5, 0, 0);
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (CGSize)minSize
{
  width = self->_minSize.width;
  height = self->_minSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)maxSize
{
  width = self->_maxSize.width;
  height = self->_maxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)position
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)anchorPoint
{
  x = self->_anchor.x;
  y = self->_anchor.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)targetRectForCanvasRect:(CGRect)rect
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)layoutForInlineDrawable:(id)drawable
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPStorageMeasurer layoutForInlineDrawable:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 996, 0, "Inline attachments not yet supported in TSWPText.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  return 0;
}

- (id)validatedLayoutForAnchoredDrawable:(id)drawable
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPStorageMeasurer validatedLayoutForAnchoredDrawable:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 1003, 0, "Anchored attachments not yet supported in TSWPText.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  return 0;
}

- (id)addPartitionableAttachmentLayout:(id)layout
{
  layoutCopy = layout;
  v5 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPStorageMeasurer addPartitionableAttachmentLayout:]");
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPText.mm");
  v12 = objc_msgSend_wpKind(self->_storage, v10, v11);
  v13 = objc_opt_class();
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v14, v7, v9, 1017, 0, "Partitioned attachments not yet supported in non-body text: %u %{public}@", v12, v13);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  return 0;
}

- (double)maxAnchorInBlockDirection
{
  objc_msgSend_position(self, a2, v2);
  v5 = v4;
  objc_msgSend_maxSize(self, v6, v7);
  return v5 + v8;
}

- (UIEdgeInsets)adjustedInsetsForTarget:(id)target
{
  v3 = *MEMORY[0x277D81428];
  v4 = *(MEMORY[0x277D81428] + 8);
  v5 = *(MEMORY[0x277D81428] + 16);
  v6 = *(MEMORY[0x277D81428] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width target:(id)target outWidth:(double *)outWidth outGap:(double *)gap
{
  if (outWidth)
  {
    *outWidth = width;
  }

  if (gap)
  {
    *gap = 0.0;
  }

  return 0.0;
}

- (BOOL)containsStartOfRange:(_NSRange)range
{
  location = range.location;
  v4 = objc_msgSend_columns(self, a2, range.location, range.length);
  v6 = objc_msgSend_rangeOfColumns_(TSWPColumn, v5, v4);
  v8 = v7;

  return location >= v6 && location - v6 < v8;
}

@end