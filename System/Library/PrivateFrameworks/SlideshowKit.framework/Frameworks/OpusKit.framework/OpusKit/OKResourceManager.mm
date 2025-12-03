@interface OKResourceManager
- (OKResourceManager)initWithPresentationViewController:(id)controller;
- (id)resourceLoaderForURL:(id)l;
- (id)resourceWithURL:(id)l copy:(BOOL)copy;
- (void)dealloc;
@end

@implementation OKResourceManager

- (OKResourceManager)initWithPresentationViewController:(id)controller
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = OKResourceManager;
  v4 = [(OKResourceManager *)&v7 init];
  if (v4)
  {
    v4->_resources = objc_alloc_init(MEMORY[0x277D627A0]);
    v8[0] = +[(OKResourceLoader *)OKMicaResourceLoader];
    v8[1] = +[(OKResourceLoader *)OKImageResourceLoader];
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
    v4->_presentationViewController = controller;
    v4->_resourceLoaders = v5;
  }

  return v4;
}

- (void)dealloc
{
  resources = self->_resources;
  if (resources)
  {

    self->_resources = 0;
  }

  resourceLoaders = self->_resourceLoaders;
  if (resourceLoaders)
  {

    self->_resourceLoaders = 0;
  }

  v5.receiver = self;
  v5.super_class = OKResourceManager;
  [(OKResourceManager *)&v5 dealloc];
}

- (id)resourceLoaderForURL:(id)l
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  resourceLoaders = self->_resourceLoaders;
  v5 = [(NSArray *)resourceLoaders countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(resourceLoaders);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 canLoadResourceWithURL:l])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)resourceLoaders countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)resourceWithURL:(id)l copy:(BOOL)copy
{
  copyCopy = copy;
  v7 = [(OFLRUCache *)self->_resources objectForKey:?];
  v8 = [(OKResourceManager *)self resourceLoaderForURL:l];
  if (!(v7 | v8))
  {
    return 0;
  }

  v10 = v8;
  if (!v7)
  {
    v11 = [v8 loadResourceWithURL:l withPresentationViewController:self->_presentationViewController];
    if (!v11)
    {
      return 0;
    }

    v7 = v11;
    [(OFLRUCache *)self->_resources setObject:v11 forKey:l];
    if (copyCopy)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = v7;
    goto LABEL_9;
  }

  if (!copyCopy)
  {
    goto LABEL_8;
  }

LABEL_5:
  v7 = [v10 copyResource:v7];
LABEL_9:

  return v7;
}

@end