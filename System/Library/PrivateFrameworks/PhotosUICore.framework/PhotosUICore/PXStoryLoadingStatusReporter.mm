@interface PXStoryLoadingStatusReporter
- ($14D77461FF5D83CAEC4252578BA76F85)_lock_stateForClipIdentifier:(int64_t)identifier;
- (PXStoryLoadingStatusReporter)init;
- (unsigned)loadingStatusForClipIdentifier:(int64_t)identifier;
- (void)_lock_updateStatusForLoadingState:(id *)state error:(id)error clipIdentifier:(int64_t)identifier;
- (void)dealloc;
- (void)notifyLoadingStatus:(unsigned __int8)status error:(id)error forClipIdentifier:(int64_t)identifier;
- (void)notifyPreloadingCompleteForClipIdentifier:(int64_t)identifier;
- (void)notifyPreloadingProgress:(double)progress error:(id)error forClipIdentifier:(int64_t)identifier;
- (void)notifyStartedPreloadingClipIdentifier:(int64_t)identifier;
- (void)notifyUserDidNavigate;
- (void)notifyVisibility:(unsigned __int8)visibility forClipIdentifier:(int64_t)identifier;
@end

@implementation PXStoryLoadingStatusReporter

- (unsigned)loadingStatusForClipIdentifier:(int64_t)identifier
{
  os_unfair_lock_lock(&self->_lock);
  LOBYTE(identifier) = [(PXStoryLoadingStatusReporter *)self _lock_stateForClipIdentifier:identifier][3];
  os_unfair_lock_unlock(&self->_lock);
  return identifier;
}

- (void)notifyLoadingStatus:(unsigned __int8)status error:(id)error forClipIdentifier:(int64_t)identifier
{
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  v9 = [(PXStoryLoadingStatusReporter *)self _lock_stateForClipIdentifier:identifier];
  v9->var1 = status;
  [(PXStoryLoadingStatusReporter *)self _lock_updateStatusForLoadingState:v9 error:errorCopy clipIdentifier:identifier];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)notifyVisibility:(unsigned __int8)visibility forClipIdentifier:(int64_t)identifier
{
  os_unfair_lock_lock(&self->_lock);
  v7 = [(PXStoryLoadingStatusReporter *)self _lock_stateForClipIdentifier:identifier];
  v7->var2 = visibility;
  [(PXStoryLoadingStatusReporter *)self _lock_updateStatusForLoadingState:v7 error:0 clipIdentifier:identifier];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)notifyPreloadingCompleteForClipIdentifier:(int64_t)identifier
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PXStoryLoadingStatusReporter *)self _lock_stateForClipIdentifier:identifier];
  v5->var0 = 2;
  [(PXStoryLoadingStatusReporter *)self _lock_updateStatusForLoadingState:v5 error:0 clipIdentifier:identifier];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)notifyPreloadingProgress:(double)progress error:(id)error forClipIdentifier:(int64_t)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  if (errorCopy)
  {
    [(PXStoryLoadingStatusReporter *)self _lock_updateStatusForLoadingState:[(PXStoryLoadingStatusReporter *)self _lock_stateForClipIdentifier:identifier] error:errorCopy clipIdentifier:identifier];
  }

  else
  {
    v9 = [(PXStoryLoadingStatusReporter *)self log];
    v10 = v9;
    if ((identifier - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v11 = 134218240;
      logContext = [(PXStoryLoadingStatusReporter *)self logContext];
      v13 = 2048;
      progressCopy = progress;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_EVENT, identifier, "PXStoryClipLoadingProgress", "Context=%{signpost.telemetry:string2}lu %.2f", &v11, 0x16u);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)notifyStartedPreloadingClipIdentifier:(int64_t)identifier
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PXStoryLoadingStatusReporter *)self _lock_stateForClipIdentifier:identifier];
  v5->var0 = 1;
  [(PXStoryLoadingStatusReporter *)self _lock_updateStatusForLoadingState:v5 error:0 clipIdentifier:identifier];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)notifyUserDidNavigate
{
  os_unfair_lock_lock(&self->_lock);
  date = [MEMORY[0x1E695DF00] date];
  lock_lastUserActivity = self->_lock_lastUserActivity;
  self->_lock_lastUserActivity = date;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_updateStatusForLoadingState:(id *)state error:(id)error clipIdentifier:(int64_t)identifier
{
  v38 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  var2 = state->var2;
  if (var2 == 2)
  {
    var1 = state->var1;
    v13 = var1 >= 5;
    v14 = 8 * var1;
    v15 = 134678022;
  }

  else
  {
    if (var2 != 1)
    {
      if (state->var2)
      {
        v11 = 0;
      }

      else
      {
        var0 = state->var0;
        if (var0 == 2)
        {
          v11 = 2;
        }

        else
        {
          v11 = var0 == 1;
        }
      }

      goto LABEL_13;
    }

    v12 = state->var1;
    v13 = v12 >= 5;
    v14 = 8 * v12;
    v15 = 84148995;
  }

  v17 = (v15 & 0xFFFF0000FFFFFFFFLL | 0x900000000) >> v14;
  if (v13)
  {
    v11 = 0;
  }

  else
  {
    v11 = v17;
  }

LABEL_13:
  if (state->var3 != v11)
  {
    v18 = PXStoryClipLoadingStatusDescription(v11);
    v19 = [(PXStoryLoadingStatusReporter *)self log];
    v20 = v19;
    v21 = identifier - 1;
    if ((identifier - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      v28 = 134217984;
      logContext = [(PXStoryLoadingStatusReporter *)self logContext];
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v20, OS_SIGNPOST_INTERVAL_END, identifier, "PXStoryClipLoadingStatus", "Context=%{signpost.telemetry:string2}lu ", &v28, 0xCu);
    }

    v22 = [(PXStoryLoadingStatusReporter *)self log];
    v23 = v22;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      logContext2 = [(PXStoryLoadingStatusReporter *)self logContext];
      v28 = 134219010;
      logContext = logContext2;
      v30 = 2048;
      identifierCopy2 = identifier;
      v32 = 1024;
      v33 = v11;
      v34 = 2114;
      v35 = v18;
      v36 = 2114;
      v37 = errorCopy;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v23, OS_SIGNPOST_EVENT, identifier, "PXStoryClipLoadingStatus", "Context=%{signpost.telemetry:string2}lu ClipIdentifier=%{signpost.description:attribute}ld Status=%{signpost.description:attribute}d Description=%{signpost.description:attribute,public}@ Error=%{signpost.description:attribute,public}@", &v28, 0x30u);
    }

    v25 = [(PXStoryLoadingStatusReporter *)self log];
    v26 = v25;
    if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      logContext3 = [(PXStoryLoadingStatusReporter *)self logContext];
      v28 = 134219010;
      logContext = logContext3;
      v30 = 2048;
      identifierCopy2 = identifier;
      v32 = 1024;
      v33 = v11;
      v34 = 2114;
      v35 = v18;
      v36 = 2114;
      v37 = errorCopy;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v26, OS_SIGNPOST_INTERVAL_BEGIN, identifier, "PXStoryClipLoadingStatus", "Context=%{signpost.telemetry:string2}lu ClipIdentifier=%{signpost.description:attribute}ld Status=%{signpost.description:attribute}d Description=%{signpost.description:attribute,public}@ Error=%{signpost.description:attribute,public}@", &v28, 0x30u);
    }
  }

  state->var3 = v11;
}

- ($14D77461FF5D83CAEC4252578BA76F85)_lock_stateForClipIdentifier:(int64_t)identifier
{
  os_unfair_lock_assert_owner(&self->_lock);
  lock_stateIndexByClipIdentifier = self->_lock_stateIndexByClipIdentifier;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:identifier];
  v7 = [(NSMutableDictionary *)lock_stateIndexByClipIdentifier objectForKeyedSubscript:v6];

  if (!v7)
  {
    [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_lock_statesCount];
    objc_claimAutoreleasedReturnValue();
    ++self->_lock_statesCount;
    _PXGArrayCapacityResizeToCount();
  }

  lock_states = self->_lock_states;
  v9 = &lock_states[[v7 integerValue]];

  return v9;
}

- (void)dealloc
{
  free(self->_lock_states);
  v3.receiver = self;
  v3.super_class = PXStoryLoadingStatusReporter;
  [(PXStoryLoadingStatusReporter *)&v3 dealloc];
}

- (PXStoryLoadingStatusReporter)init
{
  if (PFOSVariantHasInternalDiagnostics())
  {
    v9.receiver = self;
    v9.super_class = PXStoryLoadingStatusReporter;
    v3 = [(PXStoryLoadingStatusReporter *)&v9 init];
    v4 = v3;
    if (v3)
    {
      v3->_lock._os_unfair_lock_opaque = 0;
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      lock_stateIndexByClipIdentifier = v4->_lock_stateIndexByClipIdentifier;
      v4->_lock_stateIndexByClipIdentifier = v5;
    }

    self = v4;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end