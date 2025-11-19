@interface _SBRootFolderDockOffscreenFractionClient
- (_SBRootFolderDockOffscreenFractionClient)initWithFolderView:(id)a3 reason:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
- (void)setDockOffscreenFraction:(double)a3;
@end

@implementation _SBRootFolderDockOffscreenFractionClient

- (_SBRootFolderDockOffscreenFractionClient)initWithFolderView:(id)a3 reason:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _SBRootFolderDockOffscreenFractionClient;
  v9 = [(_SBRootFolderDockOffscreenFractionClient *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_folderView, a3);
    v11 = [v8 copy];
    reason = v10->_reason;
    v10->_reason = v11;
  }

  return v10;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_folderView)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      reason = self->_reason;
      *buf = 138543362;
      v8 = reason;
      _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_INFO, "_SBRootFolderDockOffscreenFractionClient deallocated but not invalidated! Reason: %{public}@", buf, 0xCu);
    }

    folderView = self->_folderView;
  }

  else
  {
    folderView = 0;
  }

  [(SBRootFolderView *)folderView removeDockOffscreenFractionClient:self];
  v6.receiver = self;
  v6.super_class = _SBRootFolderDockOffscreenFractionClient;
  [(_SBRootFolderDockOffscreenFractionClient *)&v6 dealloc];
}

- (void)setDockOffscreenFraction:(double)a3
{
  [(_SBRootFolderDockOffscreenFractionClient *)self desiredOffscreenFraction];
  if (v5 != a3)
  {
    v6 = [(_SBRootFolderDockOffscreenFractionClient *)self folderView];
    [(_SBRootFolderDockOffscreenFractionClient *)self setDesiredOffscreenFraction:a3];
    [v6 clientDidChangeDockOffScreenFraction:self];
  }
}

- (void)invalidate
{
  v3 = [(_SBRootFolderDockOffscreenFractionClient *)self folderView];
  [v3 removeDockOffscreenFractionClient:self];

  [(_SBRootFolderDockOffscreenFractionClient *)self setFolderView:0];
}

- (id)succinctDescription
{
  v2 = [(_SBRootFolderDockOffscreenFractionClient *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_SBRootFolderDockOffscreenFractionClient *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(_SBRootFolderDockOffscreenFractionClient *)self succinctDescriptionBuilder];
  v5 = [(_SBRootFolderDockOffscreenFractionClient *)self reason];
  v6 = [v4 appendObject:v5 withName:@"reason"];

  [(_SBRootFolderDockOffscreenFractionClient *)self desiredOffscreenFraction];
  v7 = [v4 appendFloat:@"desiredOffscreenFraction" withName:?];
  v8 = [(_SBRootFolderDockOffscreenFractionClient *)self folderView];
  v9 = [v4 appendPointer:v8 withName:@"folderView"];

  return v4;
}

@end