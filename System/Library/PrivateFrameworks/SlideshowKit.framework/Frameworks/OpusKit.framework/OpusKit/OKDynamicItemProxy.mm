@interface OKDynamicItemProxy
- (CGAffineTransform)transform;
- (CGPoint)center;
- (CGRect)bounds;
- (OKDynamicItemProxy)init;
- (OKDynamicItemProxy)initWithProxiedObject:(id)object;
- (void)dealloc;
- (void)enforceInitialCenter:(CGPoint)center size:(CGSize)size andTransform:(CGAffineTransform *)transform;
- (void)resetInitialValues;
- (void)setCenter:(CGPoint)center;
- (void)setTransform:(CGAffineTransform *)transform;
@end

@implementation OKDynamicItemProxy

- (OKDynamicItemProxy)init
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = OKDynamicItemProxy;
  v2 = [(OKDynamicItemProxy *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_enabled = 0;
    v4 = objc_alloc(MEMORY[0x277D754B8]);
    v8[0] = v3;
    v5 = [v4 initWithItems:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v8, 1)}];
    v3->_bodyBehavior = v5;
    [(UIDynamicItemBehavior *)v5 setElasticity:0.0];
    [(UIDynamicItemBehavior *)v3->_bodyBehavior setFriction:0.0];
    [(UIDynamicItemBehavior *)v3->_bodyBehavior setDensity:0.0];
    [(UIDynamicItemBehavior *)v3->_bodyBehavior setResistance:0.0];
    [(UIDynamicItemBehavior *)v3->_bodyBehavior setAngularResistance:0.0];
    [(UIDynamicItemBehavior *)v3->_bodyBehavior setAllowsRotation:1];
    v3->_collisionGroups = 0;
    v3->_attachmentBehaviors = 0;
    v3->_pushGroups = 0;
  }

  return v3;
}

- (OKDynamicItemProxy)initWithProxiedObject:(id)object
{
  v4 = [(OKDynamicItemProxy *)self init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_proxiedObject, object);
  }

  return v5;
}

- (void)dealloc
{
  objc_storeWeak(&self->_proxiedObject, 0);
  attachmentBehaviors = self->_attachmentBehaviors;
  if (attachmentBehaviors)
  {

    self->_attachmentBehaviors = 0;
  }

  bodyBehavior = self->_bodyBehavior;
  if (bodyBehavior)
  {

    self->_bodyBehavior = 0;
  }

  collisionGroups = self->_collisionGroups;
  if (collisionGroups)
  {

    self->_collisionGroups = 0;
  }

  pushGroups = self->_pushGroups;
  if (pushGroups)
  {

    self->_pushGroups = 0;
  }

  v7.receiver = self;
  v7.super_class = OKDynamicItemProxy;
  [(OKDynamicItemProxy *)&v7 dealloc];
}

- (void)resetInitialValues
{
  parentWidgetView = [(OKDynamicItemProxiedObject *)[(OKDynamicItemProxy *)self proxiedObject] parentWidgetView];
  [(OKDynamicItemProxiedObject *)[(OKDynamicItemProxy *)self proxiedObject] center];
  v6 = v4;
  v7 = v5;
  if (parentWidgetView)
  {
    [parentWidgetView convertPoint:objc_msgSend(objc_msgSend(parentWidgetView toView:{"pageViewController"), "view"), v4, v5}];
    v6 = v8;
    v7 = v9;
  }

  self->_center.x = v6;
  self->_center.y = v7;
  [(OKDynamicItemProxiedObject *)[(OKDynamicItemProxy *)self proxiedObject] bounds];
  self->_bounds.origin.x = v10;
  self->_bounds.origin.y = v11;
  self->_bounds.size.width = v12;
  self->_bounds.size.height = v13;
  memset(&v21, 0, sizeof(v21));
  proxiedObject = [(OKDynamicItemProxy *)self proxiedObject];
  if (proxiedObject)
  {
    [(OKDynamicItemProxiedObject *)proxiedObject dynamicsTransform];
  }

  else
  {
    memset(&v21, 0, sizeof(v21));
  }

  parentWidgetView2 = [(OKDynamicItemProxiedObject *)[(OKDynamicItemProxy *)self proxiedObject] parentWidgetView];
  if (parentWidgetView2)
  {
    parentWidgetView3 = parentWidgetView2;
    do
    {
      [parentWidgetView3 transform];
      v18 = v21;
      CGAffineTransformConcat(&v20, &t1, &v18);
      v21 = v20;
      parentWidgetView3 = [parentWidgetView3 parentWidgetView];
    }

    while (parentWidgetView3);
  }

  v17 = *&v21.c;
  *&self->_transform.a = *&v21.a;
  *&self->_transform.c = v17;
  *&self->_transform.tx = *&v21.tx;
}

- (void)enforceInitialCenter:(CGPoint)center size:(CGSize)size andTransform:(CGAffineTransform *)transform
{
  self->_center = center;
  self->_bounds.origin.x = 0.0;
  self->_bounds.origin.y = 0.0;
  self->_bounds.size = size;
  v5 = *&transform->a;
  v6 = *&transform->c;
  *&self->_transform.tx = *&transform->tx;
  *&self->_transform.c = v6;
  *&self->_transform.a = v5;
}

- (void)setCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  parentWidgetView = [(OKDynamicItemProxiedObject *)[(OKDynamicItemProxy *)self proxiedObject] parentWidgetView];
  self->_center.x = x;
  self->_center.y = y;
  if (parentWidgetView)
  {
    [parentWidgetView convertPoint:objc_msgSend(objc_msgSend(parentWidgetView fromView:{"pageViewController"), "view"), x, y}];
    x = v7;
    y = v8;
  }

  proxiedObject = [(OKDynamicItemProxy *)self proxiedObject];

  [(OKDynamicItemProxiedObject *)proxiedObject setCenter:x, y];
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v5 = *&transform->a;
  v6 = *&transform->c;
  *&self->_transform.tx = *&transform->tx;
  *&self->_transform.c = v6;
  *&self->_transform.a = v5;
  v7 = *(MEMORY[0x277CBF2C0] + 16);
  *&v15.a = *MEMORY[0x277CBF2C0];
  *&v15.c = v7;
  *&v15.tx = *(MEMORY[0x277CBF2C0] + 32);
  parentWidgetView = [(OKDynamicItemProxiedObject *)[(OKDynamicItemProxy *)self proxiedObject] parentWidgetView];
  if (parentWidgetView)
  {
    parentWidgetView2 = parentWidgetView;
    do
    {
      [parentWidgetView2 transform];
      t1 = v15;
      CGAffineTransformConcat(&v15, &t1, &t2);
      parentWidgetView2 = [parentWidgetView2 parentWidgetView];
    }

    while (parentWidgetView2);
  }

  v10 = *&transform->c;
  *&t2.a = *&transform->a;
  *&t2.c = v10;
  *&t2.tx = *&transform->tx;
  t1 = v15;
  CGAffineTransformConcat(&v12, &t2, &t1);
  proxiedObject = [(OKDynamicItemProxy *)self proxiedObject];
  t2 = v12;
  [(OKDynamicItemProxiedObject *)proxiedObject setDynamicsTransform:&t2];
}

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGAffineTransform)transform
{
  v3 = *&self[2].d;
  *&retstr->a = *&self[2].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].ty;
  return self;
}

@end