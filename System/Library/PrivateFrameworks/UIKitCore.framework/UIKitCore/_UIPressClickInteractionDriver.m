@interface _UIPressClickInteractionDriver
- (CGPoint)locationInCoordinateSpace:(id)a3;
- (UIView)view;
- (_UIClickInteractionDriverDelegate)delegate;
- (_UIPressClickInteractionDriver)init;
- (unint64_t)driverStyle;
- (void)_addToView:(id)a3;
- (void)_gestureRecognizerFailed:(id)a3;
- (void)_handlePressGesture:(id)a3;
- (void)_removeFromView;
- (void)cancelInteraction;
- (void)setTriggers:(id)a3;
- (void)setView:(id)a3;
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
  v5 = [(_UIPressClickInteractionDriver *)self pressGR];
  v3 = [v5 view];
  v4 = [(_UIPressClickInteractionDriver *)self pressGR];
  [v3 removeGestureRecognizer:v4];
}

- (void)setView:(id)a3
{
  obj = a3;
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

- (void)setTriggers:(id)a3
{
  v5 = a3;
  if (self->_triggers != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_triggers, a3);
    v6 = [(_UIPressClickInteractionDriver *)self pressGR];
    v7 = [(_UIPressClickInteractionDriver *)self triggers];
    [v6 setTriggers:v7];

    v5 = v8;
  }
}

- (CGPoint)locationInCoordinateSpace:(id)a3
{
  v4 = a3;
  v5 = [(_UIPressClickInteractionDriver *)self view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v5 _focusSystem];
  v15 = [v14 focusedItem];

  if (v15)
  {
    v16 = _UIParentCoordinateSpaceForFocusItem(v15);

    [v15 frame];
    v19 = v18 + v17 * 0.5;
    v22 = v21 + v20 * 0.5;
  }

  else
  {
    v19 = v7 + v11 * 0.5;
    v22 = v9 + v13 * 0.5;
    v16 = v5;
  }

  [v16 convertPoint:v4 toCoordinateSpace:{v19, v22}];
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
  v3 = [(_UIPressClickInteractionDriver *)self pressGR];
  [v3 setEnabled:0];

  v4 = [(_UIPressClickInteractionDriver *)self pressGR];
  [v4 setEnabled:1];
}

- (unint64_t)driverStyle
{
  v2 = [(_UIPressClickInteractionDriver *)self pressGR];
  v3 = [v2 activeTrigger];
  v4 = v3;
  if (v3)
  {
    [v3 _UIPressTriggerValue];
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_addToView:(id)a3
{
  v4 = a3;
  v5 = [(_UIPressClickInteractionDriver *)self pressGR];

  if (!v5)
  {
    v6 = [[_UISimplePressGestureRecognizer alloc] initWithTarget:self action:sel__handlePressGesture_];
    [(_UIPressClickInteractionDriver *)self setPressGR:v6];

    v7 = [(_UIPressClickInteractionDriver *)self pressGR];
    [v7 setName:@"com.apple.UIKit.keyPressClickDriverPrimary"];

    v8 = [(_UIPressClickInteractionDriver *)self pressGR];
    [v8 setDelegate:self];

    v9 = [(_UIPressClickInteractionDriver *)self pressGR];
    v10 = [(_UIPressClickInteractionDriver *)self triggers];
    [v9 setTriggers:v10];
  }

  v11 = [(_UIPressClickInteractionDriver *)self pressGR];
  [v4 addGestureRecognizer:v11];
}

- (void)_handlePressGesture:(id)a3
{
  if ([a3 state] == 1)
  {
    v4 = [(_UIPressClickInteractionDriver *)self delegate];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54___UIPressClickInteractionDriver__handlePressGesture___block_invoke;
    v5[3] = &unk_1E7105EF8;
    v5[4] = self;
    [v4 clickDriver:self shouldBegin:v5];
  }
}

- (void)_gestureRecognizerFailed:(id)a3
{
  v4 = a3;
  v5 = [(_UIPressClickInteractionDriver *)self pressGR];

  if (v5 == v4)
  {
    v6 = [(_UIPressClickInteractionDriver *)self delegate];
    [v6 clickDriver:self didPerformEvent:3];
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