@interface SBPulseDisplayItemSwitcherModifier
- (SBPulseDisplayItemSwitcherModifier)initWithDisplayItem:(id)item;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout;
- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)role inAppLayout:(id)layout withCornerRadii:(UIRectCornerRadii)radii;
- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)handleSwitcherShortcutActionEvent:(id)event;
- (id)handleTapAppLayoutHeaderEvent:(id)event;
- (id)handleTimerEvent:(id)event;
- (id)topMostLayoutElements;
- (unint64_t)maskedCornersForLayoutRole:(int64_t)role inAppLayout:(id)layout withMaskedCorners:(unint64_t)corners;
@end

@implementation SBPulseDisplayItemSwitcherModifier

- (SBPulseDisplayItemSwitcherModifier)initWithDisplayItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = SBPulseDisplayItemSwitcherModifier;
  v6 = [(SBSwitcherModifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_displayItem, item);
    objc_storeStrong(&v7->_displayItemToPulse, item);
  }

  return v7;
}

- (id)handleTapAppLayoutHeaderEvent:(id)event
{
  v14.receiver = self;
  v14.super_class = SBPulseDisplayItemSwitcherModifier;
  v4 = [(SBSwitcherModifier *)&v14 handleTapAppLayoutHeaderEvent:event];
  v5 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:4 updateMode:3];
  v6 = SBAppendSwitcherModifierResponse(v5, v4);

  switcherSettings = [(SBPulseDisplayItemSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  [animationSettings pulseSecondStageDelay];
  v10 = v9;

  v11 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:@"SBPulseDisplayItemSwitcherModifierTimerReasonFirstStage" reason:v10];
  v12 = SBAppendSwitcherModifierResponse(v11, v6);

  return v12;
}

- (id)handleSwitcherShortcutActionEvent:(id)event
{
  v14.receiver = self;
  v14.super_class = SBPulseDisplayItemSwitcherModifier;
  v4 = [(SBSwitcherModifier *)&v14 handleSwitcherShortcutActionEvent:event];
  v5 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:12 updateMode:3];
  v6 = SBAppendSwitcherModifierResponse(v5, v4);

  switcherSettings = [(SBPulseDisplayItemSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  [animationSettings pulseSecondStageDelay];
  v10 = v9;

  v11 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:@"SBPulseDisplayItemSwitcherModifierTimerReasonFirstStage" reason:v10];
  v12 = SBAppendSwitcherModifierResponse(v11, v6);

  return v12;
}

- (id)handleTimerEvent:(id)event
{
  eventCopy = event;
  v21.receiver = self;
  v21.super_class = SBPulseDisplayItemSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v21 handleTimerEvent:eventCopy];
  reason = [eventCopy reason];
  v7 = [reason isEqualToString:@"SBPulseDisplayItemSwitcherModifierTimerReasonFirstStage"];

  if (v7)
  {
    displayItemToPulse = self->_displayItemToPulse;
    self->_displayItemToPulse = 0;

    v9 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:12 updateMode:3];
    v10 = SBAppendSwitcherModifierResponse(v9, v5);

    switcherSettings = [(SBPulseDisplayItemSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    pulseScaleSettings = [animationSettings pulseScaleSettings];
    [pulseScaleSettings settlingDuration];
    v15 = v14;

    v16 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:@"SBPulseDisplayItemSwitcherModifierTimerReasonSecondStage" reason:v15];
    v5 = SBAppendSwitcherModifierResponse(v16, v10);
  }

  else
  {
    reason2 = [eventCopy reason];
    v18 = [reason2 isEqualToString:@"SBPulseDisplayItemSwitcherModifierTimerReasonSecondStage"];

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

- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  v15.receiver = self;
  v15.super_class = SBPulseDisplayItemSwitcherModifier;
  layoutCopy = layout;
  [(SBPulseDisplayItemSwitcherModifier *)&v15 scaleForLayoutRole:role inAppLayout:layoutCopy];
  v8 = v7;
  v9 = [layoutCopy itemForLayoutRole:{role, v15.receiver, v15.super_class}];

  v10 = [(SBDisplayItem *)v9 isEqualToItem:?];
  if (v10)
  {
    switcherSettings = [(SBPulseDisplayItemSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings pulseScale];
    v8 = v8 * v13;
  }

  return v8;
}

- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)role inAppLayout:(id)layout withCornerRadii:(UIRectCornerRadii)radii
{
  topRight = radii.topRight;
  bottomRight = radii.bottomRight;
  bottomLeft = radii.bottomLeft;
  topLeft = radii.topLeft;
  layoutCopy = layout;
  windowManagementContext = [(SBPulseDisplayItemSwitcherModifier *)self windowManagementContext];
  isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

  if (isFlexibleWindowingEnabled)
  {
    [(SBPulseDisplayItemSwitcherModifier *)&v38 cornerRadiiForLayoutRole:role inAppLayout:layoutCopy withCornerRadii:topLeft, bottomLeft, bottomRight, topRight, v37.receiver, v37.super_class, self, SBPulseDisplayItemSwitcherModifier];
LABEL_12:
    v21 = v14;
    v22 = v15;
    v23 = v16;
    v24 = v17;
    goto LABEL_13;
  }

  v18 = [layoutCopy itemForLayoutRole:role];
  if (-[SBDisplayItem isEqualToItem:](v18, self->_displayItem) && [layoutCopy configuration] == 1)
  {
    environment = [layoutCopy environment];

    if (environment != 2)
    {
      [(SBPulseDisplayItemSwitcherModifier *)self displayCornerRadius];
      SBRectCornerRadiiForRadius();
      goto LABEL_12;
    }
  }

  else
  {
  }

  v20 = [layoutCopy itemForLayoutRole:role];
  if (!-[SBDisplayItem isEqualToItem:](v20, self->_displayItem) || [layoutCopy environment] == 2)
  {

LABEL_11:
    [(SBPulseDisplayItemSwitcherModifier *)&v37 cornerRadiiForLayoutRole:role inAppLayout:layoutCopy withCornerRadii:topLeft, bottomLeft, bottomRight, topRight, self, SBPulseDisplayItemSwitcherModifier, v38.receiver, v38.super_class];
    goto LABEL_12;
  }

  configuration = [layoutCopy configuration];

  if (!configuration)
  {
    goto LABEL_11;
  }

  isRTLEnabled = [(SBPulseDisplayItemSwitcherModifier *)self isRTLEnabled];
  [(SBPulseDisplayItemSwitcherModifier *)self splitViewInnerCornerRadius];
  v23 = v31;
  if (role == 1 && !isRTLEnabled || ((role == 2) & isRTLEnabled) == 1)
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

- (unint64_t)maskedCornersForLayoutRole:(int64_t)role inAppLayout:(id)layout withMaskedCorners:(unint64_t)corners
{
  layoutCopy = layout;
  v9 = [layoutCopy itemForLayoutRole:role];
  if (![(SBDisplayItem *)v9 isEqualToItem:?])
  {

    goto LABEL_5;
  }

  environment = [layoutCopy environment];

  if (environment == 2)
  {
LABEL_5:
    v13.receiver = self;
    v13.super_class = SBPulseDisplayItemSwitcherModifier;
    v11 = [(SBPulseDisplayItemSwitcherModifier *)&v13 maskedCornersForLayoutRole:role inAppLayout:layoutCopy withMaskedCorners:corners];
    goto LABEL_6;
  }

  v11 = 15;
LABEL_6:

  return v11;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  elementCopy = element;
  v11.receiver = self;
  v11.super_class = SBPulseDisplayItemSwitcherModifier;
  v5 = [(SBPulseDisplayItemSwitcherModifier *)&v11 animationAttributesForLayoutElement:elementCopy];
  v6 = [v5 mutableCopy];

  if (![elementCopy switcherLayoutElementType] && objc_msgSend(elementCopy, "containsItem:", self->_displayItemToPulse))
  {
    switcherSettings = [(SBPulseDisplayItemSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    pulseScaleSettings = [animationSettings pulseScaleSettings];
    [v6 setLayoutSettings:pulseScaleSettings];
  }

  return v6;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([layoutCopy containsItem:self->_displayItemToPulse])
  {
    v5 = SBSwitcherAsyncRenderingAttributesMake(0, 0);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBPulseDisplayItemSwitcherModifier;
    v5 = [(SBPulseDisplayItemSwitcherModifier *)&v8 asyncRenderingAttributesForAppLayout:layoutCopy];
  }

  v6 = v5;

  return v6;
}

- (id)topMostLayoutElements
{
  appLayouts = [(SBPulseDisplayItemSwitcherModifier *)self appLayouts];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__SBPulseDisplayItemSwitcherModifier_topMostLayoutElements__block_invoke;
  v12[3] = &unk_2783A8CB8;
  v12[4] = self;
  v4 = [appLayouts bs_firstObjectPassingTest:v12];

  appLayoutOnStage = [(SBPulseDisplayItemSwitcherModifier *)self appLayoutOnStage];
  v6 = [appLayoutOnStage isOrContainsAppLayout:v4];

  if (v6)
  {
    v11.receiver = self;
    v11.super_class = SBPulseDisplayItemSwitcherModifier;
    topMostLayoutElements = [(SBPulseDisplayItemSwitcherModifier *)&v11 topMostLayoutElements];
    topMostLayoutElements2 = [topMostLayoutElements sb_arrayByInsertingOrMovingObject:v4 toIndex:0];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBPulseDisplayItemSwitcherModifier;
    topMostLayoutElements2 = [(SBPulseDisplayItemSwitcherModifier *)&v10 topMostLayoutElements];
  }

  return topMostLayoutElements2;
}

@end