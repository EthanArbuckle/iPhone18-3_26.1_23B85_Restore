@interface TSWPLinkedLayout
- (BOOL)descendersCannotClip;
- (BOOL)discardLayoutsForDrawableAttachmentsInRange:(_NSRange)a3;
- (BOOL)isLastTarget;
- (BOOL)isOverflowing;
- (BOOL)repShouldPreventCaret;
- (id)nextTargetFirstColumn;
- (id)previousTargetLastColumn;
- (void)killDrawableLayouts:(id)a3;
- (void)validate;
- (void)willBeRemovedFromLayoutController:(id)a3;
- (void)wrappableChildInvalidated:(id)a3;
@end

@implementation TSWPLinkedLayout

- (void)killDrawableLayouts:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = objc_msgSend_copy(a3, a2, a3);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v12, v16, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ((objc_msgSend_isBeingManipulated(v11, v6, v7, v12) & 1) == 0)
        {
          objc_msgSend_removeFromParent(v11, v6, v7);
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v12, v16, 16);
    }

    while (v8);
  }
}

- (void)wrappableChildInvalidated:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TSWPLinkedLayout;
  [(TSWPLayout *)&v10 wrappableChildInvalidated:v4];
  v7 = objc_msgSend_wrapInvalidationParent(self, v5, v6);
  v9 = v7;
  if (v7 != self)
  {
    objc_msgSend_wrappableChildInvalidated_(v7, v8, v4);
  }
}

- (BOOL)descendersCannotClip
{
  isLinked = objc_msgSend_isLinked(self, a2, v2);
  if (isLinked)
  {
    LOBYTE(isLinked) = objc_msgSend_isLastTarget(self, v5, v6) ^ 1;
  }

  return isLinked;
}

- (BOOL)isLastTarget
{
  objc_opt_class();
  v5 = objc_msgSend_parent(self, v3, v4);
  v6 = TSUCheckedDynamicCast();
  v9 = objc_msgSend_info(v6, v7, v8);

  v12 = objc_msgSend_textFlow(v9, v10, v11);
  v15 = objc_msgSend_textboxes(v12, v13, v14);
  v18 = objc_msgSend_lastObject(v15, v16, v17);
  v19 = v18 == v9;

  return v19;
}

- (BOOL)isOverflowing
{
  if (!objc_msgSend_isLastTarget(self, a2, v2))
  {
    return 0;
  }

  v6 = objc_msgSend_columns(self, v4, v5);
  v9 = objc_msgSend_lastObject(v6, v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_range(v9, v10, v11);
    v14 = &v13[v12];
    v16 = objc_msgSend_storage(self, v13, v15);
    v19 = v14 < objc_msgSend_length(v16, v17, v18);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)previousTargetLastColumn
{
  v4 = objc_msgSend_layoutManager(self, a2, v2);
  v7 = objc_msgSend_owner(v4, v5, v6);

  if (objc_opt_respondsToSelector())
  {
    v9 = objc_msgSend_previousTargetLastColumnForTarget_(v7, v8, self);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)willBeRemovedFromLayoutController:(id)a3
{
  layoutManager = self->super._layoutManager;
  self->super._layoutManager = 0;
  v5 = a3;

  v6.receiver = self;
  v6.super_class = TSWPLinkedLayout;
  [(TSWPLayout *)&v6 willBeRemovedFromLayoutController:v5];
}

- (BOOL)repShouldPreventCaret
{
  v4 = objc_msgSend_storage(self, a2, v2);
  v7 = objc_msgSend_length(v4, v5, v6);

  if (v7)
  {
    return 0;
  }

  objc_opt_class();
  v11 = objc_msgSend_parent(self, v9, v10);
  v12 = TSUCheckedDynamicCast();
  v15 = objc_msgSend_info(v12, v13, v14);

  v18 = objc_msgSend_textFlow(v15, v16, v17);
  v21 = objc_msgSend_textboxes(v18, v19, v20);
  v24 = objc_msgSend_firstObject(v21, v22, v23);
  v8 = v24 != v15;

  return v8;
}

- (void)validate
{
  if (self->super._layoutManager)
  {
    v2.receiver = self;
    v2.super_class = TSWPLinkedLayout;
    [(TSWPLayout *)&v2 validate];
  }
}

- (BOOL)discardLayoutsForDrawableAttachmentsInRange:(_NSRange)a3
{
  v53 = *MEMORY[0x277D85DE8];
  if (!a3.length)
  {
    return 0;
  }

  length = a3.length;
  location = a3.location;
  v6 = objc_msgSend_storage(self, a2, a3.location);
  v8 = objc_msgSend_attachmentIndexRangeForTextRange_(v6, v7, location, length);
  v47 = v8 + v9;
  v45 = v6;
  if (v8 >= v8 + v9)
  {
    goto LABEL_23;
  }

  v10 = v8;
  v44 = self;
  v11 = 0;
  do
  {
    objc_opt_class();
    v13 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(v6, v12, v10, 0);
    v14 = TSUDynamicCast();

    if (v14)
    {
      if (objc_msgSend_isAnchored(v14, v15, v16))
      {
        v19 = MEMORY[0x277D81150];
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSWPLinkedLayout discardLayoutsForDrawableAttachmentsInRange:]");
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLinkedLayout.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 140, 0, "Attachment should not be anchored.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
      }

      if ((objc_msgSend_isAnchored(v14, v17, v18, v44) & 1) == 0)
      {
        v46 = v10;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v28 = objc_msgSend_children(v44, v26, v27);
        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v48, v52, 16);
        if (v30)
        {
          v33 = v30;
          v34 = *v49;
          do
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v49 != v34)
              {
                objc_enumerationMutation(v28);
              }

              v36 = *(*(&v48 + 1) + 8 * i);
              v37 = objc_msgSend_info(v36, v31, v32);
              v40 = objc_msgSend_owningAttachment(v37, v38, v39);

              if (v40 == v14)
              {
                if (!v11)
                {
                  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
                }

                objc_msgSend_addObject_(v11, v31, v36);
              }
            }

            v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v48, v52, 16);
          }

          while (v33);
        }

        v6 = v45;
        v10 = v46;
      }
    }

    ++v10;
  }

  while (v10 != v47);
  if (v11)
  {
    objc_msgSend_killDrawableLayouts_(v44, v41, v11);

    v42 = 1;
  }

  else
  {
LABEL_23:
    v42 = 0;
  }

  return v42;
}

- (id)nextTargetFirstColumn
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPLinkedLayout nextTargetFirstColumn]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPLinkedLayout.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 165, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[TSWPLinkedLayout nextTargetFirstColumn]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
}

@end