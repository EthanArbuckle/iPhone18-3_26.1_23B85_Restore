@interface TSPDatabaseUnarchiver
- (TSPDatabaseUnarchiver)initWithMessageType:(unsigned int)a3 unarchiveClass:(Class)a4 message:()unique_ptr<google:(std:(int64_t)a6 :()unique_ptr<TSP:(std:(unint64_t)a8 :(id)a9 default_delete<TSP:(BOOL)a10 :(id)a11 IdentifierMap<BOOL>>>)a7 :(id)a12 IdentifierMap<BOOL> default_delete<google:(id)a13 :protobuf::Message>>)a5 :protobuf::Message identifier:strongReferences:messageVersion:unknownContent:hasAlternateMessages:objectDelegate:lazyReferenceDelegate:delegate:;
- (void)filterIdentifiers:(const void *)a3;
@end

@implementation TSPDatabaseUnarchiver

- (TSPDatabaseUnarchiver)initWithMessageType:(unsigned int)a3 unarchiveClass:(Class)a4 message:()unique_ptr<google:(std:(int64_t)a6 :()unique_ptr<TSP:(std:(unint64_t)a8 :(id)a9 default_delete<TSP:(BOOL)a10 :(id)a11 IdentifierMap<BOOL>>>)a7 :(id)a12 IdentifierMap<BOOL> default_delete<google:(id)a13 :protobuf::Message>>)a5 :protobuf::Message identifier:strongReferences:messageVersion:unknownContent:hasAlternateMessages:objectDelegate:lazyReferenceDelegate:delegate:
{
  v13 = a9;
  v14 = a11;
  v15 = a12;
  v16 = a13;
  v17 = MEMORY[0x277D81150];
  v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPDatabaseUnarchiver initWithMessageType:unarchiveClass:message:identifier:strongReferences:messageVersion:unknownContent:hasAlternateMessages:objectDelegate:lazyReferenceDelegate:delegate:]");
  v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabaseUnarchiver.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v19, v21, 29, 0);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
  v25 = MEMORY[0x277CBEAD8];
  v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, @"%s: %s", "Do not call method", "[TSPDatabaseUnarchiver initWithMessageType:unarchiveClass:message:identifier:strongReferences:messageVersion:unknownContent:hasAlternateMessages:objectDelegate:lazyReferenceDelegate:delegate:]");
  v29 = objc_msgSend_exceptionWithName_reason_userInfo_(v25, v28, *MEMORY[0x277CBE658], v27, 0);
  v30 = v29;

  objc_exception_throw(v29);
}

- (void)filterIdentifiers:(const void *)a3
{
  v4 = objc_msgSend_delegate(self, a2, a3);
  v6 = objc_msgSend_filterIdentifiers_(v4, v5, a3);

  if (!v6)
  {
    objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v7, @"TSPUnarchiveException", @"Problem filtering identifiers");
  }

  return v6;
}

@end