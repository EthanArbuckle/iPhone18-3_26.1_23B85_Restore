@interface _UIPressClickInteractionDriver
- (CGPoint)locationInCoordinateSpace:(id)space;
- (UIView)view;
- (_UIClickInteractionDriverDelegate)delegate;
- (_UIPressClickInteractionDriver)init;
- (unint64_t)driverStyle;
- (void)_addToView:(id)view;
- (void)_gestureRecognizerFailed:(id)failed;
- (void)_handlePressGesture:(id)gesture;
- (void)_removeFromView;
- (void)cancelInteraction;
- (void)setTriggers:(id)triggers;
- (void)setView:(id)view;
@end

@implementation _UIPressClickInteractionDriver

- (_UIPressClickInteractionDriver)init
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = _UIPressClickInteractionDriver;
  v2 = [(_UIPressClickInteractionDriver *)&v9 init];
  if (v2)
  {
    v8[0] = xmmword_18A679C68;
    v8[1] = *algn_18A679C78;
    v3 = [MEMORY[0x1E696B098] valueWithBytes:v8 objCType:"{_UIPressTrigger=qqdB}"];
    v10[0] = v3;
    v7[0] = xmmword_18A679C88;
    v7[1] = *algn_18A679C98;
    v4 = [MEMORY[0x1E696B098] valueWithBytes:v7 objCType:"{_UIPressTrigger=qqdB}"];
    v10[1] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    [(_UIPressClickInteractionDriver *)v2 setTriggers:v5];
  }

  return v2;
}

- (void)_removeFromView
{
  pressGR = [(_UIPressClickInteractionDriver *)self pressGR];
  view = [pressGR view];
  pressGR2 = [(_UIPressClickInteractionDriver *)self pressGR];
  [view removeGestureRecognizer:pressGR2];
}

- (void)setView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_view, obj);
    [(_UIPressClickInteractionDriver *)self _removeFromView];
    v6 = objc_loadWeakRetained(&self->_view);

    v5 = obj;
    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_view);
      [(_UIPressClickInteractionDriver *)self _addToView:v7];

      v5 = obj;
    }
  }
}

- (void)setTriggers:(id)triggers
{
  triggersCopy = triggers;
  if (self->_triggers != triggersCopy)
  {
    v8 = triggersCopy;
    objc_storeStrong(&self->_triggers, triggers);
    pressGR = [(_UIPressClickInteractionDriver *)self pressGR];
    triggers = [(_UIPressClickInteractionDriver *)self triggers];
    [pressGR setTriggers:triggers];

    triggersCopy = v8;
  }
}

- (CGPoint)locationInCoordinateSpace:(id)space
{
  spaceCopy = space;
  view = [(_UIPressClickInteractionDriver *)self view];
  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  _focusSystem = [view _focusSystem];
  focusedItem = [_focusSystem focusedItem];

  if (focusedItem)
  {
    v16 = _UIParentCoordinateSpaceForFocusItem(focusedItem);

    [focusedItem frame];
    v19 = v18 + v17 * 0.5;
    v22 = v21 + v20 * 0.5;
  }

  else
  {
    v19 = v7 + v11 * 0.5;
    v22 = v9 + v13 * 0.5;
    v16 = view;
  }

  [v16 convertPoint:spaceCopy toCoordinateSpace:{v19, v22}];
  v24 = v23;
  v26 = v25;

  v27 = v24;
  v28 = v26;
  result.y = v28;
  result.x = v27;
  return result;
}

- (void)cancelInteraction
{
  pressGR = [(_UIPressClickInteractionDriver *)self pressGR];
  [pressGR setEnabled:0];

  pressGR2 = [(_UIPressClickInteractionDriver *)self pressGR];
  [pressGR2 setEnabled:1];
}

- (unint64_t)driverStyle
{
  pressGR = [(_UIPressClickInteractionDriver *)self pressGR];
  activeTrigger = [pressGR activeTrigger];
  v4 = activeTrigger;
  if (activeTrigger)
  {
    [activeTrigger _UIPressTriggerValue];
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_addToView:(id)view
{
  viewCopy = view;
  pressGR = [(_UIPressClickInteractionDriver *)self pressGR];

  if (!pressGR)
  {
    v6 = [[_UISimplePressGestureRecognizer alloc] initWithTarget:self action:sel__handlePressGesture_];
    [(_UIPressClickInteractionDriver *)self setPressGR:v6];

    pressGR2 = [(_UIPressClickInteractionDriver *)self pressGR];
    [pressGR2 setName:@"com.apple.UIKit.keyPressClickDriverPrimary"];

    pressGR3 = [(_UIPressClickInteractionDriver *)self pressGR];
    [pressGR3 setDelegate:self];

    pressGR4 = [(_UIPressClickInteractionDriver *)self pressGR];
    triggers = [(_UIPressClickInteractionDriver *)self triggers];
    [pressGR4 setTriggers:triggers];
  }

  pressGR5 = [(_UIPressClickInteractionDriver *)self pressGR];
  [viewCopy addGestureRecognizer:pressGR5];
}

- (void)_handlePressGesture:(id)gesture
{
  if ([gesture state] == 1)
  {
    delegate = [(_UIPressClickInteractionDriver *)self delegate];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54___UIPressClickInteractionDriver__handlePressGesture___block_invoke;
    v5[3] = &unk_1E7105EF8;
    v5[4] = self;
    [delegate clickDriver:self shouldBegin:v5];
  }
}

- (void)_gestureRecognizerFailed:(id)failed
{
  failedCopy = failed;
  pressGR = [(_UIPressClickInteractionDriver *)self pressGR];

  if (pressGR == failedCopy)
  {
    delegate = [(_UIPressClickInteractionDriver *)self delegate];
    [delegate clickDriver:self didPerformEvent:3];
  }
}

- (_UIClickInteractionDriverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end