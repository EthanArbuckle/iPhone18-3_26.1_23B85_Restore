@interface RBShaderLibrary
+ (RBShaderLibrary)defaultLibrary;
+ (RBShaderLibrary)libraryWithContentsOfURL:(id)a3;
+ (RBShaderLibrary)libraryWithData:(id)a3;
+ (RBShaderLibrary)libraryWithSource:(id)a3;
+ (RBShaderLibrary)systemLibrary;
+ (id)defaultLibraryWithBundle:(id)a3;
+ (uint64_t)nullLibrary;
- (MTLLibrary)metalLibrary;
- (NSBundle)bundle;
- (NSData)data;
- (NSString)source;
- (NSURL)URL;
- (void)initWithLibrary:(void *)result;
@end

@implementation RBShaderLibrary

+ (uint64_t)nullLibrary
{
  objc_opt_self();
  {
    +[RBShaderLibrary nullLibrary]::null_library = +[RBShaderLibrary libraryWithData:](RBShaderLibrary, "libraryWithData:", [MEMORY[0x1E695DEF0] data]);
  }

  return +[RBShaderLibrary nullLibrary]::null_library;
}

+ (RBShaderLibrary)systemLibrary
{
  {
    +[RBShaderLibrary systemLibrary]::$_1::operator()();
  }

  return +[RBShaderLibrary systemLibrary]::system_library;
}

+ (RBShaderLibrary)defaultLibrary
{
  {
    +[RBShaderLibrary defaultLibrary]::default_library = +[RBShaderLibrary defaultLibraryWithBundle:](RBShaderLibrary, "defaultLibraryWithBundle:", [MEMORY[0x1E696AAE8] mainBundle]);
  }

  return +[RBShaderLibrary defaultLibrary]::default_library;
}

+ (id)defaultLibraryWithBundle:(id)a3
{
  if (a3)
  {
    result = objc_getAssociatedObject(a3, "RBShaderLibrary");
    if (!result)
    {
      objc_opt_new();
      operator new();
    }
  }

  else
  {

    return +[RBShaderLibrary nullLibrary];
  }

  return result;
}

+ (RBShaderLibrary)libraryWithData:(id)a3
{
  [a3 copy];
  objc_opt_new();
  operator new();
}

+ (RBShaderLibrary)libraryWithContentsOfURL:(id)a3
{
  [a3 copy];
  objc_opt_new();
  operator new();
}

+ (RBShaderLibrary)libraryWithSource:(id)a3
{
  [a3 copy];
  objc_opt_new();
  operator new();
}

- (NSBundle)bundle
{
  p = self->_library._p;
  if (*(p + 6))
  {
    return 0;
  }

  else
  {
    return *(p + 2);
  }
}

- (NSData)data
{
  p = self->_library._p;
  if (*(p + 6) == 2)
  {
    return *(p + 2);
  }

  else
  {
    return 0;
  }
}

- (NSURL)URL
{
  p = self->_library._p;
  if (*(p + 6) == 1)
  {
    return *(p + 2);
  }

  else
  {
    return 0;
  }
}

- (MTLLibrary)metalLibrary
{
  p = self->_library._p;
  if (*(p + 6) == 3)
  {
    return *(p + 2);
  }

  else
  {
    return 0;
  }
}

- (NSString)source
{
  p = self->_library._p;
  if (*(p + 6) == 4)
  {
    return *(p + 2);
  }

  else
  {
    return 0;
  }
}

- (void)initWithLibrary:(void *)result
{
  if (result)
  {
    v5.receiver = result;
    v5.super_class = RBShaderLibrary;
    result = objc_msgSendSuper2(&v5, sel_init);
    if (result)
    {
      if (a2)
      {
        v3 = result[1];
        if (v3 != a2)
        {
          if (v3)
          {
            if (atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
            {
              __dmb(9u);
              v4 = result;
              (*(*v3 + 8))(v3);
              result = v4;
            }
          }

          atomic_fetch_add_explicit(a2 + 2, 1u, memory_order_relaxed);
          result[1] = a2;
        }
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

@end