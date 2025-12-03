@interface _UIImageViewSymbolAnimationPresetManager
+ (id)managerForClient:(id)client;
- (BOOL)_removeSymbolEffectsOfType:(id)type options:(id)options animated:(BOOL)animated completion:(id)completion forAddingNewEffect:(BOOL)effect;
- (BOOL)_symbolEffect:(id)effect collidesWithSymbolEffect:(id)symbolEffect forAddingEffect:(BOOL)addingEffect;
- (BOOL)hasPendingAnimationsForImage:(id)image;
- (_UIImageViewSymbolAnimationPresetClient)client;
- (_UIImageViewSymbolAnimationPresetManager)init;
- (id)pendingSymbolContentTransitionForSettingSymbolImage:(id)image;
- (void)_activateActiveSymbolEffectEntry:(id)entry;
- (void)activatePendingSymbolContentTransition:(id)transition;
- (void)activatePendingSymbolEffects;
- (void)activeSymbolContentTransitionDidComplete:(id)complete;
- (void)activeSymbolEffectDidComplete:(id)complete;
- (void)addActiveSymbolEffect:(id)effect options:(id)options animated:(BOOL)animated completion:(id)completion;
- (void)addPendingSymbolContentTransition:(id)transition fromSymbolImage:(id)image toSymbolImage:(id)symbolImage options:(id)options completion:(id)completion;
- (void)addPendingSymbolEffect:(id)effect options:(id)options animated:(BOOL)animated completion:(id)completion;
- (void)discardPendingSymbolContentTransitions;
- (void)removeAllSymbolEffectsWithOptions:(id)options animated:(BOOL)animated;
@end

@implementation _UIImageViewSymbolAnimationPresetManager

- (_UIImageViewSymbolAnimationPresetManager)init
{
  v8.receiver = self;
  v8.super_class = _UIImageViewSymbolAnimationPresetManager;
  v2 = [(_UIImageViewSymbolAnimationPresetManager *)&v8 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    activeSymbolEffects = v2->_activeSymbolEffects;
    v2->_activeSymbolEffects = array;

    array2 = [MEMORY[0x1E695DF70] array];
    pendingSymbolEffects = v2->_pendingSymbolEffects;
    v2->_pendingSymbolEffects = array2;
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
    client = [(_UIImageViewSymbolAnimationPresetManager *)self client];
    [client animationPresetManager:self didDiscardPendingContentTransition:v5];
  }
}

+ (id)managerForClient:(id)client
{
  clientCopy = client;
  v4 = objc_opt_new();
  [v4 setClient:clientCopy];

  return v4;
}

- (BOOL)hasPendingAnimationsForImage:(id)image
{
  imageCopy = image;
  if ([(NSMutableArray *)self->_pendingSymbolEffects count])
  {
    v5 = 1;
  }

  else
  {
    pendingSymbolContentTransition = self->_pendingSymbolContentTransition;
    if (pendingSymbolContentTransition)
    {
      targetSymbolImage = [(_UIImageViewPendingSymbolContentTransition *)pendingSymbolContentTransition targetSymbolImage];
      v8 = imageCopy;
      v9 = v8;
      if (targetSymbolImage == v8)
      {
        v5 = 1;
      }

      else
      {
        v5 = 0;
        if (v8 && targetSymbolImage)
        {
          v5 = [targetSymbolImage isEqual:v8];
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

- (void)addActiveSymbolEffect:(id)effect options:(id)options animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  optionsCopy = options;
  effectCopy = effect;
  [(_UIImageViewSymbolAnimationPresetManager *)self _removeSymbolEffectsOfType:effectCopy options:optionsCopy animated:animatedCopy completion:0 forAddingNewEffect:1];
  v13 = objc_opt_new();
  [v13 setSymbolEffect:effectCopy];

  [v13 setOptions:optionsCopy];
  [v13 setAnimated:animatedCopy];
  [v13 setCompletionHandler:completionCopy];

  [(NSMutableArray *)self->_activeSymbolEffects addObject:v13];
  [(_UIImageViewSymbolAnimationPresetManager *)self _activateActiveSymbolEffectEntry:v13];
}

- (void)addPendingSymbolEffect:(id)effect options:(id)options animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  optionsCopy = options;
  effectCopy = effect;
  [(_UIImageViewSymbolAnimationPresetManager *)self _removeSymbolEffectsOfType:effectCopy options:optionsCopy animated:animatedCopy completion:0 forAddingNewEffect:1];
  v13 = objc_opt_new();
  [v13 setSymbolEffect:effectCopy];

  [v13 setOptions:optionsCopy];
  [v13 setAnimated:animatedCopy];
  [v13 setCompletionHandler:completionCopy];

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

- (void)_activateActiveSymbolEffectEntry:(id)entry
{
  entryCopy = entry;
  symbolEffect = [entryCopy symbolEffect];
  if ([symbolEffect ui_affectsSymbolScale])
  {
    client = [(_UIImageViewSymbolAnimationPresetManager *)self client];
    ui_rbSymbolScaleLevelForAddingEffect = [symbolEffect ui_rbSymbolScaleLevelForAddingEffect];
    options = [entryCopy options];
    animated = [entryCopy animated];
    completionHandler = [entryCopy completionHandler];
    [client animationPresetManager:self didSetScale:ui_rbSymbolScaleLevelForAddingEffect usingEffect:symbolEffect options:options animated:animated completion:completionHandler];
  }

  else
  {
    ui_affectsSymbolHiddenness = [symbolEffect ui_affectsSymbolHiddenness];
    client = [(_UIImageViewSymbolAnimationPresetManager *)self client];
    if (ui_affectsSymbolHiddenness)
    {
      ui_rbSymbolHiddennessForAddingEffect = [symbolEffect ui_rbSymbolHiddennessForAddingEffect];
      options = [entryCopy options];
      animated2 = [entryCopy animated];
      completionHandler = [entryCopy completionHandler];
      [client animationPresetManager:self didSetHiddenness:ui_rbSymbolHiddennessForAddingEffect usingEffect:symbolEffect options:options animated:animated2 completion:completionHandler];
    }

    else
    {
      options = [entryCopy options];
      completionHandler = [entryCopy completionHandler];
      [client animationPresetManager:self addEffect:symbolEffect options:options completion:completionHandler];
    }
  }
}

- (void)activeSymbolEffectDidComplete:(id)complete
{
  completeCopy = complete;
  activeSymbolEffects = self->_activeSymbolEffects;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74___UIImageViewSymbolAnimationPresetManager_activeSymbolEffectDidComplete___block_invoke;
  v11[3] = &unk_1E7122C90;
  v6 = completeCopy;
  v12 = v6;
  v7 = [(NSMutableArray *)activeSymbolEffects indexOfObjectPassingTest:v11];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    v9 = [(NSMutableArray *)self->_activeSymbolEffects objectAtIndexedSubscript:v7];
    symbolEffect = [v9 symbolEffect];

    if (([symbolEffect ui_affectsSymbolScale] & 1) == 0 && (objc_msgSend(symbolEffect, "ui_affectsSymbolHiddenness") & 1) == 0)
    {
      [(NSMutableArray *)self->_activeSymbolEffects removeObjectAtIndex:v8];
    }
  }
}

- (BOOL)_removeSymbolEffectsOfType:(id)type options:(id)options animated:(BOOL)animated completion:(id)completion forAddingNewEffect:(BOOL)effect
{
  animatedCopy = animated;
  typeCopy = type;
  optionsCopy = options;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __118___UIImageViewSymbolAnimationPresetManager__removeSymbolEffectsOfType_options_animated_completion_forAddingNewEffect___block_invoke;
  aBlock[3] = &unk_1E7122CB8;
  aBlock[4] = self;
  v15 = typeCopy;
  v29 = v15;
  effectCopy = effect;
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
      symbolEffect = [v19 symbolEffect];
      v24 = symbolEffect;
      if (v20 && !effect && (([symbolEffect ui_affectsSymbolScale] & 1) != 0 || objc_msgSend(v24, "ui_affectsSymbolHiddenness")))
      {
        if ([v24 ui_affectsSymbolScale])
        {
          client = [(_UIImageViewSymbolAnimationPresetManager *)self client];
          [client animationPresetManager:self didSetScale:0 usingEffect:v24 options:optionsCopy animated:animatedCopy completion:completionCopy];
        }

        else
        {
          if (![v24 ui_affectsSymbolHiddenness])
          {
            goto LABEL_16;
          }

          client = [(_UIImageViewSymbolAnimationPresetManager *)self client];
          [client animationPresetManager:self didSetHiddenness:0 usingEffect:v24 options:optionsCopy animated:animatedCopy completion:completionCopy];
        }
      }

      else
      {
        client = [(_UIImageViewSymbolAnimationPresetManager *)self client];
        [client animationPresetManager:self removeEffect:v24 wasActive:v20 options:optionsCopy animated:animatedCopy completion:completionCopy];
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

- (void)removeAllSymbolEffectsWithOptions:(id)options animated:(BOOL)animated
{
  animatedCopy = animated;
  v18 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
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

        symbolEffect = [*(*(&v13 + 1) + 8 * v11) symbolEffect];
        [(_UIImageViewSymbolAnimationPresetManager *)self removeSymbolEffectsOfType:symbolEffect options:optionsCopy animated:animatedCopy completion:0];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (BOOL)_symbolEffect:(id)effect collidesWithSymbolEffect:(id)symbolEffect forAddingEffect:(BOOL)addingEffect
{
  addingEffectCopy = addingEffect;
  effectCopy = effect;
  symbolEffectCopy = symbolEffect;
  if ([effectCopy ui_affectsSymbolHiddenness] && addingEffectCopy)
  {
    ui_affectsSymbolHiddenness = [symbolEffectCopy ui_affectsSymbolHiddenness];
  }

  else
  {
    _effectType = [effectCopy _effectType];
    ui_affectsSymbolHiddenness = _effectType == [symbolEffectCopy _effectType];
  }

  return ui_affectsSymbolHiddenness;
}

- (void)addPendingSymbolContentTransition:(id)transition fromSymbolImage:(id)image toSymbolImage:(id)symbolImage options:(id)options completion:(id)completion
{
  v8 = [_UIImageViewPendingSymbolContentTransition transitionWithTransition:transition sourceSymbolImage:image targetSymbolImage:symbolImage options:options completion:completion];
  pendingSymbolContentTransition = self->_pendingSymbolContentTransition;
  self->_pendingSymbolContentTransition = v8;
}

- (id)pendingSymbolContentTransitionForSettingSymbolImage:(id)image
{
  imageCopy = image;
  targetSymbolImage = [(_UIImageViewPendingSymbolContentTransition *)self->_pendingSymbolContentTransition targetSymbolImage];
  v6 = imageCopy;
  v7 = targetSymbolImage;
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

- (void)activatePendingSymbolContentTransition:(id)transition
{
  pendingSymbolContentTransition = self->_pendingSymbolContentTransition;
  if (pendingSymbolContentTransition == transition)
  {
    self->_pendingSymbolContentTransition = 0;
    transitionCopy = transition;

    symbolContentTransition = [transitionCopy symbolContentTransition];

    activeSymbolContentTransition = self->_activeSymbolContentTransition;
    self->_activeSymbolContentTransition = symbolContentTransition;
  }
}

- (void)activeSymbolContentTransitionDidComplete:(id)complete
{
  completeCopy = complete;
  activeSymbolContentTransition = self->_activeSymbolContentTransition;
  v6 = completeCopy;
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