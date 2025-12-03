@interface PUReviewScreenBarsModel
- (CGPoint)controlCenterAlignmentPoint;
- (void)_updateAvailableControls;
- (void)invokeCallbackForBarButtonItemWithIdentifier:(int64_t)identifier;
- (void)performChanges:(id)changes;
- (void)setAccessoryView:(id)view;
- (void)setAvailableItemsByIdentifier:(id)identifier;
- (void)setControlCenterAlignmentPoint:(CGPoint)point forceLayout:(BOOL)layout;
- (void)setShouldBarsCounterrotate:(BOOL)counterrotate;
- (void)setShouldPlaceScrubberInScrubberBar:(BOOL)bar;
- (void)setTransitioningWithCamera:(BOOL)camera;
- (void)setUseVerticalControlLayout:(BOOL)layout;
@end

@implementation PUReviewScreenBarsModel

- (CGPoint)controlCenterAlignmentPoint
{
  x = self->_controlCenterAlignmentPoint.x;
  y = self->_controlCenterAlignmentPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setShouldBarsCounterrotate:(BOOL)counterrotate
{
  if (self->_shouldBarsCounterrotate != counterrotate)
  {
    self->_shouldBarsCounterrotate = counterrotate;
    [(PUReviewScreenBarsModel *)self signalChange:64];
  }
}

- (void)setUseVerticalControlLayout:(BOOL)layout
{
  if (self->_useVerticalControlLayout != layout)
  {
    self->_useVerticalControlLayout = layout;
    [(PUReviewScreenBarsModel *)self signalChange:16];
  }
}

- (void)setControlCenterAlignmentPoint:(CGPoint)point forceLayout:(BOOL)layout
{
  if (point.x != self->_controlCenterAlignmentPoint.x || point.y != self->_controlCenterAlignmentPoint.y)
  {
    self->_controlCenterAlignmentPoint = point;
    self->_lastControlAlignmentChangeForcedLayout = 1;
    [(PUReviewScreenBarsModel *)self signalChange:32];
  }
}

- (void)setTransitioningWithCamera:(BOOL)camera
{
  if (self->_transitioningWithCamera != camera)
  {
    self->_transitioningWithCamera = camera;
    [(PUReviewScreenBarsModel *)self signalChange:8];
  }
}

- (void)setShouldPlaceScrubberInScrubberBar:(BOOL)bar
{
  if (self->_shouldPlaceScrubberInScrubberBar != bar)
  {
    self->_shouldPlaceScrubberInScrubberBar = bar;
    [(PUReviewScreenBarsModel *)self signalChange:4];
  }
}

- (void)setAccessoryView:(id)view
{
  viewCopy = view;
  if (self->_accessoryView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_accessoryView, view);
    [(PUReviewScreenBarsModel *)self signalChange:4];
    viewCopy = v6;
  }
}

- (void)setAvailableItemsByIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (self->_availableItemsByIdentifier != identifierCopy)
  {
    v8 = identifierCopy;
    identifierCopy = [identifierCopy isEqual:?];
    v5 = v8;
    if ((identifierCopy & 1) == 0)
    {
      v6 = [v8 copy];
      availableItemsByIdentifier = self->_availableItemsByIdentifier;
      self->_availableItemsByIdentifier = v6;

      identifierCopy = [(PUReviewScreenBarsModel *)self _updateAvailableControls];
      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](identifierCopy, v5);
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PUReviewScreenBarsModel;
  [(PUReviewScreenBarsModel *)&v3 performChanges:changes];
}

- (void)_updateAvailableControls
{
  v23 = *MEMORY[0x1E69E9840];
  if (_updateAvailableControls_onceToken != -1)
  {
    dispatch_once(&_updateAvailableControls_onceToken, &__block_literal_global_73907);
  }

  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(_updateAvailableControls_controlsByIdentifier, "count")}];
  v17 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(_updateAvailableControls_controlsByIdentifier, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = _updateAvailableControls_controlsByIdentifier;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        availableItemsByIdentifier = [(PUReviewScreenBarsModel *)self availableItemsByIdentifier];
        v11 = [availableItemsByIdentifier objectForKeyedSubscript:v9];

        if (v11)
        {
          v12 = [_updateAvailableControls_controlsByIdentifier objectForKeyedSubscript:v9];
          [v3 addObject:v12];
          if ([v11 isEnabled])
          {
            [v17 addObject:v12];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  availableControls = [(PUReviewScreenBarsModel *)self availableControls];
  v14 = [v3 isEqual:availableControls];

  if ((v14 & 1) == 0)
  {
    [(PUReviewScreenBarsModel *)self _setAvailableControls:v3];
    [(PUReviewScreenBarsModel *)self signalChange:1];
  }

  enabledControls = [(PUReviewScreenBarsModel *)self enabledControls];
  v16 = [v17 isEqual:enabledControls];

  if ((v16 & 1) == 0)
  {
    [(PUReviewScreenBarsModel *)self _setEnabledControls:v17];
    [(PUReviewScreenBarsModel *)self signalChange:2];
  }
}

void __51__PUReviewScreenBarsModel__updateAvailableControls__block_invoke()
{
  v3[5] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F2B7EA50;
  v2[1] = &unk_1F2B7EA80;
  v3[0] = &unk_1F2B7EA68;
  v3[1] = &unk_1F2B7EA98;
  v2[2] = &unk_1F2B7EAB0;
  v2[3] = &unk_1F2B7EAE0;
  v3[2] = &unk_1F2B7EAC8;
  v3[3] = &unk_1F2B7EAF8;
  v2[4] = &unk_1F2B7EB10;
  v3[4] = &unk_1F2B7EB28;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:5];
  v1 = _updateAvailableControls_controlsByIdentifier;
  _updateAvailableControls_controlsByIdentifier = v0;
}

- (void)invokeCallbackForBarButtonItemWithIdentifier:(int64_t)identifier
{
  availableItemsByIdentifier = [(PUReviewScreenBarsModel *)self availableItemsByIdentifier];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:identifier];
  v16 = [availableItemsByIdentifier objectForKeyedSubscript:v7];

  action = [v16 action];
  target = [v16 target];
  v10 = target;
  if (target)
  {
    v11 = action == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = [target methodSignatureForSelector:action];
    if (!v12)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = NSStringFromSelector(action);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUReviewScreenBarsModel.m" lineNumber:33 description:{@"target %@ does not appear to respond to selector %@", v10, v15}];
    }

    v13 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v12];
    [v13 setSelector:action];
    [v13 setTarget:v10];
    [v13 setArgument:&v16 atIndex:2];
    [v13 invoke];
  }
}

@end