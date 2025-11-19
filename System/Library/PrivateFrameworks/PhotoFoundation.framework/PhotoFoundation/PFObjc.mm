@interface PFObjc
@end

@implementation PFObjc

objc_class *__PFObjc_enumerateSubclassesForHeader_block_invoke(uint64_t a1, char *name)
{
  v4 = *(a1 + 40);
  if (!v4 || (v5 = strlen(*(a1 + 40)), result = strncmp(name, v4, v5), !result))
  {
    result = objc_lookUpClass(name);
    if (result)
    {
      v7 = *(a1 + 48);
      do
      {
        result = class_getSuperclass(result);
      }

      while (result && result != v7);
      if (result == v7)
      {
        v8 = *(*(a1 + 32) + 16);

        return v8();
      }
    }
  }

  return result;
}

@end