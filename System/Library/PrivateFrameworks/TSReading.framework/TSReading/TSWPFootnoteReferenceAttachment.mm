@interface TSWPFootnoteReferenceAttachment
- (BOOL)isEqual:(id)a3;
- (TSWPFootnoteReferenceAttachment)initWithContext:(id)a3;
- (TSWPFootnoteReferenceAttachment)initWithContext:(id)a3 wpStorage:(id)a4;
- (id)copyWithContext:(id)a3;
- (void)adoptStylesheet:(id)a3 withMapper:(id)a4;
- (void)applyMark;
- (void)checkDebug;
- (void)dealloc;
- (void)setContainedStorage:(id)a3;
- (void)setCustomMarkString:(id)a3;
- (void)setParentStorage:(id)a3;
- (void)wasAddedToDocumentRoot:(id)a3 context:(id)a4;
- (void)wasRemovedFromDocumentRoot:(id)a3;
- (void)willBeAddedToDocumentRoot:(id)a3 context:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
@end

@implementation TSWPFootnoteReferenceAttachment

- (TSWPFootnoteReferenceAttachment)initWithContext:(id)a3 wpStorage:(id)a4
{
  v10.receiver = self;
  v10.super_class = TSWPFootnoteReferenceAttachment;
  v5 = [(TSWPAttachment *)&v10 initWithContext:a3];
  v6 = v5;
  if (v5)
  {
    [(TSWPFootnoteReferenceAttachment *)v5 setContainedStorage:a4];
    if (!v6->_containedStorage)
    {
      v7 = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPFootnoteReferenceAttachment initWithContext:wpStorage:]"];
      [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFootnoteReferenceAttachment.mm"), 73, @"invalid nil value for '%s'", "_containedStorage"}];
    }
  }

  return v6;
}

- (TSWPFootnoteReferenceAttachment)initWithContext:(id)a3
{
  v5 = [a3 documentRoot];
  v6 = [objc_msgSend(v5 "theme")];
  LODWORD(v10) = -1;
  v7 = -[TSWPStorage initWithContext:string:kind:stylesheet:paragraphStyle:listStyle:section:columnStyle:paragraphDirection:]([TSWPStorage alloc], "initWithContext:string:kind:stylesheet:paragraphStyle:listStyle:section:columnStyle:paragraphDirection:", a3, 0, 2, [v5 stylesheet], v6, objc_msgSend(v6, "initialListStyle"), 0, 0, v10);
  v8 = [(TSWPFootnoteReferenceAttachment *)self initWithContext:a3 wpStorage:v7];
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

- (BOOL)isEqual:(id)a3
{
  v9.receiver = self;
  v9.super_class = TSWPFootnoteReferenceAttachment;
  LODWORD(v4) = [(TSWPAttachment *)&v9 isEqual:?];
  if (v4)
  {
    objc_opt_class();
    v4 = TSUDynamicCast();
    if (v4)
    {
      v5 = v4;
      LODWORD(v4) = [(TSWPStorage *)self->_containedStorage isEqual:[(NSString *)v4 containedStorage]];
      if (v4)
      {
        v4 = [(NSString *)v5 customMarkString];
        customMarkString = self->_customMarkString;
        if (v4 == customMarkString)
        {
          LOBYTE(v4) = 1;
        }

        else
        {
          v7 = v4;
          LOBYTE(v4) = 0;
          if (v7 && customMarkString)
          {
            LOBYTE(v4) = [(NSString *)self->_customMarkString isEqualToString:?];
          }
        }
      }
    }
  }

  return v4;
}

- (id)copyWithContext:(id)a3
{
  v5 = [(TSWPStorage *)self->_containedStorage newSubstorageWithRange:0 context:[(TSWPStorage *)self->_containedStorage length] flags:a3, 1];
  v6 = [objc_allocWithZone(objc_opt_class()) initWithContext:a3 wpStorage:v5];

  [v6 setCustomMarkString:{-[TSWPFootnoteReferenceAttachment customMarkString](self, "customMarkString")}];
  return v6;
}

- (void)setContainedStorage:(id)a3
{
  if (self->_containedStorage != a3)
  {
    if ([(TSPObject *)self context])
    {
      [(TSPObject *)self willModify];
    }

    [(TSWPStorage *)self->_containedStorage setOwningAttachment:0];
    [(TSWPStorage *)self->_containedStorage setParentInfo:0];
    v5 = a3;

    self->_containedStorage = a3;
    [a3 setOwningAttachment:self];
    parentStorage = self->super.super._parentStorage;

    [(TSWPFootnoteReferenceAttachment *)self setContainedStorageParentInfoToStorage:parentStorage];
  }
}

- (void)setParentStorage:(id)a3
{
  v5.receiver = self;
  v5.super_class = TSWPFootnoteReferenceAttachment;
  [(TSWPAttachment *)&v5 setParentStorage:?];
  [(TSWPFootnoteReferenceAttachment *)self setContainedStorageParentInfoToStorage:a3];
}

- (void)setCustomMarkString:(id)a3
{
  if ([(TSPObject *)self context])
  {
    [(TSPObject *)self willModify];
  }

  v5 = a3;

  self->_customMarkString = a3;
}

- (void)willBeAddedToDocumentRoot:(id)a3 context:(id)a4
{
  v7.receiver = self;
  v7.super_class = TSWPFootnoteReferenceAttachment;
  [TSWPAttachment willBeAddedToDocumentRoot:sel_willBeAddedToDocumentRoot_context_ context:?];
  [(TSWPStorage *)[(TSWPFootnoteReferenceAttachment *)self containedStorage] willBeAddedToDocumentRoot:a3 dolcContext:a4];
}

- (void)wasAddedToDocumentRoot:(id)a3 context:(id)a4
{
  v7.receiver = self;
  v7.super_class = TSWPFootnoteReferenceAttachment;
  [TSWPAttachment wasAddedToDocumentRoot:sel_wasAddedToDocumentRoot_context_ context:?];
  [(TSWPStorage *)[(TSWPFootnoteReferenceAttachment *)self containedStorage] wasAddedToDocumentRoot:a3 dolcContext:a4];
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  v5.receiver = self;
  v5.super_class = TSWPFootnoteReferenceAttachment;
  [(TSWPAttachment *)&v5 willBeRemovedFromDocumentRoot:?];
  [(TSWPStorage *)[(TSWPFootnoteReferenceAttachment *)self containedStorage] willBeRemovedFromDocumentRoot:a3];
}

- (void)wasRemovedFromDocumentRoot:(id)a3
{
  v5.receiver = self;
  v5.super_class = TSWPFootnoteReferenceAttachment;
  [(TSWPAttachment *)&v5 wasRemovedFromDocumentRoot:?];
  [(TSWPStorage *)[(TSWPFootnoteReferenceAttachment *)self containedStorage] wasRemovedFromDocumentRoot:a3];
}

- (void)adoptStylesheet:(id)a3 withMapper:(id)a4
{
  [a4 pushMappingContext:self];
  v7.receiver = self;
  v7.super_class = TSWPFootnoteReferenceAttachment;
  [(TSWPAttachment *)&v7 adoptStylesheet:a3 withMapper:a4];
  [(TSWPStorage *)self->_containedStorage adoptStylesheet:a3 withMapper:a4];
  [a4 popMappingContext:self];
}

- (void)checkDebug
{
  parentStorage = self->super.super._parentStorage;
  if (parentStorage && [(TSWPStorage *)parentStorage findCharIndexForFootnoteAttachment:self]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPFootnoteReferenceAttachment checkDebug]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFootnoteReferenceAttachment.mm"), 270, @"Attachment not found in parent storage"}];
  }

  if (!self->_containedStorage)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPFootnoteReferenceAttachment checkDebug]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFootnoteReferenceAttachment.mm"), 272, @"invalid nil value for '%s'", "_containedStorage"}];
  }
}

@end