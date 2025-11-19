@interface USKUtility
+ (BOOL)isSceneGraphNode:(id)a3;
+ (BOOL)isShaderOutputProperty:(id)a3;
+ (BOOL)isTransformNode:(id)a3;
+ (__n128)localTransformWithNode:(void *)a3 time:;
+ (__n128)worldTransformWithNode:(uint64_t)a3 time:(void *)a4;
+ (id)USDPreviewSurfaceDefaults;
+ (id)bufferMaterialPropertiesWithMaterial:(id)a3;
+ (id)constantMaterialPropertiesWithMaterial:(id)a3;
+ (id)firstUVMeshAttributeNameInMaterial:(id)a3;
+ (id)localTransformOperationWithNode:(id)a3 time:(double)a4;
+ (id)meshGroupsWithNode:(id)a3;
+ (id)meshUniqueAndTriangulate:(id)a3 names:(id)a4;
+ (id)shaderNodeType:(id)a3;
+ (id)targetPropertyWithProperty:(id)a3;
+ (id)textureMaterialPropertiesWithMaterial:(id)a3;
+ (id)transformKeyTimesWithNode:(id)a3;
+ (void)setLocalTransformOperationWithNode:(id)a3 op:(id)a4 time:(double)a5;
+ (void)setLocalTransformWithNode:(uint64_t)a1 transform:(uint64_t)a2 time:(void *)a3;
@end

@implementation USKUtility

+ (id)localTransformOperationWithNode:(id)a3 time:(double)a4
{
  v5 = a3;
  v9 = v5;
  if (v5)
  {
    v29._propName._rep._ptrAndBits = 0;
    v30 = 0;
    v31 = 0;
    objc_msgSend_usdPrim(v5, v6, v7, v8);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v29._propName, &v29);
    v29._propName._rep._ptrAndBits = (MEMORY[0x277D86748] + 16);
    if ((v29._proxyPrimPath._propPart._poolHandle & 7) != 0)
    {
      atomic_fetch_add_explicit((v29._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v29._proxyPrimPath);
    if (v29._prim._p._pointer)
    {
      sub_270314574(v29._prim._p._pointer);
    }

    v28 = 0;
    pxrInternal__aapl__pxrReserved__::UsdGeomXformable::GetOrderedXformOps(&v29._type, &v29._propName, &v28);
    v12 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v10, 0xF0F0F0F0F0F0F0F1 * ((v29._prim._p._pointer - *&v29._type) >> 3), v11);
    v13 = *&v29._type;
    for (i = v29._prim._p._pointer; v13 != i; v13 += 136)
    {
      v15 = [USKXFormOp alloc];
      sub_270347A3C(v26, v13);
      v16 = *(v13 + 128);
      v27 = *(v13 + 132);
      v26[32] = v16;
      v19 = objc_msgSend_initWithOperation_atTime_(v15, v17, v26, v18, a4);
      sub_270314308(v26);
      objc_msgSend_addObject_(v12, v20, v19, v21);
    }

    v22 = [USKXForm alloc];
    v24 = objc_msgSend_initWithOperations_resetsStack_(v22, v23, v12, v28);

    v32 = &v29;
    sub_270348098(&v32);
    MEMORY[0x27439E280](&v29._propName);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (void)setLocalTransformOperationWithNode:(id)a3 op:(id)a4 time:(double)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v10 = a4;
  if (v6)
  {
    v33._propName._rep._ptrAndBits = 0;
    v34 = 0;
    v35 = 0;
    objc_msgSend_usdPrim(v6, v7, v8, v9);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v33._propName, &v33);
    v33._propName._rep._ptrAndBits = (MEMORY[0x277D86748] + 16);
    if ((v33._proxyPrimPath._propPart._poolHandle & 7) != 0)
    {
      atomic_fetch_add_explicit((v33._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v33._proxyPrimPath);
    if (v33._prim._p._pointer)
    {
      sub_270314574(v33._prim._p._pointer);
    }

    if (v34 && (*(v34 + 57) & 8) == 0 && (*(v33._propName._rep._ptrAndBits + 4))(&v33._propName))
    {
      objc_msgSend_resetsStack(v10, v11, v12, v13);
      pxrInternal__aapl__pxrReserved__::UsdGeomXformable::SetResetXformStack(&v33._propName);
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v17 = objc_msgSend_operations(v10, v14, v15, v16);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v29, v36, 16);
      if (v19)
      {
        v20 = *v30;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v30 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v29 + 1) + 8 * i);
            pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v27, &v33._propName);
            v27[0] = MEMORY[0x277D86748] + 16;
            objc_msgSend_addToXformable_(v22, v23, v27, v24);
            sub_270314308(v28);
            MEMORY[0x27439E280](v27);
          }

          v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v25, &v29, v36, 16);
        }

        while (v19);
      }
    }

    MEMORY[0x27439E280](&v33._propName);
  }

  v26 = *MEMORY[0x277D85DE8];
}

+ (__n128)localTransformWithNode:(void *)a3 time:
{
  v3 = a3;
  v7 = v3;
  if (v3)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    objc_msgSend_usdPrim(v3, v4, v5, v6);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v15, v14);
    v15 = MEMORY[0x277D86748] + 16;
    if ((v14[24] & 7) != 0)
    {
      atomic_fetch_add_explicit((*&v14[24] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v14[16]);
    if (*&v14[8])
    {
      sub_270314574(*&v14[8]);
    }

    memset(v14, 0, sizeof(v14));
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v14, 1.0);
    if (v16 && (*(v16 + 57) & 8) == 0 && (*(v15 + 32))(&v15))
    {
      MEMORY[0x27439E260](v13, &v15);
      pxrInternal__aapl__pxrReserved__::UsdGeomXformable::XformQuery::GetLocalTransformation();
      v18 = v13;
      sub_270348098(&v18);
    }

    memset(v13, 0, sizeof(v13));
    MEMORY[0x27439DFB0](v13, v14);
    v12 = v13[0];
    MEMORY[0x27439E280](&v15);
  }

  else
  {
    v11 = *(MEMORY[0x277D860B8] + 16);
    v12 = *MEMORY[0x277D860B8];
    v9 = *(MEMORY[0x277D860B8] + 48);
    v10 = *(MEMORY[0x277D860B8] + 32);
  }

  return v12;
}

+ (void)setLocalTransformWithNode:(uint64_t)a1 transform:(uint64_t)a2 time:(void *)a3
{
  v3 = a3;
  v7 = v3;
  if (v3)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    objc_msgSend_usdPrim(v3, v4, v5, v6);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v14, v10);
    v14 = MEMORY[0x277D86748] + 16;
    if ((v10[24] & 7) != 0)
    {
      atomic_fetch_add_explicit((*&v10[24] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v10[16]);
    if (*&v10[8])
    {
      sub_270314574(*&v10[8]);
    }

    if (v15 && (*(v15 + 57) & 8) == 0 && (*(v14 + 32))(&v14))
    {
      v13 = 0;
      pxrInternal__aapl__pxrReserved__::UsdGeomXformable::GetOrderedXformOps(v12, &v14, &v13);
      v11 = 0;
      memset(v10, 0, sizeof(v10));
      v8 = v12[0];
      if (v12[1] == v12[0])
      {
        pxrInternal__aapl__pxrReserved__::UsdGeomXformable::AddTransformOp();
      }

      else
      {
        sub_270347A3C(v10, v12[0]);
        v9 = *(v8 + 128);
        BYTE4(v11) = *(v8 + 132);
        LODWORD(v11) = v9;
      }

      sub_2703403F0(v10);
      sub_270314308(v10);
      *v10 = v12;
      sub_270348098(v10);
    }

    MEMORY[0x27439E280](&v14);
  }
}

+ (__n128)worldTransformWithNode:(uint64_t)a3 time:(void *)a4
{
  v5 = a4;
  v9 = v5;
  v19 = a1;
  memset(&v18, 0, 32);
  if (v5)
  {
    objc_msgSend_usdPrim(v5, v6, v7, v8);
  }

  memset(v17, 0, sizeof(v17));
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v17, &v18);
  v17[0] = MEMORY[0x277D86740] + 16;
  if (sub_27033E778(&v18))
  {
    memset(v16, 0, sizeof(v16));
    pxrInternal__aapl__pxrReserved__::UsdGeomImageable::ComputeLocalToWorldTransform();
    MEMORY[0x27439DFB0](&v15, v16);
    v14 = v15;
  }

  else
  {
    v13 = *(MEMORY[0x277D860B8] + 16);
    v14 = *MEMORY[0x277D860B8];
    v11 = *(MEMORY[0x277D860B8] + 32);
    v10 = *(MEMORY[0x277D860B8] + 48);
  }

  MEMORY[0x27439E250](v17);
  if ((v18._proxyPrimPath._propPart._poolHandle & 7) != 0)
  {
    atomic_fetch_add_explicit((v18._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v18._proxyPrimPath);
  if (v18._prim._p._pointer)
  {
    sub_270314574(v18._prim._p._pointer);
  }

  return v14;
}

+ (id)transformKeyTimesWithNode:(id)a3
{
  v22[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v7 = v3;
  if (v3)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    objc_msgSend_usdPrim(v3, v4, v5, v6);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v18, &v14);
    v18 = MEMORY[0x277D86748] + 16;
    if ((v14._proxyPrimPath._propPart._poolHandle & 7) != 0)
    {
      atomic_fetch_add_explicit((v14._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v14._proxyPrimPath);
    if (v14._prim._p._pointer)
    {
      sub_270314574(v14._prim._p._pointer);
    }

    if (v19 && (*(v19 + 57) & 8) == 0 && (*(v18 + 32))(&v18))
    {
      __p = 0;
      v16 = 0;
      v17 = 0;
      pxrInternal__aapl__pxrReserved__::UsdGeomXformable::GetTimeSamples();
      memset(&v14, 0, sizeof(v14));
      v21 = 0;
      v22[0] = &v21;
      sub_2703301D4(&v14, (v16 - __p) >> 3, v22);
      v8 = __p;
      if (v16 != __p)
      {
        v9 = 0;
        do
        {
          v10 = v8[v9];
          sub_270330518(&v14);
          *(v14._propName._rep._ptrAndBits + v9++) = v10;
          v8 = __p;
        }

        while (v9 < (v16 - __p) >> 3);
      }

      v11 = [USKData alloc];
      v22[2] = &off_288041348;
      sub_27032FBF4();
    }

    MEMORY[0x27439E280](&v18);
  }

  v12 = *MEMORY[0x277D85DE8];

  return 0;
}

+ (BOOL)isSceneGraphNode:(id)a3
{
  v3 = a3;
  v7 = v3;
  if (v3)
  {
    *v15 = 0u;
    v16 = 0u;
    objc_msgSend_usdPrim(v3, v4, v5, v6);
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(0, v8);
    v9 = MEMORY[0x18];
    v10 = MEMORY[0x27439E610](&v14, "");
    v11 = v14 ^ *v9;
    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v11 >= 8)
    {
      pxrInternal__aapl__pxrReserved__::UsdGeomImageable::_GetStaticTfType(v10);
      pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
      IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
    }

    else
    {
      IsA = 1;
    }

    if ((BYTE8(v16) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v16 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v16);
    if (v15[1])
    {
      sub_270314574(v15[1]);
    }
  }

  else
  {
    IsA = 0;
  }

  return IsA;
}

+ (BOOL)isTransformNode:(id)a3
{
  v3 = a3;
  v7 = v3;
  if (v3)
  {
    v8 = objc_msgSend_usdPrim(v3, v4, v5, v6);
    pxrInternal__aapl__pxrReserved__::UsdGeomXformable::_GetStaticTfType(v8);
    pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
    IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v12);
    if (v11)
    {
      sub_270314574(v11);
    }
  }

  else
  {
    IsA = 0;
  }

  return IsA;
}

+ (BOOL)isShaderOutputProperty:(id)a3
{
  v3 = a3;
  v7 = v3;
  if (v3)
  {
    objc_msgSend_usdProperty(v3, v4, v5, v6);
    v8 = v18 == 3;
    if ((BYTE8(v19) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v19 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    v8 = 0;
    v18 = 0u;
    v19 = 0u;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v19);
  if (*(&v18 + 1))
  {
    sub_270314574(*(&v18 + 1));
  }

  if (!v8)
  {
    goto LABEL_25;
  }

  v18 = 0u;
  v19 = 0u;
  if (v7)
  {
    objc_msgSend_usdProperty(v7, v9, v10, v11);
  }

  else
  {
    v16 = 0uLL;
    v17 = 0uLL;
  }

  sub_270340D70(&v16, &v18);
  if ((BYTE8(v17) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v17 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v17);
  if (*(&v16 + 1))
  {
    sub_270314574(*(&v16 + 1));
  }

  v16 = 0u;
  v17 = 0u;
  MEMORY[0x27439E190](&v16, &v18);
  IsOutput = pxrInternal__aapl__pxrReserved__::UsdShadeOutput::IsOutput(&v16, v12);
  if ((BYTE8(v17) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v17 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v17);
  if (*(&v16 + 1))
  {
    sub_270314574(*(&v16 + 1));
  }

  if ((BYTE8(v19) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v19 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v19);
  if (*(&v18 + 1))
  {
    sub_270314574(*(&v18 + 1));
  }

  if (IsOutput)
  {
    v14 = 1;
  }

  else
  {
LABEL_25:
    v14 = 0;
  }

  return v14;
}

+ (id)shaderNodeType:(id)a3
{
  v3 = a3;
  v7 = v3;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (v3)
  {
    objc_msgSend_usdPrim(v3, v4, v5, v6);
  }

  else
  {
    memset(&v10, 0, 32);
  }

  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v11, &v10);
  v11 = MEMORY[0x277D86708] + 16;
  if ((v10._proxyPrimPath._propPart._poolHandle & 7) != 0)
  {
    atomic_fetch_add_explicit((v10._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v10._proxyPrimPath);
  if (v10._prim._p._pointer)
  {
    sub_270314574(v10._prim._p._pointer);
  }

  if (v12 && (*(v12 + 57) & 8) == 0 && (*(v11 + 32))(&v11))
  {
    memset(&v10, 0, 32);
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetIdAttr(&v10._type, &v11);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
  }

  v8 = @"Unknown";
  MEMORY[0x27439E1B0](&v11);

  return v8;
}

+ (id)constantMaterialPropertiesWithMaterial:(id)a3
{
  v3 = a3;
  v7 = objc_opt_new();
  v63._propName._rep._ptrAndBits = 0;
  v64 = 0;
  v65 = 0;
  if (v3)
  {
    objc_msgSend_usdPrim(v3, v4, v5, v6);
  }

  else
  {
    memset(&v63, 0, 32);
  }

  sub_2703417C4(&v63, &v63._propName);
  if ((v63._proxyPrimPath._propPart._poolHandle & 7) != 0)
  {
    atomic_fetch_add_explicit((v63._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v63._proxyPrimPath);
  if (v63._prim._p._pointer)
  {
    sub_270314574(v63._prim._p._pointer);
  }

  if (v64 && (*(v64 + 57) & 8) == 0 && (*(v63._propName._rep._ptrAndBits + 4))(&v63._propName))
  {
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInputs(&v63._propName);
    v8 = v62;
    if (v61 != v62)
    {
      v9 = v61 + 16;
      while (1)
      {
        memset(&v63, 0, 32);
        v10 = v9 - 16;
        v63._type = *(v9 - 16);
        v11 = *(v9 - 8);
        v63._prim._p._pointer = v11;
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 48), 1uLL, memory_order_relaxed);
        }

        sub_2703256DC(&v63._proxyPrimPath, v9);
        sub_270325728(&v63._proxyPrimPath._primPart._poolHandle + 1, (v9 + 4));
        v12 = *(v9 + 8);
        v63._proxyPrimPath._propPart._poolHandle = v12;
        if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v63._proxyPrimPath._propPart._poolHandle = (v63._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8);
        }

        v59 = 0u;
        v60 = 0u;
        sub_270341294(&v63, &v59);
        if (!sub_27033E778(&v59))
        {
          goto LABEL_90;
        }

        if ((pxrInternal__aapl__pxrReserved__::UsdShadeOutput::IsOutput(&v59, v13) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&v59))
        {
          v51 = 0;
          v52 = 0;
          v53 = 0;
          sub_270347BF8(&v50, &v59 + 1, &v60);
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v51, &v50);
          v51 = MEMORY[0x277D86708] + 16;
          if ((v50._proxyPrimPath._propPart._poolHandle & 7) != 0)
          {
            atomic_fetch_add_explicit((v50._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          sub_2703143D8(&v50._proxyPrimPath);
          if (v50._prim._p._pointer)
          {
            sub_270314574(v50._prim._p._pointer);
          }

          if (v52 && (*(v52 + 57) & 8) == 0 && (*(v51 + 32))(&v51))
          {
            memset(&v50, 0, 32);
            MEMORY[0x27439E610](&v45, "fallback");
            pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v46, &v51, &v45);
            v50._type = v46;
            v50._prim._p._pointer = v47;
            if (v47)
            {
              atomic_fetch_add_explicit((v47 + 48), 1uLL, memory_order_relaxed);
            }

            sub_2703256DC(&v50._proxyPrimPath, &v48);
            sub_270325728(&v50._proxyPrimPath._primPart._poolHandle + 1, &v48 + 1);
            v50._proxyPrimPath._propPart._poolHandle = v49;
            if ((v49 & 7) != 0 && (atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v50._proxyPrimPath._propPart._poolHandle = (v50._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8);
            }

            if ((v49 & 7) != 0)
            {
              atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            sub_2703143D8(&v48);
            if (v47)
            {
              sub_270314574(v47);
            }

            if ((v45 & 7) != 0)
            {
              atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if (sub_27033E778(&v50))
            {
              BaseName = pxrInternal__aapl__pxrReserved__::UsdProperty::GetBaseName(&v46, &v59);
              if ((v46 & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                EmptyString = (v46 & 0xFFFFFFFFFFFFFFF8) + 16;
              }

              else
              {
                EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(BaseName);
              }

              if (*(EmptyString + 23) < 0)
              {
                sub_2703129A8(__p, *EmptyString, *(EmptyString + 8));
              }

              else
              {
                v27 = *EmptyString;
                v44 = *(EmptyString + 16);
                *__p = v27;
              }

              v28 = sub_270341E10(&v50, __p);
              if (SHIBYTE(v44) < 0)
              {
                operator delete(__p[0]);
              }

              if ((v46 & 7) != 0)
              {
                atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if (v28)
              {
                v39 = v7;
                v41 = v3;
                v46 = 0;
                v47 = 0;
                v48 = 0;
                v29 = sub_2703428CC(&v63);
                if ((*v29 & 0xFFFFFFFFFFFFFFF8) != 0)
                {
                  v30 = (*v29 & 0xFFFFFFFFFFFFFFF8) + 16;
                }

                else
                {
                  v30 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v29);
                }

                if (*(v30 + 23) >= 0)
                {
                  v31 = *(v30 + 23);
                }

                else
                {
                  v31 = *(v30 + 8);
                }

                v47 = 0;
                v48 = 0;
                v46 = 0;
                sub_2703481F4(&v46, v31 + 9);
                if (v48 >= 0)
                {
                  v34 = &v46;
                }

                else
                {
                  v34 = v46;
                }

                if (v31)
                {
                  if (*(v30 + 23) >= 0)
                  {
                    v35 = v30;
                  }

                  else
                  {
                    v35 = *v30;
                  }

                  memmove(v34, v35, v31);
                }

                strcpy(v34 + v31, ":fallback");
                if (v48 >= 0)
                {
                  objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, &v46, v33, v39, v41);
                }

                else
                {
                  objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v46, v33, v39, v41);
                }
                v36 = ;
                v7 = v40;
                v3 = v42;
                objc_msgSend_setObject_forKey_(v40, v37, v28, v36);

                if (SHIBYTE(v48) < 0)
                {
                  operator delete(v46);
                }
              }
            }

            if ((v50._proxyPrimPath._propPart._poolHandle & 7) != 0)
            {
              atomic_fetch_add_explicit((v50._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            sub_2703143D8(&v50._proxyPrimPath);
            if (v50._prim._p._pointer)
            {
              sub_270314574(v50._prim._p._pointer);
            }
          }

          MEMORY[0x27439E1B0](&v51);
          goto LABEL_90;
        }

        v14 = [USKProperty alloc];
        v54 = v59;
        v55 = *(&v59 + 1);
        if (*(&v59 + 1))
        {
          atomic_fetch_add_explicit((*(&v59 + 1) + 48), 1uLL, memory_order_relaxed);
        }

        sub_2703256DC(&v56, &v60);
        sub_270325728(&v57, &v60 + 1);
        v58 = *(&v60 + 1);
        if ((BYTE8(v60) & 7) != 0 && (atomic_fetch_add_explicit((*(&v60 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v58 &= 0xFFFFFFFFFFFFFFF8;
        }

        v17 = objc_msgSend_initWithUsdProperty_(v14, v15, &v54, v16);
        v18 = MEMORY[0x277CCACA8];
        v21 = *sub_2703428CC(&v63) & 0xFFFFFFFFFFFFFFF8;
        if (!v21)
        {
          break;
        }

        v22 = (v21 + 16);
        if ((*(v21 + 39) & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

        objc_msgSend_stringWithUTF8String_(v18, v19, *v22, v20);
        v25 = LABEL_52:;
        objc_msgSend_setObject_forKey_(v7, v26, v17, v25);

        if ((v58 & 7) != 0)
        {
          atomic_fetch_add_explicit((v58 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_2703143D8(&v56);
        if (v55)
        {
          sub_270314574(v55);
        }

LABEL_90:
        if ((BYTE8(v60) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v60 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_2703143D8(&v60);
        if (*(&v59 + 1))
        {
          sub_270314574(*(&v59 + 1));
        }

        if ((v63._proxyPrimPath._propPart._poolHandle & 7) != 0)
        {
          atomic_fetch_add_explicit((v63._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_2703143D8(&v63._proxyPrimPath);
        if (v63._prim._p._pointer)
        {
          sub_270314574(v63._prim._p._pointer);
        }

        v9 += 32;
        if (v10 + 32 == v8)
        {
          goto LABEL_99;
        }
      }

      v22 = "";
LABEL_51:
      objc_msgSend_stringWithUTF8String_(v18, v19, v22, v20);
      goto LABEL_52;
    }

LABEL_99:
    *&v63._type = &v61;
    sub_27034811C(&v63);
  }

  MEMORY[0x27439E1B0](&v63._propName);

  return v7;
}

+ (id)bufferMaterialPropertiesWithMaterial:(id)a3
{
  v3 = a3;
  v7 = objc_opt_new();
  v46._propName._rep._ptrAndBits = 0;
  v47 = 0;
  v48 = 0;
  if (v3)
  {
    objc_msgSend_usdPrim(v3, v4, v5, v6);
  }

  else
  {
    memset(&v46, 0, 32);
  }

  sub_2703417C4(&v46, &v46._propName);
  if ((v46._proxyPrimPath._propPart._poolHandle & 7) != 0)
  {
    atomic_fetch_add_explicit((v46._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v46._proxyPrimPath);
  if (v46._prim._p._pointer)
  {
    sub_270314574(v46._prim._p._pointer);
  }

  if (v47 && (*(v47 + 57) & 8) == 0 && (*(v46._propName._rep._ptrAndBits + 4))(&v46._propName))
  {
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInputs(&v46._propName);
    v8 = v45;
    if (v44 != v45)
    {
      v9 = v44 + 16;
      while (1)
      {
        memset(&v46, 0, 32);
        v10 = v9 - 16;
        v46._type = *(v9 - 16);
        v11 = *(v9 - 8);
        v46._prim._p._pointer = v11;
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 48), 1uLL, memory_order_relaxed);
        }

        sub_2703256DC(&v46._proxyPrimPath, v9);
        sub_270325728(&v46._proxyPrimPath._primPart._poolHandle + 1, (v9 + 4));
        v12 = *(v9 + 8);
        v46._proxyPrimPath._propPart._poolHandle = v12;
        if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v46._proxyPrimPath._propPart._poolHandle = (v46._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8);
        }

        v42 = 0u;
        v43 = 0u;
        sub_270341294(&v46, &v42);
        if (!sub_27033E778(&v42))
        {
          goto LABEL_57;
        }

        v41 = 0;
        sub_270347BF8(&v37, &v42 + 1, &v43);
        sub_270341C94(&v37, &v41);
        if ((v40 & 7) != 0)
        {
          atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_2703143D8(&v39);
        if (v38)
        {
          sub_270314574(v38);
        }

        MEMORY[0x27439E610](&v37, "UsdPrimvarReader_float");
        v13 = v37;
        if ((v37 ^ v41) >= 8)
        {
          MEMORY[0x27439E610](&v36, "UsdPrimvarReader_float2");
          v15 = v36;
          if ((v36 ^ v41) >= 8)
          {
            MEMORY[0x27439E610](&v35, "UsdPrimvarReader_float3");
            v16 = v35;
            if ((v35 ^ v41) >= 8)
            {
              MEMORY[0x27439E610](&v34, "UsdPrimvarReader_float4");
              v14 = (v34 ^ v41) < 8;
              if ((v34 & 7) != 0)
              {
                atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v16 = v35;
            }

            else
            {
              v14 = 1;
            }

            if ((v16 & 7) != 0)
            {
              atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v15 = v36;
          }

          else
          {
            v14 = 1;
          }

          if ((v15 & 7) != 0)
          {
            atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v13 = v37;
        }

        else
        {
          v14 = 1;
        }

        if ((v13 & 7) != 0)
        {
          atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v14)
        {
          break;
        }

LABEL_55:
        if ((v41 & 7) != 0)
        {
          atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

LABEL_57:
        if ((BYTE8(v43) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v43 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_2703143D8(&v43);
        if (*(&v42 + 1))
        {
          sub_270314574(*(&v42 + 1));
        }

        if ((v46._proxyPrimPath._propPart._poolHandle & 7) != 0)
        {
          atomic_fetch_add_explicit((v46._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_2703143D8(&v46._proxyPrimPath);
        if (v46._prim._p._pointer)
        {
          sub_270314574(v46._prim._p._pointer);
        }

        v9 += 32;
        if (v10 + 32 == v8)
        {
          goto LABEL_66;
        }
      }

      v17 = [USKProperty alloc];
      LODWORD(v29) = v42;
      v30 = *(&v42 + 1);
      if (*(&v42 + 1))
      {
        atomic_fetch_add_explicit((*(&v42 + 1) + 48), 1uLL, memory_order_relaxed);
      }

      sub_2703256DC(&v31, &v43);
      sub_270325728(&v32, &v43 + 1);
      v33 = *(&v43 + 1);
      if ((BYTE8(v43) & 7) != 0 && (atomic_fetch_add_explicit((*(&v43 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v33 &= 0xFFFFFFFFFFFFFFF8;
      }

      v20 = objc_msgSend_initWithUsdProperty_(v17, v18, &v29, v19);
      v21 = MEMORY[0x277CCACA8];
      v24 = *sub_2703428CC(&v46) & 0xFFFFFFFFFFFFFFF8;
      if (v24)
      {
        v25 = (v24 + 16);
        if (*(v24 + 39) < 0)
        {
          objc_msgSend_stringWithUTF8String_(v21, v22, *v25, v23, v29);
          v26 = LABEL_51:;
          objc_msgSend_setObject_forKey_(v7, v27, v20, v26);

          if ((v33 & 7) != 0)
          {
            atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          sub_2703143D8(&v31);
          if (v30)
          {
            sub_270314574(v30);
          }

          goto LABEL_55;
        }
      }

      else
      {
        v25 = "";
      }

      objc_msgSend_stringWithUTF8String_(v21, v22, v25, v23, v29);
      goto LABEL_51;
    }

LABEL_66:
    *&v46._type = &v44;
    sub_27034811C(&v46);
  }

  MEMORY[0x27439E1B0](&v46._propName);

  return v7;
}

+ (id)textureMaterialPropertiesWithMaterial:(id)a3
{
  v3 = a3;
  v7 = objc_opt_new();
  v42._propName._rep._ptrAndBits = 0;
  v43 = 0;
  v44 = 0;
  if (v3)
  {
    objc_msgSend_usdPrim(v3, v4, v5, v6);
  }

  else
  {
    memset(&v42, 0, 32);
  }

  sub_2703417C4(&v42, &v42._propName);
  if ((v42._proxyPrimPath._propPart._poolHandle & 7) != 0)
  {
    atomic_fetch_add_explicit((v42._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v42._proxyPrimPath);
  if (v42._prim._p._pointer)
  {
    sub_270314574(v42._prim._p._pointer);
  }

  if (v43 && (*(v43 + 57) & 8) == 0 && (*(v42._propName._rep._ptrAndBits + 4))(&v42._propName))
  {
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInputs(&v42._propName);
    v8 = v41;
    if (v40 != v41)
    {
      v9 = v40 + 16;
      while (1)
      {
        memset(&v42, 0, 32);
        v10 = v9 - 16;
        v42._type = *(v9 - 16);
        v11 = *(v9 - 8);
        v42._prim._p._pointer = v11;
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 48), 1uLL, memory_order_relaxed);
        }

        sub_2703256DC(&v42._proxyPrimPath, v9);
        sub_270325728(&v42._proxyPrimPath._primPart._poolHandle + 1, (v9 + 4));
        v12 = *(v9 + 8);
        v42._proxyPrimPath._propPart._poolHandle = v12;
        if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v42._proxyPrimPath._propPart._poolHandle = (v42._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8);
        }

        v38 = 0u;
        v39 = 0u;
        sub_270341294(&v42, &v38);
        if (!sub_27033E778(&v38))
        {
          goto LABEL_42;
        }

        sub_270347BF8(v33, &v38 + 1, &v39);
        sub_270341C94(v33, &v37);
        MEMORY[0x27439E610](&v32, "UsdUVTexture");
        v13 = v37;
        v14 = v32;
        if ((v32 & 7) != 0)
        {
          atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v37 & 7) != 0)
        {
          atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v36 & 7) != 0)
        {
          atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_2703143D8(&v35);
        if (v34)
        {
          sub_270314574(v34);
        }

        if ((v14 ^ v13) > 7)
        {
          goto LABEL_42;
        }

        v15 = [USKProperty alloc];
        v27 = v38;
        v28 = *(&v38 + 1);
        if (*(&v38 + 1))
        {
          atomic_fetch_add_explicit((*(&v38 + 1) + 48), 1uLL, memory_order_relaxed);
        }

        sub_2703256DC(&v29, &v39);
        sub_270325728(&v30, &v39 + 1);
        v31 = *(&v39 + 1);
        if ((BYTE8(v39) & 7) != 0 && (atomic_fetch_add_explicit((*(&v39 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v31 &= 0xFFFFFFFFFFFFFFF8;
        }

        v18 = objc_msgSend_initWithUsdProperty_(v15, v16, &v27, v17);
        v19 = MEMORY[0x277CCACA8];
        v22 = *sub_2703428CC(&v42) & 0xFFFFFFFFFFFFFFF8;
        if (!v22)
        {
          break;
        }

        v23 = (v22 + 16);
        if ((*(v22 + 39) & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        objc_msgSend_stringWithUTF8String_(v19, v20, *v23, v21);
        v24 = LABEL_38:;
        objc_msgSend_setObject_forKey_(v7, v25, v18, v24);

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

LABEL_42:
        if ((BYTE8(v39) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v39 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_2703143D8(&v39);
        if (*(&v38 + 1))
        {
          sub_270314574(*(&v38 + 1));
        }

        if ((v42._proxyPrimPath._propPart._poolHandle & 7) != 0)
        {
          atomic_fetch_add_explicit((v42._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_2703143D8(&v42._proxyPrimPath);
        if (v42._prim._p._pointer)
        {
          sub_270314574(v42._prim._p._pointer);
        }

        v9 += 32;
        if (v10 + 32 == v8)
        {
          goto LABEL_51;
        }
      }

      v23 = "";
LABEL_37:
      objc_msgSend_stringWithUTF8String_(v19, v20, v23, v21);
      goto LABEL_38;
    }

LABEL_51:
    *&v42._type = &v40;
    sub_27034811C(&v42);
  }

  MEMORY[0x27439E1B0](&v42._propName);

  return v7;
}

+ (id)firstUVMeshAttributeNameInMaterial:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v7 = v3;
  v60._propName._rep._ptrAndBits = 0;
  v61 = 0;
  v62 = 0;
  if (v3)
  {
    objc_msgSend_usdPrim(v3, v4, v5, v6);
  }

  else
  {
    memset(&v60, 0, 32);
  }

  sub_2703417C4(&v60, &v60._propName);
  if ((v60._proxyPrimPath._propPart._poolHandle & 7) != 0)
  {
    atomic_fetch_add_explicit((v60._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v60._proxyPrimPath);
  if (v60._prim._p._pointer)
  {
    sub_270314574(v60._prim._p._pointer);
  }

  if (!v61 || (*(v61 + 57) & 8) != 0 || !(*(v60._propName._rep._ptrAndBits + 4))(&v60._propName))
  {
    v8 = 0;
LABEL_160:
    v8 = v8;
    goto LABEL_161;
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInputs(&v60._propName);
  v42 = v59;
  if (v58 == v59)
  {
    v8 = 0;
LABEL_165:
    *&v60._type = &v58;
    sub_27034811C(&v60);
    goto LABEL_160;
  }

  v8 = 0;
  v9 = v58 + 16;
  while (1)
  {
    memset(&v60, 0, 32);
    v10 = v9 - 16;
    v60._type = *(v9 - 16);
    v11 = *(v9 - 8);
    v60._prim._p._pointer = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 48), 1uLL, memory_order_relaxed);
    }

    sub_2703256DC(&v60._proxyPrimPath, v9);
    sub_270325728(&v60._proxyPrimPath._primPart._poolHandle + 1, (v9 + 4));
    v12 = *(v9 + 8);
    v60._proxyPrimPath._propPart._poolHandle = v12;
    if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v60._proxyPrimPath._propPart._poolHandle = (v60._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8);
    }

    memset(&v57, 0, 32);
    sub_270341294(&v60, &v57);
    if (!sub_27033E778(&v57) || v57._type == v60._type && *&v57._prim._p._pointer == *&v60._prim._p._pointer && (v60._proxyPrimPath._propPart._poolHandle ^ v57._proxyPrimPath._propPart._poolHandle) < 8uLL)
    {
LABEL_141:
      v38 = 1;
      goto LABEL_143;
    }

    v55 = 0u;
    v56 = 0u;
    sub_270347BF8(&v55, &v57._prim, &v57._proxyPrimPath);
    sub_270341C94(&v55, v54);
    MEMORY[0x27439E610](v53, "UsdUVTexture");
    v13 = v54[0];
    v14 = v53[0];
    if ((v53[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v53[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v54[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v54[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v14 ^ v13) > 7)
    {
LABEL_134:
      v37 = 1;
      goto LABEL_136;
    }

    memset(v54, 0, sizeof(v54));
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v51, &v55);
    *&v51 = MEMORY[0x277D86708] + 16;
    MEMORY[0x27439E610](&v49, "st");
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(v53, &v51, &v49);
    LODWORD(v54[0]) = v53[0];
    v54[1] = v53[1];
    if (v53[1])
    {
      atomic_fetch_add_explicit((v53[1] + 48), 1uLL, memory_order_relaxed);
    }

    sub_2703256DC(&v54[2], &v53[2]);
    sub_270325728(&v54[2] + 1, &v53[2] + 1);
    v54[3] = v53[3];
    if ((v53[3] & 7) != 0 && (atomic_fetch_add_explicit((v53[3] & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v54[3] &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v53[3] & 7) != 0)
    {
      atomic_fetch_add_explicit((v53[3] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v53[2]);
    if (v53[1])
    {
      sub_270314574(v53[1]);
    }

    if ((v49 & 7) != 0)
    {
      atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    MEMORY[0x27439E1B0](&v51);
    if (!sub_27033E778(v54))
    {
LABEL_127:
      v36 = 1;
      goto LABEL_129;
    }

    memset(v53, 0, sizeof(v53));
    sub_270341294(v54, v53);
    if (!sub_27033E778(v53) || LODWORD(v53[0]) == LODWORD(v54[0]) && *&v53[1] == *&v54[1] && (v54[3] ^ v53[3]) < 8uLL)
    {
LABEL_120:
      v35 = 1;
      goto LABEL_122;
    }

    v51 = 0u;
    v52 = 0u;
    LODWORD(v51) = 1;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    *(&v52 + 1) = 0;
    v50 = 0u;
    v49 = 0u;
    sub_270347BF8(&v49, &v53[1], &v53[2]);
    v48 = 0;
    sub_270341C94(&v49, &v48);
    MEMORY[0x27439E610](v47, "UsdPrimvarReader_float2");
    v15 = v48;
    v16 = *&v47[0];
    if ((v47[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((*&v47[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v16 ^ v15) > 7)
    {
      MEMORY[0x27439E610](v47, "UsdTransform2d");
      v18 = v48;
      v19 = *&v47[0];
      if ((v47[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*&v47[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v19 ^ v18) <= 7)
      {
        memset(v47, 0, sizeof(v47));
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v46, &v49);
        *&v46[0] = MEMORY[0x277D86708] + 16;
        MEMORY[0x27439E610](__p, "in");
        pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(v47, v46, __p);
        if ((__p[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        MEMORY[0x27439E1B0](v46);
        if (sub_27033E778(v47) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput(v47, v20))
        {
          memset(v46, 0, sizeof(v46));
          sub_270341294(v47, v46);
          if (sub_27033E778(v46) && (LODWORD(v46[0]) != LODWORD(v47[0]) || *(v46 + 8) != *(v47 + 8) || (*(&v47[1] + 1) ^ *(&v46[1] + 1)) >= 8))
          {
            *__p = 0u;
            v45 = 0u;
            sub_270347BF8(__p, v46 + 1, &v46[1]);
            sub_270341C94(__p, &v63);
            MEMORY[0x27439E610](&v43, "UsdPrimvarReader_float2");
            v21 = v63;
            v22 = v43;
            if ((v43 & 7) != 0)
            {
              atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v63 & 7) != 0)
            {
              atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v22 ^ v21) <= 7)
            {
              sub_270347B78(&v51, __p);
            }

            sub_27033B284(__p);
          }

          sub_270340E50(v46);
        }

        if ((BYTE8(v47[1]) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v47[1] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_2703143D8(&v47[1]);
        if (*(&v47[0] + 1))
        {
          sub_270314574(*(&v47[0] + 1));
        }
      }
    }

    else
    {
      LODWORD(v51) = v49;
      v17 = *(&v49 + 1);
      if (*(&v49 + 1))
      {
        atomic_fetch_add_explicit((*(&v49 + 1) + 48), 1uLL, memory_order_relaxed);
      }

      if (*(&v51 + 1))
      {
        sub_270314574(*(&v51 + 1));
      }

      *(&v51 + 1) = v17;
      sub_27032787C(&v52, &v50);
      sub_2703278D4(&v52 + 4, &v50 + 1);
      sub_270325CAC(&v52 + 1, &v50 + 1);
    }

    if (!sub_27033E778(&v51))
    {
LABEL_107:
      v34 = 1;
      goto LABEL_109;
    }

    memset(v47, 0, sizeof(v47));
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v46, &v51);
    *&v46[0] = MEMORY[0x277D86708] + 16;
    MEMORY[0x27439E610](__p, "varname");
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(v47, v46, __p);
    if ((__p[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    MEMORY[0x27439E1B0](v46);
    if (!sub_27033E778(v47) || !pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput(v47, v23))
    {
LABEL_101:
      v33 = 1;
      goto LABEL_102;
    }

    memset(v46, 0, sizeof(v46));
    sub_270341294(v47, v46);
    if (!sub_27033E778(v46))
    {
      goto LABEL_87;
    }

    v63 = 0;
    v64 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
    if (!v64)
    {
      sub_270311D34(&v63);
LABEL_87:
      v28 = 1;
      goto LABEL_96;
    }

    if (sub_270344B44(&v63))
    {
      v24 = MEMORY[0x277CCACA8];
      v25 = sub_270344B7C(&v63);
      if (*(v25 + 23) >= 0)
      {
        goto LABEL_93;
      }
    }

    else
    {
      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v63);
      if (!pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_288040408, v30))
      {
        pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(__p, &v63);
        v39 = __p;
        if (SBYTE7(v45) < 0)
        {
          v39 = __p[0];
        }

        NSLog(&cfstr_WarningInvalid.isa, v39);
        if (SBYTE7(v45) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_95;
      }

      v31 = sub_270344C10(&v63);
      if (&v63 != v31)
      {
        sub_270347CFC(v31, &v63);
      }

      v24 = MEMORY[0x277CCACA8];
      v25 = sub_270344B7C(&v63);
      if (*(v25 + 23) >= 0)
      {
LABEL_93:
        objc_msgSend_stringWithUTF8String_(v24, v26, v25, v27);
        goto LABEL_94;
      }
    }

    objc_msgSend_stringWithUTF8String_(v24, v26, *v25, v27);
    v32 = LABEL_94:;

    v8 = v32;
LABEL_95:
    v8 = v8;
    sub_270311D34(&v63);
    v28 = 0;
LABEL_96:
    if ((BYTE8(v46[1]) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v46[1] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v46[1]);
    if (*(&v46[0] + 1))
    {
      sub_270314574(*(&v46[0] + 1));
    }

    if (v28)
    {
      goto LABEL_101;
    }

    v33 = 0;
LABEL_102:
    if ((BYTE8(v47[1]) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v47[1] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v47[1]);
    if (*(&v47[0] + 1))
    {
      sub_270314574(*(&v47[0] + 1));
    }

    if (v33)
    {
      goto LABEL_107;
    }

    v34 = 0;
LABEL_109:
    if ((v48 & 7) != 0)
    {
      atomic_fetch_add_explicit((v48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((BYTE8(v50) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v50 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v50);
    if (*(&v49 + 1))
    {
      sub_270314574(*(&v49 + 1));
    }

    if ((BYTE8(v52) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v52 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v52);
    if (*(&v51 + 1))
    {
      sub_270314574(*(&v51 + 1));
    }

    if (v34)
    {
      goto LABEL_120;
    }

    v35 = 0;
LABEL_122:
    if ((v53[3] & 7) != 0)
    {
      atomic_fetch_add_explicit((v53[3] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v53[2]);
    if (v53[1])
    {
      sub_270314574(v53[1]);
    }

    if (v35)
    {
      goto LABEL_127;
    }

    v36 = 0;
LABEL_129:
    if ((v54[3] & 7) != 0)
    {
      atomic_fetch_add_explicit((v54[3] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v54[2]);
    if (v54[1])
    {
      sub_270314574(v54[1]);
    }

    if (v36)
    {
      goto LABEL_134;
    }

    v37 = 0;
LABEL_136:
    if ((BYTE8(v56) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v56 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v56);
    if (*(&v55 + 1))
    {
      sub_270314574(*(&v55 + 1));
    }

    if (v37)
    {
      goto LABEL_141;
    }

    v38 = 0;
LABEL_143:
    if ((v57._proxyPrimPath._propPart._poolHandle & 7) != 0)
    {
      atomic_fetch_add_explicit((v57._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v57._proxyPrimPath);
    if (v57._prim._p._pointer)
    {
      sub_270314574(v57._prim._p._pointer);
    }

    if ((v60._proxyPrimPath._propPart._poolHandle & 7) != 0)
    {
      atomic_fetch_add_explicit((v60._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v60._proxyPrimPath);
    if (v60._prim._p._pointer)
    {
      sub_270314574(v60._prim._p._pointer);
    }

    if ((v38 & 1) == 0)
    {
      break;
    }

    v9 += 32;
    if (v10 + 32 == v42)
    {
      goto LABEL_165;
    }
  }

  *&v60._type = &v58;
  sub_27034811C(&v60);
LABEL_161:
  MEMORY[0x27439E1B0](&v60._propName);

  v40 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)USDPreviewSurfaceDefaults
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [USKData alloc];
  v5 = &off_28803FBF8 + 2;
  operator new();
}

+ (id)targetPropertyWithProperty:(id)a3
{
  v3 = a3;
  v7 = v3;
  if (v3)
  {
    objc_msgSend_usdProperty(v3, v4, v5, v6);
    v8 = LODWORD(v23[0]) == 3;
    if ((v23[3] & 7) != 0)
    {
      atomic_fetch_add_explicit((v23[3] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    v8 = 0;
    memset(v23, 0, sizeof(v23));
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v23[2]);
  if (v23[1])
  {
    sub_270314574(v23[1]);
  }

  if (v8)
  {
    memset(v23, 0, sizeof(v23));
    if (v7)
    {
      objc_msgSend_usdProperty(v7, v9, v10, v11);
    }

    else
    {
      memset(v22, 0, sizeof(v22));
    }

    sub_270340D70(v22, v23);
    if ((BYTE8(v22[1]) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v22[1] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v22[1]);
    if (*(&v22[0] + 1))
    {
      sub_270314574(*(&v22[0] + 1));
    }

    memset(v22, 0, sizeof(v22));
    sub_270341294(v23, v22);
    if (LODWORD(v22[0]) == LODWORD(v23[0]) && *(v22 + 8) == *&v23[1] && (v23[3] ^ *(&v22[1] + 1)) < 8)
    {
      v12 = v7;
    }

    else
    {
      v13 = [USKProperty alloc];
      v17 = v22[0];
      v18 = *(&v22[0] + 1);
      if (*(&v22[0] + 1))
      {
        atomic_fetch_add_explicit((*(&v22[0] + 1) + 48), 1uLL, memory_order_relaxed);
      }

      sub_2703256DC(&v19, &v22[1]);
      sub_270325728(&v20, &v22[1] + 1);
      v21 = *(&v22[1] + 1);
      if ((BYTE8(v22[1]) & 7) != 0 && (atomic_fetch_add_explicit((*(&v22[1] + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v21 &= 0xFFFFFFFFFFFFFFF8;
      }

      v12 = objc_msgSend_initWithUsdProperty_(v13, v14, &v17, v15);
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_2703143D8(&v19);
      if (v18)
      {
        sub_270314574(v18);
      }
    }

    if ((BYTE8(v22[1]) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v22[1] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v22[1]);
    if (*(&v22[0] + 1))
    {
      sub_270314574(*(&v22[0] + 1));
    }

    if ((v23[3] & 7) != 0)
    {
      atomic_fetch_add_explicit((v23[3] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v23[2]);
    if (v23[1])
    {
      sub_270314574(v23[1]);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)meshGroupsWithNode:(id)a3
{
  v3 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  memset(&v30, 0, 32);
  if (v3)
  {
    objc_msgSend_usdPrim(v3, v4, v5, v6);
  }

  v28 = 0u;
  v29 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v28, &v30);
  *(&v29 + 1) = 0;
  v27 = 0;
  *&v28 = MEMORY[0x277D867B8] + 16;
  v25 = 0;
  v26 = 0;
  pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::GetMaterialBindSubsets(&v25, &v28);
  v8 = v25;
  for (i = v26; v8 != i; v8 = (v8 + 24))
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v22, v8);
    v22 = (MEMORY[0x277D866F8] + 16);
    v10 = [USKNode alloc];
    sub_270347BF8(&v18, &v23, &v24);
    v13 = objc_msgSend_initWithUsdPrim_(v10, v11, &v18, v12);
    if ((v21 & 7) != 0)
    {
      atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v20);
    if (v19)
    {
      sub_270314574(v19);
    }

    objc_msgSend_addObject_(v7, v14, v13, v15);

    MEMORY[0x27439E0D0](&v22);
  }

  v16 = v7;
  v22 = &v25;
  sub_270348338(&v22);
  MEMORY[0x27439E470](&v28);
  if ((v30._proxyPrimPath._propPart._poolHandle & 7) != 0)
  {
    atomic_fetch_add_explicit((v30._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v30._proxyPrimPath);
  if (v30._prim._p._pointer)
  {
    sub_270314574(v30._prim._p._pointer);
  }

  return v16;
}

+ (id)meshUniqueAndTriangulate:(id)a3 names:(id)a4
{
  v182 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v128 = a4;
  v129 = v5;
  v130 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_msgSend_type(v5, v6, v7, v8);

  if (v9 == @"Mesh")
  {
    memset(&v165, 0, 32);
    if (v5)
    {
      objc_msgSend_usdPrim(v5, v10, v11, v12);
    }

    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v20 = v128;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v161, v181, 16);
    if (v24)
    {
      v25 = 0;
      v26 = *v162;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v162 != v26)
          {
            objc_enumerationMutation(v20);
          }

          v25 |= objc_msgSend_isEqualToString_(*(*(&v161 + 1) + 8 * i), v22, @"points", v23);
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v161, v181, 16);
      }

      while (v24);

      if (v25)
      {
        v160 = 0;
        v159 = 0u;
        memset(v158, 0, sizeof(v158));
        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        v30 = objc_msgSend_property_(v5, v28, @"faceVertexIndices", v29);
        v34 = objc_msgSend_data(v30, v31, v32, v33);
        v38 = v34;
        if (v34)
        {
          objc_msgSend_value(v34, v35, v36, v37);
        }

        else
        {
          v171 = 0;
          v170 = 0;
        }

        sub_270346560(&v170, &v173);
        sub_270310E24(&v158[1]);
        *&v158[1] = v173;
        *&v158[3] = v174;
        v173 = 0u;
        v174 = 0u;
        v158[5] = v175;
        *&v175 = 0;
        sub_270310E24(&v173);
        sub_270311D34(&v170);

        v42 = objc_msgSend_property_(v5, v40, @"faceVertexCounts", v41);
        v46 = objc_msgSend_data(v42, v43, v44, v45);
        v50 = v46;
        if (v46)
        {
          objc_msgSend_value(v46, v47, v48, v49);
        }

        else
        {
          v171 = 0;
          v170 = 0;
        }

        sub_270346560(&v170, &v173);
        sub_270310E24(&v156);
        v156 = v173;
        v157 = v174;
        v173 = 0u;
        v174 = 0u;
        v158[0] = v175;
        *&v175 = 0;
        sub_270310E24(&v173);
        sub_270311D34(&v170);

        v179 = 0;
        v180 = 0;
        v53 = objc_msgSend_property_(v5, v51, @"points", v52);
        v57 = objc_msgSend_data(v53, v54, v55, v56);
        v61 = v57;
        if (v57)
        {
          objc_msgSend_value(v57, v58, v59, v60);
        }

        else
        {
          v179 = 0;
          v180 = 0;
        }

        sub_270313C14(&v173, &v179);
        *&v176 = 0;
        v174 = 0u;
        v175 = 0u;
        MEMORY[0x27439E610](&v176 + 8, "points");
        v62 = atomic_load(MEMORY[0x277D86578]);
        if (!v62)
        {
          v62 = sub_270318AF4(MEMORY[0x277D86578]);
        }

        *&v177 = *(v62 + 83);
        MEMORY[0x27439E610](&v177 + 8, "vertex");
        LODWORD(v178) = 1;
        sub_2703163EC(&v154 + 1, &v173);
        if ((BYTE8(v177) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v177 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((BYTE8(v176) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v176 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        sub_270310E24(&v174);
        sub_270311D34(&v173);
        v151 = 0;
        v152 = 0;
        v153 = 0;
        v147 = 0u;
        v148 = 0u;
        v149 = 0u;
        v150 = 0u;
        v63 = v20;
        v65 = 0;
        v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, &v147, v172, 16);
        if (v68)
        {
          obj = 0;
          v69 = *v148;
          do
          {
            v70 = 0;
            do
            {
              if (*v148 != v69)
              {
                objc_enumerationMutation(v63);
              }

              v71 = *(*(&v147 + 1) + 8 * v70);
              if ((objc_msgSend_isEqualToString_(v71, v66, @"faceVertexIndices", v67) & 1) == 0 && (objc_msgSend_isEqualToString_(v71, v66, @"faceVertexCounts", v67) & 1) == 0 && (objc_msgSend_isEqualToString_(v71, v66, @"points", v67) & 1) == 0)
              {
                if ((objc_msgSend_isEqualToString_(v71, v66, @"normals", v67) & 1) != 0 || objc_msgSend_isEqualToString_(v71, v72, @"primvar:normals", v73))
                {
                  v65 = sub_2703466FC(&v154, v129) ^ 1;
                }

                else if (objc_msgSend_isEqualToString_(v71, v74, @"tangents", v75))
                {
                  obj = !sub_2703467AC(&v154, v129);
                }

                else
                {
                  v76 = v71;
                  if ((objc_msgSend_hasPrefix_(v76, v77, @"primvars:", v78) & 1) == 0)
                  {
                    v81 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v79, @"primvars:%@", v80, v76);

                    v76 = v81;
                  }

                  sub_270345E10(&v154, v129, v76);
                  if (!atomic_load(MEMORY[0x277D86578]))
                  {
                    sub_270318AF4(MEMORY[0x277D86578]);
                  }

                  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
                  {
                    goto LABEL_53;
                  }

                  if (!atomic_load(MEMORY[0x277D86578]))
                  {
                    sub_270318AF4(MEMORY[0x277D86578]);
                  }

                  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
                  {
LABEL_53:
                    v84 = (v155 - 32);
                    v85 = v152;
                    if (v152 >= v153)
                    {
                      v87 = sub_2703484E8(&v151, v84);
                    }

                    else
                    {
                      v86 = *v84;
                      *v152 = *v84;
                      if ((v86 & 7) != 0 && (atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                      {
                        *v85 &= 0xFFFFFFFFFFFFFFF8;
                      }

                      v87 = (v85 + 1);
                    }

                    v152 = v87;
                  }
                }
              }

              ++v70;
            }

            while (v68 != v70);
            v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v66, &v147, v172, 16);
            v68 = v88;
          }

          while (v88);
        }

        else
        {
          obj = 0;
        }

        v145 = 0u;
        v146 = 0u;
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v145, &v165);
        *(&v146 + 1) = 0;
        v144 = 0;
        *&v145 = MEMORY[0x277D867B8] + 16;
        v142 = 0;
        v143 = 0;
        pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::GetMaterialBindSubsets(&v142, &v145);
        if (v142 != v143)
        {
          memset(v141, 0, sizeof(v141));
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(v141, v142);
          v141[0] = MEMORY[0x277D866F8] + 16;
          memset(v140, 0, sizeof(v140));
          pxrInternal__aapl__pxrReserved__::UsdGeomSubset::GetIndicesAttr(v140, v141);
          *&v175 = 0;
          v173 = 0u;
          v174 = 0u;
          pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<int>>();
        }

        v89 = sub_27030E17C(&v154);
        if ((v65 | obj))
        {
          if (v65)
          {
            sub_27031642C(&v154, 0);
          }

          if (obj && v152 != v151)
          {
            v90 = *v151 & 0xFFFFFFFFFFFFFFF8;
            v91 = v90 ? v90 + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v89);
            if (*(v91 + 23) < 0)
            {
              sub_2703129A8(__p, *v91, *(v91 + 8));
            }

            else
            {
              v92 = *v91;
              v139 = *(v91 + 16);
              *__p = v92;
            }

            sub_270317B1C(&v154, 0, __p, 3.1416);
            if (SHIBYTE(v139) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        sub_27036AC10(&v154);
        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        obja = v63;
        v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v93, &v134, v169, 16);
        if (v94)
        {
          v95 = *v135;
          do
          {
            for (j = 0; j != v94; ++j)
            {
              if (*v135 != v95)
              {
                objc_enumerationMutation(obja);
              }

              v97 = *(*(&v134 + 1) + 8 * j);
              v170 = 0;
              v98 = v97;
              v102 = objc_msgSend_UTF8String(v98, v99, v100, v101);
              MEMORY[0x27439E610](&v170, v102);
              v104 = *(&v154 + 1);
              v105 = v155;
              while (1)
              {
                if (v104 == v105)
                {
                  goto LABEL_109;
                }

                v178 = 0;
                v176 = 0u;
                v177 = 0u;
                v174 = 0u;
                v175 = 0u;
                v173 = 0u;
                sub_270313C14(&v173, v104);
                v106 = *(v104 + 32);
                v174 = *(v104 + 16);
                v175 = v106;
                v107 = *(v104 + 48);
                *&v176 = v107;
                if (v107)
                {
                  v108 = (v107 - 16);
                  if (*(&v175 + 1))
                  {
                    v108 = *(&v175 + 1);
                  }

                  atomic_fetch_add_explicit(v108, 1uLL, memory_order_relaxed);
                }

                v109 = *(v104 + 56);
                *(&v176 + 1) = v109;
                if ((v109 & 7) != 0 && (atomic_fetch_add_explicit((v109 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                {
                  *(&v176 + 1) &= 0xFFFFFFFFFFFFFFF8;
                }

                v110 = *(v104 + 72);
                *&v177 = *(v104 + 64);
                *(&v177 + 1) = v110;
                if ((v110 & 7) != 0 && (atomic_fetch_add_explicit((v110 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                {
                  *(&v177 + 1) &= 0xFFFFFFFFFFFFFFF8;
                }

                LODWORD(v178) = *(v104 + 80);
                v111 = *(&v176 + 1);
                if ((v170 ^ *(&v176 + 1)) <= 7)
                {
                  break;
                }

                if ((BYTE8(v177) & 7) != 0)
                {
                  atomic_fetch_add_explicit((*(&v177 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  v111 = *(&v176 + 1);
                }

                if ((v111 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v111 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                sub_270310E24(&v174);
                sub_270311D34(&v173);
                v104 += 88;
              }

              v112 = [USKData alloc];
              sub_270313C14(v168, &v173);
              pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v133, &v177);
              v114 = objc_msgSend_initWithVtValue_typeName_(v112, v113, v168, &v133);
              if ((v133 & 7) != 0)
              {
                atomic_fetch_add_explicit((v133 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              sub_270311D34(v168);
              objc_msgSend_addObject_(v130, v115, v114, v116);

              if ((BYTE8(v177) & 7) != 0)
              {
                atomic_fetch_add_explicit((*(&v177 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if ((BYTE8(v176) & 7) != 0)
              {
                atomic_fetch_add_explicit((*(&v176 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              sub_270310E24(&v174);
              sub_270311D34(&v173);
LABEL_109:
              if ((v170 & 7) != 0)
              {
                atomic_fetch_add_explicit((v170 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }
            }

            v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v103, &v134, v169, 16);
          }

          while (v94);
        }

        v117 = v159;
        if (*(&v159 + 1) != v159)
        {
          *&v175 = 0;
          v173 = 0u;
          v174 = 0u;
          v118 = 3 * *v159;
          LODWORD(v140[0]) = 0;
          v170 = v140;
          sub_27031192C(&v173, v118, &v170);
          sub_270310DE0(v117);
          v119 = v117[4];
          sub_270310DE0(v117);
          v120 = v117[4] + 4 * *v117;
          if (v119 != v120)
          {
            v121 = 0;
            do
            {
              v122 = *v119;
              sub_270310DE0(&v158[1]);
              v123 = 3 * v122;
              LODWORD(v122) = *(v158[5] + 12 * v122);
              sub_270310DE0(&v173);
              *(v175 + v121) = v122;
              sub_270310DE0(&v158[1]);
              LODWORD(v122) = *(v158[5] + 4 * v123 + 4);
              sub_270310DE0(&v173);
              *(v175 + v121 + 4) = v122;
              sub_270310DE0(&v158[1]);
              LODWORD(v122) = *(v158[5] + 4 * v123 + 8);
              sub_270310DE0(&v173);
              *(v175 + v121 + 8) = v122;
              ++v119;
              v121 += 12;
            }

            while (v119 != v120);
          }

          v124 = [USKData alloc];
          v166 = &off_288040CB8;
          sub_27032C360();
        }

        v125 = [USKData alloc];
        v167 = &off_288040CB8;
        sub_27032C360();
      }
    }

    else
    {
    }

    NSLog(&cfstr_ErrorObjectIsM.isa);
    v39 = v130;
    if ((v165._proxyPrimPath._propPart._poolHandle & 7) != 0)
    {
      atomic_fetch_add_explicit((v165._proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v165._proxyPrimPath);
    if (v165._prim._p._pointer)
    {
      sub_270314574(v165._prim._p._pointer);
    }

    v18 = v130;
  }

  else
  {
    v13 = objc_msgSend_name(v5, v10, v11, v12);
    v17 = objc_msgSend_stringValue(v13, v14, v15, v16);
    NSLog(&cfstr_ErrorNodeIsNot.isa, v17);

    v18 = v130;
    v19 = v130;
  }

  v126 = *MEMORY[0x277D85DE8];

  return v130;
}

@end