@interface KNSlideBackgroundRep
+ (id)magicMoveMatchesBetweenOutgoingObjects:(id)objects andIncomingObjects:(id)incomingObjects textureDescription:(id)description;
- (BOOL)isOpaque;
- (KNSlideBackgroundRep)initWithLayout:(id)layout canvas:(id)canvas;
- (id)textureForDescription:(id)description;
- (void)drawInContext:(CGContext *)context;
@end

@implementation KNSlideBackgroundRep

- (KNSlideBackgroundRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v5.receiver = self;
  v5.super_class = KNSlideBackgroundRep;
  result = [(TSDRep *)&v5 initWithLayout:layout canvas:canvas];
  if (result)
  {
    result->_layerNeedsUpdate = 1;
  }

  return result;
}

- (BOOL)isOpaque
{
  v3 = objc_msgSend_slideBackgroundInfo(self, a2, v2);
  v6 = objc_msgSend_fill(v3, v4, v5);

  if (v6)
  {
    isOpaque = objc_msgSend_isOpaque(v6, v7, v8);
  }

  else
  {
    isOpaque = 0;
  }

  return isOpaque;
}

- (void)drawInContext:(CGContext *)context
{
  Mutable = CGPathCreateMutable();
  objc_msgSend_naturalBounds(self, v6, v7);
  CGPathAddRectSafe();
  v10 = objc_msgSend_canvas(self, v8, v9);
  isCanvasInteractive = objc_msgSend_isCanvasInteractive(v10, v11, v12);

  if (isCanvasInteractive)
  {
    v16 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D801F8], v14, v15, 0.0, 1.0);
    objc_msgSend_paintPath_inContext_(v16, v17, Mutable, context);
  }

  v18 = objc_msgSend_slideBackgroundInfo(self, v14, v15);
  v21 = objc_msgSend_motionBackground(v18, v19, v20);

  v24 = objc_msgSend_slideBackgroundInfo(self, v22, v23);
  v27 = v24;
  if (v21)
  {
    v28 = objc_msgSend_motionBackground(v24, v25, v26);
    objc_msgSend_naturalBounds(self, v29, v30);
    objc_msgSend_drawInContext_inRect_(v28, v31, context);
  }

  else
  {
    v28 = objc_msgSend_fill(v24, v25, v26);
    objc_msgSend_paintPath_inContext_(v28, v32, Mutable, context);
  }

  CGPathRelease(Mutable);
}

- (id)textureForDescription:(id)description
{
  descriptionCopy = description;
  v7 = objc_msgSend_canvas(self, v5, v6);
  if (objc_msgSend_isDrawingIntoPDF(v7, v8, v9))
  {
    v12 = objc_msgSend_canvas(self, v10, v11);
    shouldSuppressBackgrounds = objc_msgSend_shouldSuppressBackgrounds(v12, v13, v14);

    if (shouldSuppressBackgrounds)
    {
      v18 = 0;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v19 = objc_msgSend_copy(descriptionCopy, v16, v17);

  objc_msgSend_setShouldDistortToFit_(v19, v20, 1);
  v41.receiver = self;
  v41.super_class = KNSlideBackgroundRep;
  v18 = [(TSDRep *)&v41 textureForDescription:v19];
  v23 = objc_msgSend_visibleTextures(v18, v21, v22);
  v26 = objc_msgSend_lastObject(v23, v24, v25);
  objc_msgSend_setTextureOpacity_(v26, v27, v28, 1.0);
  objc_msgSend_setTextureType_(v26, v29, 1);
  v32 = objc_msgSend_session(v19, v30, v31);
  shouldAllowBackgroundAlpha = objc_msgSend_shouldAllowBackgroundAlpha(v32, v33, v34);

  if ((shouldAllowBackgroundAlpha & 1) == 0)
  {
    v38 = objc_msgSend_blackColor(MEMORY[0x277D81180], v36, v37);
    objc_msgSend_setBackgroundColor_(v26, v39, v38);
  }

  objc_msgSend_setIsBackground_(v18, v36, 1);

  descriptionCopy = v19;
LABEL_8:

  return v18;
}

+ (id)magicMoveMatchesBetweenOutgoingObjects:(id)objects andIncomingObjects:(id)incomingObjects textureDescription:(id)description
{
  v86[1] = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  incomingObjectsCopy = incomingObjects;
  descriptionCopy = description;
  v85 = objectsCopy;
  if (objc_msgSend_count(objectsCopy, v9, v10) != 1)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "+[KNSlideBackgroundRep magicMoveMatchesBetweenOutgoingObjects:andIncomingObjects:textureDescription:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideBackgroundRep.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 458, 0, "outgoingObjects != 1!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  if (objc_msgSend_count(incomingObjectsCopy, v11, v12) >= 2)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "+[KNSlideBackgroundRep magicMoveMatchesBetweenOutgoingObjects:andIncomingObjects:textureDescription:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideBackgroundRep.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 459, 0, "incomingObjects > 1!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
  }

  v29 = objc_msgSend_lastObject(v85, v20, v21);
  v83 = incomingObjectsCopy;
  v32 = objc_msgSend_lastObject(incomingObjectsCopy, v30, v31);
  v33 = MEMORY[0x277D80320];
  v36 = objc_msgSend_layout(v29, v34, v35);
  v39 = objc_msgSend_geometry(v36, v37, v38);
  objc_msgSend_frame(v39, v40, v41);
  TSUCenterOfRect();
  v84 = objc_msgSend_matchObjectWithRep_position_(v33, v42, v29);

  v43 = MEMORY[0x277D80320];
  v46 = objc_msgSend_layout(v32, v44, v45);
  v49 = objc_msgSend_geometry(v46, v47, v48);
  objc_msgSend_frame(v49, v50, v51);
  TSUCenterOfRect();
  v53 = objc_msgSend_matchObjectWithRep_position_(v43, v52, v32);

  v81 = v29;
  v56 = objc_msgSend_slideBackgroundInfo(v29, v54, v55);
  v59 = objc_msgSend_slideBackgroundInfo(v32, v57, v58);
  v62 = objc_msgSend_motionBackground(v56, v60, v61);
  v65 = objc_msgSend_motionBackground(v59, v63, v64);
  if (objc_msgSend_canBlendWithMotionBackground_(v62, v66, v65))
  {
    v69 = 5;
  }

  else
  {
    v69 = 4;
  }

  if (!(v62 | v65))
  {
    v70 = objc_msgSend_fill(v56, v67, v68);
    v73 = objc_msgSend_fill(v59, v71, v72);
    isEqual = objc_msgSend_isEqual_(v70, v74, v73);

    if (isEqual)
    {
      v76 = v84;

      v69 = 5;
      v53 = v76;
    }
  }

  v77 = objc_msgSend_matchWithOutgoingObject_incomingObject_matchType_attributeMatchPercent_textureDescription_(MEMORY[0x277D80318], v67, v84, v53, v69, descriptionCopy, 1.0);
  v86[0] = v77;
  v79 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v78, v86, 1);

  return v79;
}

@end