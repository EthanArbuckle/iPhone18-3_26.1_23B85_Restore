@interface TSWPShapeLayout
- (BOOL)columnsAreLeftToRight;
- (BOOL)isInvisibleAutosizingShape;
- (BOOL)parentAutosizes;
- (BOOL)shouldShowInstructionalText;
- (BOOL)shouldValidate;
- (BOOL)shrinkTextToFit;
- (BOOL)textLayoutShouldLayoutVertically:(id)vertically;
- (BOOL)textLayoutShouldWrapAroundExternalDrawables:(id)drawables;
- (CGAffineTransform)autosizedTransform;
- (CGAffineTransform)autosizedTransformForInfoGeometry:(SEL)geometry;
- (CGAffineTransform)computeLayoutTransform;
- (CGPoint)autosizePositionOffset;
- (CGPoint)autosizePositionOffsetForFixedWidth:(BOOL)width height:(BOOL)height;
- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size;
- (CGRect)nonAutosizedFrameForTextLayout:(id)layout;
- (TSWPShapeLayout)initWithInfo:(id)info;
- (TSWPShapeLayoutDelegate)delegate;
- (UIEdgeInsets)adjustedInsetsForTarget:(id)target;
- (double)gapForColumnIndex:(unint64_t)index bodyWidth:(double)width;
- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width target:(id)target outWidth:(double *)outWidth outGap:(double *)gap;
- (double)widthForColumnIndex:(unint64_t)index bodyWidth:(double)width;
- (id)bidirectionalSizeDependentLayouts;
- (id)childInfosForChildLayouts;
- (id)dependentLayouts;
- (id)dependentsOfTextLayout:(id)layout;
- (id)interiorClippingPath;
- (id)interiorWrapPath;
- (id)interiorWrapSegments;
- (id)layoutsForProvidingGuidesForChildLayouts;
- (id)pathSource;
- (id)styleProviderForTextLayout:(id)layout;
- (id)textWrapper;
- (int)verticalAlignmentForTextLayout:(id)layout;
- (unint64_t)autosizeFlagsForTextLayout:(id)layout;
- (unint64_t)columnCount;
- (void)createContainedLayoutForEditing;
- (void)createContainedLayoutForInstructionalText;
- (void)dealloc;
- (void)invalidatePath;
- (void)invalidateSize;
- (void)processChangedProperty:(int)property;
- (void)processChanges:(id)changes forChangeSource:(id)source;
- (void)setGeometry:(id)geometry;
- (void)transferLayoutGeometryToInfo:(id)info withAdditionalTransform:(CGAffineTransform *)transform assertIfInDocument:(BOOL)document;
- (void)updateChildrenFromInfo;
- (void)validate;
- (void)willBeAddedToLayoutController:(id)controller;
- (void)willBeRemovedFromLayoutController:(id)controller;
@end

@implementation TSWPShapeLayout

- (TSWPShapeLayout)initWithInfo:(id)info
{
  infoCopy = info;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPShapeLayout initWithInfo:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPShapeLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 49, 0, "info is wrong class for layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v30.receiver = self;
  v30.super_class = TSWPShapeLayout;
  v13 = [(TSWPShapeLayout *)&v30 initWithInfo:infoCopy];
  v16 = v13;
  if (v13)
  {
    v17 = objc_msgSend_info(v13, v14, v15);
    v20 = objc_msgSend_textStorage(v17, v18, v19);

    if (!v20)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSWPShapeLayout initWithInfo:]");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPShapeLayout.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 51, 0, "invalid nil value for '%{public}s'", "self.info.textStorage");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
    }
  }

  return v16;
}

- (void)dealloc
{
  v4 = objc_msgSend_info(self, a2, v2);
  v7 = objc_msgSend_documentRoot(v4, v5, v6);
  v10 = objc_msgSend_changeNotifier(v7, v8, v9);
  v13 = objc_msgSend_info(self, v11, v12);
  objc_msgSend_removeObserver_forChangeSource_(v10, v14, self, v13);

  objc_msgSend_removeFromParent(self->_containedLayout, v15, v16);
  containedLayout = self->_containedLayout;
  self->_containedLayout = 0;

  v18.receiver = self;
  v18.super_class = TSWPShapeLayout;
  [(TSWPShapeLayout *)&v18 dealloc];
}

- (void)willBeAddedToLayoutController:(id)controller
{
  v41.receiver = self;
  v41.super_class = TSWPShapeLayout;
  [(TSWPShapeLayout *)&v41 willBeAddedToLayoutController:controller];
  if (self->_observingStorage)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSWPShapeLayout willBeAddedToLayoutController:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPShapeLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 66, 0, "already observing the storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = objc_msgSend_info(self, v4, v5);
  isLinked = objc_msgSend_isLinked(v13, v14, v15);

  if ((isLinked & 1) == 0 && !self->_observingStorage)
  {
    v19 = objc_msgSend_info(self, v17, v18);
    v22 = objc_msgSend_textStorage(v19, v20, v21);
    objc_msgSend_addObserver_(v22, v23, self);

    self->_observingStorage = 1;
    v26 = objc_msgSend_info(self, v24, v25);
    v29 = objc_msgSend_textStorage(v26, v27, v28);
    objc_storeWeak(&self->_observedStorage, v29);
  }

  v30 = objc_msgSend_info(self, v17, v18);
  v33 = objc_msgSend_documentRoot(v30, v31, v32);
  v36 = objc_msgSend_changeNotifier(v33, v34, v35);
  v39 = objc_msgSend_info(self, v37, v38);
  objc_msgSend_addObserver_forChangeSource_(v36, v40, self, v39);
}

- (void)willBeRemovedFromLayoutController:(id)controller
{
  v19.receiver = self;
  v19.super_class = TSWPShapeLayout;
  [(TSWPShapeLayout *)&v19 willBeRemovedFromLayoutController:controller];
  if (self->_observingStorage)
  {
    WeakRetained = objc_loadWeakRetained(&self->_observedStorage);
    objc_msgSend_removeObserver_(WeakRetained, v7, self);

    self->_observingStorage = 0;
    objc_storeWeak(&self->_observedStorage, 0);
  }

  v8 = objc_msgSend_info(self, v4, v5);
  v11 = objc_msgSend_documentRoot(v8, v9, v10);
  v14 = objc_msgSend_changeNotifier(v11, v12, v13);
  v17 = objc_msgSend_info(self, v15, v16);
  objc_msgSend_removeObserver_forChangeSource_(v14, v18, self, v17);
}

- (id)bidirectionalSizeDependentLayouts
{
  v16[1] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = TSWPShapeLayout;
  bidirectionalSizeDependentLayouts = [(TSWPShapeLayout *)&v14 bidirectionalSizeDependentLayouts];
  v5 = objc_msgSend_autosizeFlagsForTextLayout_(self, v4, self->_containedLayout);
  if ((~v5 & 0xF) != 0 && v5 && self->_containedLayout != 0)
  {
    if (objc_msgSend_count(bidirectionalSizeDependentLayouts, v6, v7))
    {
      containedLayout = self->_containedLayout;
      v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, &containedLayout, 1);
      v12 = objc_msgSend_arrayByAddingObjectsFromArray_(v10, v11, bidirectionalSizeDependentLayouts);

      bidirectionalSizeDependentLayouts = v10;
    }

    else
    {
      v16[0] = self->_containedLayout;
      v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v16, 1);
    }

    bidirectionalSizeDependentLayouts = v12;
  }

  return bidirectionalSizeDependentLayouts;
}

- (void)validate
{
  if (objc_msgSend_shouldAssertDependenciesAreCorrect(self, a2, v2))
  {
    v6 = objc_msgSend_parent(self, v4, v5);
    if (v6)
    {
      containedLayout = self->_containedLayout;

      if (containedLayout)
      {
        v10 = objc_msgSend_textLayoutValid(self->_containedLayout, v8, v9);
        v14 = objc_msgSend_autosizes(self, v11, v12);
        v15 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D80468]);
        if (v14 && (*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D80468]) & 2) != 0 && (v10 & 1) == 0)
        {
          v16 = MEMORY[0x277D81150];
          v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSWPShapeLayout validate]");
          v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPShapeLayout.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 130, 0, "For an autosizing text box, if the shape's geometry is invalid then textLayoutValid should be YES.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
        }

        if ((v15 & 2) != 0)
        {
          v23 = v14;
        }

        else
        {
          v23 = 1;
        }

        if ((v23 & 1) == 0 && ((v10 ^ 1) & 1) == 0)
        {
          v24 = MEMORY[0x277D81150];
          v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSWPShapeLayout validate]");
          v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPShapeLayout.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 131, 0, "For an non-autosizing text box, if the shape's geometry is invalid, then the textLayoutValid should be NO.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
        }
      }
    }
  }

  v31.receiver = self;
  v31.super_class = TSWPShapeLayout;
  [(TSWPShapeLayout *)&v31 validate];
}

- (void)invalidateSize
{
  v8.receiver = self;
  v8.super_class = TSWPShapeLayout;
  [(TSWPShapeLayout *)&v8 invalidateSize];
  v4 = objc_msgSend_autosizeFlagsForTextLayout_(self, v3, self->_containedLayout);
  if (v4)
  {
    v7 = (v4 & 0xF) == 15;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    objc_msgSend_invalidatePath(self, v5, v6);
  }
}

- (void)invalidatePath
{
  v4.receiver = self;
  v4.super_class = TSWPShapeLayout;
  [(TSWPShapeLayout *)&v4 invalidatePath];
  cachedInteriorWrapSegments = self->_cachedInteriorWrapSegments;
  self->_cachedInteriorWrapSegments = 0;
}

- (id)layoutsForProvidingGuidesForChildLayouts
{
  v4 = objc_msgSend_parentLayoutForProvidingGuides(self, a2, v2);
  v7 = objc_msgSend_layoutsForProvidingGuidesForChildLayouts(v4, v5, v6);
  v10 = objc_msgSend_mutableCopy(v7, v8, v9);

  objc_msgSend_removeObject_(v10, v11, self);

  return v10;
}

- (BOOL)shouldValidate
{
  v8.receiver = self;
  v8.super_class = TSWPShapeLayout;
  if (![(TSWPShapeLayout *)&v8 shouldValidate])
  {
    return 0;
  }

  v5 = objc_msgSend_layoutController(self, v3, v4);
  v6 = v5 != 0;

  return v6;
}

- (BOOL)shouldShowInstructionalText
{
  v4 = objc_msgSend_layoutController(self, a2, v2);
  v7 = objc_msgSend_canvas(v4, v5, v6);

  if (v7)
  {
    shouldShowInstructionalTextForLayout = objc_msgSend_shouldShowInstructionalTextForLayout_(v7, v8, self);
  }

  else
  {
    shouldShowInstructionalTextForLayout = 0;
  }

  return shouldShowInstructionalTextForLayout;
}

- (void)createContainedLayoutForInstructionalText
{
  v31 = objc_msgSend_info(self, a2, v2);
  v6 = objc_msgSend_textStorage(v31, v4, v5);
  if (objc_msgSend_displaysInstructionalText(v31, v7, v8))
  {
    if (objc_msgSend_length(v6, v9, v10) || (objc_msgSend_instructionalText(v31, v11, v12), v13 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend_length(v13, v14, v15), v13, !v16))
    {
LABEL_8:
      objc_msgSend_createContainedLayoutForEditing(self, v11, v12);
    }
  }

  else
  {
    if (objc_msgSend_isLinked(v31, v9, v10))
    {
      goto LABEL_8;
    }

    if (objc_msgSend_length(v6, v11, v12))
    {
      goto LABEL_8;
    }

    v17 = objc_msgSend_info(self, v11, v12);
    hasVisibleContents = objc_msgSend_hasVisibleContents(v17, v18, v19);

    if (hasVisibleContents)
    {
      goto LABEL_8;
    }

    objc_msgSend_removeFromParent(self->_containedLayout, v11, v12);
    containedLayout = self->_containedLayout;
    self->_containedLayout = 0;
  }

  isLinked = objc_msgSend_isLinked(v31, v11, v12);
  objc_opt_class();
  if (isLinked != (objc_opt_isKindOfClass() & 1))
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSWPShapeLayout createContainedLayoutForInstructionalText]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPShapeLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 257, 0, "wrong class for text layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
  }
}

- (BOOL)isInvisibleAutosizingShape
{
  v4 = objc_msgSend_containedLayout(self, a2, v2);
  v7 = objc_msgSend_storage(v4, v5, v6);
  v10 = objc_msgSend_length(v7, v8, v9);

  v12.receiver = self;
  v12.super_class = TSWPShapeLayout;
  result = [(TSWPShapeLayout *)&v12 isInvisibleAutosizingShape];
  if (v10)
  {
    return 0;
  }

  return result;
}

- (void)processChanges:(id)changes forChangeSource:(id)source
{
  v47 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  sourceCopy = source;
  v10 = objc_msgSend_info(self, v8, v9);

  if (v10 == sourceCopy)
  {
    v38 = sourceCopy;
    v39 = changesCopy;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = changesCopy;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v42, v46, 16);
    if (v12)
    {
      v15 = v12;
      v16 = *v43;
      v40 = *MEMORY[0x277D807F8];
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v43 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v42 + 1) + 8 * i);
          if (objc_msgSend_kind(v18, v13, v14, v38, v39) == 50004)
          {
            v21 = objc_opt_class();
            v24 = objc_msgSend_info(self, v22, v23);
            v27 = objc_msgSend_layoutClass(v24, v25, v26);

            if (v21 != v27)
            {
              v28 = objc_msgSend_layoutController(self, v19, v20);
              objc_msgSend_invalidateLayoutForRecreation_(v28, v29, self);
            }
          }

          if (objc_msgSend_kind(v18, v19, v20) == 50003)
          {
            objc_opt_class();
            v32 = objc_msgSend_details(v18, v30, v31);
            v33 = TSUCheckedDynamicCast();
            v35 = objc_msgSend_containsObject_(v33, v34, v40);

            if (v35)
            {
              v36 = objc_msgSend_layoutController(self, v13, v14);
              objc_msgSend_invalidateLayoutForRecreation_(v36, v37, self);
            }
          }
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v42, v46, 16);
      }

      while (v15);
    }

    sourceCopy = v38;
    changesCopy = v39;
  }
}

- (void)createContainedLayoutForEditing
{
  v4 = objc_msgSend_info(self, a2, v2);
  v20 = objc_msgSend_textStorage(v4, v5, v6);

  containedLayout = self->_containedLayout;
  if (containedLayout)
  {
    if (!objc_msgSend_isInstructional(containedLayout, v7, v8))
    {
      goto LABEL_5;
    }

    containedLayout = self->_containedLayout;
  }

  objc_msgSend_removeFromParent(containedLayout, v7, v8);
  v12 = objc_alloc(objc_msgSend_layoutClass(v20, v10, v11));
  objc_msgSend_nonAutosizedFrameForTextLayout_(self, v13, self->_containedLayout);
  v15 = objc_msgSend_initWithInfo_frame_(v12, v14, v20);
  v16 = self->_containedLayout;
  self->_containedLayout = v15;

  objc_msgSend_insertChild_atIndex_(self, v17, self->_containedLayout, 0);
  objc_msgSend_invalidateSize(self->_containedLayout, v18, v19);
LABEL_5:
}

- (id)childInfosForChildLayouts
{
  v13.receiver = self;
  v13.super_class = TSWPShapeLayout;
  childInfosForChildLayouts = [(TSWPShapeLayout *)&v13 childInfosForChildLayouts];
  v6 = objc_msgSend_mutableCopy(childInfosForChildLayouts, v4, v5);

  containedLayout = self->_containedLayout;
  if (containedLayout)
  {
    v10 = objc_msgSend_info(containedLayout, v7, v8);
    objc_msgSend_insertObject_atIndex_(v6, v11, v10, 0);
  }

  return v6;
}

- (void)updateChildrenFromInfo
{
  objc_msgSend_createContainedLayoutForInstructionalText(self, a2, v2);
  objc_msgSend_updateChildrenFromInfo(self->_containedLayout, v4, v5);
  v6.receiver = self;
  v6.super_class = TSWPShapeLayout;
  [(TSWPShapeLayout *)&v6 updateChildrenFromInfo];
}

- (id)interiorWrapSegments
{
  cachedInteriorWrapSegments = self->_cachedInteriorWrapSegments;
  if (!cachedInteriorWrapSegments)
  {
    v5 = objc_msgSend_interiorWrapPath(self, a2, v2);
    v6 = objc_alloc(MEMORY[0x277D803F0]);
    v8 = objc_msgSend_initWithPath_(v6, v7, v5);
    v9 = self->_cachedInteriorWrapSegments;
    self->_cachedInteriorWrapSegments = v8;

    cachedInteriorWrapSegments = self->_cachedInteriorWrapSegments;
  }

  return cachedInteriorWrapSegments;
}

- (id)interiorWrapPath
{
  objc_opt_class();
  objc_opt_class();
  v5 = objc_msgSend_shapeInfo(self, v3, v4);
  v8 = objc_msgSend_style(v5, v6, v7);
  v9 = TSUDynamicCast();
  v11 = objc_msgSend_valueForProperty_(v9, v10, 146);
  v12 = TSUCheckedDynamicCast();

  objc_msgSend_leftInset(v12, v13, v14);
  v16 = v15;
  v19 = objc_msgSend_shapeInfo(self, v17, v18);
  v22 = objc_msgSend_stroke(v19, v20, v21);

  if (v22 && objc_msgSend_shouldRender(v22, v23, v24))
  {
    objc_msgSend_width(v22, v23, v24);
    v16 = v16 + v25 * 0.5;
  }

  v26 = objc_msgSend_pathSource(self, v23, v24);
  objc_msgSend_join(v22, v27, v28);
  v29 = CGLineJoinToTSULineJoinStyle();
  v31 = objc_msgSend_interiorWrapPathForInset_joinStyle_(v26, v30, v29, v16);

  return v31;
}

- (id)textWrapper
{
  if (objc_msgSend_autosizes(self, a2, v2))
  {
    goto LABEL_5;
  }

  v6 = objc_msgSend_pathSource(self, v4, v5);
  if (objc_msgSend_isRectangular(v6, v7, v8))
  {

LABEL_5:
    v17 = 0;
    goto LABEL_6;
  }

  v11 = objc_msgSend_info(self, v9, v10);
  v14 = objc_msgSend_ignoresInteriorWrap(v11, v12, v13);

  if (v14)
  {
    goto LABEL_5;
  }

  v17 = objc_msgSend_sharedInteriorTextWrapController(TSWPInteriorTextWrapController, v15, v16);
LABEL_6:

  return v17;
}

- (id)interiorClippingPath
{
  v4 = objc_msgSend_shapeInfo(self, a2, v2);
  v7 = objc_msgSend_stroke(v4, v5, v6);

  v12 = 0.0;
  if (objc_msgSend_shouldRender(v7, v8, v9))
  {
    objc_msgSend_width(v7, v10, v11);
    v12 = v13 * 0.5 + 0.0;
  }

  v14 = objc_msgSend_pathSource(self, v10, v11);
  objc_msgSend_join(v7, v15, v16);
  v17 = CGLineJoinToTSULineJoinStyle();
  v19 = objc_msgSend_interiorWrapPathForInset_joinStyle_(v14, v18, v17, v12);

  return v19;
}

- (id)styleProviderForTextLayout:(id)layout
{
  layoutCopy = layout;
  v7 = objc_msgSend_parent(self, v5, v6);
  do
  {
    v8 = TSUProtocolCast();
    if ((objc_msgSend_wantsToProvideStylesForTextLayout_(v8, v9, layoutCopy, &unk_288638918) & 1) == 0)
    {

      v8 = 0;
    }

    v12 = objc_msgSend_parent(v7, v10, v11);

    if (v8)
    {
      break;
    }

    v7 = v12;
  }

  while (v12);
  if (v8)
  {
    v14 = objc_msgSend_styleProviderForTextLayout_(v8, v13, layoutCopy);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)autosizeFlagsForTextLayout:(id)layout
{
  layoutCopy = layout;
  v7 = objc_msgSend_parent(self, v5, v6);
  v8 = TSUProtocolCast();

  objc_opt_class();
  v11 = objc_msgSend_parent(self, v9, v10, &unk_2886495E0);
  v12 = TSUDynamicCast();

  if (v12)
  {
    if ((objc_msgSend_isTransferringLayoutGeometryToInfo(self, v13, v14) & 1) == 0)
    {
      v17 = objc_msgSend_autosizeFlagsForTextLayout_inShapeLayout_(v12, v15, layoutCopy, self);
      goto LABEL_8;
    }
  }

  else if ((objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend_forceParentAutosizeFlagsForTextLayout_(v8, v15, layoutCopy) && v8)
  {
    v17 = objc_msgSend_autosizeFlagsForTextLayout_(v8, v15, layoutCopy);
LABEL_8:
    v18 = v17;
    if (v17 != 96)
    {
      goto LABEL_22;
    }
  }

  v19 = objc_msgSend_layoutInfoGeometry(self, v15, v16);
  v22 = objc_msgSend_info(self, v20, v21);
  IsVertical = objc_msgSend_textIsVertical(v22, v23, v24);

  v28 = objc_msgSend_heightValid(v19, v26, v27);
  if (IsVertical)
  {
    v31 = 4;
  }

  else
  {
    v31 = 1;
  }

  if (IsVertical)
  {
    v32 = 1;
  }

  else
  {
    v32 = 4;
  }

  if (v28)
  {
    v33 = 0;
  }

  else
  {
    v33 = v31;
  }

  if (objc_msgSend_widthValid(v19, v29, v30))
  {
    v34 = 0;
  }

  else
  {
    v34 = v32;
  }

  v18 = v34 | v33;

LABEL_22:
  return v18;
}

- (int)verticalAlignmentForTextLayout:(id)layout
{
  objc_opt_class();
  v6 = objc_msgSend_shapeInfo(self, v4, v5);
  v9 = objc_msgSend_style(v6, v7, v8);
  v10 = TSUDynamicCast();

  if (v10)
  {
    v12 = objc_msgSend_intValueForProperty_(v10, v11, 149);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (CGRect)nonAutosizedFrameForTextLayout:(id)layout
{
  v4 = objc_msgSend_shapeInfo(self, a2, layout);
  v7 = objc_msgSend_stroke(v4, v5, v6);

  if ((objc_msgSend_shouldRender(v7, v8, v9) & 1) == 0)
  {

    v7 = 0;
  }

  v11 = objc_msgSend_autosizeFlagsForTextLayout_(self, v10, self->_containedLayout);
  v14 = objc_msgSend_layoutInfoGeometry(self, v12, v13);
  objc_msgSend_size(v14, v15, v16);
  TSURectWithSize();
  width = v17;
  height = v19;

  if (!v11 && (objc_msgSend_invalidGeometry(self, v21, v22) & 1) == 0)
  {
    objc_msgSend_boundsForStandardKnobs(self, v21, v22);
    TSURectWithSize();
    width = v23;
    height = v24;
  }

  objc_msgSend_pathBounds(self, v21, v22);
  TSUSubtractPoints();
  x = v27;
  y = v29;
  if (v7)
  {
    v31 = objc_msgSend_pathSource(self, v25, v26);
    isRectangular = objc_msgSend_isRectangular(v31, v32, v33);

    if (isRectangular)
    {
      objc_msgSend_width(v7, v35, v36);
      v38 = ceil(v37 * 0.5);
      v39 = fmin(v38, width * 0.5);
      v40 = fmin(v38, height * 0.5);
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      v46 = CGRectInset(v45, v39, v40);
      x = v46.origin.x;
      y = v46.origin.y;
      width = v46.size.width;
      height = v46.size.height;
    }
  }

  v41 = x;
  v42 = y;
  v43 = width;
  v44 = height;
  result.size.height = v44;
  result.size.width = v43;
  result.origin.y = v42;
  result.origin.x = v41;
  return result;
}

- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  layoutCopy = layout;
  if ((objc_msgSend_autosizes(self, v8, v9) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPShapeLayout autosizedFrameForTextLayout:textSize:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPShapeLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 564, 0, "should call only when autosizing");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  v19 = MEMORY[0x277CBF398];
  v21 = *(MEMORY[0x277CBF398] + 16);
  v20 = *(MEMORY[0x277CBF398] + 24);
  v22 = objc_msgSend_parent(self, v10, v11);
  v57 = &unk_2886495E0;
  v23 = TSUProtocolCast();

  if ((objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend_forceParentAutosizedFrameForTextLayout_(v23, v24, layoutCopy, &unk_2886495E0))
  {
    if (v23)
    {
      objc_msgSend_autosizedFrameForTextLayout_textSize_(v23, v24, layoutCopy, width, height);
      v21 = v28;
      v20 = v29;
    }

    else
    {
      v26 = *v19;
      v27 = v19[1];
    }

    v31 = v21;
    v32 = v20;
    v30 = !CGRectIsNull(*&v26);
  }

  else
  {
    v30 = 0;
  }

  v33 = objc_msgSend_shapeInfo(self, v24, v25, v57);
  v36 = objc_msgSend_stroke(v33, v34, v35);

  if (v36 && objc_msgSend_shouldRender(v36, v37, v38))
  {
    objc_msgSend_width(v36, v37, v38);
  }

  v39 = objc_msgSend_layoutInfoGeometry(self, v37, v38);
  v42 = v39;
  if (!v30)
  {
    objc_msgSend_size(v39, v40, v41);
  }

  objc_msgSend_widthValid(v42, v40, v41);
  objc_msgSend_heightValid(v42, v43, v44);
  TSURectWithSize();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  v53 = v46;
  v54 = v48;
  v55 = v50;
  v56 = v52;
  result.size.height = v56;
  result.size.width = v55;
  result.origin.y = v54;
  result.origin.x = v53;
  return result;
}

- (id)dependentsOfTextLayout:(id)layout
{
  v10[1] = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  if (self->_containedLayout == layoutCopy && objc_msgSend_autosizes(self, v4, v5))
  {
    v10[0] = self;
    v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v10, 1);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)textLayoutShouldWrapAroundExternalDrawables:(id)drawables
{
  v3 = objc_msgSend_info(self, a2, drawables);
  isInlineWithText = objc_msgSend_isInlineWithText(v3, v4, v5);

  return isInlineWithText ^ 1;
}

- (BOOL)textLayoutShouldLayoutVertically:(id)vertically
{
  v3 = objc_msgSend_info(self, a2, vertically);
  IsVertical = objc_msgSend_textIsVertical(v3, v4, v5);

  return IsVertical;
}

- (id)dependentLayouts
{
  v12.receiver = self;
  v12.super_class = TSWPShapeLayout;
  dependentLayouts = [(TSWPShapeLayout *)&v12 dependentLayouts];
  if (self->_containedLayout && (objc_msgSend_autosizes(self, v3, v4) & 1) == 0)
  {
    if (dependentLayouts)
    {
      v8 = objc_msgSend_mutableCopy(dependentLayouts, v6, v7);
    }

    else
    {
      v8 = objc_msgSend_array(MEMORY[0x277CBEB18], v6, v7);
    }

    v10 = v8;
    objc_msgSend_addObject_(v8, v9, self->_containedLayout);

    dependentLayouts = v10;
  }

  return dependentLayouts;
}

- (void)transferLayoutGeometryToInfo:(id)info withAdditionalTransform:(CGAffineTransform *)transform assertIfInDocument:(BOOL)document
{
  documentCopy = document;
  infoCopy = info;
  objc_msgSend_setIsTransferringLayoutGeometryToInfo_(self, v9, 1);
  v27.receiver = self;
  v27.super_class = TSWPShapeLayout;
  v10 = *&transform->c;
  v26[0] = *&transform->a;
  v26[1] = v10;
  v26[2] = *&transform->tx;
  [(TSWPShapeLayout *)&v27 transferLayoutGeometryToInfo:infoCopy withAdditionalTransform:v26 assertIfInDocument:documentCopy];
  if (objc_msgSend_autosizes(self, v11, v12))
  {
    objc_msgSend_autosizePositionOffset(self, v13, v14);
    v17 = objc_msgSend_geometry(infoCopy, v15, v16);
    v20 = objc_msgSend_mutableCopy(v17, v18, v19);

    objc_msgSend_position(v20, v21, v22);
    TSUSubtractPoints();
    objc_msgSend_setPosition_(v20, v23, v24);
    objc_msgSend_setGeometry_(infoCopy, v25, v20);
  }

  objc_msgSend_setIsTransferringLayoutGeometryToInfo_(self, v13, 0);
}

- (CGAffineTransform)computeLayoutTransform
{
  if (objc_msgSend_autosizes(self, a3, v3))
  {
    memset(&v26, 0, sizeof(v26));
    objc_msgSend_autosizedTransform(self, v6, v7);
    v10 = objc_msgSend_layoutInfoGeometry(self, v8, v9);
    objc_msgSend_position(v10, v11, v12);
    v14 = v13;
    v16 = v15;

    memset(&v25, 0, sizeof(v25));
    CGAffineTransformMakeTranslation(&t2, v14, v16);
    t1 = v26;
    CGAffineTransformConcat(&v25, &t1, &t2);
    objc_msgSend_pathBounds(self, v17, v18);
    *&retstr->a = 0u;
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    t2 = v25;
    return CGAffineTransformTranslate(retstr, &t2, v19, v20);
  }

  else
  {
    v22.receiver = self;
    v22.super_class = TSWPShapeLayout;
    return [(CGAffineTransform *)&v22 computeLayoutTransform];
  }
}

- (CGAffineTransform)autosizedTransform
{
  v7 = objc_msgSend_layoutInfoGeometry(self, a3, v3);
  objc_msgSend_autosizedTransformForInfoGeometry_(self, v5, v7);

  return result;
}

- (CGAffineTransform)autosizedTransformForInfoGeometry:(SEL)geometry
{
  v15 = a4;
  v8 = objc_msgSend_info(self, v6, v7);
  objc_msgSend_pathBoundsWithoutStroke(self, v9, v10);
  if (v8)
  {
    objc_msgSend_autosizedTransformForInfoGeometry_size_(v8, v11, v15, v12, v13);
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (CGPoint)autosizePositionOffset
{
  MEMORY[0x2821F9670](self, sel_autosizePositionOffsetForFixedWidth_height_, 1);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)autosizePositionOffsetForFixedWidth:(BOOL)width height:(BOOL)height
{
  heightCopy = height;
  widthCopy = width;
  objc_msgSend_autosizedTransform(self, a2, width);
  objc_msgSend_pathBoundsWithoutStroke(self, v7, v8);
  v10 = v9;
  v12 = v11;
  v15 = objc_msgSend_layoutInfoGeometry(self, v13, v14);
  v18 = objc_msgSend_mutableCopy(v15, v16, v17);

  objc_msgSend_size(v18, v19, v20);
  v22 = v21;
  v24 = v23;
  if ((objc_msgSend_widthValid(v18, v25, v26) & 1) == 0 && widthCopy)
  {
    objc_msgSend_setWidthValid_(v18, v27, 1);
    v22 = v10;
  }

  if ((objc_msgSend_heightValid(v18, v27, v28) & 1) == 0 && heightCopy)
  {
    objc_msgSend_setHeightValid_(v18, v29, 1);
    v24 = v12;
  }

  objc_msgSend_setSize_(v18, v29, v30, v22, v24);
  objc_msgSend_autosizedTransformForInfoGeometry_(self, v31, v18, 0, 0, 0, 0, 0, 0);
  TSUSubtractPoints();
  v33 = v32;
  v35 = v34;

  v36 = v33;
  v37 = v35;
  result.y = v37;
  result.x = v36;
  return result;
}

- (id)pathSource
{
  if (objc_msgSend_isTransferringLayoutGeometryToInfo(self, a2, v2))
  {
    objc_opt_class();
    v8 = objc_msgSend_parent(self, v6, v7);
    v9 = TSUDynamicCast();

    if (v9 && objc_msgSend_autosizeFlagsForTextLayout_inShapeLayout_(v9, v10, self->_containedLayout, self) == 3)
    {
      v13 = objc_msgSend_shapeInfo(self, v11, v12);
      pathSource = objc_msgSend_pathSource(v13, v14, v15);

LABEL_12:
      goto LABEL_14;
    }
  }

  if (self->_containedLayout && (objc_msgSend_autosizes(self, v4, v5) & 1) != 0)
  {
    v19 = objc_msgSend_geometry(self->_containedLayout, v17, v18);
    objc_msgSend_size(v19, v20, v21);
    v23 = v22;
    v25 = v24;

    v28 = objc_msgSend_shapeInfo(self, v26, v27);
    v9 = objc_msgSend_stroke(v28, v29, v30);

    if (v9 && objc_msgSend_shouldRender(v9, v31, v32))
    {
      objc_msgSend_width(v9, v31, v32);
      v23 = v23 + v33;
      objc_msgSend_width(v9, v34, v35);
      v25 = v25 + v36;
    }

    v37 = objc_msgSend_shapeInfo(self, v31, v32);
    v40 = objc_msgSend_pathSource(v37, v38, v39);
    pathSource = objc_msgSend_copy(v40, v41, v42);

    objc_msgSend_setNaturalSize_(pathSource, v43, v44, v23, v25);
    goto LABEL_12;
  }

  v46.receiver = self;
  v46.super_class = TSWPShapeLayout;
  pathSource = [(TSWPShapeLayout *)&v46 pathSource];
LABEL_14:

  return pathSource;
}

- (void)processChangedProperty:(int)property
{
  v16.receiver = self;
  v16.super_class = TSWPShapeLayout;
  [(TSWPShapeLayout *)&v16 processChangedProperty:?];
  if (property == 517)
  {
LABEL_4:
    cachedInteriorWrapSegments = self->_cachedInteriorWrapSegments;
    self->_cachedInteriorWrapSegments = 0;

    objc_msgSend_invalidateSize(self->_containedLayout, v8, v9);
    return;
  }

  if (property != 153)
  {
    if (property != 146)
    {
      return;
    }

    goto LABEL_4;
  }

  v10 = objc_msgSend_layoutManager(self->_containedLayout, v5, v6);
  objc_msgSend_clearTypesetterCache(v10, v11, v12);

  objc_msgSend_invalidateTextLayout(self->_containedLayout, v13, v14);
  v15 = self->_cachedInteriorWrapSegments;
  self->_cachedInteriorWrapSegments = 0;
}

- (void)setGeometry:(id)geometry
{
  v40.receiver = self;
  v40.super_class = TSWPShapeLayout;
  [(TSWPShapeLayout *)&v40 setGeometry:geometry];
  if (self->_containedLayout && objc_msgSend_autosizes(self, v4, v5))
  {
    v8 = objc_msgSend_geometry(self->_containedLayout, v6, v7);
    objc_msgSend_size(v8, v9, v10);
    v12 = v11;
    v14 = v13;

    objc_msgSend_pathBounds(self, v15, v16);
    v18 = v17;
    v20 = v19;
    v21 = -v17;
    v22 = -v19;
    v25 = objc_msgSend_shapeInfo(self, v23, v24);
    v28 = objc_msgSend_stroke(v25, v26, v27);

    if (v28)
    {
      if (objc_msgSend_shouldRender(v28, v29, v30))
      {
        objc_msgSend_width(v28, v31, v32);
        v34 = v33 * 0.5;
        v21 = v34 - v18;
        v22 = v34 - v20;
      }
    }

    v35 = objc_alloc(MEMORY[0x277D80300]);
    CGAffineTransformMakeTranslation(&v39, v21, v22);
    v37 = objc_msgSend_initWithSize_transform_(v35, v36, &v39, v12, v14);
    objc_msgSend_setGeometry_(self->_containedLayout, v38, v37);
  }
}

- (BOOL)parentAutosizes
{
  objc_opt_class();
  v5 = objc_msgSend_parent(self, v3, v4);
  v6 = TSUDynamicCast();

  if (v6)
  {
    v9 = objc_msgSend_autosizeFlags(v6, v7, v8) != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (UIEdgeInsets)adjustedInsetsForTarget:(id)target
{
  v3 = objc_msgSend_info(self, a2, target);
  v6 = objc_msgSend_padding(v3, v4, v5);

  if (v6)
  {
    objc_msgSend_edgeInsets(v6, v7, v8);
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v10 = *MEMORY[0x277D81428];
    v12 = *(MEMORY[0x277D81428] + 8);
    v14 = *(MEMORY[0x277D81428] + 16);
    v16 = *(MEMORY[0x277D81428] + 24);
  }

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.right = v20;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

- (unint64_t)columnCount
{
  v3 = objc_msgSend_info(self, a2, v2);
  v6 = objc_msgSend_columns(v3, v4, v5);

  if (v6)
  {
    v9 = objc_msgSend_columnCount(v6, v7, v8);
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (double)widthForColumnIndex:(unint64_t)index bodyWidth:(double)width
{
  v6 = objc_msgSend_info(self, a2, index);
  v9 = objc_msgSend_columns(v6, v7, v8);

  if (v9)
  {
    objc_msgSend_widthForColumnIndex_bodyWidth_(v9, v10, index, width);
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

- (double)gapForColumnIndex:(unint64_t)index bodyWidth:(double)width
{
  v6 = objc_msgSend_info(self, a2, index);
  v9 = objc_msgSend_columns(v6, v7, v8);

  if (v9)
  {
    objc_msgSend_gapForColumnIndex_bodyWidth_(v9, v10, index, width);
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width target:(id)target outWidth:(double *)outWidth outGap:(double *)gap
{
  v12 = objc_msgSend_info(self, a2, index, target);
  v15 = objc_msgSend_columns(v12, v13, v14);

  v18 = objc_msgSend_info(self, v16, v17);
  v21 = objc_msgSend_padding(v18, v19, v20);

  if (v21)
  {
    objc_msgSend_leftInset(v21, v22, v23);
    v25 = v24;
    if (v15)
    {
LABEL_3:
      objc_msgSend_positionForColumnIndex_bodyWidth_outWidth_outGap_(v15, v22, index, outWidth, gap, fmax(width + v25 * -2.0, 0.0));
      v25 = v25 + v26;
      goto LABEL_9;
    }
  }

  else
  {
    v25 = 0.0;
    if (v15)
    {
      goto LABEL_3;
    }
  }

  if (outWidth)
  {
    *outWidth = width + v25 * -2.0;
  }

  if (gap)
  {
    *gap = 0.0;
  }

LABEL_9:

  return v25;
}

- (BOOL)shrinkTextToFit
{
  v3 = objc_msgSend_info(self, a2, v2);
  v6 = objc_msgSend_shrinkTextToFit(v3, v4, v5);

  return v6;
}

- (BOOL)columnsAreLeftToRight
{
  v3 = objc_msgSend_info(self, a2, v2);
  v6 = objc_msgSend_columnDirection(v3, v4, v5) != 1;

  return v6;
}

- (TSWPShapeLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end