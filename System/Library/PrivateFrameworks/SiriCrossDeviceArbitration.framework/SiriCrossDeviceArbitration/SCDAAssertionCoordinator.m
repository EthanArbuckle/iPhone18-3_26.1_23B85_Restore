@interface SCDAAssertionCoordinator
- (NSString)description;
- (SCDAAssertionCoordinator)initWithIdentifier:(id)a3 queue:(id)a4 delegate:(id)a5;
- (id)acquireRelinquishableAssertionWithContext:(id)a3 relinquishmentHandler:(id)a4;
- (unint64_t)numberOfActiveAssertions;
- (unint64_t)numberOfPendingAndActiveAssertions;
- (void)_activateAssertionWithUUID:(id)a3;
- (void)_addAssertion:(id)a3;
- (void)_deactivateAndRemoveAssertionWithUUID:(id)a3 context:(id)a4 error:(id)a5 options:(unint64_t)a6;
- (void)_invalidate;
- (void)barrier:(id)a3;
- (void)dealloc;
- (void)getActiveAssertionsWithCompletion:(id)a3;
- (void)getPendingAndActiveAssertionsWithCompletion:(id)a3;
- (void)invalidate;
- (void)relinquishAsertionsPassingTest:(id)a3 context:(id)a4;
- (void)relinquishAsertionsPassingTest:(id)a3 error:(id)a4;
- (void)relinquishAssertionWithUUID:(id)a3 context:(id)a4 options:(unint64_t)a5;
- (void)relinquishAssertionWithUUID:(id)a3 error:(id)a4 options:(unint64_t)a5;
@end

@implementation SCDAAssertionCoordinator

- (void)_invalidate
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v22 = "[SCDAAssertionCoordinator _invalidate]";
    _os_log_debug_impl(&dword_1DA758000, v3, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v4 = [(NSMutableDictionary *)self->_assertionsByUUID allKeys];
  v5 = [v4 copy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v18;
    *&v8 = 136315394;
    v16 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        v13 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
        {
          *buf = v16;
          v22 = "[SCDAAssertionCoordinator _invalidate]";
          v23 = 2112;
          v24 = self;
          _os_log_error_impl(&dword_1DA758000, v13, OS_LOG_TYPE_ERROR, "%s %@ Invalidated", buf, 0x16u);
        }

        v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kSCDAErrorDomain" code:42 userInfo:{0, v16, v17}];
        [(SCDAAssertionCoordinator *)self _deactivateAndRemoveAssertionWithUUID:v12 context:0 error:v14 options:0];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_deactivateAndRemoveAssertionWithUUID:(id)a3 context:(id)a4 error:(id)a5 options:(unint64_t)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    v26 = v13;
    v27 = SCDAAssertionRelinquishmentOptionsGetNames(a6);
    v28 = 136316162;
    v29 = "[SCDAAssertionCoordinator _deactivateAndRemoveAssertionWithUUID:context:error:options:]";
    v30 = 2112;
    v31 = v10;
    v32 = 2112;
    v33 = v11;
    v34 = 2112;
    v35 = v12;
    v36 = 2112;
    v37 = v27;
    _os_log_debug_impl(&dword_1DA758000, v26, OS_LOG_TYPE_DEBUG, "%s assertionUUID = %@, context = %@, error = %@, options = %@", &v28, 0x34u);

    if (!v10)
    {
      goto LABEL_16;
    }
  }

  else if (!v10)
  {
    goto LABEL_16;
  }

  v14 = [(NSMutableDictionary *)self->_assertionsByUUID objectForKey:v10];
  if (v14)
  {
    v15 = [(NSMutableSet *)self->_activeAssertionUUIDs containsObject:v10];
    if ((a6 & 1) != 0 && v15)
    {
      v16 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
      {
        v28 = 136315394;
        v29 = "[SCDAAssertionCoordinator _deactivateAndRemoveAssertionWithUUID:context:error:options:]";
        v30 = 2112;
        v31 = v14;
        _os_log_debug_impl(&dword_1DA758000, v16, OS_LOG_TYPE_DEBUG, "%s Skipped deactivating %@ because it is active and requested inactive only.", &v28, 0x16u);
      }
    }

    else
    {
      if (v15)
      {
        atomic_fetch_add(&self->_numberOfActiveAssertions, 0xFFFFFFFFFFFFFFFFLL);
        v17 = [(NSMutableSet *)self->_activeAssertionUUIDs count];
        [(NSMutableSet *)self->_activeAssertionUUIDs removeObject:v10];
        v18 = [(NSMutableSet *)self->_activeAssertionUUIDs count];
        v19 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
        {
          v28 = 136315650;
          v29 = "[SCDAAssertionCoordinator _deactivateAndRemoveAssertionWithUUID:context:error:options:]";
          v30 = 2048;
          v31 = v17;
          v32 = 2048;
          v33 = v18;
          _os_log_debug_impl(&dword_1DA758000, v19, OS_LOG_TYPE_DEBUG, "%s numberOfActiveAssertions: %llu -> %llu", &v28, 0x20u);
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained assertionCoordinator:self didDeactivateAssertion:v14 isLastAssertion:v18 == 0];
      }

      [v14 invokeRelinquishmentHandlerWithContext:v11 error:v12];
      v21 = [(NSMutableDictionary *)self->_assertionsByUUID count];
      [(NSMutableDictionary *)self->_assertionsByUUID removeObjectForKey:v10];
      v22 = [(NSMutableDictionary *)self->_assertionsByUUID count];
      v23 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
      {
        v28 = 136315650;
        v29 = "[SCDAAssertionCoordinator _deactivateAndRemoveAssertionWithUUID:context:error:options:]";
        v30 = 2048;
        v31 = v21;
        v32 = 2048;
        v33 = v22;
        _os_log_debug_impl(&dword_1DA758000, v23, OS_LOG_TYPE_DEBUG, "%s numberOfAssertions: %llu -> %llu", &v28, 0x20u);
      }

      v24 = objc_loadWeakRetained(&self->_delegate);
      [v24 assertionCoordinator:self didRemoveAssertion:v14 isLastAssertion:v22 == 0];
    }
  }

LABEL_16:
  v25 = *MEMORY[0x1E69E9840];
}

- (void)_activateAssertionWithUUID:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "[SCDAAssertionCoordinator _activateAssertionWithUUID:]";
    *&buf[12] = 2112;
    *&buf[14] = v4;
    _os_log_debug_impl(&dword_1DA758000, v5, OS_LOG_TYPE_DEBUG, "%s assertionUUID = %@", buf, 0x16u);
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else if (!v4)
  {
    goto LABEL_12;
  }

  if (([(NSMutableSet *)self->_activeAssertionUUIDs containsObject:v4]& 1) == 0)
  {
    v6 = [(NSMutableDictionary *)self->_assertionsByUUID objectForKey:v4];
    if (v6)
    {
      atomic_fetch_add(&self->_numberOfActiveAssertions, 1uLL);
      v7 = [(NSMutableSet *)self->_activeAssertionUUIDs count];
      [(NSMutableSet *)self->_activeAssertionUUIDs addObject:v4];
      *&v8 = COERCE_DOUBLE([(NSMutableSet *)self->_activeAssertionUUIDs count]);
      v9 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "[SCDAAssertionCoordinator _activateAssertionWithUUID:]";
        *&buf[12] = 2048;
        *&buf[14] = v7;
        *&buf[22] = 2048;
        v36 = *&v8;
        _os_log_debug_impl(&dword_1DA758000, v9, OS_LOG_TYPE_DEBUG, "%s numberOfActiveAssertions: %llu -> %llu", buf, 0x20u);
      }

      v10 = v7 == 0;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained assertionCoordinator:self didActivateAssertion:v6 isFirstAssertion:v10];

      v12 = [v6 context];
      [v12 expirationDuration];
      v14 = v13;

      if (v14 > 0.0)
      {
        objc_initWeak(&location, self);
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __55__SCDAAssertionCoordinator__activateAssertionWithUUID___block_invoke;
        v30[3] = &unk_1E85D2DD0;
        objc_copyWeak(&v33, &location);
        v15 = v6;
        v31 = v15;
        v32 = v4;
        v16 = MEMORY[0x1E1270630](v30);
        v17 = [v15 context];
        v18 = [v17 effectiveDate];

        [v18 timeIntervalSinceNow];
        v20 = v19;
        v21 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "[SCDAAssertionCoordinator _activateAssertionWithUUID:]";
          *&buf[12] = 2112;
          *&buf[14] = v15;
          *&buf[22] = 2048;
          v36 = v14 + v20;
          _os_log_debug_impl(&dword_1DA758000, v21, OS_LOG_TYPE_DEBUG, "%s Deactivating %@ in %f seconds...", buf, 0x20u);
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v36 = COERCE_DOUBLE(__Block_byref_object_copy_);
        v37 = __Block_byref_object_dispose_;
        v38 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
        v22 = *(*&buf[8] + 40);
        v23 = SCDADispatchTimeGetFromDateAndOffset(v18, v14);
        dispatch_source_set_timer(v22, v23, 0xFFFFFFFFFFFFFFFFLL, 0);
        v24 = *(*&buf[8] + 40);
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __55__SCDAAssertionCoordinator__activateAssertionWithUUID___block_invoke_107;
        v27[3] = &unk_1E85D2DA8;
        v28 = v16;
        v29 = buf;
        v25 = v16;
        dispatch_source_set_event_handler(v24, v27);
        dispatch_resume(*(*&buf[8] + 40));

        _Block_object_dispose(buf, 8);
        objc_destroyWeak(&v33);
        objc_destroyWeak(&location);
      }
    }
  }

LABEL_12:

  v26 = *MEMORY[0x1E69E9840];
}

void __55__SCDAAssertionCoordinator__activateAssertionWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      v8 = 136315394;
      v9 = "[SCDAAssertionCoordinator _activateAssertionWithUUID:]_block_invoke";
      v10 = 2112;
      v11 = v7;
      _os_log_debug_impl(&dword_1DA758000, v5, OS_LOG_TYPE_DEBUG, "%s Deactivating %@ now...", &v8, 0x16u);
    }

    [WeakRetained _deactivateAndRemoveAssertionWithUUID:*(a1 + 40) context:v3 error:0 options:0];
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __55__SCDAAssertionCoordinator__activateAssertionWithUUID___block_invoke_107(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [SCDAAssertionContext newWithBuilder:&__block_literal_global_442];
  (*(v2 + 16))(v2, v3);

  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (v4)
  {
    dispatch_source_cancel(v4);
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

void __55__SCDAAssertionCoordinator__activateAssertionWithUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setTimestamp:mach_absolute_time()];
  [v2 setReason:@"Expired on Schedule"];
}

- (void)_addAssertion:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "[SCDAAssertionCoordinator _addAssertion:]";
    *&buf[12] = 2112;
    *&buf[14] = v4;
    _os_log_debug_impl(&dword_1DA758000, v5, OS_LOG_TYPE_DEBUG, "%s assertion = %@", buf, 0x16u);
    if (!v4)
    {
      goto LABEL_22;
    }

LABEL_3:
    v6 = [v4 context];
    v7 = [v6 effectiveDate];

    v8 = [v4 context];
    [v8 expirationDuration];
    v10 = v9;

    if (v10 >= 0.0)
    {
      [v7 timeIntervalSinceNow];
      v13 = v12;
      if (v12 >= 0.0 || v10 <= 0.0 || (v14 = v10 + v12, v14 >= 0.0))
      {
        v15 = [v4 uuid];
        v16 = [(NSMutableDictionary *)self->_assertionsByUUID count];
        [(NSMutableDictionary *)self->_assertionsByUUID setObject:v4 forKey:v15];
        v17 = [(NSMutableDictionary *)self->_assertionsByUUID count];
        v18 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "[SCDAAssertionCoordinator _addAssertion:]";
          *&buf[12] = 2048;
          *&buf[14] = v16;
          *&buf[22] = 2048;
          v40 = v17;
          _os_log_debug_impl(&dword_1DA758000, v18, OS_LOG_TYPE_DEBUG, "%s numberOfAssertions: %llu -> %llu", buf, 0x20u);
        }

        v19 = v16 == 0;
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained assertionCoordinator:self didAddAssertion:v4 isFirstAssertion:v19];

        objc_initWeak(&location, self);
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __42__SCDAAssertionCoordinator__addAssertion___block_invoke;
        v34[3] = &unk_1E85D2D80;
        objc_copyWeak(&v37, &location);
        v21 = v4;
        v35 = v21;
        v22 = v15;
        v36 = v22;
        v23 = MEMORY[0x1E1270630](v34);
        v24 = v23;
        if (v13 <= 0.0)
        {
          (*(v23 + 16))(v23);
        }

        else
        {
          v25 = SCDALogContextCore;
          if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            *&buf[4] = "[SCDAAssertionCoordinator _addAssertion:]";
            *&buf[12] = 2112;
            *&buf[14] = v21;
            *&buf[22] = 2048;
            v40 = *&v13;
            _os_log_debug_impl(&dword_1DA758000, v25, OS_LOG_TYPE_DEBUG, "%s Activating %@ in %f seconds...", buf, 0x20u);
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v40 = __Block_byref_object_copy_;
          v41 = __Block_byref_object_dispose_;
          v42 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
          v26 = *(*&buf[8] + 40);
          v27 = SCDADispatchTimeGetFromDateAndOffset(v7, 0.0);
          dispatch_source_set_timer(v26, v27, 0xFFFFFFFFFFFFFFFFLL, 0);
          v28 = *(*&buf[8] + 40);
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __42__SCDAAssertionCoordinator__addAssertion___block_invoke_105;
          v31[3] = &unk_1E85D2DA8;
          v32 = v24;
          v33 = buf;
          dispatch_source_set_event_handler(v28, v31);
          dispatch_resume(*(*&buf[8] + 40));

          _Block_object_dispose(buf, 8);
        }

        objc_destroyWeak(&v37);
        objc_destroyWeak(&location);
        goto LABEL_21;
      }

      v29 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "[SCDAAssertionCoordinator _addAssertion:]";
        *&buf[12] = 2112;
        *&buf[14] = v4;
        *&buf[22] = 2048;
        v40 = *&v14;
        _os_log_error_impl(&dword_1DA758000, v29, OS_LOG_TYPE_ERROR, "%s %@ expired %f seconds ago.", buf, 0x20u);
      }
    }

    else
    {
      v11 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "[SCDAAssertionCoordinator _addAssertion:]";
        *&buf[12] = 2112;
        *&buf[14] = v4;
        *&buf[22] = 2048;
        v40 = *&v10;
        _os_log_error_impl(&dword_1DA758000, v11, OS_LOG_TYPE_ERROR, "%s %@ contains invalid expiration duration %f.", buf, 0x20u);
      }
    }

    v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kSCDAErrorDomain" code:31 userInfo:0];
    [v4 invokeRelinquishmentHandlerWithContext:0 error:v22];
LABEL_21:

    goto LABEL_22;
  }

  if (v4)
  {
    goto LABEL_3;
  }

LABEL_22:

  v30 = *MEMORY[0x1E69E9840];
}

void __42__SCDAAssertionCoordinator__addAssertion___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v6 = 136315394;
      v7 = "[SCDAAssertionCoordinator _addAssertion:]_block_invoke";
      v8 = 2112;
      v9 = v5;
      _os_log_debug_impl(&dword_1DA758000, v3, OS_LOG_TYPE_DEBUG, "%s Activating %@ now...", &v6, 0x16u);
    }

    [WeakRetained _activateAssertionWithUUID:*(a1 + 40)];
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __42__SCDAAssertionCoordinator__addAssertion___block_invoke_105(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

- (void)invalidate
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "[SCDAAssertionCoordinator invalidate]";
    v9 = 2112;
    v10 = self;
    _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__SCDAAssertionCoordinator_invalidate__block_invoke;
  block[3] = &unk_1E85D3850;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)barrier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__SCDAAssertionCoordinator_barrier___block_invoke;
    block[3] = &unk_1E85D3598;
    v8 = v4;
    dispatch_async(queue, block);
  }
}

- (void)getActiveAssertionsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62__SCDAAssertionCoordinator_getActiveAssertionsWithCompletion___block_invoke;
    v7[3] = &unk_1E85D32E8;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

void __62__SCDAAssertionCoordinator_getActiveAssertionsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) count];
  if (v2)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v2];
    v7 = *(a1 + 32);
    v8 = *(v7 + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__SCDAAssertionCoordinator_getActiveAssertionsWithCompletion___block_invoke_2;
    v10[3] = &unk_1E85D2D58;
    v10[4] = v7;
    v9 = v6;
    v11 = v9;
    [v8 enumerateObjectsUsingBlock:v10];
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v9, v3, v4, v5);
}

uint64_t __62__SCDAAssertionCoordinator_getActiveAssertionsWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 32) objectForKey:a2];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  return MEMORY[0x1EEE66BB8]();
}

- (unint64_t)numberOfActiveAssertions
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(&self->_numberOfActiveAssertions);
  if ((v2 & 0x8000000000000000) != 0)
  {
    v3 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[SCDAAssertionCoordinator numberOfActiveAssertions]";
      v8 = 2048;
      v9 = v2;
      _os_log_error_impl(&dword_1DA758000, v3, OS_LOG_TYPE_ERROR, "%s numberOfActiveAssertions is %lld", &v6, 0x16u);
    }

    v2 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)getPendingAndActiveAssertionsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__SCDAAssertionCoordinator_getPendingAndActiveAssertionsWithCompletion___block_invoke;
    v7[3] = &unk_1E85D32E8;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

void __72__SCDAAssertionCoordinator_getPendingAndActiveAssertionsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) count];
  if (v2)
  {
    v3 = v2;
    v4 = [*(*(a1 + 32) + 48) count];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
      v7 = objc_alloc(MEMORY[0x1E695DF70]);
      if (v3 >= v5)
      {
        v8 = v3 - v5;
      }

      else
      {
        v8 = 0;
      }

      v9 = [v7 initWithCapacity:v8];
      v10 = *(a1 + 32);
      v11 = *(v10 + 32);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __72__SCDAAssertionCoordinator_getPendingAndActiveAssertionsWithCompletion___block_invoke_2;
      v14[3] = &unk_1E85D2D30;
      v14[4] = v10;
      v12 = v6;
      v15 = v12;
      v13 = v9;
      v16 = v13;
      [v11 enumerateKeysAndObjectsUsingBlock:v14];
    }

    else
    {
      v13 = [*(*(a1 + 32) + 32) allValues];
      v12 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
    v12 = MEMORY[0x1E695E0F0];
  }

  (*(*(a1 + 40) + 16))();
}

void __72__SCDAAssertionCoordinator_getPendingAndActiveAssertionsWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 48);
  v8 = a3;
  v6 = [v5 containsObject:a2];
  v7 = 48;
  if (v6)
  {
    v7 = 40;
  }

  [*(a1 + v7) addObject:v8];
}

- (unint64_t)numberOfPendingAndActiveAssertions
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(&self->_numberOfAssertions);
  if ((v2 & 0x8000000000000000) != 0)
  {
    v3 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[SCDAAssertionCoordinator numberOfPendingAndActiveAssertions]";
      v8 = 2048;
      v9 = v2;
      _os_log_error_impl(&dword_1DA758000, v3, OS_LOG_TYPE_ERROR, "%s numberOfPendingAndActiveAssertions is %lld", &v6, 0x16u);
    }

    v2 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)relinquishAsertionsPassingTest:(id)a3 error:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[SCDAAssertionCoordinator relinquishAsertionsPassingTest:error:]";
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_1DA758000, v8, OS_LOG_TYPE_INFO, "%s error = %@", buf, 0x16u);
  }

  if (v6)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__SCDAAssertionCoordinator_relinquishAsertionsPassingTest_error___block_invoke;
    block[3] = &unk_1E85D37D8;
    block[4] = self;
    v13 = v6;
    v12 = v7;
    dispatch_async(queue, block);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __65__SCDAAssertionCoordinator_relinquishAsertionsPassingTest_error___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = *(*(a1 + 32) + 32);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__SCDAAssertionCoordinator_relinquishAsertionsPassingTest_error___block_invoke_2;
  v17[3] = &unk_1E85D2D08;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v19 = v4;
  v17[4] = v5;
  v6 = v2;
  v18 = v6;
  [v3 enumerateKeysAndObjectsUsingBlock:v17];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(a1 + 32) _deactivateAndRemoveAssertionWithUUID:*(*(&v13 + 1) + 8 * v11++) context:0 error:*(a1 + 40) options:{0, v13}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v20 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __65__SCDAAssertionCoordinator_relinquishAsertionsPassingTest_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = *(a1 + 48);
  v6 = *(*(a1 + 32) + 48);
  v7 = a3;
  LODWORD(v5) = (*(v5 + 16))(v5, v7, [v6 containsObject:v8]);

  if (v5)
  {
    [*(a1 + 40) addObject:v8];
  }
}

- (void)relinquishAsertionsPassingTest:(id)a3 context:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[SCDAAssertionCoordinator relinquishAsertionsPassingTest:context:]";
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_1DA758000, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  if (v6)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__SCDAAssertionCoordinator_relinquishAsertionsPassingTest_context___block_invoke;
    block[3] = &unk_1E85D37D8;
    block[4] = self;
    v13 = v6;
    v12 = v7;
    dispatch_async(queue, block);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __67__SCDAAssertionCoordinator_relinquishAsertionsPassingTest_context___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = *(*(a1 + 32) + 32);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__SCDAAssertionCoordinator_relinquishAsertionsPassingTest_context___block_invoke_2;
  v17[3] = &unk_1E85D2D08;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v19 = v4;
  v17[4] = v5;
  v6 = v2;
  v18 = v6;
  [v3 enumerateKeysAndObjectsUsingBlock:v17];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(a1 + 32) _deactivateAndRemoveAssertionWithUUID:*(*(&v13 + 1) + 8 * v11++) context:*(a1 + 40) error:0 options:{0, v13}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v20 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __67__SCDAAssertionCoordinator_relinquishAsertionsPassingTest_context___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = *(a1 + 48);
  v6 = *(*(a1 + 32) + 48);
  v7 = a3;
  LODWORD(v5) = (*(v5 + 16))(v5, v7, [v6 containsObject:v8]);

  if (v5)
  {
    [*(a1 + 40) addObject:v8];
  }
}

- (void)relinquishAssertionWithUUID:(id)a3 error:(id)a4 options:(unint64_t)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = SCDAAssertionRelinquishmentOptionsGetNames(a5);
    *buf = 136315906;
    v22 = "[SCDAAssertionCoordinator relinquishAssertionWithUUID:error:options:]";
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&dword_1DA758000, v11, OS_LOG_TYPE_INFO, "%s assertionUUID = %@, error = %@, options = %@", buf, 0x2Au);
  }

  queue = self->_queue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__SCDAAssertionCoordinator_relinquishAssertionWithUUID_error_options___block_invoke;
  v17[3] = &unk_1E85D2CE0;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = a5;
  v14 = v9;
  v15 = v8;
  dispatch_async(queue, v17);

  v16 = *MEMORY[0x1E69E9840];
}

- (void)relinquishAssertionWithUUID:(id)a3 context:(id)a4 options:(unint64_t)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = SCDAAssertionRelinquishmentOptionsGetNames(a5);
    *buf = 136315906;
    v22 = "[SCDAAssertionCoordinator relinquishAssertionWithUUID:context:options:]";
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&dword_1DA758000, v11, OS_LOG_TYPE_INFO, "%s assertionUUID = %@, context = %@, options = %@", buf, 0x2Au);
  }

  queue = self->_queue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__SCDAAssertionCoordinator_relinquishAssertionWithUUID_context_options___block_invoke;
  v17[3] = &unk_1E85D2CE0;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = a5;
  v14 = v9;
  v15 = v8;
  dispatch_async(queue, v17);

  v16 = *MEMORY[0x1E69E9840];
}

- (id)acquireRelinquishableAssertionWithContext:(id)a3 relinquishmentHandler:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v28 = "[SCDAAssertionCoordinator acquireRelinquishableAssertionWithContext:relinquishmentHandler:]";
    v29 = 2112;
    v30 = v6;
    _os_log_impl(&dword_1DA758000, v8, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
  }

  atomic_fetch_add(&self->_numberOfAssertions, 1uLL);
  v9 = [_SCDAAssertionImpl alloc];
  v10 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __92__SCDAAssertionCoordinator_acquireRelinquishableAssertionWithContext_relinquishmentHandler___block_invoke;
  v25[3] = &unk_1E85D2CB8;
  v25[4] = self;
  v26 = v7;
  v11 = v7;
  v12 = [(_SCDAAssertionImpl *)v9 initWithUUID:v10 context:v6 relinquishmentHandler:v25];

  queue = self->_queue;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __92__SCDAAssertionCoordinator_acquireRelinquishableAssertionWithContext_relinquishmentHandler___block_invoke_2;
  v22 = &unk_1E85D38A0;
  v23 = self;
  v24 = v12;
  v14 = v12;
  dispatch_async(queue, &v19);
  v15 = [_SCDAAssertionProxy alloc];
  v16 = [(_SCDAAssertionProxy *)v15 initWithImpl:v14 coordinator:self, v19, v20, v21, v22, v23];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

uint64_t __92__SCDAAssertionCoordinator_acquireRelinquishableAssertionWithContext_relinquishmentHandler___block_invoke(uint64_t a1)
{
  atomic_fetch_add((*(a1 + 32) + 24), 0xFFFFFFFFFFFFFFFFLL);
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "[SCDAAssertionCoordinator dealloc]";
    v8 = 2112;
    v9 = self;
    _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  [(SCDAAssertionCoordinator *)self _invalidate];
  v5.receiver = self;
  v5.super_class = SCDAAssertionCoordinator;
  [(SCDAAssertionCoordinator *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (SCDAAssertionCoordinator)initWithIdentifier:(id)a3 queue:(id)a4 delegate:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = SCDAAssertionCoordinator;
  v11 = [(SCDAAssertionCoordinator *)&v21 init];
  if (v11)
  {
    v12 = [v8 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    objc_storeStrong(&v11->_queue, a4);
    objc_storeWeak(&v11->_delegate, v10);
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    assertionsByUUID = v11->_assertionsByUUID;
    v11->_assertionsByUUID = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    activeAssertionUUIDs = v11->_activeAssertionUUIDs;
    v11->_activeAssertionUUIDs = v16;

    v18 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v23 = "[SCDAAssertionCoordinator initWithIdentifier:queue:delegate:]";
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_1DA758000, v18, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7.receiver = self;
  v7.super_class = SCDAAssertionCoordinator;
  v4 = [(SCDAAssertionCoordinator *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ {identifier = %@, numberOfAssertions = %llu/%llu}", v4, self->_identifier, -[SCDAAssertionCoordinator numberOfActiveAssertions](self, "numberOfActiveAssertions"), -[SCDAAssertionCoordinator numberOfPendingAndActiveAssertions](self, "numberOfPendingAndActiveAssertions")];

  return v5;
}

@end