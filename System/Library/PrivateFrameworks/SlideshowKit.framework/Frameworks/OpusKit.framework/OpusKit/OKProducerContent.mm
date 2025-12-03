@interface OKProducerContent
- (BOOL)isLoaded;
- (OKProducerContent)initWithURL:(id)l;
- (void)dealloc;
@end

@implementation OKProducerContent

- (OKProducerContent)initWithURL:(id)l
{
  if ([objc_msgSend(l "pathExtension")])
  {
    v7.receiver = self;
    v7.super_class = OKProducerContent;
    return [(OKProducerBundle *)&v7 initWithURL:l bundleType:3];
  }

  else
  {
    selfCopy = self;
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
  isLoaded = [(OKProducerPlugin *)self->_plugin isLoaded];
  objc_sync_exit(self);
  return isLoaded;
}

@end