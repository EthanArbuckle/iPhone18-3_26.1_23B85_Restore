@interface TSWPTypesetterAttachmentMap
+ (id)mapWithAttachment:(id)attachment layout:(id)layout pageNumber:(unint64_t)number pageCount:(unint64_t)count footnoteMarkProvider:(id)provider styleProvider:(id)styleProvider colorOverride:(id)override textScalePercent:(unint64_t)self0 targetSupportsPageNumbers:(BOOL)self1;
- (TSDLayout)layout;
- (TSWPAttachment)attachment;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)layoutIfNeeded;
@end

@implementation TSWPTypesetterAttachmentMap

+ (id)mapWithAttachment:(id)attachment layout:(id)layout pageNumber:(unint64_t)number pageCount:(unint64_t)count footnoteMarkProvider:(id)provider styleProvider:(id)styleProvider colorOverride:(id)override textScalePercent:(unint64_t)self0 targetSupportsPageNumbers:(BOOL)self1
{
  attachmentCopy = attachment;
  layoutCopy = layout;
  providerCopy = provider;
  styleProviderCopy = styleProvider;
  overrideCopy = override;
  v20 = objc_alloc_init(self);
  if (v20)
  {
    if (!attachmentCopy)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "+[TSWPTypesetterAttachmentMap mapWithAttachment:layout:pageNumber:pageCount:footnoteMarkProvider:styleProvider:colorOverride:textScalePercent:targetSupportsPageNumbers:]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 188, 0, "invalid nil value for '%{public}s'", "attachment");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
    }

    if ((objc_msgSend_isAnchored(attachmentCopy, v18, v19) & 1) == 0 && objc_msgSend_isDrawable(attachmentCopy, v28, v29))
    {
      isPartitioned = objc_msgSend_isPartitioned(attachmentCopy, v30, v31);
      if (!((layoutCopy != 0) | isPartitioned & 1))
      {
        v35 = MEMORY[0x277D81150];
        v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "+[TSWPTypesetterAttachmentMap mapWithAttachment:layout:pageNumber:pageCount:footnoteMarkProvider:styleProvider:colorOverride:textScalePercent:targetSupportsPageNumbers:]");
        v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v39, v36, v38, 190, 0, "Inline drawable attachment requires a layout");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41);
      }

      if ((isPartitioned & 1) == 0)
      {
        v42 = objc_msgSend_layoutController(layoutCopy, v32, v33);

        if (!v42)
        {
          v44 = MEMORY[0x277D81150];
          v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "+[TSWPTypesetterAttachmentMap mapWithAttachment:layout:pageNumber:pageCount:footnoteMarkProvider:styleProvider:colorOverride:textScalePercent:targetSupportsPageNumbers:]");
          v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v48, v45, v47, 191, 0, "Expected inline layout to have layout controller");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50);
        }
      }
    }

    objc_storeWeak(v20 + 2, attachmentCopy);
    objc_storeStrong(v20 + 3, layout);
    *(v20 + 8) = 1;
    if ((objc_msgSend_elementKind(attachmentCopy, v51, v52) & 0x1E0) != 0)
    {
      objc_opt_class();
      v53 = TSUDynamicCast();
      v121 = providerCopy;
      v120 = styleProviderCopy;
      v118 = overrideCopy;
      v119 = objc_msgSend_parentStorage(v53, v54, v55);
      CharIndex = objc_msgSend_findCharIndex(v53, v56, v57);
      if (!v121)
      {
        goto LABEL_20;
      }

      objc_opt_class();
      v61 = TSUDynamicCast();
      v64 = v61;
      if (v61)
      {
        v65 = objc_msgSend_containedStorage(v61, v62, v63);
        v67 = objc_msgSend_markStringForFootnoteReferenceStorage_(v121, v66, v65);

        if (!v67)
        {
          goto LABEL_35;
        }

LABEL_26:
        v78 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(v120, v68, CharIndex, 0);
        v80 = objc_msgSend_paragraphIndexAtCharIndex_(v119, v79, CharIndex);
        v83 = objc_msgSend_paragraphStyleAtParIndex_effectiveRange_(v120, v81, v80, 0);
        if (v83)
        {
          isWritingDirectionRightToLeftForParagraphAtCharIndex = objc_msgSend_isWritingDirectionRightToLeftForParagraphAtCharIndex_(v119, v82, CharIndex);
          v86 = objc_msgSend_getTypesetterAttributes_scalePercent_isRightToLeft_(v83, v85, v78, percent, isWritingDirectionRightToLeftForParagraphAtCharIndex);
          v89 = objc_msgSend_mutableCopy(v86, v87, v88);

          if (v89)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v89, v90, 0, @"TSWPSuperscript");
            if (objc_msgSend_CGColor(v118, v91, v92))
            {
              v95 = objc_msgSend_CGColor(v118, v93, v94);
              objc_msgSend_setObject_forKeyedSubscript_(v89, v96, v95, *MEMORY[0x277CC49C0]);
            }

            v97 = objc_alloc(MEMORY[0x277CCA898]);
            v99 = objc_msgSend_initWithString_attributes_(v97, v98, v67, v89);
            v100 = v99;
            if (v99)
            {
              v101 = CTLineCreateWithAttributedString(v99);
            }

            else
            {
              v101 = 0;
            }
          }

          else
          {
            v101 = 0;
          }
        }

        else
        {
          v102 = MEMORY[0x277D81150];
          v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, "CTLineRef createLineRefForAttachment(TSWPTextualAttachment *__strong, NSUInteger, NSUInteger, __strong id<TSWPFootnoteMarkProvider>, __strong id<TSWPStyleProvider>, TSUColor *__strong, NSUInteger, BOOL)");
          v105 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v104, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v102, v106, v103, v105, 4732, 0, "invalid nil value for '%{public}s'", "paragraphStyle");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v107, v108);
          v101 = 0;
        }

        goto LABEL_40;
      }

      if (objc_msgSend_elementKind(v53, v62, v63) == 128)
      {
        if (objc_msgSend_wpKind(v119, v58, v59) != 2)
        {
          v70 = MEMORY[0x277D81150];
          v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "CTLineRef createLineRefForAttachment(TSWPTextualAttachment *__strong, NSUInteger, NSUInteger, __strong id<TSWPFootnoteMarkProvider>, __strong id<TSWPStyleProvider>, TSUColor *__strong, NSUInteger, BOOL)");
          v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v74, v71, v73, 4720, 0, "Footnote mark in non-footnote storage");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v75, v76);
        }

        v64 = 0;
        v77 = objc_msgSend_markStringForFootnoteReferenceStorage_(v121, v69, v119);
      }

      else
      {
LABEL_20:
        if (objc_msgSend_elementKind(v53, v58, v59) == 256)
        {
          if (!numbers)
          {
            v64 = 0;
            v67 = &stru_28860A0F0;
            goto LABEL_26;
          }
        }

        else if (!numbers)
        {
          v67 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v68, @"%C", 65533);
          v64 = 0;
          if (v67)
          {
            goto LABEL_26;
          }

          goto LABEL_35;
        }

        v64 = 0;
        v77 = objc_msgSend_stringWithPageNumber_pageCount_charIndex_(v53, v68, number, count, CharIndex);
      }

      v67 = v77;
      if (v77)
      {
        goto LABEL_26;
      }

LABEL_35:
      v101 = 0;
LABEL_40:

      v20[4] = v101;
      if (!v20[4])
      {
        v110 = MEMORY[0x277D81150];
        v111 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v109, "+[TSWPTypesetterAttachmentMap mapWithAttachment:layout:pageNumber:pageCount:footnoteMarkProvider:styleProvider:colorOverride:textScalePercent:targetSupportsPageNumbers:]");
        v113 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v112, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v110, v114, v111, v113, 198, 0, "invalid nil value for '%{public}s'", "result->_lineRef");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v115, v116);
      }
    }
  }

  return v20;
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
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_attachment);
    objc_storeWeak(&v4->_attachment, WeakRetained);

    objc_storeStrong(&v4->_layout, self->_layout);
    v4->_layoutNeedsRevalidation = self->_layoutNeedsRevalidation;
    v4->_lineRef = CFRetain(self->_lineRef);
  }

  return v4;
}

- (void)layoutIfNeeded
{
  if (self->_layoutNeedsRevalidation)
  {
    objc_msgSend_updateMaximumInlineFrameSize(self->_layout, a2, v2);
    objc_msgSend_updateChildrenFromInfo(self->_layout, v4, v5);
    objc_msgSend_invalidate(self->_layout, v6, v7);
    layout = self->_layout;
    if (layout)
    {
      v11 = objc_msgSend_layoutController(layout, v8, v9);

      if (!v11)
      {
        v14 = self->_layout;
        if (v14)
        {
          v15 = objc_msgSend_layoutController(v14, v8, v9);

          if (!v15)
          {
            v16 = MEMORY[0x277D81150];
            v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSWPTypesetterAttachmentMap layoutIfNeeded]");
            v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPCoreTextTypesetter.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 247, 0, "Expected inline layout to have layout controller");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
          }
        }
      }
    }

    v12 = objc_msgSend_layoutController(self->_layout, v8, v9);
    objc_msgSend_validateLayoutWithDependencies_(v12, v13, self->_layout);

    self->_layoutNeedsRevalidation = 0;
  }
}

- (TSDLayout)layout
{
  objc_msgSend_layoutIfNeeded(self, a2, v2);
  layout = self->_layout;

  return layout;
}

- (TSWPAttachment)attachment
{
  WeakRetained = objc_loadWeakRetained(&self->_attachment);

  return WeakRetained;
}

@end