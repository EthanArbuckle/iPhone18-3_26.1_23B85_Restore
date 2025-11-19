@interface OS_dispatch_data
- (BOOL)_isCompact;
- (NSString)debugDescription;
- (OS_dispatch_data)initWithBytes:(void *)a3 length:(unint64_t)a4 copy:(BOOL)a5 freeWhenDone:(BOOL)a6 bytesAreVM:(BOOL)a7;
- (id)debugDescription;
- (void)_setFinalizer:(void *)a3;
- (void)dealloc;
@end

@implementation OS_dispatch_data

- (OS_dispatch_data)initWithBytes:(void *)a3 length:(unint64_t)a4 copy:(BOOL)a5 freeWhenDone:(BOOL)a6 bytesAreVM:(BOOL)a7
{
  if (a5)
  {
    v9 = 0;
  }

  else
  {
    if (a6)
    {
      if (a7)
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

  _dispatch_data_init_with_bytes(self, a3, a4, v9);
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

- (void)_setFinalizer:(void *)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self[3].super.isa = v3;
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

  if (self[7].super.isa == (&dword_0 + 1))
  {
    self = self[8].super.isa;
    isa = self[7].super.isa;
  }

  return self[4].super.isa != 0;
}

- (id)debugDescription
{
  _dispatch_data_debug(a1, __str, 0x800uLL);
  result = [a2 stringWithUTF8String:"<%s: %s>"];
  if (result)
  {
    result = [a2 stringWithFormat:result, object_getClassName(a1), __str];
  }

  *a3 = result;
  return result;
}

@end