@interface VFXPrefabUpdater
- (id)_findAssociatedNode:(id)a3 inSubtree:(id)a4 ignoring:(id)a5;
- (id)_findChild:(id)a3 inChildrenOf:(id)a4 index:(unint64_t)a5;
- (id)diffOld:(id)a3 withNew:(id)a4 options:(unint64_t)a5;
- (void)_associate:(id)a3 with:(id)a4;
- (void)_syncNode:(id)a3 with:(id)a4;
- (void)addOperation:(int64_t)a3 src:(id)a4 dst:(id)a5;
- (void)applyDiff:(id)a3;
- (void)associateNodeTree:(id)a3 withNodeTree:(id)a4 root:(id)a5;
- (void)collectOrphanNodes:(id)a3 dst:(id)a4;
- (void)updatePrefab:(id)a3 withNewPrefab:(id)a4 options:(unint64_t)a5;
@end

@implementation VFXPrefabUpdater

- (void)_associate:(id)a3 with:(id)a4
{
  CFDictionarySetValue(self->_srcToDst, a3, a4);
  dstToSrc = self->_dstToSrc;

  CFDictionarySetValue(dstToSrc, a4, a3);
}

- (void)addOperation:(int64_t)a3 src:(id)a4 dst:(id)a5
{
  v17 = objc_alloc_init(VFXPrefabUpdateOperation);
  objc_msgSend_setSource_(v17, v9, a4, v10);
  objc_msgSend_setDestination_(v17, v11, a5, v12);
  objc_msgSend_setOperation_(v17, v13, a3, v14);
  objc_msgSend_addObject_(self->_operations, v15, v17, v16);
}

- (void)_syncNode:(id)a3 with:(id)a4
{
  if ((self->_importOptions & 2) != 0 && self->_rootSrc != a4 && self->_rootDst != a3)
  {
    objc_msgSend_transform(a4, a2, a3, a4);
    v37 = v8;
    v38 = v7;
    v39 = v10;
    v40 = v9;
    objc_msgSend_transform(a3, v11, v12, v13);
    if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v38, v14), vceqq_f32(v37, v15)), vandq_s8(vceqq_f32(v40, v16), vceqq_f32(v39, v17)))) & 0x80000000) == 0)
    {
      objc_msgSend_addOperation_src_dst_(self, a2, 2, a4, a3);
    }
  }

  if ((self->_importOptions & 0x20) != 0 && (objc_msgSend_camera(a4, a2, a3, a4) || objc_msgSend_camera(a3, a2, v18, v19)))
  {
    objc_msgSend_addOperation_src_dst_(self, a2, 5, a4, a3);
  }

  if ((self->_importOptions & 4) != 0 && (objc_msgSend_model(a4, a2, a3, a4) || objc_msgSend_model(a3, a2, v20, v21)))
  {
    objc_msgSend_addOperation_src_dst_(self, a2, 3, a4, a3);
  }

  if ((self->_importOptions & 0x10) != 0 && (objc_msgSend_light(a4, a2, a3, a4) || objc_msgSend_light(a3, a2, v22, v23)))
  {
    objc_msgSend_addOperation_src_dst_(self, a2, 4, a4, a3);
  }

  if ((self->_importOptions & 8) != 0)
  {
    v24 = objc_msgSend_animationKeys(a4, a2, a3, a4);
    if (objc_msgSend_count(v24, v25, v26, v27) || (v30 = objc_msgSend_animationKeys(a3, a2, v28, v29), objc_msgSend_count(v30, v31, v32, v33)))
    {
      objc_msgSend_addOperation_src_dst_(self, a2, 7, a4, a3);
    }
  }

  if ((self->_importOptions & 0x40) != 0 && (objc_msgSend_model(a4, a2, a3, a4) || objc_msgSend_model(a3, v34, v35, v36)))
  {

    objc_msgSend_addOperation_src_dst_(self, v34, 6, a4, a3);
  }
}

- (id)_findAssociatedNode:(id)a3 inSubtree:(id)a4 ignoring:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  if (a4 == a5)
  {
    return 0;
  }

  v6 = a4;
  v9 = objc_msgSend_name(a4, a2, a3, a4);
  v13 = objc_msgSend_name(a3, v10, v11, v12);
  if (objc_msgSend_isEqualToString_(v9, v14, v13, v15) && !objc_msgSend__dstHasAssociatedNode_(self, v16, v6, v18))
  {
    return v6;
  }

  if (!objc_msgSend_name(a3, v16, v17, v18))
  {
    return 0;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v22 = objc_msgSend_childNodes(v6, v19, v20, v21, 0);
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v31, v35, 16);
  if (!v24)
  {
    return 0;
  }

  v26 = v24;
  v27 = *v32;
  while (2)
  {
    for (i = 0; i != v26; ++i)
    {
      if (*v32 != v27)
      {
        objc_enumerationMutation(v22);
      }

      AssociatedNode_inSubtree_ignoring = objc_msgSend__findAssociatedNode_inSubtree_ignoring_(self, v25, a3, *(*(&v31 + 1) + 8 * i), a5);
      if (AssociatedNode_inSubtree_ignoring)
      {
        return AssociatedNode_inSubtree_ignoring;
      }
    }

    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v31, v35, 16);
    v6 = 0;
    if (v26)
    {
      continue;
    }

    break;
  }

  return v6;
}

- (id)_findChild:(id)a3 inChildrenOf:(id)a4 index:(unint64_t)a5
{
  v7 = objc_msgSend_name(a3, a2, a3, a4);
  result = objc_msgSend_childNodeWithName_(a4, v8, v7, v9);
  if (!result)
  {
    v14 = objc_msgSend_childNodes(a4, v11, v12, v13);
    if (objc_msgSend_count(v14, v15, v16, v17) <= a5)
    {
      return 0;
    }

    else
    {
      v21 = objc_msgSend_childNodes(a4, v18, v19, v20);

      return objc_msgSend_objectAtIndexedSubscript_(v21, v22, a5, v23);
    }
  }

  return result;
}

- (void)associateNodeTree:(id)a3 withNodeTree:(id)a4 root:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  if (objc_msgSend__srcAssociatedNode_(self, a2, a3, a4))
  {
    v12 = 0;
  }

  else if (objc_msgSend_name(a3, v9, v10, v11) || objc_msgSend_name(a4, v13, v14, v15) || (objc_msgSend__dstHasAssociatedNode_(self, v13, a4, v16) & 1) != 0)
  {
    AssociatedNode_inSubtree_ignoring = objc_msgSend__findAssociatedNode_inSubtree_ignoring_(self, v13, a3, a4, 0);
    if (AssociatedNode_inSubtree_ignoring)
    {
      v12 = AssociatedNode_inSubtree_ignoring;
      objc_msgSend__associate_with_(self, v18, a3, AssociatedNode_inSubtree_ignoring);
    }

    else
    {
      v12 = objc_msgSend__findAssociatedNode_inSubtree_ignoring_(self, v18, a3, a5, a4);
      if (v12)
      {
        objc_msgSend__associate_with_(self, v9, a3, v12);
      }
    }
  }

  else
  {
    objc_msgSend__associate_with_(self, v13, a3, a4);
    v12 = a4;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = objc_msgSend_childNodes(a3, v9, v10, v11, 0);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v30, v34, 16);
  if (v21)
  {
    v23 = v21;
    v24 = 0;
    v25 = *v31;
    if (!v12)
    {
      v12 = a4;
    }

    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(v19);
        }

        v27 = *(*(&v30 + 1) + 8 * i);
        Child_inChildrenOf_index = objc_msgSend__findChild_inChildrenOf_index_(self, v22, v27, v12, v24);
        if (Child_inChildrenOf_index)
        {
          objc_msgSend_associateNodeTree_withNodeTree_root_(self, v29, v27, Child_inChildrenOf_index, a5);
        }

        else
        {
          objc_msgSend_associateNodeTree_withNodeTree_root_(self, v29, v27, a4, a5);
        }

        ++v24;
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v30, v34, 16);
    }

    while (v23);
  }
}

- (void)collectOrphanNodes:(id)a3 dst:(id)a4
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1AF316A50;
  v9[3] = &unk_1E7A79810;
  v9[4] = self;
  objc_msgSend_enumerateHierarchyUsingBlock_(a3, a2, v9, a4);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF316AC8;
  v8[3] = &unk_1E7A79810;
  v8[4] = self;
  objc_msgSend_enumerateHierarchyUsingBlock_(a4, v6, v8, v7);
}

- (id)diffOld:(id)a3 withNew:(id)a4 options:(unint64_t)a5
{
  v5 = a5;
  self->_importOptions = (a5 >> 4) & 4 | a5;
  self->_rootSrc = a4;
  self->_rootDst = a3;
  self->_operations = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3, a4);
  self->_srcToDst = CFDictionaryCreateMutable(0, 0, 0, 0);
  self->_dstToSrc = CFDictionaryCreateMutable(0, 0, 0, 0);
  objc_msgSend__associate_with_(self, v9, a4, a3);
  objc_msgSend_associateNodeTree_withNodeTree_root_(self, v10, a4, a3, a3);
  CFDictionaryApplyFunction(self->_srcToDst, sub_1AF316C28, self);
  if (v5)
  {
    objc_msgSend_collectOrphanNodes_dst_(self, v11, a4, a3);
  }

  CFRelease(self->_srcToDst);
  CFRelease(self->_dstToSrc);
  self->_srcToDst = 0;
  self->_dstToSrc = 0;
  return self->_operations;
}

- (void)applyDiff:(id)a3
{
  v90 = *MEMORY[0x1E69E9840];
  NSLog(&cfstr_Diff.isa, a2);
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = a3;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v4, &v84, v89, 16);
  if (v5)
  {
    v9 = v5;
    v10 = *v85;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v85 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v84 + 1) + 8 * i);
        v13 = objc_msgSend_operation(v12, v6, v7, v8);
        v17 = objc_msgSend_source(v12, v14, v15, v16);
        v21 = objc_msgSend_destination(v12, v18, v19, v20);
        NSLog(&cfstr_D_5.isa, v13, v17, v21);
        v25 = objc_msgSend_destination(v12, v22, v23, v24);
        v29 = objc_msgSend_source(v12, v26, v27, v28);
        v33 = objc_msgSend_operation(v12, v30, v31, v32);
        if (v33 > 3)
        {
          if (v33 > 5)
          {
            if (v33 == 6)
            {
              v72 = objc_msgSend_model(v29, v6, v7, v8);
              v41 = objc_msgSend_materials(v72, v73, v74, v75);
LABEL_33:
              v76 = objc_msgSend_model(v25, v6, v7, v8);
              objc_msgSend_setMaterials_(v76, v77, v41, v78);
              continue;
            }

            if (v33 == 7)
            {
              objc_msgSend_removeAllAnimations(v25, v6, v7, v8);
              v82 = 0u;
              v83 = 0u;
              v80 = 0u;
              v81 = 0u;
              v51 = objc_msgSend_source(v12, v48, v49, v50);
              v55 = objc_msgSend_animationKeys(v51, v52, v53, v54);
              v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v80, v88, 16);
              if (v57)
              {
                v58 = v57;
                v59 = *v81;
                do
                {
                  for (j = 0; j != v58; ++j)
                  {
                    if (*v81 != v59)
                    {
                      objc_enumerationMutation(v55);
                    }

                    v61 = *(*(&v80 + 1) + 8 * j);
                    v62 = objc_msgSend_source(v12, v6, v7, v8);
                    v65 = objc_msgSend_animationPlayerForKey_(v62, v63, v61, v64);
                    if (v65)
                    {
                      objc_msgSend_addAnimationPlayer_forKey_(v25, v6, v65, v61);
                    }
                  }

                  v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v6, &v80, v88, 16);
                }

                while (v58);
              }
            }
          }

          else if (v33 == 4)
          {
            v66 = objc_msgSend_light(v29, v6, v7, v8);
            objc_msgSend_setLight_(v25, v67, v66, v68);
          }

          else
          {
            v34 = objc_msgSend_camera(v29, v6, v7, v8);
            objc_msgSend_setCamera_(v25, v35, v34, v36);
          }
        }

        else if (v33 > 1)
        {
          if (v33 == 2)
          {
            objc_msgSend_transform(v29, v6, v7, v8);
            objc_msgSend_setTransform_(v25, v69, v70, v71);
            continue;
          }

          v37 = objc_msgSend_model(v25, v6, v7, v8);
          v41 = objc_msgSend_materials(v37, v38, v39, v40);
          v45 = objc_msgSend_model(v29, v42, v43, v44);
          objc_msgSend_setModel_(v25, v46, v45, v47);
          if (v41)
          {
            goto LABEL_33;
          }
        }

        else if (v33)
        {
          if (v33 == 1)
          {
            objc_msgSend_removeFromParentNode(v25, v6, v7, v8);
          }
        }

        else
        {
          objc_msgSend_addChildNode_(v25, v6, v29, v8);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v84, v89, 16);
    }

    while (v9);
  }
}

- (void)updatePrefab:(id)a3 withNewPrefab:(id)a4 options:(unint64_t)a5
{
  v6 = objc_msgSend_diffOld_withNew_options_(self, a2, a3, a4, a5);

  MEMORY[0x1EEE66B58](self, sel_applyDiff_, v6, v7);
}

@end