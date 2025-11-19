@interface DOMAbstractView
- (DOMDocument)document;
- (void)_disconnectFrame;
- (void)dealloc;
@end

@implementation DOMAbstractView

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = DOMAbstractView;
  [(DOMObject *)&v2 dealloc];
}

- (DOMDocument)document
{
  internal = self->super._internal;
  if (internal)
  {
    return kit(*(internal + 28));
  }

  else
  {
    return 0;
  }
}

- (void)_disconnectFrame
{
  v3 = 0;
  internal = self->super._internal;
  atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x1CCA63990](wrapperCacheLock, a2);
    {
      goto LABEL_3;
    }
  }

  {
    goto LABEL_3;
  }

  wrapperCache(void)::map = 0;
LABEL_3:
  WTF::HashMap<DOMObjectInternal *,NSObject *,WTF::DefaultHash<DOMObjectInternal *>,WTF::HashTraits<DOMObjectInternal *>,WTF::HashTraits<NSObject *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(&wrapperCache(void)::map, &internal);
  v4 = 1;
  atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != 1)
  {
    WTF::Lock::unlockSlow(wrapperCacheLock);
  }

  self->super._internal = 0;
}

@end