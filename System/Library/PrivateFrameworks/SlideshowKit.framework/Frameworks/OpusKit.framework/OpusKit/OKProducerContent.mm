@interface OKProducerContent
- (BOOL)isLoaded;
- (OKProducerContent)initWithURL:(id)a3;
- (void)dealloc;
@end

@implementation OKProducerContent

- (OKProducerContent)initWithURL:(id)a3
{
  if ([objc_msgSend(a3 "pathExtension")])
  {
    v7.receiver = self;
    v7.super_class = OKProducerContent;
    return [(OKProducerBundle *)&v7 initWithURL:a3 bundleType:3];
  }

  else
  {
    v6 = self;
    return 0;
  }
}

- (void)dealloc
{
  objc_storeWeak(&self->_plugin, 0);
  v3.receiver = self;
  v3.super_class = OKProducerContent;
  [(OKProducerBundle *)&v3 dealloc];
}

- (BOOL)isLoaded
{
  objc_sync_enter(self);
  v3 = [(OKProducerPlugin *)self->_plugin isLoaded];
  objc_sync_exit(self);
  return v3;
}

@end