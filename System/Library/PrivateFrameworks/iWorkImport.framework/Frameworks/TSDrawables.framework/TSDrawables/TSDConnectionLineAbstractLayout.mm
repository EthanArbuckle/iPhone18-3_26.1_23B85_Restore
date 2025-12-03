@interface TSDConnectionLineAbstractLayout
- (BOOL)isDraggable;
- (BOOL)isStraightLine;
- (BOOL)p_connectedInfoInDocument:(id)document;
- (BOOL)p_isConnectedToLockedObjects;
- (BOOL)p_isInfoAKeynoteTemplateObject:(id)object;
- (BOOL)shouldDisplayGuides;
- (BOOL)supportsFlipping;
- (CGPoint)controlPointForPointA:(CGPoint)a pointB:(CGPoint)b andOriginalA:(CGPoint)originalA originalB:(CGPoint)originalB;
- (CGPoint)getControlKnobPosition:(unint64_t)position;
- (CGPoint)unclippedHeadPoint;
- (CGPoint)unclippedTailPoint;
- (CGRect)boundsForStandardKnobs;
- (CGSize)minimumSize;
- (TSDConnectionLinePathSource)connectedPathSource;
- (TSDInfo)connectedFromInfo;
- (TSDInfo)connectedToInfo;
- (TSDLayout)connectedFrom;
- (TSDLayout)connectedTo;
- (double)outsetFrom;
- (double)outsetTo;
- (id)additionalLayoutsForRepCreation;
- (id)clipPath:(id)path onLayout:(id)layout outset:(double)outset reversed:(BOOL)reversed isValid:(BOOL *)valid;
- (id)layoutInfoGeometry;
- (id)p_infoForConnectingToInfo:(id)info;
- (id)path;
- (id)pathSource;
- (id)reliedOnLayouts;
- (int)wrapType;
- (void)checkConnections;
- (void)connectedLayoutDisconnected:(id)disconnected;
- (void)connectedLayoutInvalidated:(id)invalidated;
- (void)dealloc;
- (void)i_willValidateLayout;
- (void)invalidateAndCleanupConnectedLayouts;
- (void)invalidateConnections;
- (void)invalidatePath;
- (void)invalidatePosition;
- (void)invalidateSize;
- (void)parentDidChange;
- (void)processChangedProperty:(int)property;
- (void)removeConnections;
- (void)setConnectedFrom:(id)from;
- (void)setConnectedTo:(id)to;
- (void)updateConnectedPath;
@end

@implementation TSDConnectionLineAbstractLayout

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->mConnectedFrom);

  if (WeakRetained)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDConnectionLineAbstractLayout dealloc]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDConnectionLineAbstractLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 102, 0, "expected nil value for '%{public}s'", "mConnectedFrom");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  v12 = objc_loadWeakRetained(&self->mConnectedTo);

  if (v12)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSDConnectionLineAbstractLayout dealloc]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDConnectionLineAbstractLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 103, 0, "expected nil value for '%{public}s'", "mConnectedTo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  v21.receiver = self;
  v21.super_class = TSDConnectionLineAbstractLayout;
  [(TSDShapeLayout *)&v21 dealloc];
}

- (double)outsetFrom
{
  if (self->mUseDynamicOutsets)
  {
    return self->mDynamicOutsetFrom;
  }

  v4 = objc_msgSend_shapeInfo(self, a2, v2);
  v7 = objc_msgSend_pathSource(v4, v5, v6);

  objc_msgSend_outsetFrom(v7, v8, v9);
  v11 = v10;

  return v11;
}

- (double)outsetTo
{
  if (self->mUseDynamicOutsets)
  {
    return self->mDynamicOutsetTo;
  }

  v4 = objc_msgSend_shapeInfo(self, a2, v2);
  v7 = objc_msgSend_pathSource(v4, v5, v6);

  objc_msgSend_outsetTo(v7, v8, v9);
  v11 = v10;

  return v11;
}

- (void)setConnectedFrom:(id)from
{
  fromCopy = from;
  obj = fromCopy;
  if (fromCopy == self)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], fromCopy, "[TSDConnectionLineAbstractLayout setConnectedFrom:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDConnectionLineAbstractLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 123, 0, "trying to connect a c-line to itself");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    fromCopy = obj;
  }

  objc_storeWeak(&self->mConnectedFrom, fromCopy);
}

- (void)setConnectedTo:(id)to
{
  toCopy = to;
  obj = toCopy;
  if (toCopy == self)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], toCopy, "[TSDConnectionLineAbstractLayout setConnectedTo:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDConnectionLineAbstractLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 128, 0, "trying to connect a c-line to itself");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    toCopy = obj;
  }

  objc_storeWeak(&self->mConnectedTo, toCopy);
}

- (void)i_willValidateLayout
{
  v5.receiver = self;
  v5.super_class = TSDConnectionLineAbstractLayout;
  [(TSDLayout *)&v5 i_willValidateLayout];
  objc_msgSend_checkConnections(self, v3, v4);
}

- (id)reliedOnLayouts
{
  objc_msgSend_checkConnections(self, a2, v2);
  v6 = objc_msgSend_set(MEMORY[0x277CBEB58], v4, v5);
  WeakRetained = objc_loadWeakRetained(&self->mConnectedFrom);

  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(&self->mConnectedFrom);
    objc_msgSend_addObject_(v6, v9, v8);
  }

  v10 = objc_loadWeakRetained(&self->mConnectedTo);

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->mConnectedTo);
    objc_msgSend_addObject_(v6, v12, v11);
  }

  return v6;
}

- (id)additionalLayoutsForRepCreation
{
  v3 = objc_msgSend_reliedOnLayouts(self, a2, v2);
  v6 = objc_msgSend_allObjects(v3, v4, v5);

  return v6;
}

- (BOOL)isDraggable
{
  v7.receiver = self;
  v7.super_class = TSDConnectionLineAbstractLayout;
  isDraggable = [(TSDLayout *)&v7 isDraggable];
  if (isDraggable)
  {
    LOBYTE(isDraggable) = objc_msgSend_p_isConnectedToLockedObjects(self, v4, v5) ^ 1;
  }

  return isDraggable;
}

- (BOOL)p_isConnectedToLockedObjects
{
  objc_opt_class();
  v5 = objc_msgSend_connectedFrom(self, v3, v4);
  v8 = objc_msgSend_info(v5, v6, v7);
  v9 = TSUDynamicCast();

  objc_opt_class();
  v12 = objc_msgSend_connectedTo(self, v10, v11);
  v15 = objc_msgSend_info(v12, v13, v14);
  v16 = TSUDynamicCast();

  if (objc_msgSend_isLocked(v9, v17, v18))
  {
    isLocked = 1;
  }

  else
  {
    isLocked = objc_msgSend_isLocked(v16, v19, v20);
  }

  return isLocked;
}

- (BOOL)supportsFlipping
{
  objc_msgSend_checkConnections(self, a2, v2);
  v8 = objc_msgSend_connectedFrom(self, v4, v5);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = objc_msgSend_connectedTo(self, v6, v7);
    v9 = v10 == 0;
  }

  return v9;
}

- (void)parentDidChange
{
  v4 = objc_msgSend_parent(self, a2, v2);

  if (!v4)
  {
    objc_msgSend_removeConnections(self, v5, v6);
  }

  objc_msgSend_invalidatePath(self, v5, v6);
  v7.receiver = self;
  v7.super_class = TSDConnectionLineAbstractLayout;
  [(TSDDrawableLayout *)&v7 parentDidChange];
}

- (void)processChangedProperty:(int)property
{
  v3 = *&property;
  if ((property - 541) > 1)
  {
    if (property == 527)
    {
      v5 = objc_opt_class();
      v8 = objc_msgSend_info(self, v6, v7);
      v11 = objc_msgSend_layoutClass(v8, v9, v10);

      if (v5 != v11)
      {
        v14 = objc_msgSend_layoutController(self, v12, v13);
        objc_msgSend_invalidateLayoutForRecreation_(v14, v15, self);
      }
    }
  }

  else
  {
    objc_msgSend_invalidateAndCleanupConnectedLayouts(self, a2, *&property);
  }

  v16.receiver = self;
  v16.super_class = TSDConnectionLineAbstractLayout;
  [(TSDShapeLayout *)&v16 processChangedProperty:v3];
}

- (void)connectedLayoutInvalidated:(id)invalidated
{
  v45 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_layoutState(self, a2, invalidated) != 2 || (objc_msgSend_isBeingTransformed(self, v5, v6) & 1) == 0)
  {
    if (invalidated)
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      obj = objc_msgSend_allInteractiveLayoutControllers(TSDLayoutController, v5, v6);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v39, v44, 16);
      if (v8)
      {
        v11 = v8;
        v12 = *v40;
        do
        {
          v13 = 0;
          do
          {
            if (*v40 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v39 + 1) + 8 * v13);
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v15 = objc_msgSend_info(self, v9, v10);
            v17 = objc_msgSend_layoutsForInfo_(v14, v16, v15);

            v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v35, v43, 16);
            if (v19)
            {
              v21 = v19;
              v22 = *v36;
              do
              {
                v23 = 0;
                do
                {
                  if (*v36 != v22)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v24 = *(*(&v35 + 1) + 8 * v23);
                  if (v24 != self)
                  {
                    v25 = objc_opt_class();
                    if (objc_msgSend_isMemberOfClass_(v24, v26, v25))
                    {
                      objc_msgSend_invalidateConnections(v24, v20, v27);
                    }
                  }

                  ++v23;
                }

                while (v21 != v23);
                v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v35, v43, 16);
              }

              while (v21);
            }

            ++v13;
          }

          while (v13 != v11);
          v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v39, v44, 16);
        }

        while (v11);
      }
    }

    objc_msgSend_invalidatePath(self, v5, v6);
    objc_msgSend_invalidateFrame(self, v28, v29);
    self->super.mCachedAlignmentFrame.isValid = 0;
    objc_msgSend_invalidate(self, v30, v31);
    objc_msgSend_i_invalidateWrap(self, v32, v33);
  }
}

- (void)connectedLayoutDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  p_mConnectedFrom = &self->mConnectedFrom;
  WeakRetained = objc_loadWeakRetained(&self->mConnectedFrom);

  if (WeakRetained == disconnectedCopy || (p_mConnectedFrom = &self->mConnectedTo, v6 = objc_loadWeakRetained(&self->mConnectedTo), v6, v7 = disconnectedCopy, v6 == disconnectedCopy))
  {
    objc_storeWeak(p_mConnectedFrom, 0);
    objc_msgSend_invalidateConnections(self, v8, v9);
    v7 = disconnectedCopy;
  }
}

- (void)invalidateAndCleanupConnectedLayouts
{
  objc_msgSend_invalidateConnections(self, a2, v2);
  v23 = objc_msgSend_connectionLineInfo(self, v4, v5);
  v8 = objc_msgSend_connectedFrom(v23, v6, v7);
  v10 = objc_msgSend_p_infoForConnectingToInfo_(self, v9, v8);

  v13 = objc_msgSend_connectedTo(v23, v11, v12);
  v15 = objc_msgSend_p_infoForConnectingToInfo_(self, v14, v13);

  WeakRetained = objc_loadWeakRetained(&self->mConnectedFrom);
  if (WeakRetained)
  {
    v17 = v10 == 0;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v18 = objc_loadWeakRetained(&self->mConnectedFrom);
    objc_msgSend_removeConnectedLayout_(v18, v19, self);

    objc_storeWeak(&self->mConnectedFrom, 0);
  }

  v20 = objc_loadWeakRetained(&self->mConnectedTo);

  if (v20 && !v15)
  {
    v21 = objc_loadWeakRetained(&self->mConnectedTo);
    objc_msgSend_removeConnectedLayout_(v21, v22, self);

    objc_storeWeak(&self->mConnectedTo, 0);
  }
}

- (void)removeConnections
{
  self->mValidConnections = 0;
  WeakRetained = objc_loadWeakRetained(&self->mConnectedFrom);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->mConnectedFrom);
    objc_msgSend_removeConnectedLayout_(v4, v5, self);
  }

  v6 = objc_loadWeakRetained(&self->mConnectedTo);

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->mConnectedTo);
    objc_msgSend_removeConnectedLayout_(v7, v8, self);
  }

  objc_storeWeak(&self->mConnectedFrom, 0);

  objc_storeWeak(&self->mConnectedTo, 0);
}

- (void)invalidateConnections
{
  self->mValidConnections = 0;
  objc_msgSend_invalidatePath(self, a2, v2);
  objc_msgSend_invalidateFrame(self, v4, v5);

  objc_msgSend_invalidate(self, v6, v7);
}

- (void)invalidatePosition
{
  v6.receiver = self;
  v6.super_class = TSDConnectionLineAbstractLayout;
  [(TSDLayout *)&v6 invalidatePosition];
  objc_msgSend_invalidatePath(self, v3, v4);
  mConnectedInfoGeometry = self->mConnectedInfoGeometry;
  self->mConnectedInfoGeometry = 0;
}

- (void)invalidateSize
{
  v5.receiver = self;
  v5.super_class = TSDConnectionLineAbstractLayout;
  [(TSDLayout *)&v5 invalidateSize];
  objc_msgSend_invalidatePath(self, v3, v4);
}

- (BOOL)p_connectedInfoInDocument:(id)document
{
  documentCopy = document;
  objc_opt_class();
  v4 = TSUClassAndProtocolCast();

  if (v4)
  {
    v7 = objc_msgSend_tsp_isInDocument(v4, v5, v6, &unk_2885A16B8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)checkConnections
{
  v67 = objc_msgSend_layoutController(self, a2, v2);
  v6 = objc_msgSend_connectionLineInfo(self, v4, v5);
  v9 = objc_msgSend_connectedFrom(v6, v7, v8);
  v11 = objc_msgSend_p_infoForConnectingToInfo_(self, v10, v9);

  v14 = objc_msgSend_connectedTo(v6, v12, v13);
  v16 = objc_msgSend_p_infoForConnectingToInfo_(self, v15, v14);

  WeakRetained = objc_loadWeakRetained(&self->mConnectedFromInfo);
  if (WeakRetained != v11)
  {
    objc_storeWeak(&self->mConnectedFromInfo, v11);
    p_mConnectedToInfo = &self->mConnectedToInfo;
    v19 = objc_loadWeakRetained(&self->mConnectedToInfo);

    if (v19 == v16)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  p_mConnectedToInfo = &self->mConnectedToInfo;
  v22 = objc_loadWeakRetained(&self->mConnectedToInfo);

  if (v22 != v16)
  {
LABEL_5:
    objc_storeWeak(p_mConnectedToInfo, v16);
LABEL_6:
    objc_msgSend_invalidateConnections(self, v20, v21);
    p_mValidConnections = &self->mValidConnections;
    goto LABEL_7;
  }

  p_mValidConnections = &self->mValidConnections;
  if (self->mValidConnections)
  {
    goto LABEL_29;
  }

LABEL_7:
  v26 = objc_msgSend_parent(self, v23, v24);
  v28 = objc_msgSend_layoutForInfo_childOfLayout_(v67, v27, v11, v26);
  v30 = objc_msgSend_layoutForInfo_childOfLayout_(v67, v29, v16, v26);
  v31 = objc_loadWeakRetained(&self->mConnectedFrom);

  if (v28 != v31)
  {
    v32 = objc_loadWeakRetained(&self->mConnectedFrom);

    if (v32)
    {
      v33 = objc_loadWeakRetained(&self->mConnectedFrom);
      objc_msgSend_removeConnectedLayout_(v33, v34, self);
    }

    v35 = objc_storeWeak(&self->mConnectedFrom, v28);

    if (v28)
    {
      v36 = objc_loadWeakRetained(&self->mConnectedFrom);
      objc_msgSend_addConnectedLayout_(v36, v37, self);
    }
  }

  v38 = objc_loadWeakRetained(&self->mConnectedTo);

  if (v30 != v38)
  {
    v41 = objc_loadWeakRetained(&self->mConnectedTo);

    if (v41)
    {
      v42 = objc_loadWeakRetained(&self->mConnectedTo);
      objc_msgSend_removeConnectedLayout_(v42, v43, self);
    }

    v44 = objc_storeWeak(&self->mConnectedTo, v30);

    if (v30)
    {
      v45 = objc_loadWeakRetained(&self->mConnectedTo);
      objc_msgSend_addConnectedLayout_(v45, v46, self);
    }
  }

  v66 = (v16 != 0) ^ (v30 == 0);
  v47 = (v11 != 0) ^ (v28 == 0);
  v48 = objc_msgSend_connectedTo(v6, v39, v40);
  v51 = v48;
  if (v16 == v48)
  {
    v65 = p_mValidConnections;
    v54 = v26;
    v55 = objc_msgSend_connectedFrom(v6, v49, v50);

    if (v11 == v55)
    {
      v64 = v6;
      v26 = v54;
      if ((objc_msgSend_p_isInfoAKeynoteTemplateObject_(self, v52, v6) & 1) == 0)
      {
        v56 = objc_msgSend_p_connectedInfoInDocument_(self, v52, v16);
        v58 = objc_msgSend_p_connectedInfoInDocument_(self, v57, v11);
        p_mValidConnections = v65;
        if ((v16 != 0) != (v30 == 0))
        {
          v59 = 1;
        }

        else
        {
          if (v30)
          {
            v60 = 1;
          }

          else
          {
            v60 = v16 == 0;
          }

          v61 = !v60;
          v59 = v61 & (v56 ^ 1);
        }

        v66 = v59;
        v6 = v64;
        if ((v11 != 0) != (v28 == 0))
        {
          v47 = 1;
        }

        else
        {
          if (v28)
          {
            v62 = 1;
          }

          else
          {
            v62 = v11 == 0;
          }

          v63 = !v62;
          v47 = v63 & (v58 ^ 1);
        }

        goto LABEL_25;
      }
    }

    else
    {
      v26 = v54;
    }

    p_mValidConnections = v65;
  }

  else
  {
  }

LABEL_25:
  if (v47 && v66)
  {
    *p_mValidConnections = 1;
    objc_msgSend_invalidateExteriorWrap(self, v52, v53);
  }

LABEL_29:
}

- (CGPoint)controlPointForPointA:(CGPoint)a pointB:(CGPoint)b andOriginalA:(CGPoint)originalA originalB:(CGPoint)originalB
{
  v6 = *MEMORY[0x277CBF348];
  v7 = *(MEMORY[0x277CBF348] + 8);
  result.y = v7;
  result.x = v6;
  return result;
}

- (id)clipPath:(id)path onLayout:(id)layout outset:(double)outset reversed:(BOOL)reversed isValid:(BOOL *)valid
{
  reversedCopy = reversed;
  v119[2] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  layoutCopy = layout;
  objc_msgSend_length(pathCopy, v14, v15);
  v17 = v16;
  v20 = objc_msgSend_pathForClippingConnectionLines(layoutCopy, v18, v19);
  v23 = v20;
  if (!v20 || (objc_msgSend_isEmpty(v20, v21, v22) & 1) != 0)
  {
    v24 = 0;
    goto LABEL_54;
  }

  validCopy = valid;
  if (outset > 0.0)
  {
    WeakRetained = objc_loadWeakRetained(&self->mCachedFromWrapPath);
    if (WeakRetained == v23)
    {
      mCachedFromOutset = self->mCachedFromOutset;

      if (mCachedFromOutset == outset)
      {
        v47 = 1216;
LABEL_16:
        v43 = *(&self->super.super.super.super.super.super.isa + v47);
        goto LABEL_17;
      }
    }

    else
    {
    }

    v26 = objc_loadWeakRetained(&self->mCachedToWrapPath);
    if (v26 != v23)
    {

LABEL_9:
      objc_msgSend_setLineWidth_(v23, v27, v28, outset + outset);
      objc_msgSend_setLineJoinStyle_(v23, v29, 1);
      objc_msgSend_setLineCapStyle_(v23, v30, 1);
      v33 = objc_msgSend_strokedCopyAttemptingUsingLivarotFirst(v23, v31, v32);
      v34 = MEMORY[0x277D81160];
      v119[0] = v23;
      v119[1] = v33;
      v36 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v35, v119, 2);
      v38 = objc_msgSend_uniteBezierPaths_(v34, v37, v36);

      v39 = objc_loadWeakRetained(&self->mConnectedFrom);
      if (v39 == layoutCopy)
      {
        objc_storeStrong(&self->mCachedFromOutsetWrapPath, v38);
        objc_storeWeak(&self->mCachedFromWrapPath, v23);
        v42 = 1200;
      }

      else
      {
        objc_storeStrong(&self->mCachedToOutsetWrapPath, v38);
        objc_storeWeak(&self->mCachedToWrapPath, v23);
        v42 = 1208;
      }

      *(&self->super.super.super.super.super.super.isa + v42) = outset;
      v49 = objc_msgSend_copy(v38, v40, v41);
      goto LABEL_20;
    }

    mCachedToOutset = self->mCachedToOutset;

    if (mCachedToOutset != outset)
    {
      goto LABEL_9;
    }

    v47 = 1224;
    goto LABEL_16;
  }

  v43 = v23;
LABEL_17:
  v38 = v43;
  v49 = objc_msgSend_copy(v43, v44, v45);
LABEL_20:
  v50 = v49;

  v53 = objc_msgSend_geometry(layoutCopy, v51, v52);
  v56 = v53;
  v116 = v23;
  v117 = layoutCopy;
  if (v53)
  {
    objc_msgSend_transform(v53, v54, v55);
  }

  else
  {
    memset(v118, 0, sizeof(v118));
  }

  objc_msgSend_transformUsingAffineTransform_(v50, v54, v118);

  v59 = objc_msgSend_array(MEMORY[0x277CBEB18], v57, v58);
  objc_msgSend_addIntersectionsWithPath_to_allIntersections_reversed_(pathCopy, v60, v50, v59, 1, 0);
  if (!objc_msgSend_count(v59, v61, v62))
  {
    goto LABEL_45;
  }

  objc_msgSend_sortUsingSelector_(v59, v63, sel_compareSegmentAndT_);
  v67 = objc_msgSend_count(v59, v65, v66);
  v68 = v67;
  if (v67 < 0)
  {
    sub_276808DCC(v67, v63);
    v68 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v69 = reversedCopy ? v68 - 1 : 0;
  v70 = reversedCopy ? -1 : 1;
  if (v69 < v68)
  {
    v71 = 1.0 / v17;
    v72 = 1.0 - 1.0 / v17;
    while (1)
    {
      v24 = objc_msgSend_objectAtIndex_(v59, v63, v69);
      v69 += v70;
      if (v69 >= v68)
      {
        if (reversedCopy)
        {
          v78 = 0;
          v82 = 0.0;
        }

        else
        {
          v78 = objc_msgSend_elementCount(pathCopy, v73, v74) - 1;
          v82 = 1.0;
        }
      }

      else
      {
        v75 = objc_msgSend_objectAtIndex_(v59, v73, v69);
        v78 = objc_msgSend_segment(v75, v76, v77);
        objc_msgSend_t(v75, v79, v80);
        v82 = v81;
      }

      v85 = vcvtd_n_f64_s64(objc_msgSend_segment(v24, v73, v74) + v78, 1uLL);
      v86 = ceil(v85);
      v87 = floor(v85);
      if (reversedCopy)
      {
        v87 = v86;
      }

      v88 = v87;
      objc_msgSend_t(v24, v83, v84);
      objc_msgSend_pointAt_fromElement_(pathCopy, v90, v88, (v82 + v89) * 0.5);
      if ((objc_msgSend_containsPoint_(v50, v91, v92) & 1) == 0)
      {
        objc_msgSend_t(v24, v93, v94);
        if (v97 > v71)
        {
          objc_msgSend_t(v24, v95, v96);
          if (v98 < v72)
          {
            break;
          }
        }
      }

      if (v69 >= v68)
      {
        goto LABEL_45;
      }
    }

    v99 = validCopy;
    v23 = v116;
    *validCopy = 1;
    layoutCopy = v117;
    if (v24)
    {
      goto LABEL_53;
    }
  }

  else
  {
LABEL_45:
    v99 = validCopy;
    v23 = v116;
    *validCopy = 1;
    layoutCopy = v117;
  }

  if (!reversedCopy)
  {
    objc_msgSend_pointAt_fromElement_(pathCopy, v63, 1, 0.01);
    if (objc_msgSend_containsPoint_(v50, v107, v108))
    {
      v109 = [TSDPathIntersection alloc];
      v112 = objc_msgSend_elementCount(pathCopy, v110, v111) - 1;
      v106 = objc_msgSend_initWithSegment_atT_atPoint_(v109, v113, v112, 1.0, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
      goto LABEL_51;
    }

LABEL_52:
    v24 = 0;
    goto LABEL_53;
  }

  v100 = objc_msgSend_elementCount(pathCopy, v63, v64);
  objc_msgSend_pointAt_fromElement_(pathCopy, v101, v100 - 1, 0.99);
  if (!objc_msgSend_containsPoint_(v50, v102, v103))
  {
    goto LABEL_52;
  }

  v104 = [TSDPathIntersection alloc];
  v106 = objc_msgSend_initWithSegment_atT_atPoint_(v104, v105, 0, 0.0, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
LABEL_51:
  v24 = v106;
  *v99 = 0;
LABEL_53:

LABEL_54:

  return v24;
}

- (void)updateConnectedPath
{
  v161 = *MEMORY[0x277D85DE8];
  objc_msgSend_checkConnections(self, a2, v2);
  WeakRetained = objc_loadWeakRetained(&self->mConnectedFrom);
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->mConnectedFrom);
    v8 = objc_msgSend_parent(v5, v6, v7);
    v11 = objc_msgSend_parent(self, v9, v10);
    if (v8 == v11)
    {
      v12 = objc_loadWeakRetained(&self->mConnectedFrom);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_loadWeakRetained(&self->mConnectedTo);
  if (v13)
  {
    v14 = objc_loadWeakRetained(&self->mConnectedTo);
    v17 = objc_msgSend_parent(v14, v15, v16);
    v20 = objc_msgSend_parent(self, v18, v19);
    if (v17 == v20)
    {
      v21 = objc_loadWeakRetained(&self->mConnectedTo);
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  p_cache = &OBJC_METACLASS___TSDMovieLayout.cache;
  objc_opt_class();
  if (self->super.mResizePathSource)
  {
    v26 = TSUDynamicCast();
  }

  else
  {
    v27 = objc_msgSend_shapeInfo(self, 0, v23);
    v30 = objc_msgSend_pathSource(v27, v28, v29);
    v26 = TSUDynamicCast();
  }

  mResizeInfoGeometry = self->super.mResizeInfoGeometry;
  if (mResizeInfoGeometry)
  {
    v34 = mResizeInfoGeometry;
  }

  else
  {
    v35 = objc_msgSend_info(self, v24, v25);
    v34 = objc_msgSend_geometry(v35, v36, v37);
  }

  v38 = MEMORY[0x277CBF348];
  v154 = *MEMORY[0x277CBF348];
  v155 = v154;
  v39 = objc_msgSend_bezierPath(v26, v32, v33);
  objc_msgSend_getStartPoint_andEndPoint_(v39, v40, &v155, &v154);

  if ((objc_msgSend_canEndpointsCoincide(self, v41, v42) & 1) != 0 || !TSUNearlyEqualPoints())
  {
    v45 = v26;
    v55 = v34;
  }

  else
  {
    v45 = objc_msgSend_pathSourceOfLength_(TSDConnectionLinePathSource, v43, v44, 100.0);

    v48 = objc_msgSend_bezierPath(v45, v46, v47);
    objc_msgSend_getStartPoint_andEndPoint_(v48, v49, &v155, &v154);

    v50 = [TSDInfoGeometry alloc];
    objc_msgSend_position(v34, v51, v52);
    v55 = objc_msgSend_initWithPosition_size_(v50, v53, v54);

    if (TSUNearlyEqualPoints())
    {
      v56 = MEMORY[0x277D81150];
      v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSDConnectionLineAbstractLayout updateConnectedPath]");
      v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDConnectionLineAbstractLayout.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v60, v57, v59, 567, 0, "head and tail should no longer be equal");

      p_cache = (&OBJC_METACLASS___TSDMovieLayout + 16);
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62);
    }
  }

  v152 = 0u;
  v153 = 0u;
  v151 = 0u;
  if (v55)
  {
    objc_msgSend_transform(v55, v43, v44);
    v63 = *(&v151 + 1);
    v64 = *&v151;
    v65 = *(&v152 + 1);
    v66 = *&v152;
    v67 = *(&v153 + 1);
    v68 = *&v153;
  }

  else
  {
    v67 = 0.0;
    v68 = 0.0;
    v65 = 0.0;
    v66 = 0.0;
    v63 = 0.0;
    v64 = 0.0;
  }

  v69 = v68 + *(&v155 + 1) * v66 + v64 * *&v155;
  v70 = v67 + *(&v155 + 1) * v65 + v63 * *&v155;
  *&v155 = v69;
  *(&v155 + 1) = v70;
  v71 = v68 + v66 * *(&v154 + 1) + v64 * *&v154;
  v72 = v67 + v65 * *(&v154 + 1) + v63 * *&v154;
  *&v154 = v71;
  *(&v154 + 1) = v72;
  x = v69;
  y = v70;
  if (v12)
  {
    objc_msgSend_centerForConnecting(v12, v43, v44);
    x = v75;
    y = v76;
  }

  if (v21)
  {
    objc_msgSend_centerForConnecting(v21, v43, v44);
    v78 = v77;
    v80 = v79;
  }

  else
  {
    v80 = *(&v154 + 1);
    v78 = *&v154;
  }

  if (self->mUseResizePoints[0])
  {
    x = self->mResizeControlPoints[0].x;
    y = self->mResizeControlPoints[0].y;
  }

  if (self->mUseResizePoints[2])
  {
    v78 = self->mResizeControlPoints[2].x;
    v80 = self->mResizeControlPoints[2].y;
  }

  if ((objc_msgSend_canEndpointsCoincide(self, v43, v44) & 1) == 0 && (TSUNearlyEqualPoints() & 1) != 0 || (TSUPointHasNaNComponents() & 1) != 0 || TSUPointHasNaNComponents())
  {
    self->mValidLine = 0;
    self->mVisibleLine = 0;
    objc_storeStrong(&self->mConnectedInfoGeometry, v55);
    v85 = objc_msgSend_copy(v45, v83, v84);
    mConnectedPathSource = self->mConnectedPathSource;
    self->mConnectedPathSource = v85;

    v89 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v87, v88);
    mClippedBezierPath = self->mClippedBezierPath;
    self->mClippedBezierPath = v89;

    v91 = *v38;
    v92 = v38[1];
    objc_msgSend_moveToPoint_(self->mClippedBezierPath, v93, v94, *v38, v92);
    objc_msgSend_lineToPoint_(self->mClippedBezierPath, v95, v96, v91, v92);
  }

  else
  {
    self->mValidLine = 1;
    v156 = x;
    v157 = y;
    if (self->mUseResizePoints[1])
    {
      v158 = self->mResizeControlPoints[1];
    }

    else
    {
      objc_msgSend_controlPointForPointA_pointB_andOriginalA_originalB_(self, v81, v82, x, y, v78, v80, v69, v70, v71, v72);
      v158.x = v97;
      v158.y = v98;
    }

    v159 = v78;
    v160 = v80;
    v99 = objc_msgSend_createConnectedPathFrom_to_withControlPoints_(self, v81, v12, v21, &v156);
    objc_msgSend_bounds(v99, v100, v101);
    v103 = v102;
    v105 = v104;
    v107 = v106;
    v109 = v108;
    v110 = [TSDInfoGeometry alloc];
    v113 = objc_msgSend_initWithPosition_size_(v110, v111, v112, v103, v105, v107, v109);
    mConnectedInfoGeometry = self->mConnectedInfoGeometry;
    self->mConnectedInfoGeometry = v113;

    v117 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v115, v116);
    objc_msgSend_moveToPoint_(v117, v118, v119, v156, v157);
    objc_msgSend_lineToPoint_(v117, v120, v121, v158);
    objc_msgSend_lineToPoint_(v117, v122, v123, v159, v160);
    v126 = self->mConnectedInfoGeometry;
    if (v126)
    {
      objc_msgSend_transform(v126, v124, v125);
    }

    else
    {
      memset(&v149, 0, sizeof(v149));
    }

    CGAffineTransformInvert(&v150, &v149);
    objc_msgSend_transformUsingAffineTransform_(v117, v127, &v150);
    v128 = objc_alloc((p_cache + 243));
    v130 = objc_msgSend_initWithBezierPath_(v128, v129, v117);
    v131 = self->mConnectedPathSource;
    self->mConnectedPathSource = v130;

    v134 = objc_msgSend_type(v45, v132, v133);
    objc_msgSend_setType_(self->mConnectedPathSource, v135, v134);
    objc_msgSend_outsetFrom(v45, v136, v137);
    objc_msgSend_setOutsetFrom_(self->mConnectedPathSource, v138, v139);
    objc_msgSend_outsetTo(v45, v140, v141);
    objc_msgSend_setOutsetTo_(self->mConnectedPathSource, v142, v143);
    v146 = self->mConnectedInfoGeometry;
    if (v146)
    {
      objc_msgSend_transform(v146, v144, v145);
    }

    else
    {
      memset(&v149, 0, sizeof(v149));
    }

    CGAffineTransformInvert(&v150, &v149);
    objc_msgSend_transformUsingAffineTransform_(v99, v147, &v150);
    v148 = self->mClippedBezierPath;
    self->mClippedBezierPath = v99;
  }
}

- (int)wrapType
{
  if (objc_msgSend_isInvisible(self, a2, v2))
  {
    return 0;
  }

  v5.receiver = self;
  v5.super_class = TSDConnectionLineAbstractLayout;
  return [(TSDShapeLayout *)&v5 wrapType];
}

- (TSDConnectionLinePathSource)connectedPathSource
{
  mConnectedPathSource = self->mConnectedPathSource;
  if (!mConnectedPathSource || !self->mValidConnections)
  {
    objc_msgSend_updateConnectedPath(self, a2, v2);
    mConnectedPathSource = self->mConnectedPathSource;
  }

  return mConnectedPathSource;
}

- (id)pathSource
{
  objc_msgSend_checkConnections(self, a2, v2);

  return objc_msgSend_connectedPathSource(self, v4, v5);
}

- (id)layoutInfoGeometry
{
  mConnectedInfoGeometry = self->mConnectedInfoGeometry;
  if (!mConnectedInfoGeometry || !self->mValidConnections)
  {
    objc_msgSend_updateConnectedPath(self, a2, v2);
    mConnectedInfoGeometry = self->mConnectedInfoGeometry;
  }

  return mConnectedInfoGeometry;
}

- (CGRect)boundsForStandardKnobs
{
  v4 = objc_msgSend_path(self, a2, v2);
  objc_msgSend_bounds(v4, v5, v6);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  objc_msgSend_pathBounds(self, v15, v16);
  v18 = -v17;
  v20 = -v19;
  v21 = v8;
  v22 = v10;
  v23 = v12;
  v24 = v14;

  return CGRectOffset(*&v21, v18, v20);
}

- (void)invalidatePath
{
  v9.receiver = self;
  v9.super_class = TSDConnectionLineAbstractLayout;
  [(TSDShapeLayout *)&v9 invalidatePath];
  objc_msgSend_invalidate(self, v3, v4);
  if ((*&self->super.super.super.super.mInvalidFlags & 1) == 0)
  {
    objc_msgSend_invalidatePosition(self, v5, v6);
  }

  mConnectedPathSource = self->mConnectedPathSource;
  self->mConnectedPathSource = 0;

  mClippedBezierPath = self->mClippedBezierPath;
  self->mClippedBezierPath = 0;
}

- (id)path
{
  mClippedBezierPath = self->mClippedBezierPath;
  if (!mClippedBezierPath || !self->mValidConnections)
  {
    objc_msgSend_updateConnectedPath(self, a2, v2);
    mClippedBezierPath = self->mClippedBezierPath;
  }

  return mClippedBezierPath;
}

- (CGPoint)unclippedHeadPoint
{
  objc_msgSend_checkConnections(self, a2, v2);
  WeakRetained = objc_loadWeakRetained(&self->mConnectedTo);

  if (WeakRetained)
  {
    v16 = 0.0;
    v17 = 0.0;
    v7 = objc_msgSend_connectedPathSource(self, v5, v6, 0, 0);
    v10 = objc_msgSend_bezierPath(v7, v8, v9);
    objc_msgSend_getStartPoint_andEndPoint_(v10, v11, &v14, &v16);

    v12 = v16;
    v13 = v17;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = TSDConnectionLineAbstractLayout;
    [(TSDShapeLayout *)&v15 unclippedHeadPoint];
  }

  result.y = v13;
  result.x = v12;
  return result;
}

- (CGPoint)unclippedTailPoint
{
  objc_msgSend_checkConnections(self, a2, v2);
  WeakRetained = objc_loadWeakRetained(&self->mConnectedFrom);

  if (WeakRetained)
  {
    v16 = 0.0;
    v17 = 0.0;
    v7 = objc_msgSend_connectedPathSource(self, v5, v6, 0, 0);
    v10 = objc_msgSend_bezierPath(v7, v8, v9);
    objc_msgSend_getStartPoint_andEndPoint_(v10, v11, &v16, &v14);

    v12 = v16;
    v13 = v17;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = TSDConnectionLineAbstractLayout;
    [(TSDShapeLayout *)&v15 unclippedTailPoint];
  }

  result.y = v13;
  result.x = v12;
  return result;
}

- (BOOL)shouldDisplayGuides
{
  objc_msgSend_checkConnections(self, a2, v2);
  WeakRetained = objc_loadWeakRetained(&self->mConnectedFrom);
  if (WeakRetained)
  {
    v5 = 0;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->mConnectedTo);
    v5 = v6 == 0;
  }

  return v5;
}

- (CGSize)minimumSize
{
  v4 = objc_msgSend_connectedTo(self, a2, v2);
  if (v4 && (v7 = v4, objc_msgSend_connectedFrom(self, v5, v6), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = TSDConnectionLineAbstractLayout;
    [(TSDShapeLayout *)&v11 minimumSize];
  }

  result.height = v10;
  result.width = v9;
  return result;
}

- (BOOL)isStraightLine
{
  objc_opt_class();
  v5 = objc_msgSend_pathSource(self, v3, v4);
  v6 = TSUDynamicCast();

  objc_msgSend_getControlKnobPosition_(v6, v7, 10);
  objc_msgSend_getControlKnobPosition_(v6, v8, 12);
  objc_msgSend_getControlKnobPosition_(v6, v9, 11);
  if (TSUNearlyCollinearPoints())
  {
    TSUMultiplyPointScalar();
    TSUSubtractPoints();
    TSUMultiplyPointScalar();
    TSUSubtractPoints();
    TSUMultiplyPointScalar();
    TSUSubtractPoints();
    TSUSubtractPoints();
    TSUDotPoints();
    v11 = v10 > 0.0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CGPoint)getControlKnobPosition:(unint64_t)position
{
  v4 = objc_msgSend_connectedPathSource(self, a2, position);
  objc_msgSend_getControlKnobPosition_(v4, v5, position);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (BOOL)p_isInfoAKeynoteTemplateObject:(id)object
{
  objectCopy = object;
  v7 = objc_msgSend_layoutController(self, v5, v6);
  v10 = objc_msgSend_canvas(v7, v8, v9);

  v13 = objc_msgSend_delegate(v10, v11, v12);
  v14 = TSUProtocolCast();

  if (v14)
  {
    isInfoAKeynoteTemplateObject = objc_msgSend_isInfoAKeynoteTemplateObject_(v14, v15, objectCopy, &unk_2885CECF8);
  }

  else
  {
    isInfoAKeynoteTemplateObject = 0;
  }

  return isInfoAKeynoteTemplateObject;
}

- (id)p_infoForConnectingToInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_layoutController(self, v5, v6);
  v10 = objc_msgSend_canvas(v7, v8, v9);

  v13 = objc_msgSend_delegate(v10, v11, v12);
  v14 = TSUProtocolCast();

  v16 = infoCopy;
  if (v14)
  {
    v16 = objc_msgSend_infoToConnectToForConnectionLineConnectedToInfo_(v14, v15, infoCopy, &unk_2885CECF8);
  }

  return v16;
}

- (TSDLayout)connectedFrom
{
  WeakRetained = objc_loadWeakRetained(&self->mConnectedFrom);

  return WeakRetained;
}

- (TSDLayout)connectedTo
{
  WeakRetained = objc_loadWeakRetained(&self->mConnectedTo);

  return WeakRetained;
}

- (TSDInfo)connectedFromInfo
{
  WeakRetained = objc_loadWeakRetained(&self->mConnectedFromInfo);

  return WeakRetained;
}

- (TSDInfo)connectedToInfo
{
  WeakRetained = objc_loadWeakRetained(&self->mConnectedToInfo);

  return WeakRetained;
}

@end