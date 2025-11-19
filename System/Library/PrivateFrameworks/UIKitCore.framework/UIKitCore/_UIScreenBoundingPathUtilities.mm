@interface _UIScreenBoundingPathUtilities
+ (id)boundingPathUtilitiesForScreen:(id)a3;
- (UIScreen)_screen;
- (_UIScreenBoundingPathUtilities)initWithScreen:(id)a3;
- (id)boundingPathForWindow:(id)a3;
@end

@implementation _UIScreenBoundingPathUtilities

- (UIScreen)_screen
{
  WeakRetained = objc_loadWeakRetained(&self->_screen);

  return WeakRetained;
}

+ (id)boundingPathUtilitiesForScreen:(id)a3
{
  v3 = a3;
  v4 = [_UIScreenComplexBoundingPathUtilities isScreenSupported:v3];
  v5 = off_1E70EC0D0;
  if (v4)
  {
    v5 = off_1E70EC0C8;
  }

  v6 = [objc_alloc(*v5) initWithScreen:v3];

  return v6;
}

- (_UIScreenBoundingPathUtilities)initWithScreen:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIScreenBoundingPathUtilities;
  v5 = [(_UIScreenBoundingPathUtilities *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_screen, v4);
  }

  return v6;
}

- (id)boundingPathForWindow:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  [v5 handleFailureInMethod:a2 object:self file:@"_UIScreenBoundingPathUtilities.m" lineNumber:44 description:{@"%@ must provide a concrete implementation of %@", v7, v8}];

  return 0;
}

@end