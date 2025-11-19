@interface TSDRootLayout
- (BOOL)isSavedShiftForInfo:(id)a3 equalToOffset:(CGPoint)a4;
- (CGPoint)adjustMappingPointForInfo:(id)a3 fromPoint:(CGPoint)a4;
- (CGPoint)applyAdaptiveLayoutTo:(id)a3 info:(id)a4 offset:(CGPoint)a5;
- (TSDLayoutController)layoutController;
- (TSDRootLayout)initWithLayoutController:(id)a3;
- (id)childLayoutsInRect:(CGRect)a3 deep:(BOOL)a4;
- (id)p_shiftedObjects;
- (void)beginDynamicAdaptiveLayout;
- (void)endDynamicAdaptiveLayout;
- (void)resetLayout:(id)a3 forInfo:(id)a4;
- (void)updateRootLayoutShiftFor:(id)a3 offset:(CGPoint)a4;
@end

@implementation TSDRootLayout

- (TSDRootLayout)initWithLayoutController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TSDRootLayout;
  v5 = [(TSDAbstractLayout *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_layoutController, v4);
    v6->_supportsAdaptiveLayout = 0;
    shiftedObjects = v6->_shiftedObjects;
    v6->_shiftedObjects = 0;
  }

  return v6;
}

- (id)childLayoutsInRect:(CGRect)a3 deep:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v26 = *MEMORY[0x277D85DE8];
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = objc_msgSend_children(self, v11, v12, 0);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v21, v25, 16);
  if (v15)
  {
    v17 = v15;
    v18 = *v22;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v13);
        }

        objc_msgSend_addLayoutsInRect_toArray_deep_(*(*(&v21 + 1) + 8 * i), v16, v10, v4, x, y, width, height);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v21, v25, 16);
    }

    while (v17);
  }

  return v10;
}

- (id)p_shiftedObjects
{
  if (self->_supportsAdaptiveLayout)
  {
    shiftedObjects = self->_shiftedObjects;
    if (!shiftedObjects)
    {
      v5 = objc_alloc_init(MEMORY[0x277D81308]);
      v6 = self->_shiftedObjects;
      self->_shiftedObjects = v5;

      shiftedObjects = self->_shiftedObjects;
    }

    v7 = shiftedObjects;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)beginDynamicAdaptiveLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutController);
  v5 = objc_msgSend_canvas(WeakRetained, v3, v4);
  self->_supportsAdaptiveLayout = objc_msgSend_supportsAdaptiveLayout(v5, v6, v7);
}

- (void)endDynamicAdaptiveLayout
{
  if (self->_supportsAdaptiveLayout)
  {
    shiftedObjects = self->_shiftedObjects;
    self->_shiftedObjects = 0;
  }
}

- (BOOL)isSavedShiftForInfo:(id)a3 equalToOffset:(CGPoint)a4
{
  v6 = a3;
  if (!self->_supportsAdaptiveLayout)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDRootLayout isSavedShiftForInfo:equalToOffset:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDRootLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 112, 0, "should not use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  objc_opt_class();
  v14 = TSUDynamicCast();
  v17 = v14;
  if (v14 && (objc_msgSend_isLocked(v14, v15, v16) & 1) == 0)
  {
    v22 = objc_msgSend_p_shiftedObjects(self, v18, v19);
    if (!v22)
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSDRootLayout isSavedShiftForInfo:equalToOffset:]");
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDRootLayout.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 120, 0, "invalid nil value for '%{public}s'", "shiftedObjects");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
    }

    v30 = objc_msgSend_objectForKey_(v22, v21, v17);
    objc_msgSend_CGPointValue(v30, v31, v32);
    v20 = TSUNearlyEqualPoints();
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)updateRootLayoutShiftFor:(id)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v33 = a3;
  if (!self->_supportsAdaptiveLayout)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDRootLayout updateRootLayoutShiftFor:offset:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDRootLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 130, 0, "should not use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  objc_opt_class();
  v15 = TSUDynamicCast();
  v18 = v15;
  if (v15 && (objc_msgSend_isLocked(v15, v16, v17) & 1) == 0)
  {
    v23 = objc_msgSend_p_shiftedObjects(self, v19, v20);
    if (!v23)
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSDRootLayout updateRootLayoutShiftFor:offset:]");
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDRootLayout.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 138, 0, "invalid nil value for '%{public}s'", "shiftedObjects");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
    }

    v31 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v21, v22, x, y);
    objc_msgSend_setObject_forUncopiedKey_(v23, v32, v31, v33);
  }
}

- (void)resetLayout:(id)a3 forInfo:(id)a4
{
  v54 = a3;
  v7 = a4;
  if (!self->_supportsAdaptiveLayout)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDRootLayout resetLayout:forInfo:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDRootLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 149, 0, "should not use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  objc_opt_class();
  v17 = TSUDynamicCast();
  if (v54)
  {
    v18 = objc_msgSend_parent(v54, v15, v16);

    if (v18 != self)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSDRootLayout resetLayout:forInfo:]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDRootLayout.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 156, 0, "unexpected layout being shifted");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
    }

    v28 = objc_msgSend_info(v54, v19, v20);

    if (v28 != v17)
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSDRootLayout resetLayout:forInfo:]");
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDRootLayout.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 158, 0, "layout's info didn't match passed in info");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
    }
  }

  if (v17 && (objc_msgSend_isLocked(v17, v15, v16) & 1) == 0)
  {
    v39 = objc_msgSend_p_shiftedObjects(self, v36, v37);
    if (!v39)
    {
      v40 = MEMORY[0x277D81150];
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[TSDRootLayout resetLayout:forInfo:]");
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDRootLayout.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v44, v41, v43, 164, 0, "invalid nil value for '%{public}s'", "shiftedObjects");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46);
    }

    objc_msgSend_removeObjectForKey_(v39, v38, v7);
    if (v54)
    {
      v47 = [TSDLayoutGeometry alloc];
      v50 = objc_msgSend_geometry(v17, v48, v49);
      v52 = objc_msgSend_initWithInfoGeometry_(v47, v51, v50);

      objc_msgSend_setGeometry_(v54, v53, v52);
    }
  }
}

- (CGPoint)adjustMappingPointForInfo:(id)a3 fromPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  objc_opt_class();
  v8 = TSUDynamicCast();

  if (v8 && (objc_msgSend_isLocked(v8, v9, v10) & 1) == 0)
  {
    v13 = objc_msgSend_p_shiftedObjects(self, v11, v12);
    v15 = v13;
    if (v13)
    {
      v16 = objc_msgSend_objectForKey_(v13, v14, v8);
      objc_msgSend_CGPointValue(v16, v17, v18);
      TSUSubtractPoints();
      x = v19;
      y = v20;
    }
  }

  v21 = x;
  v22 = y;
  result.y = v22;
  result.x = v21;
  return result;
}

- (CGPoint)applyAdaptiveLayoutTo:(id)a3 info:(id)a4 offset:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  v11 = a4;
  if (!self->_supportsAdaptiveLayout)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSDRootLayout applyAdaptiveLayoutTo:info:offset:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDRootLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 194, 0, "should not use this API");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  objc_opt_class();
  v21 = TSUDynamicCast();
  if (v9)
  {
    v22 = objc_msgSend_parent(v9, v19, v20);

    if (v22 != self)
    {
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSDRootLayout applyAdaptiveLayoutTo:info:offset:]");
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDRootLayout.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v29, v26, v28, 201, 0, "unexpected layout being shifted");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
    }

    v32 = objc_msgSend_info(v9, v23, v24);

    if (v32 != v21)
    {
      v33 = MEMORY[0x277D81150];
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSDRootLayout applyAdaptiveLayoutTo:info:offset:]");
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDRootLayout.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v37, v34, v36, 203, 0, "layout's info didn't match passed in info");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39);
    }
  }

  v41 = *MEMORY[0x277CBF348];
  v40 = *(MEMORY[0x277CBF348] + 8);
  if (v21 && (objc_msgSend_isLocked(v21, v19, v20) & 1) == 0)
  {
    v45 = objc_msgSend_p_shiftedObjects(self, v42, v43);
    if (!v45)
    {
      v46 = MEMORY[0x277D81150];
      v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "[TSDRootLayout applyAdaptiveLayoutTo:info:offset:]");
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDRootLayout.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v50, v47, v49, 212, 0, "invalid nil value for '%{public}s'", "shiftedObjects");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52);
    }

    v53 = objc_msgSend_objectForKey_(v45, v44, v21);
    v56 = v53;
    v40 = y;
    v41 = x;
    if (v9)
    {
      v40 = y;
      v41 = x;
      if (v53)
      {
        objc_msgSend_CGPointValue(v53, v54, v55);
        TSUAddPoints();
        v41 = v57;
        v40 = v58;
      }
    }

    v59 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v54, v55, v41, v40);
    objc_msgSend_setObject_forUncopiedKey_(v45, v60, v59, v11);
    if (v9)
    {
      objc_msgSend_offsetGeometryBy_(v9, v61, v62, x, y);
    }
  }

  v63 = v41;
  v64 = v40;
  result.y = v64;
  result.x = v63;
  return result;
}

- (TSDLayoutController)layoutController
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutController);

  return WeakRetained;
}

@end