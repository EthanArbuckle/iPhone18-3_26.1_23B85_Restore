@interface PKDisplayLinkTargetProxy
- (id)initWithTarget:(id *)target;
- (void)drawWithDisplayLink:(id)link;
@end

@implementation PKDisplayLinkTargetProxy

- (void)drawWithDisplayLink:(id)link
{
  linkCopy = link;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  [(PKRenderLoop *)WeakRetained _drawWithDisplayLink:linkCopy];
}

- (id)initWithTarget:(id *)target
{
  v3 = a2;
  if (target)
  {
    v6.receiver = target;
    v6.super_class = PKDisplayLinkTargetProxy;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    target = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 1, v3);
    }
  }

  return target;
}

@end