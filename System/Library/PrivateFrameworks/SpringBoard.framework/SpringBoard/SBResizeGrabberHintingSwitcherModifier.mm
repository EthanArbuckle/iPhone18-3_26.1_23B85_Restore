@interface SBResizeGrabberHintingSwitcherModifier
- (BOOL)_isHandlingEvent:(id)event;
- (BOOL)isHintingResizeGrabberForDisplayItem:(id)item corner:(unint64_t)corner inAppLayout:(id)layout;
- (NSString)identifier;
- (SBResizeGrabberHintingSwitcherModifier)initWithDisplayItem:(id)item corners:(unint64_t)corners;
- (id)description;
- (id)handleDidEdgeProtectResizeGrabberEvent:(id)event;
- (id)handleTimerEvent:(id)event;
- (unint64_t)visibleCornersForTouchResizeForLayoutRole:(int64_t)role inAppLayout:(id)layout;
@end

@implementation SBResizeGrabberHintingSwitcherModifier

- (SBResizeGrabberHintingSwitcherModifier)initWithDisplayItem:(id)item corners:(unint64_t)corners
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = SBResizeGrabberHintingSwitcherModifier;
  v8 = [(SBSwitcherModifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_displayItem, item);
    v9->_corners = corners;
  }

  return v9;
}

- (NSString)identifier
{
  v2 = MEMORY[0x277CCACA8];
  uniqueIdentifier = [(SBDisplayItem *)self->_displayItem uniqueIdentifier];
  v4 = SBStringFromUIRectCorner();
  v5 = [v2 stringWithFormat:@"SBResizeGrabberHintingSwitcherModifier(%@, %@)", uniqueIdentifier, v4];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  uniqueIdentifier = [(SBDisplayItem *)self->_displayItem uniqueIdentifier];
  v7 = SBStringFromUIRectCorner();
  v8 = [v3 stringWithFormat:@"<%@: %p> (%@, %@)", v5, self, uniqueIdentifier, v7];

  return v8;
}

- (id)handleDidEdgeProtectResizeGrabberEvent:(id)event
{
  v15.receiver = self;
  v15.super_class = SBResizeGrabberHintingSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v15 handleDidEdgeProtectResizeGrabberEvent:eventCopy];
  v6 = [(SBResizeGrabberHintingSwitcherModifier *)self _isHandlingEvent:eventCopy, v15.receiver, v15.super_class];

  if (v6)
  {
    v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:8 updateMode:3];
    v8 = SBAppendSwitcherModifierResponse(v7, v5);

    v9 = [SBTimerEventSwitcherEventResponse alloc];
    v10 = [(SBResizeGrabberHintingSwitcherModifier *)self description];
    v11 = [(SBTimerEventSwitcherEventResponse *)v9 initWithDelay:0 validator:v10 reason:1.5];

    v12 = SBAppendSwitcherModifierResponse(v11, v8);

    v13 = v12;
  }

  else
  {
    [(SBChainableModifier *)self setState:1];
    v13 = v5;
  }

  return v13;
}

- (id)handleTimerEvent:(id)event
{
  v12.receiver = self;
  v12.super_class = SBResizeGrabberHintingSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v12 handleTimerEvent:eventCopy];
  reason = [eventCopy reason];

  v7 = [(SBResizeGrabberHintingSwitcherModifier *)self description];
  v8 = [reason isEqualToString:v7];

  if (v8)
  {
    [(SBChainableModifier *)self setState:1];
  }

  v9 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:8 updateMode:3];
  v10 = SBAppendSwitcherModifierResponse(v9, v5);

  return v10;
}

- (unint64_t)visibleCornersForTouchResizeForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v7 = [layoutCopy itemForLayoutRole:role];
  if ([(SBDisplayItem *)v7 isEqualToItem:?])
  {
    corners = self->_corners;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBResizeGrabberHintingSwitcherModifier;
    corners = [(SBResizeGrabberHintingSwitcherModifier *)&v10 visibleCornersForTouchResizeForLayoutRole:role inAppLayout:layoutCopy];
  }

  return corners;
}

- (BOOL)isHintingResizeGrabberForDisplayItem:(id)item corner:(unint64_t)corner inAppLayout:(id)layout
{
  if (self->_corners == corner)
  {
    return [(SBDisplayItem *)item isEqualToItem:?];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_isHandlingEvent:(id)event
{
  eventCopy = event;
  corners = self->_corners;
  if (corners == [eventCopy corners])
  {
    displayItem = self->_displayItem;
    displayItem = [eventCopy displayItem];
    v8 = [(SBDisplayItem *)displayItem isEqualToItem:displayItem];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end