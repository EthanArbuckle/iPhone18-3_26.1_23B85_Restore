@interface TSPUnknownObjectUnarchiver
- (TSPUnknownObjectUnarchiver)initWithMessageType:(unsigned int)a3 unarchiveClass:(Class)a4 message:()unique_ptr<google:(std:(int64_t)a6 :()unique_ptr<TSP:(std:(unint64_t)a8 :(id)a9 default_delete<TSP:(BOOL)a10 :(id)a11 IdentifierMap<BOOL>>>)a7 :(id)a12 IdentifierMap<BOOL> default_delete<google:(id)a13 :protobuf::Message>>)a5 :protobuf::Message identifier:strongReferences:messageVersion:unknownContent:hasAlternateMessages:objectDelegate:lazyReferenceDelegate:delegate:;
- (const)message;
- (id).cxx_construct;
- (shared_ptr<TSP::ArchiveInfo>)archiveInfo;
@end

@implementation TSPUnknownObjectUnarchiver

- (TSPUnknownObjectUnarchiver)initWithMessageType:(unsigned int)a3 unarchiveClass:(Class)a4 message:()unique_ptr<google:(std:(int64_t)a6 :()unique_ptr<TSP:(std:(unint64_t)a8 :(id)a9 default_delete<TSP:(BOOL)a10 :(id)a11 IdentifierMap<BOOL>>>)a7 :(id)a12 IdentifierMap<BOOL> default_delete<google:(id)a13 :protobuf::Message>>)a5 :protobuf::Message identifier:strongReferences:messageVersion:unknownContent:hasAlternateMessages:objectDelegate:lazyReferenceDelegate:delegate:
{
  v13 = a9;
  v14 = a11;
  v15 = a12;
  v16 = a13;
  v17 = MEMORY[0x277D81150];
  v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPUnknownObjectUnarchiver initWithMessageType:unarchiveClass:message:identifier:strongReferences:messageVersion:unknownContent:hasAlternateMessages:objectDelegate:lazyReferenceDelegate:delegate:]");
  v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnknownObjectUnarchiver.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v19, v21, 28, 0);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
  v25 = MEMORY[0x277CBEAD8];
  v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, @"%s: %s", "Do not call method", "[TSPUnknownObjectUnarchiver initWithMessageType:unarchiveClass:message:identifier:strongReferences:messageVersion:unknownContent:hasAlternateMessages:objectDelegate:lazyReferenceDelegate:delegate:]");
  v29 = objc_msgSend_exceptionWithName_reason_userInfo_(v25, v28, *MEMORY[0x277CBE658], v27, 0);
  v30 = v29;

  objc_exception_throw(v29);
}

- (const)message
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPUnknownObjectUnarchiver message]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnknownObjectUnarchiver.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 54, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[TSPUnknownObjectUnarchiver message]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
}

- (shared_ptr<TSP::ArchiveInfo>)archiveInfo
{
  cntrl = self->_archiveInfo.__cntrl_;
  *v2 = self->_archiveInfo.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (id).cxx_construct
{
  *(self + 23) = 0;
  *(self + 24) = 0;
  return self;
}

@end