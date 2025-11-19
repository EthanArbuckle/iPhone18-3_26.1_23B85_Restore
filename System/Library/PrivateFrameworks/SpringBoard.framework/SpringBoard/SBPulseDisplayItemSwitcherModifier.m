@interface SBPulseDisplayItemSwitcherModifier
- (SBPulseDisplayItemSwitcherModifier)initWithDisplayItem:(id)a3;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3;
- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withCornerRadii:(UIRectCornerRadii)a5;
- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleSwitcherShortcutActionEvent:(id)a3;
- (id)handleTapAppLayoutHeaderEvent:(id)a3;
- (id)handleTimerEvent:(id)a3;
- (id)topMostLayoutElements;
- (unint64_t)maskedCornersForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withMaskedCorners:(unint64_t)a5;
@end

@implementation SBPulseDisplayItemSwitcherModifier

- (SBPulseDisplayItemSwitcherModifier)initWithDisplayItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBPulseDisplayItemSwitcherModifier;
  v6 = [(SBSwitcherModifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_displayItem, a3);
    objc_storeStrong(&v7->_displayItemToPulse, a3);
  }

  return v7;
}

- (id)handleTapAppLayoutHeaderEvent:(id)a3
{
  v14.receiver = self;
  v14.super_class = SBPulseDisplayItemSwitcherModifier;
  v4 = [(SBSwitcherModifier *)&v14 handleTapAppLayoutHeaderEvent:a3];
  v5 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:4 updateMode:3];
  v6 = SBAppendSwitcherModifierResponse(v5, v4);

  v7 = [(SBPulseDisplayItemSwitcherModifier *)self switcherSettings];
  v8 = [v7 animationSettings];
  [v8 pulseSecondStageDelay];
  v10 = v9;

  v11 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:@"SBPulseDisplayItemSwitcherModifierTimerReasonFirstStage" reason:v10];
  v12 = SBAppendSwitcherModifierResponse(v11, v6);

  return v12;
}

- (id)handleSwitcherShortcutActionEvent:(id)a3
{
  v14.receiver = self;
  v14.super_class = SBPulseDisplayItemSwitcherModifier;
  v4 = [(SBSwitcherModifier *)&v14 handleSwitcherShortcutActionEvent:a3];
  v5 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:12 updateMode:3];
  v6 = SBAppendSwitcherModifierResponse(v5, v4);

  v7 = [(SBPulseDisplayItemSwitcherModifier *)self switcherSettings];
  v8 = [v7 animationSettings];
  [v8 pulseSecondStageDelay];
  v10 = v9;

  v11 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:@"SBPulseDisplayItemSwitcherModifierTimerReasonFirstStage" reason:v10];
  v12 = SBAppendSwitcherModifierResponse(v11, v6);

  return v12;
}

- (id)handleTimerEvent:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SBPulseDisplayItemSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v21 handleTimerEvent:v4];
  v6 = [v4 reason];
  v7 = [v6 isEqualToString:@"SBPulseDisplayItemSwitcherModifierTimerReasonFirstStage"];

  if (v7)
  {
    displayItemToPulse = self->_displayItemToPulse;
    self->_displayItemToPulse = 0;

    v9 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:12 updateMode:3];
    v10 = SBAppendSwitcherModifierResponse(v9, v5);

    v11 = [(SBPulseDisplayItemSwitcherModifier *)self switcherSettings];
    v12 = [v11 animationSettings];
    v13 = [v12 pulseScaleSettings];
    [v13 settlingDuration];
    v15 = v14;

    v16 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:@"SBPulseDisplayItemSwitcherModifierTimerReasonSecondStage" reason:v15];
    v5 = SBAppendSwitcherModifierResponse(v16, v10);
  }

  else
  {
    v17 = [v4 reason];
    v18 = [v17 isEqualToString:@"SBPulseDisplayItemSwitcherModifierTimerReasonSecondStage"];

    if (!v18)
    {
      goto LABEL_6;
    }

    v9 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:12 updateMode:3];
    v19 = SBAppendSwitcherModifierResponse(v9, v5);

    [(SBChainableModifier *)self setState:1];
    v5 = v19;
  }

LABEL_6:

  return v5;
}

- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v15.receiver = self;
  v15.super_class = SBPulseDisplayItemSwitcherModifier;
  v6 = a4;
  [(SBPulseDisplayItemSwitcherModifier *)&v15 scaleForLayoutRole:a3 inAppLayout:v6];
  v8 = v7;
  v9 = [v6 itemForLayoutRole:{a3, v15.receiver, v15.super_class}];

  v10 = [(SBDisplayItem *)v9 isEqualToItem:?];
  if (v10)
  {
    v11 = [(SBPulseDisplayItemSwitcherModifier *)self switcherSettings];
    v12 = [v11 animationSettings];
    [v12 pulseScale];
    v8 = v8 * v13;
  }

  return v8;
}

- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withCornerRadii:(UIRectCornerRadii)a5
{
  topRight = a5.topRight;
  bottomRight = a5.bottomRight;
  bottomLeft = a5.bottomLeft;
  topLeft = a5.topLeft;
  v11 = a4;
  v12 = [(SBPulseDisplayItemSwitcherModifier *)self windowManagementContext];
  v13 = [v12 isFlexibleWindowingEnabled];

  if (v13)
  {
    [(SBPulseDisplayItemSwitcherModifier *)&v38 cornerRadiiForLayoutRole:a3 inAppLayout:v11 withCornerRadii:topLeft, bottomLeft, bottomRight, topRight, v37.receiver, v37.super_class, self, SBPulseDisplayItemSwitcherModifier];
LABEL_12:
    v21 = v14;
    v22 = v15;
    v23 = v16;
    v24 = v17;
    goto LABEL_13;
  }

  v18 = [v11 itemForLayoutRole:a3];
  if (-[SBDisplayItem isEqualToItem:](v18, self->_displayItem) && [v11 configuration] == 1)
  {
    v19 = [v11 environment];

    if (v19 != 2)
    {
      [(SBPulseDisplayItemSwitcherModifier *)self displayCornerRadius];
      SBRectCornerRadiiForRadius();
      goto LABEL_12;
    }
  }

  else
  {
  }

  v20 = [v11 itemForLayoutRole:a3];
  if (!-[SBDisplayItem isEqualToItem:](v20, self->_displayItem) || [v11 environment] == 2)
  {

LABEL_11:
    [(SBPulseDisplayItemSwitcherModifier *)&v37 cornerRadiiForLayoutRole:a3 inAppLayout:v11 withCornerRadii:topLeft, bottomLeft, bottomRight, topRight, self, SBPulseDisplayItemSwitcherModifier, v38.receiver, v38.super_class];
    goto LABEL_12;
  }

  v29 = [v11 configuration];

  if (!v29)
  {
    goto LABEL_11;
  }

  v30 = [(SBPulseDisplayItemSwitcherModifier *)self isRTLEnabled];
  [(SBPulseDisplayItemSwitcherModifier *)self splitViewInnerCornerRadius];
  v23 = v31;
  if (a3 == 1 && !v30 || ((a3 == 2) & v30) == 1)
  {
    [(SBPulseDisplayItemSwitcherModifier *)self displayCornerRadius];
    v21 = v32;
    [(SBPulseDisplayItemSwitcherModifier *)self displayCornerRadius];
    v22 = v33;
    v24 = v23;
  }

  else
  {
    [(SBPulseDisplayItemSwitcherModifier *)self displayCornerRadius];
    v35 = v34;
    [(SBPulseDisplayItemSwitcherModifier *)self displayCornerRadius];
    v24 = v36;
    v21 = v23;
    v22 = v23;
    v23 = v35;
  }

LABEL_13:

  v25 = v21;
  v26 = v22;
  v27 = v23;
  v28 = v24;
  result.topRight = v28;
  result.bottomRight = v27;
  result.bottomLeft = v26;
  result.topLeft = v25;
  return result;
}

- (unint64_t)maskedCornersForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withMaskedCorners:(unint64_t)a5
{
  v8 = a4;
  v9 = [v8 itemForLayoutRole:a3];
  if (![(SBDisplayItem *)v9 isEqualToItem:?])
  {

    goto LABEL_5;
  }

  v10 = [v8 environment];

  if (v10 == 2)
  {
LABEL_5:
    v13.receiver = self;
    v13.super_class = SBPulseDisplayItemSwitcherModifier;
    v11 = [(SBPulseDisplayItemSwitcherModifier *)&v13 maskedCornersForLayoutRole:a3 inAppLayout:v8 withMaskedCorners:a5];
    goto LABEL_6;
  }

  v11 = 15;
LABEL_6:

  return v11;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBPulseDisplayItemSwitcherModifier;
  v5 = [(SBPulseDisplayItemSwitcherModifier *)&v11 animationAttributesForLayoutElement:v4];
  v6 = [v5 mutableCopy];

  if (![v4 switcherLayoutElementType] && objc_msgSend(v4, "containsItem:", self->_displayItemToPulse))
  {
    v7 = [(SBPulseDisplayItemSwitcherModifier *)self switcherSettings];
    v8 = [v7 animationSettings];
    v9 = [v8 pulseScaleSettings];
    [v6 setLayoutSettings:v9];
  }

  return v6;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3
{
  v4 = a3;
  if ([v4 containsItem:self->_displayItemToPulse])
  {
    v5 = SBSwitcherAsyncRenderingAttributesMake(0, 0);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBPulseDisplayItemSwitcherModifier;
    v5 = [(SBPulseDisplayItemSwitcherModifier *)&v8 asyncRenderingAttributesForAppLayout:v4];
  }

  v6 = v5;

  return v6;
}

- (id)topMostLayoutElements
{
  v3 = [(SBPulseDisplayItemSwitcherModifier *)self appLayouts];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__SBPulseDisplayItemSwitcherModifier_topMostLayoutElements__block_invoke;
  v12[3] = &unk_2783A8CB8;
  v12[4] = self;
  v4 = [v3 bs_firstObjectPassingTest:v12];

  v5 = [(SBPulseDisplayItemSwitcherModifier *)self appLayoutOnStage];
  v6 = [v5 isOrContainsAppLayout:v4];

  if (v6)
  {
    v11.receiver = self;
    v11.super_class = SBPulseDisplayItemSwitcherModifier;
    v7 = [(SBPulseDisplayItemSwitcherModifier *)&v11 topMostLayoutElements];
    v8 = [v7 sb_arrayByInsertingOrMovingObject:v4 toIndex:0];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBPulseDisplayItemSwitcherModifier;
    v8 = [(SBPulseDisplayItemSwitcherModifier *)&v10 topMostLayoutElements];
  }

  return v8;
}

@end