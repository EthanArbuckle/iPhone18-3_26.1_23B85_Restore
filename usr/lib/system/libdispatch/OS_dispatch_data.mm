@interface OS_dispatch_data
- (BOOL)_isCompact;
- (NSString)debugDescription;
- (OS_dispatch_data)initWithBytes:(void *)bytes length:(unint64_t)length copy:(BOOL)copy freeWhenDone:(BOOL)done bytesAreVM:(BOOL)m;
- (uint64_t)debugDescription;
- (void)_setFinalizer:(void *)finalizer;
- (void)dealloc;
@end

@implementation OS_dispatch_data

- (OS_dispatch_data)initWithBytes:(void *)bytes length:(unint64_t)length copy:(BOOL)copy freeWhenDone:(BOOL)done bytesAreVM:(BOOL)m
{
  if (copy)
  {
    v9 = 0;
  }

  else
  {
    if (done)
    {
      if (m)
      {
        v10 = &_dispatch_data_destructor_vm_deallocate;
      }

      else
      {
        v10 = &_dispatch_data_destructor_free;
      }
    }

    else
    {
      v10 = &_dispatch_data_destructor_none;
    }

    v9 = *v10;
  }

  _dispatch_data_init_with_bytes(self, bytes, length, v9);
  return self;
}

- (void)dealloc
{
  _dispatch_data_dispose(self);
  isa = self[1].super.isa;
  if (self[3].super.isa)
  {
    v4 = self[3].super.isa;
  }

  else
  {
    v4 = 0;
  }

  v5 = self[2].super.isa;
  v7.receiver = self;
  v7.super_class = OS_dispatch_data;
  [(OS_dispatch_data *)&v7 dealloc];
  if (v4 && v5)
  {
    if (!isa)
    {
      isa = dispatch_get_global_queue(0, 0);
    }

    dispatch_channel_async_f(isa, v5, v4);
  }

  if (isa)
  {
    _os_object_release_internal(isa, v6);
  }
}

- (void)_setFinalizer:(void *)finalizer
{
  if (finalizer)
  {
    finalizerCopy = finalizer;
  }

  else
  {
    finalizerCopy = 0;
  }

  self[3].super.isa = finalizerCopy;
}

- (NSString)debugDescription
{
  result = objc_lookUpClass("NSString");
  if (result)
  {
    [(OS_dispatch_data *)self debugDescription];
    return v4;
  }

  return result;
}

- (BOOL)_isCompact
{
  if (!self[6].super.isa)
  {
    return 1;
  }

  if (self[7].super.isa == 1)
  {
    self = self[8].super.isa;
    isa = self[7].super.isa;
  }

  return self[4].super.isa != 0;
}

- (uint64_t)debugDescription
{
  v9 = *MEMORY[0x1E69E9840];
  _dispatch_data_debug(self, __str, 0x800uLL);
  result = [a2 stringWithUTF8String:"<%s: %s>"];
  if (result)
  {
    result = [a2 stringWithFormat:result, object_getClassName(self), __str];
  }

  *a3 = result;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

@end