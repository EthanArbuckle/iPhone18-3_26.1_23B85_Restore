@interface _PXDisplayLinkWeakReference
- (SEL)selector;
- (_PXDisplayLinkWeakReference)initWithObject:(id)a3 selector:(SEL)a4;
- (id)object;
- (void)handleDisplayLink:(id)a3;
@end

@implementation _PXDisplayLinkWeakReference

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

- (void)handleDisplayLink:(id)a3
{
  v5 = a3;
  v4 = [(_PXDisplayLinkWeakReference *)self object];
  if (v4)
  {
    [v4 performSelector:-[_PXDisplayLinkWeakReference selector](self withObject:{"selector"), v5}];
  }

  else
  {
    [v5 invalidate];
  }
}

- (_PXDisplayLinkWeakReference)initWithObject:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  v7 = [(_PXDisplayLinkWeakReference *)self init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_object, v6);
    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = 0;
    }

    v8->_selector = v9;
  }

  return v8;
}

@end