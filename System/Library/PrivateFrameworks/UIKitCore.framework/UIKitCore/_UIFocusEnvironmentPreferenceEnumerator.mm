@interface _UIFocusEnvironmentPreferenceEnumerator
- (BOOL)_shouldInferDefaultPreferenceForEnvironmentInContext:(id)context;
- (_UIFocusEnvironmentPreferenceEnumerator)initWithEnumerationMode:(int64_t)mode;
- (void)enumeratePreferencesForEnvironment:(id)environment usingBlock:(id)block;
@end

@implementation _UIFocusEnvironmentPreferenceEnumerator

- (_UIFocusEnvironmentPreferenceEnumerator)initWithEnumerationMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = _UIFocusEnvironmentPreferenceEnumerator;
  result = [(_UIFocusEnvironmentPreferenceEnumerator *)&v5 init];
  if (result)
  {
    result->_allowsInferringPreferences = 1;
    result->_enumerationMode = mode;
  }

  return result;
}

- (void)enumeratePreferencesForEnvironment:(id)environment usingBlock:(id)block
{
  environmentCopy = environment;
  blockCopy = block;
  v9 = blockCopy;
  if (environmentCopy)
  {
    if (blockCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusEnvironmentPreferenceEnumerator.m" lineNumber:527 description:{@"Invalid parameter not satisfying: %@", @"environment"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFocusEnvironmentPreferenceEnumerator.m" lineNumber:528 description:{@"Invalid parameter not satisfying: %@", @"block"}];

LABEL_3:
  v10 = [[_UIFocusEnvironmentPreferenceEnumerationContext alloc] initWithFocusEnvironment:environmentCopy enumerationMode:[(_UIFocusEnvironmentPreferenceEnumerator *)self enumerationMode]];
  [(_UIFocusEnvironmentPreferenceEnumerationContext *)v10 setDelegate:self];
  if (self->_debugLog)
  {
    _startLogging = [(_UIFocusEnvironmentPreferenceEnumerationContext *)v10 _startLogging];
    [(_UIDebugLogNode *)self->_debugLog addMessage:_startLogging];
  }

  v14 = 0;
  _enumeratePreferredFocusEnvironments(self, v10, v9, &v14);
  if (self->_debugLog)
  {
    [(_UIFocusEnvironmentPreferenceEnumerationContext *)v10 _stopLogging];
  }
}

- (BOOL)_shouldInferDefaultPreferenceForEnvironmentInContext:(id)context
{
  contextCopy = context;
  v5 = contextCopy;
  if (self->_allowsInferringPreferences && [contextCopy isInPreferredSubtree])
  {
    v6 = _Block_copy(self->_shouldInferPreferenceForEnvironmentHandler);
    v7 = v6;
    if (v6)
    {
      v8 = (*(v6 + 2))(v6, v5);
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end