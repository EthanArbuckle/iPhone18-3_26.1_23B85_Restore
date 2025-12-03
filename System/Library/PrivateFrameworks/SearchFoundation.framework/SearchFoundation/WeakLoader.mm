@interface WeakLoader
- (SFResourceLoader)strongloader;
- (WeakLoader)initWithLoader:(id)loader;
@end

@implementation WeakLoader

- (SFResourceLoader)strongloader
{
  WeakRetained = objc_loadWeakRetained(&self->_weakLoader);

  return WeakRetained;
}

- (WeakLoader)initWithLoader:(id)loader
{
  loaderCopy = loader;
  v8.receiver = self;
  v8.super_class = WeakLoader;
  v5 = [(WeakLoader *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weakLoader, loaderCopy);
  }

  return v6;
}

@end