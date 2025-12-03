@interface DOMNodeFilter
- (signed)acceptNode:(id)node;
- (void)dealloc;
@end

@implementation DOMNodeFilter

- (void)dealloc
{
  internal = self->super._internal;
  if (internal)
  {
    if (*(internal + 4) == 1)
    {
      selfCopy = self;
      (*(*internal + 16))(self->super._internal, a2);
      self = selfCopy;
    }

    else
    {
      --*(internal + 4);
    }
  }

  v4.receiver = self;
  v4.super_class = DOMNodeFilter;
  [(DOMObject *)&v4 dealloc];
}

- (signed)acceptNode:(id)node
{
  if (!node)
  {
    raiseTypeErrorException();
  }

  if (self)
  {
    self = self->super._internal;
  }

  v3 = (*(self->super.super.super.isa + 6))(&v5);
  if (!BYTE4(v5))
  {
    return v5;
  }

  if (BYTE4(v5) != 1 || !v5)
  {
    mpark::throw_bad_variant_access(v3);
  }

  return 2;
}

@end