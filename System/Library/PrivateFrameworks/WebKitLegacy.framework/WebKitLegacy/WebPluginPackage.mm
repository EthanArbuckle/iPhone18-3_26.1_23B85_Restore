@interface WebPluginPackage
- (BOOL)load;
- (WebPluginPackage)initWithPath:(id)path;
- (void)dealloc;
@end

@implementation WebPluginPackage

- (WebPluginPackage)initWithPath:(id)path
{
  v13.receiver = self;
  v13.super_class = WebPluginPackage;
  v4 = [(WebBasePluginPackage *)&v13 initWithPath:?];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E696AAE8]);
    m_ptr = v4->super.path.m_impl.m_ptr;
    if (m_ptr)
    {
      atomic_fetch_add_explicit(m_ptr, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](packageType, m_ptr);
      if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(m_ptr, v7);
      }
    }

    else
    {
      *packageType = &stru_1F472E7E8;
      v11 = &stru_1F472E7E8;
    }

    nsBundle = [v5 initWithPath:*packageType];
    v4->nsBundle = nsBundle;
    v9 = *packageType;
    *packageType = 0;
    if (v9)
    {

      nsBundle = v4->nsBundle;
    }

    if (!nsBundle || ([objc_msgSend(path "pathExtension")] & 1) == 0 && (packageType[0] = 0, CFBundleGetPackageInfo(v4->super.cfBundle.m_ptr, packageType, 0), packageType[0] != 1463963724) || !-[WebBasePluginPackage getPluginInfoFromPLists](v4, "getPluginInfoFromPLists"))
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WebPluginPackage;
  [(WebBasePluginPackage *)&v3 dealloc];
}

- (BOOL)load
{
  if ([(NSBundle *)self->nsBundle isLoaded]|| (v3 = [(NSBundle *)self->nsBundle load]))
  {
    v5.receiver = self;
    v5.super_class = WebPluginPackage;
    LOBYTE(v3) = [(WebBasePluginPackage *)&v5 load];
  }

  return v3;
}

@end