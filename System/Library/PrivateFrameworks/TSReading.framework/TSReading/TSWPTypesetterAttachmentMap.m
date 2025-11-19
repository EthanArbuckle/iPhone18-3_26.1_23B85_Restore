@interface TSWPTypesetterAttachmentMap
+ (id)mapWithAttachment:(id)a3 layout:(id)a4 pageNumber:(unint64_t)a5 pageCount:(unint64_t)a6 footnoteMarkProvider:(id)a7 styleProvider:(id)a8 colorOverride:(id)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation TSWPTypesetterAttachmentMap

+ (id)mapWithAttachment:(id)a3 layout:(id)a4 pageNumber:(unint64_t)a5 pageCount:(unint64_t)a6 footnoteMarkProvider:(id)a7 styleProvider:(id)a8 colorOverride:(id)a9
{
  v15 = objc_alloc_init(a1);
  v16 = v15;
  if (v15)
  {
    v15[1] = a3;
    v15[2] = a4;
    if (([a3 elementKind] & 0x1E0) != 0)
    {
      objc_opt_class();
      v17 = TSUDynamicCast();
      v18 = [v17 parentStorage];
      v19 = [v17 findCharIndex];
      if (a7)
      {
        objc_opt_class();
        v20 = TSUDynamicCast();
        if (v20)
        {
          v21 = [v20 containedStorage];
          v22 = a7;
LABEL_10:
          v25 = [v22 markStringForFootnoteReferenceStorage:v21];
LABEL_12:
          v26 = v25;
          if (v25)
          {
            v27 = [v18 characterStyleAtCharIndex:v19 left:0 effectiveRange:0];
            v28 = [a8 paragraphStyleAtParIndex:objc_msgSend(v18 effectiveRange:{"paragraphIndexAtCharIndex:", v19), 0}];
            v29 = [v18 isWritingDirectionRightToLeftForParagraphAtCharIndex:v19];
            v30 = *MEMORY[0x277CBECE8];
            MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, [v28 getTypesetterAttributes:v27 scalePercent:100 isRightToLeft:v29]);
            if (MutableCopy)
            {
              v32 = MutableCopy;
              CFDictionaryRemoveValue(MutableCopy, @"TSWPSuperscript");
              if (a9)
              {
                CFDictionarySetValue(v32, *MEMORY[0x277CC49C0], [a9 CGColor]);
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
          v36 = [MEMORY[0x277D6C290] currentHandler];
          v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPTypesetterAttachmentMap mapWithAttachment:layout:pageNumber:pageCount:footnoteMarkProvider:styleProvider:colorOverride:]"];
          [v36 handleFailureInFunction:v37 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 161, @"invalid nil value for '%s'", "result->_lineRef"}];
          goto LABEL_22;
        }

        if ([v17 elementKind] == 128)
        {
          if ([v18 wpKind] != 2)
          {
            v23 = [MEMORY[0x277D6C290] currentHandler];
            v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CTLineRef createLineRefForAttachment(TSWPTextualAttachment *, NSUInteger, NSUInteger, id<TSWPFootnoteMarkProvider>, id<TSWPStyleProvider>, TSUColor *)"}];
            [v23 handleFailureInFunction:v24 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPCoreTextTypesetter.mm"), 4657, @"Footnote mark in non-footnote storage"}];
          }

          v22 = a7;
          v21 = v18;
          goto LABEL_10;
        }
      }

      v25 = [v17 stringWithPageNumber:a5 pageCount:a6 charIndex:v19];
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

- (id)copyWithZone:(_NSZone *)a3
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