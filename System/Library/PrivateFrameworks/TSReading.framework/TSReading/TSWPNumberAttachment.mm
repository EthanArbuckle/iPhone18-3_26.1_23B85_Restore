@interface TSWPNumberAttachment
- (id)copyWithContext:(id)context;
- (id)stringEquivalent;
- (id)stringEquivalentWithLayoutParent:(id)parent;
- (id)stringWithNumber:(unint64_t)number;
- (void)dealloc;
@end

@implementation TSWPNumberAttachment

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPNumberAttachment;
  [(TSWPNumberAttachment *)&v3 dealloc];
}

- (id)copyWithContext:(id)context
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{-[TSWPNumberAttachment zone](self, "zone")), "initWithContext:", context}];
  [v4 setNumberFormat:self->_numberFormat];
  [v4 setStringValue:self->_stringValue];
  return v4;
}

- (id)stringEquivalent
{
  if (![(TSWPNumberAttachment *)self stringValue])
  {
    return &stru_287D36338;
  }

  return [(TSWPNumberAttachment *)self stringValue];
}

- (id)stringEquivalentWithLayoutParent:(id)parent
{
  if (parent)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPNumberAttachment stringEquivalentWithLayoutParent:]"];
      [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPNumberAttachment.mm"), 152, @"Expected protocol support."}];
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPNumberAttachment stringEquivalentWithLayoutParent:]"];
      [currentHandler2 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPNumberAttachment.mm"), 153, @"Expected protocol support."}];
    }

    if (objc_opt_respondsToSelector())
    {
      v9 = [parent pageCountForAttachment:self];
    }

    else
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (objc_opt_respondsToSelector())
    {
      v11 = [parent pageNumberForAttachment:self];
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    return [(TSWPTextualAttachment *)self stringWithPageNumber:v11 pageCount:v9 charIndex:0];
  }

  else
  {

    return [(TSWPNumberAttachment *)self stringEquivalent];
  }
}

- (id)stringWithNumber:(unint64_t)number
{
  if (number == 0x7FFFFFFFFFFFFFFFLL)
  {
    numberCopy = 1;
  }

  else
  {
    numberCopy = number;
  }

  -[TSWPNumberAttachment setStringValue:](self, "setStringValue:", [MEMORY[0x277CCACA8] stringForValue:numberCopy withPageNumberFormat:-[TSWPNumberAttachment numberFormat](self, "numberFormat")]);

  return [(TSWPNumberAttachment *)self stringValue];
}

@end