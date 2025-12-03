@interface _SBRootFolderPageTransitionHandle
- (NSString)transitionDescription;
- (_SBRootFolderPageTransitionHandle)initWithFolderController:(id)controller sourcePageState:(int64_t)state sourcePageIndex:(int64_t)index destinationPageState:(int64_t)pageState destinationPageIndex:(int64_t)pageIndex reason:(id)reason;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (int64_t)matchesTransitionSnapshot:(SBRootFolderPageStateTransitionSnapshot *)snapshot;
- (void)endTransitionSuccessfully:(BOOL)successfully;
- (void)setTransitionProgress:(double)progress;
@end

@implementation _SBRootFolderPageTransitionHandle

- (_SBRootFolderPageTransitionHandle)initWithFolderController:(id)controller sourcePageState:(int64_t)state sourcePageIndex:(int64_t)index destinationPageState:(int64_t)pageState destinationPageIndex:(int64_t)pageIndex reason:(id)reason
{
  controllerCopy = controller;
  reasonCopy = reason;
  v22.receiver = self;
  v22.super_class = _SBRootFolderPageTransitionHandle;
  v17 = [(_SBRootFolderPageTransitionHandle *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_folderController, controller);
    v19 = [reasonCopy copy];
    reason = v18->_reason;
    v18->_reason = v19;

    v18->_sourcePageState = state;
    v18->_destinationPageState = pageState;
    v18->_sourcePageIndex = index;
    v18->_destinationPageIndex = pageIndex;
    v18->_valid = 1;
  }

  return v18;
}

- (int64_t)matchesTransitionSnapshot:(SBRootFolderPageStateTransitionSnapshot *)snapshot
{
  sourcePageState = [(_SBRootFolderPageTransitionHandle *)self sourcePageState];
  destinationPageState = [(_SBRootFolderPageTransitionHandle *)self destinationPageState];
  folderController = [(_SBRootFolderPageTransitionHandle *)self folderController];
  minimumPageIndex = [folderController minimumPageIndex];

  v9 = [(_SBRootFolderPageTransitionHandle *)self sourcePageIndex]- minimumPageIndex;
  v10 = [(_SBRootFolderPageTransitionHandle *)self destinationPageIndex]- minimumPageIndex;
  if (*&snapshot->var0 == __PAIR128__(destinationPageState, sourcePageState) && snapshot->var2 == v9 && snapshot->var3 == v10)
  {
    return 1;
  }

  if (snapshot->var0 != destinationPageState)
  {
    return 0;
  }

  if (snapshot->var1 == sourcePageState)
  {
    if (snapshot->var2 == v10 && snapshot->var3 == v9)
    {
      return 2;
    }

    return 0;
  }

  return 3;
}

- (NSString)transitionDescription
{
  sourcePageState = [(_SBRootFolderPageTransitionHandle *)self sourcePageState];
  destinationPageState = [(_SBRootFolderPageTransitionHandle *)self destinationPageState];
  folderController = [(_SBRootFolderPageTransitionHandle *)self folderController];
  minimumPageIndex = [folderController minimumPageIndex];

  v7 = [(_SBRootFolderPageTransitionHandle *)self sourcePageIndex]- minimumPageIndex;
  v8 = [(_SBRootFolderPageTransitionHandle *)self destinationPageIndex]- minimumPageIndex;
  [(_SBRootFolderPageTransitionHandle *)self pageTransitionProgress];
  v10 = v9;
  v11 = MEMORY[0x1E696AEC0];
  v12 = SBStringForRootFolderPageState(sourcePageState);
  v13 = SBStringForRootFolderPageState(destinationPageState);
  v14 = [v11 stringWithFormat:@"%@(%lu) -> %@(%lu): %f", v12, v7, v13, v8, v10];

  return v14;
}

- (void)setTransitionProgress:(double)progress
{
  if ([(_SBRootFolderPageTransitionHandle *)self isValid])
  {
    [(_SBRootFolderPageTransitionHandle *)self setPageTransitionProgress:progress];
    folderController = [(_SBRootFolderPageTransitionHandle *)self folderController];
    [folderController pageTransitionHandle:self updateCurrentPageStateTransitionToProgress:progress];
  }

  else
  {
    v5 = SBLogRootController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(_SBRootFolderPageTransitionHandle *)self setTransitionProgress:v5, progress];
    }
  }
}

- (void)endTransitionSuccessfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  if ([(_SBRootFolderPageTransitionHandle *)self isValid])
  {
    v5 = 0.0;
    if (successfullyCopy)
    {
      v5 = 1.0;
    }

    [(_SBRootFolderPageTransitionHandle *)self setPageTransitionProgress:v5];
    folderController = [(_SBRootFolderPageTransitionHandle *)self folderController];
    [folderController pageTransitionHandle:self endPageStateTransitionSuccessfully:successfullyCopy];
  }

  else
  {
    v6 = SBLogRootController();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(_SBRootFolderPageTransitionHandle *)self endTransitionSuccessfully:successfullyCopy, v6];
    }
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_SBRootFolderPageTransitionHandle *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_SBRootFolderPageTransitionHandle *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(_SBRootFolderPageTransitionHandle *)self succinctDescriptionBuilder];
  reason = [(_SBRootFolderPageTransitionHandle *)self reason];
  v6 = [succinctDescriptionBuilder appendObject:reason withName:@"reason"];

  v7 = SBStringForRootFolderPageState([(_SBRootFolderPageTransitionHandle *)self sourcePageState]);
  v8 = [succinctDescriptionBuilder appendObject:v7 withName:@"sourcePageState"];

  v9 = SBStringForRootFolderPageState([(_SBRootFolderPageTransitionHandle *)self destinationPageState]);
  v10 = [succinctDescriptionBuilder appendObject:v9 withName:@"destinationPageState"];

  [(_SBRootFolderPageTransitionHandle *)self pageTransitionProgress];
  v11 = [succinctDescriptionBuilder appendFloat:@"pageTransitionProgress" withName:?];
  v12 = [succinctDescriptionBuilder appendInteger:-[_SBRootFolderPageTransitionHandle sourcePageIndex](self withName:{"sourcePageIndex"), @"sourcePageIndex"}];
  v13 = [succinctDescriptionBuilder appendInteger:-[_SBRootFolderPageTransitionHandle destinationPageIndex](self withName:{"destinationPageIndex"), @"destinationPageIndex"}];
  folderController = [(_SBRootFolderPageTransitionHandle *)self folderController];
  v15 = [succinctDescriptionBuilder appendPointer:folderController withName:@"folderController"];

  v16 = [succinctDescriptionBuilder appendBool:-[_SBRootFolderPageTransitionHandle isValid](self withName:{"isValid"), @"valid"}];
  customIconImageViewControllerCancelTouchesAssertion = [(_SBRootFolderPageTransitionHandle *)self customIconImageViewControllerCancelTouchesAssertion];
  v18 = [succinctDescriptionBuilder appendObject:customIconImageViewControllerCancelTouchesAssertion withName:@"customIconImageViewControllerCancelTouchesAssertion" skipIfNil:1];

  return succinctDescriptionBuilder;
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