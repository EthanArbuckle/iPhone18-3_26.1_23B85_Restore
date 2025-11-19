@interface _SBRootFolderPageTransitionHandle
- (NSString)transitionDescription;
- (_SBRootFolderPageTransitionHandle)initWithFolderController:(id)a3 sourcePageState:(int64_t)a4 sourcePageIndex:(int64_t)a5 destinationPageState:(int64_t)a6 destinationPageIndex:(int64_t)a7 reason:(id)a8;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (int64_t)matchesTransitionSnapshot:(SBRootFolderPageStateTransitionSnapshot *)a3;
- (void)endTransitionSuccessfully:(BOOL)a3;
- (void)setTransitionProgress:(double)a3;
@end

@implementation _SBRootFolderPageTransitionHandle

- (_SBRootFolderPageTransitionHandle)initWithFolderController:(id)a3 sourcePageState:(int64_t)a4 sourcePageIndex:(int64_t)a5 destinationPageState:(int64_t)a6 destinationPageIndex:(int64_t)a7 reason:(id)a8
{
  v15 = a3;
  v16 = a8;
  v22.receiver = self;
  v22.super_class = _SBRootFolderPageTransitionHandle;
  v17 = [(_SBRootFolderPageTransitionHandle *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_folderController, a3);
    v19 = [v16 copy];
    reason = v18->_reason;
    v18->_reason = v19;

    v18->_sourcePageState = a4;
    v18->_destinationPageState = a6;
    v18->_sourcePageIndex = a5;
    v18->_destinationPageIndex = a7;
    v18->_valid = 1;
  }

  return v18;
}

- (int64_t)matchesTransitionSnapshot:(SBRootFolderPageStateTransitionSnapshot *)a3
{
  v5 = [(_SBRootFolderPageTransitionHandle *)self sourcePageState];
  v6 = [(_SBRootFolderPageTransitionHandle *)self destinationPageState];
  v7 = [(_SBRootFolderPageTransitionHandle *)self folderController];
  v8 = [v7 minimumPageIndex];

  v9 = [(_SBRootFolderPageTransitionHandle *)self sourcePageIndex]- v8;
  v10 = [(_SBRootFolderPageTransitionHandle *)self destinationPageIndex]- v8;
  if (*&a3->var0 == __PAIR128__(v6, v5) && a3->var2 == v9 && a3->var3 == v10)
  {
    return 1;
  }

  if (a3->var0 != v6)
  {
    return 0;
  }

  if (a3->var1 == v5)
  {
    if (a3->var2 == v10 && a3->var3 == v9)
    {
      return 2;
    }

    return 0;
  }

  return 3;
}

- (NSString)transitionDescription
{
  v3 = [(_SBRootFolderPageTransitionHandle *)self sourcePageState];
  v4 = [(_SBRootFolderPageTransitionHandle *)self destinationPageState];
  v5 = [(_SBRootFolderPageTransitionHandle *)self folderController];
  v6 = [v5 minimumPageIndex];

  v7 = [(_SBRootFolderPageTransitionHandle *)self sourcePageIndex]- v6;
  v8 = [(_SBRootFolderPageTransitionHandle *)self destinationPageIndex]- v6;
  [(_SBRootFolderPageTransitionHandle *)self pageTransitionProgress];
  v10 = v9;
  v11 = MEMORY[0x1E696AEC0];
  v12 = SBStringForRootFolderPageState(v3);
  v13 = SBStringForRootFolderPageState(v4);
  v14 = [v11 stringWithFormat:@"%@(%lu) -> %@(%lu): %f", v12, v7, v13, v8, v10];

  return v14;
}

- (void)setTransitionProgress:(double)a3
{
  if ([(_SBRootFolderPageTransitionHandle *)self isValid])
  {
    [(_SBRootFolderPageTransitionHandle *)self setPageTransitionProgress:a3];
    v6 = [(_SBRootFolderPageTransitionHandle *)self folderController];
    [v6 pageTransitionHandle:self updateCurrentPageStateTransitionToProgress:a3];
  }

  else
  {
    v5 = SBLogRootController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(_SBRootFolderPageTransitionHandle *)self setTransitionProgress:v5, a3];
    }
  }
}

- (void)endTransitionSuccessfully:(BOOL)a3
{
  v3 = a3;
  if ([(_SBRootFolderPageTransitionHandle *)self isValid])
  {
    v5 = 0.0;
    if (v3)
    {
      v5 = 1.0;
    }

    [(_SBRootFolderPageTransitionHandle *)self setPageTransitionProgress:v5];
    v7 = [(_SBRootFolderPageTransitionHandle *)self folderController];
    [v7 pageTransitionHandle:self endPageStateTransitionSuccessfully:v3];
  }

  else
  {
    v6 = SBLogRootController();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(_SBRootFolderPageTransitionHandle *)self endTransitionSuccessfully:v3, v6];
    }
  }
}

- (id)succinctDescription
{
  v2 = [(_SBRootFolderPageTransitionHandle *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_SBRootFolderPageTransitionHandle *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(_SBRootFolderPageTransitionHandle *)self succinctDescriptionBuilder];
  v5 = [(_SBRootFolderPageTransitionHandle *)self reason];
  v6 = [v4 appendObject:v5 withName:@"reason"];

  v7 = SBStringForRootFolderPageState([(_SBRootFolderPageTransitionHandle *)self sourcePageState]);
  v8 = [v4 appendObject:v7 withName:@"sourcePageState"];

  v9 = SBStringForRootFolderPageState([(_SBRootFolderPageTransitionHandle *)self destinationPageState]);
  v10 = [v4 appendObject:v9 withName:@"destinationPageState"];

  [(_SBRootFolderPageTransitionHandle *)self pageTransitionProgress];
  v11 = [v4 appendFloat:@"pageTransitionProgress" withName:?];
  v12 = [v4 appendInteger:-[_SBRootFolderPageTransitionHandle sourcePageIndex](self withName:{"sourcePageIndex"), @"sourcePageIndex"}];
  v13 = [v4 appendInteger:-[_SBRootFolderPageTransitionHandle destinationPageIndex](self withName:{"destinationPageIndex"), @"destinationPageIndex"}];
  v14 = [(_SBRootFolderPageTransitionHandle *)self folderController];
  v15 = [v4 appendPointer:v14 withName:@"folderController"];

  v16 = [v4 appendBool:-[_SBRootFolderPageTransitionHandle isValid](self withName:{"isValid"), @"valid"}];
  v17 = [(_SBRootFolderPageTransitionHandle *)self customIconImageViewControllerCancelTouchesAssertion];
  v18 = [v4 appendObject:v17 withName:@"customIconImageViewControllerCancelTouchesAssertion" skipIfNil:1];

  return v4;
}

- (void)setTransitionProgress:(double)a3 .cold.1(void *a1, NSObject *a2, double a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = SBStringForRootFolderPageState([a1 sourcePageState]);
  v7 = SBStringForRootFolderPageState([a1 destinationPageState]);
  v8 = [a1 reason];
  v9 = 138544130;
  v10 = v6;
  v11 = 2114;
  v12 = v7;
  v13 = 2114;
  v14 = v8;
  v15 = 2048;
  v16 = a3;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "Trying to update a page state transition that has ended (%{public}@ -> %{public}@, %{public}@), progress: %g", &v9, 0x2Au);
}

- (void)endTransitionSuccessfully:(NSObject *)a3 .cold.1(void *a1, char a2, NSObject *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = SBStringForRootFolderPageState([a1 sourcePageState]);
  v7 = SBStringForRootFolderPageState([a1 destinationPageState]);
  v8 = [a1 reason];
  v9 = 138544130;
  v10 = v6;
  v11 = 2114;
  v12 = v7;
  v13 = 2114;
  v14 = v8;
  v15 = 1024;
  v16 = a2 & 1;
  _os_log_error_impl(&dword_1BEB18000, a3, OS_LOG_TYPE_ERROR, "Trying to end a page state transition that has already ended (%{public}@ -> %{public}@, %{public}@, successful: %{BOOL}u)", &v9, 0x26u);
}

@end