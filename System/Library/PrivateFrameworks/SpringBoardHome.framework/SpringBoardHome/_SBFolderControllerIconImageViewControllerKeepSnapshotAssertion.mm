@interface _SBFolderControllerIconImageViewControllerKeepSnapshotAssertion
- (SBFolderController)folderController;
- (_SBFolderControllerIconImageViewControllerKeepSnapshotAssertion)initWithFolderController:(id)a3 snapshotType:(unint64_t)a4 pageIndexesToExclude:(id)a5 reason:(id)a6;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _SBFolderControllerIconImageViewControllerKeepSnapshotAssertion

- (_SBFolderControllerIconImageViewControllerKeepSnapshotAssertion)initWithFolderController:(id)a3 snapshotType:(unint64_t)a4 pageIndexesToExclude:(id)a5 reason:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v20.receiver = self;
  v20.super_class = _SBFolderControllerIconImageViewControllerKeepSnapshotAssertion;
  v13 = [(_SBFolderControllerIconImageViewControllerKeepSnapshotAssertion *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_folderController, v10);
    v14->_snapshotType = a4;
    v15 = [v11 copy];
    pageIndexesToExclude = v14->_pageIndexesToExclude;
    v14->_pageIndexesToExclude = v15;

    v17 = [v12 copy];
    reason = v14->_reason;
    v14->_reason = v17;
  }

  return v14;
}

- (void)dealloc
{
  if (![(_SBFolderControllerIconImageViewControllerKeepSnapshotAssertion *)self isInvalidated])
  {
    NSLog(&cfstr_AssertionRelea.isa);
  }

  [(_SBFolderControllerIconImageViewControllerKeepSnapshotAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = _SBFolderControllerIconImageViewControllerKeepSnapshotAssertion;
  [(_SBFolderControllerIconImageViewControllerKeepSnapshotAssertion *)&v3 dealloc];
}

- (void)invalidate
{
  if (![(_SBFolderControllerIconImageViewControllerKeepSnapshotAssertion *)self isInvalidated])
  {
    [(_SBFolderControllerIconImageViewControllerKeepSnapshotAssertion *)self setInvalidated:1];
    v3 = [(_SBFolderControllerIconImageViewControllerKeepSnapshotAssertion *)self folderController];
    [v3 _removeIconImageViewControllerKeepStaticAssertion:self];
  }
}

- (id)succinctDescription
{
  v2 = [(_SBFolderControllerIconImageViewControllerKeepSnapshotAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_SBFolderControllerIconImageViewControllerKeepSnapshotAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(_SBFolderControllerIconImageViewControllerKeepSnapshotAssertion *)self succinctDescriptionBuilder];
  v5 = [(_SBFolderControllerIconImageViewControllerKeepSnapshotAssertion *)self folderController];
  v6 = [v4 appendPointer:v5 withName:@"folderController"];

  v7 = [(_SBFolderControllerIconImageViewControllerKeepSnapshotAssertion *)self pageIndexesToExclude];
  v8 = [v4 appendObject:v7 withName:@"pageIndexesToExclude"];

  v9 = [(_SBFolderControllerIconImageViewControllerKeepSnapshotAssertion *)self reason];
  v10 = [v4 appendObject:v9 withName:@"reason"];

  v11 = [v4 appendBool:-[_SBFolderControllerIconImageViewControllerKeepSnapshotAssertion isInvalidated](self withName:"isInvalidated") ifEqualTo:{@"isInvalidated", 1}];

  return v4;
}

- (SBFolderController)folderController
{
  WeakRetained = objc_loadWeakRetained(&self->_folderController);

  return WeakRetained;
}

@end