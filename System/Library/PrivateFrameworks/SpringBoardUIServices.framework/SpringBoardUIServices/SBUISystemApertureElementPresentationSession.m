@interface SBUISystemApertureElementPresentationSession
- (void)_associateWithSourceIfNeeded:(id)a3;
- (void)_associateWithSourceWithIdentityToken:(id)a3;
- (void)_handleSourceDidConnect:(id)a3;
- (void)activateWithElementProvider:(id)a3;
- (void)dealloc;
@end

@implementation SBUISystemApertureElementPresentationSession

- (void)activateWithElementProvider:(id)a3
{
  obj = a3;
  if ((SBUIIsSystemApertureEnabled() & 1) == 0)
  {
    [(SBUISystemApertureElementPresentationSession *)a2 activateWithElementProvider:?];
  }

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:self selector:sel__handleSourceDidConnect_ name:@"SBUISystemApertureElementSourceDidConnectNotification" object:0];

  objc_storeWeak(&self->_elementProvider, obj);
  v6 = objc_alloc_init(MEMORY[0x1E69D42F0]);
  client = self->_client;
  self->_client = v6;

  [(SBSSystemApertureScenePresentationSessionClient *)self->_client requestScene];
}

- (void)dealloc
{
  v3 = [(SBSSystemApertureScenePresentationSessionClient *)self->_client connection];
  [v3 invalidate];

  client = self->_client;
  self->_client = 0;

  v5.receiver = self;
  v5.super_class = SBUISystemApertureElementPresentationSession;
  [(SBUISystemApertureElementPresentationSession *)&v5 dealloc];
}

- (void)_handleSourceDidConnect:(id)a3
{
  v4 = [a3 object];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 identityToken];

  [(SBUISystemApertureElementPresentationSession *)self _associateWithSourceWithIdentityToken:v9];
}

- (void)_associateWithSourceIfNeeded:(id)a3
{
  v4 = a3;
  if (v4)
  {
    obj = v4;
    v5 = [v4 systemApertureElement];

    v4 = obj;
    if (!v5)
    {
      WeakRetained = objc_loadWeakRetained(&self->_associatedSource);

      if (!WeakRetained)
      {
        objc_storeWeak(&self->_associatedSource, obj);
        v7 = objc_loadWeakRetained(&self->_elementProvider);
        [obj setSystemApertureElementViewControllerProvider:v7];
      }

      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 removeObserver:self name:@"SBUISystemApertureElementSourceDidConnectNotification" object:0];

      v4 = obj;
    }
  }
}

- (void)_associateWithSourceWithIdentityToken:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [SBUISystemApertureElementSource openSources:a3];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 identityToken];
        v11 = [(SBSSystemApertureScenePresentationSessionClient *)self->_client identityToken];
        v12 = [v10 isEqual:v11];

        if (v12)
        {
          [(SBUISystemApertureElementPresentationSession *)self _associateWithSourceIfNeeded:v9];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)activateWithElementProvider:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"requested system aperture sscene when system aperture not available."];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBUISystemApertureElementPresentationSession.m";
    v16 = 1024;
    v17 = 27;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A9A79000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end