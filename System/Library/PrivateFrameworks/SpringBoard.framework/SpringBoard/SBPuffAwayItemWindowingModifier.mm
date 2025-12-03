@interface SBPuffAwayItemWindowingModifier
- (BOOL)_inUpdatePhase;
- (BOOL)shouldInterruptForActivity:(id)activity;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (SBPuffAwayItemWindowingModifier)initWithDisplayItem:(id)item;
- (SBWindowingItemCorners)cornersForItem:(SEL)item;
- (SBWindowingItemFrame)frameForItem:(SEL)item;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (void)transitionDidUpdate:(id)update;
- (void)transitionWillBegin:(id)begin;
@end

@implementation SBPuffAwayItemWindowingModifier

- (SBPuffAwayItemWindowingModifier)initWithDisplayItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = SBPuffAwayItemWindowingModifier;
  v7 = [(SBWindowingModifier *)&v9 init];
  if (v7)
  {
    if (!itemCopy)
    {
      [(SBPuffAwayItemWindowingModifier *)a2 initWithDisplayItem:v7];
    }

    objc_storeStrong(&v7->_displayItem, item);
  }

  return v7;
}

- (BOOL)shouldInterruptForActivity:(id)activity
{
  activityCopy = activity;
  v5 = activityCopy;
  if (self->_transitionID && [activityCopy isTransitionEvent])
  {
    transitionID = [v5 transitionID];
    if (BSEqualObjects())
    {
      isGestureEvent = [v5 isGestureEvent];
    }

    else
    {
      isGestureEvent = 1;
    }
  }

  else
  {
    isGestureEvent = [v5 isGestureEvent];
  }

  return isGestureEvent;
}

- (void)transitionWillBegin:(id)begin
{
  transitionID = [begin transitionID];
  transitionID = self->_transitionID;
  self->_transitionID = transitionID;
}

- (void)transitionDidUpdate:(id)update
{
  toAppLayout = [update toAppLayout];
  v5 = [toAppLayout containsItem:self->_displayItem];

  if ((v5 & 1) == 0)
  {
    v6 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:3];
    [(SBWindowingModifier *)self appendResponse:v6];
  }
}

- (SBWindowingItemFrame)frameForItem:(SEL)item
{
  v6 = a4;
  if (![v6 isAppLayout])
  {
    goto LABEL_6;
  }

  appLayout = [v6 appLayout];
  if (([appLayout containsItem:self->_displayItem] & 1) == 0)
  {

    goto LABEL_6;
  }

  appLayout2 = [v6 appLayout];
  allItems = [appLayout2 allItems];
  v10 = [allItems count];

  if (v10 >= 2)
  {
LABEL_6:
    v16.receiver = self;
    v16.super_class = SBPuffAwayItemWindowingModifier;
    [(SBWindowingItemFrame *)&v16 frameForItem:v6];
    goto LABEL_7;
  }

  [(SBPuffAwayItemWindowingModifier *)self containerViewBounds];
  SBWindowingItemFrameMakeWithBounds(retstr, v11, v12, v13, v14);
LABEL_7:

  return result;
}

- (SBWindowingItemCorners)cornersForItem:(SEL)item
{
  v6 = a4;
  if (![v6 isAppLayout])
  {
    goto LABEL_6;
  }

  appLayout = [v6 appLayout];
  if (([appLayout containsItem:self->_displayItem] & 1) == 0)
  {

    goto LABEL_6;
  }

  appLayout2 = [v6 appLayout];
  allItems = [appLayout2 allItems];
  v10 = [allItems count];

  if (v10 >= 2)
  {
LABEL_6:
    v17.receiver = self;
    v17.super_class = SBPuffAwayItemWindowingModifier;
    [(SBWindowingItemCorners *)&v17 cornersForItem:v6];
    goto LABEL_7;
  }

  appLayout3 = [v6 appLayout];
  [(SBPuffAwayItemWindowingModifier *)self bestSupportedDefaultCornerRadiusForAppLayout:appLayout3];
  [(SBPuffAwayItemWindowingModifier *)self frameForItem:v6];
  SBRectCornerRadiiForRadius();
  SBWindowingItemCornersMake(15, retstr, v12, v13, v14, v15);

LABEL_7:
  return result;
}

- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v12.receiver = self;
  v12.super_class = SBPuffAwayItemWindowingModifier;
  [(SBPuffAwayItemWindowingModifier *)&v12 scaleForLayoutRole:role inAppLayout:layoutCopy];
  v8 = v7;
  if ([(SBPuffAwayItemWindowingModifier *)self _inUpdatePhase])
  {
    v9 = [layoutCopy itemForLayoutRole:role];
    v10 = BSEqualObjects();

    if (v10)
    {
      v8 = v8 * 0.75;
    }
  }

  return v8;
}

- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  if (-[SBPuffAwayItemWindowingModifier _inUpdatePhase](self, "_inUpdatePhase") && ([layoutCopy itemForLayoutRole:role], v12 = objc_claimAutoreleasedReturnValue(), v13 = BSEqualObjects(), v12, v13))
  {
    v14 = [(SBWindowingModifier *)self flexibleAutoLayoutSpaceForAppLayout:layoutCopy];
    [v14 boundingBox];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
  }

  else
  {
    v31.receiver = self;
    v31.super_class = SBPuffAwayItemWindowingModifier;
    [(SBPuffAwayItemWindowingModifier *)&v31 frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
    v16 = v23;
    v18 = v24;
    v20 = v25;
    v22 = v26;
  }

  v27 = v16;
  v28 = v18;
  v29 = v20;
  v30 = v22;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  if (!-[SBPuffAwayItemWindowingModifier _inUpdatePhase](self, "_inUpdatePhase") || ([layoutCopy itemForLayoutRole:role], v9 = objc_claimAutoreleasedReturnValue(), v10 = BSEqualObjects(), v9, v11 = 0.0, (v10 & 1) == 0))
  {
    v14.receiver = self;
    v14.super_class = SBPuffAwayItemWindowingModifier;
    [(SBWindowingModifier *)&v14 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
    v11 = v12;
  }

  return v11;
}

- (BOOL)_inUpdatePhase
{
  selfCopy = self;
  appLayout = [(SBPuffAwayItemWindowingModifier *)self appLayout];
  LOBYTE(selfCopy) = [appLayout containsItem:selfCopy->_displayItem];

  return selfCopy ^ 1;
}

- (void)initWithDisplayItem:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPuffAwayItemWindowingModifier.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"displayItem"}];
}

@end