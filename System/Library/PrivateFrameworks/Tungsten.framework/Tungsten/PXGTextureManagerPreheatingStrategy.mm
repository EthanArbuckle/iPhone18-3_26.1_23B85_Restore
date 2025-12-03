@interface PXGTextureManagerPreheatingStrategy
+ (id)defaultPreheatingStrategy;
+ (id)lowMemoryPreheatingStrategy;
+ (id)noPreheatingStrategy;
- (CGRect)preheatingRectForLayout:(id)layout interactionState:(id *)state;
@end

@implementation PXGTextureManagerPreheatingStrategy

+ (id)defaultPreheatingStrategy
{
  v2 = objc_alloc_init(self);
  [v2 setStoppedOffset:400.0];
  [v2 setSlowOffset:300.0];
  [v2 setMediumOffset:200.0];
  [v2 setFastOffset:100.0];

  return v2;
}

+ (id)noPreheatingStrategy
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)lowMemoryPreheatingStrategy
{
  v2 = objc_alloc_init(self);
  [v2 setStoppedOffset:100.0];
  [v2 setSlowOffset:100.0];
  [v2 setMediumOffset:100.0];
  [v2 setFastOffset:100.0];

  return v2;
}

- (CGRect)preheatingRectForLayout:(id)layout interactionState:(id *)state
{
  layoutCopy = layout;
  [layoutCopy visibleRect];
  [layoutCopy contentSize];

  var0 = state->var0;
  if (state->var0 > 1)
  {
    if (var0 == 2)
    {
      goto LABEL_9;
    }

    if (var0 == 3)
    {
      [(PXGTextureManagerPreheatingStrategy *)self fastOffset];
    }
  }

  else
  {
    if ((var0 + 1) >= 2)
    {
      if (var0 != 1)
      {
        goto LABEL_10;
      }

      if (self->_previousRegime >= 2)
      {
LABEL_9:
        [(PXGTextureManagerPreheatingStrategy *)self mediumOffset];
        goto LABEL_10;
      }
    }

    [(PXGTextureManagerPreheatingStrategy *)self stoppedOffset];
  }

LABEL_10:
  self->_previousRegime = var0;
  if (!state->var6 && state->var4 - 2 < 2)
  {
    [(PXGTextureManagerPreheatingStrategy *)self maxPreheatingDistance];
    [(PXGTextureManagerPreheatingStrategy *)self maxPreheatingDistance];
  }

  PXEdgeInsetsMake();

  PXEdgeInsetsInsetRect();
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

@end