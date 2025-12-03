@interface TSWPFootnoteReferenceAttachment
- (BOOL)isEqual:(id)equal;
- (TSWPFootnoteReferenceAttachment)initWithContext:(id)context;
- (TSWPFootnoteReferenceAttachment)initWithContext:(id)context wpStorage:(id)storage;
- (id)copyWithContext:(id)context;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)applyMark;
- (void)checkDebug;
- (void)dealloc;
- (void)setContainedStorage:(id)storage;
- (void)setCustomMarkString:(id)string;
- (void)setParentStorage:(id)storage;
- (void)wasAddedToDocumentRoot:(id)root context:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root context:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation TSWPFootnoteReferenceAttachment

- (TSWPFootnoteReferenceAttachment)initWithContext:(id)context wpStorage:(id)storage
{
  v10.receiver = self;
  v10.super_class = TSWPFootnoteReferenceAttachment;
  v5 = [(TSWPAttachment *)&v10 initWithContext:context];
  v6 = v5;
  if (v5)
  {
    [(TSWPFootnoteReferenceAttachment *)v5 setContainedStorage:storage];
    if (!v6->_containedStorage)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPFootnoteReferenceAttachment initWithContext:wpStorage:]"];
      [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFootnoteReferenceAttachment.mm"), 73, @"invalid nil value for '%s'", "_containedStorage"}];
    }
  }

  return v6;
}

- (TSWPFootnoteReferenceAttachment)initWithContext:(id)context
{
  documentRoot = [context documentRoot];
  v6 = [objc_msgSend(documentRoot "theme")];
  LODWORD(v10) = -1;
  v7 = -[TSWPStorage initWithContext:string:kind:stylesheet:paragraphStyle:listStyle:section:columnStyle:paragraphDirection:]([TSWPStorage alloc], "initWithContext:string:kind:stylesheet:paragraphStyle:listStyle:section:columnStyle:paragraphDirection:", context, 0, 2, [documentRoot stylesheet], v6, objc_msgSend(v6, "initialListStyle"), 0, 0, v10);
  v8 = [(TSWPFootnoteReferenceAttachment *)self initWithContext:context wpStorage:v7];
  [(TSWPFootnoteReferenceAttachment *)v8 applyMark];

  return v8;
}

- (void)dealloc
{
  [(TSWPStorage *)self->_containedStorage setOwningAttachment:0];
  [(TSWPStorage *)self->_containedStorage setParentInfo:0];

  v3.receiver = self;
  v3.super_class = TSWPFootnoteReferenceAttachment;
  [(TSWPFootnoteReferenceAttachment *)&v3 dealloc];
}

- (void)applyMark
{
  if ([(TSPObject *)self context])
  {
    [(TSPObject *)self willModify];
  }

  v3 = [(TSWPAttachment *)[TSWPFootnoteMarkAttachment alloc] initWithContext:[(TSPObject *)self context]];
  [(TSWPStorage *)[(TSWPFootnoteReferenceAttachment *)self containedStorage] insertAttachmentOrFootnote:v3 range:0, 0];
}

- (BOOL)isEqual:(id)equal
{
  v9.receiver = self;
  v9.super_class = TSWPFootnoteReferenceAttachment;
  LODWORD(customMarkString) = [(TSWPAttachment *)&v9 isEqual:?];
  if (customMarkString)
  {
    objc_opt_class();
    customMarkString = TSUDynamicCast();
    if (customMarkString)
    {
      v5 = customMarkString;
      LODWORD(customMarkString) = [(TSWPStorage *)self->_containedStorage isEqual:[(NSString *)customMarkString containedStorage]];
      if (customMarkString)
      {
        customMarkString = [(NSString *)v5 customMarkString];
        customMarkString = self->_customMarkString;
        if (customMarkString == customMarkString)
        {
          LOBYTE(customMarkString) = 1;
        }

        else
        {
          v7 = customMarkString;
          LOBYTE(customMarkString) = 0;
          if (v7 && customMarkString)
          {
            LOBYTE(customMarkString) = [(NSString *)self->_customMarkString isEqualToString:?];
          }
        }
      }
    }
  }

  return customMarkString;
}

- (id)copyWithContext:(id)context
{
  v5 = [(TSWPStorage *)self->_containedStorage newSubstorageWithRange:0 context:[(TSWPStorage *)self->_containedStorage length] flags:context, 1];
  v6 = [objc_allocWithZone(objc_opt_class()) initWithContext:context wpStorage:v5];

  [v6 setCustomMarkString:{-[TSWPFootnoteReferenceAttachment customMarkString](self, "customMarkString")}];
  return v6;
}

- (void)setContainedStorage:(id)storage
{
  if (self->_containedStorage != storage)
  {
    if ([(TSPObject *)self context])
    {
      [(TSPObject *)self willModify];
    }

    [(TSWPStorage *)self->_containedStorage setOwningAttachment:0];
    [(TSWPStorage *)self->_containedStorage setParentInfo:0];
    storageCopy = storage;

    self->_containedStorage = storage;
    [storage setOwningAttachment:self];
    parentStorage = self->super.super._parentStorage;

    [(TSWPFootnoteReferenceAttachment *)self setContainedStorageParentInfoToStorage:parentStorage];
  }
}

- (void)setParentStorage:(id)storage
{
  v5.receiver = self;
  v5.super_class = TSWPFootnoteReferenceAttachment;
  [(TSWPAttachment *)&v5 setParentStorage:?];
  [(TSWPFootnoteReferenceAttachment *)self setContainedStorageParentInfoToStorage:storage];
}

- (void)setCustomMarkString:(id)string
{
  if ([(TSPObject *)self context])
  {
    [(TSPObject *)self willModify];
  }

  stringCopy = string;

  self->_customMarkString = string;
}

- (void)willBeAddedToDocumentRoot:(id)root context:(id)context
{
  v7.receiver = self;
  v7.super_class = TSWPFootnoteReferenceAttachment;
  [TSWPAttachment willBeAddedToDocumentRoot:sel_willBeAddedToDocumentRoot_context_ context:?];
  [(TSWPStorage *)[(TSWPFootnoteReferenceAttachment *)self containedStorage] willBeAddedToDocumentRoot:root dolcContext:context];
}

- (void)wasAddedToDocumentRoot:(id)root context:(id)context
{
  v7.receiver = self;
  v7.super_class = TSWPFootnoteReferenceAttachment;
  [TSWPAttachment wasAddedToDocumentRoot:sel_wasAddedToDocumentRoot_context_ context:?];
  [(TSWPStorage *)[(TSWPFootnoteReferenceAttachment *)self containedStorage] wasAddedToDocumentRoot:root dolcContext:context];
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  v5.receiver = self;
  v5.super_class = TSWPFootnoteReferenceAttachment;
  [(TSWPAttachment *)&v5 willBeRemovedFromDocumentRoot:?];
  [(TSWPStorage *)[(TSWPFootnoteReferenceAttachment *)self containedStorage] willBeRemovedFromDocumentRoot:root];
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  v5.receiver = self;
  v5.super_class = TSWPFootnoteReferenceAttachment;
  [(TSWPAttachment *)&v5 wasRemovedFromDocumentRoot:?];
  [(TSWPStorage *)[(TSWPFootnoteReferenceAttachment *)self containedStorage] wasRemovedFromDocumentRoot:root];
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  [mapper pushMappingContext:self];
  v7.receiver = self;
  v7.super_class = TSWPFootnoteReferenceAttachment;
  [(TSWPAttachment *)&v7 adoptStylesheet:stylesheet withMapper:mapper];
  [(TSWPStorage *)self->_containedStorage adoptStylesheet:stylesheet withMapper:mapper];
  [mapper popMappingContext:self];
}

- (void)checkDebug
{
  parentStorage = self->super.super._parentStorage;
  if (parentStorage && [(TSWPStorage *)parentStorage findCharIndexForFootnoteAttachment:self]== 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPFootnoteReferenceAttachment checkDebug]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFootnoteReferenceAttachment.mm"), 270, @"Attachment not found in parent storage"}];
  }

  if (!self->_containedStorage)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPFootnoteReferenceAttachment checkDebug]"];
    [currentHandler2 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFootnoteReferenceAttachment.mm"), 272, @"invalid nil value for '%s'", "_containedStorage"}];
  }
}

@end