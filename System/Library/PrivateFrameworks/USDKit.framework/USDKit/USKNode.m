@interface USKNode
- (BOOL)clearVariantSelectionForVariantSet:(id)a3;
- (BOOL)editVariant:(id)a3 variantSet:(id)a4 block:(id)a5;
- (BOOL)hasSchemaType:(id)a3;
- (BOOL)hasVariantSet:(id)a3;
- (BOOL)hasVariantSets;
- (BOOL)isEqual:(id)a3;
- (BOOL)removeProperty:(id)a3;
- (BOOL)selectVariant:(id)a3 variantSet:(id)a4;
- (BOOL)setCustomMetadata:(id)a3 value:(id)a4;
- (BOOL)setDictionaryMetadataWithKey:(id)a3 dictionaryKey:(id)a4 value:(id)a5;
- (BOOL)setMetadataWithKey:(id)a3 value:(id)a4;
- (NSArray)schemaTypes;
- (NSDictionary)properties;
- (NSString)type;
- (USKNode)initWithUsdPrim:(UsdPrim *)a3;
- (USKNode)initWithUsdPrim:(UsdPrim *)a3 withSceneOwner:(id)a4;
- (USKToken)typeName;
- (UsdPrim)usdPrim;
- (id).cxx_construct;
- (id)childIterator;
- (id)createUniqueGeomSubset:(id)a3 elementType:(id)a4 indices:(id)a5 familyName:(id)a6 familyType:(id)a7;
- (id)customMetadataWithKey:(id)a3;
- (id)dictionaryMetadataWithKey:(id)a3 dictionaryKey:(id)a4;
- (id)getAllGeomSubsets;
- (id)getGeomSubsetElementTypeAttr;
- (id)getGeomSubsetFamilyName;
- (id)getGeomSubsetIndicesAttr;
- (id)getGeomSubsets:(id)a3 familyName:(id)a4;
- (id)inheritedMaterialBinding;
- (id)inheritedProperty:(id)a3;
- (id)inheritedSkeletonAnimationBinding;
- (id)inheritedSkeletonBinding;
- (id)loadedChildIterator;
- (id)loadedSubtreeIterator;
- (id)masterNode;
- (id)metadata;
- (id)metadataWithKey:(id)a3;
- (id)name;
- (id)newCustomPropertyWithName:(id)a3 type:(id)a4 role:(id)a5;
- (id)newPropertyWithName:(id)a3 type:(id)a4 role:(id)a5 variability:(BOOL)a6;
- (id)parent;
- (id)path;
- (id)property:(id)a3;
- (id)propertyList;
- (id)specifier;
- (id)subtreeIterator;
- (id)variantSets;
- (id)variantsWithVariantSet:(id)a3;
- (unint64_t)hash;
- (void)addReferenceWithPath:(id)a3 nodePath:(id)a4;
- (void)addReferenceWithPath:(id)a3 nodePath:(id)a4 offset:(id)a5;
- (void)addReferenceWithURL:(id)a3 nodePath:(id)a4;
- (void)addVariant:(id)a3 variantSet:(id)a4;
- (void)addVariantSet:(id)a3;
- (void)applyType:(id)a3;
- (void)clearReferences;
- (void)setSpecifier:(id)a3;
@end

@implementation USKNode

- (USKNode)initWithUsdPrim:(UsdPrim *)a3
{
  v9.receiver = self;
  v9.super_class = USKNode;
  v4 = [(USKNode *)&v9 init];
  if (v4 && (sub_27033E778(a3) & 1) != 0)
  {
    v4->_prim._type = a3->_type;
    pointer = a3->_prim._p._pointer;
    if (pointer)
    {
      atomic_fetch_add_explicit(pointer + 6, 1uLL, memory_order_relaxed);
    }

    v6 = v4->_prim._prim._p._pointer;
    if (v6)
    {
      sub_270314574(v6);
    }

    v4->_prim._prim._p._pointer = pointer;
    sub_27032787C(&v4->_prim._proxyPrimPath, &a3->_proxyPrimPath);
    sub_2703278D4(&v4->_prim._proxyPrimPath._primPart._poolHandle + 4, &a3->_proxyPrimPath._primPart._poolHandle + 1);
    sub_270325CAC(&v4->_prim._proxyPrimPath._propPart._poolHandle, &a3->_proxyPrimPath._propPart._poolHandle);
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (USKNode)initWithUsdPrim:(UsdPrim *)a3 withSceneOwner:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = USKNode;
  v8 = [(USKNode *)&v13 init];
  if (v8 && (sub_27033E778(a3) & 1) != 0)
  {
    v8->_prim._type = a3->_type;
    pointer = a3->_prim._p._pointer;
    if (pointer)
    {
      atomic_fetch_add_explicit(pointer + 6, 1uLL, memory_order_relaxed);
    }

    v10 = v8->_prim._prim._p._pointer;
    if (v10)
    {
      sub_270314574(v10);
    }

    v8->_prim._prim._p._pointer = pointer;
    sub_27032787C(&v8->_prim._proxyPrimPath, &a3->_proxyPrimPath);
    sub_2703278D4(&v8->_prim._proxyPrimPath._primPart._poolHandle + 4, &a3->_proxyPrimPath._primPart._poolHandle + 1);
    sub_270325CAC(&v8->_prim._proxyPrimPath._propPart._poolHandle, &a3->_proxyPrimPath._propPart._poolHandle);
    objc_storeStrong(&v8->_prim._propName._rep._ptrAndBits, a4);
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (UsdPrim)usdPrim
{
  p_prim = &self->_prim;
  retstr->_type = self->_prim._type;
  pointer = self->_prim._prim._p._pointer;
  retstr->_prim._p._pointer = pointer;
  if (pointer)
  {
    atomic_fetch_add_explicit(pointer + 6, 1uLL, memory_order_relaxed);
  }

  sub_2703256DC(&retstr->_proxyPrimPath, &self->_prim._proxyPrimPath);
  result = sub_270325728(&retstr->_proxyPrimPath._primPart._poolHandle + 1, &p_prim->_proxyPrimPath._primPart._poolHandle + 1);
  poolHandle = p_prim->_proxyPrimPath._propPart._poolHandle;
  retstr->_proxyPrimPath._propPart._poolHandle = poolHandle;
  if ((poolHandle & 7) != 0 && (atomic_fetch_add_explicit((poolHandle & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    retstr->_proxyPrimPath._propPart._poolHandle = (retstr->_proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8);
  }

  return result;
}

- (id)createUniqueGeomSubset:(id)a3 elementType:(id)a4 indices:(id)a5 familyName:(id)a6 familyType:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v19 = a7;
  if (v12)
  {
    objc_msgSend_token(v12, v16, v17, v18);
    v23 = *&v55[0] & 0xFFFFFFFFFFFFFFF8;
    if ((*&v55[0] & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v24 = *(v23 + 39);
      if (v24 < 0)
      {
        v24 = *(v23 + 24);
      }
    }

    else
    {
      v24 = 0;
    }

    if ((v55[0] & 7) != 0)
    {
      atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_release);
    }

    if (v24 && v13)
    {
      objc_msgSend_token(v13, v20, v21, v22);
      v25 = *&v55[0] & 0xFFFFFFFFFFFFFFF8;
      if ((*&v55[0] & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v26 = *(v25 + 39);
        if (v26 < 0)
        {
          v26 = *(v25 + 24);
        }
      }

      else
      {
        v26 = 0;
      }

      if ((v55[0] & 7) != 0)
      {
        atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_release);
        if (!v26)
        {
          goto LABEL_26;
        }
      }

      else if (!v26)
      {
        goto LABEL_26;
      }

      v57 = 0;
      v58 = 0;
      v59 = 0;
      v27 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v57, &self->_prim);
      v57 = MEMORY[0x277D86740] + 16;
      if (v58 && (*(v58 + 57) & 8) == 0 && ((*(MEMORY[0x277D86740] + 48))(v27) & 1) != 0)
      {
        v28 = v14;
        v32 = objc_msgSend_bytes(v28, v29, v30, v31);
        v36 = objc_msgSend_length(v14, v33, v34, v35);
        v37 = v36 >> 3;
        v56 = 0;
        memset(v55, 0, sizeof(v55));
        sub_27030E054(v55, v36 >> 3);
        if (v36 > 7)
        {
          v41 = 0;
          do
          {
            v42 = *(v32 + 8 * v41);
            sub_270310DE0(v55);
            *(v56 + 4 * v41++) = v42;
          }

          while (v37 != v41);
        }

        memset(v54, 0, sizeof(v54));
        objc_msgSend_token(v12, v38, v39, v40);
        objc_msgSend_token(v13, v43, v44, v45);
        if (v15)
        {
          objc_msgSend_token(v15, v46, v47, v48);
        }

        else
        {
          v51 = 0;
        }

        if (v19)
        {
          objc_msgSend_token(v19, v46, v47, v48);
        }

        else
        {
          v50 = 0;
        }

        pxrInternal__aapl__pxrReserved__::UsdGeomSubset::CreateUniqueGeomSubset();
        if ((v50 & 7) != 0)
        {
          atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v51 & 7) != 0)
        {
          atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v52 & 7) != 0)
        {
          atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v53 & 7) != 0)
        {
          atomic_fetch_add_explicit((v53 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        MEMORY[0x27439E0D0](v54);
        sub_270310E24(v55);
      }

      MEMORY[0x27439E250](&v57);
    }
  }

LABEL_26:

  return 0;
}

- (id)getAllGeomSubsets
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v8, &self->_prim);
  v8 = MEMORY[0x277D86740] + 16;
  if (v9 && (*(v9 + 57) & 8) == 0 && ((*(MEMORY[0x277D86740] + 48))(&v8) & 1) != 0)
  {
    memset(v7, 0, sizeof(v7));
    pxrInternal__aapl__pxrReserved__::UsdGeomSubset::GetAllGeomSubsets();
    v2 = objc_alloc(MEMORY[0x277CBEB18]);
    v5 = objc_msgSend_initWithCapacity_(v2, v3, 0, v4);
    v11 = v7;
    sub_270348338(&v11);
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x27439E250](&v8);

  return v5;
}

- (id)getGeomSubsets:(id)a3 familyName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v20, &self->_prim);
  v20 = MEMORY[0x277D86740] + 16;
  if (!v21 || (*(v21 + 57) & 8) != 0 || ((*(MEMORY[0x277D86740] + 48))(&v20) & 1) == 0)
  {
    v11 = 0;
    goto LABEL_8;
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (!v6)
  {
    v23 = 0;
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  objc_msgSend_token(v6, v8, v9, v10);
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_6:
  objc_msgSend_token(v7, v8, v9, v10);
LABEL_13:
  pxrInternal__aapl__pxrReserved__::UsdGeomSubset::GetGeomSubsets();
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = objc_alloc(MEMORY[0x277CBEB18]);
  v11 = objc_msgSend_initWithCapacity_(v13, v14, 0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 3), v15);
  v23 = &v17;
  sub_270348338(&v23);
LABEL_8:
  MEMORY[0x27439E250](&v20);

  return v11;
}

- (id)getGeomSubsetIndicesAttr
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v2 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v15, &self->_prim);
  v15 = MEMORY[0x277D866F8] + 16;
  if (v16 && (*(v16 + 57) & 8) == 0 && ((*(MEMORY[0x277D866F8] + 48))(v2) & 1) != 0)
  {
    v13 = 0u;
    v14 = 0u;
    pxrInternal__aapl__pxrReserved__::UsdGeomSubset::GetIndicesAttr(&v13, &v15);
    v3 = [USKProperty alloc];
    v8 = v13;
    v9 = *(&v13 + 1);
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 48), 1uLL, memory_order_relaxed);
    }

    sub_2703256DC(&v10, &v14);
    sub_270325728(&v11, &v14 + 1);
    v12 = *(&v14 + 1);
    if ((BYTE8(v14) & 7) != 0 && (atomic_fetch_add_explicit((*(&v14 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 &= 0xFFFFFFFFFFFFFFF8;
    }

    v6 = objc_msgSend_initWithUsdProperty_(v3, v4, &v8, v5);
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v10);
    if (v9)
    {
      sub_270314574(v9);
    }

    if ((BYTE8(v14) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v14 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v14);
    if (*(&v13 + 1))
    {
      sub_270314574(*(&v13 + 1));
    }
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x27439E0D0](&v15);

  return v6;
}

- (id)getGeomSubsetElementTypeAttr
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v2 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v15, &self->_prim);
  v15 = MEMORY[0x277D866F8] + 16;
  if (v16 && (*(v16 + 57) & 8) == 0 && ((*(MEMORY[0x277D866F8] + 48))(v2) & 1) != 0)
  {
    v13 = 0u;
    v14 = 0u;
    pxrInternal__aapl__pxrReserved__::UsdGeomSubset::GetElementTypeAttr(&v13, &v15);
    v3 = [USKProperty alloc];
    v8 = v13;
    v9 = *(&v13 + 1);
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 48), 1uLL, memory_order_relaxed);
    }

    sub_2703256DC(&v10, &v14);
    sub_270325728(&v11, &v14 + 1);
    v12 = *(&v14 + 1);
    if ((BYTE8(v14) & 7) != 0 && (atomic_fetch_add_explicit((*(&v14 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 &= 0xFFFFFFFFFFFFFFF8;
    }

    v6 = objc_msgSend_initWithUsdProperty_(v3, v4, &v8, v5);
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v10);
    if (v9)
    {
      sub_270314574(v9);
    }

    if ((BYTE8(v14) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v14 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v14);
    if (*(&v13 + 1))
    {
      sub_270314574(*(&v13 + 1));
    }
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x27439E0D0](&v15);

  return v6;
}

- (id)getGeomSubsetFamilyName
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v2 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v6, &self->_prim);
  v6 = MEMORY[0x277D866F8] + 16;
  if (v7 && (*(v7 + 57) & 8) == 0 && ((*(MEMORY[0x277D866F8] + 48))(v2) & 1) != 0)
  {
    v4 = 0u;
    v5 = 0u;
    pxrInternal__aapl__pxrReserved__::UsdGeomSubset::GetFamilyNameAttr(&v4, &v6);
    if (sub_27033E778(&v4))
    {
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
    }

    if ((BYTE8(v5) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v5 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v5);
    if (*(&v4 + 1))
    {
      sub_270314574(*(&v4 + 1));
    }
  }

  MEMORY[0x27439E0D0](&v6);

  return 0;
}

- (void)applyType:(id)a3
{
  v4 = a3;
  v37 = 0u;
  v38 = 0;
  LODWORD(v37) = 1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v39 = 0;
  if (objc_msgSend_isEqualToString_(v4, v5, @"SkelBindingAPI", v6))
  {
    pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::Apply(v36, &self->_prim, v7);
    MEMORY[0x27439E2F0](v36);
  }

  else if (objc_msgSend_isEqualToString_(v4, v7, @"Preliminary_AnchoringAPI", v8))
  {
    pxrInternal__aapl__pxrReserved__::UsdInteractivePreliminary_AnchoringAPI::Apply(v35, &self->_prim, v9);
    MEMORY[0x27439E530](v35);
  }

  else if (objc_msgSend_isEqualToString_(v4, v9, @"MaterialBindingAPI", v10))
  {
    pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::Apply(v34, &self->_prim, v11);
    MEMORY[0x27439E470](v34);
  }

  else if (objc_msgSend_isEqualToString_(v4, v11, @"Preliminary_PhysicsColliderAPI", v12))
  {
    pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsColliderAPI::Apply(v33, &self->_prim, v13);
    MEMORY[0x27439E560](v33);
  }

  else if (objc_msgSend_isEqualToString_(v4, v13, @"Preliminary_PhysicsMaterialAPI", v14))
  {
    pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsMaterialAPI::Apply(v32, &self->_prim, v15);
    MEMORY[0x27439E580](v32);
  }

  else if (objc_msgSend_isEqualToString_(v4, v15, @"Preliminary_PhysicsRigidBodyAPI", v16))
  {
    pxrInternal__aapl__pxrReserved__::UsdPhysicsPreliminary_PhysicsRigidBodyAPI::Apply(v31, &self->_prim, v17);
    MEMORY[0x27439E5A0](v31);
  }

  else
  {
    v18 = v4;
    v22 = objc_msgSend_UTF8String(v18, v19, v20, v21);
    MEMORY[0x27439E610](&v30, v22);
    v23 = pxrInternal__aapl__pxrReserved__::UsdPrim::AddAppliedSchema(&self->_prim, &v30);
    if ((v30 & 7) != 0)
    {
      atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v23 & 1) == 0)
    {
      v24 = v4;
      v28 = objc_msgSend_UTF8String(v24, v25, v26, v27);
      sub_27034ADF8(&self->_prim, &v30);
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v30);
      NSLog(&cfstr_CouldNotAddApp.isa, v28, Text);
      sub_27031CBCC(&v30);
    }
  }

  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v38);
  if (*(&v37 + 1))
  {
    sub_270314574(*(&v37 + 1));
  }
}

- (BOOL)hasSchemaType:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_tokenWithSchemaType_(USKToken, v5, v4, v6);
  v11 = v7;
  if (v7)
  {
    objc_msgSend_token(v7, v8, v9, v10);
  }

  else
  {
    v14 = 0;
  }

  TypeFromName = pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::GetTypeFromName(&v14, v8);
  HasAPI = pxrInternal__aapl__pxrReserved__::UsdPrim::HasAPI(&self->_prim, &TypeFromName);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return HasAPI;
}

- (id)metadata
{
  v56[2] = *MEMORY[0x277D85DE8];
  v36 = objc_opt_new();
  v3 = objc_opt_new();
  v51 = 0;
  v52[0] = 0;
  v52[1] = 0;
  pxrInternal__aapl__pxrReserved__::UsdObject::GetAllAuthoredMetadata(&v51, &self->_prim);
  v5 = v51;
  if (v51 != v52)
  {
    v6 = *(MEMORY[0x277D82818] + 64);
    v34 = v6;
    v35 = *MEMORY[0x277D82818];
    v33 = *(MEMORY[0x277D82818] + 72);
    do
    {
      v55 = 0;
      v56[0] = 0;
      v56[1] = 0;
      v7 = sub_27033E814(&v55, v5 + 4);
      v10 = MEMORY[0x277CCACA8];
      if ((v55 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = (v55 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
      }

      if (*(EmptyString + 23) < 0)
      {
        EmptyString = *EmptyString;
      }

      v12 = objc_msgSend_stringWithUTF8String_(v10, v8, EmptyString, v9);
      objc_msgSend_addObject_(v36, v13, v12, v14);

      v50 = 0;
      v15 = atomic_load(off_279E01258);
      if (!v15)
      {
        pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
      }

      __p[0] = 0;
      *&v42 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(v15, v56, __p);
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v50, &v42);
      if ((__p[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v50)
      {
        v16 = [USKData alloc];
        sub_270313C14(v53, v56);
        v37 = v50;
        if ((v50 & 7) != 0 && (atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v37 &= 0xFFFFFFFFFFFFFFF8;
        }

        v18 = objc_msgSend_initWithVtValue_typeName_withNodeOwner_(v16, v17, v53, &v37, self);
        objc_msgSend_addObject_(v3, v19, v18, v20);

        if ((v37 & 7) != 0)
        {
          atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        sub_270311D34(v53);
      }

      else
      {
        v49 = 0;
        v47 = 0u;
        memset(v48, 0, sizeof(v48));
        *v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        memset(v44, 0, sizeof(v44));
        v42 = 0u;
        sub_27031AD44(&v42);
        pxrInternal__aapl__pxrReserved__::operator<<();
        v21 = [USKData alloc];
        std::stringbuf::str();
        MEMORY[0x27439E620](&v41, __p);
        v54[0] = v41;
        v54[1] = &off_288040298 + 1;
        if ((v41 & 7) != 0 && (atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v54[0] &= 0xFFFFFFFFFFFFFFF8;
        }

        v22 = atomic_load(MEMORY[0x277D86578]);
        if (!v22)
        {
          v22 = sub_270318AF4(MEMORY[0x277D86578]);
        }

        pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v38, (v22 + 88));
        v24 = objc_msgSend_initWithVtValue_typeName_withNodeOwner_(v21, v23, v54, &v38, self);
        objc_msgSend_addObject_(v3, v25, v24, v26);

        if ((v38 & 7) != 0)
        {
          atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        sub_270311D34(v54);
        if ((v41 & 7) != 0)
        {
          atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v40 < 0)
        {
          operator delete(__p[0]);
        }

        *&v42 = v35;
        *(&v42 + *(v35 - 24)) = v34;
        *&v43 = v33;
        *(&v43 + 1) = MEMORY[0x277D82878] + 16;
        if (SHIBYTE(v46) < 0)
        {
          operator delete(v45[1]);
        }

        *(&v43 + 1) = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v44);
        std::iostream::~basic_iostream();
        MEMORY[0x27439F390](v48);
      }

      if ((v50 & 7) != 0)
      {
        atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      sub_270311D34(v56);
      if ((v55 & 7) != 0)
      {
        atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v27 = v5[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v5[2];
          v29 = *v28 == v5;
          v5 = v28;
        }

        while (!v29);
      }

      v5 = v28;
    }

    while (v28 != v52);
  }

  v30 = objc_msgSend_dictionaryWithObjects_forKeys_(MEMORY[0x277CBEAC0], v4, v3, v36);
  sub_27033F310(&v51, v52[0]);

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (BOOL)setMetadataWithKey:(id)a3 value:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v26 = 0;
  v8 = v6;
  v12 = objc_msgSend_UTF8String(v8, v9, v10, v11);
  MEMORY[0x27439E610](&v26, v12);
  v31._storage = 0;
  v31._info._ptrAndBits = 0;
  v13 = atomic_load(off_279E01258);
  if (!v13)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
  }

  if (pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsRegistered(v13, &v26, &v31))
  {
    if (!v31._info._ptrAndBits)
    {
      goto LABEL_10;
    }

    Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v31);
    if (v7)
    {
      objc_msgSend_value(v7, v17, v18, v19);
    }

    else
    {
      v29 = 0;
      v30 = 0;
    }

    v22 = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v29);
    sub_270311D34(&v29);
    if (Type != v22)
    {
      v29 = 0;
      v30 = 0;
      if (v7)
      {
        objc_msgSend_value(v7, v14, v15, v16);
      }

      else
      {
        v27[0] = 0;
        v27[1] = 0;
      }

      pxrInternal__aapl__pxrReserved__::VtValue::CastToTypeOf(v28, v27, &v31, v15);
      sub_270312D2C(&v29, v28);
      sub_270311D34(v28);
      sub_270311D34(v27);
      v23 = pxrInternal__aapl__pxrReserved__::UsdObject::SetMetadata(&self->_prim, &v26, &v29);
    }

    else
    {
LABEL_10:
      if (v7)
      {
        objc_msgSend_value(v7, v14, v15, v16);
      }

      else
      {
        v29 = 0;
        v30 = 0;
      }

      v23 = pxrInternal__aapl__pxrReserved__::UsdObject::SetMetadata(&self->_prim, &v26, &v29);
    }

    v21 = v23;
    sub_270311D34(&v29);
  }

  else
  {
    v21 = 0;
  }

  sub_270311D34(&v31);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)setDictionaryMetadataWithKey:(id)a3 dictionaryKey:(id)a4 value:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v40 = 0;
  v11 = v8;
  v15 = objc_msgSend_UTF8String(v11, v12, v13, v14);
  MEMORY[0x27439E610](&v40, v15);
  v39 = 0;
  v16 = v9;
  v20 = objc_msgSend_UTF8String(v9, v17, v18, v19);
  MEMORY[0x27439E610](&v39, v20);
  v43._storage = 0;
  v43._info._ptrAndBits = 0;
  v21 = atomic_load(off_279E01258);
  if (!v21)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
  }

  IsRegistered = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsRegistered(v21, &v40, &v43);
  if (!IsRegistered)
  {
    v23 = 0;
    goto LABEL_37;
  }

  if ((v43._info._ptrAndBits & 4) != 0)
  {
    IsRegistered = (*((v43._info._ptrAndBits & 0xFFFFFFFFFFFFFFF8) + 168))(&v43);
  }

  if ((v39 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(IsRegistered);
  }

  ValueAtPath = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath();
  p_storage = &ValueAtPath->_storage;
  if (ValueAtPath)
  {
    if (&v43 != ValueAtPath)
    {
      if (!ValueAtPath->_info._ptrAndBits)
      {
        if (v43._info._ptrAndBits && (v43._info._ptrAndBits & 3) != 3)
        {
          (*((v43._info._ptrAndBits & 0xFFFFFFFFFFFFFFF8) + 32))(&v43);
        }

        v43._info._ptrAndBits = 0;
        goto LABEL_28;
      }

      v44 = 0;
      v45 = 0;
      sub_270311CD0(&v44, &v43);
      v29 = p_storage[1];
      v30 = ~*p_storage[1].__data;
      v43._info._ptrAndBits = v29;
      if ((v30 & 3) != 0)
      {
        (*((v29 & 0xFFFFFFFFFFFFFFF8) + 24))(p_storage, &v43);
      }

      else
      {
        v43._storage = *p_storage;
      }

      if (v45)
      {
        (*(v45 + 32))(&v44);
      }
    }
  }

  else
  {
    v45 = 0;
    sub_270312D2C(&v43, &v44);
    sub_270311D34(&v44);
  }

  if (v43._info._ptrAndBits)
  {
    Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v43);
    if (v10)
    {
      objc_msgSend_value(v10, v31, v32, v33);
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }

    v35 = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v44);
    sub_270311D34(&v44);
    if (Type != v35)
    {
      v44 = 0;
      v45 = 0;
      if (v10)
      {
        objc_msgSend_value(v10, v25, v26, v27);
      }

      else
      {
        v41[0] = 0;
        v41[1] = 0;
      }

      pxrInternal__aapl__pxrReserved__::VtValue::CastToTypeOf(v42, v41, &v43, v26);
      sub_270312D2C(&v44, v42);
      sub_270311D34(v42);
      sub_270311D34(v41);
      v36 = pxrInternal__aapl__pxrReserved__::UsdObject::SetMetadataByDictKey(&self->_prim, &v40, &v39, &v44);
      goto LABEL_36;
    }
  }

LABEL_28:
  if (v10)
  {
    objc_msgSend_value(v10, v25, v26, v27);
  }

  else
  {
    v44 = 0;
    v45 = 0;
  }

  v36 = pxrInternal__aapl__pxrReserved__::UsdObject::SetMetadataByDictKey(&self->_prim, &v40, &v39, &v44);
LABEL_36:
  v23 = v36;
  sub_270311D34(&v44);
LABEL_37:
  sub_270311D34(&v43);
  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v37 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)setCustomMetadata:(id)a3 value:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v23 = 0;
  v8 = atomic_load(MEMORY[0x277D86540]);
  if (!v8)
  {
    sub_27033E930();
  }

  v9 = *(v8 + 72);
  v23 = v9;
  if ((v9 & 7) != 0)
  {
    v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v10;
    }
  }

  v22 = 0;
  v11 = v6;
  v15 = objc_msgSend_UTF8String(v11, v12, v13, v14);
  MEMORY[0x27439E610](&v22, v15);
  if (v7)
  {
    objc_msgSend_value(v7, v16, v17, v18);
  }

  else
  {
    v24[0] = 0;
    v24[1] = 0;
  }

  v19 = pxrInternal__aapl__pxrReserved__::UsdObject::SetMetadataByDictKey(&self->_prim, &v23, &v22, v24);
  sub_270311D34(v24);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)metadataWithKey:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21 = 0;
  v22 = 0;
  v5 = v4;
  v9 = objc_msgSend_UTF8String(v5, v6, v7, v8);
  MEMORY[0x27439E610](&v19, v9);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetMetadata(&self->_prim, &v19, &v21);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v22)
  {
    v10 = [USKData alloc];
    sub_270313C14(v20, &v21);
    v11 = atomic_load(off_279E01258);
    if (!v11)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
    }

    v16 = 0;
    Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v21);
    v19 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(v11, &Type, &v16);
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v18, &v19);
    v13 = objc_msgSend_initWithVtValue_typeName_withNodeOwner_(v10, v12, v20, &v18, self);
    if ((v18 & 7) != 0)
    {
      atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v16 & 7) != 0)
    {
      atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_270311D34(v20);
  }

  else
  {
    v13 = 0;
  }

  sub_270311D34(&v21);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)dictionaryMetadataWithKey:(id)a3 dictionaryKey:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v29 = 0;
  v30 = 0;
  v8 = v6;
  v12 = objc_msgSend_UTF8String(v8, v9, v10, v11);
  MEMORY[0x27439E610](&v27, v12);
  v13 = v7;
  v17 = objc_msgSend_UTF8String(v7, v14, v15, v16);
  MEMORY[0x27439E610](&Type, v17);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetMetadataByDictKey(&self->_prim, &v27, &Type, &v29);
  if ((Type & 7) != 0)
  {
    atomic_fetch_add_explicit((Type & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v30)
  {
    v18 = [USKData alloc];
    sub_270313C14(v28, &v29);
    v19 = atomic_load(off_279E01258);
    if (!v19)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
    }

    Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v29);
    v24 = 0;
    v27 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(v19, &Type, &v24);
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v25, &v27);
    v21 = objc_msgSend_initWithVtValue_typeName_withNodeOwner_(v18, v20, v28, &v25, self);
    if ((v25 & 7) != 0)
    {
      atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v24 & 7) != 0)
    {
      atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_270311D34(v28);
  }

  else
  {
    v21 = 0;
  }

  sub_270311D34(&v29);

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)customMetadataWithKey:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = 0;
  v23 = 0;
  v5 = atomic_load(MEMORY[0x277D86540]);
  if (!v5)
  {
    sub_27033E930();
  }

  v6 = v4;
  v10 = objc_msgSend_UTF8String(v6, v7, v8, v9);
  MEMORY[0x27439E610](&v20, v10);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetMetadataByDictKey(&self->_prim, (v5 + 72), &v20, &v22);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v23)
  {
    v11 = [USKData alloc];
    sub_270313C14(v21, &v22);
    v12 = atomic_load(off_279E01258);
    if (!v12)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
    }

    v17 = 0;
    Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v22);
    v20 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(v12, &Type, &v17);
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v19, &v20);
    v14 = objc_msgSend_initWithVtValue_typeName_withNodeOwner_(v11, v13, v21, &v19, self);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_270311D34(v21);
  }

  else
  {
    v14 = 0;
  }

  sub_270311D34(&v22);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)addReferenceWithURL:(id)a3 nodePath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetReferences(&v27, &self->_prim);
    v11 = objc_msgSend_relativeString(v6, v8, v9, v10);
    v12 = v11;
    v16 = objc_msgSend_UTF8String(v12, v13, v14, v15);
    sub_2703122D4(__p, v16);
    if (v7)
    {
      objc_msgSend_path(v7, v17, v18, v19);
    }

    else
    {
      v24 = 0;
    }

    pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(v23, 0.0, 1.0);
    pxrInternal__aapl__pxrReserved__::UsdReferences::AddReference();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v24);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v30 & 7) != 0)
    {
      atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetReferences(&v27, &self->_prim);
    sub_2703122D4(__p, "");
    if (v7)
    {
      objc_msgSend_path(v7, v20, v21, v22);
    }

    else
    {
      v24 = 0;
    }

    pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(v23, 0.0, 1.0);
    pxrInternal__aapl__pxrReserved__::UsdReferences::AddReference();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v24);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v30 & 7) != 0)
    {
      atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v29);
  if (v28)
  {
    sub_270314574(v28);
  }
}

- (void)addReferenceWithPath:(id)a3 nodePath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetReferences(&v23, &self->_prim);
    v8 = v6;
    v12 = objc_msgSend_UTF8String(v8, v9, v10, v11);
    sub_2703122D4(__p, v12);
    if (v7)
    {
      objc_msgSend_path(v7, v13, v14, v15);
    }

    else
    {
      v20 = 0;
    }

    pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(v19, 0.0, 1.0);
    pxrInternal__aapl__pxrReserved__::UsdReferences::AddReference();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v20);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v26 & 7) != 0)
    {
      atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetReferences(&v23, &self->_prim);
    sub_2703122D4(__p, "");
    if (v7)
    {
      objc_msgSend_path(v7, v16, v17, v18);
    }

    else
    {
      v20 = 0;
    }

    pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(v19, 0.0, 1.0);
    pxrInternal__aapl__pxrReserved__::UsdReferences::AddReference();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v20);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v26 & 7) != 0)
    {
      atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v25);
  if (v24)
  {
    sub_270314574(v24);
  }
}

- (void)addReferenceWithPath:(id)a3 nodePath:(id)a4 offset:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  __p[0] = 0;
  __p[1] = 0;
  v31 = 0;
  sub_2703122D4(__p, "");
  if (v8)
  {
    v11 = v8;
    v15 = objc_msgSend_UTF8String(v11, v12, v13, v14);
    MEMORY[0x27439F260](__p, v15);
  }

  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetReferences(&v26, &self->_prim);
    if (v9)
    {
      objc_msgSend_path(v9, v16, v17, v18);
    }

    else
    {
      v25 = 0;
    }

    objc_msgSend_sdfLayerOffset(v10, v16, v17, v18);
    v24[0] = v22;
    v24[1] = v23;
    pxrInternal__aapl__pxrReserved__::UsdReferences::AddReference();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v25);
    if ((v29 & 7) != 0)
    {
      atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetReferences(&v26, &self->_prim);
    if (v9)
    {
      objc_msgSend_path(v9, v19, v20, v21);
    }

    else
    {
      v25 = 0;
    }

    pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(v24, 0.0, 1.0);
    pxrInternal__aapl__pxrReserved__::UsdReferences::AddReference();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v25);
    if ((v29 & 7) != 0)
    {
      atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  }

  sub_2703143D8(&v28);
  if (v27)
  {
    sub_270314574(v27);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)clearReferences
{
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetReferences(&v2, &self->_prim);
  MEMORY[0x27439EB40](&v2);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v4);
  if (v3)
  {
    sub_270314574(v3);
  }
}

- (void)addVariantSet:(id)a3
{
  v4 = a3;
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetVariantSets(&v12, &self->_prim);
  v5 = v4;
  v9 = objc_msgSend_UTF8String(v5, v6, v7, v8);
  sub_2703122D4(&v10, v9);
  pxrInternal__aapl__pxrReserved__::UsdVariantSets::AddVariantSet();
  if (v20 < 0)
  {
    operator delete(__p);
  }

  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v17);
  if (v16)
  {
    sub_270314574(v16);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v14);
  if (v13)
  {
    sub_270314574(v13);
  }
}

- (void)addVariant:(id)a3 variantSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetVariantSets(&v32, &self->_prim);
  v8 = v7;
  v12 = objc_msgSend_UTF8String(v8, v9, v10, v11);
  sub_2703122D4(&__p, v12);
  HasVariantSet = pxrInternal__aapl__pxrReserved__::UsdVariantSets::HasVariantSet();
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p);
  }

  if ((BYTE8(v33) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v33 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v33);
  if (*(&v32 + 1))
  {
    sub_270314574(*(&v32 + 1));
  }

  if (HasVariantSet)
  {
    v35 = 0;
    v33 = 0u;
    *v34 = 0u;
    v32 = 0u;
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetVariantSets(&__p, &self->_prim);
    v14 = v7;
    v18 = objc_msgSend_UTF8String(v14, v15, v16, v17);
    sub_2703122D4(&v26, v18);
    pxrInternal__aapl__pxrReserved__::UsdVariantSets::GetVariantSet();
    if (v27 < 0)
    {
      operator delete(v26);
    }

    if ((v31 & 7) != 0)
    {
      atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v30);
    if (v29)
    {
      sub_270314574(v29);
    }

    v19 = v6;
    v23 = objc_msgSend_UTF8String(v19, v20, v21, v22);
    sub_2703122D4(&__p, v23);
    pxrInternal__aapl__pxrReserved__::UsdVariantSet::AddVariant();
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34[0]);
    }

    if ((BYTE8(v33) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v33 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v33);
    if (*(&v32 + 1))
    {
      sub_270314574(*(&v32 + 1));
    }
  }

  else
  {
    v24 = *sub_2703428CC(&self->_prim._type) & 0xFFFFFFFFFFFFFFF8;
    if (v24)
    {
      v25 = (v24 + 16);
      if (*(v24 + 39) < 0)
      {
        v25 = *v25;
      }
    }

    else
    {
      v25 = "";
    }

    NSLog(&cfstr_WarningVariant.isa, v7, v25);
  }
}

- (BOOL)hasVariantSets
{
  MEMORY[0x27439E610](&v4, "variantSetNames");
  result = pxrInternal__aapl__pxrReserved__::UsdObject::HasMetadata(&self->_prim, &v4);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

- (BOOL)hasVariantSet:(id)a3
{
  v4 = a3;
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetVariantSets(&v14, &self->_prim);
  v5 = v4;
  v9 = objc_msgSend_UTF8String(v5, v6, v7, v8);
  sub_2703122D4(&__p, v9);
  HasVariantSet = pxrInternal__aapl__pxrReserved__::UsdVariantSets::HasVariantSet();
  if (v13 < 0)
  {
    operator delete(__p);
  }

  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v16);
  if (v15)
  {
    sub_270314574(v15);
  }

  return HasVariantSet;
}

- (id)variantSets
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetVariantSets(__p, &self->_prim);
  pxrInternal__aapl__pxrReserved__::UsdVariantSets::GetNames(&v16, __p);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v14);
  if (__p[1])
  {
    sub_270314574(__p[1]);
  }

  v6 = v16;
  for (i = v17; v6 != i; v6 += 24)
  {
    __p[1] = 0;
    v14 = 0;
    __p[0] = 0;
    if (*(v6 + 23) < 0)
    {
      sub_2703129A8(__p, *v6, *(v6 + 8));
    }

    else
    {
      v8 = *v6;
      v14 = *(v6 + 16);
      *__p = v8;
    }

    if (v14 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, __p, v5, __p[0], __p[1], v14);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, __p[0], v5, __p[0], __p[1], v14);
    }
    v9 = ;
    objc_msgSend_addObject_(v3, v10, v9, v11);

    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = &v16;
  sub_27033E88C(__p);

  return v3;
}

- (id)variantsWithVariantSet:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = 0;
  v28 = 0u;
  *v29 = 0u;
  v27 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetVariantSets(&v23, &self->_prim);
  v6 = v4;
  v10 = objc_msgSend_UTF8String(v6, v7, v8, v9);
  sub_2703122D4(__p, v10);
  pxrInternal__aapl__pxrReserved__::UsdVariantSets::GetVariantSet();
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v25);
  if (v24)
  {
    sub_270314574(v24);
  }

  pxrInternal__aapl__pxrReserved__::UsdVariantSet::GetVariantNames(&v23, &v27);
  v13 = v23;
  for (i = v24; v13 != i; v13 += 24)
  {
    __p[1] = 0;
    v22 = 0;
    __p[0] = 0;
    if (*(v13 + 23) < 0)
    {
      sub_2703129A8(__p, *v13, *(v13 + 8));
    }

    else
    {
      v15 = *v13;
      v22 = *(v13 + 16);
      *__p = v15;
    }

    if (v22 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, __p, v12, __p[0], __p[1], v22);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, __p[0], v12, __p[0], __p[1], v22);
    }
    v16 = ;
    objc_msgSend_addObject_(v5, v17, v16, v18);

    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = &v23;
  sub_27033E88C(__p);
  v19 = v5;
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[0]);
  }

  if ((BYTE8(v28) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v28 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v28);
  if (*(&v27 + 1))
  {
    sub_270314574(*(&v27 + 1));
  }

  return v19;
}

- (BOOL)selectVariant:(id)a3 variantSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetVariantSets(&v40, &self->_prim);
  v8 = v7;
  v12 = objc_msgSend_UTF8String(v8, v9, v10, v11);
  sub_2703122D4(&__p, v12);
  HasVariantSet = pxrInternal__aapl__pxrReserved__::UsdVariantSets::HasVariantSet();
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p);
  }

  if ((BYTE8(v41) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v41 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v41);
  if (*(&v40 + 1))
  {
    sub_270314574(*(&v40 + 1));
  }

  if (HasVariantSet)
  {
    v43 = 0;
    v41 = 0u;
    *v42 = 0u;
    v40 = 0u;
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetVariantSets(&__p, &self->_prim);
    v14 = v7;
    v18 = objc_msgSend_UTF8String(v14, v15, v16, v17);
    sub_2703122D4(&v34, v18);
    pxrInternal__aapl__pxrReserved__::UsdVariantSets::GetVariantSet();
    if (v35 < 0)
    {
      operator delete(v34);
    }

    if ((v39 & 7) != 0)
    {
      atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v38);
    if (v37)
    {
      sub_270314574(v37);
    }

    v19 = v6;
    v23 = objc_msgSend_UTF8String(v19, v20, v21, v22);
    sub_2703122D4(&__p, v23);
    HasAuthoredVariant = pxrInternal__aapl__pxrReserved__::UsdVariantSet::HasAuthoredVariant();
    v25 = HasAuthoredVariant;
    if (SHIBYTE(v38) < 0)
    {
      operator delete(__p);
      if (v25)
      {
LABEL_16:
        v26 = v6;
        v30 = objc_msgSend_UTF8String(v26, v27, v28, v29);
        sub_2703122D4(&__p, v30);
        pxrInternal__aapl__pxrReserved__::UsdVariantSet::SetVariantSelection();
        if (SHIBYTE(v38) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_25;
      }
    }

    else if (HasAuthoredVariant)
    {
      goto LABEL_16;
    }

    NSLog(&cfstr_WarningVariant_0.isa, v6, v7);
LABEL_25:
    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42[0]);
    }

    if ((BYTE8(v41) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v41 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v41);
    if (*(&v40 + 1))
    {
      sub_270314574(*(&v40 + 1));
    }

    goto LABEL_31;
  }

  v31 = *sub_2703428CC(&self->_prim._type) & 0xFFFFFFFFFFFFFFF8;
  if (v31)
  {
    v32 = (v31 + 16);
    if (*(v31 + 39) < 0)
    {
      v32 = *v32;
    }
  }

  else
  {
    v32 = "";
  }

  NSLog(&cfstr_WarningVariant.isa, v7, v32);
  v25 = 0;
LABEL_31:

  return v25;
}

- (BOOL)editVariant:(id)a3 variantSet:(id)a4 block:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v12 = objc_msgSend_selectVariant_variantSet_(self, v11, v8, v9);
  if (v12)
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    v21 = 0u;
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetVariantSets(&v26, &self->_prim);
    v13 = v9;
    v17 = objc_msgSend_UTF8String(v9, v14, v15, v16);
    sub_2703122D4(__p, v17);
    pxrInternal__aapl__pxrReserved__::UsdVariantSets::GetVariantSet();
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    if ((BYTE8(v27[0]) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v27[0] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(v27);
    if (*(&v26 + 1))
    {
      sub_270314574(*(&v26 + 1));
    }

    v28 = 0;
    memset(v27, 0, sizeof(v27));
    v26 = 0u;
    v20[0] = 0;
    v20[1] = 0;
    pxrInternal__aapl__pxrReserved__::UsdVariantSet::GetVariantEditContext();
    MEMORY[0x27439E150](&v26, __p);
    sub_27036D8C4(__p, v20);
    __p[0] = 0;
    __p[1] = 0;
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(__p, &self->_prim);
    v10[2](v10);
    sub_27036D980(__p, &v26, &v21);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(v22);
    if (*(&v21 + 1))
    {
      sub_270314574(*(&v21 + 1));
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)clearVariantSelectionForVariantSet:(id)a3
{
  v4 = a3;
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetVariantSets(&v23, &self->_prim);
  v5 = v4;
  v9 = objc_msgSend_UTF8String(v5, v6, v7, v8);
  sub_2703122D4(&__p, v9);
  HasVariantSet = pxrInternal__aapl__pxrReserved__::UsdVariantSets::HasVariantSet();
  if ((v21[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }

  if ((BYTE8(v24) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v24 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v24);
  if (*(&v23 + 1))
  {
    sub_270314574(*(&v23 + 1));
  }

  if (HasVariantSet)
  {
    v26 = 0;
    v24 = 0u;
    *v25 = 0u;
    v23 = 0u;
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetVariantSets(&__p, &self->_prim);
    v11 = v4;
    v15 = objc_msgSend_UTF8String(v11, v12, v13, v14);
    sub_2703122D4(&v17, v15);
    pxrInternal__aapl__pxrReserved__::UsdVariantSets::GetVariantSet();
    if (v18 < 0)
    {
      operator delete(v17);
    }

    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(v21);
    if (v20)
    {
      sub_270314574(v20);
    }

    pxrInternal__aapl__pxrReserved__::UsdVariantSet::ClearVariantSelection(&v23);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }

    if ((BYTE8(v24) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v24 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v24);
    if (*(&v23 + 1))
    {
      sub_270314574(*(&v23 + 1));
    }
  }

  return HasVariantSet;
}

- (id)inheritedMaterialBinding
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v12, &self->_prim);
  v12[3] = 0;
  v12[0] = MEMORY[0x277D867B8] + 16;
  v2 = atomic_load(MEMORY[0x277D86568]);
  if (!v2)
  {
    sub_27036663C();
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::ComputeBoundMaterial(v12, v2, 0);
  MEMORY[0x27439E470](v12);
  if (v14 && (*(v14 + 57) & 8) == 0 && (*(v13 + 32))(&v13))
  {
    v3 = [USKNode alloc];
    sub_270347BF8(v8, &v14, &v15);
    v6 = objc_msgSend_initWithUsdPrim_(v3, v4, v8, v5);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v10);
    if (v9)
    {
      sub_270314574(v9);
    }
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x27439E290](&v13);

  return v6;
}

- (id)inheritedSkeletonBinding
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v11, &self->_prim);
  v11[3] = 0;
  v11[0] = MEMORY[0x277D86780] + 16;
  pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::GetInheritedSkeleton(&v12, v11);
  MEMORY[0x27439E2F0](v11);
  if (v13 && (*(v13 + 57) & 8) == 0 && (*(v12 + 32))(&v12))
  {
    v2 = [USKNode alloc];
    sub_270347BF8(v7, &v13, &v14);
    v5 = objc_msgSend_initWithUsdPrim_(v2, v3, v7, v4);
    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v9);
    if (v8)
    {
      sub_270314574(v8);
    }
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x27439E200](&v12);

  return v5;
}

- (id)inheritedSkeletonAnimationBinding
{
  v13 = 0u;
  v14 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v12, &self->_prim);
  v12[3] = 0;
  v12[0] = MEMORY[0x277D86780] + 16;
  pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::GetInheritedAnimationSource(&v13, v12);
  MEMORY[0x27439E2F0](v12);
  if (sub_27033E778(&v13))
  {
    v2 = [USKNode alloc];
    sub_270347BF8(&v8, &v13 + 1, &v14);
    v5 = objc_msgSend_initWithUsdPrim_(v2, v3, &v8, v4);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v10);
    if (v9)
    {
      sub_270314574(v9);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if ((BYTE8(v14) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v14 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v14);
  if (*(&v13 + 1))
  {
    sub_270314574(*(&v13 + 1));
  }

  return v6;
}

- (id)inheritedProperty:(id)a3
{
  v4 = a3;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v22, &self->_prim);
  v22[3] = 0;
  v22[0] = MEMORY[0x277D86790] + 16;
  v5 = v4;
  v9 = objc_msgSend_UTF8String(v5, v6, v7, v8);
  MEMORY[0x27439E610](&v21, v9);
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::FindPrimvarWithInheritance(&v23, v22, &v21);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x27439E330](v22);
  if (pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(&v23, v10))
  {
    v11 = [USKProperty alloc];
    v16 = v23;
    v17 = *(&v23 + 1);
    if (*(&v23 + 1))
    {
      atomic_fetch_add_explicit((*(&v23 + 1) + 48), 1uLL, memory_order_relaxed);
    }

    sub_2703256DC(&v18, &v24);
    sub_270325728(&v19, &v24 + 1);
    v20 = *(&v24 + 1);
    if ((BYTE8(v24) & 7) != 0 && (atomic_fetch_add_explicit((*(&v24 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v20 &= 0xFFFFFFFFFFFFFFF8;
    }

    v13 = objc_msgSend_initWithUsdProperty_withNodeOwner_(v11, v12, &v16, self);
    if ((v20 & 7) != 0)
    {
      atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v18);
    if (v17)
    {
      sub_270314574(v17);
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((BYTE8(v24) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v24 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v24);
  if (*(&v23 + 1))
  {
    sub_270314574(*(&v23 + 1));
  }

  return v14;
}

- (NSDictionary)properties
{
  v12 = *MEMORY[0x277D85DE8];
  memset(v9, 0, sizeof(v9));
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAuthoredProperties();
  sub_270366AC4(&v10);
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = objc_alloc(MEMORY[0x277CBEAC0]);
  v6 = objc_msgSend_initWithObjects_forKeys_(v4, v5, v3, v2);

  *&v10 = v9;
  sub_270366B44(&v10);
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)property:(id)a3
{
  v4 = a3;
  v21 = 0;
  v5 = v4;
  v9 = objc_msgSend_UTF8String(v5, v6, v7, v8);
  MEMORY[0x27439E610](&v21, v9);
  v19 = 0u;
  v20 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetProperty(&v19, &self->_prim, &v21);
  if (sub_27033E778(&v19))
  {
    v10 = [USKProperty alloc];
    v14 = v19;
    v15 = *(&v19 + 1);
    if (*(&v19 + 1))
    {
      atomic_fetch_add_explicit((*(&v19 + 1) + 48), 1uLL, memory_order_relaxed);
    }

    sub_2703256DC(&v16, &v20);
    sub_270325728(&v17, &v20 + 1);
    v18 = *(&v20 + 1);
    if ((BYTE8(v20) & 7) != 0 && (atomic_fetch_add_explicit((*(&v20 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 &= 0xFFFFFFFFFFFFFFF8;
    }

    v12 = objc_msgSend_initWithUsdProperty_withNodeOwner_(v10, v11, &v14, self);
    if ((v18 & 7) != 0)
    {
      atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v16);
    if (v15)
    {
      sub_270314574(v15);
    }
  }

  else
  {
    v12 = 0;
  }

  if ((BYTE8(v20) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v20 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v20);
  if (*(&v19 + 1))
  {
    sub_270314574(*(&v19 + 1));
  }

  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v12;
}

- (BOOL)removeProperty:(id)a3
{
  v4 = a3;
  v17 = 0;
  v5 = v4;
  v9 = objc_msgSend_UTF8String(v5, v6, v7, v8);
  MEMORY[0x27439E610](&v17, v9);
  v15 = 0u;
  v16 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetProperty(&v15, &self->_prim, &v17);
  v10 = sub_27033E778(&v15);
  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::RemoveProperty(&self->_prim, &v17);
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetProperty(&v13, &self->_prim, &v17);
    LODWORD(v15) = v13;
    if (*(&v15 + 1))
    {
      sub_270314574(*(&v15 + 1));
    }

    *(&v15 + 1) = *(&v13 + 1);
    *(&v13 + 1) = 0;
    sub_270325804(&v16, &v14);
    sub_27032585C(&v16 + 4, &v14 + 1);
    if ((BYTE8(v16) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v16 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(&v16 + 1) = *(&v14 + 1);
    *(&v14 + 1) = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v14);
    if (*(&v13 + 1))
    {
      sub_270314574(*(&v13 + 1));
    }

    if (sub_27033E778(&v15))
    {
      if (v15 == 3)
      {
        v13 = 0uLL;
        v14 = 0uLL;
        sub_270340D70(&v15, &v13);
        pxrInternal__aapl__pxrReserved__::UsdAttribute::Block(&v13);
        if ((BYTE8(v14) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v14 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      }

      else
      {
        v13 = 0uLL;
        v14 = 0uLL;
        sub_27034D19C(&v15, &v13);
        memset(v12, 0, sizeof(v12));
        pxrInternal__aapl__pxrReserved__::UsdRelationship::SetTargets();
        v18 = v12;
        sub_270325B58(&v18);
        if ((BYTE8(v14) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v14 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      }

      sub_2703143D8(&v14);
      if (*(&v13 + 1))
      {
        sub_270314574(*(&v13 + 1));
      }
    }
  }

  if ((BYTE8(v16) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v16 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v16);
  if (*(&v15 + 1))
  {
    sub_270314574(*(&v15 + 1));
  }

  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v10;
}

- (id)masterNode
{
  v3 = [USKNode alloc];
  sub_270362340(&self->_prim, &v8);
  v6 = objc_msgSend_initWithUsdPrim_(v3, v4, &v8, v5);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v10);
  if (v9)
  {
    sub_270314574(v9);
  }

  return v6;
}

- (id)specifier
{
  sub_270362468(&self->_prim, a2);
  v3 = USKNodeSpecifierTypeClass;
  v4 = USKNodeSpecifierTypeOver;
  if (v2 != 1)
  {
    v4 = USKNodeSpecifierTypeDefine;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  v5 = *v3;

  return v5;
}

- (void)setSpecifier:(id)a3
{
  v4 = a3;
  if (@"SdfSpecifierDef" == v4 || @"SdfSpecifierOver" == v4 || @"SdfSpecifierClass" == v4)
  {
    sub_270362568(&self->_prim);
  }
}

- (id)newPropertyWithName:(id)a3 type:(id)a4 role:(id)a5 variability:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v14 = objc_msgSend_tokenWithDataType_(USKToken, v12, v10, v13);
  v17 = objc_msgSend_tokenWithRoleType_(USKToken, v15, v11, v16);
  v70 = 0;
  v18 = v9;
  v22 = objc_msgSend_UTF8String(v18, v19, v20, v21);
  MEMORY[0x27439E610](&v70, v22);
  v69 = 0;
  v24 = sub_270363214(&self->_prim, v23);
  pxrInternal__aapl__pxrReserved__::UsdPrimDefinition::GetSchemaPropertySpec(&v69, v24, &v70);
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(&v69))
  {
LABEL_2:
    type = self->_prim._type;
    pointer = self->_prim._prim._p._pointer;
    v46 = pointer;
    if (pointer)
    {
      atomic_fetch_add_explicit(pointer + 6, 1uLL, memory_order_relaxed);
    }

    sub_2703256DC(&v47, &self->_prim._proxyPrimPath);
    sub_270325728(&v48, &self->_prim._proxyPrimPath._primPart._poolHandle + 1);
    poolHandle = self->_prim._proxyPrimPath._propPart._poolHandle;
    v49 = poolHandle;
    if ((poolHandle & 7) != 0 && (atomic_fetch_add_explicit((poolHandle & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v49 &= 0xFFFFFFFFFFFFFFF8;
    }

    if (v14)
    {
      objc_msgSend_token(v14, v26, v27, v28);
      if (v17)
      {
LABEL_9:
        objc_msgSend_token(v17, v26, v27, v28);
        goto LABEL_48;
      }
    }

    else
    {
      v44 = 0;
      if (v17)
      {
        goto LABEL_9;
      }
    }

    v43 = 0;
LABEL_48:
    v36 = sub_270362600(&type, v9, &v44, &v43);
    if ((v43 & 7) != 0)
    {
      atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v44 & 7) != 0)
    {
      atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v49 & 7) != 0)
    {
      atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v47);
    v41 = v46;
    if (v46)
    {
      goto LABEL_55;
    }

    goto LABEL_56;
  }

  v30 = sub_270363278(&v69);
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::GetSpecType(v30) == 1)
  {
    v67 = 0u;
    v68 = 0u;
    v31 = sub_270363278(&v69);
    pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetNameToken(&v61, v31);
    v32 = sub_270363278(&v69);
    TypeName = pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetTypeName(v32);
    v33 = sub_270363278(&v69);
    pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetVariability(v33);
    pxrInternal__aapl__pxrReserved__::UsdPrim::CreateAttribute();
    LODWORD(v67) = v62;
    *(&v67 + 1) = v63;
    v63 = 0;
    LODWORD(v68) = v64;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=();
    DWORD1(v68) = v65;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=();
    *(&v68 + 1) = v66;
    v66 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v64);
    if (v63)
    {
      sub_270314574(v63);
    }

    if ((v61 & 7) != 0)
    {
      atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v34 = [USKProperty alloc];
    v55 = v67;
    v56 = *(&v67 + 1);
    if (*(&v67 + 1))
    {
      atomic_fetch_add_explicit((*(&v67 + 1) + 48), 1uLL, memory_order_relaxed);
    }

    sub_2703256DC(&v57, &v68);
    sub_270325728(&v58, &v68 + 1);
    v59 = *(&v68 + 1);
    if ((BYTE8(v68) & 7) != 0 && (atomic_fetch_add_explicit((*(&v68 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v59 &= 0xFFFFFFFFFFFFFFF8;
    }

    v36 = objc_msgSend_initWithUsdProperty_withNodeOwner_(v34, v35, &v55, self);
    if ((v59 & 7) != 0)
    {
      atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v57);
    if (v56)
    {
      sub_270314574(v56);
    }

    if ((BYTE8(v68) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v68 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  }

  else
  {
    v37 = sub_270363278(&v69);
    if (pxrInternal__aapl__pxrReserved__::SdfSpec::GetSpecType(v37) != 8)
    {
      goto LABEL_2;
    }

    v67 = 0u;
    v68 = 0u;
    v38 = sub_270363278(&v69);
    pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetNameToken(&v61, v38);
    pxrInternal__aapl__pxrReserved__::UsdPrim::CreateRelationship(&self->_prim, &v61);
    LODWORD(v67) = v62;
    *(&v67 + 1) = v63;
    v63 = 0;
    LODWORD(v68) = v64;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=();
    DWORD1(v68) = v65;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=();
    *(&v68 + 1) = v66;
    v66 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v64);
    if (v63)
    {
      sub_270314574(v63);
    }

    if ((v61 & 7) != 0)
    {
      atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v39 = [USKProperty alloc];
    v50 = v67;
    v51 = *(&v67 + 1);
    if (*(&v67 + 1))
    {
      atomic_fetch_add_explicit((*(&v67 + 1) + 48), 1uLL, memory_order_relaxed);
    }

    sub_2703256DC(&v52, &v68);
    sub_270325728(&v53, &v68 + 1);
    v54 = *(&v68 + 1);
    if ((BYTE8(v68) & 7) != 0 && (atomic_fetch_add_explicit((*(&v68 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v54 &= 0xFFFFFFFFFFFFFFF8;
    }

    v36 = objc_msgSend_initWithUsdProperty_withNodeOwner_(v39, v40, &v50, self);
    if ((v54 & 7) != 0)
    {
      atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v52);
    if (v51)
    {
      sub_270314574(v51);
    }

    if ((BYTE8(v68) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v68 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  }

  sub_2703143D8(&v68);
  v41 = *(&v67 + 1);
  if (*(&v67 + 1))
  {
LABEL_55:
    sub_270314574(v41);
  }

LABEL_56:
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v69);
  if ((v70 & 7) != 0)
  {
    atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v36;
}

- (id)newCustomPropertyWithName:(id)a3 type:(id)a4 role:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13 = objc_msgSend_tokenWithDataType_(USKToken, v11, v9, v12);
  v16 = objc_msgSend_tokenWithRoleType_(USKToken, v14, v10, v15);
  p_prim = &self->_prim;
  type = p_prim->_type;
  pointer = p_prim->_prim._p._pointer;
  v28 = pointer;
  if (pointer)
  {
    atomic_fetch_add_explicit((pointer + 48), 1uLL, memory_order_relaxed);
  }

  sub_2703256DC(&v29, &p_prim->_proxyPrimPath);
  sub_270325728(&v30, &p_prim->_proxyPrimPath._primPart._poolHandle + 1);
  poolHandle = p_prim->_proxyPrimPath._propPart._poolHandle;
  v31 = poolHandle;
  if ((poolHandle & 7) != 0 && (atomic_fetch_add_explicit((poolHandle & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 = (v31 & 0xFFFFFFFFFFFFFFF8);
  }

  if (v13)
  {
    objc_msgSend_token(v13, v19, v20, v21);
    if (v16)
    {
LABEL_8:
      objc_msgSend_token(v16, v19, v20, v21);
      goto LABEL_11;
    }
  }

  else
  {
    v26 = 0;
    if (v16)
    {
      goto LABEL_8;
    }
  }

  v25 = 0;
LABEL_11:
  v23 = sub_270362600(&type, v8, &v26, &v25);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v29);
  if (v28)
  {
    sub_270314574(v28);
  }

  return v23;
}

- (id)name
{
  v3 = [USKToken alloc];
  v6 = *sub_2703428CC(&self->_prim._type);
  v10 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v10 = v7;
    }
  }

  v8 = objc_msgSend_initWithTfToken_(v3, v4, &v10, v5);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v8;
}

- (id)path
{
  v3 = [USKObjectPath alloc];
  sub_27034ADF8(&self->_prim, &v8);
  v6 = objc_msgSend_initWithSdfPath_(v3, v4, &v8, v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v8);

  return v6;
}

- (id)childIterator
{
  v3 = [USKNodeSiblingIterator alloc];
  v6 = objc_msgSend_initWithPrim_(v3, v4, &self->_prim, v5);

  return v6;
}

- (id)subtreeIterator
{
  v3 = [USKNodeSubtreeIterator alloc];
  v6 = objc_msgSend_initWithPrim_(v3, v4, &self->_prim, v5);

  return v6;
}

- (id)loadedChildIterator
{
  v3 = [USKNodeSiblingIterator alloc];
  v8 = 0;
  v7 = vdupq_n_s64(2uLL);
  v5 = objc_msgSend_initWithPrim_withPredicate_(v3, v4, &self->_prim, &v7);

  return v5;
}

- (id)loadedSubtreeIterator
{
  v3 = [USKNodeSubtreeIterator alloc];
  v8 = 0;
  v7 = vdupq_n_s64(2uLL);
  v5 = objc_msgSend_initWithPrim_withPredicate_(v3, v4, &self->_prim, &v7);

  return v5;
}

- (id)propertyList
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [USKPropertyIterator alloc];
  v11 = 0;
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAuthoredProperties();
  v5 = objc_msgSend_initWithProperties_(v2, v3, v8, v4);
  v9 = v8;
  sub_270366B44(&v9);
  sub_270366AC4(v10);
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSString)type
{
  v10 = 0;
  MEMORY[0x27439E610](&v9, "typeName");
  v11 = 0;
  sub_270366C20(&self->_prim, &v9);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = v10;
  if ((v10 & 7) != 0)
  {
    v5 = v10 & 0xFFFFFFFFFFFFFFF8;
    if ((atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v8 = v5;
    }
  }

  v6 = objc_msgSend_nodeTypeWithTfToken_(USKToken, v3, &v8, v4);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v6;
}

- (USKToken)typeName
{
  v11 = 0;
  MEMORY[0x27439E610](&v10, "typeName");
  v12 = 0;
  sub_270366C20(&self->_prim, &v10);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = [USKToken alloc];
  v9 = v11;
  if ((v11 & 7) != 0)
  {
    v6 = v11 & 0xFFFFFFFFFFFFFFF8;
    if ((atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v9 = v6;
    }
  }

  v7 = objc_msgSend_initWithTfToken_(v3, v4, &v9, v5);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v7;
}

- (NSArray)schemaTypes
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAppliedSchemas(&v16, &self->_prim);
  v6 = v16;
  for (i = v17; v6 != i; ++v6)
  {
    v8 = *v6;
    if ((*v6 & 7) != 0)
    {
      if ((atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v8 &= 0xFFFFFFFFFFFFFFF8;
      }

      v15 = v8;
      if ((v8 & 7) != 0)
      {
        v9 = 0;
        if ((atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v15 &= 0xFFFFFFFFFFFFFFF8;
        }

        goto LABEL_10;
      }
    }

    else
    {
      v15 = *v6;
    }

    v9 = 1;
LABEL_10:
    v10 = objc_msgSend_schemaTypeWithTfToken_(USKToken, v4, &v15, v5);
    v13 = v10;
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v10 != @"Unknown")
    {
      objc_msgSend_addObject_(v3, v11, v10, v12);
    }

    if ((v9 & 1) == 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v18 = &v16;
  sub_270348044(&v18);

  return v3;
}

- (id)parent
{
  v12 = 0u;
  v13 = 0u;
  sub_270363F5C(&self->_prim, &v12);
  if (sub_27033E778(&v12))
  {
    v2 = [USKNode alloc];
    v7 = v12;
    v8 = *(&v12 + 1);
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 48), 1uLL, memory_order_relaxed);
    }

    sub_2703256DC(&v9, &v13);
    sub_270325728(&v10, &v13 + 1);
    v11 = *(&v13 + 1);
    if ((BYTE8(v13) & 7) != 0 && (atomic_fetch_add_explicit((*(&v13 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 &= 0xFFFFFFFFFFFFFFF8;
    }

    v5 = objc_msgSend_initWithUsdPrim_(v2, v3, &v7, v4);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v9);
    if (v8)
    {
      sub_270314574(v8);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((BYTE8(v13) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v13 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v13);
  if (*(&v12 + 1))
  {
    sub_270314574(*(&v12 + 1));
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v9 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    objc_msgSend_usdPrim(v5, v6, v7, v8);
    v9 = self->_prim._type == v11 && self->_prim._prim._p._pointer == v12 && self->_prim._proxyPrimPath._primPart._poolHandle == v13 && (v14 ^ self->_prim._proxyPrimPath._propPart._poolHandle) < 8;
    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v13);
    if (v12)
    {
      sub_270314574(v12);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3[0] = 0;
  v3[1] = 0;
  sub_270357834(v3, &self->_prim, &self->_prim._prim._p._pointer, &self->_prim._proxyPrimPath, &self->_prim._proxyPrimPath._propPart._poolHandle);
  return bswap64(0x9E3779B97F4A7C55 * v3[0]);
}

- (id).cxx_construct
{
  p_prim = &self->_prim;
  self->_prim._type = 1;
  self->_prim._prim._p._pointer = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  p_prim->_proxyPrimPath._propPart._poolHandle = 0;
  return self;
}

@end