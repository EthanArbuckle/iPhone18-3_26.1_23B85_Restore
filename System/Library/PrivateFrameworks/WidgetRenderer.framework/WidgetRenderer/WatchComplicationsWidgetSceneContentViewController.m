@interface WatchComplicationsWidgetSceneContentViewController
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
- (void)_updateWithFrameSpecifier:(id)a3 completion:(id)a4;
@end

@implementation WatchComplicationsWidgetSceneContentViewController

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = self;
  sub_1DAE4AE78(a4, a5, a6, a7);
}

- (void)_updateWithFrameSpecifier:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = sub_1DAE1034C;
  v9[4] = v7;
  aBlock[4] = sub_1DAE4AE6C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_95;
  v10 = _Block_copy(aBlock);
  v11 = a3;
  v12 = self;

  v13.receiver = v12;
  v13.super_class = type metadata accessor for WatchComplicationsWidgetSceneContentViewController();
  [(WidgetSceneContentViewController *)&v13 _updateWithFrameSpecifier:v11 completion:v10];

  _Block_release(v10);
}

@end