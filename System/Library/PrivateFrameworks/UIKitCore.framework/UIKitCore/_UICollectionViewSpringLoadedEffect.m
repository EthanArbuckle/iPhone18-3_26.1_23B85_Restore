@interface _UICollectionViewSpringLoadedEffect
- (_UICollectionViewSpringLoadedEffect)init;
- (void)interaction:(id)a3 didChangeWithContext:(id)a4;
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

- (void)interaction:(id)a3 didChangeWithContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 view];
  v9 = [v7 overrideTargetItem];
  v10 = [v7 overrideTargetView];

  if (v10)
  {
    v11 = [v7 overrideTargetView];
    [v7 setTargetView:v11];
  }

  v12 = [v7 overrideTargetView];

  v13 = [v7 targetView];

  v14 = [v7 targetView];
  if (!v14 || (v14, v13 == v8) && v12 != v8)
  {
    v15 = [v8 _cellForItemAtIndexPath:v9];
    [v7 setTargetView:v15];
  }

  v16 = [v7 targetView];
  if (v16 && (v17 = v16, [v7 targetView], v18 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v18, v17, (isKindOfClass & 1) == 0))
  {
    v23 = 0;
  }

  else
  {
    v20 = [v7 targetView];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = [v8 _cellForItemAtIndexPath:v9];
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

  v25 = [v7 state];
  if (v25 == 2)
  {
    if (v23)
    {
      objc_initWeak(&location, v8);
      v28 = MEMORY[0x1E695DFF0];
      v32 = MEMORY[0x1E69E9820];
      v33 = 3221225472;
      v34 = __72___UICollectionViewSpringLoadedEffect_interaction_didChangeWithContext___block_invoke;
      v35 = &unk_1E7100628;
      v36 = v23;
      objc_copyWeak(&v38, &location);
      v37 = v9;
      v29 = [v28 scheduledTimerWithTimeInterval:1 repeats:&v32 block:0.1];
      [(_UICollectionViewSpringLoadedEffect *)self setStateBlinkTimer:v29, v32, v33, v34, v35];

      objc_destroyWeak(&v38);
      objc_destroyWeak(&location);
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (v25 == 1)
  {
    v27 = [v7 overrideTargetView];

    if (v27)
    {
      goto LABEL_27;
    }

    [v7 setTargetView:0];
    if (v23)
    {
      goto LABEL_29;
    }

    [v8 _highlightSpringLoadedItemAtIndexPath:v9];
LABEL_28:
    v31 = [(_UICollectionViewSpringLoadedEffect *)self blinkEffect];
    [v31 interaction:v6 didChangeWithContext:v7];

    goto LABEL_29;
  }

  if (v25)
  {
    v30 = [(_UICollectionViewSpringLoadedEffect *)self stateBlinkTimer];
    [v30 invalidate];

    [(_UICollectionViewSpringLoadedEffect *)self setStateBlinkTimer:0];
  }

  else
  {
    v26 = [(_UICollectionViewSpringLoadedEffect *)self stateBlinkTimer];
    [v26 invalidate];

    [(_UICollectionViewSpringLoadedEffect *)self setStateBlinkTimer:0];
    [v8 _unhighlightSpringLoadedItem];
    [v7 setOverrideTargetItem:0];
  }

LABEL_27:
  if (!v23)
  {
    goto LABEL_28;
  }

LABEL_29:
}

@end