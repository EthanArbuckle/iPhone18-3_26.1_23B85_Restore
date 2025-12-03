@interface _PXDisplayLinkWeakReference
- (SEL)selector;
- (_PXDisplayLinkWeakReference)initWithObject:(id)object selector:(SEL)selector;
- (id)object;
- (void)handleDisplayLink:(id)link;
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

- (void)handleDisplayLink:(id)link
{
  linkCopy = link;
  object = [(_PXDisplayLinkWeakReference *)self object];
  if (object)
  {
    [object performSelector:-[_PXDisplayLinkWeakReference selector](self withObject:{"selector"), linkCopy}];
  }

  else
  {
    [linkCopy invalidate];
  }
}

- (_PXDisplayLinkWeakReference)initWithObject:(id)object selector:(SEL)selector
{
  objectCopy = object;
  v7 = [(_PXDisplayLinkWeakReference *)self init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_object, objectCopy);
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v8->_selector = selectorCopy;
  }

  return v8;
}

@end