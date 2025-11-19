@interface _UIClientToHostRelationshipGestureInteraction
+ (id)_hostGestureRecognizersForFailureRelationshipsWithIdentifier:(id)a3;
+ (id)hostGestureRecognizerForFailureRelationshipsWithIdentifier:(id)a3;
+ (void)dispatchGestureRecognizerStateChange:(int64_t)a3 toHostGestureWithIdentifier:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (UIView)view;
- (_UIClientToHostRelationshipGestureInteraction)initWithHostIdentifier:(id)a3;
- (void)_invalidatePointerPauseAssertion;
- (void)_wrappedRecognizerDidRecognize:(id)a3;
- (void)addGestureRecognizer:(id)a3;
- (void)didMoveToView:(id)a3;
- (void)removeGestureRecognizer:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation _UIClientToHostRelationshipGestureInteraction

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

+ (id)_hostGestureRecognizersForFailureRelationshipsWithIdentifier:(id)a3
{
  v3 = a3;
  if (_MergedGlobals_1247 != -1)
  {
    dispatch_once(&_MergedGlobals_1247, &__block_literal_global_472);
  }

  v4 = [qword_1ED49FEE0 objectForKey:v3];
  if (!v4)
  {
    v4 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [qword_1ED49FEE0 setObject:v4 forKey:v3];
  }

  return v4;
}

+ (id)hostGestureRecognizerForFailureRelationshipsWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[_UIRelationshipGestureRecognizer alloc] initWithTarget:0 action:0];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"clientRelationshipGestureRecognizer:%@", v4];
  [(UIGestureRecognizer *)v5 setName:v6];

  [(_UIRelationshipGestureRecognizer *)v5 setSucceedsOnTouchesEnded:1];
  [(_UIRelationshipGestureRecognizer *)v5 setFailsOnTouchesCancelled:0];
  v7 = [a1 _hostGestureRecognizersForFailureRelationshipsWithIdentifier:v4];

  [v7 addObject:v5];

  return v5;
}

+ (void)dispatchGestureRecognizerStateChange:(int64_t)a3 toHostGestureWithIdentifier:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3 == 1)
  {
    v4 = [a1 _hostGestureRecognizersForFailureRelationshipsWithIdentifier:a4];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
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

          [*(*(&v9 + 1) + 8 * v8++) _fail];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (_UIClientToHostRelationshipGestureInteraction)initWithHostIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UIClientToHostRelationshipGestureInteraction;
  v6 = [(_UIClientToHostRelationshipGestureInteraction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hostIdentifier, a3);
  }

  return v7;
}

- (void)addGestureRecognizer:(id)a3
{
  v4 = a3;
  gestureRecognizers = self->_gestureRecognizers;
  v9 = v4;
  if (!gestureRecognizers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_gestureRecognizers;
    self->_gestureRecognizers = v6;

    v4 = v9;
    gestureRecognizers = self->_gestureRecognizers;
  }

  [(NSMutableArray *)gestureRecognizers addObject:v4];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained addGestureRecognizer:v9];

  [v9 addTarget:self action:sel__wrappedRecognizerDidRecognize_];
  [v9 setDelegate:self];
}

- (void)removeGestureRecognizer:(id)a3
{
  v4 = a3;
  [v4 setDelegate:0];
  [v4 removeTarget:self action:sel__wrappedRecognizerDidRecognize_];
  [(NSMutableArray *)self->_gestureRecognizers removeObject:v4];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained removeGestureRecognizer:v4];
}

- (void)willMoveToView:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_gestureRecognizers;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * v8);
          WeakRetained = objc_loadWeakRetained(&self->_view);
          [WeakRetained removeGestureRecognizer:{v9, v11}];

          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    [(_UIClientToHostRelationshipGestureInteraction *)self _invalidatePointerPauseAssertion];
  }
}

- (void)didMoveToView:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = objc_storeWeak(&self->_view, a3);
  if (a3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = self->_gestureRecognizers;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          WeakRetained = objc_loadWeakRetained(&self->_view);
          [WeakRetained addGestureRecognizer:{v11, v13}];

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (void)_invalidatePointerPauseAssertion
{
  [(_UIAssertion *)self->_pointerUpdatePauseAssertion _invalidate];
  pointerUpdatePauseAssertion = self->_pointerUpdatePauseAssertion;
  self->_pointerUpdatePauseAssertion = 0;
}

- (void)_wrappedRecognizerDidRecognize:(id)a3
{
  v14 = a3;
  if ([v14 state] == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v5 = [WeakRetained _window];

    v6 = [_UIClientToHostGestureChangeAction alloc];
    v7 = [(_UIClientToHostRelationshipGestureInteraction *)self hostIdentifier];
    v8 = -[_UIClientToHostGestureChangeAction initWithHostGestureIdentifier:changeToState:](v6, "initWithHostGestureIdentifier:changeToState:", v7, [v14 state]);

    v9 = [v5 rootViewController];
    v10 = [v9 sendClientToHostAction:v8];

    if (v10)
    {
      [(_UIAssertion *)self->_pointerUpdatePauseAssertion _invalidate];
      v11 = +[_UIPointerArbiter sharedArbiter];
      v12 = [v11 obtainPointerUpdatePauseAssertion];
      pointerUpdatePauseAssertion = self->_pointerUpdatePauseAssertion;
      self->_pointerUpdatePauseAssertion = v12;
    }
  }

  else if ([v14 state] == 3 || objc_msgSend(v14, "state") == 5 || objc_msgSend(v14, "state") == 4)
  {
    [(_UIClientToHostRelationshipGestureInteraction *)self performSelector:sel__invalidatePointerPauseAssertion withObject:0 afterDelay:0.5];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v5 = a3;
  if (-[NSMutableArray containsObject:](self->_gestureRecognizers, "containsObject:", v5) && [v5 _requiresSystemGesturesToFail])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UIClientToHostRelationshipGestureInteraction.m" lineNumber:177 description:{@"Wrapped recognizer for %@ must have requiresSystemGesturesToFail=NO, otherwise we'll be stuck waiting for the relationship recognizer to fail, causing a deadlock.", self}];
  }

  return 1;
}

@end