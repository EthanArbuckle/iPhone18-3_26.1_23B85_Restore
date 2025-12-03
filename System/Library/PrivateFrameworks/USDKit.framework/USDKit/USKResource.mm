@interface USKResource
+ (id)resourceWithPath:(id)path;
+ (id)resourceWithResourcePath:(id)path;
+ (id)resourceWithURL:(id)l;
+ (id)resourceWithUSKScene:(id)scene path:(id)path;
- (id).cxx_construct;
- (id)dataNoCopy;
- (void)dealloc;
@end

@implementation USKResource

+ (id)resourceWithURL:(id)l
{
  lCopy = l;
  sub_27035CAC4();
  if (objc_msgSend_checkResourceIsReachableAndReturnError_(lCopy, v4, 0, v5))
  {
    v9 = objc_alloc_init(USKResource);
    if (v9)
    {
      v10 = objc_msgSend_path(lCopy, v6, v7, v8);
      v11 = v10;
      v15 = objc_msgSend_UTF8String(v11, v12, v13, v14);
      sub_2703122D4(__p, v15);
      sub_270312068(v9, __p);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    NSLog(&cfstr_WarningUnableT_0.isa, lCopy);
    v9 = 0;
  }

  return v9;
}

+ (id)resourceWithUSKScene:(id)scene path:(id)path
{
  sceneCopy = scene;
  pathCopy = path;
  sub_27035CAC4();
  pxrInternal__aapl__pxrReserved__::ArGetResolver(v7);
  v24 = 0uLL;
  v25 = 0;
  v8 = pathCopy;
  v12 = objc_msgSend_UTF8String(v8, v9, v10, v11);
  sub_2703122D4(&v24, v12);
  if (pxrInternal__aapl__pxrReserved__::TfIsRelativePath())
  {
    if (sceneCopy)
    {
      objc_msgSend_usdStage(sceneCopy, v13, v14, v15);
    }

    else
    {
      v21 = 0;
    }

    v18 = sub_270312588(&v21);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(v22, v18);
    pxrInternal__aapl__pxrReserved__::SdfComputeAssetPathRelativeToLayer();
    sub_27036C0B4(&v24, &v23, v22, &v21);
  }

  v16 = objc_alloc_init(USKResource);
  if (v16)
  {
    if (SHIBYTE(v25) < 0)
    {
      sub_2703129A8(__p, v24, *(&v24 + 1));
    }

    else
    {
      *__p = v24;
      v20 = v25;
    }

    sub_270312068(v16, __p);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24);
  }

  return v16;
}

+ (id)resourceWithPath:(id)path
{
  pathCopy = path;
  sub_27035CAC4();
  if (objc_msgSend_length(pathCopy, v4, v5, v6))
  {
    v7 = objc_alloc_init(USKResource);
    if (v7)
    {
      v8 = pathCopy;
      v12 = objc_msgSend_UTF8String(v8, v9, v10, v11);
      sub_2703122D4(__p, v12);
      sub_270312068(v7, __p);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    NSLog(&cfstr_WarningUnableT_1.isa);
    v7 = 0;
  }

  return v7;
}

+ (id)resourceWithResourcePath:(id)path
{
  pathCopy = path;
  sub_27035CAC4();
  v7 = objc_msgSend_resolvedPath(pathCopy, v4, v5, v6);
  if (objc_msgSend_length(v7, v8, v9, v10))
  {
    v11 = objc_alloc_init(USKResource);
    if (v11)
    {
      v12 = v7;
      v16 = objc_msgSend_UTF8String(v12, v13, v14, v15);
      sub_2703122D4(__p, v16);
      sub_270312068(v11, __p);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    NSLog(&cfstr_WarningUnableT_1.isa);
    v11 = 0;
  }

  return v11;
}

- (void)dealloc
{
  if (self->_buffer.__ptr_)
  {
    cntrl = self->_buffer.__cntrl_;
    self->_buffer.__ptr_ = 0;
    self->_buffer.__cntrl_ = 0;
    if (cntrl)
    {
      sub_270312A4C(cntrl);
    }
  }

  if (self->_asset.__ptr_)
  {
    v4 = self->_asset.__cntrl_;
    self->_asset.__ptr_ = 0;
    self->_asset.__cntrl_ = 0;
    if (v4)
    {
      sub_270312A4C(v4);
    }
  }

  v5.receiver = self;
  v5.super_class = USKResource;
  [(USKResource *)&v5 dealloc];
}

- (id)dataNoCopy
{
  ptr = self->_asset.__ptr_;
  if (ptr)
  {
    (*(*ptr + 24))(&v9);
    v5 = v9;
    v9 = 0;
    cntrl = self->_buffer.__cntrl_;
    self->_buffer = v5;
    if (cntrl)
    {
      sub_270312A4C(cntrl);
      if (v9.__cntrl_)
      {
        sub_270312A4C(v9.__cntrl_);
      }

      v7 = self->_buffer.__ptr_;
      if (v7)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v7 = v5.__ptr_;
      if (v5.__ptr_)
      {
LABEL_6:
        ptr = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x277CBEA90], v4, v7, self->_length, 0, v9.__ptr_);
        goto LABEL_9;
      }
    }

    ptr = 0;
  }

LABEL_9:

  return ptr;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end