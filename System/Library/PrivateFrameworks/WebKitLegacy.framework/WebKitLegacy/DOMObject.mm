@interface DOMObject
- (DOMObject)init;
- (DOMStyleSheet)sheet;
- (void)dealloc;
@end

@implementation DOMObject

- (DOMObject)init
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D920];
  v4 = objc_opt_class();
  [v2 raise:v3 format:{@"+[%@ init]: should never be used", NSStringFromClass(v4)}];
  return 0;
}

- (void)dealloc
{
  if (!self->_internal)
  {
    goto LABEL_6;
  }

  v3 = 0;
  internal = self->_internal;
  atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x1CCA63990](wrapperCacheLock, a2);
    {
      goto LABEL_4;
    }
  }

  {
    goto LABEL_4;
  }

  wrapperCache(void)::map = 0;
LABEL_4:
  WTF::HashMap<DOMObjectInternal *,NSObject *,WTF::DefaultHash<DOMObjectInternal *>,WTF::HashTraits<DOMObjectInternal *>,WTF::HashTraits<NSObject *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(&wrapperCache(void)::map, &internal);
  v4 = 1;
  atomic_compare_exchange_strong_explicit(wrapperCacheLock, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != 1)
  {
    WTF::Lock::unlockSlow(wrapperCacheLock);
  }

LABEL_6:
  v5.receiver = self;
  v5.super_class = DOMObject;
  [(DOMObject *)&v5 dealloc];
}

- (DOMStyleSheet)sheet
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_2:
    v3 = *(self->_internal + 19);

    return kit(v3);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self)
    {
      v3 = *(self->_internal + 26);
    }

    else
    {
      v3 = MEMORY[0xD0];
    }

    return kit(v3);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!self)
    {
      v3 = MEMORY[0x98];

      return kit(v3);
    }

    goto LABEL_2;
  }

  return 0;
}

@end