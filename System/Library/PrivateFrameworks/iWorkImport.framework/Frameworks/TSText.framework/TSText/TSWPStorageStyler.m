@interface TSWPStorageStyler
- (TSWPStorageStyler)initWithStorage:(id)a3 attributeArrayKind:(unint64_t)a4;
- (id)replacementStyleForStyle:(id)a3 range:(_NSRange)a4;
- (void)applyStyle:(id)a3 range:(_NSRange)a4 undoTransaction:(TSWPStorageTransaction *)a5;
- (void)performStylingInRange:(_NSRange)a3 undoTransaction:(TSWPStorageTransaction *)a4;
@end

@implementation TSWPStorageStyler

- (TSWPStorageStyler)initWithStorage:(id)a3 attributeArrayKind:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TSWPStorageStyler;
  v8 = [(TSWPStorageStyler *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_storage, a3);
    v9->_attributeArrayKind = a4;
  }

  return v9;
}

- (id)replacementStyleForStyle:(id)a3 range:(_NSRange)a4
{
  v4 = a3;
  v5 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPStorageStyler replacementStyleForStyle:range:]");
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageStyler.mm");
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v12, v7, v9, 39, 0, "Abstract method not overridden by %{public}@", v11);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  v15 = MEMORY[0x277CBEAD8];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v20 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v18, "[TSWPStorageStyler replacementStyleForStyle:range:]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v15, v21, *MEMORY[0x277CBE658], v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

- (void)applyStyle:(id)a3 range:(_NSRange)a4 undoTransaction:(TSWPStorageTransaction *)a5
{
  v5 = a3;
  v6 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPStorageStyler applyStyle:range:undoTransaction:]");
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageStyler.mm");
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v8, v10, 43, 0, "Abstract method not overridden by %{public}@", v12);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  v16 = MEMORY[0x277CBEAD8];
  v17 = MEMORY[0x277CCACA8];
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v21 = objc_msgSend_stringWithFormat_(v17, v20, @"Abstract method not overridden by %@: %s", v19, "[TSWPStorageStyler applyStyle:range:undoTransaction:]");
  v23 = objc_msgSend_exceptionWithName_reason_userInfo_(v16, v22, *MEMORY[0x277CBE658], v21, 0);
  v24 = v23;

  objc_exception_throw(v23);
}

- (void)performStylingInRange:(_NSRange)a3 undoTransaction:(TSWPStorageTransaction *)a4
{
  if (a3.length)
  {
    length = a3.length;
    location = a3.location;
    do
    {
      v8 = objc_msgSend_storage(self, a2, a3.location, v19.location, v19.length);
      v11 = objc_msgSend_attributeArrayKind(self, v9, v10);
      TSWPAttributeEnumerator::TSWPAttributeEnumerator(&v20, v8, location, length, v11, 0);

      v19.location = 0;
      v19.length = 0;
      while (1)
      {
        v13 = TSWPAttributeEnumerator::nextAttributeIndex(&v20, &v19, v12);
        if (!v13)
        {
          TSWPAttributeEnumerator::~TSWPAttributeEnumerator(&v20);
          return;
        }

        v14 = TSWPAttributeRecord::object(v13, self->_attributeArrayKind);
        v16 = objc_msgSend_replacementStyleForStyle_range_(self, v15, v14, v19.location, v19.length);
        if (v16 != v14)
        {
          v21.location = location;
          v21.length = length;
          v17 = NSIntersectionRange(v21, v19);
          if (v17.length)
          {
            break;
          }
        }
      }

      objc_msgSend_applyStyle_range_undoTransaction_(self, v17.length, v16, v17.location, v17.length, a4);
      if (v17.location + v17.length <= length + location)
      {
        v18 = length + location;
      }

      else
      {
        v18 = v17.location + v17.length;
      }

      if (v17.location + v17.length >= length + location)
      {
        location += length;
      }

      else
      {
        location = v17.location + v17.length;
      }

      length = v18 - location;

      TSWPAttributeEnumerator::~TSWPAttributeEnumerator(&v20);
    }

    while (length);
  }
}

@end