@interface SBFolderViewAssertion
- (SBFolderViewAssertion)initWithAssertionType:(int64_t)a3 folderView:(id)a4 extraInfo:(id)a5;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBFolderViewAssertion

- (SBFolderViewAssertion)initWithAssertionType:(int64_t)a3 folderView:(id)a4 extraInfo:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = SBFolderViewAssertion;
  v11 = [(SBFolderViewAssertion *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_assertionType = a3;
    objc_storeStrong(&v11->_folderView, a4);
    v13 = [v10 copy];
    extraInfo = v12->_extraInfo;
    v12->_extraInfo = v13;
  }

  return v12;
}

- (void)dealloc
{
  if (![(SBFolderViewAssertion *)self isInvalidated])
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_INFO, "SBFolderViewAssertion deallocated but not invalidated!", buf, 2u);
    }

    [(SBFolderViewAssertion *)self invalidate];
  }

  v4.receiver = self;
  v4.super_class = SBFolderViewAssertion;
  [(SBFolderViewAssertion *)&v4 dealloc];
}

- (void)invalidate
{
  if (![(SBFolderViewAssertion *)self isInvalidated])
  {
    v3 = [(SBFolderViewAssertion *)self folderView];
    [v3 removeAssertion:self];

    [(SBFolderViewAssertion *)self setInvalidated:1];
  }
}

- (id)succinctDescription
{
  v2 = [(SBFolderViewAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBFolderViewAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBFolderViewAssertion *)self succinctDescriptionBuilder];
  v5 = [v4 appendInteger:-[SBFolderViewAssertion assertionType](self withName:{"assertionType"), @"assertionType"}];
  v6 = [(SBFolderViewAssertion *)self extraInfo];
  v7 = [v4 appendObject:v6 withName:@"extraInfo"];

  v8 = [(SBFolderViewAssertion *)self folderView];
  v9 = [v4 appendPointer:v8 withName:@"folderView"];

  return v4;
}

@end