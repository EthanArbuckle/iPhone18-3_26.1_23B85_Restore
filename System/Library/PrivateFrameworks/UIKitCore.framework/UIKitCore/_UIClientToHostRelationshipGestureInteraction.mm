@interface _UIClientToHostRelationshipGestureInteraction
+ (id)_hostGestureRecognizersForFailureRelationshipsWithIdentifier:(id)identifier;
+ (id)hostGestureRecognizerForFailureRelationshipsWithIdentifier:(id)identifier;
+ (void)dispatchGestureRecognizerStateChange:(int64_t)change toHostGestureWithIdentifier:(id)identifier;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (UIView)view;
- (_UIClientToHostRelationshipGestureInteraction)initWithHostIdentifier:(id)identifier;
- (void)_invalidatePointerPauseAssertion;
- (void)_wrappedRecognizerDidRecognize:(id)recognize;
- (void)addGestureRecognizer:(id)recognizer;
- (void)didMoveToView:(id)view;
- (void)removeGestureRecognizer:(id)recognizer;
- (void)willMoveToView:(id)view;
@end

@implementation _UIClientToHostRelationshipGestureInteraction

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

+ (id)_hostGestureRecognizersForFailureRelationshipsWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_MergedGlobals_1247 != -1)
  {
    dispatch_once(&_MergedGlobals_1247, &__block_literal_global_472);
  }

  weakObjectsHashTable = [qword_1ED49FEE0 objectForKey:identifierCopy];
  if (!weakObjectsHashTable)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [qword_1ED49FEE0 setObject:weakObjectsHashTable forKey:identifierCopy];
  }

  return weakObjectsHashTable;
}

+ (id)hostGestureRecognizerForFailureRelationshipsWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[_UIRelationshipGestureRecognizer alloc] initWithTarget:0 action:0];
  identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"clientRelationshipGestureRecognizer:%@", identifierCopy];
  [(UIGestureRecognizer *)v5 setName:identifierCopy];

  [(_UIRelationshipGestureRecognizer *)v5 setSucceedsOnTouchesEnded:1];
  [(_UIRelationshipGestureRecognizer *)v5 setFailsOnTouchesCancelled:0];
  v7 = [self _hostGestureRecognizersForFailureRelationshipsWithIdentifier:identifierCopy];

  [v7 addObject:v5];

  return v5;
}

+ (void)dispatchGestureRecognizerStateChange:(int64_t)change toHostGestureWithIdentifier:(id)identifier
{
  v14 = *MEMORY[0x1E69E9840];
  if (change == 1)
  {
    v4 = [self _hostGestureRecognizersForFailureRelationshipsWithIdentifier:identifier];
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

- (_UIClientToHostRelationshipGestureInteraction)initWithHostIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = _UIClientToHostRelationshipGestureInteraction;
  v6 = [(_UIClientToHostRelationshipGestureInteraction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hostIdentifier, identifier);
  }

  return v7;
}

- (void)addGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  gestureRecognizers = self->_gestureRecognizers;
  v9 = recognizerCopy;
  if (!gestureRecognizers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_gestureRecognizers;
    self->_gestureRecognizers = v6;

    recognizerCopy = v9;
    gestureRecognizers = self->_gestureRecognizers;
  }

  [(NSMutableArray *)gestureRecognizers addObject:recognizerCopy];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained addGestureRecognizer:v9];

  [v9 addTarget:self action:sel__wrappedRecognizerDidRecognize_];
  [v9 setDelegate:self];
}

- (void)removeGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  [recognizerCopy setDelegate:0];
  [recognizerCopy removeTarget:self action:sel__wrappedRecognizerDidRecognize_];
  [(NSMutableArray *)self->_gestureRecognizers removeObject:recognizerCopy];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained removeGestureRecognizer:recognizerCopy];
}

- (void)willMoveToView:(id)view
{
  v16 = *MEMORY[0x1E69E9840];
  if (!view)
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

- (void)didMoveToView:(id)view
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = objc_storeWeak(&self->_view, view);
  if (view)
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

- (void)_wrappedRecognizerDidRecognize:(id)recognize
{
  recognizeCopy = recognize;
  if ([recognizeCopy state] == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    _window = [WeakRetained _window];

    v6 = [_UIClientToHostGestureChangeAction alloc];
    hostIdentifier = [(_UIClientToHostRelationshipGestureInteraction *)self hostIdentifier];
    v8 = -[_UIClientToHostGestureChangeAction initWithHostGestureIdentifier:changeToState:](v6, "initWithHostGestureIdentifier:changeToState:", hostIdentifier, [recognizeCopy state]);

    rootViewController = [_window rootViewController];
    v10 = [rootViewController sendClientToHostAction:v8];

    if (v10)
    {
      [(_UIAssertion *)self->_pointerUpdatePauseAssertion _invalidate];
      v11 = +[_UIPointerArbiter sharedArbiter];
      obtainPointerUpdatePauseAssertion = [v11 obtainPointerUpdatePauseAssertion];
      pointerUpdatePauseAssertion = self->_pointerUpdatePauseAssertion;
      self->_pointerUpdatePauseAssertion = obtainPointerUpdatePauseAssertion;
    }
  }

  else if ([recognizeCopy state] == 3 || objc_msgSend(recognizeCopy, "state") == 5 || objc_msgSend(recognizeCopy, "state") == 4)
  {
    [(_UIClientToHostRelationshipGestureInteraction *)self performSelector:sel__invalidatePointerPauseAssertion withObject:0 afterDelay:0.5];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  if (-[NSMutableArray containsObject:](self->_gestureRecognizers, "containsObject:", beginCopy) && [beginCopy _requiresSystemGesturesToFail])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIClientToHostRelationshipGestureInteraction.m" lineNumber:177 description:{@"Wrapped recognizer for %@ must have requiresSystemGesturesToFail=NO, otherwise we'll be stuck waiting for the relationship recognizer to fail, causing a deadlock.", self}];
  }

  return 1;
}

@end