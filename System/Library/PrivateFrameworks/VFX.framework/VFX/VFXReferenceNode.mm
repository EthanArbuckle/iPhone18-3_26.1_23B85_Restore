@interface VFXReferenceNode
- (BOOL)_isNameUnique:(id)unique;
- (BOOL)isVirtualEnvironmentNode;
- (VFXReferenceNode)initWithCoder:(id)coder;
- (VFXReferenceNode)initWithNode:(id)node;
- (VFXReferenceNode)initWithURL:(id)l;
- (id)_loadReferencedWorldWithURL:(id)l;
- (id)_resolveURL;
- (id)description;
- (id)overrides;
- (void)_applyOverrides;
- (void)_applyUnsharing:(id)unsharing alreadyShared:(id)shared;
- (void)_copyWithOptions:(unint64_t)options to:(id)to copyContext:(id)context;
- (void)_diffNode:(id)node with:(id)with path:(id)path;
- (void)_diffObject:(id)object with:(id)with path:(id)path;
- (void)_loadWithNode:(id)node fromURL:(BOOL)l;
- (void)_loadWithURL:(id)l;
- (void)addOverride:(id)override forKeyPath:(id)path;
- (void)collectOverrides;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)load;
- (void)removeAllOverrides;
- (void)removeForKeyPath:(id)path;
- (void)setOverrides:(id)overrides;
- (void)setReferenceURL:(id)l;
- (void)setReferencedNode:(id)node;
- (void)unload;
@end

@implementation VFXReferenceNode

- (VFXReferenceNode)initWithURL:(id)l
{
  v9.receiver = self;
  v9.super_class = VFXReferenceNode;
  v4 = [(VFXNode *)&v9 init];
  v7 = v4;
  if (v4)
  {
    objc_msgSend_setReferenceURL_(v4, v5, l, v6);
  }

  return v7;
}

- (VFXReferenceNode)initWithNode:(id)node
{
  v9.receiver = self;
  v9.super_class = VFXReferenceNode;
  v4 = [(VFXNode *)&v9 init];
  v7 = v4;
  if (v4)
  {
    objc_msgSend_setReferencedNode_(v4, v5, node, v6);
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXReferenceNode;
  [(VFXNode *)&v3 dealloc];
}

- (void)_diffObject:(id)object with:(id)with path:(id)path
{
  pathCopy = path;
  v82 = *MEMORY[0x1E69E9840];
  if (qword_1EB658CC0 != -1)
  {
    sub_1AFDF7A7C();
  }

  v5 = objc_opt_class();
  outCount = 0;
  v6 = class_copyPropertyList(v5, &outCount);
  v10 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v12 = v6[i];
      Attributes = property_getAttributes(v12);
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v14, Attributes, v15);
      v19 = objc_msgSend_componentsSeparatedByString_(v16, v17, @",", v18);
      v22 = objc_msgSend_objectAtIndex_(v19, v20, 0, v21);
      v25 = objc_msgSend_substringFromIndex_(v22, v23, 1, v24);
      v29 = objc_msgSend_UTF8String(v25, v26, v27, v28);
      if (strcmp(v29, "{CATransform3D=dddddddddddddddd}"))
      {
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v30, Attributes, v31);
        objc_msgSend_rangeOfString_(v32, v33, @",R,", v34);
        if (v35 != 3)
        {
          v36 = MEMORY[0x1E696AEC0];
          Name = property_getName(v12);
          v40 = objc_msgSend_stringWithUTF8String_(v36, v38, Name, v39);
          objc_msgSend_addObject_(v10, v41, v40, v42);
        }
      }
    }
  }

  free(v6);
  objc_msgSend_willChangeValueForKey_(self, v43, @"overrides", v44);
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v45, &v76, v81, 16);
  if (v48)
  {
    v49 = *v77;
    do
    {
      for (j = 0; j != v48; ++j)
      {
        if (*v77 != v49)
        {
          objc_enumerationMutation(v10);
        }

        v51 = *(*(&v76 + 1) + 8 * j);
        if ((objc_msgSend_containsObject_(qword_1EB658CB8, v46, v51, v47, pathCopy) & 1) == 0 && (objc_msgSend_hasPrefix_(v51, v46, @"_", v47) & 1) == 0 && (objc_msgSend_hasPrefix_(v51, v46, @"world", v47) & 1) == 0)
        {
          v52 = objc_msgSend_valueForKey_(object, v46, v51, v47);
          v55 = objc_msgSend_valueForKey_(with, v53, v51, v54);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              PathComponent = objc_msgSend_lastPathComponent(v52, v56, v57, v58);
              v63 = objc_msgSend_lastPathComponent(v55, v60, v61, v62);
              isEqual = objc_msgSend_isEqual_(PathComponent, v64, v63, v65);
            }

            else
            {
              isEqual = objc_msgSend_isEqual_(v52, v56, v55, v58);
            }

            if ((isEqual & 1) == 0)
            {
              v67 = objc_msgSend_stringByAppendingString_(pathCopy, v46, @".", v47);
              v70 = objc_msgSend_stringByAppendingString_(v67, v68, v51, v69);
              objc_msgSend_addOverride_forKeyPath_(self, v71, v52, v70);
            }
          }
        }
      }

      v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v46, &v76, v81, 16);
    }

    while (v48);
  }

  objc_msgSend_didChangeValueForKey_(self, v46, @"overrides", v47, pathCopy);
}

- (BOOL)_isNameUnique:(id)unique
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF319728;
  v6[3] = &unk_1E7A7EDE8;
  v6[4] = unique;
  v6[5] = &v7;
  objc_msgSend_enumerateHierarchyUsingBlock_(self, a2, v6, v3);
  v4 = *(v8 + 6) == 1;
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)_diffNode:(id)node with:(id)with path:(id)path
{
  if (objc_msgSend_name(node, a2, node, with))
  {
    v12 = objc_msgSend_name(node, v9, v10, v11);
    if ((objc_msgSend_containsString_(v12, v13, @".", v14) & 1) == 0)
    {
      v17 = objc_msgSend_name(node, v9, v15, v16);
      if (objc_msgSend__isNameUnique_(self, v18, v17, v19))
      {
        v22 = objc_msgSend_name(node, v9, v20, v21);
        path = objc_msgSend_stringByAppendingString_(@"/", v23, v22, v24);
      }
    }
  }

  withCopy = with;
  objc_msgSend__diffObject_with_path_(self, v9, node, with, path);
  nodeCopy = node;
  if (objc_msgSend_model(node, v25, v26, v27) && objc_msgSend_model(with, v28, v29, v30))
  {
    v31 = objc_msgSend_model(node, v28, v29, v30);
    v35 = objc_msgSend_model(withCopy, v32, v33, v34);
    v38 = objc_msgSend_stringByAppendingString_(path, v36, @".", v37);
    v41 = objc_msgSend_stringByAppendingString_(v38, v39, @"model", v40);
    objc_msgSend__diffObject_with_path_(self, v42, v31, v35, v41);
    v46 = objc_msgSend_model(node, v43, v44, v45);
    v50 = objc_msgSend_materials(v46, v47, v48, v49);
    v54 = objc_msgSend_count(v50, v51, v52, v53);
    v58 = objc_msgSend_model(withCopy, v55, v56, v57);
    v62 = objc_msgSend_materials(v58, v59, v60, v61);
    if (v54 == objc_msgSend_count(v62, v63, v64, v65))
    {
      v69 = objc_msgSend_model(node, v66, v67, v68);
      v175 = objc_msgSend_materials(v69, v70, v71, v72);
      v76 = objc_msgSend_model(withCopy, v73, v74, v75);
      v174 = objc_msgSend_materials(v76, v77, v78, v79);
      if (v54)
      {
        v80 = 0;
        v172 = v54;
        pathCopy = path;
        do
        {
          v81 = objc_msgSend_objectAtIndexedSubscript_(v175, v28, v80, v30);
          v84 = objc_msgSend_objectAtIndexedSubscript_(v174, v82, v80, v83);
          v176 = v80;
          v87 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v85, @"model.materials[%d]", v86, v80);
          v90 = objc_msgSend_stringByAppendingString_(path, v88, @".", v89);
          v93 = objc_msgSend_stringByAppendingString_(v90, v91, v87, v92);
          objc_msgSend__diffObject_with_path_(self, v94, v81, v84, v93);
          v98 = objc_msgSend_properties(v81, v95, v96, v97);
          v102 = objc_msgSend_properties(v84, v99, v100, v101);
          v106 = objc_msgSend_count(v98, v103, v104, v105);
          if (objc_msgSend_count(v102, v107, v108, v109) == v106)
          {
            if (v106)
            {
              for (i = 0; i != v106; ++i)
              {
                v111 = objc_msgSend_objectAtIndexedSubscript_(v98, v28, i, v30);
                v114 = objc_msgSend_objectAtIndexedSubscript_(v102, v112, i, v113);
                v117 = objc_msgSend_objectAtIndexedSubscript_(v98, v115, i, v116);
                selfCopy = self;
                v122 = objc_msgSend_materialPropertyName(v117, v118, v119, v120);
                v125 = objc_msgSend_stringByAppendingString_(v93, v123, @".", v124);
                v126 = v122;
                self = selfCopy;
                v129 = objc_msgSend_stringByAppendingString_(v125, v127, v126, v128);
                objc_msgSend__diffObject_with_path_(selfCopy, v130, v111, v114, v129);
              }
            }
          }

          else
          {
            v131 = sub_1AF0D5194();
            if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDF7AD0(&buf, v178, v131);
            }
          }

          v80 = v176 + 1;
          path = pathCopy;
        }

        while (v176 + 1 != v172);
      }
    }

    else
    {
      v132 = sub_1AF0D5194();
      if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF7A90();
      }
    }
  }

  v133 = objc_msgSend_childNodes(nodeCopy, v28, v29, v30);
  v137 = objc_msgSend_count(v133, v134, v135, v136);
  v141 = objc_msgSend_childNodes(withCopy, v138, v139, v140);
  if (v137 == objc_msgSend_count(v141, v142, v143, v144))
  {
    if (v137)
    {
      for (j = 0; j != v137; ++j)
      {
        v148 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v145, @"[%d]", v146, j);
        v151 = objc_msgSend_stringByAppendingString_(path, v149, @".", v150);
        path = objc_msgSend_stringByAppendingString_(v151, v152, v148, v153);
        v157 = objc_msgSend_childNodes(nodeCopy, v154, v155, v156);
        v160 = objc_msgSend_objectAtIndexedSubscript_(v157, v158, j, v159);
        v164 = objc_msgSend_childNodes(withCopy, v161, v162, v163);
        v167 = objc_msgSend_objectAtIndexedSubscript_(v164, v165, j, v166);
        objc_msgSend__diffNode_with_path_(self, v168, v160, v167, path);
      }
    }
  }

  else
  {
    v169 = sub_1AF0D5194();
    if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF7B10();
    }
  }
}

- (void)collectOverrides
{
  objc_msgSend_removeAllOverrides(self, a2, v2, v3);
  if (self->_referenceURL)
  {
    v8 = objc_msgSend__resolveURL(self, v5, v6, v7);
    ReferencedWorldWithURL = objc_msgSend__loadReferencedWorldWithURL_(self, v9, v8, v10);
    referenceNode = objc_msgSend_rootNode(ReferencedWorldWithURL, v12, v13, v14);
    Object = self;
  }

  else
  {
    referenceNode = self->_referenceNode;
    v21 = objc_msgSend_childNodes(self, v5, v6, v7);
    Object = objc_msgSend_firstObject(v21, v22, v23, v24);
  }

  v20 = objc_msgSend_childNodes(referenceNode, v15, v16, v17);
  v28 = objc_msgSend_count(v20, v25, v26, v27);
  v32 = objc_msgSend_childNodes(Object, v29, v30, v31);
  if (v28 == objc_msgSend_count(v32, v33, v34, v35))
  {

    objc_msgSend__diffNode_with_path_(self, v36, Object, referenceNode, &stru_1F2575650);
  }

  else
  {
    v37 = sub_1AF0D5194();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF7B50();
    }
  }
}

- (void)addOverride:(id)override forKeyPath:(id)path
{
  objc_msgSend_willChangeValueForKey_(self, a2, @"overrides", path);
  overrides = self->_overrides;
  if (!overrides)
  {
    overrides = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_overrides = overrides;
  }

  objc_msgSend_setObject_forKey_(overrides, v7, override, path);

  objc_msgSend_didChangeValueForKey_(self, v9, @"overrides", v10);
}

- (void)removeForKeyPath:(id)path
{
  objc_msgSend_willChangeValueForKey_(self, a2, @"overrides", v3);
  objc_msgSend_removeObjectForKey_(self->_overrides, v6, path, v7);
  if (!objc_msgSend_count(self->_overrides, v8, v9, v10))
  {

    self->_overrides = 0;
  }

  objc_msgSend_didChangeValueForKey_(self, v11, @"overrides", v12);
}

- (void)removeAllOverrides
{
  objc_msgSend_willChangeValueForKey_(self, a2, @"overrides", v2);
  objc_msgSend_removeAllObjects(self->_overrides, v4, v5, v6);

  objc_msgSend_didChangeValueForKey_(self, v7, @"overrides", v8);
}

- (id)overrides
{
  if (self->_overrides)
  {
    return self->_overrides;
  }

  else
  {
    return MEMORY[0x1E695E0F8];
  }
}

- (void)setOverrides:(id)overrides
{
  objc_msgSend_willChangeValueForKey_(self, a2, @"overrides", v3);

  self->_overrides = objc_msgSend_mutableCopy(overrides, v6, v7, v8);

  objc_msgSend_didChangeValueForKey_(self, v9, @"overrides", v10);
}

- (void)_applyUnsharing:(id)unsharing alreadyShared:(id)shared
{
  v103 = *MEMORY[0x1E69E9840];
  if ((objc_msgSend_containsObject_(shared, a2, unsharing, shared) & 1) == 0)
  {
    objc_msgSend_addObject_(shared, v7, unsharing, v8);
    v10 = objc_msgSend_rangeOfString_options_(unsharing, v9, @".", 4);
    if (v13 == 1)
    {
      v14 = v10;
      v15 = v10 + 1;
      if (v10 + 1 < objc_msgSend_length(unsharing, 1, v11, v12))
      {
        v18 = objc_msgSend_substringToIndex_(unsharing, v16, v14, v17);
        v21 = objc_msgSend_substringFromIndex_(unsharing, v19, v15, v20);
        v24 = objc_msgSend_valueForKeyPath_(self, v22, v18, v23);
        if (v24)
        {
          v25 = v24;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_isEqualToString_(v21, v26, @"model", v27))
          {
            v31 = objc_msgSend_model(v25, v28, v29, v30);
            v35 = objc_msgSend_copy(v31, v32, v33, v34);
            objc_msgSend_setModel_(v25, v36, v35, v37);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ((objc_msgSend_containsObject_(shared, v38, v18, v39) & 1) == 0)
            {
              objc_msgSend__applyUnsharing_alreadyShared_(self, v40, v18, shared);
              v25 = objc_msgSend_valueForKeyPath_(self, v42, v18, v43);
            }

            if (objc_msgSend_isEqualToString_(v21, v40, @"firstMaterial", v41))
            {
              v47 = 0;
              goto LABEL_13;
            }

            if (objc_msgSend_isEqualToString_(v21, v44, @"materials", v46))
            {
              v66 = objc_msgSend_materials(v25, v63, v64, v65);
              v71 = objc_msgSend_copy(v66, v67, v68, v69);

              objc_msgSend_setMaterials_(v25, v70, v71, v72);
            }

            else
            {
              v81 = objc_msgSend_rangeOfString_(v21, v63, @"[", v65);
              if (v83 == 1)
              {
                v84 = objc_msgSend_substringFromIndex_(v21, 1, v81 + 1, v82);
                v87 = objc_msgSend_rangeOfString_(v84, v85, @"]", v86);
                if (v89 == 1)
                {
                  v90 = objc_msgSend_substringToIndex_(v84, 1, v87, v88);
                  v47 = objc_msgSend_integerValue(v90, v91, v92, v93);
LABEL_13:
                  v48 = objc_msgSend_materials(v25, v44, v45, v46);
                  if (v47 >= objc_msgSend_count(v48, v49, v50, v51))
                  {
                    v73 = sub_1AF0D5194();
                    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                    {
                      v77 = objc_msgSend_materials(v25, v74, v75, v76);
                      *buf = 138412802;
                      unsharingCopy = unsharing;
                      v99 = 1024;
                      v100 = v47;
                      v101 = 1024;
                      v102 = objc_msgSend_count(v77, v78, v79, v80);
                      _os_log_error_impl(&dword_1AF0CE000, v73, OS_LOG_TYPE_ERROR, "Error: failed to evaluate key path %@ - material index %d out of bounds (%d)", buf, 0x18u);
                    }
                  }

                  else
                  {
                    v55 = objc_msgSend_materials(v25, v52, v53, v54);
                    v58 = objc_msgSend_objectAtIndexedSubscript_(v55, v56, v47, v57);
                    v96 = objc_msgSend_copy(v58, v59, v60, v61);
                    objc_msgSend_replaceMaterialAtIndex_withMaterial_(v25, v62, v47, v96);
                  }

                  return;
                }

                v95 = sub_1AF0D5194();
                if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
                {
                  sub_1AFDF7C00();
                }
              }

              else
              {
                v94 = sub_1AF0D5194();
                if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
                {
                  sub_1AFDF7B90();
                }
              }
            }
          }
        }
      }
    }
  }
}

- (void)_applyOverrides
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  overrides = self->_overrides;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1AF31A334;
  v11[3] = &unk_1E7A7EE10;
  v11[4] = self;
  v11[5] = v3;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(overrides, v5, v11, v6);
  v7 = self->_overrides;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF31A344;
  v10[3] = &unk_1E7A7E7E8;
  v10[4] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v7, v8, v10, v9);
}

- (void)_copyWithOptions:(unint64_t)options to:(id)to copyContext:(id)context
{
  v16.receiver = self;
  v16.super_class = VFXReferenceNode;
  [(VFXNode *)&v16 _copyWithOptions:options to:to copyContext:context];
  objc_msgSend_setReferenceURL_(to, v7, self->_referenceURL, v8);
  objc_msgSend_setReferencedNode_(to, v9, self->_referenceNode, v10);
  objc_msgSend_setLoadingPolicy_(to, v11, self->_loadingPolicy, v12);
  *(to + 37) = objc_msgSend_mutableCopy(self->_overrides, v13, v14, v15);
}

- (void)setReferenceURL:(id)l
{
  referenceURL = self->_referenceURL;
  if (referenceURL != l)
  {

    self->_referenceURL = objc_msgSend_copy(l, v6, v7, v8);
  }
}

- (BOOL)isVirtualEnvironmentNode
{
  v4 = objc_msgSend_scheme(self->_referenceURL, a2, v2, v3);

  return objc_msgSend_isEqualToString_(v4, v5, @"env", v6);
}

- (void)setReferencedNode:(id)node
{
  referenceNode = self->_referenceNode;
  if (referenceNode != node)
  {

    self->_referenceNode = node;
  }
}

- (id)_resolveURL
{
  referenceURL = self->_referenceURL;
  if (!referenceURL)
  {
    return 0;
  }

  if (objc_msgSend_scheme(self->_referenceURL, a2, v2, v3) && !objc_msgSend_isFileURL(referenceURL, v6, v7, v8))
  {
    return referenceURL;
  }

  v9 = objc_msgSend_relativePath(referenceURL, v6, v7, v8);
  if (objc_msgSend_isAbsolutePath(v9, v10, v11, v12))
  {
    return referenceURL;
  }

  sourceDocumentURL = self->_sourceDocumentURL;
  if (!sourceDocumentURL)
  {
    return referenceURL;
  }

  PathComponent = objc_msgSend_URLByDeletingLastPathComponent(sourceDocumentURL, v13, v14, v15);
  v20 = objc_msgSend_URLByAppendingPathComponent_(PathComponent, v18, v9, v19);
  if (!sub_1AF1D637C(v20))
  {
    return referenceURL;
  }

  return v20;
}

- (void)unload
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = objc_msgSend_childNodes(self, a2, v2, v3, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v14, v18, 16);
  if (v7)
  {
    v11 = v7;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_removeFromParentNode(*(*(&v14 + 1) + 8 * v13++), v8, v9, v10);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v14, v18, 16);
    }

    while (v11);
  }

  self->_loaded = 0;
}

- (id)_loadReferencedWorldWithURL:(id)l
{
  if (l)
  {

    return MEMORY[0x1EEE66B58](VFXWorld, sel_worldWithURL_options_error_, l, 0);
  }

  else
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF7C70();
    }

    return 0;
  }
}

- (void)load
{
  if (!self->_loaded)
  {
    v5 = objc_msgSend__resolveURL(self, a2, v2, v3);
    if (v5)
    {

      MEMORY[0x1EEE66B58](self, sel__loadWithURL_, v5, v6);
    }

    else
    {
      referenceNode = self->_referenceNode;
      if (referenceNode)
      {

        MEMORY[0x1EEE66B58](self, sel__loadWithNode_fromURL_, referenceNode, 0);
      }
    }
  }
}

- (void)_loadWithNode:(id)node fromURL:(BOOL)l
{
  lCopy = l;
  v29 = *MEMORY[0x1E69E9840];
  self->_loaded = 1;
  v7 = objc_msgSend_clone(node, a2, node, l);
  objc_msgSend_enumerateHierarchyUsingBlock_(v7, v8, &unk_1F24EC208, v9);
  if (lCopy)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = objc_msgSend_childNodes(v7, v10, v11, v12, 0);
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v24, v28, 16);
    if (v15)
    {
      v18 = v15;
      v19 = *v25;
      do
      {
        v20 = 0;
        do
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v13);
          }

          objc_msgSend_addChildNode_(self, v16, *(*(&v24 + 1) + 8 * v20++), v17);
        }

        while (v18 != v20);
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v24, v28, 16);
      }

      while (v18);
    }

    objc_msgSend__copyAnimationsFrom_(self, v16, node, v17);
  }

  else
  {
    objc_msgSend_addChildNode_(self, v10, v7, v12);
  }

  objc_msgSend__applyOverrides(self, v21, v22, v23);
}

- (void)_loadWithURL:(id)l
{
  if (l)
  {
    v8 = objc_msgSend_valueForKey_(VFXTransaction, a2, @"VFXReferenceLoadingStack", v3);
    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      objc_msgSend_setValue_forKey_(VFXTransaction, v9, v8, @"VFXReferenceLoadingStack");
    }

    if (objc_msgSend_containsObject_(v8, v6, l, v7))
    {
      v12 = sub_1AF0D5194();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF7CE0();
      }
    }

    else
    {
      objc_msgSend_addObject_(v8, v10, l, v11);
      ReferencedWorldWithURL = objc_msgSend__loadReferencedWorldWithURL_(self, v14, l, v15);
      objc_msgSend_removeObject_(v8, v17, l, v18);
      if (ReferencedWorldWithURL)
      {
        v22 = objc_msgSend_rootNode(ReferencedWorldWithURL, v19, v20, v21);

        MEMORY[0x1EEE66B58](self, sel__loadWithNode_fromURL_, v22, 1);
      }
    }
  }

  else
  {
    v13 = sub_1AF0D5194();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF7C70();
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  referenceURL = self->_referenceURL;
  if (!referenceURL)
  {
    referenceURL = self->_referenceNode;
  }

  return objc_msgSend_stringWithFormat_(v3, v6, @"<%@: %p source=%@>", v7, v5, self, referenceURL);
}

- (void)encodeWithCoder:(id)coder
{
  referenceURL = self->_referenceURL;
  if (referenceURL)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, referenceURL, @"referenceURL");
  }

  referenceNode = self->_referenceNode;
  if (referenceNode)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, referenceNode, @"referenceNode");
  }

  objc_msgSend_encodeInteger_forKey_(coder, a2, self->_loadingPolicy, @"loadingPolicy");
  overrides = self->_overrides;
  if (overrides)
  {
    objc_msgSend_encodeObject_forKey_(coder, v7, overrides, @"overrides");
  }

  v9.receiver = self;
  v9.super_class = VFXReferenceNode;
  [(VFXNode *)&v9 encodeWithCoder:coder];
}

- (VFXReferenceNode)initWithCoder:(id)coder
{
  v38[2] = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = VFXReferenceNode;
  v4 = [(VFXNode *)&v37 initWithCoder:?];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v6, v38, 2);
    v10 = objc_msgSend_setWithArray_(v5, v8, v7, v9);
    v12 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v11, v10, @"referenceURL");
    objc_msgSend_setReferenceURL_(v4, v13, v12, v14);
    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v16, v15, @"referenceNode");
    objc_msgSend_setReferencedNode_(v4, v18, v17, v19);
    v22 = objc_msgSend_decodeIntegerForKey_(coder, v20, @"loadingPolicy", v21);
    objc_msgSend_setLoadingPolicy_(v4, v23, v22, v24);
    v25 = sub_1AF37287C();
    v27 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v26, v25, @"overrides");
    objc_msgSend_setOverrides_(v4, v28, v27, v29);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4->_sourceDocumentURL = objc_msgSend_documentURL(coder, v30, v31, v32);
    }

    if ((objc_msgSend_containsValueForKey_(coder, v30, @"childNodes", v32) & 1) == 0 && !v4->_loadingPolicy)
    {
      objc_msgSend_load(v4, v33, v34, v35);
    }
  }

  return v4;
}

@end