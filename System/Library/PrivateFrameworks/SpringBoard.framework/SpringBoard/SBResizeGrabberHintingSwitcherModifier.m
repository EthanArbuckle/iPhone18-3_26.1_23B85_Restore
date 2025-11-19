@interface SBResizeGrabberHintingSwitcherModifier
- (BOOL)_isHandlingEvent:(id)a3;
- (BOOL)isHintingResizeGrabberForDisplayItem:(id)a3 corner:(unint64_t)a4 inAppLayout:(id)a5;
- (NSString)identifier;
- (SBResizeGrabberHintingSwitcherModifier)initWithDisplayItem:(id)a3 corners:(unint64_t)a4;
- (id)description;
- (id)handleDidEdgeProtectResizeGrabberEvent:(id)a3;
- (id)handleTimerEvent:(id)a3;
- (unint64_t)visibleCornersForTouchResizeForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
@end

@implementation SBResizeGrabberHintingSwitcherModifier

- (SBResizeGrabberHintingSwitcherModifier)initWithDisplayItem:(id)a3 corners:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SBResizeGrabberHintingSwitcherModifier;
  v8 = [(SBSwitcherModifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_displayItem, a3);
    v9->_corners = a4;
  }

  return v9;
}

- (NSString)identifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SBDisplayItem *)self->_displayItem uniqueIdentifier];
  v4 = SBStringFromUIRectCorner();
  v5 = [v2 stringWithFormat:@"SBResizeGrabberHintingSwitcherModifier(%@, %@)", v3, v4];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SBDisplayItem *)self->_displayItem uniqueIdentifier];
  v7 = SBStringFromUIRectCorner();
  v8 = [v3 stringWithFormat:@"<%@: %p> (%@, %@)", v5, self, v6, v7];

  return v8;
}

- (id)handleDidEdgeProtectResizeGrabberEvent:(id)a3
{
  v15.receiver = self;
  v15.super_class = SBResizeGrabberHintingSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v15 handleDidEdgeProtectResizeGrabberEvent:v4];
  v6 = [(SBResizeGrabberHintingSwitcherModifier *)self _isHandlingEvent:v4, v15.receiver, v15.super_class];

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

- (id)handleTimerEvent:(id)a3
{
  v12.receiver = self;
  v12.super_class = SBResizeGrabberHintingSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v12 handleTimerEvent:v4];
  v6 = [v4 reason];

  v7 = [(SBResizeGrabberHintingSwitcherModifier *)self description];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    [(SBChainableModifier *)self setState:1];
  }

  v9 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:8 updateMode:3];
  v10 = SBAppendSwitcherModifierResponse(v9, v5);

  return v10;
}

- (unint64_t)visibleCornersForTouchResizeForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v7 = [v6 itemForLayoutRole:a3];
  if ([(SBDisplayItem *)v7 isEqualToItem:?])
  {
    corners = self->_corners;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBResizeGrabberHintingSwitcherModifier;
    corners = [(SBResizeGrabberHintingSwitcherModifier *)&v10 visibleCornersForTouchResizeForLayoutRole:a3 inAppLayout:v6];
  }

  return corners;
}

- (BOOL)isHintingResizeGrabberForDisplayItem:(id)a3 corner:(unint64_t)a4 inAppLayout:(id)a5
{
  if (self->_corners == a4)
  {
    return [(SBDisplayItem *)a3 isEqualToItem:?];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_isHandlingEvent:(id)a3
{
  v4 = a3;
  corners = self->_corners;
  if (corners == [v4 corners])
  {
    displayItem = self->_displayItem;
    v7 = [v4 displayItem];
    v8 = [(SBDisplayItem *)displayItem isEqualToItem:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end