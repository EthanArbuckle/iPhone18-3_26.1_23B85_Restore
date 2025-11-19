@interface _UIImageViewSymbolAnimationPresetManager
+ (id)managerForClient:(id)a3;
- (BOOL)_removeSymbolEffectsOfType:(id)a3 options:(id)a4 animated:(BOOL)a5 completion:(id)a6 forAddingNewEffect:(BOOL)a7;
- (BOOL)_symbolEffect:(id)a3 collidesWithSymbolEffect:(id)a4 forAddingEffect:(BOOL)a5;
- (BOOL)hasPendingAnimationsForImage:(id)a3;
- (_UIImageViewSymbolAnimationPresetClient)client;
- (_UIImageViewSymbolAnimationPresetManager)init;
- (id)pendingSymbolContentTransitionForSettingSymbolImage:(id)a3;
- (void)_activateActiveSymbolEffectEntry:(id)a3;
- (void)activatePendingSymbolContentTransition:(id)a3;
- (void)activatePendingSymbolEffects;
- (void)activeSymbolContentTransitionDidComplete:(id)a3;
- (void)activeSymbolEffectDidComplete:(id)a3;
- (void)addActiveSymbolEffect:(id)a3 options:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)addPendingSymbolContentTransition:(id)a3 fromSymbolImage:(id)a4 toSymbolImage:(id)a5 options:(id)a6 completion:(id)a7;
- (void)addPendingSymbolEffect:(id)a3 options:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)discardPendingSymbolContentTransitions;
- (void)removeAllSymbolEffectsWithOptions:(id)a3 animated:(BOOL)a4;
@end

@implementation _UIImageViewSymbolAnimationPresetManager

- (_UIImageViewSymbolAnimationPresetManager)init
{
  v8.receiver = self;
  v8.super_class = _UIImageViewSymbolAnimationPresetManager;
  v2 = [(_UIImageViewSymbolAnimationPresetManager *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    activeSymbolEffects = v2->_activeSymbolEffects;
    v2->_activeSymbolEffects = v3;

    v5 = [MEMORY[0x1E695DF70] array];
    pendingSymbolEffects = v2->_pendingSymbolEffects;
    v2->_pendingSymbolEffects = v5;
  }

  return v2;
}

- (void)discardPendingSymbolContentTransitions
{
  v5 = self->_pendingSymbolContentTransition;
  pendingSymbolContentTransition = self->_pendingSymbolContentTransition;
  self->_pendingSymbolContentTransition = 0;

  if (v5)
  {
    v4 = [(_UIImageViewSymbolAnimationPresetManager *)self client];
    [v4 animationPresetManager:self didDiscardPendingContentTransition:v5];
  }
}

+ (id)managerForClient:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setClient:v3];

  return v4;
}

- (BOOL)hasPendingAnimationsForImage:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->_pendingSymbolEffects count])
  {
    v5 = 1;
  }

  else
  {
    pendingSymbolContentTransition = self->_pendingSymbolContentTransition;
    if (pendingSymbolContentTransition)
    {
      v7 = [(_UIImageViewPendingSymbolContentTransition *)pendingSymbolContentTransition targetSymbolImage];
      v8 = v4;
      v9 = v8;
      if (v7 == v8)
      {
        v5 = 1;
      }

      else
      {
        v5 = 0;
        if (v8 && v7)
        {
          v5 = [v7 isEqual:v8];
        }
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)addActiveSymbolEffect:(id)a3 options:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  [(_UIImageViewSymbolAnimationPresetManager *)self _removeSymbolEffectsOfType:v12 options:v11 animated:v6 completion:0 forAddingNewEffect:1];
  v13 = objc_opt_new();
  [v13 setSymbolEffect:v12];

  [v13 setOptions:v11];
  [v13 setAnimated:v6];
  [v13 setCompletionHandler:v10];

  [(NSMutableArray *)self->_activeSymbolEffects addObject:v13];
  [(_UIImageViewSymbolAnimationPresetManager *)self _activateActiveSymbolEffectEntry:v13];
}

- (void)addPendingSymbolEffect:(id)a3 options:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  [(_UIImageViewSymbolAnimationPresetManager *)self _removeSymbolEffectsOfType:v12 options:v11 animated:v6 completion:0 forAddingNewEffect:1];
  v13 = objc_opt_new();
  [v13 setSymbolEffect:v12];

  [v13 setOptions:v11];
  [v13 setAnimated:v6];
  [v13 setCompletionHandler:v10];

  [(NSMutableArray *)self->_pendingSymbolEffects addObject:v13];
}

- (void)activatePendingSymbolEffects
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_pendingSymbolEffects copy];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        [(NSMutableArray *)self->_pendingSymbolEffects removeObjectAtIndex:0, v10];
        [(NSMutableArray *)self->_activeSymbolEffects addObject:v9];
        [(_UIImageViewSymbolAnimationPresetManager *)self _activateActiveSymbolEffectEntry:v9];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_activateActiveSymbolEffectEntry:(id)a3
{
  v13 = a3;
  v4 = [v13 symbolEffect];
  if ([v4 ui_affectsSymbolScale])
  {
    v5 = [(_UIImageViewSymbolAnimationPresetManager *)self client];
    v6 = [v4 ui_rbSymbolScaleLevelForAddingEffect];
    v7 = [v13 options];
    v8 = [v13 animated];
    v9 = [v13 completionHandler];
    [v5 animationPresetManager:self didSetScale:v6 usingEffect:v4 options:v7 animated:v8 completion:v9];
  }

  else
  {
    v10 = [v4 ui_affectsSymbolHiddenness];
    v5 = [(_UIImageViewSymbolAnimationPresetManager *)self client];
    if (v10)
    {
      v11 = [v4 ui_rbSymbolHiddennessForAddingEffect];
      v7 = [v13 options];
      v12 = [v13 animated];
      v9 = [v13 completionHandler];
      [v5 animationPresetManager:self didSetHiddenness:v11 usingEffect:v4 options:v7 animated:v12 completion:v9];
    }

    else
    {
      v7 = [v13 options];
      v9 = [v13 completionHandler];
      [v5 animationPresetManager:self addEffect:v4 options:v7 completion:v9];
    }
  }
}

- (void)activeSymbolEffectDidComplete:(id)a3
{
  v4 = a3;
  activeSymbolEffects = self->_activeSymbolEffects;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74___UIImageViewSymbolAnimationPresetManager_activeSymbolEffectDidComplete___block_invoke;
  v11[3] = &unk_1E7122C90;
  v6 = v4;
  v12 = v6;
  v7 = [(NSMutableArray *)activeSymbolEffects indexOfObjectPassingTest:v11];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    v9 = [(NSMutableArray *)self->_activeSymbolEffects objectAtIndexedSubscript:v7];
    v10 = [v9 symbolEffect];

    if (([v10 ui_affectsSymbolScale] & 1) == 0 && (objc_msgSend(v10, "ui_affectsSymbolHiddenness") & 1) == 0)
    {
      [(NSMutableArray *)self->_activeSymbolEffects removeObjectAtIndex:v8];
    }
  }
}

- (BOOL)_removeSymbolEffectsOfType:(id)a3 options:(id)a4 animated:(BOOL)a5 completion:(id)a6 forAddingNewEffect:(BOOL)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __118___UIImageViewSymbolAnimationPresetManager__removeSymbolEffectsOfType_options_animated_completion_forAddingNewEffect___block_invoke;
  aBlock[3] = &unk_1E7122CB8;
  aBlock[4] = self;
  v15 = v12;
  v29 = v15;
  v30 = a7;
  v16 = _Block_copy(aBlock);
  v17 = [(NSMutableArray *)self->_pendingSymbolEffects indexOfObjectPassingTest:v16];
  if (v17 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = v17;
    v19 = [(NSMutableArray *)self->_pendingSymbolEffects objectAtIndexedSubscript:v17];
    [(NSMutableArray *)self->_pendingSymbolEffects removeObjectAtIndex:v18];
    if (v19)
    {
      v20 = 0;
LABEL_7:
      v23 = [v19 symbolEffect];
      v24 = v23;
      if (v20 && !a7 && (([v23 ui_affectsSymbolScale] & 1) != 0 || objc_msgSend(v24, "ui_affectsSymbolHiddenness")))
      {
        if ([v24 ui_affectsSymbolScale])
        {
          v25 = [(_UIImageViewSymbolAnimationPresetManager *)self client];
          [v25 animationPresetManager:self didSetScale:0 usingEffect:v24 options:v13 animated:v9 completion:v14];
        }

        else
        {
          if (![v24 ui_affectsSymbolHiddenness])
          {
            goto LABEL_16;
          }

          v25 = [(_UIImageViewSymbolAnimationPresetManager *)self client];
          [v25 animationPresetManager:self didSetHiddenness:0 usingEffect:v24 options:v13 animated:v9 completion:v14];
        }
      }

      else
      {
        v25 = [(_UIImageViewSymbolAnimationPresetManager *)self client];
        [v25 animationPresetManager:self removeEffect:v24 wasActive:v20 options:v13 animated:v9 completion:v14];
      }

LABEL_16:
      v26 = 1;
      goto LABEL_17;
    }
  }

  v21 = [(NSMutableArray *)self->_activeSymbolEffects indexOfObjectPassingTest:v16];
  if (v21 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = v21;
    v19 = [(NSMutableArray *)self->_activeSymbolEffects objectAtIndexedSubscript:v21];
    [(NSMutableArray *)self->_activeSymbolEffects removeObjectAtIndex:v22];
    if (v19)
    {
      v20 = 1;
      goto LABEL_7;
    }
  }

  v26 = 0;
LABEL_17:

  return v26;
}

- (void)removeAllSymbolEffectsWithOptions:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(NSMutableArray *)self->_pendingSymbolEffects arrayByAddingObjectsFromArray:self->_activeSymbolEffects];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v13 + 1) + 8 * v11) symbolEffect];
        [(_UIImageViewSymbolAnimationPresetManager *)self removeSymbolEffectsOfType:v12 options:v6 animated:v4 completion:0];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (BOOL)_symbolEffect:(id)a3 collidesWithSymbolEffect:(id)a4 forAddingEffect:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  if ([v7 ui_affectsSymbolHiddenness] && v5)
  {
    v9 = [v8 ui_affectsSymbolHiddenness];
  }

  else
  {
    v10 = [v7 _effectType];
    v9 = v10 == [v8 _effectType];
  }

  return v9;
}

- (void)addPendingSymbolContentTransition:(id)a3 fromSymbolImage:(id)a4 toSymbolImage:(id)a5 options:(id)a6 completion:(id)a7
{
  v8 = [_UIImageViewPendingSymbolContentTransition transitionWithTransition:a3 sourceSymbolImage:a4 targetSymbolImage:a5 options:a6 completion:a7];
  pendingSymbolContentTransition = self->_pendingSymbolContentTransition;
  self->_pendingSymbolContentTransition = v8;
}

- (id)pendingSymbolContentTransitionForSettingSymbolImage:(id)a3
{
  v4 = a3;
  v5 = [(_UIImageViewPendingSymbolContentTransition *)self->_pendingSymbolContentTransition targetSymbolImage];
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v7 == v6)
  {

    goto LABEL_7;
  }

  if (v6 && v7)
  {
    v9 = [v6 isEqual:v7];

    if (!v9)
    {
      goto LABEL_9;
    }

LABEL_7:
    v10 = self->_pendingSymbolContentTransition;
    goto LABEL_10;
  }

LABEL_9:
  v10 = 0;
LABEL_10:

  return v10;
}

- (void)activatePendingSymbolContentTransition:(id)a3
{
  pendingSymbolContentTransition = self->_pendingSymbolContentTransition;
  if (pendingSymbolContentTransition == a3)
  {
    self->_pendingSymbolContentTransition = 0;
    v5 = a3;

    v6 = [v5 symbolContentTransition];

    activeSymbolContentTransition = self->_activeSymbolContentTransition;
    self->_activeSymbolContentTransition = v6;
  }
}

- (void)activeSymbolContentTransitionDidComplete:(id)a3
{
  v4 = a3;
  activeSymbolContentTransition = self->_activeSymbolContentTransition;
  v6 = v4;
  v8 = v6;
  if (activeSymbolContentTransition == v6)
  {

    goto LABEL_7;
  }

  if (!v6 || !activeSymbolContentTransition)
  {

    goto LABEL_9;
  }

  v7 = [(NSSymbolContentTransition *)activeSymbolContentTransition isEqual:v6];

  if (v7)
  {
LABEL_7:
    activeSymbolContentTransition = self->_activeSymbolContentTransition;
    self->_activeSymbolContentTransition = 0;
LABEL_9:
  }
}

- (_UIImageViewSymbolAnimationPresetClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

@end