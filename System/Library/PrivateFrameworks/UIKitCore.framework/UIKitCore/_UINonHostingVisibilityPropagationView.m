@interface _UINonHostingVisibilityPropagationView
- (_UINonHostingVisibilityPropagationView)init;
- (_UINonHostingVisibilityPropagationView)initWithCoder:(id)a3;
- (_UINonHostingVisibilityPropagationView)initWithFrame:(CGRect)a3;
- (_UINonHostingVisibilityPropagationView)initWithFrame:(CGRect)a3 pid:(int)a4 environmentIdentifier:(id)a5;
@end

@implementation _UINonHostingVisibilityPropagationView

- (_UINonHostingVisibilityPropagationView)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UINonHostingVisibilityPropagationView.m" lineNumber:21 description:{@"%s is not allowed on %@", "-[_UINonHostingVisibilityPropagationView init]", objc_opt_class()}];

  return 0;
}

- (_UINonHostingVisibilityPropagationView)initWithFrame:(CGRect)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UINonHostingVisibilityPropagationView.m" lineNumber:26 description:{@"%s is not allowed on %@", "-[_UINonHostingVisibilityPropagationView initWithFrame:]", objc_opt_class()}];

  return 0;
}

- (_UINonHostingVisibilityPropagationView)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UINonHostingVisibilityPropagationView.m" lineNumber:31 description:{@"%s is not allowed on %@", "-[_UINonHostingVisibilityPropagationView initWithCoder:]", objc_opt_class()}];

  return 0;
}

- (_UINonHostingVisibilityPropagationView)initWithFrame:(CGRect)a3 pid:(int)a4 environmentIdentifier:(id)a5
{
  v11.receiver = self;
  v11.super_class = _UINonHostingVisibilityPropagationView;
  v7 = [(_UIVisibilityPropagationView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v8 = v7;
  if (v7)
  {
    v7->_pid = a4;
    objc_storeStrong(&v7->_environmentIdentifier, a5);
    if (v8->_pid >= 1 && [(NSString *)v8->_environmentIdentifier length])
    {
      v9 = [MEMORY[0x1E69C7640] targetWithPid:v8->_pid environmentIdentifier:v8->_environmentIdentifier];
      [(_UIVisibilityPropagationInteraction *)v8->super._interaction _setVisibilityTarget:v9];
    }

    [(_UIVisibilityPropagationInteraction *)v8->super._interaction _setVisibilityPropagationEnabled:?];
  }

  return v8;
}

@end