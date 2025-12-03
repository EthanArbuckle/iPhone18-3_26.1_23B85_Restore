@interface TSDCounterRotateLayout
- (BOOL)descendentWrappablesContainsWrappable:(id)wrappable;
- (BOOL)supportsFlipping;
- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)transform;
- (CGRect)boundsForStandardKnobs;
- (CGSize)minimumSize;
- (id)additionalDependenciesForChildLayout:(id)layout;
- (id)descendentWrappables;
- (id)reliedOnLayouts;
- (id)visibleGeometries;
@end

@implementation TSDCounterRotateLayout

- (id)reliedOnLayouts
{
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_msgSend_children(self, a2, v2);
  v6 = objc_msgSend_setWithArray_(v3, v5, v4);

  return v6;
}

- (id)additionalDependenciesForChildLayout:(id)layout
{
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, layout);
  objc_opt_class();
  v7 = objc_msgSend_parent(self, v5, v6);
  v8 = TSUCheckedDynamicCast();

  if (v8)
  {
    objc_msgSend_addObject_(v4, v9, v8);
  }

  return v4;
}

- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)transform
{
  v5 = objc_msgSend_children(self, a2, transform);
  v8 = objc_msgSend_firstObject(v5, v6, v7);

  if (!v8)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSDCounterRotateLayout baseFrameForFrameForCullingWithAdditionalTransform:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCounterRotateLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 53, 0, "invalid nil value for '%{public}s'", "childLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  objc_msgSend_transform(self, v9, v10);
  v18 = *&transform->c;
  *&t2.a = *&transform->a;
  *&t2.c = v18;
  *&t2.tx = *&transform->tx;
  CGAffineTransformConcat(&v34, &t1, &t2);
  objc_msgSend_baseFrameForFrameForCullingWithAdditionalTransform_(v8, v19, &v34);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = v21;
  v29 = v23;
  v30 = v25;
  v31 = v27;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (CGRect)boundsForStandardKnobs
{
  v3 = objc_msgSend_children(self, a2, v2);
  v6 = objc_msgSend_firstObject(v3, v4, v5);

  if (v6)
  {
    objc_msgSend_boundsForStandardKnobs(v6, v7, v8);
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    objc_msgSend_transform(v6, v17, v18);
  }

  else
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDCounterRotateLayout boundsForStandardKnobs]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCounterRotateLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 59, 0, "invalid nil value for '%{public}s'", "childLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
    objc_msgSend_boundsForStandardKnobs(0, v26, v27);
    v10 = v28;
    v12 = v29;
    v14 = v30;
    v16 = v31;
    memset(&v40, 0, sizeof(v40));
  }

  v41.origin.x = v10;
  v41.origin.y = v12;
  v41.size.width = v14;
  v41.size.height = v16;
  v42 = CGRectApplyAffineTransform(v41, &v40);
  x = v42.origin.x;
  y = v42.origin.y;
  width = v42.size.width;
  height = v42.size.height;

  v36 = x;
  v37 = y;
  v38 = width;
  v39 = height;
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v37;
  result.origin.x = v36;
  return result;
}

- (CGSize)minimumSize
{
  v3 = objc_msgSend_children(self, a2, v2);
  v6 = objc_msgSend_firstObject(v3, v4, v5);

  if (!v6)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDCounterRotateLayout minimumSize]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCounterRotateLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 66, 0, "invalid nil value for '%{public}s'", "childLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  objc_msgSend_minimumSize(v6, v7, v8);
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (BOOL)supportsFlipping
{
  v3 = objc_msgSend_children(self, a2, v2);
  v6 = objc_msgSend_firstObject(v3, v4, v5);

  if (!v6)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDCounterRotateLayout supportsFlipping]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCounterRotateLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 72, 0, "invalid nil value for '%{public}s'", "childLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_msgSend_supportsFlipping(v6, v7, v8);

  return v16;
}

- (id)visibleGeometries
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v7 = objc_msgSend_geometry(self, v5, v6);
  v10 = v7;
  if (v7)
  {
    objc_msgSend_transform(v7, v8, v9);
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
  }

  v13 = objc_msgSend_children(self, v11, v12);
  v16 = objc_msgSend_firstObject(v13, v14, v15);

  if (!v16)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSDCounterRotateLayout visibleGeometries]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCounterRotateLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 81, 0, "invalid nil value for '%{public}s'", "childLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
  }

  v26 = objc_msgSend_visibleGeometries(v16, v17, v18);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v38, v45, 16);
  if (v28)
  {
    v30 = v28;
    v31 = *v39;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v39 != v31)
        {
          objc_enumerationMutation(v26);
        }

        v33 = *(*(&v38 + 1) + 8 * i);
        v37[0] = v42;
        v37[1] = v43;
        v37[2] = v44;
        v34 = objc_msgSend_geometryByTransformingBy_(v33, v29, v37);
        objc_msgSend_addObject_(v4, v35, v34);
      }

      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v38, v45, 16);
    }

    while (v30);
  }

  return v4;
}

- (id)descendentWrappables
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v5 = objc_msgSend_initWithCapacity_(v3, v4, 1);
  v8 = objc_msgSend_children(self, v6, v7);
  v11 = objc_msgSend_firstObject(v8, v9, v10);

  if (!v11)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSDCounterRotateLayout descendentWrappables]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCounterRotateLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 100, 0, "invalid nil value for '%{public}s'", "childLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  if (objc_msgSend_conformsToProtocol_(v11, v12, &unk_2885AB610))
  {
    objc_msgSend_addObject_(v5, v20, v11);
  }

  else if (objc_msgSend_conformsToProtocol_(v11, v20, &unk_2885A2AF0))
  {
    v23 = objc_msgSend_descendentWrappables(v11, v21, v22);
    objc_msgSend_addObjectsFromArray_(v5, v24, v23);
  }

  return v5;
}

- (BOOL)descendentWrappablesContainsWrappable:(id)wrappable
{
  wrappableCopy = wrappable;
  v7 = objc_msgSend_parent(wrappableCopy, v5, v6);

  if (v7 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    v8 = TSUDynamicCast();
    v10 = objc_msgSend_childLayoutContainingPossibleDescendentLayout_(self, v9, v8);
    v11 = TSUProtocolCast();

    if (v11)
    {
      v13 = objc_msgSend_descendentWrappablesContainsWrappable_(v11, v12, wrappableCopy, &unk_2885A2AF0);
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

@end