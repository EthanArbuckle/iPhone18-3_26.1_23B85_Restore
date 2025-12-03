@interface TSPSupportPackageWriteCoordinator
- (BOOL)isComponentExternalWithIdentifier:(int64_t)identifier wasCopied:(BOOL *)copied componentReadVersion:(unint64_t *)version;
- (BOOL)shouldEnqueueComponent:(id)component;
- (BOOL)wasComponentCopied:(int64_t)copied;
- (TSPSupportPackageWriteCoordinator)initWithContext:(id)context archiverClass:(Class)class archiverFlags:(char)flags documentRevision:(id)revision saveToken:(unint64_t)token packageIdentifier:(unsigned __int8)identifier fileFormatVersion:(unint64_t)version preferredPackageType:(int64_t)self0 metadataObject:(id)self1;
- (id)objectForIdentifier:(int64_t)identifier;
- (int64_t)componentIdentifierForObjectIdentifier:(int64_t)identifier objectOrNil:(id)nil objectUUIDOrNil:(id)orNil outComponentIsVersioned:(BOOL *)versioned;
- (void)didReferenceData:(id)data;
@end

@implementation TSPSupportPackageWriteCoordinator

- (TSPSupportPackageWriteCoordinator)initWithContext:(id)context archiverClass:(Class)class archiverFlags:(char)flags documentRevision:(id)revision saveToken:(unint64_t)token packageIdentifier:(unsigned __int8)identifier fileFormatVersion:(unint64_t)version preferredPackageType:(int64_t)self0 metadataObject:(id)self1
{
  contextCopy = context;
  revisionCopy = revision;
  objectCopy = object;
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

- (BOOL)shouldEnqueueComponent:(id)component
{
  componentCopy = component;
  v11.receiver = self;
  v11.super_class = TSPSupportPackageWriteCoordinator;
  if ([(TSPPackageWriteCoordinator *)&v11 shouldEnqueueComponent:componentCopy])
  {
    v7 = objc_msgSend_identifier(componentCopy, v5, v6);
    v9 = objc_msgSend_isComponentExternalWithIdentifier_wasCopied_componentReadVersion_(self, v8, v7, 0, 0) ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)isComponentExternalWithIdentifier:(int64_t)identifier wasCopied:(BOOL *)copied componentReadVersion:(unint64_t *)version
{
  if (identifier == 2)
  {
    return 0;
  }

  else
  {
    return MEMORY[0x2821F9670](self->_packageWriteCoordinator, sel_didWriteComponentWithIdentifier_wasCopied_componentReadVersion_, identifier);
  }
}

- (void)didReferenceData:(id)data
{
  dataCopy = data;
  if ((objc_msgSend_didWriteData_(self->_packageWriteCoordinator, v5, dataCopy) & 1) == 0)
  {
    v6.receiver = self;
    v6.super_class = TSPSupportPackageWriteCoordinator;
    [(TSPPackageWriteCoordinator *)&v6 didReferenceData:dataCopy];
  }
}

- (id)objectForIdentifier:(int64_t)identifier
{
  v8.receiver = self;
  v8.super_class = TSPSupportPackageWriteCoordinator;
  v5 = [(TSPPackageWriteCoordinator *)&v8 objectForIdentifier:?];
  if (!v5)
  {
    v5 = objc_msgSend_objectForIdentifier_(self->_packageWriteCoordinator, v6, identifier);
  }

  return v5;
}

- (int64_t)componentIdentifierForObjectIdentifier:(int64_t)identifier objectOrNil:(id)nil objectUUIDOrNil:(id)orNil outComponentIsVersioned:(BOOL *)versioned
{
  nilCopy = nil;
  orNilCopy = orNil;
  v15.receiver = self;
  v15.super_class = TSPSupportPackageWriteCoordinator;
  IsVersioned = [(TSPPackageWriteCoordinator *)&v15 componentIdentifierForObjectIdentifier:identifier objectOrNil:nilCopy objectUUIDOrNil:orNilCopy outComponentIsVersioned:versioned];
  if (!IsVersioned)
  {
    IsVersioned = objc_msgSend_componentIdentifierForObjectIdentifier_objectOrNil_objectUUIDOrNil_outComponentIsVersioned_(self->_packageWriteCoordinator, v12, identifier, nilCopy, orNilCopy, versioned);
  }

  return IsVersioned;
}

- (BOOL)wasComponentCopied:(int64_t)copied
{
  v7.receiver = self;
  v7.super_class = TSPSupportPackageWriteCoordinator;
  if ([(TSPPackageWriteCoordinator *)&v7 wasComponentCopied:?])
  {
    return 1;
  }

  else
  {
    return objc_msgSend_wasComponentCopied_(self->_packageWriteCoordinator, v5, copied);
  }
}

@end