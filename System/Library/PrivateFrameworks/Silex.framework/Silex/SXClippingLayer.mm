@interface SXClippingLayer
- (CGRect)contentFrame;
- (void)layoutForContentsRect;
- (void)layoutForMasking;
- (void)layoutSublayers;
- (void)setClippingMode:(unint64_t)a3;
- (void)setContentLayer:(id)a3;
@end

@implementation SXClippingLayer

- (void)layoutSublayers
{
  v4.receiver = self;
  v4.super_class = SXClippingLayer;
  [(SXClippingLayer *)&v4 layoutSublayers];
  v3 = [(SXClippingLayer *)self clippingMode];
  if (v3 == 1)
  {
    [(SXClippingLayer *)self layoutForContentsRect];
  }

  else if (!v3)
  {
    [(SXClippingLayer *)self layoutForMasking];
  }
}

- (void)layoutForContentsRect
{
  [(SXClippingLayer *)self contentFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SXClippingLayer *)self bounds];
  v56.origin.x = v11;
  v56.origin.y = v12;
  v56.size.width = v13;
  v56.size.height = v14;
  v42.origin.x = v4;
  v42.origin.y = v6;
  v42.size.width = v8;
  v42.size.height = v10;
  v43 = CGRectIntersection(v42, v56);
  x = v43.origin.x;
  y = v43.origin.y;
  width = v43.size.width;
  height = v43.size.height;
  MidX = CGRectGetMidX(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  MidY = CGRectGetMidY(v44);
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  v38 = CGRectGetWidth(v45);
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  v19 = CGRectGetHeight(v46);
  v47.origin.x = v4;
  v47.origin.y = v6;
  v47.size.width = v8;
  v47.size.height = v10;
  if (CGRectIsEmpty(v47))
  {
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    v23 = 0.0;
  }

  else
  {
    v48.origin.x = v4;
    v48.origin.y = v6;
    v48.size.width = v8;
    v48.size.height = v10;
    MinX = CGRectGetMinX(v48);
    v39 = v19;
    if (MinX >= 0.0)
    {
      v25 = 0.0;
    }

    else
    {
      v25 = -MinX;
    }

    v49.origin.x = v4;
    v49.origin.y = v6;
    v49.size.width = v8;
    v49.size.height = v10;
    v35 = v25 / CGRectGetWidth(v49);
    v50.origin.x = v4;
    v50.origin.y = v6;
    v50.size.width = v8;
    v50.size.height = v10;
    MinY = CGRectGetMinY(v50);
    if (MinY >= 0.0)
    {
      v27 = 0.0;
    }

    else
    {
      v27 = -MinY;
    }

    v51.origin.x = v4;
    v51.origin.y = v6;
    v51.size.width = v8;
    v51.size.height = v10;
    v34 = v27 / CGRectGetHeight(v51);
    v52.origin.x = 0.0;
    v52.origin.y = 0.0;
    v52.size.height = v39;
    v52.size.width = v38;
    v28 = CGRectGetWidth(v52);
    v53.origin.x = v4;
    v53.origin.y = v6;
    v53.size.width = v8;
    v53.size.height = v10;
    v29 = v28 / CGRectGetWidth(v53);
    v54.origin.x = 0.0;
    v54.origin.y = 0.0;
    v54.size.width = v38;
    v19 = v39;
    v54.size.height = v39;
    v30 = CGRectGetHeight(v54);
    v55.origin.x = v4;
    v55.origin.y = v6;
    v55.size.width = v8;
    v55.size.height = v10;
    v31 = v30 / CGRectGetHeight(v55);
    v23 = v35;
    if (v29 >= 1.0 - v35)
    {
      v21 = 1.0 - v35;
    }

    else
    {
      v21 = v29;
    }

    v22 = v34;
    if (v31 >= 1.0 - v34)
    {
      v20 = 1.0 - v34;
    }

    else
    {
      v20 = v31;
    }
  }

  v40 = [(SXClippingLayer *)self contentLayer];
  v32 = [(SXClippingLayer *)self contentLayer];
  [v32 setPosition:{MidX, MidY}];

  v33 = [(SXClippingLayer *)self contentLayer];
  [v33 setBounds:{0.0, 0.0, v38, v19}];

  [v40 setContentsRect:{v23, v22, v21, v20}];
}

- (void)layoutForMasking
{
  [(SXClippingLayer *)self contentFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SXClippingLayer *)self contentLayer];
  [v11 setFrameUsingCenterAndBounds:{v4, v6, v8, v10}];
}

- (void)setContentLayer:(id)a3
{
  v4 = a3;
  contentLayer = self->_contentLayer;
  if (contentLayer != v4)
  {
    [(CALayer *)contentLayer removeFromSuperlayer];
  }

  v6 = self->_contentLayer;
  self->_contentLayer = v4;
  v7 = v4;

  [(SXClippingLayer *)self addSublayer:self->_contentLayer];

  [(SXClippingLayer *)self setNeedsLayout];
}

- (void)setClippingMode:(unint64_t)a3
{
  self->_clippingMode = a3;
  [(SXClippingLayer *)self setMasksToBounds:a3 == 0];

  [(SXClippingLayer *)self setNeedsLayout];
}

- (CGRect)contentFrame
{
  x = self->_contentFrame.origin.x;
  y = self->_contentFrame.origin.y;
  width = self->_contentFrame.size.width;
  height = self->_contentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end