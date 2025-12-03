@interface _UIViewServiceHostSession
- (NSString)debugDescription;
- (id)connectionWithClientContextBuilder:(void *)builder replyHandler:;
- (id)initWithService:(void *)service viewServiceAppBundleId:(void *)id delegate:;
- (id)sceneSynchronizer;
- (id)succinctDescription;
- (void)appendDescriptionToStream:(id)stream;
- (void)cancelWithError:(uint64_t)error;
- (void)connection:(id)connection didHaltWithEvent:(id)event;
- (void)dealloc;
- (void)establishConnectionToPid:(void *)pid withAssertion:(void *)assertion legacyAssertion:(void *)legacyAssertion endpoint:(void *)endpoint synchronizer:;
- (void)invalidate;
@end

@implementation _UIViewServiceHostSession

- (id)initWithService:(void *)service viewServiceAppBundleId:(void *)id delegate:
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a2;
  serviceCopy = service;
  idCopy = id;
  if (self)
  {
    v23.receiver = self;
    v23.super_class = _UIViewServiceHostSession;
    self = objc_msgSendSuper2(&v23, sel_init);
    if (self)
    {
      if (!(v8 | serviceCopy))
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"service || appBundleId && !(service && appBundleId)"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v19 = NSStringFromSelector(sel_initWithService_viewServiceAppBundleId_delegate_);
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          *block = 138544642;
          *&block[4] = v19;
          *&block[12] = 2114;
          *&block[14] = v21;
          *&block[22] = 2048;
          selfCopy = self;
          v27 = 2114;
          v28 = @"_UIViewServiceHostSession.m";
          v29 = 1024;
          v30 = 62;
          v31 = 2114;
          v32 = v18;
          _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", block, 0x3Au);
        }

        v22 = v18;
        [v18 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x189D19664);
      }

      if (serviceCopy)
      {
        identifier = serviceCopy;
      }

      else
      {
        identifier = [v8 identifier];
      }

      v12 = self[1];
      self[1] = identifier;

      objc_storeStrong(self + 3, a2);
      objc_storeStrong(self + 2, service);
      objc_storeWeak(self + 4, idCopy);
      *(self + 10) = 0;
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v14 = self[11];
      self[11] = weakObjectsHashTable;

      objc_initWeak(&location, self);
      if (self[2])
      {
        v15 = dispatch_get_global_queue(33, 0);
        *block = MEMORY[0x1E69E9820];
        *&block[8] = 3221225472;
        *&block[16] = __42___UIViewServiceHostSession_launchService__block_invoke;
        selfCopy = &unk_1E70F5A28;
        objc_copyWeak(&v27, &location);
        dispatch_async(v15, block);
      }

      else
      {
        v16 = self[3];
        *block = MEMORY[0x1E69E9820];
        *&block[8] = 3221225472;
        *&block[16] = __42___UIViewServiceHostSession_launchService__block_invoke_2;
        selfCopy = &unk_1E7106800;
        objc_copyWeak(&v27, &location);
        [v16 beginUsing:block];
      }

      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }
  }

  return self;
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_invalidated)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_UIViewServiceHostSession was not invalidated before dealloc"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544642;
      v10 = v5;
      v11 = 2114;
      v12 = v7;
      v13 = 2048;
      selfCopy = self;
      v15 = 2114;
      v16 = @"_UIViewServiceHostSession.m";
      v17 = 1024;
      v18 = 76;
      v19 = 2114;
      v20 = v4;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189D19808);
  }

  os_unfair_lock_unlock(&self->_lock);
  v8.receiver = self;
  v8.super_class = _UIViewServiceHostSession;
  [(_UIViewServiceHostSession *)&v8 dealloc];
}

- (void)cancelWithError:(uint64_t)error
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (error)
  {
    v5 = v3;
    if (!v5)
    {
      v23 = MEMORY[0x1E696AEC0];
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = [v23 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"error", v25];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v27 = NSStringFromSelector(sel_cancelWithError_);
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        *buf = 138544642;
        v45 = v27;
        v46 = 2114;
        v47 = v29;
        v48 = 2048;
        errorCopy2 = error;
        v50 = 2114;
        v51 = @"_UIViewServiceHostSession.m";
        v52 = 1024;
        v53 = 384;
        v54 = 2114;
        v55 = v26;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v26 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189D1AC30);
    }

    v6 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v30 = MEMORY[0x1E696AEC0];
      classForCoder = [v6 classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v32 = NSStringFromClass(classForCoder);
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = [v30 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"error", v32, v34];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v36 = NSStringFromSelector(sel_cancelWithError_);
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        *buf = 138544642;
        v45 = v36;
        v46 = 2114;
        v47 = v38;
        v48 = 2048;
        errorCopy2 = error;
        v50 = 2114;
        v51 = @"_UIViewServiceHostSession.m";
        v52 = 1024;
        v53 = 384;
        v54 = 2114;
        v55 = v35;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v35 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189D1AD6CLL);
    }

    os_unfair_lock_lock((error + 40));
    if (*(error + 44))
    {
      os_unfair_lock_unlock((error + 40));
      v7 = *(__UILogGetCategoryCachedImpl("ViewServiceHostSession", &qword_1ED49F9C8) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(error + 8);
        *buf = 138412546;
        v45 = v8;
        v46 = 2114;
        v47 = v6;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Ignoring cancellation error for already finished view service connection request '%@' : %{public}@", buf, 0x16u);
      }
    }

    else
    {
      *(error + 44) = 1;
      *(error + 48) = -1;
      [*(error + 56) invalidate];
      v9 = *(error + 56);
      *(error + 56) = 0;

      [*(error + 64) invalidate];
      v10 = *(error + 64);
      *(error + 64) = 0;

      v11 = *(error + 72);
      *(error + 72) = 0;

      v12 = *(error + 80);
      *(error + 80) = 0;

      v13 = *(error + 88);
      v14 = *(error + 88);
      *(error + 88) = 0;

      os_unfair_lock_unlock((error + 40));
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v40;
        do
        {
          v19 = 0;
          do
          {
            if (*v40 != v18)
            {
              objc_enumerationMutation(v15);
            }

            [*(*(&v39 + 1) + 8 * v19++) invalidate];
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v39 objects:v43 count:16];
        }

        while (v17);
      }

      v20 = *(__UILogGetCategoryCachedImpl("ViewServiceHostSession", &qword_1ED49F9C0) + 8);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(error + 8);
        *buf = 138412546;
        v45 = v21;
        v46 = 2114;
        v47 = v6;
        _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_DEFAULT, "View service session ended with error '%@' : %{public}@", buf, 0x16u);
      }

      WeakRetained = objc_loadWeakRetained((error + 32));
      [WeakRetained _viewServiceHostSessionDidInvalidate:error withError:v6];
    }

    os_unfair_lock_assert_not_owner((error + 40));
  }
}

- (void)establishConnectionToPid:(void *)pid withAssertion:(void *)assertion legacyAssertion:(void *)legacyAssertion endpoint:(void *)endpoint synchronizer:
{
  v98 = *MEMORY[0x1E69E9840];
  pidCopy = pid;
  assertionCopy = assertion;
  legacyAssertionCopy = legacyAssertion;
  endpointCopy = endpoint;
  if (self)
  {
    if (a2 <= 0)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid pid %i", a2];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v23 = NSStringFromSelector(sel_establishConnectionToPid_withAssertion_legacyAssertion_endpoint_synchronizer_);
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        *buf = 138544642;
        v87 = v23;
        v88 = 2114;
        v89 = v25;
        v90 = 2048;
        selfCopy8 = self;
        v92 = 2114;
        v93 = @"_UIViewServiceHostSession.m";
        v94 = 1024;
        v95 = 349;
        v96 = 2114;
        v97 = v22;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v22 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189D1B104);
    }

    obj = endpoint;
    v14 = legacyAssertionCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = MEMORY[0x1E696AEC0];
      classForCoder = [v14 classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v28 = NSStringFromClass(classForCoder);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = [v26 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"endpoint", v28, v30];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v32 = NSStringFromSelector(sel_establishConnectionToPid_withAssertion_legacyAssertion_endpoint_synchronizer_);
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        *buf = 138544642;
        v87 = v32;
        v88 = 2114;
        v89 = v34;
        v90 = 2048;
        selfCopy8 = self;
        v92 = 2114;
        v93 = @"_UIViewServiceHostSession.m";
        v94 = 1024;
        v95 = 350;
        v96 = 2114;
        v97 = v31;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v31 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189D1B244);
    }

    v15 = endpointCopy;
    if (!v15)
    {
      v35 = MEMORY[0x1E696AEC0];
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v38 = [v35 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"synchronizer", v37];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v39 = NSStringFromSelector(sel_establishConnectionToPid_withAssertion_legacyAssertion_endpoint_synchronizer_);
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        *buf = 138544642;
        v87 = v39;
        v88 = 2114;
        v89 = v41;
        v90 = 2048;
        selfCopy8 = self;
        v92 = 2114;
        v93 = @"_UIViewServiceHostSession.m";
        v94 = 1024;
        v95 = 351;
        v96 = 2114;
        v97 = v38;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v38 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189D1B360);
    }

    v16 = v15;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v42 = MEMORY[0x1E696AEC0];
      classForCoder2 = [v16 classForCoder];
      if (!classForCoder2)
      {
        classForCoder2 = objc_opt_class();
      }

      v44 = NSStringFromClass(classForCoder2);
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      v47 = [v42 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"synchronizer", v44, v46];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v48 = NSStringFromSelector(sel_establishConnectionToPid_withAssertion_legacyAssertion_endpoint_synchronizer_);
        v49 = objc_opt_class();
        v50 = NSStringFromClass(v49);
        *buf = 138544642;
        v87 = v48;
        v88 = 2114;
        v89 = v50;
        v90 = 2048;
        selfCopy8 = self;
        v92 = 2114;
        v93 = @"_UIViewServiceHostSession.m";
        v94 = 1024;
        v95 = 351;
        v96 = 2114;
        v97 = v47;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v47 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189D1B4A0);
    }

    v17 = pidCopy;
    if (!v17)
    {
      v51 = MEMORY[0x1E696AEC0];
      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      v54 = [v51 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"assertion", v53];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v55 = NSStringFromSelector(sel_establishConnectionToPid_withAssertion_legacyAssertion_endpoint_synchronizer_);
        v56 = objc_opt_class();
        v57 = NSStringFromClass(v56);
        *buf = 138544642;
        v87 = v55;
        v88 = 2114;
        v89 = v57;
        v90 = 2048;
        selfCopy8 = self;
        v92 = 2114;
        v93 = @"_UIViewServiceHostSession.m";
        v94 = 1024;
        v95 = 352;
        v96 = 2114;
        v97 = v54;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v54 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189D1B5BCLL);
    }

    v18 = v17;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v58 = MEMORY[0x1E696AEC0];
      classForCoder3 = [v18 classForCoder];
      if (!classForCoder3)
      {
        classForCoder3 = objc_opt_class();
      }

      v60 = NSStringFromClass(classForCoder3);
      v61 = objc_opt_class();
      v62 = NSStringFromClass(v61);
      v63 = [v58 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"assertion", v60, v62];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v64 = NSStringFromSelector(sel_establishConnectionToPid_withAssertion_legacyAssertion_endpoint_synchronizer_);
        v65 = objc_opt_class();
        v66 = NSStringFromClass(v65);
        *buf = 138544642;
        v87 = v64;
        v88 = 2114;
        v89 = v66;
        v90 = 2048;
        selfCopy8 = self;
        v92 = 2114;
        v93 = @"_UIViewServiceHostSession.m";
        v94 = 1024;
        v95 = 352;
        v96 = 2114;
        v97 = v63;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v63 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189D1B6FCLL);
    }

    v19 = assertionCopy;
    if (!v19)
    {
      v67 = MEMORY[0x1E696AEC0];
      v68 = objc_opt_class();
      v69 = NSStringFromClass(v68);
      v70 = [v67 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"legacyAssertion", v69];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v71 = NSStringFromSelector(sel_establishConnectionToPid_withAssertion_legacyAssertion_endpoint_synchronizer_);
        v72 = objc_opt_class();
        v73 = NSStringFromClass(v72);
        *buf = 138544642;
        v87 = v71;
        v88 = 2114;
        v89 = v73;
        v90 = 2048;
        selfCopy8 = self;
        v92 = 2114;
        v93 = @"_UIViewServiceHostSession.m";
        v94 = 1024;
        v95 = 353;
        v96 = 2114;
        v97 = v70;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v70 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189D1B814);
    }

    v20 = v19;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v74 = MEMORY[0x1E696AEC0];
      classForCoder4 = [v20 classForCoder];
      if (!classForCoder4)
      {
        classForCoder4 = objc_opt_class();
      }

      v76 = NSStringFromClass(classForCoder4);
      v77 = objc_opt_class();
      v78 = NSStringFromClass(v77);
      v79 = [v74 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"legacyAssertion", v76, v78];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v80 = NSStringFromSelector(sel_establishConnectionToPid_withAssertion_legacyAssertion_endpoint_synchronizer_);
        v81 = objc_opt_class();
        v82 = NSStringFromClass(v81);
        *buf = 138544642;
        v87 = v80;
        v88 = 2114;
        v89 = v82;
        v90 = 2048;
        selfCopy8 = self;
        v92 = 2114;
        v93 = @"_UIViewServiceHostSession.m";
        v94 = 1024;
        v95 = 353;
        v96 = 2114;
        v97 = v79;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v79 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189D1B950);
    }

    os_unfair_lock_lock((self + 40));
    if (*(self + 44) == 1)
    {
      _UIViewServiceHostSessionLogAssertionInfo(@"Clearing launch assertion after launch due to prior cancellation", *(self + 8), v18);
      [v18 invalidate];
      [v20 invalidate];
      os_unfair_lock_unlock((self + 40));
    }

    else
    {
      *(self + 48) = a2;
      objc_storeStrong((self + 56), pid);
      objc_storeStrong((self + 64), assertion);
      objc_storeStrong((self + 72), legacyAssertion);
      objc_storeStrong((self + 80), obj);
      os_unfair_lock_unlock((self + 40));
      WeakRetained = objc_loadWeakRetained((self + 32));
      [WeakRetained _viewServiceHostSessionDidConnectToClient:self];
    }
  }
}

- (id)sceneSynchronizer
{
  if (self)
  {
    os_unfair_lock_lock((self + 40));
    v2 = *(self + 80);
    os_unfair_lock_unlock((self + 40));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)connectionWithClientContextBuilder:(void *)builder replyHandler:
{
  v108 = *MEMORY[0x1E69E9840];
  v5 = a2;
  builderCopy = builder;
  if (self)
  {
    os_unfair_lock_lock((self + 40));
    if (*(self + 44) == 1)
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_lock_invalidated"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v26 = NSStringFromSelector(sel_connectionWithClientContextBuilder_replyHandler_);
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        *buf = 138544642;
        v97 = v26;
        v98 = 2114;
        v99 = v28;
        v100 = 2048;
        selfCopy9 = self;
        v102 = 2114;
        v103 = @"_UIViewServiceHostSession.m";
        v104 = 1024;
        v105 = 434;
        v106 = 2114;
        v107 = v25;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v25 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189D1C6B4);
    }

    v7 = *(self + 56);
    if (!v7)
    {
      v29 = MEMORY[0x1E696AEC0];
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      v32 = [v29 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"_lock_assertion", v31];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v33 = NSStringFromSelector(sel_connectionWithClientContextBuilder_replyHandler_);
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        *buf = 138544642;
        v97 = v33;
        v98 = 2114;
        v99 = v35;
        v100 = 2048;
        selfCopy9 = self;
        v102 = 2114;
        v103 = @"_UIViewServiceHostSession.m";
        v104 = 1024;
        v105 = 435;
        v106 = 2114;
        v107 = v32;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v32 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189D1C7CCLL);
    }

    v8 = v7;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v36 = MEMORY[0x1E696AEC0];
      classForCoder = [v8 classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v38 = NSStringFromClass(classForCoder);
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v41 = [v36 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"_lock_assertion", v38, v40];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v42 = NSStringFromSelector(sel_connectionWithClientContextBuilder_replyHandler_);
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        *buf = 138544642;
        v97 = v42;
        v98 = 2114;
        v99 = v44;
        v100 = 2048;
        selfCopy9 = self;
        v102 = 2114;
        v103 = @"_UIViewServiceHostSession.m";
        v104 = 1024;
        v105 = 435;
        v106 = 2114;
        v107 = v41;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v41 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189D1C908);
    }

    v9 = *(self + 64);
    if (!v9)
    {
      v45 = MEMORY[0x1E696AEC0];
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v48 = [v45 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"_lock_legacyAssertion", v47];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v49 = NSStringFromSelector(sel_connectionWithClientContextBuilder_replyHandler_);
        v50 = objc_opt_class();
        v51 = NSStringFromClass(v50);
        *buf = 138544642;
        v97 = v49;
        v98 = 2114;
        v99 = v51;
        v100 = 2048;
        selfCopy9 = self;
        v102 = 2114;
        v103 = @"_UIViewServiceHostSession.m";
        v104 = 1024;
        v105 = 436;
        v106 = 2114;
        v107 = v48;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v48 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189D1CA20);
    }

    v10 = v9;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v52 = MEMORY[0x1E696AEC0];
      classForCoder2 = [v10 classForCoder];
      if (!classForCoder2)
      {
        classForCoder2 = objc_opt_class();
      }

      v54 = NSStringFromClass(classForCoder2);
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      v57 = [v52 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"_lock_legacyAssertion", v54, v56];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v58 = NSStringFromSelector(sel_connectionWithClientContextBuilder_replyHandler_);
        v59 = objc_opt_class();
        v60 = NSStringFromClass(v59);
        *buf = 138544642;
        v97 = v58;
        v98 = 2114;
        v99 = v60;
        v100 = 2048;
        selfCopy9 = self;
        v102 = 2114;
        v103 = @"_UIViewServiceHostSession.m";
        v104 = 1024;
        v105 = 436;
        v106 = 2114;
        v107 = v57;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v57 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189D1CB5CLL);
    }

    v11 = *(self + 72);
    if (!v11)
    {
      v61 = MEMORY[0x1E696AEC0];
      v62 = objc_opt_class();
      v63 = NSStringFromClass(v62);
      v64 = [v61 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"_lock_endpoint", v63];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v65 = NSStringFromSelector(sel_connectionWithClientContextBuilder_replyHandler_);
        v66 = objc_opt_class();
        v67 = NSStringFromClass(v66);
        *buf = 138544642;
        v97 = v65;
        v98 = 2114;
        v99 = v67;
        v100 = 2048;
        selfCopy9 = self;
        v102 = 2114;
        v103 = @"_UIViewServiceHostSession.m";
        v104 = 1024;
        v105 = 437;
        v106 = 2114;
        v107 = v64;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v64 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189D1CC74);
    }

    v12 = v11;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v68 = MEMORY[0x1E696AEC0];
      classForCoder3 = [v12 classForCoder];
      if (!classForCoder3)
      {
        classForCoder3 = objc_opt_class();
      }

      v70 = NSStringFromClass(classForCoder3);
      v71 = objc_opt_class();
      v72 = NSStringFromClass(v71);
      v73 = [v68 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"_lock_endpoint", v70, v72];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v74 = NSStringFromSelector(sel_connectionWithClientContextBuilder_replyHandler_);
        v75 = objc_opt_class();
        v76 = NSStringFromClass(v75);
        *buf = 138544642;
        v97 = v74;
        v98 = 2114;
        v99 = v76;
        v100 = 2048;
        selfCopy9 = self;
        v102 = 2114;
        v103 = @"_UIViewServiceHostSession.m";
        v104 = 1024;
        v105 = 437;
        v106 = 2114;
        v107 = v73;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v73 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189D1CDB0);
    }

    v13 = *(self + 80);
    if (!v13)
    {
      v77 = MEMORY[0x1E696AEC0];
      v78 = objc_opt_class();
      v79 = NSStringFromClass(v78);
      v80 = [v77 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"_lock_synchronizer", v79];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v81 = NSStringFromSelector(sel_connectionWithClientContextBuilder_replyHandler_);
        v82 = objc_opt_class();
        v83 = NSStringFromClass(v82);
        *buf = 138544642;
        v97 = v81;
        v98 = 2114;
        v99 = v83;
        v100 = 2048;
        selfCopy9 = self;
        v102 = 2114;
        v103 = @"_UIViewServiceHostSession.m";
        v104 = 1024;
        v105 = 438;
        v106 = 2114;
        v107 = v80;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v80 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189D1CEC8);
    }

    v14 = v13;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v84 = MEMORY[0x1E696AEC0];
      classForCoder4 = [v14 classForCoder];
      if (!classForCoder4)
      {
        classForCoder4 = objc_opt_class();
      }

      v86 = NSStringFromClass(classForCoder4);
      v87 = objc_opt_class();
      v88 = NSStringFromClass(v87);
      v89 = [v84 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"_lock_synchronizer", v86, v88];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v90 = NSStringFromSelector(sel_connectionWithClientContextBuilder_replyHandler_);
        v91 = objc_opt_class();
        v92 = NSStringFromClass(v91);
        *buf = 138544642;
        v97 = v90;
        v98 = 2114;
        v99 = v92;
        v100 = 2048;
        selfCopy9 = self;
        v102 = 2114;
        v103 = @"_UIViewServiceHostSession.m";
        v104 = 1024;
        v105 = 438;
        v106 = 2114;
        v107 = v89;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v89 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189D1D004);
    }

    v15 = MEMORY[0x1E698F490];
    v16 = *(self + 72);
    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 3221225472;
    v94[2] = __77___UIViewServiceHostSession_connectionWithClientContextBuilder_replyHandler___block_invoke;
    v94[3] = &unk_1E71197B0;
    v94[4] = self;
    v95 = v5;
    v17 = [v15 connectionWithEndpoint:v16 clientContextBuilder:v94];
    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = __77___UIViewServiceHostSession_connectionWithClientContextBuilder_replyHandler___block_invoke_2;
    v93[3] = &unk_1E71197D8;
    v93[4] = self;
    v18 = [v17 extractNSXPCConnectionWithViewServiceConfigurator:v93];
    machQueue = [*(self + 80) machQueue];
    queue = [machQueue queue];
    [v18 _setQueue:queue];

    v21 = [_UIViewServiceNSXPCConnectionDelegate alloc];
    callOutQueue = [*(self + 80) callOutQueue];
    v23 = [(_UIViewServiceNSXPCConnectionDelegate *)v21 initWithCallOutQueue:callOutQueue replyHandler:builderCopy];

    [(_UIViewServiceNSXPCConnectionDelegate *)v23 stronglyRetainForConnection:v18];
    [v18 setDelegate:v23];
    [*(self + 88) addObject:v18];
    os_unfair_lock_unlock((self + 40));
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)invalidate
{
  if (self)
  {
    v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"_UIViewServiceHostSessionErrorDomain" code:4 userInfo:&unk_1EFE344C8];
    [(_UIViewServiceHostSession *)self cancelWithError:v2];
  }
}

- (void)connection:(id)connection didHaltWithEvent:(id)event
{
  v26 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  eventCopy = event;
  v8 = *(__UILogGetCategoryCachedImpl("ViewServiceHostSession", &connection_didHaltWithEvent____s_category) + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    [eventCopy isKnownToBeOnQueue];
    v10 = NSStringFromBOOL();
    [eventCopy isPermanent];
    v11 = NSStringFromBOOL();
    [eventCopy isLocalCancel];
    v12 = NSStringFromBOOL();
    *buf = 138413058;
    v19 = connectionCopy;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Connection %@ halted; onQueue:%@; permanent:%@; localCancel:%@;", buf, 0x2Au);
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    self->_lock_hasInvalidatedConnections = 1;
    [(NSHashTable *)self->_lock_connections removeObject:connectionCopy];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    lock_hasInvalidatedConnections = self->_lock_hasInvalidatedConnections;
    self->_lock_hasInvalidatedConnections = 1;
    [(NSHashTable *)self->_lock_connections removeObject:connectionCopy];
    os_unfair_lock_unlock(&self->_lock);
    if (!lock_hasInvalidatedConnections)
    {
      objc_initWeak(buf, self);
      v14 = dispatch_get_global_queue(0, 0);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __57___UIViewServiceHostSession_connection_didHaltWithEvent___block_invoke;
      v15[3] = &unk_1E70F2F80;
      objc_copyWeak(&v17, buf);
      v16 = connectionCopy;
      dispatch_async(v14, v15);

      objc_destroyWeak(&v17);
      objc_destroyWeak(buf);
    }
  }
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  os_unfair_lock_lock(&self->_lock);
  lock_invalidated = self->_lock_invalidated;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55___UIViewServiceHostSession_appendDescriptionToStream___block_invoke;
  v12[3] = &unk_1E70F5AF0;
  v6 = streamCopy;
  v13 = v6;
  selfCopy = self;
  v15 = lock_invalidated;
  [v6 appendProem:self block:v12];
  if (!lock_invalidated)
  {
    style = [v6 style];
    verbosity = [style verbosity];

    if (verbosity != 2)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __55___UIViewServiceHostSession_appendDescriptionToStream___block_invoke_2;
      v9[3] = &unk_1E70F35B8;
      v10 = v6;
      selfCopy2 = self;
      [v10 appendBodySectionWithName:0 block:v9];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

  return v5;
}

@end