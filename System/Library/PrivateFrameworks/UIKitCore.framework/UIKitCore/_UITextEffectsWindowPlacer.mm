@interface _UITextEffectsWindowPlacer
- (UITextEffectsWindow)owningWindow;
- (id)initForOwningWindow:(id)window;
@end

@implementation _UITextEffectsWindowPlacer

- (id)initForOwningWindow:(id)window
{
  windowCopy = window;
  v8.receiver = self;
  v8.super_class = _UITextEffectsWindowPlacer;
  v5 = [(_UITextEffectsWindowPlacer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_owningWindow, windowCopy);
  }

  return v6;
}

- (UITextEffectsWindow)owningWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_owningWindow);

  return WeakRetained;
}

@end