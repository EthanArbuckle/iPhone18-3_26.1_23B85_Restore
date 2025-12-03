@interface PKPassthroughView
- (PKPassthroughView)initWithFrame:(CGRect)frame;
- (PKPassthroughView)portal;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)dealloc;
- (void)setPortal:(id)portal;
@end

@implementation PKPassthroughView

- (PKPassthroughView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKPassthroughView;
  v3 = [(PKPassthroughView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKPassthroughView *)v3 setOpaque:0];
    v4->_hitTestEnabled = 1;
  }

  return v4;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_portal);
  if (WeakRetained)
  {
    --WeakRetained[52];
  }

  v4.receiver = self;
  v4.super_class = PKPassthroughView;
  [(PKPassthroughView *)&v4 dealloc];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if (self->_inHitTest || self->_portalTargetCount && !self->_inPortalHitTest)
  {
    v9 = 0;
    goto LABEL_25;
  }

  self->_inHitTest = 1;
  if (!self->_hitTestPortalFirst && self->_hitTestEnabled)
  {
    v28.receiver = self;
    v28.super_class = PKPassthroughView;
    v8 = [(PKPassthroughView *)&v28 hitTest:eventCopy withEvent:x, y];
    v9 = v8;
    if (v8 == self)
    {
    }

    else if (v8)
    {
      goto LABEL_24;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_portal);
  v11 = WeakRetained;
  if (WeakRetained)
  {
    if ((WeakRetained[409] & 1) == 0)
    {
      [(PKPassthroughView *)self bounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      [v11 bounds];
      v31.origin.x = v20;
      v31.origin.y = v21;
      v31.size.width = v22;
      v31.size.height = v23;
      v30.origin.x = v13;
      v30.origin.y = v15;
      v30.size.width = v17;
      v30.size.height = v19;
      if (CGRectEqualToRect(v30, v31))
      {
        v11[409] = 1;
        v24 = [v11 hitTest:eventCopy withEvent:{x, y}];
        v9 = v24;
        v11[409] = 0;
        if (v24 != self)
        {

          if (v9)
          {
            goto LABEL_24;
          }

          goto LABEL_19;
        }
      }
    }
  }

LABEL_19:
  if (!self->_hitTestPortalFirst || !self->_hitTestEnabled)
  {
    goto LABEL_23;
  }

  v27.receiver = self;
  v27.super_class = PKPassthroughView;
  v25 = [(PKPassthroughView *)&v27 hitTest:eventCopy withEvent:x, y];
  v9 = v25;
  if (v25 == self)
  {

LABEL_23:
    v9 = 0;
  }

LABEL_24:
  self->_inHitTest = 0;
LABEL_25:

  return v9;
}

- (void)setPortal:(id)portal
{
  obj = portal;
  WeakRetained = objc_loadWeakRetained(&self->_portal);
  v5 = WeakRetained;
  if (WeakRetained != obj)
  {
    if (WeakRetained)
    {
      --WeakRetained[52];
    }

    objc_storeWeak(&self->_portal, obj);
    if (obj)
    {
      ++obj[52];
    }
  }
}

- (PKPassthroughView)portal
{
  WeakRetained = objc_loadWeakRetained(&self->_portal);

  return WeakRetained;
}

@end