@interface _UISheetDropInteraction
- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session;
- (UIView)view;
- (_UISheetDropInteraction)initWithDelegate:(id)delegate;
- (_UISheetDropInteractionDelegate)delegate;
- (id)_activityTypeForSession:(id)session;
- (id)dropInteraction:(id)interaction previewForDroppingItem:(id)item withDefault:(id)default;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (void)_activityForSession:(id)session completion:(id)completion;
- (void)_removeActivityTypeOrActivityForSession:(id)session;
- (void)dropInteraction:(id)interaction item:(id)item willAnimateDropWithAnimator:(id)animator;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
- (void)willMoveToView:(id)view;
@end

@implementation _UISheetDropInteraction

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (_UISheetDropInteraction)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = _UISheetDropInteraction;
  v5 = [(_UISheetDropInteraction *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = [[UIDropInteraction alloc] initWithDelegate:v6];
    dropInteraction = v6->_dropInteraction;
    v6->_dropInteraction = v7;

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    activityTypesOrActivities = v6->_activityTypesOrActivities;
    v6->_activityTypesOrActivities = strongToStrongObjectsMapTable;
  }

  return v6;
}

- (void)willMoveToView:(id)view
{
  view = [(_UISheetDropInteraction *)self view];
}

- (id)_activityTypeForSession:(id)session
{
  v38 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  activityTypesOrActivities = [(_UISheetDropInteraction *)self activityTypesOrActivities];
  activityType2 = [activityTypesOrActivities objectForKey:sessionCopy];

  if (activityType2)
  {
    goto LABEL_2;
  }

  activityTypesOrActivities2 = [(_UISheetDropInteraction *)self activityTypesOrActivities];
  null = [MEMORY[0x1E695DFB0] null];
  [activityTypesOrActivities2 setObject:null forKey:sessionCopy];

  items = [sessionCopy items];
  firstObject = [items firstObject];
  itemProvider = [firstObject itemProvider];

  if (([itemProvider hasItemConformingToTypeIdentifier:@"com.apple.uikit.scene"] & 1) == 0)
  {
LABEL_15:

    activityType2 = 0;
    goto LABEL_16;
  }

  teamData = [itemProvider teamData];
  teamData2 = [itemProvider teamData];

  if (!teamData2 || ([MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:teamData error:0], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_15;
  }

  v16 = v15;
  activityType = [v15 activityType];

  if (activityType)
  {
    activityType2 = [v16 activityType];
    if (activityType2)
    {
LABEL_9:
      activityTypesOrActivities3 = [(_UISheetDropInteraction *)self activityTypesOrActivities];
      [activityTypesOrActivities3 setObject:activityType2 forKey:sessionCopy];
    }
  }

  else
  {
    sceneIdentifier = [v16 sceneIdentifier];

    if (!sceneIdentifier)
    {

      activityType2 = 0;
      goto LABEL_2;
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = [UIApp _openSessionsIncludingInternal:1];
    activityType2 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (activityType2)
    {
      v30 = teamData;
      v32 = *v34;
      while (2)
      {
        for (i = 0; i != activityType2; i = i + 1)
        {
          if (*v34 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v33 + 1) + 8 * i);
          persistentIdentifier = [v23 persistentIdentifier];
          v25 = v16;
          sceneIdentifier2 = [v16 sceneIdentifier];
          v27 = [persistentIdentifier isEqualToString:sceneIdentifier2];

          if (v27)
          {
            scene = [v23 scene];

            if (scene)
            {
              scene2 = [v23 scene];
              [_UISceneUserActivityManager _saveRestorationStateForScene:scene2];
            }

            activityType2 = [v23 stateRestorationActivity];
            teamData = v30;
            v16 = v25;
            goto LABEL_33;
          }

          v16 = v25;
        }

        activityType2 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (activityType2)
        {
          continue;
        }

        break;
      }

      teamData = v30;
    }

LABEL_33:

    if (activityType2)
    {
      goto LABEL_9;
    }
  }

LABEL_2:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6ActivityType = activityType2;
    activityType2 = v6ActivityType;
LABEL_13:
    v19 = v6ActivityType;
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6ActivityType = [activityType2 activityType];
    goto LABEL_13;
  }

LABEL_16:
  v19 = 0;
LABEL_17:

  return v19;
}

- (void)_activityForSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  activityTypesOrActivities = [(_UISheetDropInteraction *)self activityTypesOrActivities];
  v10 = [activityTypesOrActivities objectForKey:sessionCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    completionCopy[2](completionCopy, v10);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = objc_opt_class();
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __58___UISheetDropInteraction__activityForSession_completion___block_invoke;
      v14[3] = &unk_1E70FDA40;
      v15 = completionCopy;
      v12 = [sessionCopy loadObjectsOfClass:v11 completion:v14];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UISheetDropInteraction.m" lineNumber:159 description:@"Called _activityForSession: for a session that does not have an activity or activity type."];
    }
  }
}

- (void)_removeActivityTypeOrActivityForSession:(id)session
{
  sessionCopy = session;
  activityTypesOrActivities = [(_UISheetDropInteraction *)self activityTypesOrActivities];
  [activityTypesOrActivities removeObjectForKey:sessionCopy];
}

- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session
{
  v5 = [(_UISheetDropInteraction *)self _activityTypeForSession:session];
  if (v5)
  {
    delegate = [(_UISheetDropInteraction *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0 || (-[_UISheetDropInteraction delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 _sheetDropInteraction:self canHandleUserActivityOfType:v5], v8, v9))
    {
      LOBYTE(v9) = 1;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  v4 = [[UIDropProposal alloc] initWithDropOperation:2];

  return v4;
}

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  dropCopy = drop;
  v7 = [(_UISheetDropInteraction *)self _activityTypeForSession:dropCopy];
  if (v7)
  {
    delegate = [(_UISheetDropInteraction *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate2 = [(_UISheetDropInteraction *)self delegate];
      v11 = [delegate2 _sheetDropInteraction:self presentingViewControllerForDroppingUserActivityOfType:v7];
    }

    else
    {
      v11 = 0;
    }

    delegate3 = [(_UISheetDropInteraction *)self delegate];
    v13 = [delegate3 _sheetDropInteraction:self viewControllerForDroppingUserActivityOfType:v7];

    if (!v13)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UISheetDropInteraction.m" lineNumber:206 description:@"_sheetDropInteraction:viewControllerForDroppingUserActivityOfType: must return a non-nil view controller."];
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __55___UISheetDropInteraction_dropInteraction_performDrop___block_invoke;
    v21[3] = &unk_1E70F35B8;
    v22 = v11;
    v14 = v13;
    v23 = v14;
    v15 = v11;
    [UIViewController _performWithoutDeferringTransitionsAllowingAnimation:v21 actions:?];
    v16 = [v14 _existingPresentationControllerImmediate:1 effective:1];
    [(_UISheetDropInteraction *)self setPresentationController:v16];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __55___UISheetDropInteraction_dropInteraction_performDrop___block_invoke_2;
    v19[3] = &unk_1E7119C50;
    v19[4] = self;
    v20 = v14;
    v17 = v14;
    [(_UISheetDropInteraction *)self _activityForSession:dropCopy completion:v19];
  }
}

- (id)dropInteraction:(id)interaction previewForDroppingItem:(id)item withDefault:(id)default
{
  defaultCopy = default;
  presentationController = [(_UISheetDropInteraction *)self presentationController];

  if (presentationController)
  {
    v8 = objc_opt_new();
    [v8 _setPreviewMode:2];
    v19 = [UITargetedDragPreview alloc];
    presentationController2 = [(_UISheetDropInteraction *)self presentationController];
    presentedView = [presentationController2 presentedView];
    v10 = [UIDragPreviewTarget alloc];
    presentationController3 = [(_UISheetDropInteraction *)self presentationController];
    presentedView2 = [presentationController3 presentedView];
    superview = [presentedView2 superview];
    presentationController4 = [(_UISheetDropInteraction *)self presentationController];
    presentedView3 = [presentationController4 presentedView];
    [presentedView3 center];
    v16 = [(UIPreviewTarget *)v10 initWithContainer:superview center:?];
    v17 = [(UITargetedDragPreview *)v19 initWithView:presentedView parameters:v8 target:v16];
  }

  else
  {
    v17 = defaultCopy;
  }

  return v17;
}

- (void)dropInteraction:(id)interaction item:(id)item willAnimateDropWithAnimator:(id)animator
{
  animatorCopy = animator;
  presentationController = [(_UISheetDropInteraction *)self presentationController];
  presentedView = [presentationController presentedView];
  [presentedView setAlpha:0.0];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76___UISheetDropInteraction_dropInteraction_item_willAnimateDropWithAnimator___block_invoke;
  v9[3] = &unk_1E70F5DB8;
  v9[4] = self;
  [animatorCopy addCompletion:v9];
}

- (_UISheetDropInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end