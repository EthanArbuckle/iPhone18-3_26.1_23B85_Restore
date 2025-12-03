@interface _SBRootFolderViewElementBorrowedAssertion
- (_SBRootFolderViewElementBorrowedAssertion)initWithFolderView:(id)view reason:(id)reason;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _SBRootFolderViewElementBorrowedAssertion

- (_SBRootFolderViewElementBorrowedAssertion)initWithFolderView:(id)view reason:(id)reason
{
  viewCopy = view;
  reasonCopy = reason;
  v14.receiver = self;
  v14.super_class = _SBRootFolderViewElementBorrowedAssertion;
  v9 = [(_SBRootFolderViewElementBorrowedAssertion *)&v14 init];
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
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(self + 8);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "_SBRootFolderViewElementBorrowedAssertion deallocated but not invalidated! Reason: %{public}@", &v3, 0xCu);
}

- (void)invalidate
{
  folderView = [(_SBRootFolderViewElementBorrowedAssertion *)self folderView];
  [folderView elementBorrowedAssertionDidInvalidate:self];

  [(_SBRootFolderViewElementBorrowedAssertion *)self setFolderView:0];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_SBRootFolderViewElementBorrowedAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_SBRootFolderViewElementBorrowedAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(_SBRootFolderViewElementBorrowedAssertion *)self succinctDescriptionBuilder];
  reason = [(_SBRootFolderViewElementBorrowedAssertion *)self reason];
  v6 = [succinctDescriptionBuilder appendObject:reason withName:@"reason"];

  folderView = [(_SBRootFolderViewElementBorrowedAssertion *)self folderView];
  v8 = [succinctDescriptionBuilder appendPointer:folderView withName:@"folderView"];

  return succinctDescriptionBuilder;
}

@end