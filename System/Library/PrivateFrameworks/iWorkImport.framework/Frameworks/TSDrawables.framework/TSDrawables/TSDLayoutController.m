@interface TSDLayoutController
+ (void)temporaryLayoutControllerForInfos:(id)a3 useInBlock:(id)a4;
- (CGRect)rectOfTopLevelLayouts;
- (TSDCanvas)canvas;
- (TSDLayoutController)initWithCanvas:(id)a3;
- (id)layoutForInfo:(id)a3;
- (id)layoutForInfo:(id)a3 childOfLayout:(id)a4;
- (id)layoutsForInfo:(id)a3;
- (id)layoutsForInfos:(id)a3;
- (id)sortLayoutsForDependencies:(id)a3;
- (id)validatedLayoutForInfo:(id)a3;
- (id)validatedLayoutForInfo:(id)a3 childOfLayout:(id)a4;
- (id)validatedLayoutsForInfo:(id)a3;
- (void)dealloc;
- (void)i_enumerateLayoutsUsingBlock:(id)a3;
- (void)i_registerLayout:(id)a3;
- (void)i_removeAllLayouts;
- (void)i_unregisterLayout:(id)a3;
- (void)invalidateAllLayoutFrames;
- (void)invalidateChildrenOfLayout:(id)a3;
- (void)invalidateLayout:(id)a3;
- (void)invalidateLayoutForRecreation:(id)a3;
- (void)notifyThatLayoutsChangedOutsideOfLayout;
- (void)p_recreateLayoutsIfNeededToValidateLayouts:(id)a3;
- (void)p_validateLayouts:(id)a3 shouldMarkValidLayoutsThatDoNotWantValidation:(BOOL)a4;
- (void)setInfos:(id)a3;
- (void)validateLayoutWithDependencies:(id)a3;
- (void)validateLayouts;
- (void)validateLayoutsWithDependencies:(id)a3;
@end

@implementation TSDLayoutController

- (TSDLayoutController)initWithCanvas:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = TSDLayoutController;
  v5 = [(TSDLayoutController *)&v31 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_canvas, v4);
    v9 = objc_msgSend_rootLayoutClass(v4, v7, v8);
    if (!v9)
    {
      v9 = objc_opt_class();
    }

    v10 = [v9 alloc];
    v12 = objc_msgSend_initWithLayoutController_(v10, v11, v6);
    rootLayout = v6->_rootLayout;
    v6->_rootLayout = v12;

    v14 = objc_alloc(MEMORY[0x277CCAB00]);
    v16 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v14, v15, 512, 512, 0);
    layoutsByInfo = v6->_layoutsByInfo;
    v6->_layoutsByInfo = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
    invalidLayouts = v6->_invalidLayouts;
    v6->_invalidLayouts = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
    invalidChildrenLayouts = v6->_invalidChildrenLayouts;
    v6->_invalidChildrenLayouts = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
    layoutsNeedingRecreating = v6->_layoutsNeedingRecreating;
    v6->_layoutsNeedingRecreating = v22;

    if (objc_msgSend_isCanvasInteractive(v4, v24, v25))
    {
      v27 = qword_280A4C160;
      if (!qword_280A4C160)
      {
        v28 = objc_alloc_init(MEMORY[0x277D81258]);
        v29 = qword_280A4C160;
        qword_280A4C160 = v28;

        v27 = qword_280A4C160;
      }

      objc_msgSend_addObject_(v27, v26, v6);
    }
  }

  return v6;
}

- (void)dealloc
{
  objc_msgSend_removeObject_(qword_280A4C160, a2, self);
  objc_msgSend_setChildren_(self->_rootLayout, v3, MEMORY[0x277CBEBF8]);
  v4.receiver = self;
  v4.super_class = TSDLayoutController;
  [(TSDLayoutController *)&v4 dealloc];
}

+ (void)temporaryLayoutControllerForInfos:(id)a3 useInBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [TSDCanvas alloc];
  v24 = objc_msgSend_initForTemporaryLayout(v7, v8, v9);
  v12 = objc_msgSend_layoutController(v24, v10, v11);
  objc_msgSend_setInfos_(v12, v13, v6);

  v16 = objc_msgSend_layoutController(v24, v14, v15);
  objc_msgSend_validateLayouts(v16, v17, v18);

  v21 = objc_msgSend_layoutController(v24, v19, v20);
  v5[2](v5, v21);

  objc_msgSend_teardown(v24, v22, v23);
}

- (void)setInfos:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = v4;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v32, v36, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v33;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        v14 = objc_msgSend_layoutsForInfo_(self, v9, v13, v32);
        v17 = v14;
        if (v14)
        {
          v18 = objc_msgSend_allObjects(v14, v15, v16);
          objc_msgSend_addObjectsFromArray_(v5, v19, v18);
        }

        else
        {
          v20 = objc_alloc(objc_msgSend_layoutClass(v13, v15, v16));
          v18 = objc_msgSend_initWithInfo_(v20, v21, v13);
          objc_msgSend_addObject_(v5, v22, v18);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v32, v36, 16);
    }

    while (v10);
  }

  v25 = objc_msgSend_children(self->_rootLayout, v23, v24);
  isEqual = objc_msgSend_isEqual_(v25, v26, v5);

  if ((isEqual & 1) == 0)
  {
    objc_msgSend_setChildren_(self->_rootLayout, v28, v5);
    WeakRetained = objc_loadWeakRetained(&self->_canvas);
    objc_msgSend_layoutInvalidated(WeakRetained, v30, v31);
  }

  objc_msgSend_makeObjectsPerformSelector_(v5, v28, sel_updateChildrenFromInfo, v32);
}

- (void)invalidateLayout:(id)a3
{
  if (self->_validatingLayout != a3)
  {
    objc_msgSend_addObject_(self->_invalidLayouts, a2, a3);
    WeakRetained = objc_loadWeakRetained(&self->_canvas);
    objc_msgSend_layoutInvalidated(WeakRetained, v5, v6);
  }
}

- (void)invalidateChildrenOfLayout:(id)a3
{
  objc_msgSend_addObject_(self->_invalidChildrenLayouts, a2, a3);
  WeakRetained = objc_loadWeakRetained(&self->_canvas);
  objc_msgSend_layoutInvalidated(WeakRetained, v4, v5);
}

- (void)invalidateAllLayoutFrames
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = self->_layoutsByInfo;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v23, v28, 16);
  if (v5)
  {
    v7 = v5;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v11 = objc_msgSend_objectForKeyedSubscript_(self->_layoutsByInfo, v6, v10, 0);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v19, v27, 16);
        if (v13)
        {
          v16 = v13;
          v17 = *v20;
          do
          {
            v18 = 0;
            do
            {
              if (*v20 != v17)
              {
                objc_enumerationMutation(v11);
              }

              objc_msgSend_invalidateFrame(*(*(&v19 + 1) + 8 * v18++), v14, v15);
            }

            while (v16 != v18);
            v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v19, v27, 16);
          }

          while (v16);
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v23, v28, 16);
    }

    while (v7);
  }
}

- (void)invalidateLayoutForRecreation:(id)a3
{
  objc_msgSend_addObject_(self->_layoutsNeedingRecreating, a2, a3);
  WeakRetained = objc_loadWeakRetained(&self->_canvas);
  objc_msgSend_layoutInvalidated(WeakRetained, v4, v5);
}

- (id)layoutForInfo:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6 = objc_msgSend_layoutsForInfo_(self, v5, v4);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v17, v21, 16);
  if (v8)
  {
    v10 = v8;
    v11 = 0;
    v12 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if (!v11 || objc_msgSend_orderedBefore_(*(*(&v17 + 1) + 8 * i), v9, v11))
        {
          v15 = v14;

          v11 = v15;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v17, v21, 16);
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)layoutsForInfo:(id)a3
{
  v3 = objc_msgSend_objectForKey_(self->_layoutsByInfo, a2, a3);
  v6 = objc_msgSend_copy(v3, v4, v5);

  return v6;
}

- (id)layoutsForInfos:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB58];
  v8 = objc_msgSend_count(v4, v6, v7);
  v10 = objc_msgSend_setWithCapacity_(v5, v9, v8);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v4;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v28, v32, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = objc_msgSend_layoutForInfo_(self, v13, *(*(&v28 + 1) + 8 * i));
        objc_opt_class();
        v18 = TSUDynamicCast();
        v21 = v18;
        if (v18)
        {
          v22 = objc_msgSend_partitioner(v18, v19, v20);
          v25 = objc_msgSend_i_layout(v22, v23, v24);

          v17 = v25;
        }

        objc_msgSend_tsu_addNonNilObject_(v10, v19, v17);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v28, v32, 16);
    }

    while (v14);
  }

  return v10;
}

- (id)layoutForInfo:(id)a3 childOfLayout:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  objc_msgSend_layoutsForInfo_(self, v7, a3);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v21 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v18, v22, 16);
  if (v12)
  {
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = objc_msgSend_parent(v15, v10, v11, v18);

        if (v16 == v6)
        {
          v12 = v15;
          goto LABEL_11;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v18, v22, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v12;
}

- (CGRect)rectOfTopLevelLayouts
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = objc_msgSend_children(self->_rootLayout, a2, v2, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v24, v28, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        if (objc_msgSend_shouldBeIncludedInParentFrameForCulling(v15, v10, v11))
        {
          objc_msgSend_frameForCulling(v15, v10, v11);
          TSUUnionRect();
          v4 = v16;
          v3 = v17;
          v6 = v18;
          v5 = v19;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v24, v28, 16);
    }

    while (v12);
  }

  v20 = v4;
  v21 = v3;
  v22 = v6;
  v23 = v5;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)validateLayouts
{
  v2 = self;
  v125 = *MEMORY[0x277D85DE8];
  objc_msgSend_p_recreateLayoutsIfNeededToValidateLayouts_(self, a2, 0);
  v109 = v2;
  if (objc_msgSend_count(v2->_invalidChildrenLayouts, v3, v4))
  {
    v7 = objc_msgSend_copy(v2->_invalidChildrenLayouts, v5, v6);
    objc_msgSend_removeAllObjects(v2->_invalidChildrenLayouts, v8, v9);
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v10 = v7;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v118, v124, 16);
    if (v12)
    {
      v15 = v12;
      v16 = *v119;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v119 != v16)
          {
            objc_enumerationMutation(v10);
          }

          objc_msgSend_updateChildrenFromInfo(*(*(&v118 + 1) + 8 * i), v13, v14);
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v118, v124, 16);
      }

      while (v15);
    }

    if (objc_msgSend_intersectsSet_(v2->_invalidChildrenLayouts, v18, v10))
    {
      v21 = objc_msgSend_mutableCopy(v2->_invalidChildrenLayouts, v19, v20);
      objc_msgSend_intersectSet_(v21, v22, v10);
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v23 = v21;
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v114, v123, 16);
      if (v25)
      {
        v26 = v25;
        v27 = *v115;
        v28 = &stru_28857D120;
        do
        {
          v29 = 0;
          v30 = v28;
          do
          {
            if (*v115 != v27)
            {
              objc_enumerationMutation(v23);
            }

            v31 = MEMORY[0x277CCACA8];
            v32 = objc_opt_class();
            v33 = NSStringFromClass(v32);
            v28 = objc_msgSend_stringWithFormat_(v31, v34, @"%@,%@", v30, v33);

            ++v29;
            v30 = v28;
          }

          while (v26 != v29);
          v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v35, &v114, v123, 16);
        }

        while (v26);
      }

      else
      {
        v28 = &stru_28857D120;
      }

      v36 = MEMORY[0x277D81150];
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "[TSDLayoutController validateLayouts]");
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDLayoutController.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v41, v38, v40, 258, 0, "one of these layouts had invalidateChildren while updating: %{public}@ %@", v28, v23);

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v42, v43);
      v2 = v109;
    }
  }

  if (objc_msgSend_count(v2->_invalidLayouts, v5, v6))
  {
    do
    {
      v46 = objc_msgSend_copy(v2->_invalidLayouts, v44, v45);
      v110 = 0u;
      v111 = 0u;
      v112 = 0u;
      v113 = 0u;
      v47 = v46;
      v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v110, v122, 16);
      if (v49)
      {
        v52 = v49;
        v53 = *v111;
        do
        {
          for (j = 0; j != v52; ++j)
          {
            if (*v111 != v53)
            {
              objc_enumerationMutation(v47);
            }

            objc_msgSend_i_willValidateLayout(*(*(&v110 + 1) + 8 * j), v50, v51);
          }

          v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v50, &v110, v122, 16);
        }

        while (v52);
      }

      if ((objc_msgSend_isSubsetOfSet_(v2->_invalidLayouts, v55, v47) & 1) == 0)
      {
        v58 = objc_msgSend_copy(v2->_invalidLayouts, v56, v57);
        objc_msgSend_minusSet_(v58, v59, v47);
        v61 = objc_msgSend_tsu_setByMappingObjectsUsingBlock_(v58, v60, &unk_288574A08);
        v64 = objc_msgSend_allObjects(v61, v62, v63);
        v66 = objc_msgSend_componentsJoinedByString_(v64, v65, @",");

        v67 = MEMORY[0x277D81150];
        v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, "[TSDLayoutController validateLayouts]");
        v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDLayoutController.m");
        v72 = MEMORY[0x277CCABB0];
        v75 = objc_msgSend_count(v58, v73, v74);
        v77 = objc_msgSend_numberWithUnsignedInteger_(v72, v76, v75);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v78, v69, v71, 278, 0, "a layout that was not about to be validated was invalidated as part of preparation for validation %{public}@ %{public}@, %@", v66, v77, v58);

        objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v79, v80);
        v2 = v109;
      }

      objc_msgSend_p_validateLayouts_shouldMarkValidLayoutsThatDoNotWantValidation_(v2, v56, v47, 1);
      if (objc_msgSend_intersectsSet_(v2->_invalidLayouts, v81, v47))
      {
        v84 = objc_msgSend_mutableCopy(v2->_invalidLayouts, v82, v83);
        objc_msgSend_intersectSet_(v84, v85, v47);
        v87 = objc_msgSend_tsu_setByMappingObjectsUsingBlock_(v84, v86, &unk_288574A28);
        v90 = objc_msgSend_allObjects(v87, v88, v89);
        v92 = objc_msgSend_componentsJoinedByString_(v90, v91, @",");

        v93 = MEMORY[0x277D81150];
        v95 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v94, "[TSDLayoutController validateLayouts]");
        v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v96, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDLayoutController.m");
        v98 = MEMORY[0x277CCABB0];
        v101 = objc_msgSend_count(v84, v99, v100);
        v103 = objc_msgSend_numberWithUnsignedInteger_(v98, v102, v101);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v93, v104, v95, v97, 294, 0, "one of these layouts was invalidated while validating: %{public}@ %{public}@ %@", v92, v103, v84);

        objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v105, v106);
        v2 = v109;
      }
    }

    while (objc_msgSend_count(v2->_invalidLayouts, v107, v108));
  }
}

- (id)sortLayoutsForDependencies:(id)a3
{
  v220[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!objc_msgSend_count(v3, v4, v5))
  {
    v172 = MEMORY[0x277CBEBF8];
    goto LABEL_74;
  }

  if (objc_msgSend_count(v3, v6, v7) != 1)
  {
    v12 = objc_msgSend_mutableCopy(v3, v8, v9);
    v13 = MEMORY[0x277CBEB18];
    v16 = objc_msgSend_count(v3, v14, v15);
    v172 = objc_msgSend_arrayWithCapacity_(v13, v17, v16);
    v18 = objc_alloc(MEMORY[0x277D812B8]);
    v21 = objc_msgSend_count(v3, v19, v20);
    v23 = objc_msgSend_initWithCapacity_(v18, v22, v21);
    v24 = objc_alloc(MEMORY[0x277D812B8]);
    v178 = v3;
    v27 = objc_msgSend_count(v3, v25, v26);
    v29 = objc_msgSend_initWithCapacity_(v24, v28, v27);
    v209 = 0u;
    v210 = 0u;
    v211 = 0u;
    v212 = 0u;
    v30 = v12;
    v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v209, v219, 16);
    if (v32)
    {
      v35 = v32;
      v36 = *v210;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v210 != v36)
          {
            objc_enumerationMutation(v30);
          }

          v38 = *(*(&v209 + 1) + 8 * i);
          v39 = objc_msgSend_set(MEMORY[0x277CBEB58], v33, v34);
          objc_msgSend_setObject_forUncopiedKey_(v23, v40, v39, v38);

          v43 = objc_msgSend_set(MEMORY[0x277CBEB58], v41, v42);
          objc_msgSend_setObject_forUncopiedKey_(v29, v44, v43, v38);
        }

        v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v209, v219, 16);
      }

      while (v35);
    }

    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    obj = v30;
    v179 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v45, &v205, v218, 16);
    if (v179)
    {
      v176 = *v206;
      do
      {
        for (j = 0; j != v179; ++j)
        {
          if (*v206 != v176)
          {
            objc_enumerationMutation(obj);
          }

          v49 = *(*(&v205 + 1) + 8 * j);
          v50 = MEMORY[0x277CBEB58];
          v51 = objc_msgSend_dependentLayouts(v49, v46, v47);
          v53 = objc_msgSend_setWithArray_(v50, v52, v51);

          v54 = MEMORY[0x277CBEB58];
          v57 = objc_msgSend_reliedOnLayouts(v49, v55, v56);
          v59 = objc_msgSend_setWithSet_(v54, v58, v57);

          objc_msgSend_intersectSet_(v59, v60, v178);
          objc_msgSend_intersectSet_(v53, v61, v178);
          v183 = objc_msgSend_objectForKey_(v29, v62, v49);
          objc_msgSend_unionSet_(v183, v63, v53);
          v203 = 0u;
          v204 = 0u;
          v201 = 0u;
          v202 = 0u;
          v64 = v59;
          v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v65, &v201, v217, 16);
          if (v66)
          {
            v68 = v66;
            v69 = *v202;
            do
            {
              for (k = 0; k != v68; ++k)
              {
                if (*v202 != v69)
                {
                  objc_enumerationMutation(v64);
                }

                v71 = objc_msgSend_objectForKey_(v29, v67, *(*(&v201 + 1) + 8 * k));
                objc_msgSend_addObject_(v71, v72, v49);
              }

              v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v67, &v201, v217, 16);
            }

            while (v68);
          }

          v181 = objc_msgSend_objectForKey_(v23, v73, v49);
          objc_msgSend_unionSet_(v181, v74, v64);
          v199 = 0u;
          v200 = 0u;
          v197 = 0u;
          v198 = 0u;
          v75 = v53;
          v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v76, &v197, v216, 16);
          if (v77)
          {
            v79 = v77;
            v80 = *v198;
            do
            {
              for (m = 0; m != v79; ++m)
              {
                if (*v198 != v80)
                {
                  objc_enumerationMutation(v75);
                }

                v82 = objc_msgSend_objectForKey_(v23, v78, *(*(&v197 + 1) + 8 * m));
                objc_msgSend_addObject_(v82, v83, v49);
              }

              v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v78, &v197, v216, 16);
            }

            while (v79);
          }
        }

        v179 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v46, &v205, v218, 16);
      }

      while (v179);
    }

    v86 = objc_msgSend_set(MEMORY[0x277CBEB58], v84, v85);
    v193 = 0u;
    v194 = 0u;
    v195 = 0u;
    v196 = 0u;
    v10 = obj;
    v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v87, &v193, v215, 16);
    if (v88)
    {
      v90 = v88;
      v91 = *v194;
      do
      {
        for (n = 0; n != v90; ++n)
        {
          if (*v194 != v91)
          {
            objc_enumerationMutation(v10);
          }

          v93 = *(*(&v193 + 1) + 8 * n);
          v94 = objc_msgSend_objectForKey_(v23, v89, v93);
          if (!objc_msgSend_count(v94, v95, v96))
          {
            objc_msgSend_addObject_(v86, v97, v93);
          }
        }

        v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v89, &v193, v215, 16);
      }

      while (v90);
    }

    if (!objc_msgSend_count(v10, v98, v99))
    {
LABEL_72:

      v3 = v178;
      goto LABEL_73;
    }

    v171 = v10;
    while (objc_msgSend_count(v86, v100, v101))
    {
      v104 = objc_msgSend_anyObject(v86, v102, v103);
      objc_msgSend_removeObject_(v86, v105, v104);
      objc_msgSend_removeObject_(v10, v106, v104);
      objc_msgSend_addObject_(v172, v107, v104);
      v187 = 0u;
      v188 = 0u;
      v185 = 0u;
      v186 = 0u;
      v109 = objc_msgSend_objectForKey_(v29, v108, v104);
      v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(v109, v110, &v185, v213, 16);
      if (v111)
      {
        v113 = v111;
        v114 = *v186;
        do
        {
          for (ii = 0; ii != v113; ++ii)
          {
            if (*v186 != v114)
            {
              objc_enumerationMutation(v109);
            }

            v116 = *(*(&v185 + 1) + 8 * ii);
            v117 = objc_msgSend_objectForKey_(v23, v112, v116);
            if (objc_msgSend_count(v117, v118, v119) == 1)
            {
              objc_msgSend_addObject_(v86, v120, v116);
            }

            else
            {
              objc_msgSend_removeObject_(v117, v120, v104);
            }
          }

          v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(v109, v112, &v185, v213, 16);
        }

        while (v113);
      }

      v10 = v171;
      if (!objc_msgSend_count(v171, v121, v122))
      {
        goto LABEL_72;
      }
    }

    v123 = objc_msgSend_string(MEMORY[0x277CCAB68], v102, v103);
    v189 = 0u;
    v190 = 0u;
    v191 = 0u;
    v192 = 0u;
    v124 = v10;
    v184 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v125, &v189, v214, 16);
    if (!v184)
    {
      goto LABEL_71;
    }

    v128 = 0;
    v182 = *v190;
    v177 = v123;
    v173 = v86;
LABEL_59:
    v129 = 0;
    obja = v128;
    v130 = (v128 + 1);
    while (1)
    {
      if (*v190 != v182)
      {
        objc_enumerationMutation(v124);
      }

      v131 = *(*(&v189 + 1) + 8 * v129);
      v132 = objc_msgSend_info(v131, v126, v127);
      v135 = objc_msgSend_geometry(v132, v133, v134);
      if ((objc_msgSend_widthValid(v135, v136, v137) & 1) == 0)
      {
        break;
      }

      v140 = objc_msgSend_info(v131, v138, v139);
      objc_msgSend_geometry(v140, v141, v142);
      v144 = v143 = v124;
      v180 = objc_msgSend_heightValid(v144, v145, v146);

      v124 = v143;
      v86 = v173;

      v123 = v177;
      if ((v180 & 1) == 0)
      {
        goto LABEL_66;
      }

      v147 = objc_opt_class();
      v148 = NSStringFromClass(v147);
      objc_msgSend_appendString_(v177, v149, v148);
LABEL_67:

      if (v130 < objc_msgSend_count(v124, v152, v153))
      {
        objc_msgSend_appendString_(v123, v126, @", ");
      }

      ++v129;
      ++v130;
      if (v184 == v129)
      {
        v128 = &obja[v184];
        v184 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v126, &v189, v214, 16);
        if (!v184)
        {
LABEL_71:

          v154 = v123;
          v155 = MEMORY[0x277D81150];
          v157 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v156, "[TSDLayoutController sortLayoutsForDependencies:]");
          v159 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v158, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDLayoutController.m");
          v162 = objc_msgSend_count(v124, v160, v161);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v155, v163, v157, v159, 373, 0, "Layout dependency loop. %lu total. %{public}@", v162, v154);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v164, v165);
          v168 = objc_msgSend_allObjects(v124, v166, v167);
          objc_msgSend_addObjectsFromArray_(v172, v169, v168);

          v10 = v171;
          goto LABEL_72;
        }

        goto LABEL_59;
      }
    }

LABEL_66:
    v150 = objc_opt_class();
    v148 = NSStringFromClass(v150);
    objc_msgSend_appendFormat_(v123, v151, @"autosizing %@", v148);
    goto LABEL_67;
  }

  v10 = objc_msgSend_anyObject(v3, v8, v9);
  v220[0] = v10;
  v172 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v220, 1);
LABEL_73:

LABEL_74:

  return v172;
}

- (void)p_validateLayouts:(id)a3 shouldMarkValidLayoutsThatDoNotWantValidation:(BOOL)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_sortLayoutsForDependencies_(self, a2, a3);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v20, v24, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if (objc_msgSend_shouldValidate(v14, v9, v10))
        {
          objc_storeStrong(&self->_validatingLayout, v14);
          objc_msgSend_validate(v14, v15, v16);
          validatingLayout = self->_validatingLayout;
          self->_validatingLayout = 0;

          objc_msgSend_i_didValidateLayout(v14, v18, v19);
        }

        else if (!a4)
        {
          continue;
        }

        objc_msgSend_removeObject_(self->_invalidLayouts, v9, v14);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v20, v24, 16);
    }

    while (v11);
  }
}

- (void)validateLayoutsWithDependencies:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_msgSend_p_recreateLayoutsIfNeededToValidateLayouts_(self, v5, v4);
  v51 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v4;
  v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v57, v62, 16);
  if (v52)
  {
    v50 = *v58;
    do
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v58 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v57 + 1) + 8 * i);
        v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
        do
        {
          objc_msgSend_removeAllObjects(v11, v9, v10);
          objc_msgSend_recursivelyAddLayoutAndChildrenToSet_(v8, v12, v11);
          if (!objc_msgSend_count(self->_invalidChildrenLayouts, v13, v14))
          {
            break;
          }

          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v15 = v11;
          v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v53, v61, 16);
          if (!v17)
          {

            break;
          }

          v19 = v17;
          v20 = 0;
          v21 = *v54;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v54 != v21)
              {
                objc_enumerationMutation(v15);
              }

              v23 = *(*(&v53 + 1) + 8 * j);
              if (objc_msgSend_containsObject_(self->_invalidChildrenLayouts, v18, v23))
              {
                objc_msgSend_updateChildrenFromInfo(v23, v18, v24);
                objc_msgSend_removeObject_(self->_invalidChildrenLayouts, v25, v23);
                objc_msgSend_addObject_(self->_invalidLayouts, v26, v23);
                v20 = 1;
              }
            }

            v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v53, v61, 16);
          }

          while (v19);
        }

        while ((v20 & 1) != 0);
        v27 = objc_msgSend_rootLayout(v8, v9, v10);
        v30 = objc_msgSend_rootLayout(self, v28, v29);

        if (v27 == v30)
        {
          objc_msgSend_intersectSet_(v11, v31, self->_invalidLayouts);
        }

        objc_msgSend_unionSet_(v51, v31, v11);
      }

      v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v57, v62, 16);
    }

    while (v52);
  }

  objc_msgSend_p_validateLayouts_shouldMarkValidLayoutsThatDoNotWantValidation_(self, v33, v51, 0);
  WeakRetained = objc_loadWeakRetained(&self->_canvas);
  v37 = objc_msgSend_delegate(WeakRetained, v35, v36);
  if (!v37)
  {
    goto LABEL_27;
  }

  v38 = v37;
  v39 = objc_loadWeakRetained(&self->_canvas);
  v42 = objc_msgSend_delegate(v39, v40, v41);
  v43 = objc_opt_respondsToSelector();

  if (v43)
  {
    WeakRetained = objc_loadWeakRetained(&self->_canvas);
    v46 = objc_msgSend_delegate(WeakRetained, v44, v45);
    v47 = objc_loadWeakRetained(&self->_canvas);
    objc_msgSend_canvasDidValidateLayoutsWithDependencies_(v46, v48, v47);

LABEL_27:
  }
}

- (void)validateLayoutWithDependencies:(id)a3
{
  v5 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], a2, a3);
  objc_msgSend_validateLayoutsWithDependencies_(self, v4, v5);
}

- (id)validatedLayoutForInfo:(id)a3
{
  v3 = objc_msgSend_validatedLayoutsForInfo_(self, a2, a3);
  v6 = objc_msgSend_anyObject(v3, v4, v5);

  return v6;
}

- (id)validatedLayoutsForInfo:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v8 = objc_msgSend_layoutsForInfo_(self, v5, v4);
  if (!v8)
  {
    v9 = objc_alloc(objc_msgSend_layoutClass(v4, v6, v7));
    v12 = objc_msgSend_initWithInfo_(v9, v10, v4);
    if (v12)
    {
      v8 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v11, v12);
      objc_msgSend_addChild_(self->_rootLayout, v13, v12);
      objc_msgSend_addObject_(self->_invalidChildrenLayouts, v14, v12);
      objc_msgSend_addObject_(self->_invalidLayouts, v15, v12);
    }

    else
    {
      v8 = 0;
    }
  }

  if (objc_msgSend_count(v8, v6, v7) && objc_msgSend_intersectsSet_(self->_invalidChildrenLayouts, v16, v8))
  {
    objc_msgSend_makeObjectsPerformSelector_(v8, v16, sel_updateChildrenFromInfo);
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v18 = v8;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v38, v43, 16);
    if (v20)
    {
      v22 = v20;
      v23 = *v39;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v39 != v23)
          {
            objc_enumerationMutation(v18);
          }

          objc_msgSend_removeObject_(self->_invalidChildrenLayouts, v21, *(*(&v38 + 1) + 8 * i));
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v38, v43, 16);
      }

      while (v22);
    }
  }

  if (objc_msgSend_count(v8, v16, v17) && objc_msgSend_intersectsSet_(self->_invalidLayouts, v25, v8))
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v26 = v8;
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v34, v42, 16);
    if (v28)
    {
      v30 = v28;
      v31 = *v35;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v35 != v31)
          {
            objc_enumerationMutation(v26);
          }

          objc_msgSend_validateLayoutWithDependencies_(self, v29, *(*(&v34 + 1) + 8 * j), v34);
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v34, v42, 16);
      }

      while (v30);
    }
  }

  return v8;
}

- (id)validatedLayoutForInfo:(id)a3 childOfLayout:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  objc_msgSend_validatedLayoutsForInfo_(self, v7, a3);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v21 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v18, v22, 16);
  if (v12)
  {
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = objc_msgSend_parent(v15, v10, v11, v18);

        if (v16 == v6)
        {
          v12 = v15;
          goto LABEL_11;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v18, v22, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v12;
}

- (void)notifyThatLayoutsChangedOutsideOfLayout
{
  if (objc_msgSend_isMainThread(MEMORY[0x277CCACC8], a2, v2))
  {
    v9 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v4, v5);
    objc_msgSend_postNotificationName_object_(v9, v6, @"TSDLayoutsChangedForCanvasNotification", self);
  }

  else
  {
    Main = CFRunLoopGetMain();
    v8 = *MEMORY[0x277CBF048];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276661694;
    block[3] = &unk_27A6CC658;
    block[4] = self;
    CFRunLoopPerformBlock(Main, v8, block);
    CFRunLoopWakeUp(Main);
  }
}

- (void)i_registerLayout:(id)a3
{
  v16 = a3;
  objc_msgSend_willBeAddedToLayoutController_(v16, v4, self);
  if (v16 && self->_layoutsByInfo)
  {
    v8 = objc_msgSend_info(v16, v5, v6);
    if (v8)
    {
      v11 = objc_msgSend_objectForKey_(self->_layoutsByInfo, v7, v8);
      if (!v11)
      {
        v11 = objc_msgSend_set(MEMORY[0x277CBEB58], v9, v10);
        objc_msgSend_setObject_forKey_(self->_layoutsByInfo, v12, v11, v8);
      }

      objc_msgSend_addObject_(v11, v9, v16);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_canvas);
  objc_msgSend_layoutInvalidated(WeakRetained, v14, v15);
}

- (void)i_unregisterLayout:(id)a3
{
  v20 = a3;
  objc_msgSend_willBeRemovedFromLayoutController_(v20, v4, self);
  if (v20 && self->_layoutsByInfo)
  {
    v8 = objc_msgSend_info(v20, v5, v6);
    if (v8)
    {
      v9 = objc_msgSend_objectForKey_(self->_layoutsByInfo, v7, v8);
      v11 = v9;
      if (v9)
      {
        objc_msgSend_removeObject_(v9, v10, v20);
        if (!objc_msgSend_count(v11, v12, v13))
        {
          objc_msgSend_removeObjectForKey_(self->_layoutsByInfo, v14, v8);
        }
      }
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_canvas);
  objc_msgSend_layoutInvalidated(WeakRetained, v16, v17);

  objc_msgSend_removeObject_(self->_invalidLayouts, v18, v20);
  objc_msgSend_removeObject_(self->_invalidChildrenLayouts, v19, v20);
}

- (void)i_removeAllLayouts
{
  objc_msgSend_setChildren_(self->_rootLayout, a2, MEMORY[0x277CBEBF8]);
  objc_msgSend_removeAllObjects(self->_layoutsByInfo, v3, v4);
  objc_msgSend_removeAllObjects(self->_invalidLayouts, v5, v6);
  invalidChildrenLayouts = self->_invalidChildrenLayouts;

  objc_msgSend_removeAllObjects(invalidChildrenLayouts, v7, v8);
}

- (void)i_enumerateLayoutsUsingBlock:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = objc_msgSend_objectEnumerator(self->_layoutsByInfo, v5, v6);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v18, v22, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = sub_276661A80;
        v16[3] = &unk_27A6CC680;
        v17 = v4;
        objc_msgSend_enumerateObjectsUsingBlock_(v13, v14, v16);

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v15, &v18, v22, 16);
    }

    while (v10);
  }
}

- (void)p_recreateLayoutsIfNeededToValidateLayouts:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_msgSend_count(self->_layoutsNeedingRecreating, v5, v6))
  {
    if (objc_msgSend_intersectsSet_(v4, v7, self->_layoutsNeedingRecreating))
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSDLayoutController p_recreateLayoutsIfNeededToValidateLayouts:]");
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDLayoutController.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 613, 0, "Shouldn't be validating layouts that need recreating");

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v14, v15);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v16 = self->_layoutsNeedingRecreating;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v43, v47, 16);
    if (v18)
    {
      v21 = v18;
      v22 = *v44;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v44 != v22)
          {
            objc_enumerationMutation(v16);
          }

          v24 = *(*(&v43 + 1) + 8 * i);
          v25 = objc_msgSend_info(v24, v19, v20, v43);
          v28 = objc_alloc(objc_msgSend_layoutClass(v25, v26, v27));
          v31 = objc_msgSend_info(v24, v29, v30);
          v33 = objc_msgSend_initWithInfo_(v28, v32, v31);

          objc_msgSend_removeObject_(self->_invalidLayouts, v34, v24);
          objc_msgSend_addObject_(self->_invalidLayouts, v35, v33);
          v38 = objc_msgSend_parent(v24, v36, v37);
          objc_msgSend_replaceChild_with_(v38, v39, v24, v33);

          objc_msgSend_invalidateChildrenOfLayout_(self, v40, v33);
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v43, v47, 16);
      }

      while (v21);
    }

    objc_msgSend_removeAllObjects(self->_layoutsNeedingRecreating, v41, v42);
  }
}

- (TSDCanvas)canvas
{
  WeakRetained = objc_loadWeakRetained(&self->_canvas);

  return WeakRetained;
}

@end