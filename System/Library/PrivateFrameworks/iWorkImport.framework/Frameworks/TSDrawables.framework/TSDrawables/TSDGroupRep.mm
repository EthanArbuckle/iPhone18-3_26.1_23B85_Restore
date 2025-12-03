@interface TSDGroupRep
- (CGRect)clipRect;
- (CGRect)frameInUnscaledCanvas;
- (CGRect)frameInUnscaledCanvasForMarqueeSelecting;
- (NSArray)allRepsContainedInGroup;
- (id)p_groupInfo;
- (id)p_groupedChildReps;
- (id)p_nonGroupedChildReps;
- (void)recursivelyDrawInContext:(CGContext *)context keepingChildrenPassingTest:(id)test;
- (void)updateChildrenFromLayout;
- (void)updateFromLayout;
@end

@implementation TSDGroupRep

- (id)p_groupInfo
{
  objc_opt_class();
  v5 = objc_msgSend_info(self, v3, v4);
  v6 = TSUCheckedDynamicCast();

  return v6;
}

- (CGRect)clipRect
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBF398];
  v4 = *(MEMORY[0x277CBF398] + 8);
  v5 = *(MEMORY[0x277CBF398] + 16);
  v6 = *(MEMORY[0x277CBF398] + 24);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v7 = objc_msgSend_p_groupedChildReps(self, a2, v2);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v46, v50, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v47;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v47 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v46 + 1) + 8 * i);
        objc_msgSend_clipRect(v15, v10, v11, *&v45.a, *&v45.c, *&v45.tx);
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v26 = objc_msgSend_layout(v15, v24, v25);
        v29 = objc_msgSend_geometry(v26, v27, v28);
        v32 = v29;
        if (v29)
        {
          objc_msgSend_transform(v29, v30, v31);
        }

        else
        {
          memset(&v45, 0, sizeof(v45));
        }

        v52.origin.x = v17;
        v52.origin.y = v19;
        v52.size.width = v21;
        v52.size.height = v23;
        v53 = CGRectApplyAffineTransform(v52, &v45);
        x = v53.origin.x;
        y = v53.origin.y;
        width = v53.size.width;
        height = v53.size.height;

        v54.origin.x = v3;
        v54.origin.y = v4;
        v54.size.width = v5;
        v54.size.height = v6;
        v58.origin.x = x;
        v58.origin.y = y;
        v58.size.width = width;
        v58.size.height = height;
        v55 = CGRectUnion(v54, v58);
        v3 = v55.origin.x;
        v4 = v55.origin.y;
        v5 = v55.size.width;
        v6 = v55.size.height;
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v46, v50, 16);
    }

    while (v12);
  }

  v56.origin.x = v3;
  v56.origin.y = v4;
  v56.size.width = v5;
  v56.size.height = v6;
  if (CGRectIsNull(v56))
  {
    TSURectWithSize();
    v3 = v37;
    v4 = v38;
    v5 = v39;
    v6 = v40;
  }

  v41 = v3;
  v42 = v4;
  v43 = v5;
  v44 = v6;
  result.size.height = v44;
  result.size.width = v43;
  result.origin.y = v42;
  result.origin.x = v41;
  return result;
}

- (void)recursivelyDrawInContext:(CGContext *)context keepingChildrenPassingTest:(id)test
{
  testCopy = test;
  memset(&v78, 0, sizeof(v78));
  v9 = objc_msgSend_layout(self, v7, v8);
  v12 = objc_msgSend_geometry(v9, v10, v11);
  v15 = v12;
  if (v12)
  {
    objc_msgSend_transform(v12, v13, v14);
  }

  else
  {
    memset(&v78, 0, sizeof(v78));
  }

  if (TSUCGAffineTransformIsValid())
  {
    transform = v78;
    CGContextConcatCTM(context, &transform);
    objc_opt_class();
    v19 = objc_msgSend_layout(self, v17, v18);
    v20 = TSUCheckedDynamicCast();

    if (objc_msgSend_i_isClampedToParentByScaling(v20, v21, v22))
    {
      objc_msgSend_i_clampingScaleForChildLayouts(v20, v23, v24);
      v26 = v25;
      objc_msgSend_i_clampingScaleForChildLayouts(v20, v27, v28);
      CGAffineTransformMakeScale(&transform, v26, v29);
      CGContextConcatCTM(context, &transform);
    }

    objc_msgSend_clipRect(self, v23, v24);
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v40 = objc_msgSend_masksToBounds(self, v38, v39);
    if (TSURectHasNaNComponents() & 1) != 0 || (TSUSizeIsEmpty())
    {
      v74 = MEMORY[0x277D81150];
      contextCopy = context;
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSDGroupRep recursivelyDrawInContext:keepingChildrenPassingTest:]");
      v42 = v76 = testCopy;
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGroupRep.m");
      v79.origin.x = v31;
      v79.origin.y = v33;
      v79.size.width = v35;
      v79.size.height = v37;
      v45 = NSStringFromCGRect(v79);
      v48 = objc_msgSend_p_groupInfo(self, v46, v47);
      v51 = objc_msgSend_childInfos(v48, v49, v50);
      v54 = objc_msgSend_count(v51, v52, v53);
      v57 = objc_msgSend_info(self, v55, v56);
      objc_msgSend_geometry(v57, v58, v59);
      v60 = v73 = v40;
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v61, v42, v44, 115, 0, "Group had unsafe clip rect %{public}@ childCount %lu infoGeom %{public}@", v45, v54, v60);

      context = contextCopy;
      testCopy = v76;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63);
      if (v73)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v40)
      {
        CGContextClipToRectSafe();
        CGContextSaveGState(context);
      }

      else
      {
        CGContextSaveGState(context);
        CGContextClipToRectSafe();
      }

      objc_msgSend_drawInContext_(self, v72, context);
      CGContextRestoreGState(context);
    }

    objc_msgSend_recursivelyDrawChildrenInContext_keepingChildrenPassingTest_(self, v64, context, testCopy);
LABEL_17:

    goto LABEL_18;
  }

  v65 = MEMORY[0x277D81150];
  v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSDGroupRep recursivelyDrawInContext:keepingChildrenPassingTest:]");
  v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDGroupRep.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v69, v66, v68, 91, 0, "Invalid group transform; bailing out on group");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71);
LABEL_18:
}

- (CGRect)frameInUnscaledCanvas
{
  objc_opt_class();
  v5 = objc_msgSend_layout(self, v3, v4);
  v6 = TSUCheckedDynamicCast();

  if (objc_msgSend_i_isClampedToParentByScaling(v6, v7, v8))
  {
    objc_msgSend_i_boundsForChildren(v6, v9, v10);
    objc_msgSend_rectInRoot_(v6, v11, v12);
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v21 = objc_msgSend_layout(self, v9, v10);
    v24 = objc_msgSend_pureGeometryInRoot(v21, v22, v23);
    objc_msgSend_frame(v24, v25, v26);
    v14 = v27;
    v16 = v28;
    v18 = v29;
    v20 = v30;
  }

  v31 = v14;
  v32 = v16;
  v33 = v18;
  v34 = v20;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (CGRect)frameInUnscaledCanvasForMarqueeSelecting
{
  v41 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = objc_msgSend_childReps(self, a2, v2, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v36, v40, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v37;
    do
    {
      v15 = 0;
      do
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_frameInUnscaledCanvasForMarqueeSelecting(*(*(&v36 + 1) + 8 * v15), v11, v12);
        v48.origin.x = v16;
        v48.origin.y = v17;
        v48.size.width = v18;
        v48.size.height = v19;
        v42.origin.x = x;
        v42.origin.y = y;
        v42.size.width = width;
        v42.size.height = height;
        v43 = CGRectUnion(v42, v48);
        x = v43.origin.x;
        y = v43.origin.y;
        width = v43.size.width;
        height = v43.size.height;
        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v36, v40, 16);
    }

    while (v13);
  }

  objc_msgSend_titleFrameInUnscaledCanvas(self, v20, v21);
  v49.origin.x = v22;
  v49.origin.y = v23;
  v49.size.width = v24;
  v49.size.height = v25;
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  v45 = CGRectUnion(v44, v49);
  v26 = v45.origin.x;
  v27 = v45.origin.y;
  v28 = v45.size.width;
  v29 = v45.size.height;
  objc_msgSend_captionFrameInUnscaledCanvas(self, v30, v31);
  v50.origin.x = v32;
  v50.origin.y = v33;
  v50.size.width = v34;
  v50.size.height = v35;
  v46.origin.x = v26;
  v46.origin.y = v27;
  v46.size.width = v28;
  v46.size.height = v29;
  return CGRectUnion(v46, v50);
}

- (void)updateFromLayout
{
  v2.receiver = self;
  v2.super_class = TSDGroupRep;
  [(TSDRep *)&v2 updateFromLayout];
}

- (NSArray)allRepsContainedInGroup
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = objc_msgSend_childReps(self, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v24, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = objc_msgSend_allRepsContainedInGroup(v13, v14, v15);
          objc_msgSend_addObjectsFromArray_(v4, v17, v16);
        }

        else
        {
          objc_msgSend_addObject_(v4, v14, v13);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v18, &v20, v24, 16);
    }

    while (v10);
  }

  return v4;
}

- (void)updateChildrenFromLayout
{
  v4.receiver = self;
  v4.super_class = TSDGroupRep;
  [(TSDRep *)&v4 updateChildrenFromLayout];
  mCachedGroupedChildReps = self->mCachedGroupedChildReps;
  self->mCachedGroupedChildReps = 0;
}

- (id)p_groupedChildReps
{
  mCachedGroupedChildReps = self->mCachedGroupedChildReps;
  if (!mCachedGroupedChildReps)
  {
    v5 = objc_msgSend_p_groupInfo(self, a2, v2);
    v8 = objc_msgSend_childReps(self, v6, v7);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_276721450;
    v15[3] = &unk_27A6CCF00;
    v15[4] = v5;
    v10 = objc_msgSend_tsu_arrayOfObjectsPassingTest_(v8, v9, v15);

    v12 = objc_msgSend_orderedSetWithArray_(MEMORY[0x277CBEB70], v11, v10);
    v13 = self->mCachedGroupedChildReps;
    self->mCachedGroupedChildReps = v12;

    mCachedGroupedChildReps = self->mCachedGroupedChildReps;
  }

  return mCachedGroupedChildReps;
}

- (id)p_nonGroupedChildReps
{
  v4 = objc_msgSend_p_groupInfo(self, a2, v2);
  v7 = objc_msgSend_childReps(self, v5, v6);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_276721558;
  v11[3] = &unk_27A6CCF00;
  v11[4] = v4;
  v9 = objc_msgSend_tsu_arrayOfObjectsPassingTest_(v7, v8, v11);

  return v9;
}

@end