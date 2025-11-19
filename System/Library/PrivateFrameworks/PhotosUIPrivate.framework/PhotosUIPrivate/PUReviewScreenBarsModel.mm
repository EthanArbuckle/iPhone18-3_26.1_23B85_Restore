@interface PUReviewScreenBarsModel
- (CGPoint)controlCenterAlignmentPoint;
- (void)_updateAvailableControls;
- (void)invokeCallbackForBarButtonItemWithIdentifier:(int64_t)a3;
- (void)performChanges:(id)a3;
- (void)setAccessoryView:(id)a3;
- (void)setAvailableItemsByIdentifier:(id)a3;
- (void)setControlCenterAlignmentPoint:(CGPoint)a3 forceLayout:(BOOL)a4;
- (void)setShouldBarsCounterrotate:(BOOL)a3;
- (void)setShouldPlaceScrubberInScrubberBar:(BOOL)a3;
- (void)setTransitioningWithCamera:(BOOL)a3;
- (void)setUseVerticalControlLayout:(BOOL)a3;
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

- (void)setShouldBarsCounterrotate:(BOOL)a3
{
  if (self->_shouldBarsCounterrotate != a3)
  {
    self->_shouldBarsCounterrotate = a3;
    [(PUReviewScreenBarsModel *)self signalChange:64];
  }
}

- (void)setUseVerticalControlLayout:(BOOL)a3
{
  if (self->_useVerticalControlLayout != a3)
  {
    self->_useVerticalControlLayout = a3;
    [(PUReviewScreenBarsModel *)self signalChange:16];
  }
}

- (void)setControlCenterAlignmentPoint:(CGPoint)a3 forceLayout:(BOOL)a4
{
  if (a3.x != self->_controlCenterAlignmentPoint.x || a3.y != self->_controlCenterAlignmentPoint.y)
  {
    self->_controlCenterAlignmentPoint = a3;
    self->_lastControlAlignmentChangeForcedLayout = 1;
    [(PUReviewScreenBarsModel *)self signalChange:32];
  }
}

- (void)setTransitioningWithCamera:(BOOL)a3
{
  if (self->_transitioningWithCamera != a3)
  {
    self->_transitioningWithCamera = a3;
    [(PUReviewScreenBarsModel *)self signalChange:8];
  }
}

- (void)setShouldPlaceScrubberInScrubberBar:(BOOL)a3
{
  if (self->_shouldPlaceScrubberInScrubberBar != a3)
  {
    self->_shouldPlaceScrubberInScrubberBar = a3;
    [(PUReviewScreenBarsModel *)self signalChange:4];
  }
}

- (void)setAccessoryView:(id)a3
{
  v5 = a3;
  if (self->_accessoryView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_accessoryView, a3);
    [(PUReviewScreenBarsModel *)self signalChange:4];
    v5 = v6;
  }
}

- (void)setAvailableItemsByIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_availableItemsByIdentifier != v4)
  {
    v8 = v4;
    v4 = [v4 isEqual:?];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      v6 = [v8 copy];
      availableItemsByIdentifier = self->_availableItemsByIdentifier;
      self->_availableItemsByIdentifier = v6;

      v4 = [(PUReviewScreenBarsModel *)self _updateAvailableControls];
      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PUReviewScreenBarsModel;
  [(PUReviewScreenBarsModel *)&v3 performChanges:a3];
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
        v10 = [(PUReviewScreenBarsModel *)self availableItemsByIdentifier];
        v11 = [v10 objectForKeyedSubscript:v9];

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

  v13 = [(PUReviewScreenBarsModel *)self availableControls];
  v14 = [v3 isEqual:v13];

  if ((v14 & 1) == 0)
  {
    [(PUReviewScreenBarsModel *)self _setAvailableControls:v3];
    [(PUReviewScreenBarsModel *)self signalChange:1];
  }

  v15 = [(PUReviewScreenBarsModel *)self enabledControls];
  v16 = [v17 isEqual:v15];

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

- (void)invokeCallbackForBarButtonItemWithIdentifier:(int64_t)a3
{
  v6 = [(PUReviewScreenBarsModel *)self availableItemsByIdentifier];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v16 = [v6 objectForKeyedSubscript:v7];

  v8 = [v16 action];
  v9 = [v16 target];
  v10 = v9;
  if (v9)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = [v9 methodSignatureForSelector:v8];
    if (!v12)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = NSStringFromSelector(v8);
      [v14 handleFailureInMethod:a2 object:self file:@"PUReviewScreenBarsModel.m" lineNumber:33 description:{@"target %@ does not appear to respond to selector %@", v10, v15}];
    }

    v13 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v12];
    [v13 setSelector:v8];
    [v13 setTarget:v10];
    [v13 setArgument:&v16 atIndex:2];
    [v13 invoke];
  }
}

@end