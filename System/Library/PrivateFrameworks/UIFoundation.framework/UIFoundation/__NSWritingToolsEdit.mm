@interface __NSWritingToolsEdit
- (id)initWithRange:(void *)range delta:(void *)delta identifier:(void *)identifier;
- (uint64_t)range;
@end

@implementation __NSWritingToolsEdit

- (id)initWithRange:(void *)range delta:(void *)delta identifier:(void *)identifier
{
  identifierCopy = identifier;
  if (self)
  {
    v13.receiver = self;
    v13.super_class = __NSWritingToolsEdit;
    v11 = objc_msgSendSuper2(&v13, sel_init);
    self = v11;
    if (v11)
    {
      v11[3] = a2;
      v11[4] = range;
      v11[1] = delta;
      objc_storeStrong(v11 + 2, identifier);
    }
  }

  return self;
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