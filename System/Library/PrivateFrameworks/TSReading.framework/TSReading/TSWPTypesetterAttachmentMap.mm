@interface TSWPTypesetterAttachmentMap
+ (id)mapWithAttachment:(id)attachment layout:(id)layout pageNumber:(unint64_t)number pageCount:(unint64_t)count footnoteMarkProvider:(id)provider styleProvider:(id)styleProvider colorOverride:(id)override;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation TSWPTypesetterAttachmentMap

+ (id)mapWithAttachment:(id)attachment layout:(id)layout pageNumber:(unint64_t)number pageCount:(unint64_t)count footnoteMarkProvider:(id)provider styleProvider:(id)styleProvider colorOverride:(id)override
{
  v15 = objc_alloc_init(self);
  v16 = v15;
  if (v15)
  {
    v15[1] = attachment;
    v15[2] = layout;
    if (([attachment elementKind] & 0x1E0) != 0)
    {
      objc_opt_class();
      v17 = TSUDynamicCast();
      parentStorage = [v17 parentStorage];
      findCharIndex = [v17 findCharIndex];
      if (provider)
      {
        objc_opt_class();
        v20 = TSUDynamicCast();
        if (v20)
        {
          containedStorage = [v20 containedStorage];
          providerCopy2 = provider;
LABEL_10:
          v25 = [providerCopy2 markStringForFootnoteReferenceStorage:containedStorage];
LABEL_12:
          v26 = v25;
          if (v25)
          {
            v27 = [parentStorage characterStyleAtCharIndex:findCharIndex left:0 effectiveRange:0];
            v28 = [styleProvider paragraphStyleAtParIndex:objc_msgSend(parentStorage effectiveRange:{"paragraphIndexAtCharIndex:", findCharIndex), 0}];
            v29 = [parentStorage isWritingDirectionRightToLeftForParagraphAtCharIndex:findCharIndex];
            v30 = *MEMORY[0x277CBECE8];
            MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, [v28 getTypesetterAttributes:v27 scalePercent:100 isRightToLeft:v29]);
            if (MutableCopy)
            {
              v32 = MutableCopy;
              CFDictionaryRemoveValue(MutableCopy, @"TSWPSuperscript");
              if (override)
              {
                CFDictionarySetValue(v32, *MEMORY[0x277CC49C0], [override CGColor]);
              }

              v33 = CFAttributedStringCreate(v30, v26, v32);
              if (v33)
              {
                v34 = v33;
                v35 = CTLineCreateWithAttributedString(v33);
                CFRelease(v34);
                CFRelease(v32);
                v16[3] = v35;
                if (v35)
                {
                  goto LABEL_22;
                }

                goto LABEL_21;
              }

              CFRelease(v32);
            }
          }

          v16[3] = 0;
LABEL_21:
          currentHandler = [MEMORY[0x277D6C290] currentHandler];
          v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPTypesetterAttachmentMap mapWithAttachment:layout:pageNumber:pageCount:footnoteMarkProvider:styleProvider:colorOverride:]"];
          [currentHandler handleFailureInFunction:v37 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 161, @"invalid nil value for '%s'", "result->_lineRef"}];
          goto LABEL_22;
        }

        if ([v17 elementKind] == 128)
        {
          if ([parentStorage wpKind] != 2)
          {
            currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
            v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CTLineRef createLineRefForAttachment(TSWPTextualAttachment *, NSUInteger, NSUInteger, id<TSWPFootnoteMarkProvider>, id<TSWPStyleProvider>, TSUColor *)"}];
            [currentHandler2 handleFailureInFunction:v24 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 4657, @"Footnote mark in non-footnote storage"}];
          }

          providerCopy2 = provider;
          containedStorage = parentStorage;
          goto LABEL_10;
        }
      }

      v25 = [v17 stringWithPageNumber:number pageCount:count charIndex:findCharIndex];
      goto LABEL_12;
    }
  }

LABEL_22:

  return v16;
}

- (void)dealloc
{
  lineRef = self->_lineRef;
  if (lineRef)
  {
    CFRelease(lineRef);
  }

  v4.receiver = self;
  v4.super_class = TSWPTypesetterAttachmentMap;
  [(TSWPTypesetterAttachmentMap *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TSWPTypesetterAttachmentMap);
  v5 = v4;
  if (v4)
  {
    v4->_attachment = self->_attachment;
    v4->_layout = self->_layout;
    v5->_lineRef = CFRetain(self->_lineRef);
  }

  return v5;
}

@end