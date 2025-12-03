@interface _UICollectionViewSpringLoadedEffect
- (_UICollectionViewSpringLoadedEffect)init;
- (void)interaction:(id)interaction didChangeWithContext:(id)context;
@end

@implementation _UICollectionViewSpringLoadedEffect

- (_UICollectionViewSpringLoadedEffect)init
{
  v5.receiver = self;
  v5.super_class = _UICollectionViewSpringLoadedEffect;
  v2 = [(_UICollectionViewSpringLoadedEffect *)&v5 init];
  if (v2)
  {
    v3 = +[UISpringLoadedInteraction _blinkEffect];
    [(_UICollectionViewSpringLoadedEffect *)v2 setBlinkEffect:v3];
  }

  return v2;
}

- (void)interaction:(id)interaction didChangeWithContext:(id)context
{
  interactionCopy = interaction;
  contextCopy = context;
  view = [interactionCopy view];
  overrideTargetItem = [contextCopy overrideTargetItem];
  overrideTargetView = [contextCopy overrideTargetView];

  if (overrideTargetView)
  {
    overrideTargetView2 = [contextCopy overrideTargetView];
    [contextCopy setTargetView:overrideTargetView2];
  }

  overrideTargetView3 = [contextCopy overrideTargetView];

  targetView = [contextCopy targetView];

  targetView2 = [contextCopy targetView];
  if (!targetView2 || (targetView2, targetView == view) && overrideTargetView3 != view)
  {
    v15 = [view _cellForItemAtIndexPath:overrideTargetItem];
    [contextCopy setTargetView:v15];
  }

  targetView3 = [contextCopy targetView];
  if (targetView3 && (v17 = targetView3, [contextCopy targetView], v18 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v18, v17, (isKindOfClass & 1) == 0))
  {
    v23 = 0;
  }

  else
  {
    targetView4 = [contextCopy targetView];
    v21 = targetView4;
    if (targetView4)
    {
      v22 = targetView4;
    }

    else
    {
      v22 = [view _cellForItemAtIndexPath:overrideTargetItem];
    }

    v24 = v22;

    if ([v24 _usingBackgroundViewConfiguration])
    {
      v23 = v24;
    }

    else
    {
      v23 = 0;
    }
  }

  state = [contextCopy state];
  if (state == 2)
  {
    if (v23)
    {
      objc_initWeak(&location, view);
      v28 = MEMORY[0x1E695DFF0];
      v32 = MEMORY[0x1E69E9820];
      v33 = 3221225472;
      v34 = __72___UICollectionViewSpringLoadedEffect_interaction_didChangeWithContext___block_invoke;
      v35 = &unk_1E7100628;
      v36 = v23;
      objc_copyWeak(&v38, &location);
      v37 = overrideTargetItem;
      v29 = [v28 scheduledTimerWithTimeInterval:1 repeats:&v32 block:0.1];
      [(_UICollectionViewSpringLoadedEffect *)self setStateBlinkTimer:v29, v32, v33, v34, v35];

      objc_destroyWeak(&v38);
      objc_destroyWeak(&location);
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (state == 1)
  {
    overrideTargetView4 = [contextCopy overrideTargetView];

    if (overrideTargetView4)
    {
      goto LABEL_27;
    }

    [contextCopy setTargetView:0];
    if (v23)
    {
      goto LABEL_29;
    }

    [view _highlightSpringLoadedItemAtIndexPath:overrideTargetItem];
LABEL_28:
    blinkEffect = [(_UICollectionViewSpringLoadedEffect *)self blinkEffect];
    [blinkEffect interaction:interactionCopy didChangeWithContext:contextCopy];

    goto LABEL_29;
  }

  if (state)
  {
    stateBlinkTimer = [(_UICollectionViewSpringLoadedEffect *)self stateBlinkTimer];
    [stateBlinkTimer invalidate];

    [(_UICollectionViewSpringLoadedEffect *)self setStateBlinkTimer:0];
  }

  else
  {
    stateBlinkTimer2 = [(_UICollectionViewSpringLoadedEffect *)self stateBlinkTimer];
    [stateBlinkTimer2 invalidate];

    [(_UICollectionViewSpringLoadedEffect *)self setStateBlinkTimer:0];
    [view _unhighlightSpringLoadedItem];
    [contextCopy setOverrideTargetItem:0];
  }

LABEL_27:
  if (!v23)
  {
    goto LABEL_28;
  }

LABEL_29:
}

@end