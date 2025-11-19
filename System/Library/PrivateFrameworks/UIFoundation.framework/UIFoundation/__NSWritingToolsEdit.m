@interface __NSWritingToolsEdit
- (id)initWithRange:(void *)a3 delta:(void *)a4 identifier:(void *)a5;
- (uint64_t)range;
@end

@implementation __NSWritingToolsEdit

- (id)initWithRange:(void *)a3 delta:(void *)a4 identifier:(void *)a5
{
  v10 = a5;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = __NSWritingToolsEdit;
    v11 = objc_msgSendSuper2(&v13, sel_init);
    a1 = v11;
    if (v11)
    {
      v11[3] = a2;
      v11[4] = a3;
      v11[1] = a4;
      objc_storeStrong(v11 + 2, a5);
    }
  }

  return a1;
}

- (uint64_t)range
{
  if (result)
  {
    objc_copyStruct(&v1, (result + 24), 16, 1, 0);
    return v1;
  }

  return result;
}

@end