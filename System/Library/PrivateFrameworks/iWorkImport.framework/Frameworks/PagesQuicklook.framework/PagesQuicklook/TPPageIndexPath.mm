@interface TPPageIndexPath
- (TPPageIndexPath)initWithSectionIndex:(unint64_t)index pageIndex:(unint64_t)pageIndex;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)setSectionIndex:(unint64_t)index;
@end

@implementation TPPageIndexPath

- (void)setSectionIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, v6, "[TPPageIndexPath setSectionIndex:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageIndexPath.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v17, v18, v19, v20, v21, v10, v16, 26, 0, "bad section index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25, v26);
  }

  self->_sectionIndex = index;
}

- (TPPageIndexPath)initWithSectionIndex:(unint64_t)index pageIndex:(unint64_t)pageIndex
{
  v32.receiver = self;
  v32.super_class = TPPageIndexPath;
  v6 = [(TPPageIndexPath *)&v32 init];
  v12 = v6;
  if (v6)
  {
    v6->_sectionIndex = index;
    if (pageIndex >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, v11, "[TPPageIndexPath initWithSectionIndex:pageIndex:]");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageIndexPath.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v21, v22, v23, v24, v25, v14, v20, 33, 0, "Illegal page index: %lu", pageIndex);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29, v30);
    }

    v12->_pageIndex = pageIndex;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v11 = objc_msgSend_allocWithZone_(v5, v6, v7, v8, v9, v10, zone);
  sectionIndex = self->_sectionIndex;
  pageIndex = self->_pageIndex;

  return objc_msgSend_initWithSectionIndex_pageIndex_(v11, v12, v13, v14, v15, v16, sectionIndex, pageIndex);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return objc_msgSend_stringWithFormat_(v3, v5, v6, v7, v8, v9, @"(%@*) %p: section index %d, page index %d", v4, self, self->_sectionIndex, self->_pageIndex);
}

@end