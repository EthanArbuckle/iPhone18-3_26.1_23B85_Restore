@interface TSPSupportPackageWriteCoordinator
- (BOOL)isComponentExternalWithIdentifier:(int64_t)a3 wasCopied:(BOOL *)a4 componentReadVersion:(unint64_t *)a5;
- (BOOL)shouldEnqueueComponent:(id)a3;
- (BOOL)wasComponentCopied:(int64_t)a3;
- (TSPSupportPackageWriteCoordinator)initWithContext:(id)a3 archiverClass:(Class)a4 archiverFlags:(char)a5 documentRevision:(id)a6 saveToken:(unint64_t)a7 packageIdentifier:(unsigned __int8)a8 fileFormatVersion:(unint64_t)a9 preferredPackageType:(int64_t)a10 metadataObject:(id)a11;
- (id)objectForIdentifier:(int64_t)a3;
- (int64_t)componentIdentifierForObjectIdentifier:(int64_t)a3 objectOrNil:(id)a4 objectUUIDOrNil:(id)a5 outComponentIsVersioned:(BOOL *)a6;
- (void)didReferenceData:(id)a3;
@end

@implementation TSPSupportPackageWriteCoordinator

- (TSPSupportPackageWriteCoordinator)initWithContext:(id)a3 archiverClass:(Class)a4 archiverFlags:(char)a5 documentRevision:(id)a6 saveToken:(unint64_t)a7 packageIdentifier:(unsigned __int8)a8 fileFormatVersion:(unint64_t)a9 preferredPackageType:(int64_t)a10 metadataObject:(id)a11
{
  v12 = a3;
  v13 = a6;
  v14 = a11;
  v15 = MEMORY[0x277D81150];
  v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSPSupportPackageWriteCoordinator initWithContext:archiverClass:archiverFlags:documentRevision:saveToken:packageIdentifier:fileFormatVersion:preferredPackageType:metadataObject:]");
  v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v17, v19, 2958, 0);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
  v23 = MEMORY[0x277CBEAD8];
  v25 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v24, @"%s: %s", "Do not call method", "[TSPSupportPackageWriteCoordinator initWithContext:archiverClass:archiverFlags:documentRevision:saveToken:packageIdentifier:fileFormatVersion:preferredPackageType:metadataObject:]");
  v27 = objc_msgSend_exceptionWithName_reason_userInfo_(v23, v26, *MEMORY[0x277CBE658], v25, 0);
  v28 = v27;

  objc_exception_throw(v27);
}

- (BOOL)shouldEnqueueComponent:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TSPSupportPackageWriteCoordinator;
  if ([(TSPPackageWriteCoordinator *)&v11 shouldEnqueueComponent:v4])
  {
    v7 = objc_msgSend_identifier(v4, v5, v6);
    v9 = objc_msgSend_isComponentExternalWithIdentifier_wasCopied_componentReadVersion_(self, v8, v7, 0, 0) ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)isComponentExternalWithIdentifier:(int64_t)a3 wasCopied:(BOOL *)a4 componentReadVersion:(unint64_t *)a5
{
  if (a3 == 2)
  {
    return 0;
  }

  else
  {
    return MEMORY[0x2821F9670](self->_packageWriteCoordinator, sel_didWriteComponentWithIdentifier_wasCopied_componentReadVersion_, a3);
  }
}

- (void)didReferenceData:(id)a3
{
  v4 = a3;
  if ((objc_msgSend_didWriteData_(self->_packageWriteCoordinator, v5, v4) & 1) == 0)
  {
    v6.receiver = self;
    v6.super_class = TSPSupportPackageWriteCoordinator;
    [(TSPPackageWriteCoordinator *)&v6 didReferenceData:v4];
  }
}

- (id)objectForIdentifier:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = TSPSupportPackageWriteCoordinator;
  v5 = [(TSPPackageWriteCoordinator *)&v8 objectForIdentifier:?];
  if (!v5)
  {
    v5 = objc_msgSend_objectForIdentifier_(self->_packageWriteCoordinator, v6, a3);
  }

  return v5;
}

- (int64_t)componentIdentifierForObjectIdentifier:(int64_t)a3 objectOrNil:(id)a4 objectUUIDOrNil:(id)a5 outComponentIsVersioned:(BOOL *)a6
{
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TSPSupportPackageWriteCoordinator;
  IsVersioned = [(TSPPackageWriteCoordinator *)&v15 componentIdentifierForObjectIdentifier:a3 objectOrNil:v10 objectUUIDOrNil:v11 outComponentIsVersioned:a6];
  if (!IsVersioned)
  {
    IsVersioned = objc_msgSend_componentIdentifierForObjectIdentifier_objectOrNil_objectUUIDOrNil_outComponentIsVersioned_(self->_packageWriteCoordinator, v12, a3, v10, v11, a6);
  }

  return IsVersioned;
}

- (BOOL)wasComponentCopied:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = TSPSupportPackageWriteCoordinator;
  if ([(TSPPackageWriteCoordinator *)&v7 wasComponentCopied:?])
  {
    return 1;
  }

  else
  {
    return objc_msgSend_wasComponentCopied_(self->_packageWriteCoordinator, v5, a3);
  }
}

@end