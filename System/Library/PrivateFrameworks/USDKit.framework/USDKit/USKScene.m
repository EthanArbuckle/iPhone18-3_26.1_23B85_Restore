@interface USKScene
+ (id)newSceneWithData:(id)a3 name:(id)a4 error:(id *)a5;
+ (id)newSceneWithURL:(id)a3 error:(id *)a4;
- (BOOL)exportToURL:(id)a3;
- (BOOL)setCustomMetadata:(id)a3 value:(id)a4;
- (BOOL)setDictionaryMetadataWithKey:(id)a3 dictionaryKey:(id)a4 value:(id)a5;
- (BOOL)setMetadataWithKey:(id)a3 value:(id)a4;
- (USKNode)rootNode;
- (USKScene)init;
- (USKScene)initWithData:(id)a3 name:(id)a4 error:(id *)a5;
- (USKScene)initWithUsdStage:(TfRefPtr<pxrInternal__aapl__pxrReserved__:(id)a4 :UsdStage>)a3 fileURL:;
- (id)customMetadataWithKey:(id)a3;
- (id)dictionaryMetadataWithKey:(id)a3 dictionaryKey:(id)a4;
- (id)initSceneFromURL:(id)a3 error:(id *)a4;
- (id)loadedNodeIterator;
- (id)metadata;
- (id)metadataWithKey:(id)a3;
- (id)newNodeAtPath:(id)a3 type:(id)a4 specifier:(id)a5;
- (id)nodeAtPath:(id)a3;
- (id)nodeIterator;
- (id)objectAtPath:(id)a3;
- (id)propertyAtPath:(id)a3;
- (id)subLayerOffsets;
- (id)subLayerPaths;
- (void)addSubLayerWithPath:(id)a3 offset:(id)a4;
- (void)dealloc;
- (void)dumpUSDA;
- (void)save;
- (void)saveAndCreateARKitUSDZPackageWithURL:(id)a3;
- (void)saveAndCreateUSDZPackageWithURL:(id)a3;
@end

@implementation USKScene

+ (id)newSceneWithURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  sub_27035CAC4();
  if (dword_2807CE588)
  {
    v6 = sub_270339E4C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_27036CB08();
    }

    v7 = 0;
  }

  else
  {
    v27[0] = 0;
    v27[1] = 0;
    sub_27033F578(v27);
    sub_27033F5F4();
    v26 = 0;
    v11 = objc_msgSend_path(v5, v8, v9, v10);
    v12 = v11;
    v16 = objc_msgSend_UTF8String(v12, v13, v14, v15);
    sub_2703122D4(&__p, v16);
    pxrInternal__aapl__pxrReserved__::UsdStage::CreateNew();
    if (v25 < 0)
    {
      operator delete(__p);
    }

    sub_27033F644();
    if (v26)
    {
      v20 = [USKScene alloc];
      v23 = v26;
      sub_27036CABC(&v23);
      v7 = objc_msgSend_initWithUsdStage_fileURL_(v20, v21, &v23, v5);
      sub_270312AB8(&v23);
    }

    else if (a4)
    {
      sub_27033F694(v27, v17, v18, v19);
      *a4 = v7 = 0;
    }

    else
    {
      v7 = 0;
    }

    sub_270312AB8(&v26);
    sub_27033F57C(v27);
  }

  return v7;
}

+ (id)newSceneWithData:(id)a3 name:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  sub_27035CAC4();
  if (dword_2807CE588)
  {
    v9 = sub_270339E4C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_27036CB08();
    }
  }

  else
  {
    v11 = v7;
    v15 = objc_msgSend_bytes(v11, v12, v13, v14);
    v19 = objc_msgSend_length(v7, v16, v17, v18);
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, @"memory://%@?address=%lx&size=%ld", v21, v8, v15, v19);
    v40[0] = 0;
    v40[1] = 0;
    v41 = 0;
    v22 = v9;
    v26 = objc_msgSend_UTF8String(v22, v23, v24, v25);
    sub_2703122D4(v40, v26);
    v39[0] = 0;
    v39[1] = 0;
    sub_27033F578(v39);
    sub_27033F5F4();
    v38 = 0;
    v27 = v8;
    v31 = objc_msgSend_UTF8String(v27, v28, v29, v30);
    sub_2703122D4(__p, v31);
    pxrInternal__aapl__pxrReserved__::SdfLayer::OpenAsAnonymous();
    if (v37 < 0)
    {
      operator delete(__p[0]);
    }

    v35 = 0;
    sub_27033EA1C(__p, &v38);
    pxrInternal__aapl__pxrReserved__::UsdStage::Open();
    sub_27036CB50(__p);
    sub_27033F644();
    if (a5)
    {
      *a5 = sub_27033F694(v39, v32, v33, v34);
    }

    sub_270312AB8(&v35);
    sub_27033E9EC(&v38);
    sub_27033F57C(v39);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40[0]);
    }
  }

  return 0;
}

- (USKScene)init
{
  sub_27035CAC4();
  if (dword_2807CE588)
  {
    v3 = sub_270339E4C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_27036CB08();
    }

    goto LABEL_5;
  }

  v9.receiver = self;
  v9.super_class = USKScene;
  v6 = [(USKScene *)&v9 init];
  if (!v6)
  {
    self = 0;
LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::CreateInMemory();
  refBase = v6->_usdStage._refBase;
  v6->_usdStage._refBase = v8;
  v8 = 0;
  sub_27036BFF4(v6 + 24, refBase);
  sub_270312AB8(&v8);
  if (v6->_usdStage._refBase)
  {
    self = v6;
    v4 = self;
  }

  else
  {
    v4 = 0;
    self = v6;
  }

LABEL_6:

  return v4;
}

- (id)initSceneFromURL:(id)a3 error:(id *)a4
{
  v7 = a3;
  sub_27035CAC4();
  if (dword_2807CE588)
  {
    v8 = sub_270339E4C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_27036CB08();
    }

    goto LABEL_5;
  }

  v31.receiver = self;
  v31.super_class = USKScene;
  v11 = [(USKScene *)&v31 init];
  self = v11;
  if (!v11 || (objc_storeStrong(&v11->_fileURL, a3), !objc_msgSend_checkResourceIsReachableAndReturnError_(v7, v12, a4, v13)))
  {
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v30[0] = 0;
  v30[1] = 0;
  sub_27033F578(v30);
  sub_27033F5F4();
  v17 = objc_msgSend_path(v7, v14, v15, v16);
  v18 = v17;
  v22 = objc_msgSend_UTF8String(v18, v19, v20, v21);
  sub_2703122D4(&__p, v22);
  pxrInternal__aapl__pxrReserved__::UsdStage::Open();
  refBase = self->_usdStage._refBase;
  self->_usdStage._refBase = v29;
  v29 = 0;
  sub_27036BFF4(self + 24, refBase);
  sub_270312AB8(&v29);
  if (v28 < 0)
  {
    operator delete(__p);
  }

  sub_27033F644();
  if (self->_usdStage._refBase)
  {
    v9 = self;
  }

  else if (a4)
  {
    sub_27033F694(v30, v24, v25, v26);
    *a4 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  sub_27033F57C(v30);
LABEL_6:

  return v9;
}

- (USKScene)initWithData:(id)a3 name:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  sub_27035CAC4();
  if (dword_2807CE588)
  {
    v10 = sub_270339E4C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_27036CB08();
    }

    v11 = 0;
    v12 = self;
  }

  else
  {
    v48.receiver = self;
    v48.super_class = USKScene;
    v13 = [(USKScene *)&v48 init];
    v12 = v13;
    if (!v13)
    {
      v11 = 0;
      goto LABEL_8;
    }

    fileURL = v13->_fileURL;
    v13->_fileURL = 0;

    v16 = v8;
    v20 = objc_msgSend_bytes(v16, v17, v18, v19);
    v24 = objc_msgSend_length(v8, v21, v22, v23);
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"memory://%@?address=%lx&size=%ld", v26, v9, v20, v24);
    v46[0] = 0;
    v46[1] = 0;
    v47 = 0;
    v27 = v10;
    v31 = objc_msgSend_UTF8String(v27, v28, v29, v30);
    sub_2703122D4(v46, v31);
    v45[0] = 0;
    v45[1] = 0;
    sub_27033F578(v45);
    sub_27033F5F4();
    v44 = 0;
    v32 = v9;
    v36 = objc_msgSend_UTF8String(v32, v33, v34, v35);
    sub_2703122D4(__p, v36);
    pxrInternal__aapl__pxrReserved__::SdfLayer::OpenAsAnonymous();
    if (v43 < 0)
    {
      operator delete(__p[0]);
    }

    sub_27033EA1C(__p, &v44);
    pxrInternal__aapl__pxrReserved__::UsdStage::Open();
    refBase = v12->_usdStage._refBase;
    v12->_usdStage._refBase = v41;
    v41 = 0;
    sub_27036BFF4(v12 + 24, refBase);
    sub_27036CBA0(&v41, __p);
    sub_27033F644();
    if (v12->_usdStage._refBase)
    {
      v11 = v12;
    }

    else if (a5)
    {
      sub_27033F694(v45, v38, v39, v40);
      *a5 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }

    sub_27033E9EC(&v44);
    sub_27033F57C(v45);
    if (SHIBYTE(v47) < 0)
    {
      operator delete(v46[0]);
    }
  }

LABEL_8:
  return v11;
}

- (USKScene)initWithUsdStage:(TfRefPtr<pxrInternal__aapl__pxrReserved__:(id)a4 :UsdStage>)a3 fileURL:
{
  v7 = a4;
  sub_27035CAC4();
  if (dword_2807CE588)
  {
    v8 = sub_270339E4C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_27036CB08();
    }

    goto LABEL_5;
  }

  v14.receiver = self;
  v14.super_class = USKScene;
  v11 = [(USKScene *)&v14 init];
  p_isa = &v11->super.super.isa;
  if (!v11)
  {
    self = 0;
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  if (*a3._refBase)
  {
    refBase = v11->_usdStage._refBase;
    v11->_usdStage._refBase = *a3._refBase;
    sub_27036CABC(a3._refBase);
    sub_27036BFF4(p_isa + 24, refBase);
    objc_storeStrong(p_isa + 4, a4);
    self = p_isa;
    v9 = self;
  }

  else
  {
    v9 = 0;
    self = v11;
  }

LABEL_6:

  return v9;
}

- (BOOL)exportToURL:(id)a3
{
  v4 = a3;
  sub_270312588(&self->_usdStage._refBase);
  v5 = v4;
  v9 = objc_msgSend_fileSystemRepresentation(v5, v6, v7, v8);
  sub_2703122D4(&__p, v9);
  v13[0] = 0;
  v13[1] = 0;
  v12 = v13;
  v10 = pxrInternal__aapl__pxrReserved__::UsdStage::Export();
  sub_27033EB54(&v12, v13[0]);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  return v10;
}

- (void)save
{
  v2 = sub_270312588(&self->_usdStage._refBase);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(v4, v2);
  v3 = sub_27033AAD4(v4);
  MEMORY[0x27439F070](v3, 0);
  sub_27036CB50(v4);
}

- (void)saveAndCreateUSDZPackageWithURL:(id)a3
{
  v4 = a3;
  v5 = sub_270312588(&self->_usdStage._refBase);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(v32, v5);
  v6 = sub_27033AAD4(v32);
  MEMORY[0x27439F070](v6, 0);
  sub_27036CB50(v32);
  refBase = self->_usdStage._refBase;
  self->_usdStage._refBase = 0;
  v32[0] = 0;
  sub_27036BFF4(self + 24, refBase);
  sub_270312AB8(v32);
  fileURL = self->_fileURL;
  if (fileURL)
  {
    v12 = objc_msgSend_fileSystemRepresentation(fileURL, v8, v9, v10);
    sub_2703122D4(v30, v12);
    MEMORY[0x27439E030](v32, v30);
    v13 = v4;
    v17 = objc_msgSend_fileSystemRepresentation(v13, v14, v15, v16);
    sub_2703122D4(&v28, v17);
    pxrInternal__aapl__pxrReserved__::UsdUtilsCreateNewUsdzPackage();
    if (v29 < 0)
    {
      operator delete(v28);
    }

    if (v35 < 0)
    {
      operator delete(v34);
    }

    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    if (v31 < 0)
    {
      operator delete(v30[0]);
    }

    v21 = objc_msgSend_path(self->_fileURL, v18, v19, v20);
    v22 = v21;
    v26 = objc_msgSend_UTF8String(v22, v23, v24, v25);
    sub_2703122D4(v32, v26);
    pxrInternal__aapl__pxrReserved__::UsdStage::Open();
    v27 = self->_usdStage._refBase;
    self->_usdStage._refBase = v30[0];
    v30[0] = 0;
    sub_27036BFF4(self + 24, v27);
    sub_270312AB8(v30);
    if (v33 < 0)
    {
      operator delete(v32[0]);
    }
  }

  else
  {
    NSLog(&cfstr_UnableToSaveBe.isa);
  }
}

- (void)saveAndCreateARKitUSDZPackageWithURL:(id)a3
{
  v4 = a3;
  v5 = sub_270312588(&self->_usdStage._refBase);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(v32, v5);
  v6 = sub_27033AAD4(v32);
  MEMORY[0x27439F070](v6, 0);
  sub_27036CB50(v32);
  refBase = self->_usdStage._refBase;
  self->_usdStage._refBase = 0;
  v32[0] = 0;
  sub_27036BFF4(self + 24, refBase);
  sub_270312AB8(v32);
  fileURL = self->_fileURL;
  if (fileURL)
  {
    v12 = objc_msgSend_fileSystemRepresentation(fileURL, v8, v9, v10);
    sub_2703122D4(v30, v12);
    MEMORY[0x27439E030](v32, v30);
    v13 = v4;
    v17 = objc_msgSend_fileSystemRepresentation(v13, v14, v15, v16);
    sub_2703122D4(&v28, v17);
    pxrInternal__aapl__pxrReserved__::UsdUtilsCreateNewARKitUsdzPackage();
    if (v29 < 0)
    {
      operator delete(v28);
    }

    if (v35 < 0)
    {
      operator delete(v34);
    }

    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    if (v31 < 0)
    {
      operator delete(v30[0]);
    }

    v21 = objc_msgSend_path(self->_fileURL, v18, v19, v20);
    v22 = v21;
    v26 = objc_msgSend_UTF8String(v22, v23, v24, v25);
    sub_2703122D4(v32, v26);
    pxrInternal__aapl__pxrReserved__::UsdStage::Open();
    v27 = self->_usdStage._refBase;
    self->_usdStage._refBase = v30[0];
    v30[0] = 0;
    sub_27036BFF4(self + 24, v27);
    sub_270312AB8(v30);
    if (v33 < 0)
    {
      operator delete(v32[0]);
    }
  }

  else
  {
    NSLog(&cfstr_UnableToSaveBe.isa);
  }
}

- (id)nodeAtPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v19 = 0u;
    v20 = 0u;
    v5 = sub_270312588(&self->_usdStage._refBase);
    objc_msgSend_path(v4, v6, v7, v8);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v19, v5, v18);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(v18);
    if (sub_27033E778(&v19))
    {
      v9 = [USKNode alloc];
      v13 = v19;
      v14 = *(&v19 + 1);
      if (*(&v19 + 1))
      {
        atomic_fetch_add_explicit((*(&v19 + 1) + 48), 1uLL, memory_order_relaxed);
      }

      sub_2703256DC(&v15, &v20);
      sub_270325728(&v16, &v20 + 1);
      v17 = *(&v20 + 1);
      if ((BYTE8(v20) & 7) != 0 && (atomic_fetch_add_explicit((*(&v20 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v17 &= 0xFFFFFFFFFFFFFFF8;
      }

      v11 = objc_msgSend_initWithUsdPrim_withSceneOwner_(v9, v10, &v13, self);
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_2703143D8(&v15);
      if (v14)
      {
        sub_270314574(v14);
      }
    }

    else
    {
      v11 = 0;
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
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)propertyAtPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v23 = 0u;
    v24 = 0u;
    v5 = sub_270312588(&self->_usdStage._refBase);
    objc_msgSend_path(v4, v6, v7, v8);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetObjectAtPath(&v19, v5, v18);
    sub_27033B548(&v19, &v23);
    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v21);
    if (v20)
    {
      sub_270314574(v20);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(v18);
    if (sub_27033E778(&v23))
    {
      v9 = [USKProperty alloc];
      v13 = v23;
      v14 = *(&v23 + 1);
      if (*(&v23 + 1))
      {
        atomic_fetch_add_explicit((*(&v23 + 1) + 48), 1uLL, memory_order_relaxed);
      }

      sub_2703256DC(&v15, &v24);
      sub_270325728(&v16, &v24 + 1);
      v17 = *(&v24 + 1);
      if ((BYTE8(v24) & 7) != 0 && (atomic_fetch_add_explicit((*(&v24 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v17 &= 0xFFFFFFFFFFFFFFF8;
      }

      v11 = objc_msgSend_initWithUsdProperty_withSceneOwner_(v9, v10, &v13, self);
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_2703143D8(&v15);
      if (v14)
      {
        sub_270314574(v14);
      }
    }

    else
    {
      v11 = 0;
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

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)objectAtPath:(id)a3
{
  v4 = a3;
  v30 = 0u;
  v31 = 0u;
  v8 = sub_270312588(&self->_usdStage._refBase);
  if (v4)
  {
    objc_msgSend_path(v4, v5, v6, v7);
  }

  else
  {
    *&v28 = 0;
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::GetObjectAtPath(&v30, v8, &v28);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v28);
  v28 = 0u;
  v29 = 0u;
  sub_27033BA38(&v30, &v28);
  if (sub_27033E778(&v28))
  {
    v9 = [USKNode alloc];
    v23 = v28;
    v24 = *(&v28 + 1);
    if (*(&v28 + 1))
    {
      atomic_fetch_add_explicit((*(&v28 + 1) + 48), 1uLL, memory_order_relaxed);
    }

    sub_2703256DC(&v25, &v29);
    sub_270325728(&v26, &v29 + 1);
    v27 = *(&v29 + 1);
    if ((BYTE8(v29) & 7) != 0 && (atomic_fetch_add_explicit((*(&v29 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 &= 0xFFFFFFFFFFFFFFF8;
    }

    v11 = objc_msgSend_initWithUsdPrim_withSceneOwner_(v9, v10, &v23, self);
    if ((v27 & 7) != 0)
    {
      atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v25);
    v12 = v24;
    if (v24)
    {
LABEL_13:
      sub_270314574(v12);
    }
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    sub_27033B548(&v30, &v21);
    if (sub_27033E778(&v21))
    {
      v14 = [USKProperty alloc];
      v16 = v21;
      v17 = *(&v21 + 1);
      if (*(&v21 + 1))
      {
        atomic_fetch_add_explicit((*(&v21 + 1) + 48), 1uLL, memory_order_relaxed);
      }

      sub_2703256DC(&v18, &v22);
      sub_270325728(&v19, &v22 + 1);
      v20 = *(&v22 + 1);
      if ((BYTE8(v22) & 7) != 0 && (atomic_fetch_add_explicit((*(&v22 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v20 &= 0xFFFFFFFFFFFFFFF8;
      }

      v11 = objc_msgSend_initWithUsdProperty_withSceneOwner_(v14, v15, &v16, self);
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
      v11 = 0;
    }

    if ((BYTE8(v22) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v22 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v22);
    v12 = *(&v21 + 1);
    if (*(&v21 + 1))
    {
      goto LABEL_13;
    }
  }

  if ((BYTE8(v29) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v29 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v29);
  if (*(&v28 + 1))
  {
    sub_270314574(*(&v28 + 1));
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

  return v11;
}

- (id)newNodeAtPath:(id)a3 type:(id)a4 specifier:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v15 = 0;
    goto LABEL_56;
  }

  *&v41[8] = 0u;
  v42 = 0uLL;
  *&v41[8] = 1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  if (!v10 || @"SdfSpecifierDef" == v10)
  {
    v16 = sub_270312588(&self->_usdStage._refBase);
    objc_msgSend_path(v8, v17, v18, v19);
    v40 = 0;
    pxrInternal__aapl__pxrReserved__::UsdStage::DefinePrim(&v43, v16, v41, &v40);
    *&v41[8] = v43;
    if (*&v41[16])
    {
      sub_270314574(*&v41[16]);
    }

    *&v41[16] = v44;
    v44 = 0;
    sub_270325804(&v42, &v45);
    sub_27032585C(&v42 + 4, &v46);
    if ((BYTE8(v42) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v42 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(&v42 + 1) = v47;
    v47 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v45);
    if (v44)
    {
      sub_270314574(v44);
    }

    if ((v40 & 7) != 0)
    {
      atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    goto LABEL_30;
  }

  if (@"SdfSpecifierOver" == v10)
  {
    v20 = sub_270312588(&self->_usdStage._refBase);
    objc_msgSend_path(v8, v21, v22, v23);
    pxrInternal__aapl__pxrReserved__::UsdStage::OverridePrim(&v43, v20, v41);
    *&v41[8] = v43;
    if (*&v41[16])
    {
      sub_270314574(*&v41[16]);
    }

    *&v41[16] = v44;
    v44 = 0;
    sub_270325804(&v42, &v45);
    sub_27032585C(&v42 + 4, &v46);
    if ((BYTE8(v42) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v42 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(&v42 + 1) = v47;
    v47 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v45);
    if (v44)
    {
      sub_270314574(v44);
    }

    goto LABEL_29;
  }

  if (@"SdfSpecifierClass" == v10)
  {
    v11 = sub_270312588(&self->_usdStage._refBase);
    objc_msgSend_path(v8, v12, v13, v14);
    pxrInternal__aapl__pxrReserved__::UsdStage::CreateClassPrim(&v43, v11, v41);
    *&v41[8] = v43;
    if (*&v41[16])
    {
      sub_270314574(*&v41[16]);
    }

    *&v41[16] = v44;
    v44 = 0;
    sub_270325804(&v42, &v45);
    sub_27032585C(&v42 + 4, &v46);
    if ((BYTE8(v42) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v42 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(&v42 + 1) = v47;
    v47 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v45);
    if (v44)
    {
      sub_270314574(v44);
    }

LABEL_29:
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
LABEL_30:
    sub_2703143D8(v41);
  }

  if (sub_27033E778(&v41[8]))
  {
    if (v9)
    {
      MEMORY[0x27439E610](v41, "typeName");
      v26 = objc_msgSend_tokenWithNodeType_(USKToken, v24, v9, v25);
      v30 = v26;
      if (v26)
      {
        objc_msgSend_token(v26, v27, v28, v29);
        v43 = v40;
        v44 = &off_288040298 + 1;
        if ((v40 & 7) != 0 && (atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v43 &= 0xFFFFFFFFFFFFFFF8;
        }
      }

      else
      {
        v40 = 0;
        v43 = 0;
        v44 = &off_288040298 + 1;
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::SetMetadata(&v41[8], v41, &v43);
      sub_270311D34(&v43);
      if ((v40 & 7) != 0)
      {
        atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v41[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    v31 = [USKNode alloc];
    v35 = *&v41[8];
    v36 = *&v41[16];
    if (*&v41[16])
    {
      atomic_fetch_add_explicit((*&v41[16] + 48), 1uLL, memory_order_relaxed);
    }

    sub_2703256DC(&v37, &v42);
    sub_270325728(&v38, &v42 + 1);
    v39 = *(&v42 + 1);
    if ((BYTE8(v42) & 7) != 0 && (atomic_fetch_add_explicit((*(&v42 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v39 &= 0xFFFFFFFFFFFFFFF8;
    }

    v15 = objc_msgSend_initWithUsdPrim_withSceneOwner_(v31, v32, &v35, self);
    if ((v39 & 7) != 0)
    {
      atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_2703143D8(&v37);
    if (v36)
    {
      sub_270314574(v36);
    }
  }

  else
  {
    v15 = 0;
  }

  if ((BYTE8(v42) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v42 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_2703143D8(&v42);
  if (*&v41[16])
  {
    sub_270314574(*&v41[16]);
  }

LABEL_56:

  v33 = *MEMORY[0x277D85DE8];
  return v15;
}

- (USKNode)rootNode
{
  v13 = 0u;
  v14 = 0u;
  v3 = sub_270312588(&self->_usdStage._refBase);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPseudoRoot(&v13, v3);
  v4 = [USKNode alloc];
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

  v6 = objc_msgSend_initWithUsdPrim_withSceneOwner_(v4, v5, &v8, self);
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

  return v6;
}

- (void)addSubLayerWithPath:(id)a3 offset:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v24[0] = 0;
    v24[1] = 0;
    v8 = sub_270312588(&self->_usdStage._refBase);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(v24, v8);
    sub_27033AAD4(v24);
    v9 = v6;
    v13 = objc_msgSend_UTF8String(v9, v10, v11, v12);
    sub_2703122D4(__p, v13);
    pxrInternal__aapl__pxrReserved__::SdfLayer::InsertSubLayerPath();
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    if (v7)
    {
      v14 = sub_27033AAD4(v24);
      objc_msgSend_sdfLayerOffset(v7, v15, v16, v17);
      v21[0] = v18;
      v21[1] = v19;
      v20 = sub_27033AAD4(v24);
      pxrInternal__aapl__pxrReserved__::SdfLayer::GetSubLayerOffsets(__p, v20);
      pxrInternal__aapl__pxrReserved__::SdfLayer::SetSubLayerOffset(v14, v21);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    sub_27036CB50(v24);
  }
}

- (id)subLayerPaths
{
  v30 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v2 = sub_270312588(&self->_usdStage._refBase);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&__dst, v2);
  v3 = sub_27033AAD4(&__dst);
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetSubLayerPaths(&v21, v3);
  sub_27036CB50(&__dst);
  if (sub_27033ED5C(&v21) && v21 && (v4 = (*(*v21 + 112))(v21, v23), v4[1] != *v4))
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = sub_27033EDE0(&v21);
    sub_27033C6E8(&v21, &v24);
    if (v6)
    {
      v7 = &v21;
    }

    else
    {
      v7 = 0;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    *(&__dst + 1) = v7;
    v29 = 0;
    v26 = v24;
    v27 = v25;
    sub_27033EE64(&v18, &__dst, &v26, v25);
    v10 = v18;
    for (i = v19; v10 != i; v10 = (v10 + 24))
    {
      v29 = 0;
      __dst = 0uLL;
      if (*(v10 + 23) < 0)
      {
        sub_2703129A8(&__dst, *v10, *(v10 + 1));
      }

      else
      {
        v12 = *v10;
        v29 = *(v10 + 2);
        __dst = v12;
      }

      if (v29 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, &__dst, v9);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, __dst, v9);
      }
      v13 = ;
      objc_msgSend_addObject_(v5, v14, v13, v15);

      if (SHIBYTE(v29) < 0)
      {
        operator delete(__dst);
      }
    }

    *&__dst = &v18;
    sub_27033E88C(&__dst);
  }

  else
  {
    v5 = 0;
  }

  if (v22)
  {
    sub_270312A4C(v22);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)subLayerOffsets
{
  __p = 0;
  v22 = 0;
  v23 = 0;
  v2 = sub_270312588(&self->_usdStage._refBase);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v19, v2);
  v3 = sub_27033AAD4(&v19);
  pxrInternal__aapl__pxrReserved__::SdfLayer::GetSubLayerOffsets(&__p, v3);
  v4 = v20;
  if (v20 && atomic_fetch_add_explicit((v20 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = __p;
  if (v22 == __p)
  {
    v6 = 0;
    if (__p)
    {
LABEL_8:
      v22 = v5;
      operator delete(v5);
    }
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = __p;
    v8 = v22;
    if (__p != v22)
    {
      do
      {
        v9 = *v7;
        v10 = v7[1];
        v11 = [USKLayerOffset alloc];
        v15 = objc_msgSend_initWithSdfLayerOffset_(v11, v12, v13, v14, v9, v10);
        objc_msgSend_addObject_(v6, v16, v15, v17);

        v7 += 2;
      }

      while (v7 != v8);
    }

    v5 = __p;
    if (__p)
    {
      goto LABEL_8;
    }
  }

  return v6;
}

- (id)metadata
{
  v56[2] = *MEMORY[0x277D85DE8];
  v36 = objc_opt_new();
  v3 = objc_opt_new();
  v51 = 0;
  v52[0] = 0;
  v52[1] = 0;
  v4 = sub_270312588(&self->_usdStage._refBase);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPseudoRoot(&v42, v4);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetAllAuthoredMetadata(&v51, &v42);
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

  v6 = v51;
  if (v51 != v52)
  {
    v7 = *(MEMORY[0x277D82818] + 64);
    v34 = v7;
    v35 = *MEMORY[0x277D82818];
    v33 = *(MEMORY[0x277D82818] + 72);
    do
    {
      v55 = 0;
      v56[0] = 0;
      v56[1] = 0;
      v8 = sub_27033E814(&v55, v6 + 4);
      v11 = MEMORY[0x277CCACA8];
      if ((v55 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = (v55 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
      }

      if (*(EmptyString + 23) < 0)
      {
        EmptyString = *EmptyString;
      }

      v13 = objc_msgSend_stringWithUTF8String_(v11, v9, EmptyString, v10);
      objc_msgSend_addObject_(v36, v14, v13, v15);

      v50 = 0;
      v16 = atomic_load(off_279E01258);
      if (!v16)
      {
        pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
      }

      __p[0] = 0;
      *&v42 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(v16, v56, __p);
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v50, &v42);
      if ((__p[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v50)
      {
        v17 = [USKData alloc];
        sub_270313C14(v53, v56);
        v37 = v50;
        if ((v50 & 7) != 0 && (atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v37 &= 0xFFFFFFFFFFFFFFF8;
        }

        v19 = objc_msgSend_initWithVtValue_typeName_withSceneOwner_(v17, v18, v53, &v37, self);
        objc_msgSend_addObject_(v3, v20, v19, v21);

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
        v22 = [USKData alloc];
        std::stringbuf::str();
        MEMORY[0x27439E620](&v41, __p);
        v54[0] = v41;
        v54[1] = &off_288040298 + 1;
        if ((v41 & 7) != 0 && (atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v54[0] &= 0xFFFFFFFFFFFFFFF8;
        }

        MEMORY[0x27439E610](&v38, "token");
        v24 = objc_msgSend_initWithVtValue_typeName_withSceneOwner_(v22, v23, v54, &v38, self);
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

      v27 = v6[1];
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
          v28 = v6[2];
          v29 = *v28 == v6;
          v6 = v28;
        }

        while (!v29);
      }

      v6 = v28;
    }

    while (v28 != v52);
  }

  v30 = objc_msgSend_dictionaryWithObjects_forKeys_(MEMORY[0x277CBEAC0], v5, v3, v36);
  sub_27033F310(&v51, v52[0]);

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (BOOL)setMetadataWithKey:(id)a3 value:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v31 = 0;
  v8 = v6;
  v12 = objc_msgSend_UTF8String(v8, v9, v10, v11);
  MEMORY[0x27439E610](&v31, v12);
  v36._storage = 0;
  v36._info._ptrAndBits = 0;
  v13 = atomic_load(off_279E01258);
  if (!v13)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
  }

  if (pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsRegistered(v13, &v31, &v36))
  {
    if (!v36._info._ptrAndBits)
    {
      goto LABEL_10;
    }

    Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v36);
    if (v7)
    {
      objc_msgSend_value(v7, v14, v15, v16);
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }

    v19 = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v34);
    sub_270311D34(&v34);
    if (Type != v19)
    {
      v34 = 0;
      v35 = 0;
      if (v7)
      {
        objc_msgSend_value(v7, v20, v21, v22);
      }

      else
      {
        v32[0] = 0;
        v32[1] = 0;
      }

      pxrInternal__aapl__pxrReserved__::VtValue::CastToTypeOf(v33, v32, &v36, v21);
      sub_270312D2C(&v34, v33);
      sub_270311D34(v33);
      sub_270311D34(v32);
      v28 = sub_270312588(&self->_usdStage._refBase);
      v27 = pxrInternal__aapl__pxrReserved__::UsdStage::SetMetadata(v28, &v31, &v34);
    }

    else
    {
LABEL_10:
      v26 = sub_270312588(&self->_usdStage._refBase);
      if (v7)
      {
        objc_msgSend_value(v7, v23, v24, v25);
      }

      else
      {
        v34 = 0;
        v35 = 0;
      }

      v27 = pxrInternal__aapl__pxrReserved__::UsdStage::SetMetadata(v26, &v31, &v34);
    }

    v18 = v27;
    sub_270311D34(&v34);
  }

  else
  {
    v18 = 0;
  }

  sub_270311D34(&v36);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)setDictionaryMetadataWithKey:(id)a3 dictionaryKey:(id)a4 value:(id)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v45 = 0;
  v11 = v8;
  v15 = objc_msgSend_UTF8String(v11, v12, v13, v14);
  MEMORY[0x27439E610](&v45, v15);
  v44 = 0;
  v16 = v9;
  v20 = objc_msgSend_UTF8String(v9, v17, v18, v19);
  MEMORY[0x27439E610](&v44, v20);
  v48._storage = 0;
  v48._info._ptrAndBits = 0;
  v21 = atomic_load(off_279E01258);
  if (!v21)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
  }

  IsRegistered = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::IsRegistered(v21, &v45, &v48);
  if (!IsRegistered)
  {
    v23 = 0;
    goto LABEL_37;
  }

  if ((v48._info._ptrAndBits & 4) != 0)
  {
    IsRegistered = (*((v48._info._ptrAndBits & 0xFFFFFFFFFFFFFFF8) + 168))(&v48);
  }

  if ((v44 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(IsRegistered);
  }

  ValueAtPath = pxrInternal__aapl__pxrReserved__::VtDictionary::GetValueAtPath();
  p_storage = &ValueAtPath->_storage;
  if (ValueAtPath)
  {
    if (&v48 != ValueAtPath)
    {
      if (!ValueAtPath->_info._ptrAndBits)
      {
        if (v48._info._ptrAndBits && (v48._info._ptrAndBits & 3) != 3)
        {
          (*((v48._info._ptrAndBits & 0xFFFFFFFFFFFFFFF8) + 32))(&v48);
        }

        v48._info._ptrAndBits = 0;
        goto LABEL_28;
      }

      v49 = 0;
      v50 = 0;
      sub_270311CD0(&v49, &v48);
      v26 = p_storage[1];
      v27 = ~*p_storage[1].__data;
      v48._info._ptrAndBits = v26;
      if ((v27 & 3) != 0)
      {
        (*((v26 & 0xFFFFFFFFFFFFFFF8) + 24))(p_storage, &v48);
      }

      else
      {
        v48._storage = *p_storage;
      }

      if (v50)
      {
        (*(v50 + 32))(&v49);
      }
    }
  }

  else
  {
    v50 = 0;
    sub_270312D2C(&v48, &v49);
    sub_270311D34(&v49);
  }

  if (v48._info._ptrAndBits)
  {
    Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v48);
    if (v10)
    {
      objc_msgSend_value(v10, v28, v29, v30);
    }

    else
    {
      v49 = 0;
      v50 = 0;
    }

    v32 = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v49);
    sub_270311D34(&v49);
    if (Type != v32)
    {
      v49 = 0;
      v50 = 0;
      if (v10)
      {
        objc_msgSend_value(v10, v33, v34, v35);
      }

      else
      {
        v46[0] = 0;
        v46[1] = 0;
      }

      pxrInternal__aapl__pxrReserved__::VtValue::CastToTypeOf(v47, v46, &v48, v34);
      sub_270312D2C(&v49, v47);
      sub_270311D34(v47);
      sub_270311D34(v46);
      v41 = sub_270312588(&self->_usdStage._refBase);
      v40 = pxrInternal__aapl__pxrReserved__::UsdStage::SetMetadataByDictKey(v41, &v45, &v44, &v49);
      goto LABEL_36;
    }
  }

LABEL_28:
  v39 = sub_270312588(&self->_usdStage._refBase);
  if (v10)
  {
    objc_msgSend_value(v10, v36, v37, v38);
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  v40 = pxrInternal__aapl__pxrReserved__::UsdStage::SetMetadataByDictKey(v39, &v45, &v44, &v49);
LABEL_36:
  v23 = v40;
  sub_270311D34(&v49);
LABEL_37:
  sub_270311D34(&v48);
  if ((v44 & 7) != 0)
  {
    atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v45 & 7) != 0)
  {
    atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v42 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)setCustomMetadata:(id)a3 value:(id)a4
{
  v25[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v24 = 0;
  v8 = atomic_load(MEMORY[0x277D86540]);
  if (!v8)
  {
    sub_27033E930();
  }

  v9 = *(v8 + 80);
  v24 = v9;
  if ((v9 & 7) != 0)
  {
    v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v10;
    }
  }

  v23 = 0;
  v11 = v6;
  v15 = objc_msgSend_UTF8String(v11, v12, v13, v14);
  MEMORY[0x27439E610](&v23, v15);
  v19 = sub_270312588(&self->_usdStage._refBase);
  if (v7)
  {
    objc_msgSend_value(v7, v16, v17, v18);
  }

  else
  {
    v25[0] = 0;
    v25[1] = 0;
  }

  v20 = pxrInternal__aapl__pxrReserved__::UsdStage::SetMetadataByDictKey(v19, &v24, &v23, v25);
  sub_270311D34(v25);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)metadataWithKey:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = 0;
  v23 = 0;
  v5 = sub_270312588(&self->_usdStage._refBase);
  v6 = v4;
  v10 = objc_msgSend_UTF8String(v6, v7, v8, v9);
  MEMORY[0x27439E610](&v20, v10);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetMetadata(v5, &v20, &v22);
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
    v14 = objc_msgSend_initWithVtValue_typeName_withSceneOwner_(v11, v13, v21, &v19, self);
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

- (id)dictionaryMetadataWithKey:(id)a3 dictionaryKey:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v51 = 0;
  v52 = 0;
  v8 = sub_270312588(&self->_usdStage._refBase);
  v9 = v6;
  v13 = objc_msgSend_UTF8String(v9, v10, v11, v12);
  MEMORY[0x27439E610](&v47, v13);
  v14 = v7;
  v18 = objc_msgSend_UTF8String(v7, v15, v16, v17);
  MEMORY[0x27439E610](&v43, v18);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetMetadataByDictKey(v8, &v47, &v43, &v51);
  if ((v43 & 7) != 0)
  {
    atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v47 & 7) != 0)
  {
    atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v52)
  {
    if (sub_27033E064(&v51))
    {
      v45 = 0;
      v43 = 0u;
      v44 = 0u;
      v19 = sub_27031DE50(&v51);
      v20 = *(v19 + 16);
      v43 = *v19;
      v44 = v20;
      v21 = *(v19 + 32);
      v45 = v21;
      if (v21)
      {
        v22 = (v21 - 1);
        if (*(&v44 + 1))
        {
          v22 = *(&v44 + 1);
        }

        atomic_fetch_add_explicit(v22, 1uLL, memory_order_relaxed);
      }

      v42 = 0;
      memset(v41, 0, sizeof(v41));
      sub_27032EFE8(&v43);
      v23 = v45;
      sub_27032EFE8(&v43);
      v24 = &v45[3 * v43];
      if (v23 == v24)
      {
LABEL_36:
        *(&v47 + 1) = off_288041120;
        sub_270318A3C();
      }

      while (1)
      {
        __dst[1] = 0;
        v40 = 0;
        __dst[0] = 0;
        if (*(v23 + 23) < 0)
        {
          sub_2703129A8(__dst, *v23, *(v23 + 1));
        }

        else
        {
          v25 = *v23;
          v40 = *(v23 + 2);
          *__dst = v25;
        }

        __p[0] = 0;
        __p[1] = 0;
        v38 = 0;
        if (*(v23 + 47) < 0)
        {
          sub_2703129A8(__p, *(v23 + 3), *(v23 + 4));
        }

        else
        {
          *__p = *(v23 + 24);
          v38 = *(v23 + 5);
        }

        if (SHIBYTE(v38) < 0)
        {
          if (!__p[1])
          {
LABEL_22:
            v26 = sub_270312588(&self->_usdStage._refBase);
            pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v35, v26);
            pxrInternal__aapl__pxrReserved__::SdfComputeAssetPathRelativeToLayer();
            if (SHIBYTE(v38) < 0)
            {
              operator delete(__p[0]);
            }

            *__p = v47;
            v38 = v48;
            HIBYTE(v48) = 0;
            LOBYTE(v47) = 0;
            v27 = v36;
            if (v36 && atomic_fetch_add_explicit((v36 + 8), 0xFFFFFFFF, memory_order_release) == 1)
            {
              (*(*v27 + 8))(v27);
            }
          }
        }

        else if (!HIBYTE(v38))
        {
          goto LABEL_22;
        }

        MEMORY[0x27439E040](&v47, __dst, __p);
        sub_27033F384(v41, &v47);
        if (v50 < 0)
        {
          operator delete(v49);
        }

        if (SHIBYTE(v48) < 0)
        {
          operator delete(v47);
        }

        if (SHIBYTE(v38) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v40) < 0)
        {
          operator delete(__dst[0]);
        }

        v23 += 3;
        if (v23 == v24)
        {
          goto LABEL_36;
        }
      }
    }

    v28 = [USKData alloc];
    sub_270313C14(v46, &v51);
    v29 = atomic_load(off_279E01258);
    if (!v29)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
    }

    *&v43 = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v51);
    *&v41[0] = 0;
    *&v47 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(v29, &v43, v41);
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v34, &v47);
    v31 = objc_msgSend_initWithVtValue_typeName_withSceneOwner_(v28, v30, v46, &v34, self);
    if ((v34 & 7) != 0)
    {
      atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v41[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((*&v41[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_270311D34(v46);
  }

  else
  {
    v31 = 0;
  }

  sub_270311D34(&v51);

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

- (id)customMetadataWithKey:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23 = 0;
  v24 = 0;
  v5 = sub_270312588(&self->_usdStage._refBase);
  v6 = atomic_load(MEMORY[0x277D86540]);
  if (!v6)
  {
    sub_27033E930();
  }

  v7 = v4;
  v11 = objc_msgSend_UTF8String(v7, v8, v9, v10);
  MEMORY[0x27439E610](&v21, v11);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetMetadataByDictKey(v5, (v6 + 72), &v21, &v23);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v24)
  {
    v12 = [USKData alloc];
    sub_270313C14(v22, &v23);
    v13 = atomic_load(off_279E01258);
    if (!v13)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
    }

    v18 = 0;
    Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v23);
    v21 = pxrInternal__aapl__pxrReserved__::SdfSchemaBase::FindType(v13, &Type, &v18);
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v20, &v21);
    v15 = objc_msgSend_initWithVtValue_typeName_withSceneOwner_(v12, v14, v22, &v20, self);
    if ((v20 & 7) != 0)
    {
      atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v18 & 7) != 0)
    {
      atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_270311D34(v22);
  }

  else
  {
    v15 = 0;
  }

  sub_270311D34(&v23);

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)nodeIterator
{
  v3 = [USKNodeSubtreeIterator alloc];
  sub_27033F45C(v8, &self->_usdStage);
  v6 = objc_msgSend_initWithScene_(v3, v4, v8, v5);
  sub_27036CCA8(v8, v6);
  return v6;
}

- (id)loadedNodeIterator
{
  v3 = [USKNodeSubtreeIterator alloc];
  sub_27033F45C(v9, &self->_usdStage);
  v8 = 0;
  v7 = vdupq_n_s64(2uLL);
  v5 = objc_msgSend_initWithScene_withPredicate_(v3, v4, v9, &v7);
  sub_27036CD0C(&v7, v9, v5);
  return v5;
}

- (void)dumpUSDA
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  v2 = sub_270312588(&self->_usdStage._refBase);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v7, v2);
  sub_27033AAD4(&v7);
  pxrInternal__aapl__pxrReserved__::SdfLayer::ExportToString();
  sub_27036CB50(&v7);
  if (v10 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v10 >= 0)
  {
    v4 = HIBYTE(v10);
  }

  else
  {
    v4 = v9;
  }

  v5 = sub_2703180A8(MEMORY[0x277D82678], p_p, v4);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v6 = std::locale::use_facet(&v7, MEMORY[0x277D82680]);
  (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&v7);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }
}

- (void)dealloc
{
  if (self->_usdStage._refBase)
  {
    sub_27033E684(&self->_usdStage);
  }

  v3.receiver = self;
  v3.super_class = USKScene;
  [(USKScene *)&v3 dealloc];
}

@end