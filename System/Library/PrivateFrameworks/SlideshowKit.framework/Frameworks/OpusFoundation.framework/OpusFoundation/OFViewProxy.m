@interface OFViewProxy
- (OFViewProxy)initWithCoder:(id)a3;
- (OFViewProxy)initWithFrame:(CGRect)a3;
- (void)addLayoutStep:(id)a3;
- (void)addLayoutSteps:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)runMagicLayout;
- (void)setAnchorPoint:(CGPoint)a3;
@end

@implementation OFViewProxy

- (OFViewProxy)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = OFViewProxy;
  v3 = [(OFViewProxy *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(OFViewProxy *)v3 commonInit];
  }

  return v4;
}

- (OFViewProxy)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = OFViewProxy;
  v3 = [(OFViewProxy *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(OFViewProxy *)v3 commonInit];
  }

  return v4;
}

- (void)dealloc
{
  objc_storeWeak(&self->_viewControllerProxy, 0);

  free(self->_layoutInfo);
  v3.receiver = self;
  v3.super_class = OFViewProxy;
  [(OFViewProxy *)&v3 dealloc];
}

- (void)setAnchorPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [-[OFViewProxy layer](self "layer")];
  if (v6 != x || v7 != y)
  {
    v9 = v6;
    v10 = v7;
    [(OFViewProxy *)self bounds];
    v12 = x * v11;
    [(OFViewProxy *)self bounds];
    v14 = y * v13;
    [(OFViewProxy *)self bounds];
    v16 = v9 * v15;
    [(OFViewProxy *)self bounds];
    v18 = v10 * v17;
    memset(&v27, 0, sizeof(v27));
    v19 = [(OFViewProxy *)self layer];
    if (v19)
    {
      [v19 transform];
    }

    else
    {
      memset(&v26, 0, sizeof(v26));
    }

    CATransform3DGetAffineTransform(&v27, &v26);
    v20 = v27.tx + v14 * v27.c + v27.a * v12;
    v21 = v27.ty + v14 * v27.d + v27.b * v12;
    v22 = v27.tx + v18 * v27.c + v27.a * v16;
    v23 = v27.ty + v18 * v27.d + v27.b * v16;
    [-[OFViewProxy layer](self "layer")];
    [-[OFViewProxy layer](self "layer")];
    [-[OFViewProxy layer](self "layer")];
  }
}

- (void)runMagicLayout
{
  v25 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_layoutSteps count]&& self->_magicLayoutEnabled)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    layoutSteps = self->_layoutSteps;
    v4 = [(NSMutableArray *)layoutSteps countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v20;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(layoutSteps);
          }

          [*(*(&v19 + 1) + 8 * i) run];
        }

        v5 = [(NSMutableArray *)layoutSteps countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v5);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [(OFViewProxy *)self subviews];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * j);
          v14 = v13[52];
          if (v14)
          {
            v26 = CGRectIntegral(*v14);
            [v13 setFrame:{v26.origin.x, v26.origin.y, v26.size.width, v26.size.height}];
            free(v13[52]);
            v13[52] = 0;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v10);
    }
  }
}

- (void)addLayoutStep:(id)a3
{
  if (a3)
  {
    layoutSteps = self->_layoutSteps;
    if (!layoutSteps)
    {
      layoutSteps = objc_alloc_init(MEMORY[0x277CBEB18]);
      self->_layoutSteps = layoutSteps;
    }

    [(NSMutableArray *)layoutSteps addObject:a3];

    [(OFViewProxy *)self setNeedsLayout];
  }
}

- (void)addLayoutSteps:(id)a3
{
  if ([a3 count])
  {
    layoutSteps = self->_layoutSteps;
    if (!layoutSteps)
    {
      layoutSteps = objc_alloc_init(MEMORY[0x277CBEB18]);
      self->_layoutSteps = layoutSteps;
    }

    [(NSMutableArray *)layoutSteps addObjectsFromArray:a3];

    [(OFViewProxy *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = OFViewProxy;
  [(OFViewProxy *)&v3 layoutSubviews];
  [(OFViewProxy *)self runMagicLayout];
}

@end