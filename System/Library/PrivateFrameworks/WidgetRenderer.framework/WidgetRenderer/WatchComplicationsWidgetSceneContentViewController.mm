@interface WatchComplicationsWidgetSceneContentViewController
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
- (void)_updateWithFrameSpecifier:(id)specifier completion:(id)completion;
@end

@implementation WatchComplicationsWidgetSceneContentViewController

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  sceneCopy = scene;
  sSceneCopy = sScene;
  diffCopy = diff;
  settingsCopy = settings;
  contextCopy = context;
  selfCopy = self;
  sub_1DAE4AE78(sScene, diff, settings, context);
}

- (void)_updateWithFrameSpecifier:(id)specifier completion:(id)completion
{
  v6 = _Block_copy(completion);
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
  specifierCopy = specifier;
  selfCopy = self;

  v13.receiver = selfCopy;
  v13.super_class = type metadata accessor for WatchComplicationsWidgetSceneContentViewController();
  [(WidgetSceneContentViewController *)&v13 _updateWithFrameSpecifier:specifierCopy completion:v10];

  _Block_release(v10);
}

@end