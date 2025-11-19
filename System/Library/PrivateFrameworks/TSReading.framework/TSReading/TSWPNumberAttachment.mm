@interface TSWPNumberAttachment
- (id)copyWithContext:(id)a3;
- (id)stringEquivalent;
- (id)stringEquivalentWithLayoutParent:(id)a3;
- (id)stringWithNumber:(unint64_t)a3;
- (void)dealloc;
@end

@implementation TSWPNumberAttachment

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPNumberAttachment;
  [(TSWPNumberAttachment *)&v3 dealloc];
}

- (id)copyWithContext:(id)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{-[TSWPNumberAttachment zone](self, "zone")), "initWithContext:", a3}];
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

- (id)stringEquivalentWithLayoutParent:(id)a3
{
  if (a3)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v5 = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPNumberAttachment stringEquivalentWithLayoutParent:]"];
      [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPNumberAttachment.mm"), 152, @"Expected protocol support."}];
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v7 = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPNumberAttachment stringEquivalentWithLayoutParent:]"];
      [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPNumberAttachment.mm"), 153, @"Expected protocol support."}];
    }

    if (objc_opt_respondsToSelector())
    {
      v9 = [a3 pageCountForAttachment:self];
    }

    else
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (objc_opt_respondsToSelector())
    {
      v11 = [a3 pageNumberForAttachment:self];
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

- (id)stringWithNumber:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3;
  }

  -[TSWPNumberAttachment setStringValue:](self, "setStringValue:", [MEMORY[0x277CCACA8] stringForValue:v4 withPageNumberFormat:-[TSWPNumberAttachment numberFormat](self, "numberFormat")]);

  return [(TSWPNumberAttachment *)self stringValue];
}

@end