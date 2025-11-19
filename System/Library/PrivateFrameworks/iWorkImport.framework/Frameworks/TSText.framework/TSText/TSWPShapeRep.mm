@interface TSWPShapeRep
- (CGRect)reflectionFrameInRootForClipping;
- (TSDContainerInfo)containerInfo;
- (TSWPShapeRep)initWithLayout:(id)a3 canvas:(id)a4;
- (id)childReps;
- (id)layoutsForChildReps;
- (void)dealloc;
- (void)p_destroyContainedRep;
- (void)updateChildrenFromLayout;
@end

@implementation TSWPShapeRep

- (TSWPShapeRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = TSUDynamicCast();

  if (!v8)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPShapeRep initWithLayout:canvas:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPShapeRep.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 165, 0, "bad layout class");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v24.receiver = self;
  v24.super_class = TSWPShapeRep;
  v17 = [(TSDShapeRep *)&v24 initWithLayout:v6 canvas:v7];
  v20 = v17;
  if (v17)
  {
    v21 = objc_msgSend_layout(v17, v18, v19);
    objc_msgSend_setDelegate_(v21, v22, v20);
  }

  return v20;
}

- (void)dealloc
{
  objc_msgSend_setParentRep_(*&self->_originalAutosizePositionOffset.y, a2, 0);
  v3.receiver = self;
  v3.super_class = TSWPShapeRep;
  [(TSDShapeRep *)&v3 dealloc];
}

- (void)updateChildrenFromLayout
{
  v35.receiver = self;
  v35.super_class = TSWPShapeRep;
  [(TSDRep *)&v35 updateChildrenFromLayout];
  y = self->_originalAutosizePositionOffset.y;
  if (y == 0.0)
  {
    goto LABEL_5;
  }

  v6 = objc_msgSend_layout(*&y, v3, v4);
  v9 = objc_msgSend_layout(self, v7, v8);
  v12 = objc_msgSend_containedLayout(v9, v10, v11);

  if (v6 != v12)
  {
    objc_msgSend_p_destroyContainedRep(self, v3, v4);
  }

  v13 = self->_originalAutosizePositionOffset.y;
  if (v13 == 0.0)
  {
LABEL_5:
    v14 = objc_msgSend_layout(self, v3, v4);
    v17 = objc_msgSend_containedLayout(v14, v15, v16);
    v20 = objc_alloc(objc_msgSend_repClassOverride(v17, v18, v19));
    v23 = objc_msgSend_layout(self, v21, v22);
    v26 = objc_msgSend_containedLayout(v23, v24, v25);
    v29 = objc_msgSend_canvas(self, v27, v28);
    v31 = objc_msgSend_initWithLayout_canvas_(v20, v30, v26, v29);
    v32 = self->_originalAutosizePositionOffset.y;
    *&self->_originalAutosizePositionOffset.y = v31;

    objc_msgSend_setParentRep_(*&self->_originalAutosizePositionOffset.y, v33, self);
    objc_msgSend_didAddChildRep_(self, v34, *&self->_originalAutosizePositionOffset.y);
    v13 = self->_originalAutosizePositionOffset.y;
  }

  objc_msgSend_updateChildrenFromLayout(*&v13, v3, v4);
}

- (TSDContainerInfo)containerInfo
{
  v3 = objc_msgSend_info(self, a2, v2);
  v4 = TSUProtocolCast();

  return v4;
}

- (id)childReps
{
  v3 = *&self->_originalAutosizePositionOffset.y;
  if (v3)
  {
    v4 = objc_msgSend_arrayByAddingObject_(MEMORY[0x277CBEBF8], a2, v3);
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v9.receiver = self;
  v9.super_class = TSWPShapeRep;
  v5 = [(TSDRep *)&v9 childReps];
  v7 = objc_msgSend_arrayByAddingObjectsFromArray_(v4, v6, v5);

  return v7;
}

- (id)layoutsForChildReps
{
  v20[1] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = TSWPShapeRep;
  v3 = [(TSDRep *)&v19 layoutsForChildReps];
  v6 = objc_msgSend_layout(self, v4, v5);
  v9 = objc_msgSend_containedLayout(v6, v7, v8);
  v10 = v9 == 0;

  if (!v10)
  {
    v13 = objc_msgSend_containedLayout(v6, v11, v12);
    v20[0] = v13;
    v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v20, 1);
    v17 = objc_msgSend_tsu_arrayByRemovingObjectsIdenticalToObjectsInArray_(v3, v16, v15);

    v3 = v17;
  }

  return v3;
}

- (CGRect)reflectionFrameInRootForClipping
{
  v61.receiver = self;
  v61.super_class = TSWPShapeRep;
  [(TSDStyledRep *)&v61 reflectionFrameInRootForClipping];
  v8 = v7;
  v10 = v9;
  if (*&self->_originalAutosizePositionOffset.y)
  {
    v56 = v5;
    v57 = v6;
    objc_msgSend_clipRectWithoutEffects(self, v3, v4);
    v58 = v12;
    v59 = v11;
    v14 = v13;
    v16 = v15;
    objc_msgSend_clipRect(*&self->_originalAutosizePositionOffset.y, v17, v18);
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v29 = objc_msgSend_layout(*&self->_originalAutosizePositionOffset.y, v27, v28);
    v32 = v29;
    if (v29)
    {
      objc_msgSend_transform(v29, v30, v31);
    }

    else
    {
      memset(&v60, 0, sizeof(v60));
    }

    v62.origin.x = v20;
    v62.origin.y = v22;
    v62.size.width = v24;
    v62.size.height = v26;
    v69 = CGRectApplyAffineTransform(v62, &v60);
    v63.origin.y = v58;
    v63.origin.x = v59;
    v63.size.width = v14;
    v63.size.height = v16;
    v64 = CGRectUnion(v63, v69);
    x = v64.origin.x;
    y = v64.origin.y;
    width = v64.size.width;
    height = v64.size.height;

    v39 = objc_msgSend_styledLayout(self, v37, v38);
    v42 = objc_msgSend_layout(self, v40, v41);
    v45 = v42;
    if (v42)
    {
      objc_msgSend_transformInRoot(v42, v43, v44);
    }

    else
    {
      memset(&v60, 0, sizeof(v60));
    }

    v65.origin.x = x;
    v65.origin.y = y;
    v65.size.width = width;
    v65.size.height = height;
    v66 = CGRectApplyAffineTransform(v65, &v60);
    objc_msgSend_reflectionBoundsForRect_(v39, v46, v47, v66.origin.x, v66.origin.y, v66.size.width, v66.size.height);
    v49 = v48;
    v51 = v50;

    v67.origin.x = v56;
    v67.size.width = v57;
    v67.origin.y = v8;
    v67.size.height = v10;
    v70.origin.x = v49;
    v70.origin.y = v8;
    v70.size.width = v51;
    v70.size.height = v10;
    *&v5 = CGRectUnion(v67, v70);
    v8 = v52;
    v10 = v53;
  }

  v54 = v8;
  v55 = v10;
  result.size.height = v55;
  result.size.width = v6;
  result.origin.y = v54;
  result.origin.x = v5;
  return result;
}

- (void)p_destroyContainedRep
{
  y = self->_originalAutosizePositionOffset.y;
  if (y != 0.0)
  {
    objc_msgSend_willBeRemoved(*&y, a2, v2);
    objc_msgSend_setParentRep_(*&self->_originalAutosizePositionOffset.y, v5, 0);
    v6 = self->_originalAutosizePositionOffset.y;
    self->_originalAutosizePositionOffset.y = 0.0;
  }
}

@end