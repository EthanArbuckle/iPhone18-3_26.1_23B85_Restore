@interface _LTDStreamStabilizer
- (EMTStablePrefixState)stabilizationState;
- (NSArray)stableSegments;
- (_LTDStreamStabilizer)init;
- (void)init;
- (void)reset;
- (void)setStableSegments:(id)a3;
@end

@implementation _LTDStreamStabilizer

- (_LTDStreamStabilizer)init
{
  v10.receiver = self;
  v10.super_class = _LTDStreamStabilizer;
  v2 = [(_LTDStreamStabilizer *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    stableSegments = v2->_stableSegments;
    v2->_stableSegments = MEMORY[0x277CBEBF8];

    v5 = [MEMORY[0x277D07200] stablePrefixState];
    stabilizationState = v3->_stabilizationState;
    v3->_stabilizationState = v5;

    v7 = _LTOSLogStabilization();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(_LTDStreamStabilizer *)&v3->_stabilizationState init];
    }

    v8 = v3;
  }

  return v3;
}

- (EMTStablePrefixState)stabilizationState
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v7 = __42___LTDStreamStabilizer_stabilizationState__block_invoke;
  v8 = &unk_2789B66E0;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v7(v3);

  os_unfair_lock_unlock(&self->_lock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (NSArray)stableSegments
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v7 = __38___LTDStreamStabilizer_stableSegments__block_invoke;
  v8 = &unk_2789B66E0;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v7(v3);

  os_unfair_lock_unlock(&self->_lock);
  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setStableSegments:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 copy];
  v6 = v5;
  v7 = MEMORY[0x277CBEBF8];
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__5;
  v34 = __Block_byref_object_dispose__5;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__5;
  v28 = __Block_byref_object_dispose__5;
  v29 = 0;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __42___LTDStreamStabilizer_setStableSegments___block_invoke;
  v19 = &unk_2789B6708;
  v22 = &v24;
  v23 = &v30;
  v20 = self;
  v9 = v8;
  v21 = v9;
  v10 = &v16;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v18(v10);

  os_unfair_lock_unlock(&self->_lock);
  v11 = _LTOSLogStabilization();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = v25[5];
    v14 = [MEMORY[0x277CBEA60] lt_stringArrayDebugDescription:{v31[5], v16, v17}];
    v15 = [MEMORY[0x277CBEA60] lt_stringArrayDebugDescription:v9];
    *buf = 134218499;
    v37 = v13;
    v38 = 2117;
    v39 = v14;
    v40 = 2117;
    v41 = v15;
    _os_log_debug_impl(&dword_232E53000, v11, OS_LOG_TYPE_DEBUG, "Changed segments for state %p from %{sensitive}@ to %{sensitive}@", buf, 0x20u);
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)reset
{
  v40 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__5;
  v32 = __Block_byref_object_dispose__5;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__5;
  v26 = __Block_byref_object_dispose__5;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__5;
  v20 = __Block_byref_object_dispose__5;
  v21 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v10 = __29___LTDStreamStabilizer_reset__block_invoke;
  v11 = &unk_2789B6730;
  v12 = self;
  v13 = &v28;
  v14 = &v22;
  v15 = &v16;
  v3 = v9;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v10(v3);

  os_unfair_lock_unlock(&self->_lock);
  v4 = _LTOSLogStabilization();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = v23[5];
    v7 = v17[5];
    v8 = [MEMORY[0x277CBEA60] lt_stringArrayDebugDescription:v29[5]];
    *buf = 134218499;
    v35 = v6;
    v36 = 2048;
    v37 = v7;
    v38 = 2117;
    v39 = v8;
    _os_log_debug_impl(&dword_232E53000, v4, OS_LOG_TYPE_DEBUG, "Resetting stabilization state from %p -> %p; clearing old segments: %{sensitive}@", buf, 0x20u);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)init
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = MEMORY[0x277CBEA60];
  v5 = *a2;
  v6 = a3;
  v7 = [v4 lt_stringArrayDebugDescription:v5];
  v9 = 134218242;
  v10 = v3;
  v11 = 2114;
  v12 = v7;
  _os_log_debug_impl(&dword_232E53000, v6, OS_LOG_TYPE_DEBUG, "Initializing _LTDStreamStabilizer with state %p and segments %{public}@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end