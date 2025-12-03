@interface SBRootFolderControllerShowDoneButtonAssertion
- (SBRootFolderController)folderController;
- (SBRootFolderControllerShowDoneButtonAssertion)initWithFolderController:(id)controller reason:(id)reason;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBRootFolderControllerShowDoneButtonAssertion

- (SBRootFolderControllerShowDoneButtonAssertion)initWithFolderController:(id)controller reason:(id)reason
{
  controllerCopy = controller;
  reasonCopy = reason;
  v13.receiver = self;
  v13.super_class = SBRootFolderControllerShowDoneButtonAssertion;
  v8 = [(SBRootFolderControllerShowDoneButtonAssertion *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_folderController, controllerCopy);
    v10 = [reasonCopy copy];
    reason = v9->_reason;
    v9->_reason = v10;
  }

  return v9;
}

- (void)dealloc
{
  if (![(SBRootFolderControllerShowDoneButtonAssertion *)self isInvalidated])
  {
    NSLog(&cfstr_AssertionRelea.isa);
  }

  [(SBRootFolderControllerShowDoneButtonAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBRootFolderControllerShowDoneButtonAssertion;
  [(SBRootFolderControllerShowDoneButtonAssertion *)&v3 dealloc];
}

- (void)invalidate
{
  if (![(SBRootFolderControllerShowDoneButtonAssertion *)self isInvalidated])
  {
    [(SBRootFolderControllerShowDoneButtonAssertion *)self setInvalidated:1];
    folderController = [(SBRootFolderControllerShowDoneButtonAssertion *)self folderController];
    [folderController _removeShowDoneButtonAssertion:self];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBRootFolderControllerShowDoneButtonAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBRootFolderControllerShowDoneButtonAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBRootFolderControllerShowDoneButtonAssertion *)self succinctDescriptionBuilder];
  folderController = [(SBRootFolderControllerShowDoneButtonAssertion *)self folderController];
  v6 = [succinctDescriptionBuilder appendPointer:folderController withName:@"folderController"];

  reason = [(SBRootFolderControllerShowDoneButtonAssertion *)self reason];
  v8 = [succinctDescriptionBuilder appendObject:reason withName:@"reason"];

  v9 = [succinctDescriptionBuilder appendBool:-[SBRootFolderControllerShowDoneButtonAssertion isInvalidated](self withName:"isInvalidated") ifEqualTo:{@"isInvalidated", 1}];

  return succinctDescriptionBuilder;
}

- (SBRootFolderController)folderController
{
  WeakRetained = objc_loadWeakRetained(&self->_folderController);

  return WeakRetained;
}

@end