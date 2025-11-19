@interface _SBRootFolderViewElementBorrowedAssertion
- (_SBRootFolderViewElementBorrowedAssertion)initWithFolderView:(id)a3 reason:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _SBRootFolderViewElementBorrowedAssertion

- (_SBRootFolderViewElementBorrowedAssertion)initWithFolderView:(id)a3 reason:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _SBRootFolderViewElementBorrowedAssertion;
  v9 = [(_SBRootFolderViewElementBorrowedAssertion *)&v14 init];
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
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "_SBRootFolderViewElementBorrowedAssertion deallocated but not invalidated! Reason: %{public}@", &v3, 0xCu);
}

- (void)invalidate
{
  v3 = [(_SBRootFolderViewElementBorrowedAssertion *)self folderView];
  [v3 elementBorrowedAssertionDidInvalidate:self];

  [(_SBRootFolderViewElementBorrowedAssertion *)self setFolderView:0];
}

- (id)succinctDescription
{
  v2 = [(_SBRootFolderViewElementBorrowedAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_SBRootFolderViewElementBorrowedAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(_SBRootFolderViewElementBorrowedAssertion *)self succinctDescriptionBuilder];
  v5 = [(_SBRootFolderViewElementBorrowedAssertion *)self reason];
  v6 = [v4 appendObject:v5 withName:@"reason"];

  v7 = [(_SBRootFolderViewElementBorrowedAssertion *)self folderView];
  v8 = [v4 appendPointer:v7 withName:@"folderView"];

  return v4;
}

@end