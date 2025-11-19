@interface SBRootFolderControllerShowDoneButtonAssertion
- (SBRootFolderController)folderController;
- (SBRootFolderControllerShowDoneButtonAssertion)initWithFolderController:(id)a3 reason:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBRootFolderControllerShowDoneButtonAssertion

- (SBRootFolderControllerShowDoneButtonAssertion)initWithFolderController:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = SBRootFolderControllerShowDoneButtonAssertion;
  v8 = [(SBRootFolderControllerShowDoneButtonAssertion *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_folderController, v6);
    v10 = [v7 copy];
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
    v3 = [(SBRootFolderControllerShowDoneButtonAssertion *)self folderController];
    [v3 _removeShowDoneButtonAssertion:self];
  }
}

- (id)succinctDescription
{
  v2 = [(SBRootFolderControllerShowDoneButtonAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBRootFolderControllerShowDoneButtonAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBRootFolderControllerShowDoneButtonAssertion *)self succinctDescriptionBuilder];
  v5 = [(SBRootFolderControllerShowDoneButtonAssertion *)self folderController];
  v6 = [v4 appendPointer:v5 withName:@"folderController"];

  v7 = [(SBRootFolderControllerShowDoneButtonAssertion *)self reason];
  v8 = [v4 appendObject:v7 withName:@"reason"];

  v9 = [v4 appendBool:-[SBRootFolderControllerShowDoneButtonAssertion isInvalidated](self withName:"isInvalidated") ifEqualTo:{@"isInvalidated", 1}];

  return v4;
}

- (SBRootFolderController)folderController
{
  WeakRetained = objc_loadWeakRetained(&self->_folderController);

  return WeakRetained;
}

@end