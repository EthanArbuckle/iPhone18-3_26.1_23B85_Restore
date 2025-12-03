@interface SBDidEdgeProtectResizeGrabberModifierEvent
- (SBDidEdgeProtectResizeGrabberModifierEvent)initWithDisplayItem:(id)item corners:(unint64_t)corners;
@end

@implementation SBDidEdgeProtectResizeGrabberModifierEvent

- (SBDidEdgeProtectResizeGrabberModifierEvent)initWithDisplayItem:(id)item corners:(unint64_t)corners
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = SBDidEdgeProtectResizeGrabberModifierEvent;
  v8 = [(SBWindowingModifierActivity *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_displayItem, item);
    v9->_corners = corners;
  }

  return v9;
}

@end