@interface UIClickPresentationInteraction
@end

@implementation UIClickPresentationInteraction

void __55___UIClickPresentationInteraction__performPresentation__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55___UIClickPresentationInteraction__performPresentation__block_invoke_3;
  v3[3] = &unk_1E70FCE28;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  [UIViewController _performWithoutDeferringTransitionsAllowingAnimation:v3 actions:?];
}

uint64_t __55___UIClickPresentationInteraction__performPresentation__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) presentationAssistant];
  [v2 presentFromSourcePreview:*(a1 + 40) lifecycleCompletion:*(a1 + 48)];

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55___UIClickPresentationInteraction__performPresentation__block_invoke_4;
  v4[3] = &unk_1E70F3590;
  v4[4] = *(a1 + 32);
  return [UIView performWithoutAnimation:v4];
}

uint64_t __55___UIClickPresentationInteraction__performPresentation__block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[35] == 1)
    {
      v9 = [WeakRetained delegate];
      v10 = [v9 _clickPresentationInteraction:v8 shouldMaintainKeyboardAssertionForFirstResponder:v5 presentation:v6];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __55___UIClickPresentationInteraction__performPresentation__block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) _activeEffect];
  [v1 endForHandOff];
}

void __55___UIClickPresentationInteraction__performPresentation__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained presentationAssistant];

  if (v4)
  {
    v7 = WeakRetained;
    v8 = 1;
    v5 = 9;
    if (!a2)
    {
      v5 = 10;
    }

    v6 = [WeakRetained presentationAssistant];
    [v6 presentation];
    v10 = 0;
    v9 = v11 = 0;

    [WeakRetained setPresentationAssistant:0];
    [WeakRetained _endInteractionWithContext:&v7];
  }
}

void __59___UIClickPresentationInteraction_clickDriver_shouldBegin___block_invoke(id *a1)
{
  v2 = [a1[4] view];
  v3 = [v2 _window];
  if (v3)
  {
    v4 = *(a1[4] + 1);

    if (v4 == 1)
    {
      [a1[4] setInitialLocation:{1.79769313e308, 1.79769313e308, 1.79769313e308}];
      [a1[4] setActiveDriver:a1[5]];
      if ((*(a1[4] + 48) & 1) == 0 && ((objc_opt_respondsToSelector() & 1) == 0 || [a1[5] allowsFeedback]))
      {
        v5 = a1[4];
        if (v5[31] != 1)
        {
LABEL_9:
          v5[49] = 1;
          *(a1[4] + 48) = 1;
          v8 = [a1[4] feedbackGenerator];
          [v8 userInteractionStarted];

          goto LABEL_10;
        }

        v6 = [v5 delegate];
        v7 = [v6 _clickPresentationInteractionShouldPlayFeedback:a1[4]];

        if (v7)
        {
          v5 = a1[4];
          goto LABEL_9;
        }
      }

LABEL_10:
      v9 = [a1[4] delegate];
      v10 = a1[4];
      if (*(v10 + 21) == 1)
      {
        v11 = [a1[4] _clickDriverTouch];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __59___UIClickPresentationInteraction_clickDriver_shouldBegin___block_invoke_2;
        v16[3] = &unk_1E711B7A0;
        v16[4] = a1[4];
        v17 = a1[6];
        [v9 _clickPresentationInteraction:v10 shouldBeginWithTouch:v11 completion:v16];
      }

      else if (*(v10 + 16) == 1)
      {
        v15 = a1[4];
        handleEvent(stateMachineSpec_3, v10[1], 0, &v15, v10 + 1);
        v13 = [a1[4] delegate];
        v14 = [v13 clickPresentationInteractionShouldBegin:a1[4]];

        *(a1[4] + 51) = v14 ^ 1;
        (*(a1[6] + 2))();
      }

      return;
    }
  }

  else
  {
  }

  v12 = *(a1[6] + 2);

  v12();
}

uint64_t __59___UIClickPresentationInteraction_clickDriver_shouldBegin___block_invoke_2(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 32) + 51) = a2 != 0;
  if (a2)
  {
    (*(*(a1 + 40) + 16))();
    v3 = *(a1 + 32);

    return [v3 setActiveDriver:0];
  }

  else
  {
    v5 = *(a1 + 32);
    handleEvent(stateMachineSpec_3, *(v5 + 8), 0, &v5, (v5 + 8));
    return (*(*(a1 + 40) + 16))();
  }
}

void __86___UIClickPresentationInteraction__attemptDragLiftAtLocation_useDefaultLiftAnimation___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    if (([*(a1 + 32) allowsSimultaneousRecognitionDuringLift] & 1) == 0)
    {
      v4 = [*(a1 + 40) exclusionRelationshipGestureRecognizer];
      [v4 _succeed];
    }
  }

  else
  {
    v3 = *(a1 + 40);
    if (v3[51] == 1)
    {

      [_UIClickPresentationInteraction _endInteractionDidComplete:v3 completion:0];
    }
  }
}

void __64___UIClickPresentationInteraction_beginDragIfPossibleWithTouch___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained[25] == 1)
  {
    v5 = [WeakRetained delegate];
    v6 = [v4 presentationAssistant];
    v7 = [v6 presentation];
    v8 = [v5 _clickPresentationInteraction:v4 liveDragPreviewForPresentation:v7 dragItem:v9];

    if (v8)
    {
      [*(*(*(a1 + 32) + 8) + 40) addObject:v8];
      [v9 setTargetedLiftPreview:v8];
    }
  }
}

uint64_t __64___UIClickPresentationInteraction_beginDragIfPossibleWithTouch___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 _fenceHandler];

        if (v8)
        {
          v9 = [v7 _fenceHandler];
          v9[2]();
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64___UIClickPresentationInteraction_beginDragIfPossibleWithTouch___block_invoke_3;
  v11[3] = &unk_1E70F3590;
  v11[4] = *(a1 + 32);
  return [UIView performWithoutAnimation:v11];
}

void __61___UIClickPresentationInteraction__handleTransitionToPreview__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3 && v3[1] == 4)
  {
    if (a2)
    {

      [v3 present];
    }

    else
    {

      [v3 _cancelWithReason:11 alongsideActions:0 completion:0];
    }
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

_BYTE *__83___UIClickPresentationInteraction__handleDidTransitionToPossibleFromState_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 32);
  if (v3)
  {
    (*(v3 + 16))();
    v2 = *(a1 + 48);
  }

  if (!*(v2 + 24))
  {
    v4 = [*(a1 + 32) presentation];
    v5 = *(a1 + 48);
    v6 = *(v5 + 24);
    *(v5 + 24) = v4;
  }

  result = *(a1 + 40);
  if (((result[19] & 1) != 0 || result[30] == 1) && *(*(a1 + 48) + 16) != 1)
  {

    return [result _delegate_interactionEndedWithContext:?];
  }

  return result;
}

id __60___UIClickPresentationInteraction__prepareInteractionEffect__block_invoke_2(void *a1)
{
  v2 = *(*(a1[8] + 8) + 40);
  if (!v2)
  {
    v3 = [_UIClickHighlightInteractionEffect effectWithPreview:a1[4] continuingFromPreview:a1[5]];
    v4 = *(a1[8] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(a1[8] + 8) + 40);
  }

  v6 = [_UIGravityWellAdaptorEffect effectWithAdaptedClickEffect:v2];
  [v6 setDescriptor:a1[6] andKey:a1[7]];

  return v6;
}

void __95___UIClickPresentationInteraction__dragInteractionPresentation_sessionDidEnd_withoutBeginning___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[28] == 1)
  {
    v3 = [v2 delegate];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) items];
    [v3 _clickPresentationInteraction:v4 dragSessionDidEndForItems:v5];

    v2 = *(a1 + 32);
  }

  v6 = [v2 associatedDragInteraction];
  v7 = [*(a1 + 32) latentAssociatedDragInteraction];

  if (v6 != v7)
  {
    v8 = [*(a1 + 32) latentAssociatedDragInteraction];
    [v8 _setPresentationDelegate:0];

    v9 = *(a1 + 32);
    v10 = *(v9 + 88);
    *(v9 + 88) = 0;
  }
}

@end