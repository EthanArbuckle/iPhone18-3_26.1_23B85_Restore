@interface USKProperty
- (BOOL)isAnimated;
- (BOOL)isEqual:(id)equal;
- (BOOL)setConnectionWithTargetPaths:(id)paths;
- (BOOL)setCustomMetadata:(id)metadata value:(id)value;
- (BOOL)setDictionaryMetadataWithKey:(id)key dictionaryKey:(id)dictionaryKey value:(id)value;
- (BOOL)setMetadataWithKey:(id)key value:(id)value;
- (NSString)role;
- (NSString)type;
- (USKProperty)initWithUsdProperty:(UsdProperty *)property;
- (USKProperty)initWithUsdProperty:(UsdProperty *)property withNodeOwner:(id)owner;
- (USKProperty)initWithUsdProperty:(UsdProperty *)property withSceneOwner:(id)owner;
- (USKToken)roleName;
- (USKToken)typeName;
- (UsdProperty)usdProperty;
- (__n128)double3Value;
- (__n128)double3ValueAtTime:(uint64_t)time@<X0>;
- (__n128)double4Value;
- (__n128)double4ValueAtTime:(uint64_t)time@<X0>;
- (__n128)double4x4Value;
- (__n128)double4x4ValueAtTime:(uint64_t)time@<X0>;
- (__n64)float2Value;
- (__n64)float2ValueAtTime:(uint64_t)time;
- (__n64)float3Value;
- (__n64)float3ValueAtTime:(uint64_t)time;
- (__n64)float4Value;
- (__n64)float4ValueAtTime:(uint64_t)time;
- (__n64)quatfValue;
- (__n64)quatfValueAtTime:(uint64_t)time;
- (id).cxx_construct;
- (id)connectedPropertyPath;
- (id)connectedPropertyPaths;
- (id)customMetadataWithKey:(id)key;
- (id)data;
- (id)dataAtTime:(double)time;
- (id)dictionaryMetadataWithKey:(id)key dictionaryKey:(id)dictionaryKey;
- (id)metadata;
- (id)metadataWithKey:(id)key;
- (id)name;
- (id)objectPath;
- (id)objectPathArray;
- (id)parentNode;
- (id)path;
- (id)resourcePath;
- (id)resourcePathArray;
- (id)stringArray;
- (id)stringArrayAtTime:(double)time;
- (id)stringValue;
- (id)targetObject;
- (id)timeCodeValue;
- (id)timeSamples;
- (id)tokenArray;
- (id)tokenArrayAtTime:(double)time;
- (id)tokenValue;
- (id)urlValue;
- (unint64_t)arraySize;
- (unint64_t)arraySizeAtTime:(double)time;
- (unint64_t)hash;
- (void)clearConnections;
- (void)clearMetadata;
- (void)clearValue;
- (void)setBoolValue:(BOOL)value;
- (void)setData:(id)data;
- (void)setData:(id)data atTime:(double)time;
- (void)setDouble3Value:(USKProperty *)self;
- (void)setDouble3Value:(double)value atTime:;
- (void)setDouble4Value:(USKProperty *)self;
- (void)setDouble4Value:(double)value atTime:;
- (void)setDouble4x4Value:(__int128 *)value;
- (void)setDouble4x4Value:(__int128 *)value atTime:;
- (void)setDoubleValue:(double)value;
- (void)setDoubleValue:(double)value atTime:(double)time;
- (void)setFloat2Value:(USKProperty *)self;
- (void)setFloat2Value:(double)value atTime:;
- (void)setFloatValue:(float)value;
- (void)setFloatValue:(float)value atTime:(double)time;
- (void)setIntValue:(int)value;
- (void)setObjectPath:(id)path;
- (void)setObjectPathArray:(id)array;
- (void)setResourcePath:(id)path;
- (void)setResourcePathArray:(id)array;
- (void)setStringArray:(id)array;
- (void)setStringArray:(id)array atTime:(double)time;
- (void)setStringValue:(id)value;
- (void)setTimeCodeValue:(id)value;
- (void)setTokenArray:(id)array;
- (void)setTokenArray:(id)array atTime:(double)time;
- (void)setTokenValue:(id)value;
- (void)setUIntValue:(unsigned int)value;
- (void)setUIntValue:(unsigned int)value atTime:(double)time;
- (void)setURL:(id)l;
@end

@implementation USKProperty

- (NSString)type
{
  type = self->_property._type;
  if (type == 4)
  {
    v9 = USKDataTypeObjectPathArray;
LABEL_20:
    v8 = *v9;
    goto LABEL_21;
  }

  if (type != 3)
  {
    v9 = USKDataTypeUnknown;
    goto LABEL_20;
  }

  v16 = 0u;
  v17 = 0u;
  sub_270340D70(&self->_property, &v16);
  v15 = 0;
  v3 = atomic_load(off_279E01258);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
  }

  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(&v16);
  v4 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetType(&TypeName);
  v12 = 0;
  v14 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(v3, v4, &v12);
  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v15, &v14);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = v15;
  if ((v15 & 7) != 0)
  {
    v7 = v15 & 0xFFFFFFFFFFFFFFF8;
    if ((atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v7;
    }
  }

  v8 = objc_msgSend_dataTypeWithTfToken_(USKToken, v5, &v11, v6);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

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

LABEL_21:

  return v8;
}

- (USKToken)typeName
{
  v4 = objc_msgSend_type(self, a2, v2, v3);
  v7 = objc_msgSend_tokenWithDataType_(USKToken, v5, v4, v6);

  return v7;
}

- (NSString)role
{
  if (self->_property._type == 3)
  {
    v9 = 0u;
    v10 = 0u;
    sub_270340D70(&self->_property, &v9);
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttribute::GetRoleName(&v8, &v9);
    v7 = v8;
    if ((v8 & 7) != 0)
    {
      v4 = v8 & 0xFFFFFFFFFFFFFFF8;
      if ((atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v7 = v4;
      }
    }

    v5 = objc_msgSend_roleTypeWithTfToken_(USKToken, v2, &v7, v3);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((BYTE8(v10) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v10 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v10);
    if (*(&v9 + 1))
    {
      sub_270314574(*(&v9 + 1));
    }
  }

  else
  {
    v5 = @"None";
  }

  return v5;
}

- (USKToken)roleName
{
  v4 = objc_msgSend_role(self, a2, v2, v3);
  v7 = objc_msgSend_tokenWithRoleType_(USKToken, v5, v4, v6);

  return v7;
}

- (USKProperty)initWithUsdProperty:(UsdProperty *)property
{
  v9.receiver = self;
  v9.super_class = USKProperty;
  v4 = [(USKProperty *)&v9 init];
  if (v4 && (sub_27033E778(property) & 1) != 0)
  {
    v4->_property._type = property->_type;
    pointer = property->_prim._p._pointer;
    if (pointer)
    {
      atomic_fetch_add_explicit(pointer + 6, 1uLL, memory_order_relaxed);
    }

    v6 = v4->_property._prim._p._pointer;
    if (v6)
    {
      sub_270314574(v6);
    }

    v4->_property._prim._p._pointer = pointer;
    sub_27032787C(&v4->_property._proxyPrimPath, &property->_proxyPrimPath);
    sub_2703278D4(&v4->_property._proxyPrimPath._primPart._poolHandle + 4, &property->_proxyPrimPath._primPart._poolHandle + 1);
    sub_270325CAC(&v4->_property._proxyPrimPath._propPart._poolHandle, &property->_proxyPrimPath._propPart._poolHandle);
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (USKProperty)initWithUsdProperty:(UsdProperty *)property withSceneOwner:(id)owner
{
  ownerCopy = owner;
  v13.receiver = self;
  v13.super_class = USKProperty;
  v8 = [(USKProperty *)&v13 init];
  if (v8 && (sub_27033E778(property) & 1) != 0)
  {
    v8->_property._type = property->_type;
    pointer = property->_prim._p._pointer;
    if (pointer)
    {
      atomic_fetch_add_explicit(pointer + 6, 1uLL, memory_order_relaxed);
    }

    v10 = v8->_property._prim._p._pointer;
    if (v10)
    {
      sub_270314574(v10);
    }

    v8->_property._prim._p._pointer = pointer;
    sub_27032787C(&v8->_property._proxyPrimPath, &property->_proxyPrimPath);
    sub_2703278D4(&v8->_property._proxyPrimPath._primPart._poolHandle + 4, &property->_proxyPrimPath._primPart._poolHandle + 1);
    sub_270325CAC(&v8->_property._proxyPrimPath._propPart._poolHandle, &property->_proxyPrimPath._propPart._poolHandle);
    objc_storeStrong(&v8->_property._propName._rep._ptrAndBits, owner);
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (USKProperty)initWithUsdProperty:(UsdProperty *)property withNodeOwner:(id)owner
{
  ownerCopy = owner;
  v13.receiver = self;
  v13.super_class = USKProperty;
  v8 = [(USKProperty *)&v13 init];
  if (v8 && (sub_27033E778(property) & 1) != 0)
  {
    v8->_property._type = property->_type;
    pointer = property->_prim._p._pointer;
    if (pointer)
    {
      atomic_fetch_add_explicit(pointer + 6, 1uLL, memory_order_relaxed);
    }

    v10 = v8->_property._prim._p._pointer;
    if (v10)
    {
      sub_270314574(v10);
    }

    v8->_property._prim._p._pointer = pointer;
    sub_27032787C(&v8->_property._proxyPrimPath, &property->_proxyPrimPath);
    sub_2703278D4(&v8->_property._proxyPrimPath._primPart._poolHandle + 4, &property->_proxyPrimPath._primPart._poolHandle + 1);
    sub_270325CAC(&v8->_property._proxyPrimPath._propPart._poolHandle, &property->_proxyPrimPath._propPart._poolHandle);
    objc_storeStrong(&v8->_sceneOwner, owner);
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)parentNode
{
  v3 = [USKNode alloc];
  sub_270347BF8(&v8, &self->_property._prim, &self->_property._proxyPrimPath);
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

- (unint64_t)arraySize
{
  v5[2] = *MEMORY[0x277D85DE8];
  sub_27034AA70(&self->_property._type, v5);
  NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v5);
  sub_270311D34(v5);
  v3 = *MEMORY[0x277D85DE8];
  return NumElements;
}

- (unint64_t)arraySizeAtTime:(double)time
{
  v6[2] = *MEMORY[0x277D85DE8];
  sub_27034AA70(&self->_property._type, v6);
  NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v6);
  sub_270311D34(v6);
  v4 = *MEMORY[0x277D85DE8];
  return NumElements;
}

- (id)name
{
  v3 = [USKToken alloc];
  v6 = *sub_2703428CC(&self->_property._type);
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
  sub_27034ADF8(&self->_property, &v8);
  v6 = objc_msgSend_initWithSdfPath_(v3, v4, &v8, v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v8);

  return v6;
}

- (UsdProperty)usdProperty
{
  p_property = &self->_property;
  retstr->_type = self->_property._type;
  pointer = self->_property._prim._p._pointer;
  retstr->_prim._p._pointer = pointer;
  if (pointer)
  {
    atomic_fetch_add_explicit(pointer + 6, 1uLL, memory_order_relaxed);
  }

  sub_2703256DC(&retstr->_proxyPrimPath, &self->_property._proxyPrimPath);
  result = sub_270325728(&retstr->_proxyPrimPath._primPart._poolHandle + 1, &p_property->_proxyPrimPath._primPart._poolHandle + 1);
  poolHandle = p_property->_proxyPrimPath._propPart._poolHandle;
  retstr->_proxyPrimPath._propPart._poolHandle = poolHandle;
  if ((poolHandle & 7) != 0 && (atomic_fetch_add_explicit((poolHandle & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    retstr->_proxyPrimPath._propPart._poolHandle = (retstr->_proxyPrimPath._propPart._poolHandle & 0xFFFFFFFFFFFFFFF8);
  }

  return result;
}

- (id)metadata
{
  v55[2] = *MEMORY[0x277D85DE8];
  v35 = objc_opt_new();
  v3 = objc_opt_new();
  v50 = 0;
  v51[0] = 0;
  v51[1] = 0;
  pxrInternal__aapl__pxrReserved__::UsdObject::GetAllAuthoredMetadata(&v50, &self->_property);
  v5 = v50;
  if (v50 != v51)
  {
    v6 = *(MEMORY[0x277D82818] + 64);
    v33 = v6;
    v34 = *MEMORY[0x277D82818];
    v32 = *(MEMORY[0x277D82818] + 72);
    do
    {
      v54 = 0;
      v55[0] = 0;
      v55[1] = 0;
      v7 = sub_27033E814(&v54, v5 + 4);
      v10 = MEMORY[0x277CCACA8];
      if ((v54 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = (v54 & 0xFFFFFFFFFFFFFFF8) + 16;
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
      objc_msgSend_addObject_(v35, v13, v12, v14);

      v49 = 0;
      v15 = atomic_load(off_279E01258);
      if (!v15)
      {
        pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
      }

      __p[0] = 0;
      *&v41 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(v15, v55, __p);
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v49, &v41);
      if ((__p[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v49)
      {
        v16 = [USKData alloc];
        sub_270313C14(v52, v55);
        v36 = v49;
        if ((v49 & 7) != 0 && (atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v36 &= 0xFFFFFFFFFFFFFFF8;
        }

        v18 = objc_msgSend_initWithVtValue_typeName_withPropertyOwner_(v16, v17, v52, &v36, self);
        objc_msgSend_addObject_(v3, v19, v18, v20);

        if ((v36 & 7) != 0)
        {
          atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        sub_270311D34(v52);
      }

      else
      {
        v48 = 0;
        v46 = 0u;
        memset(v47, 0, sizeof(v47));
        *v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        memset(v43, 0, sizeof(v43));
        v41 = 0u;
        sub_27031AD44(&v41);
        pxrInternal__aapl__pxrReserved__::operator<<();
        v21 = [USKData alloc];
        std::stringbuf::str();
        MEMORY[0x27439E620](&v40, __p);
        v53[0] = v40;
        v53[1] = &off_288040298 + 1;
        if ((v40 & 7) != 0 && (atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v53[0] &= 0xFFFFFFFFFFFFFFF8;
        }

        MEMORY[0x27439E610](&v37, "token");
        v23 = objc_msgSend_initWithVtValue_typeName_withPropertyOwner_(v21, v22, v53, &v37, self);
        objc_msgSend_addObject_(v3, v24, v23, v25);

        if ((v37 & 7) != 0)
        {
          atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        sub_270311D34(v53);
        if ((v40 & 7) != 0)
        {
          atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v39 < 0)
        {
          operator delete(__p[0]);
        }

        *&v41 = v34;
        *(&v41 + *(v34 - 24)) = v33;
        *&v42 = v32;
        *(&v42 + 1) = MEMORY[0x277D82878] + 16;
        if (SHIBYTE(v45) < 0)
        {
          operator delete(v44[1]);
        }

        *(&v42 + 1) = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v43);
        std::iostream::~basic_iostream();
        MEMORY[0x27439F390](v47);
      }

      if ((v49 & 7) != 0)
      {
        atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      sub_270311D34(v55);
      if ((v54 & 7) != 0)
      {
        atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v26 = v5[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v5[2];
          v28 = *v27 == v5;
          v5 = v27;
        }

        while (!v28);
      }

      v5 = v27;
    }

    while (v27 != v51);
  }

  v29 = objc_msgSend_dictionaryWithObjects_forKeys_(MEMORY[0x277CBEAC0], v4, v3, v35);
  sub_27033F310(&v50, v51[0]);

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (BOOL)setMetadataWithKey:(id)key value:(id)value
{
  v32 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  v26 = 0;
  v8 = keyCopy;
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
    if (valueCopy)
    {
      objc_msgSend_value(valueCopy, v17, v18, v19);
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
      if (valueCopy)
      {
        objc_msgSend_value(valueCopy, v14, v15, v16);
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
      v23 = pxrInternal__aapl__pxrReserved__::UsdObject::SetMetadata(&self->_property, &v26, &v29);
    }

    else
    {
LABEL_10:
      if (valueCopy)
      {
        objc_msgSend_value(valueCopy, v14, v15, v16);
      }

      else
      {
        v29 = 0;
        v30 = 0;
      }

      v23 = pxrInternal__aapl__pxrReserved__::UsdObject::SetMetadata(&self->_property, &v26, &v29);
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

- (BOOL)setDictionaryMetadataWithKey:(id)key dictionaryKey:(id)dictionaryKey value:(id)value
{
  v46 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  dictionaryKeyCopy = dictionaryKey;
  valueCopy = value;
  v40 = 0;
  v11 = keyCopy;
  v15 = objc_msgSend_UTF8String(v11, v12, v13, v14);
  MEMORY[0x27439E610](&v40, v15);
  v39 = 0;
  v16 = dictionaryKeyCopy;
  v20 = objc_msgSend_UTF8String(dictionaryKeyCopy, v17, v18, v19);
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
    if (valueCopy)
    {
      objc_msgSend_value(valueCopy, v31, v32, v33);
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
      if (valueCopy)
      {
        objc_msgSend_value(valueCopy, v25, v26, v27);
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
      v36 = pxrInternal__aapl__pxrReserved__::UsdObject::SetMetadataByDictKey(&self->_property, &v40, &v39, &v44);
      goto LABEL_36;
    }
  }

LABEL_28:
  if (valueCopy)
  {
    objc_msgSend_value(valueCopy, v25, v26, v27);
  }

  else
  {
    v44 = 0;
    v45 = 0;
  }

  v36 = pxrInternal__aapl__pxrReserved__::UsdObject::SetMetadataByDictKey(&self->_property, &v40, &v39, &v44);
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

- (BOOL)setCustomMetadata:(id)metadata value:(id)value
{
  v24[2] = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  valueCopy = value;
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
  v11 = metadataCopy;
  v15 = objc_msgSend_UTF8String(v11, v12, v13, v14);
  MEMORY[0x27439E610](&v22, v15);
  if (valueCopy)
  {
    objc_msgSend_value(valueCopy, v16, v17, v18);
  }

  else
  {
    v24[0] = 0;
    v24[1] = 0;
  }

  v19 = pxrInternal__aapl__pxrReserved__::UsdObject::SetMetadataByDictKey(&self->_property, &v23, &v22, v24);
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

- (id)metadataWithKey:(id)key
{
  v23 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v21 = 0;
  v22 = 0;
  v5 = keyCopy;
  v9 = objc_msgSend_UTF8String(v5, v6, v7, v8);
  MEMORY[0x27439E610](&v19, v9);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetMetadata(&self->_property, &v19, &v21);
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
    v13 = objc_msgSend_initWithVtValue_typeName_withPropertyOwner_(v10, v12, v20, &v18, self);
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

- (id)dictionaryMetadataWithKey:(id)key dictionaryKey:(id)dictionaryKey
{
  v31 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  dictionaryKeyCopy = dictionaryKey;
  v29 = 0;
  v30 = 0;
  v8 = keyCopy;
  v12 = objc_msgSend_UTF8String(v8, v9, v10, v11);
  MEMORY[0x27439E610](&v27, v12);
  v13 = dictionaryKeyCopy;
  v17 = objc_msgSend_UTF8String(dictionaryKeyCopy, v14, v15, v16);
  MEMORY[0x27439E610](&Type, v17);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetMetadataByDictKey(&self->_property, &v27, &Type, &v29);
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
    v21 = objc_msgSend_initWithVtValue_typeName_withPropertyOwner_(v18, v20, v28, &v25, self);
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

- (id)customMetadataWithKey:(id)key
{
  v24 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v22 = 0;
  v23 = 0;
  v5 = atomic_load(MEMORY[0x277D86540]);
  if (!v5)
  {
    sub_27033E930();
  }

  v6 = keyCopy;
  v10 = objc_msgSend_UTF8String(v6, v7, v8, v9);
  MEMORY[0x27439E610](&v20, v10);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetMetadataByDictKey(&self->_property, (v5 + 72), &v20, &v22);
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
    v14 = objc_msgSend_initWithVtValue_typeName_withPropertyOwner_(v11, v13, v21, &v19, self);
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

- (id)connectedPropertyPath
{
  if (self->_property._type == 3)
  {
    v4 = 0u;
    v5 = 0u;
    sub_270340D70(&self->_property, &v4);
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasAuthoredConnections(&v4))
    {
      memset(v3, 0, sizeof(v3));
      pxrInternal__aapl__pxrReserved__::UsdAttribute::GetConnections();
      v6 = v3;
      sub_270325B58(&v6);
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

  return 0;
}

- (id)connectedPropertyPaths
{
  if (self->_property._type != 3)
  {
    goto LABEL_9;
  }

  v10 = 0u;
  v11 = 0u;
  sub_270340D70(&self->_property, &v10);
  HasAuthoredConnections = pxrInternal__aapl__pxrReserved__::UsdAttribute::HasAuthoredConnections(&v10);
  v4 = HasAuthoredConnections;
  if (HasAuthoredConnections)
  {
    memset(v9, 0, sizeof(v9));
    pxrInternal__aapl__pxrReserved__::UsdAttribute::GetConnections();
    v5 = objc_alloc(MEMORY[0x277CBEB18]);
    v2 = objc_msgSend_initWithCapacity_(v5, v6, 0, v7);
    v12 = v9;
    sub_270325B58(&v12);
  }

  if ((BYTE8(v11) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v11 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v11);
  if (*(&v10 + 1))
  {
    sub_270314574(*(&v10 + 1));
  }

  if ((v4 & 1) == 0)
  {
LABEL_9:
    v2 = 0;
  }

  return v2;
}

- (BOOL)setConnectionWithTargetPaths:(id)paths
{
  v30 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  if (self->_property._type == 3)
  {
    v26 = 0u;
    v27 = 0u;
    sub_270340D70(&self->_property, &v26);
    memset(v25, 0, sizeof(v25));
    v8 = objc_msgSend_count(pathsCopy, v5, v6, v7);
    sub_27034CCC0(v25, v8);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = pathsCopy;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v21, v29, 16);
    if (v14)
    {
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v9);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          if (v17)
          {
            objc_msgSend_path(v17, v11, v12, v13, v21);
          }

          else
          {
            v28 = 0;
          }

          sub_27034CD7C(v25, &v28);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          sub_2703143D8(&v28);
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v21, v29, 16);
      }

      while (v14);
    }

    v18 = pxrInternal__aapl__pxrReserved__::UsdAttribute::SetConnections();
    v28 = v25;
    sub_270325B58(&v28);
    if ((BYTE8(v27) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v27 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v27);
    if (*(&v26 + 1))
    {
      sub_270314574(*(&v26 + 1));
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)clearConnections
{
  if (self->_property._type == 3)
  {
    v2 = 0u;
    v3 = 0u;
    sub_270340D70(&self->_property, &v2);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::ClearConnections(&v2);
    if ((BYTE8(v3) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v3 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v3);
    if (*(&v2 + 1))
    {
      sub_270314574(*(&v2 + 1));
    }
  }
}

- (void)clearMetadata
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (self->_property._type == 3)
  {
    v11 = 0u;
    v12 = 0u;
    sub_270340D70(&self->_property, &v11);
    v9 = 0;
    v10[0] = 0;
    v10[1] = 0;
    pxrInternal__aapl__pxrReserved__::UsdObject::GetAllAuthoredMetadata(&v9, &v11);
    v2 = v9;
    if (v9 != v10)
    {
      v3 = MEMORY[0x277D86540];
      do
      {
        v13 = 0;
        v14[0] = 0;
        v14[1] = 0;
        sub_27033E814(&v13, v2 + 4);
        v4 = atomic_load(v3);
        if (!v4)
        {
          sub_27033E930();
        }

        if ((*(v4 + 464) ^ v13) >= 8)
        {
          pxrInternal__aapl__pxrReserved__::UsdObject::ClearMetadata(&v11, &v13);
        }

        sub_270311D34(v14);
        if ((v13 & 7) != 0)
        {
          atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v5 = v2[1];
        if (v5)
        {
          do
          {
            v6 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v6 = v2[2];
            v7 = *v6 == v2;
            v2 = v6;
          }

          while (!v7);
        }

        v2 = v6;
      }

      while (v6 != v10);
    }

    sub_27033F310(&v9, v10[0]);
    if ((BYTE8(v12) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v12 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v12);
    if (*(&v11 + 1))
    {
      sub_270314574(*(&v11 + 1));
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)clearValue
{
  type = self->_property._type;
  if (type == 4)
  {
    v3 = 0u;
    v4 = 0u;
    sub_27034D19C(&self->_property, &v3);
    pxrInternal__aapl__pxrReserved__::UsdRelationship::ClearTargets(&v3);
    if ((BYTE8(v4) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v4 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if (type != 3)
    {
      return;
    }

    v3 = 0u;
    v4 = 0u;
    sub_270340D70(&self->_property, &v3);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::Clear(&v3);
    if ((BYTE8(v4) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v4 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v4);
  if (*(&v3 + 1))
  {
    sub_270314574(*(&v3 + 1));
  }
}

- (id)data
{
  v23[2] = *MEMORY[0x277D85DE8];
  type = self->_property._type;
  if (type == 4)
  {
    v17 = 0u;
    v18 = 0u;
    sub_27034D19C(&self->_property, &v17);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::UsdRelationship::GetTargets();
    if (v21 != v20)
    {
      v10 = [USKData alloc];
      v19[2] = &off_288041880;
      sub_270357F6C();
    }

    v9 = 0;
    v19[0] = &v20;
    sub_270325B58(v19);
    if ((BYTE8(v18) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v18 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  }

  else
  {
    if (type != 3)
    {
      v9 = 0;
      goto LABEL_28;
    }

    v17 = 0u;
    v18 = 0u;
    sub_270340D70(&self->_property, &v17);
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&v17))
    {
      v20 = 0;
      v21 = 0;
      pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
      v19[0] = 0;
      v4 = atomic_load(off_279E01258);
      if (!v4)
      {
        pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
      }

      TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(&v17);
      v5 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetType(&TypeName);
      v14 = 0;
      v16 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(v4, v5, &v14);
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(v19, &v16);
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = [USKData alloc];
      sub_270313C14(v23, &v20);
      v13 = v19[0];
      if ((v19[0] & 7) != 0)
      {
        v8 = v19[0] & 0xFFFFFFFFFFFFFFF8;
        if ((atomic_fetch_add_explicit((v19[0] & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v13 = v8;
        }
      }

      v9 = objc_msgSend_initWithVtValue_typeName_withPropertyOwner_(v6, v7, v23, &v13, self);
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      sub_270311D34(v23);
      if ((v19[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v19[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      sub_270311D34(&v20);
    }

    else
    {
      v9 = 0;
    }

    if ((BYTE8(v18) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v18 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  }

  sub_2703143D8(&v18);
  if (*(&v17 + 1))
  {
    sub_270314574(*(&v17 + 1));
  }

LABEL_28:
  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)dataAtTime:(double)time
{
  v22[2] = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  sub_270340D70(&self->_property, &v19);
  if (sub_27033E778(&v19) && pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&v19))
  {
    v17 = 0u;
    v18 = 0u;
    sub_270340D70(&self->_property, &v17);
    v22[0] = 0;
    v22[1] = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
    v16 = 0;
    v4 = atomic_load(off_279E01258);
    if (!v4)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
    }

    TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(&v17);
    Type = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetType(&TypeName);
    v13 = 0;
    v15 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(v4, Type, &v13);
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v16, &v15);
    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v6 = [USKData alloc];
    sub_270313C14(v21, v22);
    v12 = v16;
    if ((v16 & 7) != 0)
    {
      v8 = v16 & 0xFFFFFFFFFFFFFFF8;
      if ((atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v12 = v8;
      }
    }

    v9 = objc_msgSend_initWithVtValue_typeName_withPropertyOwner_(v6, v7, v21, &v12, self);
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_270311D34(v21);
    if ((v16 & 7) != 0)
    {
      atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_270311D34(v22);
    if ((BYTE8(v18) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v18 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v18);
    if (*(&v17 + 1))
    {
      sub_270314574(*(&v17 + 1));
    }
  }

  else
  {
    v9 = 0;
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

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)isAnimated
{
  if (self->_property._type == 4)
  {
    return 0;
  }

  v4 = 0u;
  v5 = 0u;
  sub_270340D70(&self->_property, &v4);
  if (pxrInternal__aapl__pxrReserved__::UsdAttribute::GetVariability(&v4) == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = pxrInternal__aapl__pxrReserved__::UsdAttribute::ValueMightBeTimeVarying(&v4);
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

  return v2;
}

- (id)timeSamples
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_property._type != 4)
  {
    v7 = 0u;
    v8 = 0u;
    sub_270340D70(&self->_property, &v7);
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::GetVariability(&v7) != 1)
    {
      __p = 0;
      v5 = 0;
      v6 = 0;
      pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTimeSamples();
    }

    if ((BYTE8(v8) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v8 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v8);
    if (*(&v7 + 1))
    {
      sub_270314574(*(&v7 + 1));
    }
  }

  v2 = *MEMORY[0x277D85DE8];

  return 0;
}

- (id)stringValue
{
  v55 = *MEMORY[0x277D85DE8];
  v42 = objc_msgSend_timeSamples(self, a2, v2, v3);
  if (v42)
  {
    v52 = 0;
    v50 = 0u;
    memset(v51, 0, sizeof(v51));
    *__p = 0u;
    v49 = 0u;
    v46 = 0u;
    memset(v47, 0, sizeof(v47));
    v45 = 0u;
    sub_27031AD44(&v45);
    sub_2703180A8(&v46, "[", 1);
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    objc_msgSend_value(v42, v8, v9, v10);
    sub_27034E104(v53, v43);
    sub_270311D34(v53);
    sub_270330518(v43);
    v11 = v44;
    sub_270330518(v43);
    for (i = &v44[*&v43[0]]; v11 != i; ++v11)
    {
      v16 = *v11;
      v17 = objc_msgSend_dataAtTime_(self, v12, v13, v14, *v11);
      v18 = MEMORY[0x27439F2D0](&v46, v16);
      v19 = sub_2703180A8(v18, ": ", 2);
      v23 = objc_msgSend_stringValue(v17, v20, v21, v22);
      v24 = v23;
      v28 = objc_msgSend_UTF8String(v23, v25, v26, v27);
      v29 = strlen(v28);
      v30 = sub_2703180A8(v19, v28, v29);
      sub_2703180A8(v30, ", ", 2);
    }

    sub_2703180A8(&v46, "]", 1);
    v31 = MEMORY[0x277CCACA8];
    std::stringbuf::str();
    if (v54 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v31, v32, v53, v33);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v31, v32, v53[0], v33);
    }
    v34 = ;
    if (v54 < 0)
    {
      operator delete(v53[0]);
    }

    sub_270310E24(v43);
    *&v45 = *MEMORY[0x277D82818];
    v35 = *(MEMORY[0x277D82818] + 72);
    *(&v45 + *(v45 - 24)) = *(MEMORY[0x277D82818] + 64);
    *&v46 = v35;
    *(&v46 + 1) = MEMORY[0x277D82878] + 16;
    if (SHIBYTE(v49) < 0)
    {
      operator delete(__p[1]);
    }

    *(&v46 + 1) = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v47);
    std::iostream::~basic_iostream();
    MEMORY[0x27439F390](v51);
  }

  else
  {
    v36 = objc_msgSend_data(self, v5, v6, v7);
    v34 = objc_msgSend_stringValue(v36, v37, v38, v39);
  }

  v40 = *MEMORY[0x277D85DE8];

  return v34;
}

- (id)tokenValue
{
  v3 = [USKToken alloc];
  sub_27034E204(&self->_property._type, &v8);
  v6 = objc_msgSend_initWithTfToken_(v3, v4, &v8, v5);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v6;
}

- (id)urlValue
{
  v7 = 0u;
  v8 = 0u;
  sub_270340D70(&self->_property, &v7);
  if (sub_27033E778(&v7))
  {
    v4[0] = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(&v7);
    if (!atomic_load(MEMORY[0x277D86578]))
    {
      sub_270318AF4(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
      *__p = 0u;
      v6 = 0u;
      *v4 = 0u;
      pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v4);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::SdfAssetPath>();
    }
  }

  if ((BYTE8(v8) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v8 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v8);
  if (*(&v7 + 1))
  {
    sub_270314574(*(&v7 + 1));
  }

  return 0;
}

- (id)resourcePath
{
  v7 = 0u;
  v8 = 0u;
  sub_270340D70(&self->_property, &v7);
  if (sub_27033E778(&v7))
  {
    v4[0] = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(&v7);
    if (!atomic_load(MEMORY[0x277D86578]))
    {
      sub_270318AF4(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
      *v5 = 0u;
      v6 = 0u;
      *v4 = 0u;
      pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v4);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::SdfAssetPath>();
    }
  }

  if ((BYTE8(v8) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v8 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v8);
  if (*(&v7 + 1))
  {
    sub_270314574(*(&v7 + 1));
  }

  return 0;
}

- (id)resourcePathArray
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = 0u;
  v7 = 0u;
  sub_270340D70(&self->_property, &v6);
  if (sub_27033E778(&v6))
  {
    pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(&v6);
    if (!atomic_load(MEMORY[0x277D86578]))
    {
      sub_270318AF4(MEMORY[0x277D86578]);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==())
    {
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>();
    }
  }

  if ((BYTE8(v7) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v7 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v7);
  if (*(&v6 + 1))
  {
    sub_270314574(*(&v6 + 1));
  }

  return v3;
}

- (id)timeCodeValue
{
  v3 = [USKTimeCode alloc];
  v4 = sub_27034EAF8(&self->_property._type, NAN);
  v8 = objc_msgSend_initWithSdfTimeCode_(v3, v5, v6, v7, v4);

  return v8;
}

- (__n128)double3Value
{
  result.n128_f64[0] = sub_27034F830((self + 24));
  result.n128_u64[1] = v3;
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

- (__n128)double3ValueAtTime:(uint64_t)time@<X0>
{
  result.n128_f64[0] = sub_27034F830((time + 24));
  result.n128_u64[1] = v3;
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

- (__n128)double4Value
{
  result.n128_f64[0] = sub_27034FACC((self + 24));
  result.n128_u64[1] = v3;
  *(&v6 + 1) = v5;
  *a2 = result;
  *(a2 + 16) = v6;
  return result;
}

- (__n128)double4ValueAtTime:(uint64_t)time@<X0>
{
  result.n128_f64[0] = sub_27034FACC((time + 24));
  result.n128_u64[1] = v3;
  *(&v6 + 1) = v5;
  *a2 = result;
  *(a2 + 16) = v6;
  return result;
}

- (__n128)double4x4Value
{
  sub_27034FDC8((self + 24), v8);
  v3 = v8[1];
  *a2 = v8[0];
  a2[1] = v3;
  v4 = v8[3];
  a2[2] = v8[2];
  a2[3] = v4;
  v5 = v8[5];
  a2[4] = v8[4];
  a2[5] = v5;
  result = v9;
  v7 = v10;
  a2[6] = v9;
  a2[7] = v7;
  return result;
}

- (__n128)double4x4ValueAtTime:(uint64_t)time@<X0>
{
  sub_27034FDC8((time + 24), v8);
  v3 = v8[1];
  *a2 = v8[0];
  a2[1] = v3;
  v4 = v8[3];
  a2[2] = v8[2];
  a2[3] = v4;
  v5 = v8[5];
  a2[4] = v8[4];
  a2[5] = v5;
  result = v9;
  v7 = v10;
  a2[6] = v9;
  a2[7] = v7;
  return result;
}

- (__n64)float2Value
{
  result.n64_f32[0] = sub_270350300((self + 24));
  result.n64_u32[1] = v1;
  return result;
}

- (__n64)float2ValueAtTime:(uint64_t)time
{
  result.n64_f32[0] = sub_270350300((time + 24));
  result.n64_u32[1] = v1;
  return result;
}

- (__n64)float3Value
{
  result.n64_f32[0] = sub_270350564((self + 24));
  result.n64_u32[1] = v1;
  return result;
}

- (__n64)float3ValueAtTime:(uint64_t)time
{
  result.n64_f32[0] = sub_270350564((time + 24));
  result.n64_u32[1] = v1;
  return result;
}

- (__n64)float4Value
{
  result.n64_f32[0] = sub_2703507E8((self + 24));
  result.n64_u32[1] = v1;
  return result;
}

- (__n64)float4ValueAtTime:(uint64_t)time
{
  result.n64_f32[0] = sub_2703507E8((time + 24));
  result.n64_u32[1] = v1;
  return result;
}

- (__n64)quatfValue
{
  result.n64_f32[0] = sub_270350A78((self + 24));
  result.n64_u32[1] = v1;
  return result;
}

- (__n64)quatfValueAtTime:(uint64_t)time
{
  result.n64_f32[0] = sub_270350A78((time + 24));
  result.n64_u32[1] = v1;
  return result;
}

- (id)stringArray
{
  v32[2] = *MEMORY[0x277D85DE8];
  sub_27034AA70(&self->_property._type, v32);
  if (!v32[1])
  {
    goto LABEL_19;
  }

  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v32);
  if (!pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_2880401C0, v3))
  {
    v16 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(v32);
    if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(v16, &stru_2880401D8, v17))
    {
      v18 = sub_27031DA6C(v32);
      v19 = *v18;
      v10 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v20, *v18, v21);
      if (!v19)
      {
        goto LABEL_20;
      }

      v24 = 0;
      while (1)
      {
        v25 = *(v18[4] + 8 * v24) & 0xFFFFFFFFFFFFFFF8;
        if (!v25)
        {
          break;
        }

        v26 = (v25 + 16);
        if ((*(v25 + 39) & 0x80000000) == 0)
        {
          goto LABEL_16;
        }

        objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, *v26, v23);
        v27 = LABEL_17:;
        objc_msgSend_addObject_(v10, v28, v27, v29);

        if (v19 == ++v24)
        {
          goto LABEL_20;
        }
      }

      v26 = "";
LABEL_16:
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v26, v23);
      goto LABEL_17;
    }

LABEL_19:
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    goto LABEL_20;
  }

  v4 = sub_27031D854(v32);
  v5 = *v4;
  v10 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v6, *v4, v7);
  if (v5)
  {
    v11 = 0;
    do
    {
      v12 = v4[4] + v11;
      if (*(v12 + 23) < 0)
      {
        v12 = *v12;
      }

      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v12, v9);
      objc_msgSend_addObject_(v10, v14, v13, v15);

      v11 += 24;
      --v5;
    }

    while (v5);
  }

LABEL_20:
  sub_270311D34(v32);
  v30 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)stringArrayAtTime:(double)time
{
  v21[2] = *MEMORY[0x277D85DE8];
  sub_27034AA70(&self->_property._type, v21);
  v3 = sub_27031DA6C(v21);
  v4 = *v3;
  v7 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v5, *v3, v6);
  v10 = v7;
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v12 = *(v3[4] + 8 * i);
      if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v12 &= 0xFFFFFFFFFFFFFFF8;
      }

      v13 = MEMORY[0x277CCACA8];
      v14 = (v12 & 0xFFFFFFFFFFFFFFF8);
      if ((v12 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = (v14 + 4);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
      }

      if (*(EmptyString + 23) < 0)
      {
        EmptyString = *EmptyString;
      }

      v16 = objc_msgSend_stringWithUTF8String_(v13, v8, EmptyString, v9);
      objc_msgSend_addObject_(v10, v17, v16, v18);

      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  sub_270311D34(v21);
  v19 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)tokenArray
{
  v18[2] = *MEMORY[0x277D85DE8];
  sub_27034AA70(&self->_property._type, v18);
  v2 = sub_27031DA6C(v18);
  v3 = *v2;
  v6 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v4, *v2, v5);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v8 = *(v2[4] + 8 * i);
      if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v8 &= 0xFFFFFFFFFFFFFFF8;
      }

      v9 = [USKToken alloc];
      v17 = v8;
      if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v17 &= 0xFFFFFFFFFFFFFFF8;
      }

      v12 = objc_msgSend_initWithTfToken_(v9, v10, &v17, v11);
      objc_msgSend_addObject_(v6, v13, v12, v14);

      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  sub_270311D34(v18);
  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)tokenArrayAtTime:(double)time
{
  v19[2] = *MEMORY[0x277D85DE8];
  sub_27034AA70(&self->_property._type, v19);
  v3 = sub_27031DA6C(v19);
  v4 = *v3;
  v7 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v5, *v3, v6);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v9 = *(v3[4] + 8 * i);
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v9 &= 0xFFFFFFFFFFFFFFF8;
      }

      v10 = [USKToken alloc];
      v18 = v9;
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v18 &= 0xFFFFFFFFFFFFFFF8;
      }

      v13 = objc_msgSend_initWithTfToken_(v10, v11, &v18, v12);
      objc_msgSend_addObject_(v7, v14, v13, v15);

      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  sub_270311D34(v19);
  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)objectPath
{
  v4 = 0u;
  v5 = 0u;
  sub_27034D19C(&self->_property, &v4);
  if (sub_27033E778(&v4))
  {
    memset(v3, 0, sizeof(v3));
    pxrInternal__aapl__pxrReserved__::UsdRelationship::GetTargets();
    v6 = v3;
    sub_270325B58(&v6);
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

  return 0;
}

- (id)objectPathArray
{
  if (self->_property._type != 4)
  {
    goto LABEL_9;
  }

  v11 = 0u;
  v12 = 0u;
  sub_27034D19C(&self->_property, &v11);
  v3 = sub_27033E778(&v11);
  v4 = v3;
  if (v3)
  {
    memset(v10, 0, sizeof(v10));
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    pxrInternal__aapl__pxrReserved__::UsdRelationship::GetTargets();
    v2 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v5, 0, v6);
    sub_27032E41C(v8);
    *&v8[0] = v10;
    sub_270325B58(v8);
  }

  if ((BYTE8(v12) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v12 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v12);
  if (*(&v11 + 1))
  {
    sub_270314574(*(&v11 + 1));
  }

  if ((v4 & 1) == 0)
  {
LABEL_9:
    v2 = objc_opt_new();
  }

  return v2;
}

- (id)targetObject
{
  v5 = 0u;
  v6 = 0u;
  sub_27034D19C(&self->_property, &v5);
  if (sub_27033E778(&v5))
  {
    memset(v4, 0, sizeof(v4));
    pxrInternal__aapl__pxrReserved__::UsdRelationship::GetTargets();
    *&v3 = v4;
    sub_270325B58(&v3);
  }

  if ((BYTE8(v6) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v6 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v6);
  if (*(&v5 + 1))
  {
    sub_270314574(*(&v5 + 1));
  }

  return 0;
}

- (void)setData:(id)data
{
  v10[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v8 = dataCopy;
  if (dataCopy)
  {
    objc_msgSend_value(dataCopy, v5, v6, v7);
  }

  else
  {
    v10[0] = 0;
    v10[1] = 0;
  }

  sub_270352FD0(&self->_property._type, v10);
  sub_270311D34(v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setData:(id)data atTime:(double)time
{
  v11[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v9 = dataCopy;
  if (dataCopy)
  {
    objc_msgSend_value(dataCopy, v6, v7, v8);
  }

  else
  {
    v11[0] = 0;
    v11[1] = 0;
  }

  sub_270352FD0(&self->_property._type, v11);
  sub_270311D34(v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setTokenValue:(id)value
{
  v13 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v8 = valueCopy;
  if (valueCopy)
  {
    objc_msgSend_token(valueCopy, v5, v6, v7);
    v11 = v10;
    v12 = &off_288040298 + 1;
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v10 & 0xFFFFFFFFFFFFFFF8;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = &off_288040298 + 1;
  }

  sub_270352FD0(&self->_property._type, &v11);
  sub_270311D34(&v11);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setStringValue:(id)value
{
  v10 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v7 = objc_msgSend_UTF8String(valueCopy, v4, v5, v6);
  v9 = 0;
  sub_270329FE8(v8, &v7);
}

- (void)setTimeCodeValue:(id)value
{
  v7[2] = *MEMORY[0x277D85DE8];
  objc_msgSend_sdfTimeCode(value, a2, value, v3);
  v7[1] = &off_288040588 + 1;
  v7[0] = v5;
  sub_270352FD0(&self->_property._type, v7);
  sub_270311D34(v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setBoolValue:(BOOL)value
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = &unk_288040643;
  v4[0] = value;
  sub_270352FD0(&self->_property._type, v4);
  sub_270311D34(v4);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)setIntValue:(int)value
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = &unk_2880406FB;
  valueCopy = value;
  sub_270352FD0(&self->_property._type, &valueCopy);
  sub_270311D34(&valueCopy);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)setUIntValue:(unsigned int)value
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = &unk_2880407B3;
  valueCopy = value;
  sub_270352FD0(&self->_property._type, &valueCopy);
  sub_270311D34(&valueCopy);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)setUIntValue:(unsigned int)value atTime:(double)time
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = &unk_2880407B3;
  valueCopy = value;
  sub_270352FD0(&self->_property._type, &valueCopy);
  sub_270311D34(&valueCopy);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)setDoubleValue:(double)value
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[1] = &unk_2880409DB;
  *v4 = value;
  sub_270352FD0(&self->_property._type, v4);
  sub_270311D34(v4);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)setDoubleValue:(double)value atTime:(double)time
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[1] = &unk_2880409DB;
  *v5 = value;
  sub_270352FD0(&self->_property._type, v5);
  sub_270311D34(v5);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)setDouble3Value:(USKProperty *)self
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v3 = *(v2 + 2);
  v5 = &off_288040B48 + 2;
  operator new();
}

- (void)setDouble3Value:(double)value atTime:
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = *v3;
  v4 = *(v3 + 2);
  v6 = &off_288040B48 + 2;
  operator new();
}

- (void)setDouble4Value:(USKProperty *)self
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = v2[1];
  v5 = &off_288040C00 + 2;
  operator new();
}

- (void)setDouble4Value:(double)value atTime:
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = *v3;
  v5 = v3[1];
  v6 = &off_288040C00 + 2;
  operator new();
}

- (void)setDouble4x4Value:(__int128 *)value
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = value[1];
  v6 = *value;
  v9 = value[3];
  v4 = value[4];
  v5 = value[2];
  v7 = value[7];
  v8 = value[5];
  v3 = value[6];
  v11 = &off_28803FE40 + 2;
  operator new();
}

- (void)setDouble4x4Value:(__int128 *)value atTime:
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = value[1];
  v5 = value[2];
  v6 = *value;
  v8 = value[5];
  v9 = value[3];
  v7 = value[7];
  v3 = value[6];
  v4 = value[4];
  v11 = &off_28803FE40 + 2;
  operator new();
}

- (void)setFloatValue:(float)value
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = &unk_28803FCC3;
  valueCopy = value;
  sub_270352FD0(&self->_property._type, &valueCopy);
  sub_270311D34(&valueCopy);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)setFloatValue:(float)value atTime:(double)time
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = &unk_28803FCC3;
  valueCopy = value;
  sub_270352FD0(&self->_property._type, &valueCopy);
  sub_270311D34(&valueCopy);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)setFloat2Value:(USKProperty *)self
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[1] = &off_288040868 + 3;
  v4[0] = v2;
  sub_270352FD0(&self->_property._type, v4);
  sub_270311D34(v4);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)setFloat2Value:(double)value atTime:
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[1] = &off_288040868 + 3;
  *v4 = value;
  sub_270352FD0(&self->_property._type, v4);
  sub_270311D34(v4);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)setStringArray:(id)array
{
  v24 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v22 = 0;
  v7 = objc_msgSend_count(arrayCopy, v4, v5, v6, 0, 0, 0, 0);
  sub_270321124(&v21, v7);
  v11 = 0;
  for (i = 0; i < objc_msgSend_count(arrayCopy, v8, v9, v10); ++i)
  {
    v15 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v13, i, v14);
    v16 = v15;
    v20 = objc_msgSend_UTF8String(v15, v17, v18, v19);
    sub_27032D564(&v21);
    MEMORY[0x27439F260](v22 + v11, v20);

    v11 += 24;
  }

  v23 = &off_288040EE0;
  sub_270318A3C();
}

- (void)setStringArray:(id)array atTime:(double)time
{
  v25 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v23 = 0;
  v8 = objc_msgSend_count(arrayCopy, v5, v6, v7, 0, 0, 0, 0);
  sub_270321124(&v22, v8);
  v12 = 0;
  for (i = 0; i < objc_msgSend_count(arrayCopy, v9, v10, v11); ++i)
  {
    v16 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v14, i, v15);
    v17 = v16;
    v21 = objc_msgSend_UTF8String(v16, v18, v19, v20);
    sub_27032D564(&v22);
    MEMORY[0x27439F260](v23 + v12, v21);

    v12 += 24;
  }

  v24 = &off_288040EE0;
  sub_270318A3C();
}

- (void)setTokenArray:(id)array
{
  v25 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v7 = objc_msgSend_count(arrayCopy, v4, v5, v6);
  sub_2703211BC(v22, v7);
  v11 = 0;
  for (i = 0; i < objc_msgSend_count(arrayCopy, v8, v9, v10); ++i)
  {
    v15 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v13, i, v14);
    v19 = v15;
    if (v15)
    {
      objc_msgSend_token(v15, v16, v17, v18);
    }

    else
    {
      v21 = 0;
    }

    sub_27032DE68(v22);
    v20 = (v23 + v11);
    if ((v23 + v11) == &v21)
    {
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if ((*v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *v20 = v21;
      v21 = 0;
    }

    v11 += 8;
  }

  v24 = off_288040F98;
  sub_270318A3C();
}

- (void)setTokenArray:(id)array atTime:(double)time
{
  v26 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v8 = objc_msgSend_count(arrayCopy, v5, v6, v7);
  sub_2703211BC(v23, v8);
  v12 = 0;
  for (i = 0; i < objc_msgSend_count(arrayCopy, v9, v10, v11); ++i)
  {
    v16 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v14, i, v15);
    v20 = v16;
    if (v16)
    {
      objc_msgSend_token(v16, v17, v18, v19);
    }

    else
    {
      v22 = 0;
    }

    sub_27032DE68(v23);
    v21 = (v24 + v12);
    if ((v24 + v12) == &v22)
    {
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if ((*v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *v21 = v22;
      v22 = 0;
    }

    v12 += 8;
  }

  v25 = off_288040F98;
  sub_270318A3C();
}

- (void)setObjectPathArray:(id)array
{
  v28 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v24 = 0u;
  v25 = 0u;
  sub_27034D19C(&self->_property, &v24);
  if (sub_27033E778(&v24))
  {
    memset(v23, 0, sizeof(v23));
    v8 = objc_msgSend_count(arrayCopy, v5, v6, v7);
    sub_27034CCC0(v23, v8);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = arrayCopy;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v19, v27, 16);
    if (v14)
    {
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v9);
          }

          v17 = *(*(&v19 + 1) + 8 * i);
          if (v17)
          {
            objc_msgSend_path(v17, v11, v12, v13, v19);
          }

          else
          {
            v26 = 0;
          }

          sub_27034CD7C(v23, &v26);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          sub_2703143D8(&v26);
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v19, v27, 16);
      }

      while (v14);
    }

    pxrInternal__aapl__pxrReserved__::UsdRelationship::SetTargets();
    v26 = v23;
    sub_270325B58(&v26);
  }

  if ((BYTE8(v25) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v25 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v25);
  if (*(&v24 + 1))
  {
    sub_270314574(*(&v24 + 1));
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setObjectPath:(id)path
{
  pathCopy = path;
  v9 = 0u;
  v10 = 0u;
  sub_27034D19C(&self->_property, &v9);
  if (sub_27033E778(&v9))
  {
    memset(v8, 0, sizeof(v8));
    if (pathCopy)
    {
      objc_msgSend_path(pathCopy, v5, v6, v7);
    }

    else
    {
      v11 = 0;
    }

    sub_27034CD7C(v8, &v11);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v11);
    pxrInternal__aapl__pxrReserved__::UsdRelationship::SetTargets();
    v11 = v8;
    sub_270325B58(&v11);
  }

  if ((BYTE8(v10) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v10 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v10);
  if (*(&v9 + 1))
  {
    sub_270314574(*(&v9 + 1));
  }
}

- (void)setURL:(id)l
{
  v20 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v16 = 0u;
  v17 = 0u;
  sub_270340D70(&self->_property, &v16);
  if (sub_27033E778(&v16))
  {
    v8 = objc_msgSend_relativeString(lCopy, v5, v6, v7, 0, 0, 0, 0, 0, 0);
    v9 = v8;
    v13 = objc_msgSend_UTF8String(v8, v10, v11, v12);
    sub_2703122D4(v18, v13);
    MEMORY[0x27439E030](v15, v18);
    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    v18[1] = &off_2880404D0;
    sub_27032ABA0();
  }

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

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setResourcePath:(id)path
{
  v16 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v12 = 0u;
  v13 = 0u;
  sub_270340D70(&self->_property, &v12);
  if (sub_27033E778(&v12))
  {
    v5 = pathCopy;
    v9 = objc_msgSend_UTF8String(pathCopy, v6, v7, v8, 0, 0, 0, 0, 0);
    sub_2703122D4(v14, v9);
    MEMORY[0x27439E030](v11, v14);
    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    v14[1] = &off_2880404D0;
    sub_27032ABA0();
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

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setResourcePathArray:(id)array
{
  v36 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v30 = 0u;
  v31 = 0u;
  sub_270340D70(&self->_property, &v30);
  if (sub_27033E778(&v30))
  {
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    v8 = objc_msgSend_count(arrayCopy, v5, v6, v7);
    sub_270321314(v28, v8);
    v12 = 0;
    for (i = 0; i < objc_msgSend_count(arrayCopy, v9, v10, v11); ++i)
    {
      v16 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v14, i, v15);
      v17 = v16;
      v21 = objc_msgSend_UTF8String(v16, v18, v19, v20);
      sub_2703122D4(__p, v21);
      MEMORY[0x27439E030](&v32, __p);
      sub_27032EFE8(v28);
      v22 = v29 + v12;
      if (*(v29 + v12 + 23) < 0)
      {
        operator delete(*v22);
      }

      v23 = v32;
      *(v22 + 16) = v33;
      *v22 = v23;
      HIBYTE(v33) = 0;
      LOBYTE(v32) = 0;
      if (*(v22 + 47) < 0)
      {
        operator delete(*(v22 + 24));
      }

      v24 = v34;
      *(v22 + 40) = v35;
      *(v22 + 24) = v24;
      HIBYTE(v35) = 0;
      LOBYTE(v34) = 0;
      if (SHIBYTE(v33) < 0)
      {
        operator delete(v32);
      }

      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      v12 += 48;
    }

    *(&v32 + 1) = off_288041120;
    sub_270318A3C();
  }

  if ((BYTE8(v31) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v31 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v31);
  if (*(&v30 + 1))
  {
    sub_270314574(*(&v30 + 1));
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    objc_msgSend_usdProperty(v5, v6, v7, v8);
    v9 = self->_property._type == v11 && self->_property._prim._p._pointer == v12 && self->_property._proxyPrimPath._primPart._poolHandle == v13 && (v14 ^ self->_property._proxyPrimPath._propPart._poolHandle) < 8;
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
  sub_270357834(v3, &self->_property, &self->_property._prim._p._pointer, &self->_property._proxyPrimPath, &self->_property._proxyPrimPath._propPart._poolHandle);
  return bswap64(0x9E3779B97F4A7C55 * v3[0]);
}

- (id).cxx_construct
{
  p_property = &self->_property;
  self->_property._type = 2;
  self->_property._prim._p._pointer = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  p_property->_proxyPrimPath._propPart._poolHandle = 0;
  return self;
}

@end