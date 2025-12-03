@interface _UIColorPickerColorQueue
- (_UIColorPickerColorQueue)init;
- (_UIColorPickerColorQueueDelegate)delegate;
- (void)_displayLinkFired;
- (void)_forwardToDelegate:(id)delegate;
- (void)_pickerDidSelectColor:(id)color colorSpace:(id)space isVolatile:(BOOL)volatile;
@end

@implementation _UIColorPickerColorQueue

- (_UIColorPickerColorQueue)init
{
  v11.receiver = self;
  v11.super_class = _UIColorPickerColorQueue;
  v2 = [(_UIColorPickerColorQueue *)&v11 init];
  if (v2)
  {
    mainScreen = [objc_opt_self() mainScreen];
    v4 = [mainScreen displayLinkWithTarget:v2 selector:sel__displayLinkFired];
    displayLink = v2->_displayLink;
    v2->_displayLink = v4;

    v6 = v2->_displayLink;
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v6 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

    v8 = v2->_displayLink;
    mainRunLoop2 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v8 addToRunLoop:mainRunLoop2 forMode:@"UITrackingRunLoopMode"];

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

- (void)_forwardToDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegate = [(_UIColorPickerColorQueue *)self delegate];
  color = [delegateCopy color];
  colorSpace = [delegateCopy colorSpace];
  isVolatile = [delegateCopy isVolatile];

  [delegate _dequeue_pickerDidSelectColor:color colorSpace:colorSpace isVolatile:isVolatile];
}

- (void)_pickerDidSelectColor:(id)color colorSpace:(id)space isVolatile:(BOOL)volatile
{
  volatileCopy = volatile;
  spaceCopy = space;
  colorCopy = color;
  v10 = objc_alloc_init(_UIColorPickerColorQueueContainer);
  [(_UIColorPickerColorQueueContainer *)v10 setColor:colorCopy];

  [(_UIColorPickerColorQueueContainer *)v10 setColorSpace:spaceCopy];
  [(_UIColorPickerColorQueueContainer *)v10 setIsVolatile:volatileCopy];
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