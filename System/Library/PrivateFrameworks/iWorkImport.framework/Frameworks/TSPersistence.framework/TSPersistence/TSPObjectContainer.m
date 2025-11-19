@interface TSPObjectContainer
+ (int64_t)objectIdentifierForPackageIdentifier:(unsigned __int8)a3;
- (TSPObjectContainer)initWithContext:(id)a3;
- (TSPObjectContainer)initWithContext:(id)a3 packageIdentifier:(unsigned __int8)a4;
- (int64_t)tsp_identifier;
- (void)loadFromUnarchiver:(id)a3;
- (void)prepareForComponentWriteWithDelayedObjects:(id)a3;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSPObjectContainer

- (TSPObjectContainer)initWithContext:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPObjectContainer initWithContext:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContainer.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v6, v8, 23, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s: %s", "Do not call method", "[TSPObjectContainer initWithContext:]");
  v16 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v15, *MEMORY[0x277CBE658], v14, 0);
  v17 = v16;

  objc_exception_throw(v16);
}

- (TSPObjectContainer)initWithContext:(id)a3 packageIdentifier:(unsigned __int8)a4
{
  v4 = a4;
  v7 = a3;
  if (!v4)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPObjectContainer initWithContext:packageIdentifier:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContainer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 27, 0, "Unexpected package identifier.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  v18.receiver = self;
  v18.super_class = TSPObjectContainer;
  v15 = [(TSPObject *)&v18 initWithContext:v7];
  v16 = v15;
  if (v15)
  {
    v15->_packageIdentifier = v4;
  }

  return v16;
}

+ (int64_t)objectIdentifierForPackageIdentifier:(unsigned __int8)a3
{
  if (a3 == 2)
  {
    v3 = &qword_276C11CF8;
    return *v3;
  }

  if (a3 == 1)
  {
    v3 = &qword_276C11CF0;
    return *v3;
  }

  return 0;
}

- (int64_t)tsp_identifier
{
  v3 = objc_opt_class();
  result = objc_msgSend_objectIdentifierForPackageIdentifier_(v3, v4, self->_packageIdentifier);
  if (!result)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPObjectContainer tsp_identifier]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContainer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 51, 0, "Unexpected package identifier: %d", self->_packageIdentifier);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    v14.receiver = self;
    v14.super_class = TSPObjectContainer;
    return [(TSPObject *)&v14 tsp_identifier];
  }

  return result;
}

- (void)prepareForComponentWriteWithDelayedObjects:(id)a3
{
  v15 = a3;
  if (self->_childObjects)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPObjectContainer prepareForComponentWriteWithDelayedObjects:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContainer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 75, 0, "expected nil value for '%{public}s'", "_childObjects");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = objc_msgSend_allObjects(v15, v4, v5);
  childObjects = self->_childObjects;
  self->_childObjects = v13;
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v6 = objc_msgSend_messageWithDescriptor_(v4, v5, off_2812FC248[60]);

  v8 = *(v6 + 48);
  self->_packageIdentifier = v8;
  if (!v8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPObjectContainer loadFromUnarchiver:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPObjectContainer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 83, 0, "Unexpected package identifier: %d", self->_packageIdentifier);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_276A4B844;
  v19[3] = &unk_27A6E3B40;
  v19[4] = self;
  v16 = v4;
  v17 = objc_opt_class();
  objc_msgSend_readRepeatedWeakReferenceMessage_class_protocol_completion_(v16, v18, v6 + 24, v17, 0, v19);
}

- (void)saveToArchiver:(id)a3
{
  v8 = a3;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v8, v4, sub_276A4B95C, off_2812FC248[60]);

  packageIdentifier = self->_packageIdentifier;
  *(v5 + 16) |= 1u;
  *(v5 + 48) = packageIdentifier;
  objc_msgSend_setWeakReferenceArray_message_(v8, v7, self->_childObjects, v5 + 24);
}

@end