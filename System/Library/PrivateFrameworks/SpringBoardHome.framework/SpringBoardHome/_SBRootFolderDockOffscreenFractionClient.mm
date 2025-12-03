@interface _SBRootFolderDockOffscreenFractionClient
- (_SBRootFolderDockOffscreenFractionClient)initWithFolderView:(id)view reason:(id)reason;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
- (void)setDockOffscreenFraction:(double)fraction;
@end

@implementation _SBRootFolderDockOffscreenFractionClient

- (_SBRootFolderDockOffscreenFractionClient)initWithFolderView:(id)view reason:(id)reason
{
  viewCopy = view;
  reasonCopy = reason;
  v14.receiver = self;
  v14.super_class = _SBRootFolderDockOffscreenFractionClient;
  v9 = [(_SBRootFolderDockOffscreenFractionClient *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_folderView, view);
    v11 = [reasonCopy copy];
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

- (void)setDockOffscreenFraction:(double)fraction
{
  [(_SBRootFolderDockOffscreenFractionClient *)self desiredOffscreenFraction];
  if (v5 != fraction)
  {
    folderView = [(_SBRootFolderDockOffscreenFractionClient *)self folderView];
    [(_SBRootFolderDockOffscreenFractionClient *)self setDesiredOffscreenFraction:fraction];
    [folderView clientDidChangeDockOffScreenFraction:self];
  }
}

- (void)invalidate
{
  folderView = [(_SBRootFolderDockOffscreenFractionClient *)self folderView];
  [folderView removeDockOffscreenFractionClient:self];

  [(_SBRootFolderDockOffscreenFractionClient *)self setFolderView:0];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_SBRootFolderDockOffscreenFractionClient *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_SBRootFolderDockOffscreenFractionClient *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(_SBRootFolderDockOffscreenFractionClient *)self succinctDescriptionBuilder];
  reason = [(_SBRootFolderDockOffscreenFractionClient *)self reason];
  v6 = [succinctDescriptionBuilder appendObject:reason withName:@"reason"];

  [(_SBRootFolderDockOffscreenFractionClient *)self desiredOffscreenFraction];
  v7 = [succinctDescriptionBuilder appendFloat:@"desiredOffscreenFraction" withName:?];
  folderView = [(_SBRootFolderDockOffscreenFractionClient *)self folderView];
  v9 = [succinctDescriptionBuilder appendPointer:folderView withName:@"folderView"];

  return succinctDescriptionBuilder;
}

@end