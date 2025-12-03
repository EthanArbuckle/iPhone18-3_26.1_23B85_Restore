@interface UIApplicationSceneClientAgent
- (UIApplicationSceneClientAgent)init;
- (void)dealloc;
- (void)scene:(id)scene didInitializeWithEvent:(id)event completion:(id)completion;
- (void)scene:(id)scene handleEvent:(id)event withCompletion:(id)completion;
- (void)scene:(id)scene willInvalidateWithEvent:(id)event completion:(id)completion;
@end

@implementation UIApplicationSceneClientAgent

- (UIApplicationSceneClientAgent)init
{
  v3.receiver = self;
  v3.super_class = UIApplicationSceneClientAgent;
  return [(UIApplicationSceneClientAgent *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = UIApplicationSceneClientAgent;
  [(UIApplicationSceneClientAgent *)&v2 dealloc];
}

- (void)scene:(id)scene didInitializeWithEvent:(id)event completion:(id)completion
{
  sceneCopy = scene;
  eventCopy = event;
  completionCopy = completion;
  _workspace = [UIApp _workspace];
  identifier = [sceneCopy identifier];
  v13 = [_workspace sceneWithIdentifier:identifier];

  delegate = [_workspace delegate];

  if (delegate)
  {
    delegate2 = [_workspace delegate];
    transitionContext = [eventCopy transitionContext];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __73__UIApplicationSceneClientAgent_scene_didInitializeWithEvent_completion___block_invoke;
    v18[3] = &unk_1E710A5A8;
    v19 = completionCopy;
    [delegate2 workspace:_workspace didCreateScene:v13 withTransitionContext:transitionContext completion:v18];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = UIApplicationSceneClientAgent;
    [(FBSBasicSceneClientAgent *)&v17 scene:sceneCopy didInitializeWithEvent:eventCopy completion:completionCopy];
  }
}

uint64_t __73__UIApplicationSceneClientAgent_scene_didInitializeWithEvent_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)scene:(id)scene willInvalidateWithEvent:(id)event completion:(id)completion
{
  sceneCopy = scene;
  eventCopy = event;
  completionCopy = completion;
  _workspace = [UIApp _workspace];
  identifier = [sceneCopy identifier];
  v13 = [_workspace sceneWithIdentifier:identifier];

  delegate = [_workspace delegate];

  if (delegate)
  {
    delegate2 = [_workspace delegate];
    transitionContext = [eventCopy transitionContext];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __74__UIApplicationSceneClientAgent_scene_willInvalidateWithEvent_completion___block_invoke;
    v18[3] = &unk_1E710A5D0;
    v19 = completionCopy;
    [delegate2 workspace:_workspace willDestroyScene:v13 withTransitionContext:transitionContext completion:v18];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = UIApplicationSceneClientAgent;
    [(FBSBasicSceneClientAgent *)&v17 scene:sceneCopy willInvalidateWithEvent:eventCopy completion:completionCopy];
  }
}

uint64_t __74__UIApplicationSceneClientAgent_scene_willInvalidateWithEvent_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)scene:(id)scene handleEvent:(id)event withCompletion:(id)completion
{
  sceneCopy = scene;
  eventCopy = event;
  completionCopy = completion;
  _workspace = [UIApp _workspace];
  identifier = [sceneCopy identifier];
  v13 = [_workspace sceneWithIdentifier:identifier];

  delegate = [v13 delegate];
  if (!delegate)
  {
    goto LABEL_9;
  }

  settingsDiff = [eventCopy settingsDiff];
  if (settingsDiff)
  {

LABEL_5:
    settingsDiff2 = [eventCopy settingsDiff];
    transitionContext = [eventCopy transitionContext];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __66__UIApplicationSceneClientAgent_scene_handleEvent_withCompletion___block_invoke;
    v23[3] = &unk_1E710A5F8;
    v24 = completionCopy;
    [delegate scene:v13 didUpdateWithDiff:settingsDiff2 transitionContext:transitionContext completion:v23];

    goto LABEL_10;
  }

  transitionContext2 = [eventCopy transitionContext];

  if (transitionContext2)
  {
    goto LABEL_5;
  }

  actions = [eventCopy actions];
  v20 = [actions count];

  if (!v20)
  {
LABEL_9:
    v22.receiver = self;
    v22.super_class = UIApplicationSceneClientAgent;
    [(FBSBasicSceneClientAgent *)&v22 scene:sceneCopy handleEvent:eventCopy withCompletion:completionCopy];
    goto LABEL_10;
  }

  actions2 = [eventCopy actions];
  [delegate scene:v13 didReceiveActions:actions2];

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

LABEL_10:
}

void __66__UIApplicationSceneClientAgent_scene_handleEvent_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 message];
    (*(v2 + 16))(v2, v3);
  }
}

@end