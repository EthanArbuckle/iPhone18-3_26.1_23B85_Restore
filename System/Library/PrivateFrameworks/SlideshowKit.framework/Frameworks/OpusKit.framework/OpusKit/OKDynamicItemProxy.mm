@interface OKDynamicItemProxy
- (CGAffineTransform)transform;
- (CGPoint)center;
- (CGRect)bounds;
- (OKDynamicItemProxy)init;
- (OKDynamicItemProxy)initWithProxiedObject:(id)a3;
- (void)dealloc;
- (void)enforceInitialCenter:(CGPoint)a3 size:(CGSize)a4 andTransform:(CGAffineTransform *)a5;
- (void)resetInitialValues;
- (void)setCenter:(CGPoint)a3;
- (void)setTransform:(CGAffineTransform *)a3;
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

- (OKDynamicItemProxy)initWithProxiedObject:(id)a3
{
  v4 = [(OKDynamicItemProxy *)self init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_proxiedObject, a3);
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
  v3 = [(OKDynamicItemProxiedObject *)[(OKDynamicItemProxy *)self proxiedObject] parentWidgetView];
  [(OKDynamicItemProxiedObject *)[(OKDynamicItemProxy *)self proxiedObject] center];
  v6 = v4;
  v7 = v5;
  if (v3)
  {
    [v3 convertPoint:objc_msgSend(objc_msgSend(v3 toView:{"pageViewController"), "view"), v4, v5}];
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
  v14 = [(OKDynamicItemProxy *)self proxiedObject];
  if (v14)
  {
    [(OKDynamicItemProxiedObject *)v14 dynamicsTransform];
  }

  else
  {
    memset(&v21, 0, sizeof(v21));
  }

  v15 = [(OKDynamicItemProxiedObject *)[(OKDynamicItemProxy *)self proxiedObject] parentWidgetView];
  if (v15)
  {
    v16 = v15;
    do
    {
      [v16 transform];
      v18 = v21;
      CGAffineTransformConcat(&v20, &t1, &v18);
      v21 = v20;
      v16 = [v16 parentWidgetView];
    }

    while (v16);
  }

  v17 = *&v21.c;
  *&self->_transform.a = *&v21.a;
  *&self->_transform.c = v17;
  *&self->_transform.tx = *&v21.tx;
}

- (void)enforceInitialCenter:(CGPoint)a3 size:(CGSize)a4 andTransform:(CGAffineTransform *)a5
{
  self->_center = a3;
  self->_bounds.origin.x = 0.0;
  self->_bounds.origin.y = 0.0;
  self->_bounds.size = a4;
  v5 = *&a5->a;
  v6 = *&a5->c;
  *&self->_transform.tx = *&a5->tx;
  *&self->_transform.c = v6;
  *&self->_transform.a = v5;
}

- (void)setCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(OKDynamicItemProxiedObject *)[(OKDynamicItemProxy *)self proxiedObject] parentWidgetView];
  self->_center.x = x;
  self->_center.y = y;
  if (v6)
  {
    [v6 convertPoint:objc_msgSend(objc_msgSend(v6 fromView:{"pageViewController"), "view"), x, y}];
    x = v7;
    y = v8;
  }

  v9 = [(OKDynamicItemProxy *)self proxiedObject];

  [(OKDynamicItemProxiedObject *)v9 setCenter:x, y];
}

- (void)setTransform:(CGAffineTransform *)a3
{
  v5 = *&a3->a;
  v6 = *&a3->c;
  *&self->_transform.tx = *&a3->tx;
  *&self->_transform.c = v6;
  *&self->_transform.a = v5;
  v7 = *(MEMORY[0x277CBF2C0] + 16);
  *&v15.a = *MEMORY[0x277CBF2C0];
  *&v15.c = v7;
  *&v15.tx = *(MEMORY[0x277CBF2C0] + 32);
  v8 = [(OKDynamicItemProxiedObject *)[(OKDynamicItemProxy *)self proxiedObject] parentWidgetView];
  if (v8)
  {
    v9 = v8;
    do
    {
      [v9 transform];
      t1 = v15;
      CGAffineTransformConcat(&v15, &t1, &t2);
      v9 = [v9 parentWidgetView];
    }

    while (v9);
  }

  v10 = *&a3->c;
  *&t2.a = *&a3->a;
  *&t2.c = v10;
  *&t2.tx = *&a3->tx;
  t1 = v15;
  CGAffineTransformConcat(&v12, &t2, &t1);
  v11 = [(OKDynamicItemProxy *)self proxiedObject];
  t2 = v12;
  [(OKDynamicItemProxiedObject *)v11 setDynamicsTransform:&t2];
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