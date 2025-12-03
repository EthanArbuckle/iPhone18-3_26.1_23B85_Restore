@interface SBSBackgroundActivityCoordinator
- (SBSBackgroundActivityCoordinatorDelegate)delegate;
- (unint64_t)styleOverrides;
- (void)_handleStatusBarTapWithContext:(id)context withCompletionBlock:(id)block;
- (void)_registrationInvalidated:(id)invalidated;
- (void)dealloc;
- (void)setRegisteredBackgroundActivityIdentifiers:(id)identifiers reply:(id)reply;
- (void)setRegisteredStyleOverrides:(unint64_t)overrides reply:(id)reply;
@end

@implementation SBSBackgroundActivityCoordinator

- (void)dealloc
{
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_INFO, "SBSBackgroundActivityCoordinator: Automatically canceling coordinator registration due to dealloc of coordinator.", buf, 2u);
  }

  [(SBSBackgroundActivityCoordinator *)self setRegisteredBackgroundActivityIdentifiers:0 reply:&__block_literal_global_51];
  v4.receiver = self;
  v4.super_class = SBSBackgroundActivityCoordinator;
  [(SBSBackgroundActivityCoordinator *)&v4 dealloc];
}

void __43__SBSBackgroundActivityCoordinator_dealloc__block_invoke()
{
  v0 = SBLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_19169D000, v0, OS_LOG_TYPE_INFO, "Successfully unregistered from all overrides", v1, 2u);
  }
}

- (void)setRegisteredBackgroundActivityIdentifiers:(id)identifiers reply:(id)reply
{
  v19 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  identifiersCopy = identifiers;
  v8 = SBLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_19169D000, v8, OS_LOG_TYPE_INFO, "SBSBackgroundActivityCoordinator: updating registration for coordinator %@", buf, 0xCu);
  }

  v9 = [identifiersCopy copy];
  backgroundActivityIdentifiers = self->_backgroundActivityIdentifiers;
  self->_backgroundActivityIdentifiers = v9;

  v11 = [(NSSet *)self->_backgroundActivityIdentifiers count];
  v12 = +[SBSBackgroundActivityAssertionManager sharedInstance];
  v13 = v12;
  if (v11)
  {
    [v12 updateRegistrationForCoordinator:self reply:replyCopy];
LABEL_7:

    goto LABEL_8;
  }

  [v12 unregisterCoordinator];

  if (replyCopy)
  {
    v14 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__SBSBackgroundActivityCoordinator_setRegisteredBackgroundActivityIdentifiers_reply___block_invoke;
    block[3] = &unk_1E735F148;
    v16 = replyCopy;
    dispatch_async(v14, block);

    v13 = v16;
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_handleStatusBarTapWithContext:(id)context withCompletionBlock:(id)block
{
  v13 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  blockCopy = block;
  v8 = soft_STBackgroundActivityIdentifiersDescription(self->_backgroundActivityIdentifiers);
  v9 = SBLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&dword_19169D000, v9, OS_LOG_TYPE_INFO, "SBSBackgroundActivityCoordinator: sending status bar tap to delegate for background activities (%@)", &v11, 0xCu);
  }

  delegate = [(SBSBackgroundActivityCoordinator *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate statusBarCoordinator:self receivedTapWithContext:contextCopy completionBlock:blockCopy];
  }

  else if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }
}

- (void)_registrationInvalidated:(id)invalidated
{
  v12 = *MEMORY[0x1E69E9840];
  invalidatedCopy = invalidated;
  v5 = soft_STBackgroundActivityIdentifiersDescription(self->_backgroundActivityIdentifiers);
  v6 = SBLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = invalidatedCopy;
    _os_log_impl(&dword_19169D000, v6, OS_LOG_TYPE_INFO, "SBSBackgroundActivityCoordinator: Registration cancelled for style background activities (%@). Error: %@", &v8, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained statusBarCoordinator:self invalidatedRegistrationWithError:invalidatedCopy];
}

- (void)setRegisteredStyleOverrides:(unint64_t)overrides reply:(id)reply
{
  replyCopy = reply;
  v7 = soft_STUIBackgroundActivityIdentifiersForStyleOverrides(overrides);
  [(SBSBackgroundActivityCoordinator *)self setRegisteredBackgroundActivityIdentifiers:v7 reply:replyCopy];
}

- (unint64_t)styleOverrides
{
  backgroundActivityIdentifiers = [(SBSBackgroundActivityCoordinator *)self backgroundActivityIdentifiers];

  return soft_STUIStyleOverridesForBackgroundActivityIdentifiers(backgroundActivityIdentifiers);
}

- (SBSBackgroundActivityCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end