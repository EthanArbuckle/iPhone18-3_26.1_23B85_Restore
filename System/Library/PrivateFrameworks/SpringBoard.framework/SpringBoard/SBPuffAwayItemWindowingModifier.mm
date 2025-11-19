@interface SBPuffAwayItemWindowingModifier
- (BOOL)_inUpdatePhase;
- (BOOL)shouldInterruptForActivity:(id)a3;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5;
- (SBPuffAwayItemWindowingModifier)initWithDisplayItem:(id)a3;
- (SBWindowingItemCorners)cornersForItem:(SEL)a3;
- (SBWindowingItemFrame)frameForItem:(SEL)a3;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (void)transitionDidUpdate:(id)a3;
- (void)transitionWillBegin:(id)a3;
@end

@implementation SBPuffAwayItemWindowingModifier

- (SBPuffAwayItemWindowingModifier)initWithDisplayItem:(id)a3
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = SBPuffAwayItemWindowingModifier;
  v7 = [(SBWindowingModifier *)&v9 init];
  if (v7)
  {
    if (!v6)
    {
      [(SBPuffAwayItemWindowingModifier *)a2 initWithDisplayItem:v7];
    }

    objc_storeStrong(&v7->_displayItem, a3);
  }

  return v7;
}

- (BOOL)shouldInterruptForActivity:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_transitionID && [v4 isTransitionEvent])
  {
    v6 = [v5 transitionID];
    if (BSEqualObjects())
    {
      v7 = [v5 isGestureEvent];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = [v5 isGestureEvent];
  }

  return v7;
}

- (void)transitionWillBegin:(id)a3
{
  v4 = [a3 transitionID];
  transitionID = self->_transitionID;
  self->_transitionID = v4;
}

- (void)transitionDidUpdate:(id)a3
{
  v4 = [a3 toAppLayout];
  v5 = [v4 containsItem:self->_displayItem];

  if ((v5 & 1) == 0)
  {
    v6 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:3];
    [(SBWindowingModifier *)self appendResponse:v6];
  }
}

- (SBWindowingItemFrame)frameForItem:(SEL)a3
{
  v6 = a4;
  if (![v6 isAppLayout])
  {
    goto LABEL_6;
  }

  v7 = [v6 appLayout];
  if (([v7 containsItem:self->_displayItem] & 1) == 0)
  {

    goto LABEL_6;
  }

  v8 = [v6 appLayout];
  v9 = [v8 allItems];
  v10 = [v9 count];

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

- (SBWindowingItemCorners)cornersForItem:(SEL)a3
{
  v6 = a4;
  if (![v6 isAppLayout])
  {
    goto LABEL_6;
  }

  v7 = [v6 appLayout];
  if (([v7 containsItem:self->_displayItem] & 1) == 0)
  {

    goto LABEL_6;
  }

  v8 = [v6 appLayout];
  v9 = [v8 allItems];
  v10 = [v9 count];

  if (v10 >= 2)
  {
LABEL_6:
    v17.receiver = self;
    v17.super_class = SBPuffAwayItemWindowingModifier;
    [(SBWindowingItemCorners *)&v17 cornersForItem:v6];
    goto LABEL_7;
  }

  v11 = [v6 appLayout];
  [(SBPuffAwayItemWindowingModifier *)self bestSupportedDefaultCornerRadiusForAppLayout:v11];
  [(SBPuffAwayItemWindowingModifier *)self frameForItem:v6];
  SBRectCornerRadiiForRadius();
  SBWindowingItemCornersMake(15, retstr, v12, v13, v14, v15);

LABEL_7:
  return result;
}

- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = SBPuffAwayItemWindowingModifier;
  [(SBPuffAwayItemWindowingModifier *)&v12 scaleForLayoutRole:a3 inAppLayout:v6];
  v8 = v7;
  if ([(SBPuffAwayItemWindowingModifier *)self _inUpdatePhase])
  {
    v9 = [v6 itemForLayoutRole:a3];
    v10 = BSEqualObjects();

    if (v10)
    {
      v8 = v8 * 0.75;
    }
  }

  return v8;
}

- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  if (-[SBPuffAwayItemWindowingModifier _inUpdatePhase](self, "_inUpdatePhase") && ([v11 itemForLayoutRole:a3], v12 = objc_claimAutoreleasedReturnValue(), v13 = BSEqualObjects(), v12, v13))
  {
    v14 = [(SBWindowingModifier *)self flexibleAutoLayoutSpaceForAppLayout:v11];
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
    [(SBPuffAwayItemWindowingModifier *)&v31 frameForLayoutRole:a3 inAppLayout:v11 withBounds:x, y, width, height];
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

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  if (!-[SBPuffAwayItemWindowingModifier _inUpdatePhase](self, "_inUpdatePhase") || ([v8 itemForLayoutRole:a3], v9 = objc_claimAutoreleasedReturnValue(), v10 = BSEqualObjects(), v9, v11 = 0.0, (v10 & 1) == 0))
  {
    v14.receiver = self;
    v14.super_class = SBPuffAwayItemWindowingModifier;
    [(SBWindowingModifier *)&v14 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    v11 = v12;
  }

  return v11;
}

- (BOOL)_inUpdatePhase
{
  v2 = self;
  v3 = [(SBPuffAwayItemWindowingModifier *)self appLayout];
  LOBYTE(v2) = [v3 containsItem:v2->_displayItem];

  return v2 ^ 1;
}

- (void)initWithDisplayItem:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPuffAwayItemWindowingModifier.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"displayItem"}];
}

@end