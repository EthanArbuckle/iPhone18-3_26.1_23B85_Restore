@interface _SBContinuousExposePeekContentSwitcherModifier
- (BOOL)shouldAllowContentViewTouchesForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5;
- (_SBContinuousExposePeekContentSwitcherModifier)initWithAppLayout:(id)a3 configuration:(int64_t)a4;
- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (id)handleTapAppLayoutEvent:(id)a3;
- (id)responseForProposedChildResponse:(id)a3 childModifier:(id)a4 event:(id)a5;
@end

@implementation _SBContinuousExposePeekContentSwitcherModifier

- (_SBContinuousExposePeekContentSwitcherModifier)initWithAppLayout:(id)a3 configuration:(int64_t)a4
{
  v8 = a3;
  v15.receiver = self;
  v15.super_class = _SBContinuousExposePeekContentSwitcherModifier;
  v9 = [(SBSwitcherModifier *)&v15 init];
  if (v9)
  {
    if (!v8)
    {
      [_SBContinuousExposePeekContentSwitcherModifier initWithAppLayout:a2 configuration:v9];
    }

    objc_storeStrong(&v9->_appLayout, a3);
    v9->_configuration = a4;
    v10 = [[SBFullScreenContinuousExposeSwitcherModifier alloc] initWithFullScreenAppLayout:v9->_appLayout];
    fullScreenContinuousExposeAppLayoutModifier = v9->_fullScreenContinuousExposeAppLayoutModifier;
    v9->_fullScreenContinuousExposeAppLayoutModifier = v10;

    [(SBFullScreenContinuousExposeSwitcherModifier *)v9->_fullScreenContinuousExposeAppLayoutModifier setHandlesTapAppLayoutEvents:0];
    [(SBFullScreenContinuousExposeSwitcherModifier *)v9->_fullScreenContinuousExposeAppLayoutModifier setHandlesTapAppLayoutHeaderEvents:0];
    [(SBChainableModifier *)v9 addChildModifier:v9->_fullScreenContinuousExposeAppLayoutModifier atLevel:0 key:0];
    v12 = objc_alloc_init(SBAppSwitcherContinuousExposeSwitcherModifier);
    appSwitcherModifier = v9->_appSwitcherModifier;
    v9->_appSwitcherModifier = v12;

    [(SBAppSwitcherContinuousExposeSwitcherModifier *)v9->_appSwitcherModifier setHandlesTapAppLayoutEvents:0];
    [(SBAppSwitcherContinuousExposeSwitcherModifier *)v9->_appSwitcherModifier setHandlesTapAppLayoutHeaderEvents:0];
    [(SBChainableModifier *)v9 addChildModifier:v9->_appSwitcherModifier atLevel:1 key:0];
  }

  return v9;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v11.receiver = self;
  v11.super_class = _SBContinuousExposePeekContentSwitcherModifier;
  v4 = [(_SBContinuousExposePeekContentSwitcherModifier *)&v11 adjustedAppLayoutsForAppLayouts:a3];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82___SBContinuousExposePeekContentSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke;
  v10[3] = &unk_2783A8CB8;
  v10[4] = self;
  v5 = [v4 bs_filter:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82___SBContinuousExposePeekContentSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke_2;
  v9[3] = &unk_2783A8CB8;
  v9[4] = self;
  v6 = [v4 bs_filter:v9];
  v7 = [v5 arrayByAddingObjectsFromArray:v6];

  return v7;
}

- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  v29.receiver = self;
  v29.super_class = _SBContinuousExposePeekContentSwitcherModifier;
  [(_SBContinuousExposePeekContentSwitcherModifier *)&v29 frameForLayoutRole:a3 inAppLayout:v11 withBounds:x, y, width, height];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if ([v11 isEqual:self->_appLayout])
  {
    v20 = [v11 itemForLayoutRole:a3];
    [(SBSwitcherModifier *)self frameForContinuousExposePeekingDisplayItem:v20 inAppLayout:v11 bounds:x defaultFrameForLayoutRole:y, width, height, v13, v15, v17, v19];
    v13 = v21;
    v15 = v22;
    v17 = v23;
    v19 = v24;
  }

  v25 = v13;
  v26 = v15;
  v27 = v17;
  v28 = v19;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v7 = 1.0;
  if (([v6 isEqual:self->_appLayout] & 1) == 0)
  {
    v10.receiver = self;
    v10.super_class = _SBContinuousExposePeekContentSwitcherModifier;
    [(_SBContinuousExposePeekContentSwitcherModifier *)&v10 scaleForLayoutRole:a3 inAppLayout:v6];
    v7 = v8;
  }

  return v7;
}

- (BOOL)shouldAllowContentViewTouchesForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if ([v6 isEqual:self->_appLayout])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _SBContinuousExposePeekContentSwitcherModifier;
    v7 = [(_SBContinuousExposePeekContentSwitcherModifier *)&v9 shouldAllowContentViewTouchesForLayoutRole:a3 inAppLayout:v6];
  }

  return v7;
}

- (id)handleTapAppLayoutEvent:(id)a3
{
  v10.receiver = self;
  v10.super_class = _SBContinuousExposePeekContentSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v10 handleTapAppLayoutEvent:v4];
  v6 = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForTapAppLayoutEvent:v4, v10.receiver, v10.super_class];
  [v6 setPeekConfiguration:1];
  [v6 setRetainsSiri:{-[_SBContinuousExposePeekContentSwitcherModifier isSystemAssistantExperiencePersistentSiriEnabled](self, "isSystemAssistantExperiencePersistentSiriEnabled")}];
  v7 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v6 gestureInitiated:0];
  v8 = SBAppendSwitcherModifierResponse(v7, v5);

  [v4 handleWithReason:@"Exiting out of peek"];

  return v8;
}

- (id)responseForProposedChildResponse:(id)a3 childModifier:(id)a4 event:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12.receiver = self;
  v12.super_class = _SBContinuousExposePeekContentSwitcherModifier;
  v10 = [(SBChainableModifier *)&v12 responseForProposedChildResponse:a3 childModifier:v8 event:v9];
  if (self->_fullScreenContinuousExposeAppLayoutModifier == v8 && [v9 type] == 17 || self->_appSwitcherModifier == v8)
  {

    v10 = 0;
  }

  return v10;
}

- (void)initWithAppLayout:(uint64_t)a1 configuration:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuousExposePeekSwitcherModifier.m" lineNumber:243 description:{@"Invalid parameter not satisfying: %@", @"appLayout"}];
}

@end