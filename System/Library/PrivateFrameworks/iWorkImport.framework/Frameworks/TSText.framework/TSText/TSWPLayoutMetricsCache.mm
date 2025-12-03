@interface TSWPLayoutMetricsCache
- (TSWPLayoutMetricsCache)initWithStorage:(id)storage;
- (TSWPParagraphMetrics)paragraphMetricsForParagraphAtIndex:(unint64_t)index;
- (id).cxx_construct;
- (void)dealloc;
- (void)reset;
- (void)storage:(id)storage didChangeParagraphsInIndexRange:(_NSRange)range;
- (void)storage:(id)storage didDeleteParagraphsInIndexRange:(_NSRange)range;
- (void)storage:(id)storage didInsertParagraphsInIndexRange:(_NSRange)range;
- (void)tearDown;
@end

@implementation TSWPLayoutMetricsCache

- (TSWPLayoutMetricsCache)initWithStorage:(id)storage
{
  storageCopy = storage;
  if (storageCopy)
  {
    v22.receiver = self;
    v22.super_class = TSWPLayoutMetricsCache;
    v6 = [(TSWPLayoutMetricsCache *)&v22 init];
    v7 = v6;
    if (v6)
    {
      v8 = objc_storeWeak(&v6->_storage, storageCopy);
      objc_msgSend_addParagraphObserver_(storageCopy, v9, v7);

      v12 = objc_msgSend_paragraphCount(storageCopy, v10, v11);
      sub_276E065C4(&v7->_paragraphMetrics.__begin_, v12);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSWPLayoutMetricsCache initWithStorage:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutMetricsCache.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 30, 0, "invalid nil value for '%{public}s'", "storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);

  if (WeakRetained)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSWPLayoutMetricsCache dealloc]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutMetricsCache.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 46, 0, "expected nil value for '%{public}s'", "_storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  v12.receiver = self;
  v12.super_class = TSWPLayoutMetricsCache;
  [(TSWPLayoutMetricsCache *)&v12 dealloc];
}

- (void)tearDown
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);
  objc_msgSend_removeParagraphObserver_(WeakRetained, v4, self);

  objc_storeWeak(&self->_storage, 0);
}

- (TSWPParagraphMetrics)paragraphMetricsForParagraphAtIndex:(unint64_t)index
{
  begin = self->_paragraphMetrics.__begin_;
  if (0xCCCCCCCCCCCCCCCDLL * ((self->_paragraphMetrics.__end_ - begin) >> 3) > index)
  {
    return &begin[index];
  }

  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPLayoutMetricsCache paragraphMetricsForParagraphAtIndex:]");
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutMetricsCache.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 58, 0, "Invalid paragraph index: %lu", index);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  return 0;
}

- (void)reset
{
  begin = self->_paragraphMetrics.__begin_;
  end = self->_paragraphMetrics.__end_;
  p_paragraphMetrics = &self->_paragraphMetrics;
  if (begin != end)
  {
    v6 = vdupq_n_s64(0x7FF8000000000000uLL);
    do
    {
      begin->var0 = 0;
      begin->var1 = v6;
      begin->var2 = 0x7FFFFFFFFFFFFFFFLL;
      begin->var3 = NAN;
      ++begin;
    }

    while (begin != end);
  }

  WeakRetained = objc_loadWeakRetained(&self->_storage);
  if (WeakRetained)
  {
    v11 = &self->_paragraphMetrics;
    v9 = self->_paragraphMetrics.__begin_;
    v10 = v11->__end_;
    if (0xCCCCCCCCCCCCCCCDLL * ((v10 - v9) >> 3) != objc_msgSend_paragraphCount(WeakRetained, v7, v8))
    {
      v14 = objc_msgSend_paragraphCount(WeakRetained, v12, v13);
      sub_276E065C4(p_paragraphMetrics, v14);
    }
  }
}

- (void)storage:(id)storage didInsertParagraphsInIndexRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = range.location > 0x7FFFFFFFFFFFFFFELL || range.length == 0;
  if (v7 || (begin = self->_paragraphMetrics.__begin_, p_paragraphMetrics = &self->_paragraphMetrics, range.location > 0xCCCCCCCCCCCCCCCDLL * ((self->_paragraphMetrics.__end_ - begin) >> 3) + 1))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPLayoutMetricsCache storage:didInsertParagraphsInIndexRange:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutMetricsCache.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 81, 0, "unexpected paragraph insertion range {%ld,%ld} vs %ld", location, length, 0xCCCCCCCCCCCCCCCDLL * ((self->_paragraphMetrics.__end_ - self->_paragraphMetrics.__begin_) >> 3));

    v17 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v17, v15, v16);
  }

  else
  {
    v18[0] = 0;
    v19 = vdupq_n_s64(0x7FF8000000000000uLL);
    v20 = 0x7FFFFFFFFFFFFFFFLL;
    v21 = 0x7FF8000000000000;
    sub_276E06ACC(p_paragraphMetrics, &begin[range.location].var0, range.length, v18);
  }
}

- (void)storage:(id)storage didDeleteParagraphsInIndexRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = range.location > 0x7FFFFFFFFFFFFFFELL || range.length == 0;
  if (v7 || (begin = self->_paragraphMetrics.__begin_, end = self->_paragraphMetrics.__end_, range.location + range.length > 0xCCCCCCCCCCCCCCCDLL * ((end - begin) >> 3)))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPLayoutMetricsCache storage:didDeleteParagraphsInIndexRange:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutMetricsCache.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 94, 0, "unexpected paragraph deletion range {%ld,%ld} vs %ld", location, length, 0xCCCCCCCCCCCCCCCDLL * ((self->_paragraphMetrics.__end_ - self->_paragraphMetrics.__begin_) >> 3));

    v17 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v17, v15, v16);
  }

  else
  {
    v18 = &begin[range.location];
    v19 = &v18[range.length];
    v20 = end - v19;
    if (end != v19)
    {
      memmove(&begin[range.location], v19, end - v19);
    }

    self->_paragraphMetrics.__end_ = (v18 + v20);
  }
}

- (void)storage:(id)storage didChangeParagraphsInIndexRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  if (location <= 0x7FFFFFFFFFFFFFFELL && length && (begin = self->_paragraphMetrics.__begin_, location + length <= 0xCCCCCCCCCCCCCCCDLL * ((self->_paragraphMetrics.__end_ - begin) >> 3)))
  {
    if (location < location + length)
    {
      p_var3 = &begin[location].var3;
      v17 = vdupq_n_s64(0x7FF8000000000000uLL);
      do
      {
        *(p_var3 - 32) = 0;
        *(p_var3 - 3) = v17;
        *(p_var3 - 1) = 0x7FFFFFFFFFFFFFFFLL;
        *p_var3 = 0x7FF8000000000000;
        p_var3 += 5;
        --length;
      }

      while (length);
    }
  }

  else
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPLayoutMetricsCache storage:didChangeParagraphsInIndexRange:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLayoutMetricsCache.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 107, 0, "unexpected paragraph change range {%ld,%ld} vs %ld", location, length, 0xCCCCCCCCCCCCCCCDLL * ((self->_paragraphMetrics.__end_ - self->_paragraphMetrics.__begin_) >> 3));

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end