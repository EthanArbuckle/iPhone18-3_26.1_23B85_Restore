@interface VKInternalIconManager
+ (int64_t)convertGrlSizeGroup:(unsigned __int8)a3;
+ (unsigned)convertSizeGroup:(int64_t)a3;
- (BOOL)isCachingAtlases;
- (VKInternalIconManager)init;
- (id).cxx_construct;
- (id)balloonIconForStyleAttributes:(id)a3 withStylesheetName:(id)a4 contentScale:(float)a5 sizeGroup:(int64_t)a6 modifiers:(id)a7;
- (id)imageForDataID:(unsigned int)a3 text:(id)a4 contentScale:(float)a5 sizeGroup:(int64_t)a6 modifiers:(id)a7;
- (id)imageForIconID:(unsigned int)a3 contentScale:(float)a4 sizeGroup:(int64_t)a5 modifiers:(id)a6;
- (id)imageForImageSourceKey:(id)a3;
- (id)imageForKey:(unsigned int)a3 value:(unsigned int)a4 contentScale:(float)a5 sizeGroup:(int64_t)a6 modifiers:(id)a7;
- (id)imageForName:(id)a3 contentScale:(float)a4 sizeGroup:(int64_t)a5 modifiers:(id)a6;
- (id)imageForStyleAttributes:(id)a3 styleManager:(shared_ptr<gss:(float)a5 :(int64_t)a6 StylesheetManager<gss:(id)a7 :PropertyID>>)a4 contentScale:sizeGroup:modifiers:;
- (id)imageForStyleAttributes:(id)a3 withStylesheetName:(id)a4 contentScale:(float)a5 sizeGroup:(int64_t)a6 modifiers:(id)a7;
- (id)init:(shared_ptr<grl:(shared_ptr<md:(void *)a5 :StylesheetVendor>)a4 :IconManager>)a3 stylesheetVendor:tileGroupNotificationManager:;
- (shared_ptr<grl::IconImage>)_iconImageForStyleAttributes:(id)a3 styleManager:(shared_ptr<gss:(float)a5 :(int64_t)a6 StylesheetManager<gss:(id)a7 :PropertyID>>)a4 contentScale:sizeGroup:modifiers:;
- (shared_ptr<gss::StylesheetManager<gss::PropertyID>>)_styleManagerForStylesheetName:(id)a3 contentScale:(float)a4;
- (void)_purgeStyleManagers;
- (void)dealloc;
- (void)init;
- (void)init:stylesheetVendor:tileGroupNotificationManager:;
- (void)purge;
- (void)purgeNonsharedResources;
@end

@implementation VKInternalIconManager

- (id).cxx_construct
{
  self->_stylesheetVendor = 0u;
  self->_iconManager = 0u;
  geo::read_write_lock::read_write_lock(&self->_nameToStyleManagerLock._lock);
  self->_nameToStyleManager.__tree_.__end_node_.__left_ = 0;
  *self->_anon_108 = 0;
  self->_ownedNotificationManager.__ptr_ = 0;
  self->_nameToStyleManager.__tree_.__begin_node_ = &self->_nameToStyleManager.__tree_.__end_node_;
  self->_resourceManager._vptr$_retain_ptr = &unk_1F2A2FC10;
  self->_resourceManager._obj = 0;
  self->_resourceProvider = 0u;
  self->_fontManager = 0u;
  return self;
}

- (void)purgeNonsharedResources
{
  if (!self->_isSharedIconManager)
  {
    [(VKInternalIconManager *)self purge];
    ptr = self->_stylesheetVendor.__ptr_;
    if (ptr)
    {

      md::StylesheetVendor::resetStylesheetCache(ptr);
    }
  }
}

- (void)purge
{
  ptr = self->_iconManager.__ptr_;
  if (ptr)
  {
    grl::IconManager::removeAllPacks(ptr);
  }

  [(VKInternalIconManager *)self _purgeStyleManagers];
}

- (void)dealloc
{
  if (self->_isSharedIconManager)
  {
    sharedNotificationManager = self->_sharedNotificationManager;
    if (!sharedNotificationManager)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sharedNotificationManager = self->_ownedNotificationManager.__ptr_;
  if (sharedNotificationManager)
  {
LABEL_5:
    md::TileGroupNotificationManager::removeObserver(sharedNotificationManager, self);
  }

LABEL_6:
  std::unique_ptr<md::TileGroupNotificationManager>::reset[abi:nn200100](&self->_ownedNotificationManager, 0);
  [(VKInternalIconManager *)self purge];
  v4.receiver = self;
  v4.super_class = VKInternalIconManager;
  [(VKInternalIconManager *)&v4 dealloc];
}

- (BOOL)isCachingAtlases
{
  ptr = self->_iconManager.__ptr_;
  if (ptr)
  {
    LOBYTE(ptr) = *(ptr + 88) ^ 1;
  }

  return ptr & 1;
}

- (id)balloonIconForStyleAttributes:(id)a3 withStylesheetName:(id)a4 contentScale:(float)a5 sizeGroup:(int64_t)a6 modifiers:(id)a7
{
  v12 = a3;
  v13 = a7;
  *&v14 = a5;
  [(VKInternalIconManager *)self _styleManagerForStylesheetName:a4 contentScale:v14];
  grl::IconModifiers::setComponent([v13 cppModifiers], 6);
  v28 = v32;
  v29 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v15 = a5;
  [(VKInternalIconManager *)self _iconImageForStyleAttributes:v12 styleManager:&v28 contentScale:a6 sizeGroup:v13 modifiers:v15];
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  grl::IconModifiers::setComponent([v13 cppModifiers], 3);
  v24 = v32;
  v25 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v16 = a5;
  [(VKInternalIconManager *)self _iconImageForStyleAttributes:v12 styleManager:&v24 contentScale:a6 sizeGroup:v13 modifiers:v16];
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

  v17 = [VKBalloonIcon alloc];
  v22 = v30;
  v23 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = v26;
  v21 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = [(VKBalloonIcon *)v17 initWithBalloonImage:&v22 dotImage:&v20];
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v31);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v33);
  }

  return v18;
}

- (id)imageForIconID:(unsigned int)a3 contentScale:(float)a4 sizeGroup:(int64_t)a5 modifiers:(id)a6
{
  v43[4] = *MEMORY[0x1E69E9840];
  v10 = a6;
  v38 = 1065353216;
  v39 = 4;
  v40 = 0;
  v41 = -1;
  v42 = 0;
  memset(v43, 0, 24);
  grl::IconRequestOptions::setContentScale(&v38, a4);
  grl::IconModifiers::setMirrored(&v38, [VKInternalIconManager convertSizeGroup:a5]);
  if (v10)
  {
    grl::IconRequestOptions::setVariant(&v38, [v10 variant]);
    grl::IconRequestOptions::setDataVariant(&v38, [v10 secondaryVariant]);
    grl::IconRequestOptions::setCountryCode(&v38, [v10 countryCode]);
    ptr = self->_iconManager.__ptr_;
    *(&v29 + 1) = 0;
    v27 = &v28;
    v28 = 0;
    grl::IconManager::imageForIconID(&v25, ptr, a3, [v10 cppModifiers], &v38, &v27, 0);
    v22 = v25;
    v25 = 0uLL;
    std::__tree<std::__value_type<unsigned short,grl::ImageProvider>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,grl::ImageProvider>,std::less<unsigned short>,true>,geo::allocator_adapter<std::__value_type<unsigned short,grl::ImageProvider>,grl::zone_mallocator>>::destroy(v28);
  }

  else
  {
    v27 = 0;
    v29 = 0u;
    v34 = 0;
    memset(v36, 0, sizeof(v36));
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    __asm { FMOV            V1.2S, #1.0 }

    v28 = _D1;
    BYTE14(v29) = 0;
    BYTE4(v31) = 0;
    v35 = v36;
    v37 = 0;
    v17 = self->_iconManager.__ptr_;
    v26 = 0;
    *&v25 = &v25 + 8;
    *(&v25 + 1) = 0;
    grl::IconManager::imageForIconID(&v24, v17, a3, &v27, &v38, &v25, 0);
    v22 = v24;
    v24 = 0uLL;
    std::__tree<std::__value_type<unsigned short,grl::ImageProvider>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,grl::ImageProvider>,std::less<unsigned short>,true>,geo::allocator_adapter<std::__value_type<unsigned short,grl::ImageProvider>,grl::zone_mallocator>>::destroy(*(&v25 + 1));
    grl::IconModifiers::~IconModifiers(&v27);
  }

  if (v22)
  {
    v18 = [VKIconImage alloc];
    v23 = v22;
    v19 = *(&v22 + 1);
    if (*(&v22 + 1))
    {
      atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v20 = [(VKIconImage *)v18 init:&v23, v22];
    if (*(&v23 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v23 + 1));
    }
  }

  else
  {
    v20 = 0;
    v19 = *(&v22 + 1);
  }

  v27 = v43;
  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v27);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  return v20;
}

- (id)imageForName:(id)a3 contentScale:(float)a4 sizeGroup:(int64_t)a5 modifiers:(id)a6
{
  v46[4] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  if (!v10)
  {
    v15 = 0;
    goto LABEL_18;
  }

  v41 = 1065353216;
  v42 = 4;
  v43 = 0;
  v44 = -1;
  v45 = 0;
  memset(v46, 0, 24);
  grl::IconRequestOptions::setContentScale(&v41, a4);
  grl::IconModifiers::setMirrored(&v41, [VKInternalIconManager convertSizeGroup:a5]);
  if (!v11)
  {
    ptr = self->_iconManager.__ptr_;
    std::string::basic_string[abi:nn200100]<0>(__p, [v10 UTF8String]);
    v31[0] = 0;
    v32 = 0u;
    v37 = 0;
    memset(v39, 0, sizeof(v39));
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    __asm { FMOV            V1.2S, #1.0 }

    v31[1] = _D1;
    BYTE14(v32) = 0;
    BYTE4(v34) = 0;
    v38 = v39;
    v40 = 0;
    grl::IconManager::imageForName(&v30, ptr, __p, v31, &v41, 0);
    v25 = v30;
    v30 = 0uLL;
    grl::IconModifiers::~IconModifiers(v31);
    if ((v29 & 0x80000000) == 0)
    {
LABEL_9:
      v13 = v25;
      goto LABEL_10;
    }

    v14 = __p[0];
LABEL_8:
    operator delete(v14);
    goto LABEL_9;
  }

  grl::IconRequestOptions::setVariant(&v41, [v11 variant]);
  grl::IconRequestOptions::setDataVariant(&v41, [v11 secondaryVariant]);
  grl::IconRequestOptions::setCountryCode(&v41, [v11 countryCode]);
  v12 = self->_iconManager.__ptr_;
  std::string::basic_string[abi:nn200100]<0>(v31, [v10 UTF8String]);
  grl::IconManager::imageForName(__p, v12, v31, [v11 cppModifiers], &v41, 0);
  v13 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  if (SBYTE7(v32) < 0)
  {
    v14 = v31[0];
    v25 = v13;
    goto LABEL_8;
  }

LABEL_10:
  if (v13)
  {
    v26 = v13;
    v22 = [VKIconImage alloc];
    v27 = v26;
    v23 = *(&v26 + 1);
    if (*(&v26 + 1))
    {
      atomic_fetch_add_explicit((*(&v26 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v15 = [(VKIconImage *)v22 init:&v27, v26];
    if (*(&v27 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v27 + 1));
    }
  }

  else
  {
    v15 = 0;
    v23 = *(&v13 + 1);
  }

  v31[0] = v46;
  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v31);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }

LABEL_18:

  return v15;
}

- (id)imageForKey:(unsigned int)a3 value:(unsigned int)a4 contentScale:(float)a5 sizeGroup:(int64_t)a6 modifiers:(id)a7
{
  v42[4] = *MEMORY[0x1E69E9840];
  v12 = a7;
  v37 = 1065353216;
  v38 = 4;
  v39 = 0;
  v40 = -1;
  v41 = 0;
  memset(v42, 0, 24);
  grl::IconRequestOptions::setContentScale(&v37, a5);
  grl::IconModifiers::setMirrored(&v37, [VKInternalIconManager convertSizeGroup:a6]);
  if (v12)
  {
    grl::IconRequestOptions::setVariant(&v37, [v12 variant]);
    grl::IconRequestOptions::setDataVariant(&v37, [v12 secondaryVariant]);
    grl::IconRequestOptions::setCountryCode(&v37, [v12 countryCode]);
    grl::IconManager::imageForKeyValue(&v27, self->_iconManager.__ptr_, a3, a4, [v12 cppModifiers], &v37, 0);
    v13 = v27;
  }

  else
  {
    *&v27 = 0;
    v28 = 0u;
    v33 = 0;
    memset(v35, 0, sizeof(v35));
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    __asm { FMOV            V1.2S, #1.0 }

    *(&v27 + 1) = _D1;
    BYTE14(v28) = 0;
    BYTE4(v30) = 0;
    v34 = v35;
    v36 = 0;
    grl::IconManager::imageForKeyValue(&v26, self->_iconManager.__ptr_, a3, a4, &v27, &v37, 0);
    v23 = v26;
    grl::IconModifiers::~IconModifiers(&v27);
    v13 = v23;
  }

  if (v13)
  {
    v24 = v13;
    v19 = [VKIconImage alloc];
    v25 = v24;
    v20 = *(&v24 + 1);
    if (*(&v24 + 1))
    {
      atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v21 = [(VKIconImage *)v19 init:&v25, v24];
    if (*(&v25 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v25 + 1));
    }
  }

  else
  {
    v21 = 0;
    v20 = *(&v13 + 1);
  }

  *&v27 = v42;
  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v27);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  return v21;
}

- (id)imageForDataID:(unsigned int)a3 text:(id)a4 contentScale:(float)a5 sizeGroup:(int64_t)a6 modifiers:(id)a7
{
  v10 = *&a3;
  v54[4] = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a7;
  v49 = 1065353216;
  v50 = 4;
  v51 = 0;
  v52 = -1;
  v53 = 0;
  memset(v54, 0, 24);
  grl::IconRequestOptions::setContentScale(&v49, a5);
  grl::IconModifiers::setMirrored(&v49, [VKInternalIconManager convertSizeGroup:a6]);
  if (v12)
  {
    if (v13)
    {
      grl::IconRequestOptions::setVariant(&v49, [v13 variant]);
      grl::IconRequestOptions::setDataVariant(&v49, [v13 secondaryVariant]);
      grl::IconRequestOptions::setCountryCode(&v49, [v13 countryCode]);
      ptr = self->_iconManager.__ptr_;
      std::string::basic_string[abi:nn200100]<0>(&v35, [v12 UTF8String]);
      grl::IconManager::imageForDataIDAndText(__p, ptr, v10, &v35, [v13 cppModifiers], &v49, 0);
      v15 = *__p;
      __p[0] = 0;
      __p[1] = 0;
      if ((SBYTE7(v36) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      v16 = v35;
      v29 = v15;
      goto LABEL_9;
    }

    v17 = self->_iconManager.__ptr_;
    std::string::basic_string[abi:nn200100]<0>(__p, [v12 UTF8String]);
    *&v35 = 0;
    v36 = 0u;
    v47 = 0u;
    v41 = 0;
    v43 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    __asm { FMOV            V1.2S, #1.0 }

    *(&v35 + 1) = _D1;
    BYTE14(v36) = 0;
    BYTE4(v38) = 0;
    memset(v44, 0, sizeof(v44));
    v42 = &v43;
    v48 = 0;
    v45 = 0u;
    memset(v46, 0, sizeof(v46));
    grl::IconManager::imageForDataIDAndText(&v34, v17, v10, __p, &v35, &v49, 0);
    v29 = v34;
    v34 = 0uLL;
    grl::IconModifiers::~IconModifiers(&v35);
    if (v33 < 0)
    {
      v16 = __p[0];
LABEL_9:
      operator delete(v16);
    }
  }

  else
  {
    if (v13)
    {
      grl::IconRequestOptions::setVariant(&v49, [v13 variant]);
      grl::IconRequestOptions::setDataVariant(&v49, [v13 secondaryVariant]);
      grl::IconRequestOptions::setCountryCode(&v49, [v13 countryCode]);
      grl::IconManager::imageForDataID(&v35, self->_iconManager.__ptr_, v10, [v13 cppModifiers], &v49);
      v15 = v35;
      goto LABEL_12;
    }

    v23 = self->_iconManager.__ptr_;
    *&v35 = 0;
    v36 = 0u;
    v47 = 0u;
    v41 = 0;
    v43 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    __asm { FMOV            V1.2S, #1.0 }

    *(&v35 + 1) = _D1;
    BYTE14(v36) = 0;
    BYTE4(v38) = 0;
    memset(v44, 0, sizeof(v44));
    v42 = &v43;
    v48 = 0;
    v45 = 0u;
    memset(v46, 0, sizeof(v46));
    grl::IconManager::imageForDataID(__p, v23, v10, &v35, &v49);
    v29 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    grl::IconModifiers::~IconModifiers(&v35);
  }

  v15 = v29;
LABEL_12:
  if (v15)
  {
    v30 = v15;
    v25 = [VKIconImage alloc];
    v31 = v30;
    v26 = *(&v30 + 1);
    if (*(&v30 + 1))
    {
      atomic_fetch_add_explicit((*(&v30 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v27 = [(VKIconImage *)v25 init:&v31, v30];
    if (*(&v31 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v31 + 1));
    }
  }

  else
  {
    v27 = 0;
    v26 = *(&v15 + 1);
  }

  *&v35 = v54;
  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v35);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  }

  return v27;
}

- (id)imageForStyleAttributes:(id)a3 withStylesheetName:(id)a4 contentScale:(float)a5 sizeGroup:(int64_t)a6 modifiers:(id)a7
{
  v12 = a3;
  v13 = a7;
  *&v14 = a5;
  [(VKInternalIconManager *)self _styleManagerForStylesheetName:a4 contentScale:v14];
  v18 = v20;
  v19 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v15 = a5;
  v16 = [(VKInternalIconManager *)self imageForStyleAttributes:v12 styleManager:&v18 contentScale:a6 sizeGroup:v13 modifiers:v15];
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  return v16;
}

- (id)imageForStyleAttributes:(id)a3 styleManager:(shared_ptr<gss:(float)a5 :(int64_t)a6 StylesheetManager<gss:(id)a7 :PropertyID>>)a4 contentScale:sizeGroup:modifiers:
{
  cntrl = a4.__cntrl_;
  ptr = a4.__ptr_;
  v12 = a3;
  v13 = a6;
  v15 = ptr[1];
  v21 = *ptr;
  v22 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v14 = a5;
  [(VKInternalIconManager *)self _iconImageForStyleAttributes:v12 styleManager:&v21 contentScale:cntrl sizeGroup:v13 modifiers:v14];
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }

  if (v23)
  {
    v16 = [VKIconImage alloc];
    v19 = v23;
    v20 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = [(VKIconImage *)v16 init:&v19];
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v20);
    }
  }

  else
  {
    v17 = 0;
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  return v17;
}

- (id)imageForImageSourceKey:(id)a3
{
  v46[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v41 = 1065353216;
  v42 = 4;
  v43 = 0;
  v44 = -1;
  v45 = 0;
  memset(v46, 0, 24);
  [v4 contentScale];
  grl::IconRequestOptions::setContentScale(&v41, v5);
  grl::IconModifiers::setMirrored(&v41, +[VKInternalIconManager convertSizeGroup:](VKInternalIconManager, "convertSizeGroup:", [v4 sizeGroup]));
  grl::IconRequestOptions::setVariant(&v41, [v4 variant]);
  grl::IconRequestOptions::setDataVariant(&v41, [v4 secondaryVariant]);
  grl::IconRequestOptions::setCountryCode(&v41, [v4 countryCode]);
  if ([v4 keyType] == 5)
  {
    ptr = self->_iconManager.__ptr_;
    v7 = [v4 imageName];
    std::string::basic_string[abi:nn200100]<0>(__p, [v7 UTF8String]);
    v26 = 0;
    v28 = 0u;
    v39 = 0u;
    v33 = 0;
    v35 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    __asm { FMOV            V1.2S, #1.0 }

    v27 = _D1;
    BYTE14(v28) = 0;
    BYTE4(v30) = 0;
    memset(v36, 0, sizeof(v36));
    v34 = &v35;
    v40 = 0;
    v37 = 0u;
    memset(v38, 0, sizeof(v38));
    grl::IconManager::imageForName(&v25, ptr, __p, &v26, &v41, 0);
    v21 = v25;
    v25 = 0uLL;
    grl::IconModifiers::~IconModifiers(&v26);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if ([v4 keyType] != 2)
    {
      v19 = 0;
      goto LABEL_17;
    }

    v13 = self->_iconManager.__ptr_;
    v14 = [v4 iconAttributeKey];
    v15 = [v4 iconAttributeValue];
    v26 = 0;
    v28 = 0u;
    v39 = 0u;
    v33 = 0;
    v35 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    __asm { FMOV            V1.2S, #1.0 }

    v27 = _D1;
    BYTE14(v28) = 0;
    BYTE4(v30) = 0;
    memset(v36, 0, sizeof(v36));
    v34 = &v35;
    v40 = 0;
    v37 = 0u;
    memset(v38, 0, sizeof(v38));
    grl::IconManager::imageForKeyValue(__p, v13, v14, v15, &v26, &v41, 0);
    v21 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    grl::IconModifiers::~IconModifiers(&v26);
  }

  if (!v21)
  {
    v19 = 0;
    v18 = *(&v21 + 1);
    if (!*(&v21 + 1))
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v17 = [VKIconImage alloc];
  v22 = v21;
  v18 = *(&v21 + 1);
  if (*(&v21 + 1))
  {
    atomic_fetch_add_explicit((*(&v21 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v19 = [(VKIconImage *)v17 init:&v22, v21];
  if (*(&v22 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v22 + 1));
  }

  if (*(&v21 + 1))
  {
LABEL_15:
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

LABEL_17:
  v26 = v46;
  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v26);

  return v19;
}

- (shared_ptr<grl::IconImage>)_iconImageForStyleAttributes:(id)a3 styleManager:(shared_ptr<gss:(float)a5 :(int64_t)a6 StylesheetManager<gss:(id)a7 :PropertyID>>)a4 contentScale:sizeGroup:modifiers:
{
  cntrl = a4.__cntrl_;
  ptr = a4.__ptr_;
  v13 = v7;
  v71[4] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a6;
  if (self->_iconManager.__ptr_ && *ptr && v14 && *[v14 featureStyleAttributesPtr])
  {
    if (!v15)
    {
      v15 = objc_alloc_init(VKIconModifiers);
    }

    v64[0] = 0;
    v64[1] = 0;
    v65 = 256;
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::copy(v64, [(VKIconModifiers *)v15 queryOverrides]);
    v16 = [v14 featureStyleAttributesPtr];
    v17 = v16[1];
    __p.__r_.__value_.__r.__words[0] = *v16;
    __p.__r_.__value_.__l.__size_ = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    md::createFeatureAttributeSet(v71, &__p);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v17);
    }

    gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v62, *ptr, v71, v64);
    v18 = v62;
    if (v62)
    {
      v19 = v63;
      if (v63)
      {
        atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v58, v18, v19);
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v19);
      }

      if ((v61 & 1) == 0)
      {
        goto LABEL_58;
      }

      v20 = [(VKIconModifiers *)v15 zoom];
      if (gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v58[3], 0x71u, v20))
      {
        v21 = [(VKIconModifiers *)v15 zoom];
        if (v21 >= 0x17)
        {
          v22 = 23;
        }

        else
        {
          v22 = v21;
        }

        gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<std::string>(&__p, v58[3], 0x71u, v22, 1);
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          v25 = grl::IconManager::identifierForName(self->_iconManager.__ptr_, &__p.__r_.__value_.__l.__data_, a5);
          v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v25 = 0;
        }

        if (v24 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v25)
        {
          goto LABEL_41;
        }
      }

      v28 = [(VKIconModifiers *)v15 zoom];
      v29 = v28 >= 0x17 ? 23 : v28;
      v30 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v58[3], 186, v29, 1, 0);
      if (v30)
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = 0;
        v31 = [v14 hasKey:v30 value:&__p] ? LODWORD(__p.__r_.__value_.__l.__data_) : 0;
      }

      else
      {
        v31 = 0;
      }

      v25 = grl::IconManager::identifierForMapKeyValue(self->_iconManager.__ptr_, v30, v31, a5);
      if (v25)
      {
LABEL_41:
        v32 = [(VKIconModifiers *)v15 zoom];
        __p.__r_.__value_.__s.__data_[0] = 1;
        if (v32 >= 0x17)
        {
          v33 = 23;
        }

        else
        {
          v33 = v32;
        }

        v34 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v58[3], 364, v33, 1, &__p);
        v35 = __p.__r_.__value_.__s.__data_[0];
        v36 = [(VKIconModifiers *)v15 variant];
        if (v35)
        {
          v37 = v34;
        }

        else
        {
          v37 = v36;
        }

        v38 = [(VKIconModifiers *)v15 zoom];
        __p.__r_.__value_.__s.__data_[0] = 1;
        if (v38 >= 0x17)
        {
          v39 = 23;
        }

        else
        {
          v39 = v38;
        }

        v40 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v58[3], 372, v39, 1, &__p);
        v41 = __p.__r_.__value_.__s.__data_[0];
        v42 = [(VKIconModifiers *)v15 secondaryVariant];
        if (v41)
        {
          v43 = v40;
        }

        else
        {
          v43 = v42;
        }

        v44 = [(VKIconModifiers *)v15 zoom];
        if (gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v58[3], 0x162u, v44))
        {
          v45 = [(VKIconModifiers *)v15 zoom];
          if (v45 >= 0x17)
          {
            v46 = 23;
          }

          else
          {
            v46 = v45;
          }

          v47 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v58[3], 354, v46, 1, 0);
        }

        else
        {
          v47 = [VKInternalIconManager convertSizeGroup:cntrl];
        }

        v48 = v47;
        v49 = [(VKIconModifiers *)v15 zoom];
        if (gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v58[3], 0xDAu, v49))
        {
          v50 = [(VKIconModifiers *)v15 cppModifiers];
          v51 = [(VKIconModifiers *)v15 zoom];
          if (v51 >= 0x17)
          {
            v52 = 23;
          }

          else
          {
            v52 = v51;
          }

          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v58[3], 218, v52, 1u, 0);
          grl::IconModifiers::setOpacity(v50, v53);
        }

        v57 = 0;
        if (gss::FeatureAttributeSet::getValueForAttributeKey(v71[0], v71[1], 4, &v57))
        {
          v54 = v57;
        }

        else
        {
          v54 = -1;
          v57 = -1;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 1065353216;
        __p.__r_.__value_.__s.__data_[4] = 4;
        *(__p.__r_.__value_.__r.__words + 6) = 0;
        WORD1(__p.__r_.__value_.__r.__words[1]) = -1;
        __p.__r_.__value_.__s.__data_[12] = 0;
        v69 = 0;
        v70 = 0;
        __p.__r_.__value_.__r.__words[2] = 0;
        grl::IconRequestOptions::setContentScale(&__p, a5);
        grl::IconModifiers::setMirrored(&__p, v48);
        grl::IconRequestOptions::setVariant(&__p, v37);
        grl::IconRequestOptions::setDataVariant(&__p, v43);
        grl::IconRequestOptions::setCountryCode(&__p, v54);
        v55 = self->_iconManager.__ptr_;
        v56 = [(VKIconModifiers *)v15 cppModifiers];
        v67[2] = 0;
        v66 = v67;
        v67[0] = 0;
        grl::IconManager::imageForIconID(v13, v55, v25, v56, &__p, &v66, 0);
        std::__tree<std::__value_type<unsigned short,grl::ImageProvider>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,grl::ImageProvider>,std::less<unsigned short>,true>,geo::allocator_adapter<std::__value_type<unsigned short,grl::ImageProvider>,grl::zone_mallocator>>::destroy(v67[0]);
        v66 = &__p.__r_.__value_.__r.__words[2];
        std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v66);
      }

      else
      {
LABEL_58:
        *v13 = 0;
        v13[1] = 0;
      }

      if (v61 == 1)
      {
        (*(*v58 + 56))(v58);
      }

      if (v60)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v60);
      }

      if (v59)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v59);
      }
    }

    else
    {
      *v13 = 0;
      v13[1] = 0;
    }

    if (v63)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v63);
    }

    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v71);
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v64);
  }

  else
  {
    *v13 = 0;
    v13[1] = 0;
  }

  result.__cntrl_ = v27;
  result.__ptr_ = v26;
  return result;
}

- (shared_ptr<gss::StylesheetManager<gss::PropertyID>>)_styleManagerForStylesheetName:(id)a3 contentScale:(float)a4
{
  v7 = v4;
  v8 = a3;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%f", v8, a4];
  v43 = v9;
  v10 = pthread_rwlock_rdlock(&self->_nameToStyleManagerLock._lock);
  if (v10)
  {
    geo::read_write_lock::logFailure(v10, "read lock", v11);
  }

  v12 = std::__tree<std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,NSStringMapComparison,true>,geo::allocator_adapter<std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,mdm::zone_mallocator>>::find<NSString * {__strong}>(&self->_nameToStyleManager, &v43);
  p_end_node = &self->_nameToStyleManager.__tree_.__end_node_;
  if (&self->_nameToStyleManager.__tree_.__end_node_ == v12)
  {
    geo::read_write_lock::unlock(&self->_nameToStyleManagerLock._lock);
    v14 = 0;
  }

  else
  {
    v15 = *(v12 + 40);
    v14 = *(v12 + 48);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    geo::read_write_lock::unlock(&self->_nameToStyleManagerLock._lock);
    if (v15)
    {
      goto LABEL_48;
    }
  }

  v16 = [v8 UTF8String];
  if (self->_stylesheetVendor.__ptr_)
  {
    v17 = v16;
    if (v16)
    {
      p_nameToStyleManagerLock = &self->_nameToStyleManagerLock;
      v18 = pthread_rwlock_wrlock(&self->_nameToStyleManagerLock._lock);
      if (v18)
      {
        geo::read_write_lock::logFailure(v18, "write lock", v19);
      }

      v20 = std::__tree<std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,NSStringMapComparison,true>,geo::allocator_adapter<std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,mdm::zone_mallocator>>::find<NSString * {__strong}>(&self->_nameToStyleManager, &v43);
      if (p_end_node != v20)
      {
        v15 = *(v20 + 40);
        v21 = *(v20 + 48);
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v22 = v14;
        if (!v14)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      std::string::basic_string[abi:nn200100]<0>(__p, v17);
      gss::StyleManagerExtension::initWithName<gss::PropertyID>(v41, __p, 0, self->_stylesheetVendor.__ptr_, a4);
      v15 = v41[0];
      v23 = v41[1];
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v14);
      }

      if (v40 < 0)
      {
        operator delete(__p[0]);
      }

      v38 = v23;
      v24 = v23;
      v25 = *(v15 + 520);
      v26 = *(v15 + 528);
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v26);
      }

      if (!v25)
      {
        gss::ClientStyleState<gss::PropertyID>::init();
      }

      if (*(self->_iconManager.__ptr_ + 88))
      {
        v21 = v24;
LABEL_47:
        geo::write_lock_guard::~write_lock_guard(&p_nameToStyleManagerLock);
        v9 = v43;
        v14 = v21;
LABEL_48:
        *v7 = v15;
        v7[1] = v14;
        goto LABEL_49;
      }

      left = p_end_node->__left_;
      if (p_end_node->__left_)
      {
        while (1)
        {
          while (1)
          {
            v28 = left;
            v26 = NSStringMapComparison::operator()(v9, left[4].__left_);
            if (!v26)
            {
              break;
            }

            left = v28->__left_;
            p_end_node = v28;
            if (!v28->__left_)
            {
              goto LABEL_38;
            }
          }

          v26 = NSStringMapComparison::operator()(v28[4].__left_, v9);
          if (!v26)
          {
            break;
          }

          p_end_node = v28 + 1;
          left = v28[1].__left_;
          if (!left)
          {
            goto LABEL_38;
          }
        }

        v32 = p_end_node->__left_;
        if (p_end_node->__left_)
        {
LABEL_43:
          if (v24)
          {
            atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v22 = v32[6];
          v21 = v24;
          v32[5] = v15;
          v32[6] = v24;
          if (!v22)
          {
            goto LABEL_47;
          }

LABEL_46:
          std::__shared_weak_count::__release_shared[abi:nn200100](v22);
          goto LABEL_47;
        }
      }

      else
      {
        v28 = &self->_nameToStyleManager.__tree_.__end_node_;
      }

LABEL_38:
      v29 = mdm::zone_mallocator::instance(v26);
      v30 = pthread_rwlock_rdlock((v29 + 32));
      if (v30)
      {
        geo::read_write_lock::logFailure(v30, "read lock", v31);
      }

      v32 = malloc_type_zone_malloc(*v29, 0x38uLL, 0x10E0040FD998DD6uLL);
      atomic_fetch_add((v29 + 24), 1u);
      geo::read_write_lock::unlock((v29 + 32));
      v33 = v43;
      v32[5] = 0;
      v32[6] = 0;
      v32[4] = v33;
      *v32 = 0;
      v32[1] = 0;
      v32[2] = v28;
      p_end_node->__left_ = v32;
      v34 = *self->_nameToStyleManager.__tree_.__begin_node_;
      v35 = v32;
      if (v34)
      {
        self->_nameToStyleManager.__tree_.__begin_node_ = v34;
        v35 = p_end_node->__left_;
      }

      std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(self->_nameToStyleManager.__tree_.__end_node_.__left_, v35);
      ++*self->_anon_108;
      goto LABEL_43;
    }
  }

  *v7 = 0;
  v7[1] = 0;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

LABEL_49:

  result.__cntrl_ = v37;
  result.__ptr_ = v36;
  return result;
}

- (void)_purgeStyleManagers
{
  p_nameToStyleManagerLock = &self->_nameToStyleManagerLock;
  v3 = pthread_rwlock_wrlock(&self->_nameToStyleManagerLock._lock);
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "write lock", v4);
  }

  left = self->_nameToStyleManager.__tree_.__end_node_.__left_;
  p_end_node = &self->_nameToStyleManager.__tree_.__end_node_;
  std::__tree<std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,NSStringMapComparison,true>,geo::allocator_adapter<std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,mdm::zone_mallocator>>::destroy(left);
  p_end_node[2].__left_ = 0;
  p_end_node[-1].__left_ = p_end_node;
  p_end_node->__left_ = 0;
  geo::write_lock_guard::~write_lock_guard(&p_nameToStyleManagerLock);
}

- (id)init:(shared_ptr<grl:(shared_ptr<md:(void *)a5 :StylesheetVendor>)a4 :IconManager>)a3 stylesheetVendor:tileGroupNotificationManager:
{
  ptr = a4.__ptr_;
  cntrl = a3.__cntrl_;
  v7 = a3.__ptr_;
  v28 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = VKInternalIconManager;
  v8 = [(VKInternalIconManager *)&v21 init:a3.__ptr_];
  v9 = v8;
  if (v8)
  {
    v8->_isSharedIconManager = 1;
    v11 = *v7;
    v10 = *(v7 + 1);
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = v8->_iconManager.__cntrl_;
    v9->_iconManager.__ptr_ = v11;
    v9->_iconManager.__cntrl_ = v10;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    v14 = *cntrl;
    v13 = *(cntrl + 1);
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = v9->_stylesheetVendor.__cntrl_;
    v9->_stylesheetVendor.__ptr_ = v14;
    v9->_stylesheetVendor.__cntrl_ = v13;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    }

    v9->_sharedNotificationManager = ptr;
    objc_initWeak(&location, v9);
    sharedNotificationManager = v9->_sharedNotificationManager;
    v23 = 0;
    objc_copyWeak(&v19, &location);
    v26 = 0;
    v24 = &unk_1F2A01068;
    objc_moveWeak(&v25, &v19);
    v26 = &v24;
    objc_destroyWeak(&v19);
    v27 = 0x7FFFFFFF;
    md::TileGroupNotificationManager::addObserver(sharedNotificationManager, v9, v22);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&v24);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v22);
    v17 = v9;
    objc_destroyWeak(&location);
  }

  return v9;
}

- (void)init:stylesheetVendor:tileGroupNotificationManager:
{
  objc_destroyWeak((a1 + 8));

  JUMPOUT(0x1B8C62190);
}

- (VKInternalIconManager)init
{
  v11 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VKInternalIconManager;
  v2 = [(VKInternalIconManager *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_isSharedIconManager = 0;
    v4 = objc_alloc_init(VKResourceManager);
    v9 = &unk_1F2A2FC10;
    v10 = v4;
    v5 = v4;
    geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(&v3->_resourceManager, &v9);
    v9 = &unk_1F2A2FC10;

    v7 = v3->_resourceManager._obj;
    std::allocate_shared[abi:nn200100]<md::StylesheetVendor,std::allocator<md::StylesheetVendor>,VKResourceManager * {__strong},0>();
  }

  return 0;
}

- (void)init
{
  objc_destroyWeak((a1 + 8));

  JUMPOUT(0x1B8C62190);
}

+ (int64_t)convertGrlSizeGroup:(unsigned __int8)a3
{
  if (a3 >= 0xAu)
  {
    return 4;
  }

  else
  {
    return a3;
  }
}

+ (unsigned)convertSizeGroup:(int64_t)a3
{
  if (a3 >= 0xA)
  {
    return 4;
  }

  else
  {
    return a3;
  }
}

@end