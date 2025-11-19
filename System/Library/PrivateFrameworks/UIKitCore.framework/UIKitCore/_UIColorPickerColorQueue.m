@interface _UIColorPickerColorQueue
- (_UIColorPickerColorQueue)init;
- (_UIColorPickerColorQueueDelegate)delegate;
- (void)_displayLinkFired;
- (void)_forwardToDelegate:(id)a3;
- (void)_pickerDidSelectColor:(id)a3 colorSpace:(id)a4 isVolatile:(BOOL)a5;
@end

@implementation _UIColorPickerColorQueue

- (_UIColorPickerColorQueue)init
{
  v11.receiver = self;
  v11.super_class = _UIColorPickerColorQueue;
  v2 = [(_UIColorPickerColorQueue *)&v11 init];
  if (v2)
  {
    v3 = [objc_opt_self() mainScreen];
    v4 = [v3 displayLinkWithTarget:v2 selector:sel__displayLinkFired];
    displayLink = v2->_displayLink;
    v2->_displayLink = v4;

    v6 = v2->_displayLink;
    v7 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v6 addToRunLoop:v7 forMode:*MEMORY[0x1E695DA28]];

    v8 = v2->_displayLink;
    v9 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v8 addToRunLoop:v9 forMode:@"UITrackingRunLoopMode"];

    [(CADisplayLink *)v2->_displayLink setPaused:1];
  }

  return v2;
}

- (void)_displayLinkFired
{
  if (self->_latestObject)
  {
    [(_UIColorPickerColorQueue *)self _forwardToDelegate:?];
    latestObject = self->_latestObject;
    self->_latestObject = 0;
  }

  displayLink = self->_displayLink;

  [(CADisplayLink *)displayLink setPaused:1];
}

- (void)_forwardToDelegate:(id)a3
{
  v4 = a3;
  v8 = [(_UIColorPickerColorQueue *)self delegate];
  v5 = [v4 color];
  v6 = [v4 colorSpace];
  v7 = [v4 isVolatile];

  [v8 _dequeue_pickerDidSelectColor:v5 colorSpace:v6 isVolatile:v7];
}

- (void)_pickerDidSelectColor:(id)a3 colorSpace:(id)a4 isVolatile:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(_UIColorPickerColorQueueContainer);
  [(_UIColorPickerColorQueueContainer *)v10 setColor:v9];

  [(_UIColorPickerColorQueueContainer *)v10 setColorSpace:v8];
  [(_UIColorPickerColorQueueContainer *)v10 setIsVolatile:v5];
  latestObject = self->_latestObject;
  self->_latestObject = v10;
  v12 = v10;

  [(CADisplayLink *)self->_displayLink setPaused:0];
}

- (_UIColorPickerColorQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end