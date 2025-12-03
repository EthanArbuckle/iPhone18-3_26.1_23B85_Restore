@interface VFXMesh
+ (id)mesh;
+ (id)meshWithMeshRef:(__CFXMesh *)ref;
+ (id)meshWithSources:(id)sources elements:(id)elements sourceChannels:(id)channels;
- (BOOL)getBoundingSphereCenter:(VFXMesh *)self radius:(SEL)radius;
- (NSArray)meshElements;
- (NSArray)meshSources;
- (NSString)description;
- (NSString)name;
- (VFXMesh)init;
- (VFXMesh)initWithCoder:(id)coder;
- (VFXMesh)initWithMeshRef:(__CFXMesh *)ref;
- (VFXWorld)world;
- (__CFXWorld)worldRef;
- (double)boundingBox;
- (id)_meshByRebuildingNormals;
- (id)_meshByRemovingSkinnerSources;
- (id)_meshByWeldingVerticesWithThreshold:(float)threshold normalThreshold:(float)normalThreshold;
- (id)_renderableCopy;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugQuickLookData;
- (id)debugQuickLookObject;
- (id)debugQuickLookObjectWithWorld:(id)world;
- (id)identifier;
- (id)interleavedCopy;
- (id)meshDescription;
- (id)meshElementAtIndex:(int64_t)index;
- (id)meshSourcesForSemantic:(id)semantic;
- (int64_t)meshElementCount;
- (int64_t)primitiveType;
- (void)_discardOriginalTopology;
- (void)_rebuildMeshElementsFromPresentation;
- (void)_rebuildMeshSourcesFromPresentation;
- (void)_updateEntityModelFromPresentation;
- (void)_updateEntityPresentationFromModel;
- (void)_updatePresentationFromModel;
- (void)addWorldReference:(id)reference;
- (void)dealloc;
- (void)decodeMeshWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)makeUniqueID;
- (void)removeWorldReference:(id)reference;
- (void)setBoundingBox:;
- (void)setIdentifier:(id)identifier;
- (void)setMeshRef:(__CFXMesh *)ref;
- (void)setName:(id)name;
- (void)setPrimitiveType:(int64_t)type;
- (void)setWorld:(id)world;
@end

@implementation VFXMesh

- (VFXMesh)init
{
  v11.receiver = self;
  v11.super_class = VFXMesh;
  v2 = [(VFXMesh *)&v11 init];
  if (v2)
  {
    v3 = sub_1AF1A2E00();
    v2->_mesh = v3;
    if (v3)
    {
      sub_1AF16CDFC(v3, v2);
    }

    objc_msgSend__updateModelFromPresentation(v2, v4, v5, v6);
    objc_msgSend_makeUniqueID(v2, v7, v8, v9);
  }

  return v2;
}

- (VFXMesh)initWithMeshRef:(__CFXMesh *)ref
{
  v13.receiver = self;
  v13.super_class = VFXMesh;
  v4 = [(VFXMesh *)&v13 init];
  if (v4)
  {
    v5 = CFRetain(ref);
    v4->_mesh = v5;
    if (v5)
    {
      sub_1AF16CDFC(v5, v4);
    }

    objc_msgSend__updateModelFromPresentation(v4, v6, v7, v8);
    objc_msgSend_makeUniqueID(v4, v9, v10, v11);
  }

  return v4;
}

+ (id)meshWithMeshRef:(__CFXMesh *)ref
{
  result = sub_1AF16CDEC(ref);
  if (!result)
  {
    v6 = [self alloc];
    v9 = objc_msgSend_initWithMeshRef_(v6, v7, ref, v8);

    return v9;
  }

  return result;
}

+ (id)mesh
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)dealloc
{
  mesh = self->_mesh;
  if (mesh)
  {
    sub_1AF16CDFC(mesh, 0);
    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, v4, self->_mesh, v5);
  }

  v6.receiver = self;
  v6.super_class = VFXMesh;
  [(VFXMesh *)&v6 dealloc];
}

- (void)addWorldReference:(id)reference
{
  world = self->_world;
  if (world == reference)
  {
    v6 = self->_worldReferenceCounter + 1;
  }

  else
  {
    if (world)
    {
      self->_worldReferenceCounter = 0;
    }

    objc_msgSend_setWorld_(self, a2, reference, v3);
    v6 = 1;
  }

  self->_worldReferenceCounter = v6;
}

- (void)removeWorldReference:(id)reference
{
  p_world = &self->_world;
  if (!reference || self->_world == reference)
  {
    worldReferenceCounter = self->_worldReferenceCounter;
    if (worldReferenceCounter)
    {
      v7 = worldReferenceCounter - 1;
      self->_worldReferenceCounter = v7;
      if (!v7)
      {

        objc_msgSend_setWorld_(self, a2, 0, v3);
      }
    }

    else
    {
      v8 = sub_1AF0D5194();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF4930(self, p_world, v8);
      }
    }
  }
}

- (void)setWorld:(id)world
{
  world = self->_world;
  if (world != world)
  {
    v9[9] = v3;
    v9[10] = v4;
    if (world)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1AF2E1D48;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = world;
    if (world)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF2E1DA8;
      v8[3] = &unk_1E7A7E428;
      v8[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v8);
    }
  }
}

- (VFXWorld)world
{
  if ((*(self + 32) & 1) == 0)
  {
    return self->_world;
  }

  result = objc_msgSend_worldRef(self, a2, v2, v3);
  if (result)
  {

    return sub_1AF16CDEC(&result->super.isa);
  }

  return result;
}

- (__CFXWorld)worldRef
{
  v4 = objc_msgSend___CFObject(self, a2, v2, v3);

  return sub_1AF1C3FAC(v4);
}

- (void)setName:(id)name
{
  name = self->_name;
  if (name | name)
  {
    if ((objc_msgSend_isEqual_(name, a2, name, v3) & 1) == 0)
    {

      self->_name = objc_msgSend_copy(name, v7, v8, v9);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1AF2E1F24;
      v11[3] = &unk_1E7A7E220;
      v11[4] = self;
      v11[5] = name;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v11);
    }
  }
}

- (NSString)name
{
  if ((*(self + 32) & 1) == 0)
  {
    return self->_name;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  v10 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6);
  }

  v11 = objc_msgSend___CFObject(self, v7, v8, v9);
  v5 = sub_1AF16CBEC(v11);
  if (v10)
  {
    sub_1AF1CEA9C(v10);
  }

  return v5;
}

- (void)setIdentifier:(id)identifier
{
  v5 = objc_msgSend___CFObject(self, a2, identifier, v3);

  sub_1AF16CD6C(v5, identifier);
}

- (id)identifier
{
  v4 = objc_msgSend___CFObject(self, a2, v2, v3);

  return sub_1AF16CD08(v4, v5, v6, v7);
}

- (void)_updateEntityModelFromPresentation
{
  v5 = objc_msgSend___CFObject(self, a2, v2, v3);

  self->_name = sub_1AF16CBEC(v5);
}

- (void)_updateEntityPresentationFromModel
{
  v5 = objc_msgSend___CFObject(self, a2, v2, v3);
  name = self->_name;

  sub_1AF16CC34(v5, name);
}

- (void)makeUniqueID
{
  v4 = objc_msgSend___CFObject(self, a2, v2, v3);
  v8 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v5, v6, v7);
  v12 = objc_msgSend_UUIDString(v8, v9, v10, v11);

  sub_1AF16CD6C(v4, v12);
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2E2168;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (id)meshDescription
{
  v5 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, v2, v3);
  v9 = objc_msgSend_name(self, v6, v7, v8);
  v13 = objc_msgSend_length(v9, v10, v11, v12);
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v19 = v15;
  if (v13)
  {
    v32 = objc_msgSend_name(self, v16, v17, v18);
    objc_msgSend_appendFormat_(v5, v20, @"%@: %p '%@'", v21, v19, self, v32);
  }

  else
  {
    objc_msgSend_appendFormat_(v5, v16, @"%@: %p", v18, v15, self);
  }

  if (objc_msgSend_meshElementCount(self, v22, v23, v24) >= 2)
  {
    v28 = objc_msgSend_meshElementCount(self, v25, v26, v27);
    objc_msgSend_appendFormat_(v5, v29, @" | %d elements", v30, v28);
  }

  return v5;
}

- (NSString)description
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_meshDescription(self, a2, v2, v3);
  return objc_msgSend_stringWithFormat_(v4, v6, @"<%@>", v7, v5);
}

- (void)setMeshRef:(__CFXMesh *)ref
{
  mesh = self->_mesh;
  if (mesh == ref)
  {
    return;
  }

  if (!mesh)
  {
    if (!ref)
    {
      return;
    }

LABEL_9:
    v6 = CFRetain(ref);
    goto LABEL_10;
  }

  sub_1AF16CDFC(mesh, 0);
  v6 = self->_mesh;
  if (v6 == ref)
  {
    goto LABEL_11;
  }

  if (v6)
  {
    CFRelease(v6);
    self->_mesh = 0;
  }

  if (ref)
  {
    goto LABEL_9;
  }

  v6 = 0;
LABEL_10:
  self->_mesh = v6;
LABEL_11:
  if (v6)
  {

    sub_1AF16CDFC(v6, self);
  }
}

+ (id)meshWithSources:(id)sources elements:(id)elements sourceChannels:(id)channels
{
  selfCopy = self;
  v67 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E695E480];
  v9 = objc_msgSend_count(sources, a2, sources, elements);
  v10 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(v8, v9, MEMORY[0x1E695E9C0]);
  v15 = objc_msgSend_count(elements, v12, v13, v14);
  v16 = CFArrayCreateMutable(v8, v15, v10);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(sources, v17, &v61, v66, 16);
  if (v18)
  {
    v22 = v18;
    v23 = *v62;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v62 != v23)
        {
          objc_enumerationMutation(sources);
        }

        v25 = *(*(&v61 + 1) + 8 * i);
        objc_msgSend__clearCFXCache(v25, v19, v20, v21);
        v29 = objc_msgSend_meshSource(v25, v26, v27, v28);
        CFArrayAppendValue(Mutable, v29);
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(sources, v19, &v61, v66, 16);
    }

    while (v22);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(elements, v19, &v57, v65, 16);
  if (v30)
  {
    v34 = v30;
    v35 = *v58;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v58 != v35)
        {
          objc_enumerationMutation(elements);
        }

        v37 = objc_msgSend_meshElement(*(*(&v57 + 1) + 8 * j), v31, v32, v33);
        CFArrayAppendValue(v16, v37);
      }

      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(elements, v31, &v57, v65, 16);
    }

    while (v34);
  }

  v38 = objc_msgSend_count(sources, v31, v32, v33);
  v39 = &v55 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF2E25E0(channels, v38, elements, v39);
  v40 = sub_1AF27B22C(Mutable, v16, v39);
  v41 = [selfCopy alloc];
  v44 = objc_msgSend_initWithMeshRef_(v41, v42, v40, v43);
  v44[5] = objc_msgSend_copy(sources, v45, v46, v47);
  v44[6] = objc_msgSend_copy(elements, v48, v49, v50);
  v44[7] = objc_msgSend_copy(channels, v51, v52, v53);
  CFRelease(Mutable);
  CFRelease(v16);
  CFRelease(v40);
  return v44;
}

- (void)_rebuildMeshSourcesFromPresentation
{
  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v6 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v7 = self->_sources;

  self->_sources = objc_alloc_init(MEMORY[0x1E695DF70]);
  mesh = self->_mesh;
  if (mesh)
  {
    v37 = -1;
    v9 = sub_1AF1A4BA0(mesh, &v37);
    if (v37)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    v36 = v7;
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v12 = sub_1AF1A4CF8(mesh, 0);
    v16 = objc_msgSend_count(v12, v13, v14, v15);
    if (v16)
    {
      v19 = v16;
      for (i = 0; i != v19; ++i)
      {
        v21 = objc_msgSend_objectAtIndexedSubscript_(v12, v17, i, v18, v36);
        v24 = objc_msgSend_meshSourceWithMeshSourceRef_(VFXMeshSource, v22, v21, v23);
        objc_msgSend_addObject_(self->_sources, v25, v24, v26);
        if ((v10 & 1) == 0)
        {
          v27 = sub_1AF1A4C10(mesh, i);
          v30 = objc_msgSend_numberWithLong_(MEMORY[0x1E696AD98], v28, v27, v29);
          objc_msgSend_addObject_(v11, v31, v30, v32);
        }
      }
    }

    v7 = v36;
  }

  else
  {
    v11 = 0;
  }

  self->_sourceChannels = objc_msgSend_copy(v11, v33, v34, v35);
  if (v6)
  {
    sub_1AF1CEA9C(v6);
  }
}

- (void)_rebuildMeshElementsFromPresentation
{
  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v6 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  mesh = self->_mesh;
  if (mesh)
  {
    v8 = self->_elements;
    self->_elements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = sub_1AF1A3CCC(mesh);
    if (v9 >= 1)
    {
      v10 = v9;
      for (i = 0; i != v10; ++i)
      {
        v12 = sub_1AF1A3D1C(mesh, i, 0);
        elements = self->_elements;
        v16 = objc_msgSend_meshElementWithMeshElementRef_(VFXMeshElement, v14, v12, v15);
        objc_msgSend_addObject_(elements, v17, v16, v18);
      }
    }
  }

  if (v6)
  {

    sub_1AF1CEA9C(v6);
  }
}

- (NSArray)meshSources
{
  result = &self->_sources->super;
  if (!result)
  {
    objc_msgSend__rebuildMeshSourcesFromPresentation(self, a2, v2, v3);
    return &self->_sources->super;
  }

  return result;
}

- (id)meshSourcesForSemantic:(id)semantic
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_meshSources(self, a2, semantic, v3);
  v8 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v6, 1, v7);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v9, &v22, v26, 16);
  if (v10)
  {
    v14 = v10;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v5);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        v18 = objc_msgSend_semantic(v17, v11, v12, v13);
        if (objc_msgSend_isEqualToString_(v18, v19, semantic, v20))
        {
          objc_msgSend_addObject_(v8, v11, v17, v13);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v11, &v22, v26, 16);
    }

    while (v14);
  }

  if (objc_msgSend_count(v8, v11, v12, v13))
  {
    return v8;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (NSArray)meshElements
{
  result = &self->_elements->super;
  if (!result)
  {
    objc_msgSend__rebuildMeshElementsFromPresentation(self, a2, v2, v3);
    return &self->_elements->super;
  }

  return result;
}

- (int64_t)meshElementCount
{
  v4 = objc_msgSend_meshElements(self, a2, v2, v3);

  return objc_msgSend_count(v4, v5, v6, v7);
}

- (id)meshElementAtIndex:(int64_t)index
{
  v5 = objc_msgSend_meshElements(self, a2, index, v3);
  if (objc_msgSend_count(v5, v6, v7, v8) <= index)
  {
    return 0;
  }

  return objc_msgSend_objectAtIndexedSubscript_(v5, v9, index, v10);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_meshRef(self, a2, zone, v3);
  v5 = sub_1AF1A2EDC(v4);
  v6 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithMeshRef_(v6, v7, v5, v8);
  if (v5)
  {
    CFRelease(v5);
  }

  return v9;
}

- (id)interleavedCopy
{
  v4 = objc_msgSend_meshRef(self, a2, v2, v3);
  v5 = sub_1AF27E144(v4);
  v6 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithMeshRef_(v6, v7, v5, v8);
  if (v5)
  {
    CFRelease(v5);
  }

  return v9;
}

- (id)_renderableCopy
{
  v4 = objc_msgSend_meshRef(self, a2, v2, v3);
  v5 = sub_1AF1A3150(v4);
  v6 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithMeshRef_(v6, v7, v5, v8);
  if (v5)
  {
    CFRelease(v5);
  }

  return v9;
}

- (int64_t)primitiveType
{
  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v6 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  mesh = self->_mesh;
  if (mesh)
  {
    if (sub_1AF1A3CCC(mesh) < 1)
    {
      mesh = 0;
      if (!v6)
      {
        return mesh;
      }

      goto LABEL_7;
    }

    v8 = sub_1AF1A3D1C(mesh, 0, 0);
    mesh = sub_1AF1A7034(v8);
  }

  if (v6)
  {
LABEL_7:
    sub_1AF1CEA9C(v6);
  }

  return mesh;
}

- (void)setPrimitiveType:(int64_t)type
{
  typeCopy = type;
  v6 = objc_msgSend_worldRef(self, a2, type, v3);
  v7 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6);
  }

  mesh = self->_mesh;
  if (mesh)
  {
    if (sub_1AF1A3CCC(mesh) >= 1)
    {
      v9 = sub_1AF1A3CCC(mesh);
      if (v9 >= 1)
      {
        v10 = v9;
        for (i = 0; i != v10; ++i)
        {
          v12 = sub_1AF1A3D1C(mesh, i, 0);
          sub_1AF1A699C(v12, typeCopy);
        }
      }
    }
  }

  if (v7)
  {

    sub_1AF1CEA9C(v7);
  }
}

- (double)boundingBox
{
  v12 = VFXNullBoundingBox;
  v13 = *algn_1AFE47750;
  v5 = objc_msgSend_worldRef(self, a2, a3, a4);
  v9 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v10 = objc_msgSend_meshRef(self, v6, v7, v8);
  if (v10)
  {
    sub_1AF1A3234(v10, &v12, &v13);
  }

  if (v9)
  {
    sub_1AF1CEA9C(v9);
  }

  return *&v12;
}

- (void)setBoundingBox:
{
  v0 = sub_1AF0D5194();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF602C(v0);
  }
}

- (BOOL)getBoundingSphereCenter:(VFXMesh *)self radius:(SEL)radius
{
  v4 = v3;
  v5 = v2;
  v7 = objc_msgSend_worldRef(self, radius, v2, v3);
  v11 = v7;
  if (v7)
  {
    sub_1AF1CEA20(v7);
  }

  v12 = objc_msgSend_meshRef(self, v8, v9, v10);
  v15 = 0uLL;
  if (!v12 || !sub_1AF1C39FC(v12, 0, &v15))
  {
    v13 = 0;
    if (!v11)
    {
      return v13;
    }

LABEL_12:
    sub_1AF1CEA9C(v11);
    return v13;
  }

  if (v5)
  {
    *v5 = v15;
  }

  if (v4)
  {
    *v4 = HIDWORD(v15);
  }

  v13 = 1;
  if (v11)
  {
    goto LABEL_12;
  }

  return v13;
}

- (void)decodeMeshWithCoder:(id)coder
{
  v81 = *MEMORY[0x1E69E9840];
  v5 = sub_1AF1A2D3C();
  if (v5 == CFGetTypeID(self->_mesh))
  {
    selfCopy = self;
    v6 = objc_opt_class();
    v64 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v7, v6, @"elements");
    v11 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9, v10);
    v12 = objc_opt_class();
    v14 = sub_1AF2E4D88(v12, v13);
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v74, v80, 16);
    if (v16)
    {
      v20 = v16;
      v21 = *v75;
      do
      {
        v22 = 0;
        do
        {
          if (*v75 != v21)
          {
            objc_enumerationMutation(v14);
          }

          v23 = *(*(&v74 + 1) + 8 * v22);
          v24 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v17, v12, v23);
          if (v24 || v23 == @"kGeometrySourceSemanticPosition" && (v24 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v17, v12, @"kGeometrySourceSemanticVertex")) != 0)
          {
            objc_msgSend_addObjectsFromArray_(v11, v17, v24, v25);
          }

          ++v22;
        }

        while (v20 != v22);
        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v74, v80, 16);
        v20 = v26;
      }

      while (v26);
    }

    v27 = *MEMORY[0x1E695E480];
    v28 = objc_msgSend_count(v11, v17, v18, v19);
    v29 = MEMORY[0x1E695E9C0];
    Mutable = CFArrayCreateMutable(v27, v28, MEMORY[0x1E695E9C0]);
    v31 = v64;
    v35 = objc_msgSend_count(v64, v32, v33, v34);
    v36 = CFArrayCreateMutable(v27, v35, v29);
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v37, &v70, v79, 16);
    if (v38)
    {
      v42 = v38;
      v43 = *v71;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v71 != v43)
          {
            objc_enumerationMutation(v11);
          }

          v45 = objc_msgSend_meshSource(*(*(&v70 + 1) + 8 * i), v39, v40, v41);
          CFArrayAppendValue(Mutable, v45);
        }

        v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v39, &v70, v79, 16);
      }

      while (v42);
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v39, &v66, v78, 16);
    if (v46)
    {
      v50 = v46;
      v51 = *v67;
      do
      {
        for (j = 0; j != v50; ++j)
        {
          if (*v67 != v51)
          {
            objc_enumerationMutation(v64);
          }

          v53 = objc_msgSend_meshElement(*(*(&v66 + 1) + 8 * j), v47, v48, v49);
          CFArrayAppendValue(v36, v53);
        }

        v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v47, &v66, v78, 16);
      }

      while (v50);
    }

    v54 = objc_opt_class();
    self = selfCopy;
    selfCopy->_sourceChannels = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v55, v54, @"sourceChannels");
    v59 = objc_msgSend_count(v11, v56, v57, v58);
    v60 = &v64 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1AF2E25E0(self->_sourceChannels, v59, v31, v60);
    mesh = self->_mesh;
    if (mesh)
    {
      CFRelease(mesh);
      self->_mesh = 0;
    }

    self->_mesh = sub_1AF27B22C(Mutable, v36, v60);
    CFRelease(Mutable);
    CFRelease(v36);
  }

  v62 = objc_opt_class();
  self->_name = objc_msgSend_decodeObjectOfClass_forKey_(coder, v63, v62, @"name");
}

- (void)encodeWithCoder:(id)coder
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = sub_1AF1A2D3C();
  v6 = CFGetTypeID(self->_mesh);
  if (v5 == v6)
  {
    v9 = sub_1AF2E4D88(v6, v7);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v26, v30, 16);
    if (v11)
    {
      v15 = v11;
      v16 = *v27;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v9);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          v19 = objc_msgSend_meshSourcesForSemantic_(self, v12, v18, v14);
          if (v19)
          {
            objc_msgSend_encodeObject_forKey_(coder, v12, v19, v18);
          }
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v26, v30, 16);
      }

      while (v15);
    }

    v20 = objc_msgSend_meshElements(self, v12, v13, v14);
    if (objc_msgSend_count(v20, v21, v22, v23))
    {
      objc_msgSend_encodeObject_forKey_(coder, v7, v20, @"elements");
    }

    sourceChannels = self->_sourceChannels;
    if (sourceChannels)
    {
      objc_msgSend_encodeObject_forKey_(coder, v7, sourceChannels, @"sourceChannels");
    }
  }

  name = self->_name;
  if (name)
  {
    objc_msgSend_encodeObject_forKey_(coder, v7, name, @"name");
  }

  sub_1AF372440(coder, self, name, v8);
}

- (VFXMesh)initWithCoder:(id)coder
{
  v20.receiver = self;
  v20.super_class = VFXMesh;
  v7 = [(VFXMesh *)&v20 init];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    v11 = sub_1AF1A2E00();
    v7->_mesh = v11;
    if (v11)
    {
      sub_1AF16CDFC(v11, v7);
    }

    objc_msgSend__updateModelFromPresentation(v7, v12, v13, v14);
    objc_msgSend_decodeMeshWithCoder_(v7, v15, coder, v16);
    sub_1AF37249C(coder, v7);
    objc_msgSend_setImmediateMode_(VFXTransaction, v17, v8, v18);
  }

  return v7;
}

- (id)_meshByRebuildingNormals
{
  v4 = objc_msgSend_copy(self, a2, v2, v3);
  v8 = objc_msgSend_meshRef(v4, v5, v6, v7);
  if (v8)
  {
    v9 = sub_1AF1A2EDC(v8);
    if (sub_1AF1A4CE8(v9, 0))
    {
      v12 = sub_1AF27D340(v9, 0, 0);
      if (v12)
      {
        v13 = v12;
        v14 = sub_1AF1A4C6C(v9, 0, 0);
        sub_1AF1A44D4(v9, v13, 0, v14);
        CFRelease(v13);
      }
    }

    v15 = objc_msgSend_meshWithMeshRef_(VFXMesh, v10, v9, v11);
    if (v9)
    {
      CFRelease(v9);
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_meshByRemovingSkinnerSources
{
  v5 = objc_msgSend_meshRef(self, a2, v2, v3);
  v6 = sub_1AF1A2EDC(v5);
  sub_1AF1A4930(v6, 5);
  sub_1AF1A4930(v6, 6);
  v12 = objc_msgSend_meshWithMeshRef_(VFXMesh, v7, v6, v8);
  if (v6)
  {
    CFRelease(v6);
  }

  v13 = objc_msgSend_name(self, v9, v10, v11);
  objc_msgSend_setName_(v12, v14, v13, v15);
  return v12;
}

- (void)_discardOriginalTopology
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_meshRef(self, a2, v2, v3);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = objc_msgSend_meshSources(self, v6, v7, v8);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v36, v41, 16);
  if (v11)
  {
    v15 = v11;
    v16 = *v37;
    do
    {
      v17 = 0;
      do
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(v9);
        }

        v18 = objc_msgSend_meshSource(*(*(&v36 + 1) + 8 * v17), v12, v13, v14);
        if (v18)
        {
          sub_1AF16CDFC(v18, 0);
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v36, v41, 16);
    }

    while (v15);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v19 = objc_msgSend_meshElements(self, v12, v13, v14, 0);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v32, v40, 16);
  if (v21)
  {
    v25 = v21;
    v26 = *v33;
    do
    {
      v27 = 0;
      do
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(v19);
        }

        v28 = objc_msgSend_meshElement(*(*(&v32 + 1) + 8 * v27), v22, v23, v24);
        if (v28)
        {
          sub_1AF16CDFC(v28, 0);
        }

        ++v27;
      }

      while (v25 != v27);
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v32, v40, 16);
    }

    while (v25);
  }

  sub_1AF1AFDA8(v5, 0);
  objc_msgSend__releaseCachedSourcesAndElements(self, v29, v30, v31);
}

- (id)_meshByWeldingVerticesWithThreshold:(float)threshold normalThreshold:(float)normalThreshold
{
  selfCopy = self;
  v275 = *MEMORY[0x1E69E9840];
  v8 = objc_msgSend_meshSourcesForSemantic_(self, a2, @"kGeometrySourceSemanticPosition", v4);
  Object = objc_msgSend_firstObject(v8, v9, v10, v11);
  v15 = objc_msgSend_meshSourcesForSemantic_(selfCopy, v13, @"kGeometrySourceSemanticNormal", v14);
  v19 = objc_msgSend_firstObject(v15, v16, v17, v18);
  objc_msgSend_meshSourcesForSemantic_(selfCopy, v20, @"kGeometrySourceSemanticTexcoord", v21);
  v25 = objc_msgSend_vectorCount(Object, v22, v23, v24);
  v26 = malloc_type_malloc(8 * v25, 0x100004000313F17uLL);
  v27 = malloc_type_malloc(8 * v25, 0x100004000313F17uLL);
  v31 = v27;
  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      v26[i] = i;
      v27[i] = i;
    }
  }

  v33 = objc_msgSend_data(Object, v28, v29, v30);
  v256 = objc_msgSend_bytes(v33, v34, v35, v36);
  v257 = objc_msgSend_dataOffset(Object, v37, v38, v39);
  v258 = objc_msgSend_dataStride(Object, v40, v41, v42);
  qsort_r(v26, v25, 8uLL, &v256, sub_1AF37610C);
  if (v25)
  {
    v246 = 0;
    v47 = 0;
    v48 = normalThreshold + normalThreshold;
    v49 = v26;
    v232 = v26;
    do
    {
      v50 = v49[v47];
      if (v31[v50] == v50)
      {
        v51 = v256 + v257 + v258 * v50;
        v46.i64[0] = *v51;
        LODWORD(v243) = *v51;
        v46.i32[2] = *(v51 + 8);
        v240 = v46;
        v52 = objc_msgSend_data(v19, v43, v44, v45);
        v56 = objc_msgSend_bytes(v52, v53, v54, v55);
        v60 = objc_msgSend_dataOffset(v19, v57, v58, v59);
        v64 = objc_msgSend_dataStride(v19, v61, v62, v63);
        if (v19)
        {
          v66 = v56 + v60 + v64 * v50;
          v46.i64[0] = *v66;
          v46.i32[2] = *(v66 + 8);
        }

        else
        {
          v46 = 0uLL;
        }

        v68 = v47 + 1;
        if (v47 + 1 >= v25)
        {
          v67 = 0;
        }

        else
        {
          LODWORD(v67) = 0;
          v69 = v256;
          v70 = v25 - 1 - v47;
          v71 = &v26[v47 + 1];
          do
          {
            v73 = *v71++;
            v72 = v73;
            if (v31[v73] == v73)
            {
              v74 = v69 + v257 + v258 * v72;
              if (vabds_f32(v243, *v74) > threshold)
              {
                break;
              }

              v65.i32[1] = *(v74 + 4);
              v65.i32[2] = *(v74 + 8);
              v65.i32[0] = *v74;
              v75 = vsubq_f32(v240, v65);
              v65 = vmulq_f32(v75, v75);
              if (sqrtf(v65.f32[2] + vaddv_f32(*v65.f32)) <= threshold)
              {
                if (!v19 || (v65.i64[0] = *(v56 + v60 + v72 * v64), v65.i32[2] = *(v56 + v60 + 8 + v72 * v64), v65 = vmulq_f32(v46, v65), (1.0 - (v65.f32[2] + vaddv_f32(*v65.f32))) <= v48))
                {
                  v31[v72] = v50;
                  LODWORD(v67) = v67 + 1;
                }
              }
            }

            --v70;
          }

          while (v70);
          v67 = v67;
        }

        v49 = v26;
      }

      else
      {
        v67 = 0;
        v68 = v47 + 1;
      }

      v246 += v67;
      v47 = v68;
    }

    while (v68 != v25);
    if (v246)
    {
      v76 = objc_msgSend_meshSources(selfCopy, v43, v44, v45);
      v80 = objc_msgSend_meshElements(selfCopy, v77, v78, v79);
      v81 = MEMORY[0x1E695DF70];
      obj = v76;
      v85 = objc_msgSend_count(v76, v82, v83, v84);
      v238 = objc_msgSend_arrayWithCapacity_(v81, v86, v85, v87);
      v88 = MEMORY[0x1E695DF70];
      v234 = v80;
      v92 = objc_msgSend_count(v80, v89, v90, v91);
      v237 = objc_msgSend_arrayWithCapacity_(v88, v93, v92, v94);
      for (j = 0; j != v25; ++j)
      {
        v97 = v31[j];
        do
        {
          v98 = v97;
          v97 = v31[v97];
        }

        while (v98 > v97);
        v31[j] = v98;
        if (v98 > j && v31[v98] == v98)
        {
          v31[v98] = j;
          v31[j] = j;
        }
      }

      v231 = selfCopy;
      v254 = 0u;
      v255 = 0u;
      v252 = 0u;
      v253 = 0u;
      v241 = objc_msgSend_countByEnumeratingWithState_objects_count_(v76, v95, &v252, v274, 16);
      if (v241)
      {
        v235 = *v253;
        do
        {
          for (k = 0; k != v241; ++k)
          {
            if (*v253 != v235)
            {
              objc_enumerationMutation(obj);
            }

            v103 = *(*(&v252 + 1) + 8 * k);
            v104 = objc_msgSend_bytesPerComponent(v103, v99, v100, v101);
            v108 = objc_msgSend_componentsPerVector(v103, v105, v106, v107) * v104;
            v244 = (objc_msgSend_vectorCount(v103, v109, v110, v111) - v246) * v108;
            v112 = malloc_type_malloc(v244, 0x72F5C6EEuLL);
            v116 = objc_msgSend_data(v103, v113, v114, v115);
            v120 = objc_msgSend_bytes(v116, v117, v118, v119);
            objc_msgSend_vectorCount(v103, v121, v122, v123);
            v127 = objc_msgSend_dataStride(v103, v124, v125, v126);
            v131 = 0;
            v133 = (v120 + objc_msgSend_dataOffset(v103, v128, v129, v130));
            v134 = v112;
            do
            {
              if (v131 == v31[v131])
              {
                memcpy(v134, v133, v108);
                v134 += v108;
              }

              v133 += v127;
              ++v131;
            }

            while (v25 != v131);
            v135 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v132, v112, v244, 1);
            v139 = objc_msgSend_semantic(v103, v136, v137, v138);
            v143 = objc_msgSend_vectorCount(v103, v140, v141, v142) - v246;
            v147 = objc_msgSend__componentType(v103, v144, v145, v146);
            v151 = objc_msgSend_componentsPerVector(v103, v148, v149, v150);
            v153 = objc_msgSend__meshSourceWithData_semantic_vectorCount_componentType_componentCount_dataOffset_dataStride_(VFXMeshSource, v152, v135, v139, v143, v147, v151, 0, 0);
            v157 = objc_msgSend_semantic(v103, v154, v155, v156);
            objc_msgSend_isEqualToString_(v157, v158, @"kGeometrySourceSemanticPosition", v159);
            objc_msgSend_addObject_(v238, v160, v153, v161);
          }

          v241 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v99, &v252, v274, 16);
        }

        while (v241);
      }

      v162 = 0;
      v163 = 0;
      v164 = v25 - v246;
      do
      {
        if (v31[v163] > v163)
        {
          v165 = sub_1AF0D5194();
          if (os_log_type_enabled(v165, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDFB1FC(v272, &v273, v165);
          }
        }

        if (v163 != v31[v163])
        {
          ++v162;
          if (!v163)
          {
            v166 = sub_1AF0D5194();
            if (os_log_type_enabled(v166, OS_LOG_TYPE_FAULT))
            {
              sub_1AFDFB240(v270, &v271, v166);
            }
          }
        }

        if (v31[v163] > v163)
        {
          v167 = sub_1AF0D5194();
          if (os_log_type_enabled(v167, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDFB284(v268, &v269, v167);
          }
        }

        v232[v163] = v163 - v162;
        v31[v163] = v232[v31[v163]];
        if (v232[v163] >= v164)
        {
          v168 = sub_1AF0D5194();
          if (os_log_type_enabled(v168, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDFB2C8(v266, &v267, v168);
          }
        }

        ++v163;
      }

      while (v25 != v163);
      if (v162 != v246)
      {
        v169 = sub_1AF0D5194();
        if (os_log_type_enabled(v169, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDFB30C(v169);
        }
      }

      v250 = 0u;
      v251 = 0u;
      v248 = 0u;
      v249 = 0u;
      v239 = objc_msgSend_countByEnumeratingWithState_objects_count_(v234, v99, &v248, v265, 16);
      if (v239)
      {
        v236 = *v249;
        do
        {
          for (m = 0; m != v239; ++m)
          {
            if (*v249 != v236)
            {
              objc_enumerationMutation(v234);
            }

            v174 = *(*(&v248 + 1) + 8 * m);
            v175 = objc_msgSend_bytesPerIndex(v174, v170, v171, v172);
            v179 = objc_msgSend_data(v174, v176, v177, v178);
            v183 = objc_msgSend_bytes(v179, v180, v181, v182);
            v187 = objc_msgSend_indexCount(v174, v184, v185, v186);
            if (objc_msgSend_primitiveType(v174, v188, v189, v190) == 4)
            {
              v194 = objc_msgSend_primitiveCount(v174, v191, v192, v193) * v175;
            }

            else
            {
              v194 = 0;
            }

            v247 = v194;
            v242 = v194 + v187 * v175;
            v245 = malloc_type_malloc(v242, 0x100004077774924uLL);
            if (v187)
            {
              v198 = 0;
              v199 = &v245[v247];
              do
              {
                switch(v175)
                {
                  case 4:
                    v204 = v31[*(v183 + 4 * v198)];
                    *&v199[4 * v198] = v204;
                    if (v164 <= v204)
                    {
                      v205 = sub_1AF0D5194();
                      if (os_log_type_enabled(v205, OS_LOG_TYPE_FAULT))
                      {
                        sub_1AFDFB390(v259, &v260, v205);
                      }
                    }

                    break;
                  case 2:
                    v202 = v31[*(v183 + 2 * v198)];
                    *&v199[2 * v198] = v202;
                    if (v164 <= v202)
                    {
                      v203 = sub_1AF0D5194();
                      if (os_log_type_enabled(v203, OS_LOG_TYPE_FAULT))
                      {
                        sub_1AFDFB3D4(v261, &v262, v203);
                      }
                    }

                    break;
                  case 1:
                    v200 = v31[*(v183 + v198)];
                    v199[v198] = v200;
                    if (v164 <= v200)
                    {
                      v201 = sub_1AF0D5194();
                      if (os_log_type_enabled(v201, OS_LOG_TYPE_FAULT))
                      {
                        sub_1AFDFB418(v263, &v264, v201);
                      }
                    }

                    break;
                }

                ++v198;
              }

              while (v187 != v198);
            }

            if (v247)
            {
              v206 = objc_msgSend_data(v174, v195, v196, v197);
              v210 = objc_msgSend_bytes(v206, v207, v208, v209);
              memcpy(v245, v210, v247);
            }

            v211 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v195, v245, v242, 1);
            v215 = objc_msgSend_primitiveType(v174, v212, v213, v214);
            v219 = objc_msgSend_primitiveCount(v174, v216, v217, v218);
            v221 = objc_msgSend_meshElementWithData_primitiveType_primitiveCount_bytesPerIndex_(VFXMeshElement, v220, v211, v215, v219, v175);
            objc_msgSend_addObject_(v237, v222, v221, v223);
          }

          v239 = objc_msgSend_countByEnumeratingWithState_objects_count_(v234, v170, &v248, v265, 16);
        }

        while (v239);
      }

      selfCopy = objc_msgSend_meshWithSources_elements_(VFXMesh, v170, v238, v237);
      v227 = objc_msgSend_name(v231, v224, v225, v226);
      objc_msgSend_setName_(selfCopy, v228, v227, v229);
      v49 = v232;
    }
  }

  else
  {
    v49 = v26;
  }

  free(v49);
  free(v31);
  return selfCopy;
}

- (id)debugQuickLookObjectWithWorld:(id)world
{
  v5 = objc_msgSend_copy(self, a2, world, v3);
  v8 = objc_msgSend_modelWithMesh_(VFXModel, v6, v5, v7);
  v11 = objc_msgSend_nodeWithModel_(VFXNode, v9, v8, v10);

  return MEMORY[0x1EEE66B58](v11, sel_debugQuickLookObjectWithWorld_, world, v12);
}

- (id)debugQuickLookObject
{
  v5 = objc_msgSend_world(self, a2, v2, v3);

  return MEMORY[0x1EEE66B58](self, sel_debugQuickLookObjectWithWorld_, v5, v6);
}

- (id)debugQuickLookData
{
  v4 = objc_msgSend_debugQuickLookObject(self, a2, v2, v3);

  return UIImagePNGRepresentation(v4);
}

@end