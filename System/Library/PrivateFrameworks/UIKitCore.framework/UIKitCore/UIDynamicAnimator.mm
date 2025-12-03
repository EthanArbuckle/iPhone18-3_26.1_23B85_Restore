@interface UIDynamicAnimator
+ (id)_allDynamicAnimators;
+ (void)_clearReferenceViewFromAnimators:(id)animators;
+ (void)_referenceViewSizeChanged:(id)changed;
+ (void)_registerAnimator:(id)animator;
+ (void)_unregisterAnimator:(id)animator;
+ (void)initialize;
- (BOOL)_animatorStep:(double)step;
- (BOOL)_isWorldActive;
- (BOOL)isSettling;
- (CGRect)_referenceSystemBounds;
- (NSArray)itemsInRect:(CGRect)rect;
- (UICollectionViewLayoutAttributes)layoutAttributesForCellAtIndexPath:(NSIndexPath *)indexPath;
- (UICollectionViewLayoutAttributes)layoutAttributesForDecorationViewOfKind:(NSString *)decorationViewKind atIndexPath:(NSIndexPath *)indexPath;
- (UICollectionViewLayoutAttributes)layoutAttributesForSupplementaryViewOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath;
- (UIDynamicAnimator)initWithReferenceView:(UIView *)view;
- (UIView)referenceView;
- (double)settlingAngularVelocityThreshold;
- (double)settlingDuration;
- (double)settlingLinearVelocityThreshold;
- (id)_bodyForItem:(id)item;
- (id)_delegate;
- (id)_keyForItem:(id)item;
- (id)_newBodyForItem:(id)item inItemGroup:(id)group;
- (id)_referenceSystem;
- (id)_registerBodyForItem:(id)item;
- (id)delegate;
- (id)description;
- (id)recursiveDescription;
- (int)_registerCollisionGroup;
- (void)_activateUIUpdateSequenceItem;
- (void)_checkBehavior:(id)behavior;
- (void)_clearReferenceView;
- (void)_configureUpdateRequestFrameRateForSettling:(BOOL)settling;
- (void)_deactivateUIUpdateSequenceItem;
- (void)_defaultMapper:(id)mapper position:(CGPoint)position angle:(double)angle itemType:(unint64_t)type;
- (void)_invalidateCollectionViewLayout:(id)layout;
- (void)_performAnimationTickForTimestamp:(double)timestamp;
- (void)_postSolverStep;
- (void)_preSolverStep;
- (void)_reevaluateImplicitBounds;
- (void)_registerBehavior:(id)behavior;
- (void)_registerFieldCategoryForFieldBehavior:(id)behavior;
- (void)_reportBeginContacts;
- (void)_reportEndContacts;
- (void)_runBlockPostSolverIfNeeded:(id)needed;
- (void)_setAction:(id)action;
- (void)_setReferenceSystem:(id)system;
- (void)_setRunning:(BOOL)running;
- (void)_setupWorld;
- (void)_start;
- (void)_stop;
- (void)_tickle;
- (void)_traverseBehaviorHierarchy:(id)hierarchy;
- (void)_unregisterBehavior:(id)behavior;
- (void)_unregisterBodyForItem:(id)item action:(id)action;
- (void)_unregisterFieldCategoryForFieldBehavior:(id)behavior;
- (void)_updateRequestedFrameRateIfNeeded;
- (void)addBehavior:(UIDynamicBehavior *)behavior;
- (void)dealloc;
- (void)didBeginContact:(id)contact;
- (void)didEndContact:(id)contact;
- (void)removeAllBehaviors;
- (void)removeBehavior:(UIDynamicBehavior *)behavior;
- (void)setDebugEnabled:(BOOL)enabled;
- (void)setDelegate:(id)delegate;
- (void)setSettlingAngularVelocityThreshold:(double)threshold;
- (void)setSettlingDuration:(double)duration;
- (void)setSettlingLinearVelocityThreshold:(double)threshold;
- (void)updateItemUsingCurrentState:(id)item;
@end

@implementation UIDynamicAnimator

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    _UISetupPhysicsKit();
  }
}

+ (void)_registerAnimator:(id)animator
{
  animatorCopy = animator;
  v4 = __dynamicAnimatorsTable;
  v7 = animatorCopy;
  if (!__dynamicAnimatorsTable)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v6 = __dynamicAnimatorsTable;
    __dynamicAnimatorsTable = weakObjectsHashTable;

    animatorCopy = v7;
    v4 = __dynamicAnimatorsTable;
  }

  [v4 addObject:animatorCopy];
}

+ (void)_unregisterAnimator:(id)animator
{
  [__dynamicAnimatorsTable removeObject:animator];
  if (![__dynamicAnimatorsTable count])
  {
    v3 = __dynamicAnimatorsTable;
    __dynamicAnimatorsTable = 0;
  }
}

- (void)_registerFieldCategoryForFieldBehavior:(id)behavior
{
  behaviorCopy = behavior;
  if (![(UIDynamicAnimator *)self _containsBehavior:?])
  {
    lastIndex = [(NSMutableIndexSet *)self->_availableFieldCategories lastIndex];
    if (lastIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      [MEMORY[0x1E695DF30] raise:@"Invalid Association" format:@"UIDynamicAnimator supports a maximum of 32 distinct fields"];
    }

    else
    {
      v5 = lastIndex;
      [(NSMutableIndexSet *)self->_availableFieldCategories removeIndex:lastIndex];
      v6 = (1 << v5);
      _field = [behaviorCopy _field];
      [_field setCategoryBitMask:v6];
    }
  }
}

- (void)_unregisterFieldCategoryForFieldBehavior:(id)behavior
{
  behaviorCopy = behavior;
  if ([(UIDynamicAnimator *)self _containsBehavior:?])
  {
    _field = [behaviorCopy _field];
    categoryBitMask = [_field categoryBitMask];

    [(NSMutableIndexSet *)self->_availableFieldCategories addIndex:log2(categoryBitMask)];
  }
}

- (UIDynamicAnimator)initWithReferenceView:(UIView *)view
{
  v4 = view;
  v39.receiver = self;
  v39.super_class = UIDynamicAnimator;
  v5 = [(UIDynamicAnimator *)&v39 init];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = v4;
    v7->_elapsedTime = 0.0;
    v7->_ticks = 0;
    objc_storeWeak(&v7->_referenceSystem, v8);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7->_referenceSystemType = 1;
      [(UIView *)v8 bounds];
      v7->_referenceSystemBounds.origin.x = v9;
      v7->_referenceSystemBounds.origin.y = v10;
      v7->_referenceSystemBounds.size.width = v11;
      v7->_referenceSystemBounds.size.height = v12;
      if (v8)
      {
        *(&v8->_viewFlags + 1) |= 0x4000000000uLL;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7->_referenceSystemType = 2;
        WeakRetained = objc_loadWeakRetained(&v7->_referenceSystem);
        [WeakRetained _setDynamicAnimator:v7];

        [(UIView *)v8 _dynamicReferenceBounds];
        v7->_referenceSystemBounds.origin.x = v14;
        v7->_referenceSystemBounds.origin.y = v15;
        v7->_referenceSystemBounds.size.width = v16;
        v7->_referenceSystemBounds.size.height = v17;
      }

      else
      {
        v7->_referenceSystemType = 0;
        v18 = objc_loadWeakRetained(&v7->_referenceSystem);

        if (v18)
        {
          v19 = objc_loadWeakRetained(&v7->_referenceSystem);
          [v19 bounds];
          v7->_referenceSystemBounds.origin.x = v20;
          v7->_referenceSystemBounds.origin.y = v21;
          v7->_referenceSystemBounds.size.width = v22;
          v7->_referenceSystemBounds.size.height = v23;
        }

        else
        {
          v24 = *(MEMORY[0x1E695F050] + 16);
          v7->_referenceSystemBounds.origin = *MEMORY[0x1E695F050];
          v7->_referenceSystemBounds.size = v24;
        }

        objc_storeWeak(&v7->_referenceSystem, 0);
      }
    }

    v25 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    registeredBehaviors = v7->_registeredBehaviors;
    v7->_registeredBehaviors = v25;

    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    topLevelBehaviors = v7->_topLevelBehaviors;
    v7->_topLevelBehaviors = v27;

    v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
    postSolverActions = v7->_postSolverActions;
    v7->_postSolverActions = v29;

    v31 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, 32}];
    availableFieldCategories = v7->_availableFieldCategories;
    v7->_availableFieldCategories = v31;

    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen scale];
    v7->_accuracy = v34;

    v7->_registeredCollisionGroups = 0;
    v7->_speed = 1.0;
    v7->_debugInterval = 1;
    v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
    bodies = v7->_bodies;
    v7->_bodies = v35;

    v7->_integralization = [UIApp _isSpringBoard];
    v7->_uiUpdateSequenceItem = 0;
    if ([MEMORY[0x1E69C4A58] instancesRespondToSelector:sel_settlingLinearVelocityThreshold])
    {
      v37 = 4;
    }

    else
    {
      v37 = 0;
    }

    *&v7->_stateFlags = *&v7->_stateFlags & 0xFB | v37;
    if (pthread_main_np() == 1)
    {
      [UIDynamicAnimator _registerAnimator:v7];
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___commonInitWithReferenceSystem_block_invoke;
      block[3] = &unk_1E70F3590;
      v41 = v7;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  return v6;
}

- (void)_activateUIUpdateSequenceItem
{
  if (_UIUpdateCycleEnabled())
  {
    if (!self->_uiUpdateSequenceItem)
    {
      *&self->_lastUpdateTime = _currentModelMediaTime;
      *&self->_updateRequest.minRate = 0;
      *(&self->_updateRequest.phase + 4) = 0;
      *&self->_updateRequest.maxRate = 0;
      HIDWORD(self->_updateRequest.load) = 0;
      self->_updateRequest.flags = 5;
      [(UIDynamicAnimator *)self _configureUpdateRequestFrameRateForSettling:0];
      _UIUpdateRequestRegistryAddRecord(&mainRegistry, &self->_updateRequest, 0x100035u);
      ticker = [(UIDynamicAnimator *)self ticker];
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __50__UIDynamicAnimator__activateUIUpdateSequenceItem__block_invoke;
      v5[3] = &unk_1E70F5B90;
      v6 = ticker;
      v4 = ticker;
      self->_uiUpdateSequenceItem = _UIUpdateSequenceInsertItem(_UIUpdateSequenceCADisplayLinksItemInternal, 1, "DynamicAnimator", 0, 0, v5);
    }
  }
}

void __50__UIDynamicAnimator__activateUIUpdateSequenceItem__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _uiUpdateSequenceTick:?];
  v2 = [*(a1 + 32) animator];
  [v2 _updateRequestedFrameRateIfNeeded];
}

- (void)_deactivateUIUpdateSequenceItem
{
  if (_UIUpdateCycleEnabled())
  {
    uiUpdateSequenceItem = self->_uiUpdateSequenceItem;
    if (uiUpdateSequenceItem)
    {
      v4 = *(uiUpdateSequenceItem + 6);
      if (v4)
      {
        *(uiUpdateSequenceItem + 6) = v4 | 2;
      }

      else
      {
        _removeItem(uiUpdateSequenceItem);
      }

      self->_uiUpdateSequenceItem = 0;

      _UIUpdateRequestRegistryRemoveRecord(&mainRegistry, &self->_updateRequest.flags, 0x100035u);
    }
  }
}

- (void)_updateRequestedFrameRateIfNeeded
{
  isSettling = [(UIDynamicAnimator *)self isSettling];
  if (self->_updateRequestIsConfiguredForSettling != isSettling)
  {
    [(UIDynamicAnimator *)self _configureUpdateRequestFrameRateForSettling:isSettling];

    _UIUpdateRequestRegistryMutableRequestChanged(&mainRegistry, &self->_updateRequest.flags);
  }
}

- (void)_configureUpdateRequestFrameRateForSettling:(BOOL)settling
{
  if (settling)
  {
    v3 = 30;
  }

  else
  {
    v3 = 80;
  }

  if (settling)
  {
    v4 = 60;
  }

  else
  {
    v4 = 120;
  }

  self->_updateRequest.minRate = v3;
  self->_updateRequest.preferredRate = v4;
  self->_updateRequest.maxRate = v4;
  self->_updateRequestIsConfiguredForSettling = settling;
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  objc_storeWeak(&self->_delegate, 0);
  [(UIDynamicAnimator *)self removeAllBehaviors];
  [UIDynamicAnimator _unregisterAnimator:self];
  if (_UIUpdateCycleEnabled())
  {
    [(UIDynamicAnimator *)self _deactivateUIUpdateSequenceItem];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_displaylink);
    [WeakRetained invalidate];
  }

  referenceSystemType = self->_referenceSystemType;
  if (referenceSystemType != 1)
  {
    if (referenceSystemType == 2)
    {
      v5 = objc_loadWeakRetained(&self->_referenceSystem);
      [v5 _setDynamicAnimator:0];
    }

    goto LABEL_22;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = __dynamicAnimatorsTable;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v7)
  {

LABEL_19:
    v14 = objc_loadWeakRetained(&self->_referenceSystem);
    if (v14)
    {
      v14[12] &= ~0x4000000000uLL;
    }

    goto LABEL_22;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v17;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(v6);
      }

      referenceView = [*(*(&v16 + 1) + 8 * i) referenceView];
      v13 = objc_loadWeakRetained(&self->_referenceSystem);

      if (referenceView == v13)
      {
        ++v9;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v8);

  if (!v9)
  {
    goto LABEL_19;
  }

LABEL_22:
  v15.receiver = self;
  v15.super_class = UIDynamicAnimator;
  [(UIDynamicAnimator *)&v15 dealloc];
}

+ (void)_referenceViewSizeChanged:(id)changed
{
  v16 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  if (__dynamicAnimatorsTable)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = __dynamicAnimatorsTable;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          referenceView = [v9 referenceView];

          if (referenceView == changedCopy)
          {
            [v9 _tickle];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

+ (void)_clearReferenceViewFromAnimators:(id)animators
{
  v16 = *MEMORY[0x1E69E9840];
  animatorsCopy = animators;
  if (__dynamicAnimatorsTable)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = __dynamicAnimatorsTable;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          referenceView = [v9 referenceView];

          if (referenceView == animatorsCopy)
          {
            [v9 _clearReferenceView];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

+ (id)_allDynamicAnimators
{
  v14 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = __dynamicAnimatorsTable;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [array addObject:{*(*(&v9 + 1) + 8 * i), v9}];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return array;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v13.receiver = self;
  v13.super_class = UIDynamicAnimator;
  v4 = [(UIDynamicAnimator *)&v13 description];
  v5 = [v3 stringWithString:v4];

  if (![(UIDynamicAnimator *)self isRunning])
  {
    [v5 appendString:@" Stopped"];
  }

  [(UIDynamicAnimator *)self elapsedTime];
  [v5 appendFormat:@" (%fs)", v6];
  _referenceSystem = [(UIDynamicAnimator *)self _referenceSystem];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  _referenceSystem2 = [(UIDynamicAnimator *)self _referenceSystem];
  v11 = NSStringFromCGRect(self->_referenceSystemBounds);
  [v5 appendFormat:@" in <%@: %p> %@", v9, _referenceSystem2, v11];

  return v5;
}

- (id)recursiveDescription
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = [(UIDynamicAnimator *)self description];
  [string appendString:v4];

  [string appendString:@"\n"];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__UIDynamicAnimator_recursiveDescription__block_invoke;
  aBlock[3] = &unk_1E7106A48;
  v5 = string;
  v10 = v5;
  v6 = _Block_copy(aBlock);
  [(UIDynamicAnimator *)self _traverseBehaviorHierarchy:v6];
  v7 = v5;

  return v5;
}

void __41__UIDynamicAnimator_recursiveDescription__block_invoke(uint64_t a1, void *a2, int a3)
{
  v8 = a2;
  if (a3 >= 1)
  {
    v5 = [MEMORY[0x1E696AD60] string];
    do
    {
      [v5 appendString:@" | "];
      --a3;
    }

    while (a3);
    [*(a1 + 32) appendString:v5];
  }

  v6 = *(a1 + 32);
  v7 = [v8 description];
  [v6 appendString:v7];

  [*(a1 + 32) appendString:@"\n"];
}

- (void)addBehavior:(UIDynamicBehavior *)behavior
{
  v4 = behavior;
  if (v4)
  {
    v6 = v4;
    v5 = [(NSMutableArray *)self->_topLevelBehaviors containsObject:v4];
    v4 = v6;
    if ((v5 & 1) == 0)
    {
      [(UIDynamicAnimator *)self _checkBehavior:v6];
      [(NSMutableArray *)self->_topLevelBehaviors addObject:v6];
      [(UIDynamicAnimator *)self _registerBehavior:v6];
      v4 = v6;
    }
  }
}

- (void)removeBehavior:(UIDynamicBehavior *)behavior
{
  v4 = behavior;
  if (v4)
  {
    v6 = v4;
    v5 = [(NSMutableArray *)self->_topLevelBehaviors containsObject:v4];
    v4 = v6;
    if (v5)
    {
      [(NSMutableArray *)self->_topLevelBehaviors removeObject:v6];
      [(UIDynamicAnimator *)self _unregisterBehavior:v6];
      v4 = v6;
    }
  }
}

- (void)_checkBehavior:(id)behavior
{
  behaviorCopy = behavior;
  if ([(NSMutableSet *)self->_registeredBehaviors containsObject:?])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Adding the same behavior twice to the same animator is not supported %@", behaviorCopy}];
  }
}

- (void)_registerBehavior:(id)behavior
{
  behaviorCopy = behavior;
  if (self->_isInWorldStepMethod)
  {
    if ([(NSMutableSet *)self->_behaviorsToRemove containsObject:behaviorCopy])
    {
      [(NSMutableSet *)self->_behaviorsToRemove removeObject:behaviorCopy];
    }

    if (([(NSMutableSet *)self->_registeredBehaviors containsObject:behaviorCopy]& 1) == 0)
    {
      behaviorsToAdd = self->_behaviorsToAdd;
      if (behaviorsToAdd)
      {
        [(NSMutableSet *)behaviorsToAdd addObject:behaviorCopy];
      }

      else
      {
        v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{behaviorCopy, 0}];
        v9 = self->_behaviorsToAdd;
        self->_behaviorsToAdd = v8;
      }
    }
  }

  else
  {
    if (!self->_world)
    {
      [(UIDynamicAnimator *)self _setupWorld];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIDynamicAnimator *)self _registerFieldCategoryForFieldBehavior:behaviorCopy];
    }

    [behaviorCopy _setContext:self];
    [behaviorCopy willMoveToAnimator:self];
    [behaviorCopy _associate];
    [(NSMutableSet *)self->_registeredBehaviors addObject:behaviorCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIDynamicAnimator *)self _shouldReevaluateLocalBehaviors];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v14 = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __39__UIDynamicAnimator__registerBehavior___block_invoke;
      aBlock[3] = &unk_1E7106A70;
      aBlock[4] = &v11;
      v6 = _Block_copy(aBlock);
      [(UIDynamicAnimator *)self _traverseBehaviorHierarchy:v6];
      if (v12[6] >= 2)
      {
        NSLog(&cfstr_MultipleGravit.isa);
      }

      _Block_object_dispose(&v11, 8);
    }

    if (self->_registeredCollisionGroups >= 1)
    {
      contactDelegate = [(PKExtendedPhysicsWorld *)self->_world contactDelegate];

      if (!contactDelegate)
      {
        [(PKExtendedPhysicsWorld *)self->_world setContactDelegate:self];
      }
    }

    [(UIDynamicAnimator *)self _tickle];
  }
}

void __39__UIDynamicAnimator__registerBehavior___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

- (void)_unregisterBehavior:(id)behavior
{
  behaviorCopy = behavior;
  v5 = behaviorCopy;
  if (behaviorCopy)
  {
    v10 = behaviorCopy;
    if (!self->_isInWorldStepMethod)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(UIDynamicAnimator *)self _unregisterFieldCategoryForFieldBehavior:v10];
      }

      [v10 _dissociate];
      [v10 _setContext:0];
      [v10 willMoveToAnimator:0];
      [(NSMutableSet *)self->_registeredBehaviors removeObject:v10];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(UIDynamicAnimator *)self _shouldReevaluateLocalBehaviors];
      }

      if (!self->_registeredCollisionGroups)
      {
        [(PKExtendedPhysicsWorld *)self->_world setContactDelegate:0];
      }

      [(UIDynamicAnimator *)self _tickle];
      goto LABEL_15;
    }

    if ([(NSMutableSet *)self->_behaviorsToAdd containsObject:behaviorCopy])
    {
      [(NSMutableSet *)self->_behaviorsToAdd removeObject:v10];
    }

    v6 = [(NSMutableSet *)self->_registeredBehaviors containsObject:v10];
    v5 = v10;
    if (v6)
    {
      behaviorsToRemove = self->_behaviorsToRemove;
      if (behaviorsToRemove)
      {
        [(NSMutableSet *)behaviorsToRemove addObject:v10];
      }

      else
      {
        v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v10, 0}];
        v9 = self->_behaviorsToRemove;
        self->_behaviorsToRemove = v8;
      }

LABEL_15:
      v5 = v10;
    }
  }
}

- (void)didBeginContact:(id)contact
{
  contactCopy = contact;
  beginContacts = self->_beginContacts;
  v8 = contactCopy;
  if (!beginContacts)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_beginContacts;
    self->_beginContacts = v6;

    contactCopy = v8;
    beginContacts = self->_beginContacts;
  }

  [(NSMutableArray *)beginContacts addObject:contactCopy];
}

- (void)didEndContact:(id)contact
{
  contactCopy = contact;
  endContacts = self->_endContacts;
  v8 = contactCopy;
  if (!endContacts)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_endContacts;
    self->_endContacts = v6;

    contactCopy = v8;
    endContacts = self->_endContacts;
  }

  [(NSMutableArray *)endContacts addObject:contactCopy];
}

- (void)_reportBeginContacts
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__UIDynamicAnimator__reportBeginContacts__block_invoke;
  aBlock[3] = &unk_1E7106A48;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  [(UIDynamicAnimator *)self _traverseBehaviorHierarchy:v3];
  beginContacts = self->_beginContacts;
  self->_beginContacts = 0;
}

void __41__UIDynamicAnimator__reportBeginContacts__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = *(*(a1 + 32) + 136);
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          v10 = v3;
          v11 = [v10 collisionDelegate];

          if (v11)
          {
            [v10 _didBeginContact:v9];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

- (void)_reportEndContacts
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__UIDynamicAnimator__reportEndContacts__block_invoke;
  aBlock[3] = &unk_1E7106A48;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  [(UIDynamicAnimator *)self _traverseBehaviorHierarchy:v3];
  endContacts = self->_endContacts;
  self->_endContacts = 0;
}

void __39__UIDynamicAnimator__reportEndContacts__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = *(*(a1 + 32) + 144);
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          v10 = v3;
          v11 = [v10 collisionDelegate];

          if (v11)
          {
            [v10 _didEndContact:v9];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

- (void)_reevaluateImplicitBounds
{
  [(UIDynamicAnimator *)self _traverseBehaviorHierarchy:&__block_literal_global_55_1];

  [(UIDynamicAnimator *)self _tickle];
}

- (void)_traverseBehaviorHierarchy:(id)hierarchy
{
  v23 = *MEMORY[0x1E69E9840];
  hierarchyCopy = hierarchy;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v21 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__UIDynamicAnimator__traverseBehaviorHierarchy___block_invoke;
  aBlock[3] = &unk_1E7106AB8;
  v5 = hierarchyCopy;
  v16 = v5;
  v17 = &v18;
  v6 = _Block_copy(aBlock);
  v19[3] = v6;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  behaviors = [(UIDynamicAnimator *)self behaviors];
  v8 = [behaviors countByEnumeratingWithState:&v11 objects:v22 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(behaviors);
        }

        v6[2](v6, *(*(&v11 + 1) + 8 * v10++), 1);
      }

      while (v8 != v10);
      v8 = [behaviors countByEnumeratingWithState:&v11 objects:v22 count:16];
    }

    while (v8);
  }

  _Block_object_dispose(&v18, 8);
}

void __48__UIDynamicAnimator__traverseBehaviorHierarchy___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  (*(*(a1 + 32) + 16))();
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [v3 childBehaviors];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(*(a1 + 40) + 8) + 24) + 16))();
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeAllBehaviors
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_isInWorldStepMethod)
  {
    behaviorsToRemove = self->_behaviorsToRemove;
    if (behaviorsToRemove)
    {
      registeredBehaviors = self->_registeredBehaviors;

      [(NSMutableSet *)behaviorsToRemove unionSet:registeredBehaviors];
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:self->_registeredBehaviors];
      v13 = self->_behaviorsToRemove;
      self->_behaviorsToRemove = v12;
    }
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithSet:self->_registeredBehaviors];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          [v11 _dissociate];
          [v11 _setContext:0];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(UIDynamicAnimator *)self _unregisterFieldCategoryForFieldBehavior:v11];
          }

          [v11 willMoveToAnimator:0];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [(NSMutableArray *)self->_topLevelBehaviors removeAllObjects];
    [(NSMutableSet *)self->_registeredBehaviors removeAllObjects];
  }
}

- (int)_registerCollisionGroup
{
  v2 = self->_registeredCollisionGroups + 1;
  self->_registeredCollisionGroups = v2;
  return v2;
}

- (void)_defaultMapper:(id)mapper position:(CGPoint)position angle:(double)angle itemType:(unint64_t)type
{
  y = position.y;
  x = position.x;
  mapperCopy = mapper;
  if (type == 1 && self->_referenceSystemType == 1)
  {
    referenceView = [(UIDynamicAnimator *)self referenceView];
    superview = [mapperCopy superview];
    [referenceView convertPoint:superview toView:{x, y}];
    x = v14;
    y = v15;
  }

  integralization = self->_integralization;
  v17 = 1;
  if (!type)
  {
    v17 = 2;
  }

  if (!integralization)
  {
    integralization = v17;
  }

  switch(integralization)
  {
    case 4uLL:
      accuracy = self->_accuracy;
      if (accuracy == 1.0)
      {
        x = round(x);
      }

      else
      {
        v21 = floor(x);
        x = v21 + round((x - v21) * accuracy) / accuracy;
      }

      goto LABEL_23;
    case 3uLL:
      v19 = self->_accuracy;
      if (v19 != 1.0)
      {
LABEL_19:
        v23 = floor(y);
        y = v23 + round((y - v23) * v19) / v19;
        goto LABEL_23;
      }

      break;
    case 2uLL:
      [mapperCopy setCenter:{x, y}];
      angleCopy = angle;
      goto LABEL_27;
    default:
      v19 = self->_accuracy;
      if (v19 != 1.0)
      {
        v22 = floor(x);
        x = v22 + round((x - v22) * v19) / v19;
        goto LABEL_19;
      }

      x = round(x);
      break;
  }

  y = round(y);
LABEL_23:
  [mapperCopy center];
  if (v25 != x || v24 != y)
  {
    [mapperCopy setCenter:{x, y}];
  }

  angleCopy = round(angle * 5000.0) / 5000.0;
LABEL_27:
  CGAffineTransformMakeRotation(&v26, angleCopy);
  [mapperCopy setTransform:&v26];
}

- (void)_unregisterBodyForItem:(id)item action:(id)action
{
  itemCopy = item;
  actionCopy = action;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (self->_referenceSystemType != 2)
    {
      goto LABEL_8;
    }

    v8 = @"Can't use view as item (%@) in an animator with layout reference %@";
  }

  else
  {
    if (self->_referenceSystemType != 1)
    {
      goto LABEL_8;
    }

    v8 = @"Can't use layout attributes as item (%@) in an animator with view reference %@";
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{v8, itemCopy, self}];
LABEL_8:
  bodies = self->_bodies;
  v10 = [(UIDynamicAnimator *)self _keyForItem:itemCopy];
  v11 = [(NSMutableDictionary *)bodies objectForKey:v10];

  if (v11)
  {
    representedObject = [v11 representedObject];

    if (representedObject != itemCopy)
    {
      NSLog(&cfstr_BodyWithoutRep.isa, self, v11, itemCopy);
    }

    if ([v11 dissociate])
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __51__UIDynamicAnimator__unregisterBodyForItem_action___block_invoke;
      v13[3] = &unk_1E70F6228;
      v13[4] = self;
      v14 = v11;
      v15 = itemCopy;
      [(UIDynamicAnimator *)self _runBlockPostSolverIfNeeded:v13];
    }

    else if (actionCopy)
    {
      actionCopy[2](actionCopy, v11);
    }
  }
}

uint64_t __51__UIDynamicAnimator__unregisterBodyForItem_action___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _world];
  [v2 removeBody:*(a1 + 40)];

  v3 = *(a1 + 32);
  v4 = v3[10];
  v5 = [v3 _keyForItem:*(a1 + 48)];
  [v4 removeObjectForKey:v5];

  v6 = *(a1 + 32);

  return [v6 _tickle];
}

- (NSArray)itemsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  array = [MEMORY[0x1E695DF70] array];
  _world = [(UIDynamicAnimator *)self _world];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __33__UIDynamicAnimator_itemsInRect___block_invoke;
  v12[3] = &unk_1E7106AE0;
  v10 = array;
  v13 = v10;
  [_world enumerateBodiesInRect:v12 usingBlock:{x, y, width, height}];

  return v10;
}

void __33__UIDynamicAnimator_itemsInRect___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 representedObject];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

- (UICollectionViewLayoutAttributes)layoutAttributesForSupplementaryViewOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
  if (self->_referenceSystemType == 2)
  {
    v5 = [_UICollectionViewItemKey collectionItemKeyForSupplementaryViewOfKind:indexPath andIndexPath:?];
    v6 = [(NSMutableDictionary *)self->_bodies objectForKey:v5];
    representedObject = [v6 representedObject];
  }

  else
  {
    representedObject = 0;
  }

  return representedObject;
}

- (UICollectionViewLayoutAttributes)layoutAttributesForDecorationViewOfKind:(NSString *)decorationViewKind atIndexPath:(NSIndexPath *)indexPath
{
  if (self->_referenceSystemType == 2)
  {
    v5 = [_UICollectionViewItemKey collectionItemKeyForDecorationViewOfKind:indexPath andIndexPath:?];
    v6 = [(NSMutableDictionary *)self->_bodies objectForKey:v5];
    representedObject = [v6 representedObject];
  }

  else
  {
    representedObject = 0;
  }

  return representedObject;
}

- (UICollectionViewLayoutAttributes)layoutAttributesForCellAtIndexPath:(NSIndexPath *)indexPath
{
  if (self->_referenceSystemType == 2)
  {
    v4 = [_UICollectionViewItemKey collectionItemKeyForCellWithIndexPath:?];
    v5 = [(NSMutableDictionary *)self->_bodies objectForKey:v4];
    representedObject = [v5 representedObject];
  }

  else
  {
    representedObject = 0;
  }

  return representedObject;
}

- (void)updateItemUsingCurrentState:(id)item
{
  v4 = item;
  v5 = [(UIDynamicAnimator *)self _bodyForItem:v4];
  if (!v5)
  {
    goto LABEL_50;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

LABEL_10:
    [v4 center];
    v13 = v19;
    v15 = v20;
    if (!v4)
    {
      goto LABEL_5;
    }

LABEL_11:
    [v4 transform];
    v18 = v59;
    [v4 transform];
    v17 = __x;
    goto LABEL_12;
  }

  if (self->_referenceSystemType != 1)
  {
    v16 = 1;
    goto LABEL_10;
  }

  referenceView = [(UIDynamicAnimator *)self referenceView];
  [v4 center];
  v8 = v7;
  v10 = v9;
  superview = [v4 superview];
  [referenceView convertPoint:superview fromView:{v8, v10}];
  v13 = v12;
  v15 = v14;

  v16 = 1;
  if (v4)
  {
    goto LABEL_11;
  }

LABEL_5:
  v17 = 0.0;
  v18 = 0.0;
LABEL_12:
  v21 = atan2(v18, v17);
  integralization = self->_integralization;
  if (!integralization)
  {
    integralization = v16;
  }

  v57 = v21;
  switch(integralization)
  {
    case 4uLL:
      accuracy = self->_accuracy;
      [v5 position];
      if (accuracy == 1.0)
      {
        v24 = round(v32);
      }

      else
      {
        v33 = floor(v32);
        [v5 position];
        v24 = v33 + round(self->_accuracy * (v34 - v33)) / self->_accuracy;
      }

      [v5 position];
      v30 = v43;
      v44 = self->_accuracy;
      if (v44 == 1.0)
      {
        v42 = round(v13);
      }

      else
      {
        v45 = floor(v13);
        v42 = v45 + round((v13 - v45) * v44) / v44;
      }

      v41 = v15;
      break;
    case 3uLL:
      [v5 position];
      v24 = v23;
      v25 = self->_accuracy;
      [v5 position];
      if (v25 == 1.0)
      {
        v30 = round(v26);
        v29 = self->_accuracy;
      }

      else
      {
        v27 = floor(v26);
        [v5 position];
        v29 = self->_accuracy;
        v30 = v27 + round(v29 * (v28 - v27)) / v29;
      }

      if (v29 == 1.0)
      {
        v41 = round(v15);
      }

      else
      {
        v40 = floor(v15);
        v41 = v40 + round((v15 - v40) * v29) / v29;
      }

      v42 = v13;
      break;
    case 2uLL:
      [v5 setPosition:{v13, v15}];
      [v5 setRotation:v57];
LABEL_49:
      [v5 setResting:{0, *&v57}];
      [(UIDynamicAnimator *)self _tickle];
      goto LABEL_50;
    default:
      v35 = self->_accuracy;
      [v5 position];
      if (v35 == 1.0)
      {
        v24 = round(v36);
        v39 = self->_accuracy;
      }

      else
      {
        v37 = floor(v36);
        [v5 position];
        v39 = self->_accuracy;
        v24 = v37 + round(v39 * (v38 - v37)) / v39;
      }

      [v5 position];
      if (v39 == 1.0)
      {
        v30 = round(v46);
        v49 = self->_accuracy;
      }

      else
      {
        v47 = floor(v46);
        [v5 position];
        v49 = self->_accuracy;
        v30 = v47 + round(v49 * (v48 - v47)) / v49;
      }

      if (v49 == 1.0)
      {
        v42 = round(v13);
        v41 = round(v15);
      }

      else
      {
        v50 = floor(v13);
        v42 = v50 + round((v13 - v50) * v49) / v49;
        v51 = floor(v15);
        v41 = v51 + round((v15 - v51) * v49) / v49;
      }

      break;
  }

  [v5 rotation];
  v52.f64[1] = v57;
  v53 = vdupq_n_s64(0x40B3880000000000uLL);
  v54 = vdivq_f64(vrndaq_f64(vmulq_f64(v52, v53)), v53);
  v55 = vmovn_s64(vceqq_f64(v54, vdupq_laneq_s64(v54, 1))).u8[0];
  v56 = v30 != v41 || v24 != v42;
  if (v55)
  {
    [v5 setRotation:v57];
    if (!v56)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if (v56)
  {
LABEL_48:
    [v5 setPosition:{v13, v15}];
    goto LABEL_49;
  }

LABEL_50:
}

- (id)_newBodyForItem:(id)item inItemGroup:(id)group
{
  v64 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  groupCopy = group;
  if (_dynamicItemTypeForItem(itemCopy) == 1)
  {
    v8 = itemCopy;
    v9 = v8;
    v57 = itemCopy;
    if (self->_referenceSystemType == 1)
    {
      referenceView = [(UIDynamicAnimator *)self referenceView];
      v11 = [v9 isDescendantOfView:referenceView];

      if ((v11 & 1) == 0)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"View item (%@) should be a descendant of reference view in %@", v9, self}];
      }

      referenceView2 = [(UIDynamicAnimator *)self referenceView];
      [v9 center];
      v14 = v13;
      v16 = v15;
      superview = [v9 superview];
      [referenceView2 convertPoint:superview fromView:{v14, v16}];
      v19 = v18;
      v21 = v20;
    }

    else
    {
      [v8 center];
      v19 = v24;
      v21 = v25;
    }

    array = [MEMORY[0x1E695DF70] array];
    superview2 = [v9 superview];
    constraints = [superview2 constraints];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v29 = constraints;
    v30 = [v29 countByEnumeratingWithState:&v59 objects:v63 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v60;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v60 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v59 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v34)
            {
              v35 = [objc_msgSend(v34 "firstItem")];
              if (v35 != v9)
              {
                v36 = [objc_msgSend(v34 "secondItem")];
LABEL_17:
                v37 = v36;

                if (v37 != v9)
                {
                  continue;
                }

LABEL_21:
                [array addObject:v34];
                continue;
              }
            }

            else
            {
              v35 = 0;
              v36 = 0;
              if (v9)
              {
                goto LABEL_17;
              }
            }

            goto LABEL_21;
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v59 objects:v63 count:16];
      }

      while (v31);
    }

    if ([array count])
    {
      superview3 = [v9 superview];
      [superview3 removeConstraints:array];

      [v9 setTranslatesAutoresizingMaskIntoConstraints:1];
      [v9 _setHostsLayoutEngine:1];
    }

    itemCopy = v57;
  }

  else
  {
    [itemCopy center];
    v19 = v22;
    v21 = v23;
  }

  if (objc_opt_respondsToSelector())
  {
    collisionBoundsType = [itemCopy collisionBoundsType];
    if (groupCopy)
    {
LABEL_29:
      [groupCopy center];
      v41 = v19 - v40;
      v43 = v21 - v42;
      goto LABEL_32;
    }
  }

  else
  {
    collisionBoundsType = 0;
    if (groupCopy)
    {
      goto LABEL_29;
    }
  }

  v41 = *MEMORY[0x1E695EFF8];
  v43 = *(MEMORY[0x1E695EFF8] + 8);
LABEL_32:
  if (collisionBoundsType == 2)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"UIDynamicItem (%@) MUST implement -[UIDynamicItem boundingPath] when specifying a collision bounds of UIDynamicItemCollisionBoundsPath", itemCopy}];
    }

    collisionBoundingPath = [itemCopy collisionBoundingPath];
    v55 = +[PKExtendedPhysicsBody bodyWithPolygonFromPath:](PKExtendedPhysicsBody, "bodyWithPolygonFromPath:", [collisionBoundingPath CGPath]);

    if (!v55)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"UIDynamicItem (%@) provided an invalid bounding path", itemCopy}];
    }
  }

  else
  {
    if (collisionBoundsType == 1)
    {
      [itemCopy bounds];
      x = v65.origin.x;
      y = v65.origin.y;
      width = v65.size.width;
      height = v65.size.height;
      v51 = CGRectGetWidth(v65);
      v66.origin.x = x;
      v66.origin.y = y;
      v66.size.width = width;
      v66.size.height = height;
      v52 = CGRectGetHeight(v66);
      [itemCopy bounds];
      if (v51 == v52)
      {
        [PKExtendedPhysicsBody bodyWithCircleOfRadius:v53 * 0.5];
      }

      else
      {
        [PKExtendedPhysicsBody bodyWithEllipseInRect:?];
      }
      v46 = ;
    }

    else
    {
      if (collisionBoundsType)
      {
        v55 = 0;
        goto LABEL_46;
      }

      [itemCopy bounds];
      v46 = [PKExtendedPhysicsBody bodyWithRectangleOfSize:v44 center:v45, v41, v43];
    }

    v55 = v46;
  }

LABEL_46:
  [v55 setRepresentedObject:itemCopy];
  if (itemCopy)
  {
    [itemCopy transform];
  }

  else
  {
    memset(v58, 0, sizeof(v58));
  }

  _setupBodyWithCenterAndTransform(v55, v58, v19, v21);

  return v55;
}

- (id)_registerBodyForItem:(id)item
{
  v47 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v6 = _dynamicItemTypeForItem(itemCopy);
  referenceSystemType = self->_referenceSystemType;
  if (v6 == 2)
  {
    if (referenceSystemType != 1)
    {
      goto LABEL_7;
    }

    v8 = @"Can't use layout attributes as item (%@) in an animator with view reference %@";
  }

  else
  {
    if (referenceSystemType != 2)
    {
      goto LABEL_7;
    }

    v8 = @"Can't use view as item (%@) in an animator with layout reference %@";
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{v8, itemCopy, self}];
LABEL_7:
  bodies = self->_bodies;
  v10 = [(UIDynamicAnimator *)self _keyForItem:itemCopy];
  v11 = [(NSMutableDictionary *)bodies objectForKey:v10];

  if (v11)
  {
    representedObject = [v11 representedObject];

    if (representedObject != itemCopy)
    {
      NSLog(&cfstr_BodyWithoutRep.isa, self, v11, itemCopy);
    }

    [v11 associate];
    v13 = v11;
  }

  else
  {
    [itemCopy bounds];
    if (v14 == 0.0 || ([itemCopy bounds], v15 == 0.0))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [itemCopy bounds];
      v49.width = v33;
      v49.height = v34;
      v35 = NSStringFromCGSize(v49);
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIDynamicAnimator.m" lineNumber:959 description:{@"Invalid size %@ for item %@ in Dynamics", v35, itemCopy}];
    }

    if (v6 == 3)
    {
      v16 = itemCopy;
      v17 = objc_opt_new();
      items = [v16 items];
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v19 = [items countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v19)
      {
        v20 = *v43;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v43 != v20)
            {
              objc_enumerationMutation(items);
            }

            v22 = [(UIDynamicAnimator *)self _newBodyForItem:*(*(&v42 + 1) + 8 * i) inItemGroup:v16];
            [v17 addObject:v22];
          }

          v19 = [items countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v19);
      }

      v23 = [PKExtendedPhysicsBody bodyWithBodies:v17];
      [v23 setRepresentedObject:v16];
      [v16 center];
      v25 = v24;
      v27 = v26;
      if (v16)
      {
        [v16 transform];
      }

      else
      {
        v40 = 0u;
        v41 = 0u;
        *location = 0u;
      }

      _setupBodyWithCenterAndTransform(v23, location, v25, v27);
    }

    else
    {
      v23 = [(UIDynamicAnimator *)self _newBodyForItem:itemCopy inItemGroup:0];
    }

    [v23 associate];
    objc_initWeak(location, self);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __42__UIDynamicAnimator__registerBodyForItem___block_invoke;
    v36[3] = &unk_1E7106B08;
    objc_copyWeak(v38, location);
    v28 = itemCopy;
    v37 = v28;
    v38[1] = v6;
    [v23 setPostStepBlock:v36];
    [(PKExtendedPhysicsWorld *)self->_world addBody:v23];
    v29 = self->_bodies;
    v30 = [(UIDynamicAnimator *)self _keyForItem:v28];
    [(NSMutableDictionary *)v29 setObject:v23 forKey:v30];

    [(UIDynamicAnimator *)self _tickle];
    v13 = v23;

    objc_destroyWeak(v38);
    objc_destroyWeak(location);
  }

  return v13;
}

void __42__UIDynamicAnimator__registerBodyForItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  [v3 position];
  v6 = v5;
  v8 = v7;
  [v3 rotation];
  v10 = v9;

  [WeakRetained _defaultMapper:v4 position:*(a1 + 48) angle:v6 itemType:{v8, v10}];
}

- (id)_keyForItem:(id)item
{
  if (self->_referenceSystemType == 2)
  {
    [_UICollectionViewItemKey collectionItemKeyForLayoutAttributes:item];
  }

  else
  {
    [MEMORY[0x1E696B098] valueWithPointer:item];
  }
  v3 = ;

  return v3;
}

- (id)_bodyForItem:(id)item
{
  bodies = self->_bodies;
  itemCopy = item;
  v6 = [(UIDynamicAnimator *)self _keyForItem:itemCopy];
  v7 = [(NSMutableDictionary *)bodies objectForKey:v6];

  representedObject = [v7 representedObject];

  if (representedObject == itemCopy)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_setupWorld
{
  v3 = objc_alloc_init(PKExtendedPhysicsWorld);
  world = self->_world;
  self->_world = v3;

  speed = self->_speed;
  v6 = self->_world;

  [(PKExtendedPhysicsWorld *)v6 setSpeed:speed];
}

- (BOOL)_isWorldActive
{
  if (_UIUpdateCycleEnabled())
  {
    uiUpdateSequenceItem = self->_uiUpdateSequenceItem;
  }

  else
  {
    uiUpdateSequenceItem = objc_loadWeakRetained(&self->_displaylink);
  }

  return uiUpdateSequenceItem != 0;
}

- (void)_setRunning:(BOOL)running
{
  runningCopy = running;
  if ([(UIDynamicAnimator *)self isRunning]!= running)
  {
    if (runningCopy)
    {

      [(UIDynamicAnimator *)self _start];
    }

    else
    {

      [(UIDynamicAnimator *)self _stop];
    }
  }
}

- (void)_stop
{
  if ([(UIDynamicAnimator *)self _isWorldActive])
  {
    self->_lastUpdateTime = 0.0;
    if (_UIUpdateCycleEnabled())
    {
      [(UIDynamicAnimator *)self _deactivateUIUpdateSequenceItem];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_displaylink);
      [WeakRetained invalidate];

      objc_storeWeak(&self->_displaylink, 0);
    }

    self->_stopping = 1;
    [(UIDynamicsDebug *)self->_dynamicsDebug captureDebugInformation];
    [(UIDynamicsDebug *)self->_dynamicsDebug setNeedsDisplay];
    if (*&self->_stateFlags)
    {
      v4 = objc_loadWeakRetained(&self->_delegate);
      [v4 dynamicAnimatorDidPause:self];
    }

    self->_stopping = 0;
  }
}

- (void)_clearReferenceView
{
  if (self->_referenceSystemType == 1)
  {
    objc_storeWeak(&self->_referenceSystem, 0);

    [(UIDynamicAnimator *)self _stop];
  }
}

- (void)_tickle
{
  if (self->_stopping && __tickleTryCount <= 3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __28__UIDynamicAnimator__tickle__block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    ++__tickleTryCount;
  }

  else if (![(UIDynamicAnimator *)self _isWorldActive]&& [(NSMutableDictionary *)self->_bodies count])
  {

    [(UIDynamicAnimator *)self _start];
  }
}

uint64_t __28__UIDynamicAnimator__tickle__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _tickle];
  __tickleTryCount = 0;
  return result;
}

- (void)_start
{
  __tickleTryCount = 0;
  if (self->_referenceSystemType == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_referenceSystem);

    if (!WeakRetained)
    {
      return;
    }
  }

  if ([(UIDynamicAnimator *)self _isWorldActive]|| self->_disableDisplayLink)
  {
    return;
  }

  v4 = objc_alloc_init(UIDynamicAnimatorTicker);
  ticker = self->_ticker;
  self->_ticker = v4;

  ticker = [(UIDynamicAnimator *)self ticker];
  [ticker setAnimator:self];

  if (!_UIUpdateCycleEnabled())
  {
    self->_lastUpdateTime = CACurrentMediaTime();
    referenceSystemType = self->_referenceSystemType;
    if (referenceSystemType == 1)
    {
      v8 = objc_loadWeakRetained(&self->_referenceSystem);
      _screen = [v8 _screen];
      ticker2 = [(UIDynamicAnimator *)self ticker];
      v12 = [_screen displayLinkWithTarget:ticker2 selector:sel__displayLinkTick_];
    }

    else
    {
      if (referenceSystemType != 2)
      {
        goto LABEL_12;
      }

      v8 = objc_loadWeakRetained(&self->_referenceSystem);
      _screen = [v8 collectionView];
      ticker2 = [_screen _screen];
      ticker3 = [(UIDynamicAnimator *)self ticker];
      v12 = [ticker2 displayLinkWithTarget:ticker3 selector:sel__displayLinkTick_];
    }

    if (v12)
    {
LABEL_13:
      [v12 maximumRefreshRate];
      if (v15 != 0.0)
      {
        [v12 setPreferredFramesPerSecond:llround(1.0 / v15)];
      }

      currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
      [v12 addToRunLoop:currentRunLoop forMode:*MEMORY[0x1E695DA28]];

      objc_storeWeak(&self->_displaylink, v12);
      goto LABEL_16;
    }

LABEL_12:
    v13 = MEMORY[0x1E6979330];
    ticker4 = [(UIDynamicAnimator *)self ticker];
    v12 = [v13 displayLinkWithTarget:ticker4 selector:sel__displayLinkTick_];

    goto LABEL_13;
  }

  [(UIDynamicAnimator *)self _activateUIUpdateSequenceItem];
LABEL_16:
  if (self->_referenceSystemType == 1)
  {
    referenceView = [(UIDynamicAnimator *)self referenceView];
    window = [referenceView window];
    screen = [window screen];
    [screen scale];
    self->_accuracy = v20;
  }

  if (self->_accuracy == 0.0)
  {
    self->_accuracy = 1.0;
  }

  if ((*&self->_stateFlags & 2) != 0)
  {
    v21 = objc_loadWeakRetained(&self->_delegate);
    [v21 dynamicAnimatorWillResume:self];
  }
}

- (void)setDebugEnabled:(BOOL)enabled
{
  if (self->_debugEnabled != enabled)
  {
    self->_debugEnabled = enabled;
    if (enabled)
    {
      if (!self->_world)
      {
        [(UIDynamicAnimator *)self _setupWorld];
      }

      v4 = [[UIDynamicsDebug alloc] initWithAnimator:self];
      dynamicsDebug = self->_dynamicsDebug;
      self->_dynamicsDebug = v4;

      v6 = self->_dynamicsDebug;

      [(UIDynamicsDebug *)v6 setEnabled:1];
    }

    else
    {
      [(UIDynamicsDebug *)self->_dynamicsDebug setEnabled:?];
      v7 = self->_dynamicsDebug;
      self->_dynamicsDebug = 0;
    }
  }
}

- (void)_preSolverStep
{
  v44 = *MEMORY[0x1E69E9840];
  if (self->_needsLocalBehaviorReevaluation)
  {
    [(UIDynamicAnimator *)self _evaluateLocalBehaviors];
    self->_needsLocalBehaviorReevaluation = 0;
  }

  if (self->_registeredImplicitBounds < 1)
  {
    goto LABEL_16;
  }

  WeakRetained = objc_loadWeakRetained(&self->_referenceSystem);

  if (!WeakRetained)
  {
    goto LABEL_16;
  }

  referenceSystemType = self->_referenceSystemType;
  switch(referenceSystemType)
  {
    case 0uLL:
      v28 = objc_loadWeakRetained(&self->_referenceSystem);
      [v28 bounds];
      v47.origin.x = v29;
      v47.origin.y = v30;
      v47.size.width = v31;
      v47.size.height = v32;
      v33 = CGRectEqualToRect(self->_referenceSystemBounds, v47);

      if (v33)
      {
        break;
      }

      v11 = objc_loadWeakRetained(&self->_referenceSystem);
      [v11 bounds];
      goto LABEL_14;
    case 2uLL:
      v18 = objc_loadWeakRetained(&self->_referenceSystem);
      [v18 _dynamicReferenceBounds];
      v46.origin.x = v19;
      v46.origin.y = v20;
      v46.size.width = v21;
      v46.size.height = v22;
      v23 = CGRectEqualToRect(self->_referenceSystemBounds, v46);

      if (v23)
      {
        break;
      }

      v11 = objc_loadWeakRetained(&self->_referenceSystem);
      [v11 _dynamicReferenceBounds];
LABEL_14:
      self->_referenceSystemBounds.origin.x = v24;
      self->_referenceSystemBounds.origin.y = v25;
      self->_referenceSystemBounds.size.width = v26;
      self->_referenceSystemBounds.size.height = v27;
      goto LABEL_15;
    case 1uLL:
      v5 = objc_loadWeakRetained(&self->_referenceSystem);
      [v5 bounds];
      v45.origin.x = v6;
      v45.origin.y = v7;
      v45.size.width = v8;
      v45.size.height = v9;
      v10 = CGRectEqualToRect(self->_referenceSystemBounds, v45);

      if (!v10)
      {
        v11 = objc_loadWeakRetained(&self->_referenceSystem);
        layer = [v11 layer];
        presentationLayer = [layer presentationLayer];
        [presentationLayer bounds];
        self->_referenceSystemBounds.origin.x = v14;
        self->_referenceSystemBounds.origin.y = v15;
        self->_referenceSystemBounds.size.width = v16;
        self->_referenceSystemBounds.size.height = v17;

LABEL_15:
        [(UIDynamicAnimator *)self _reevaluateImplicitBounds];
      }

      break;
  }

LABEL_16:
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v34 = self->_registeredBehaviors;
  v35 = [(NSMutableSet *)v34 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v40;
    do
    {
      v38 = 0;
      do
      {
        if (*v40 != v37)
        {
          objc_enumerationMutation(v34);
        }

        [*(*(&v39 + 1) + 8 * v38++) _step];
      }

      while (v36 != v38);
      v36 = [(NSMutableSet *)v34 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v36);
  }

  [(UIDynamicsDebug *)self->_dynamicsDebug captureDebugInformation];
}

- (void)_runBlockPostSolverIfNeeded:(id)needed
{
  if (self->_isInWorldStepMethod)
  {
    postSolverActions = self->_postSolverActions;
    v6 = _Block_copy(needed);
    [(NSMutableArray *)postSolverActions addObject:v6];
  }

  else
  {
    v5 = *(needed + 2);

    v5(needed);
  }
}

- (void)_postSolverStep
{
  v63 = *MEMORY[0x1E69E9840];
  self->_isInWorldStepMethod = 1;
  [(UIDynamicAnimator *)self _reportBeginContacts];
  [(UIDynamicAnimator *)self _reportEndContacts];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v3 = self->_registeredBehaviors;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v55;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v55 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v54 + 1) + 8 * i);
        action = [v8 action];

        if (action)
        {
          action2 = [v8 action];
          action2[2]();
        }
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v54 objects:v62 count:16];
    }

    while (v5);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v11 = self->_topLevelBehaviors;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v50 objects:v61 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v51;
    while (2)
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v51 != v14)
        {
          objc_enumerationMutation(v11);
        }

        if (![*(*(&v50 + 1) + 8 * j) allowsAnimatorToStop])
        {
          v16 = 0;
          goto LABEL_20;
        }
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v50 objects:v61 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_20:

  self->_isInWorldStepMethod = 0;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v17 = self->_postSolverActions;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v46 objects:v60 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v47;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v47 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v46 + 1) + 8 * k);
        if (v22)
        {
          (*(v22 + 16))();
        }
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v46 objects:v60 count:16];
    }

    while (v19);
  }

  [(NSMutableArray *)self->_postSolverActions removeAllObjects];
  behaviorsToRemove = self->_behaviorsToRemove;
  if (behaviorsToRemove && [(NSMutableSet *)behaviorsToRemove count])
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v24 = self->_behaviorsToRemove;
    v25 = [(NSMutableSet *)v24 countByEnumeratingWithState:&v42 objects:v59 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v43;
      do
      {
        for (m = 0; m != v26; ++m)
        {
          if (*v43 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [(UIDynamicAnimator *)self _unregisterBehavior:*(*(&v42 + 1) + 8 * m)];
        }

        v26 = [(NSMutableSet *)v24 countByEnumeratingWithState:&v42 objects:v59 count:16];
      }

      while (v26);
    }

    v29 = self->_behaviorsToRemove;
    self->_behaviorsToRemove = 0;
  }

  behaviorsToAdd = self->_behaviorsToAdd;
  if (behaviorsToAdd && [(NSMutableSet *)behaviorsToAdd count])
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v31 = self->_behaviorsToAdd;
    v32 = [(NSMutableSet *)v31 countByEnumeratingWithState:&v38 objects:v58 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v39;
      do
      {
        for (n = 0; n != v33; ++n)
        {
          if (*v39 != v34)
          {
            objc_enumerationMutation(v31);
          }

          [(UIDynamicAnimator *)self _registerBehavior:*(*(&v38 + 1) + 8 * n), v38];
        }

        v33 = [(NSMutableSet *)v31 countByEnumeratingWithState:&v38 objects:v58 count:16];
      }

      while (v33);
    }

    v36 = self->_behaviorsToAdd;
    self->_behaviorsToAdd = 0;
  }

  if ((v16 & 1) != 0 || ![(NSMutableSet *)self->_registeredBehaviors count])
  {
    [(UIDynamicAnimator *)self _stop];
  }

  debugInterval = self->_debugInterval;
  if (!debugInterval || !(self->_ticks % debugInterval))
  {
    [(UIDynamicsDebug *)self->_dynamicsDebug setNeedsDisplay];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (!obj || WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    if (objc_opt_respondsToSelector())
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *&self->_stateFlags = *&self->_stateFlags & 0xFD | v6;
    v7 = objc_opt_respondsToSelector();
    v5 = obj;
    *&self->_stateFlags = *&self->_stateFlags & 0xFE | v7 & 1;
  }
}

- (void)_setAction:(id)action
{
  v4 = [action copy];
  action = self->_action;
  self->_action = v4;
}

- (BOOL)_animatorStep:(double)step
{
  ++self->_ticks;
  self->_lastInterval = step;
  self->_elapsedTime = self->_elapsedTime + step;
  [(UIDynamicAnimator *)self _preSolverStep];
  self->_isInWorldStepMethod = 1;
  v5 = [(PKExtendedPhysicsWorld *)self->_world stepWithTime:8 velocityIterations:3 positionIterations:step];
  self->_isInWorldStepMethod = 0;
  [(UIDynamicAnimator *)self _postSolverStep];
  action = self->_action;
  if (action)
  {
    action[2](action, self);
  }

  if (self->_referenceSystemType == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_referenceSystem);
    [(UIDynamicAnimator *)self _invalidateCollectionViewLayout:WeakRetained];
  }

  return v5;
}

- (void)_invalidateCollectionViewLayout:(id)layout
{
  layoutCopy = layout;
  _invalidationContextForRefreshingVisibleElementAttributes = [layoutCopy _invalidationContextForRefreshingVisibleElementAttributes];
  [layoutCopy invalidateLayoutWithContext:_invalidationContextForRefreshingVisibleElementAttributes];
}

- (void)_performAnimationTickForTimestamp:(double)timestamp
{
  v5 = timestamp - self->_lastUpdateTime;
  if (v5 > 0.5)
  {
    v5 = 0.0166666667;
  }

  self->_realElapsedTime = self->_realElapsedTime + v5;
  v6 = [(UIDynamicAnimator *)self _animatorStep:?];
  self->_lastUpdateTime = timestamp;
  if (!v6)
  {

    [(UIDynamicAnimator *)self _stop];
  }
}

- (BOOL)isSettling
{
  if (!self->_world)
  {
    [(UIDynamicAnimator *)self _setupWorld];
  }

  if ((*&self->_stateFlags & 4) == 0)
  {
    return 0;
  }

  world = self->_world;

  return [(PKExtendedPhysicsWorld *)world isSettling];
}

- (void)setSettlingLinearVelocityThreshold:(double)threshold
{
  if (!self->_world)
  {
    [(UIDynamicAnimator *)self _setupWorld];
  }

  if ((*&self->_stateFlags & 4) != 0)
  {
    world = self->_world;

    [(PKExtendedPhysicsWorld *)world setSettlingLinearVelocityThreshold:threshold];
  }
}

- (double)settlingLinearVelocityThreshold
{
  if (!self->_world)
  {
    [(UIDynamicAnimator *)self _setupWorld];
  }

  if ((*&self->_stateFlags & 4) == 0)
  {
    return 0.0;
  }

  world = self->_world;

  [(PKExtendedPhysicsWorld *)world settlingLinearVelocityThreshold];
  return result;
}

- (void)setSettlingAngularVelocityThreshold:(double)threshold
{
  if (!self->_world)
  {
    [(UIDynamicAnimator *)self _setupWorld];
  }

  if ((*&self->_stateFlags & 4) != 0)
  {
    world = self->_world;

    [(PKExtendedPhysicsWorld *)world setSettlingAngularVelocityThreshold:threshold];
  }
}

- (double)settlingAngularVelocityThreshold
{
  if (!self->_world)
  {
    [(UIDynamicAnimator *)self _setupWorld];
  }

  if ((*&self->_stateFlags & 4) == 0)
  {
    return 0.0;
  }

  world = self->_world;

  [(PKExtendedPhysicsWorld *)world settlingAngularVelocityThreshold];
  return result;
}

- (void)setSettlingDuration:(double)duration
{
  if (!self->_world)
  {
    [(UIDynamicAnimator *)self _setupWorld];
  }

  if ((*&self->_stateFlags & 4) != 0)
  {
    world = self->_world;

    [(PKExtendedPhysicsWorld *)world setSettlingDuration:duration];
  }
}

- (double)settlingDuration
{
  if (!self->_world)
  {
    [(UIDynamicAnimator *)self _setupWorld];
  }

  if ((*&self->_stateFlags & 4) == 0)
  {
    return 0.0;
  }

  world = self->_world;

  [(PKExtendedPhysicsWorld *)world settlingDuration];
  return result;
}

- (UIView)referenceView
{
  if (self->_referenceSystemType == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_referenceSystem);
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

- (void)_setReferenceSystem:(id)system
{
  systemCopy = system;
  if (systemCopy)
  {
    obj = systemCopy;
    WeakRetained = objc_loadWeakRetained(&self->_referenceSystem);

    systemCopy = obj;
    if (WeakRetained != obj)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = objc_storeWeak(&self->_referenceSystem, obj);
        self->_referenceSystemType = 1;
        v7 = v6;
        [obj bounds];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          self->_referenceSystemType = 0;
          v15 = *(MEMORY[0x1E695F050] + 16);
          self->_referenceSystemBounds.origin = *MEMORY[0x1E695F050];
          self->_referenceSystemBounds.size = v15;
          goto LABEL_9;
        }

        v12 = objc_loadWeakRetained(&self->_referenceSystem);
        [v12 _setDynamicAnimator:0];

        v13 = objc_storeWeak(&self->_referenceSystem, obj);
        self->_referenceSystemType = 2;
        v14 = v13;
        [obj _dynamicReferenceBounds];
      }

      self->_referenceSystemBounds.origin.x = v8;
      self->_referenceSystemBounds.origin.y = v9;
      self->_referenceSystemBounds.size.width = v10;
      self->_referenceSystemBounds.size.height = v11;

LABEL_9:
      systemCopy = obj;
    }
  }
}

- (CGRect)_referenceSystemBounds
{
  x = self->_referenceSystemBounds.origin.x;
  y = self->_referenceSystemBounds.origin.y;
  width = self->_referenceSystemBounds.size.width;
  height = self->_referenceSystemBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)_referenceSystem
{
  WeakRetained = objc_loadWeakRetained(&self->_referenceSystem);

  return WeakRetained;
}

@end