@interface _SBFolderControllerIconImageViewControllerKeepSnapshotAssertion
- (SBFolderController)folderController;
- (_SBFolderControllerIconImageViewControllerKeepSnapshotAssertion)initWithFolderController:(id)controller snapshotType:(unint64_t)type pageIndexesToExclude:(id)exclude reason:(id)reason;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _SBFolderControllerIconImageViewControllerKeepSnapshotAssertion

- (_SBFolderControllerIconImageViewControllerKeepSnapshotAssertion)initWithFolderController:(id)controller snapshotType:(unint64_t)type pageIndexesToExclude:(id)exclude reason:(id)reason
{
  controllerCopy = controller;
  excludeCopy = exclude;
  reasonCopy = reason;
  v20.receiver = self;
  v20.super_class = _SBFolderControllerIconImageViewControllerKeepSnapshotAssertion;
  v13 = [(_SBFolderControllerIconImageViewControllerKeepSnapshotAssertion *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_folderController, controllerCopy);
    v14->_snapshotType = type;
    v15 = [excludeCopy copy];
    pageIndexesToExclude = v14->_pageIndexesToExclude;
    v14->_pageIndexesToExclude = v15;

    v17 = [reasonCopy copy];
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
    folderController = [(_SBFolderControllerIconImageViewControllerKeepSnapshotAssertion *)self folderController];
    [folderController _removeIconImageViewControllerKeepStaticAssertion:self];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_SBFolderControllerIconImageViewControllerKeepSnapshotAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_SBFolderControllerIconImageViewControllerKeepSnapshotAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(_SBFolderControllerIconImageViewControllerKeepSnapshotAssertion *)self succinctDescriptionBuilder];
  folderController = [(_SBFolderControllerIconImageViewControllerKeepSnapshotAssertion *)self folderController];
  v6 = [succinctDescriptionBuilder appendPointer:folderController withName:@"folderController"];

  pageIndexesToExclude = [(_SBFolderControllerIconImageViewControllerKeepSnapshotAssertion *)self pageIndexesToExclude];
  v8 = [succinctDescriptionBuilder appendObject:pageIndexesToExclude withName:@"pageIndexesToExclude"];

  reason = [(_SBFolderControllerIconImageViewControllerKeepSnapshotAssertion *)self reason];
  v10 = [succinctDescriptionBuilder appendObject:reason withName:@"reason"];

  v11 = [succinctDescriptionBuilder appendBool:-[_SBFolderControllerIconImageViewControllerKeepSnapshotAssertion isInvalidated](self withName:"isInvalidated") ifEqualTo:{@"isInvalidated", 1}];

  return succinctDescriptionBuilder;
}

- (SBFolderController)folderController
{
  WeakRetained = objc_loadWeakRetained(&self->_folderController);

  return WeakRetained;
}

@end