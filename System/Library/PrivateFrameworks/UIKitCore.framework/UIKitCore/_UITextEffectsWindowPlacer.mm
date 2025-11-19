@interface _UITextEffectsWindowPlacer
- (UITextEffectsWindow)owningWindow;
- (id)initForOwningWindow:(id)a3;
@end

@implementation _UITextEffectsWindowPlacer

- (id)initForOwningWindow:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UITextEffectsWindowPlacer;
  v5 = [(_UITextEffectsWindowPlacer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_owningWindow, v4);
  }

  return v6;
}

- (UITextEffectsWindow)owningWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_owningWindow);

  return WeakRetained;
}

@end