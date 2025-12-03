@interface VFXRemoteRendererProxyRegistry
+ (id)sharedRegistry;
- (VFXRemoteRendererProxyRegistry)init;
- (id)newProxyWithIdentifier:(unint64_t)identifier;
- (id)proxyWithIdentifier:(unint64_t)identifier;
- (void)dealloc;
@end

@implementation VFXRemoteRendererProxyRegistry

- (VFXRemoteRendererProxyRegistry)init
{
  v4.receiver = self;
  v4.super_class = VFXRemoteRendererProxyRegistry;
  v2 = [(VFXRemoteRendererProxyRegistry *)&v4 init];
  if (v2)
  {
    v2->_proxies = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXRemoteRendererProxyRegistry;
  [(VFXRemoteRendererProxyRegistry *)&v3 dealloc];
}

+ (id)sharedRegistry
{
  if (qword_1EB64FB30 != -1)
  {
    sub_1AFDF7D50();
  }

  return qword_1EB658CC8;
}

- (id)newProxyWithIdentifier:(unint64_t)identifier
{
  v5 = objc_alloc_init(VFXRemoteRendererProxy);
  objc_sync_enter(self);
  CFDictionarySetValue(self->_proxies, identifier, v5);
  objc_sync_exit(self);
  return v5;
}

- (id)proxyWithIdentifier:(unint64_t)identifier
{
  objc_sync_enter(self);
  Value = CFDictionaryGetValue(self->_proxies, identifier);
  v6 = Value;
  objc_sync_exit(self);

  return Value;
}

@end