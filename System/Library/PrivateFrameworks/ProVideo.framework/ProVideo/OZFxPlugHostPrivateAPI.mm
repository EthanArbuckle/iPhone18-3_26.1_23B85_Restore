@interface OZFxPlugHostPrivateAPI
- (BOOL)giveEffectUIFocus;
- (OZFxPlugHostPrivateAPI)initWithPluginLock:(shared_ptr<OZFxPlugSharedLock>)lock;
- (float)blendingGamma;
- (id).cxx_construct;
- (id)URLForHostResource:(id)resource withExtension:(id)extension subDirectory:(id)directory inBundle:(id)bundle;
- (id)URLForHostResource:(id)resource withExtension:(id)extension subDirectory:(id)directory inBundleWithIdentifier:(id)identifier;
- (id)URLForHostResource:(id)resource withExtension:(id)extension subDirectory:(id)directory inBundleWithURL:(id)l;
- (id)URLForMediaFolder;
- (void)dealloc;
@end

@implementation OZFxPlugHostPrivateAPI

- (OZFxPlugHostPrivateAPI)initWithPluginLock:(shared_ptr<OZFxPlugSharedLock>)lock
{
  ptr = lock.__ptr_;
  v15.receiver = self;
  v15.super_class = OZFxPlugHostPrivateAPI;
  v4 = [(OZFxPlugHostPrivateAPI *)&v15 init:lock.__ptr_];
  v5 = v4;
  if (v4)
  {
    v7 = *ptr;
    v6 = *(ptr + 1);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    cntrl = v4->_fxPlugLock.__cntrl_;
    v5->_fxPlugLock.__ptr_ = v7;
    v5->_fxPlugLock.__cntrl_ = v6;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
      v7 = v5->_fxPlugLock.__ptr_;
      v6 = v5->_fxPlugLock.__cntrl_;
    }

    v12 = v7;
    v13 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    OZFxPlugLockSentinel::OZFxPlugLockSentinel(v14, &v12);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    v9 = *v14[0];
    OZFxPlugSharedBase::getPluginUUID(*v14[0], &v11);
    v5->_pluginUUID = [(__CFString *)PCString::ns_str(&v11) copy];
    PCString::~PCString(&v11);
    v5->_sessionID = OZFxPlugSharedBase::getPluginSessionID(v9);
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v14);
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OZFxPlugHostPrivateAPI;
  [(OZFxPlugHostPrivateAPI *)&v3 dealloc];
}

- (id)URLForMediaFolder
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v12 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v13, &ptr);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (*v13[0])
  {
    v3 = (*(**v13[0] + 32))(*v13[0]);
    if (v3 && (v4 = (*(*v3 + 272))(v3)) != 0)
    {
      v5 = *(v4 + 1584);
    }

    else
    {
      v5 = 0;
    }

    PCSharedCount::PCSharedCount(&v10);
    if (v5)
    {
      OZDocument::getFilename(v5, &v9);
      PCString::set(&v10, &v9);
      PCString::~PCString(&v9);
    }

    PCString::empty(&v10);
    if (PCString::empty(&v10))
    {
      v6 = 0;
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:PCString::ns_str(&v10)];
      v6 = [objc_msgSend(v7 "URLByDeletingLastPathComponent")];
    }

    PCString::~PCString(&v10);
  }

  else
  {
    v6 = 0;
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v13);
  return v6;
}

- (BOOL)giveEffectUIFocus
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v11 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v12, &ptr);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (!*v12[0])
  {
    goto LABEL_10;
  }

  v4 = v3;
  if (v3)
  {
    v5 = (*(*v3 + 248))(v3);
    if (v5)
    {
      if (v6)
      {
        v7 = (*(*v6 + 272))(v6);
        v8 = *(v7 + 198);
        OZScene::selectObject(v7, (v4 + 48), 0, 0);
        OZDocument::postNotification(v8, 32);
        LOBYTE(v4) = 1;
        goto LABEL_11;
      }
    }

LABEL_10:
    LOBYTE(v4) = 0;
  }

LABEL_11:
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v12);
  return v4;
}

- (float)blendingGamma
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v8 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v9, &ptr);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v3 = *v9[0];
  if (*v9[0] && (v3 = (*(*v3 + 24))(v3)) != 0)
  {
    (*(*v3 + 296))(v3);
  }

  else
  {
    DefaultBlendingGamma = PCRenderModel::getDefaultBlendingGamma(v3);
  }

  v5 = DefaultBlendingGamma;
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v9);
  return v5;
}

- (id)URLForHostResource:(id)resource withExtension:(id)extension subDirectory:(id)directory inBundle:(id)bundle
{
  bundleCopy = bundle;
  if (!bundle)
  {
    bundleCopy = [MEMORY[0x277CCA8D8] mainBundle];
  }

  return [bundleCopy URLForResource:resource withExtension:extension subdirectory:directory];
}

- (id)URLForHostResource:(id)resource withExtension:(id)extension subDirectory:(id)directory inBundleWithIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = [MEMORY[0x277CCA8D8] bundleWithIdentifier:identifier];
  }

  return [(OZFxPlugHostPrivateAPI *)self URLForHostResource:resource withExtension:extension subDirectory:directory inBundle:identifier];
}

- (id)URLForHostResource:(id)resource withExtension:(id)extension subDirectory:(id)directory inBundleWithURL:(id)l
{
  if (l)
  {
    v10 = 0;
  }

  else
  {
    v10 = [MEMORY[0x277CCA8D8] bundleWithURL:0];
  }

  return [(OZFxPlugHostPrivateAPI *)self URLForHostResource:resource withExtension:extension subDirectory:directory inBundle:v10];
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end