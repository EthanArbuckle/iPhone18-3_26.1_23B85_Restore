@interface UIUpdateCycleNotifyIdle
@end

@implementation UIUpdateCycleNotifyIdle

void ___UIUpdateCycleNotifyIdle_block_invoke(void *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = mach_absolute_time();
  v3 = a1[4];
  v4 = v2 - v3;
  if (v2 - v3 > a1[5])
  {
    v5 = *(__UILogGetCategoryCachedImpl("UpdateCycleIdleScheduler", &qword_1ED49A958) + 8);
    if (os_signpost_enabled(v5))
    {
      v6 = a1[6];
      *buf = 134217984;
      v33 = v4 / v6;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SkipNotify", "After scheduling, elapsed=%.2f", buf, 0xCu);
    }

    _MergedGlobals_11_6 = 0;
    return;
  }

  v7 = a1[6];
  v8 = a1[7];
  _isNotifyingIdleObservers = 1;
  v9 = mach_absolute_time();
  v10 = *(__UILogGetCategoryCachedImpl("UpdateCycleIdleScheduler", &qword_1ED49A930) + 8);
  v11 = v7;
  if (os_signpost_enabled(v10))
  {
    *buf = 134217984;
    v33 = (v9 - v3) / v7;
    _os_signpost_emit_with_name_impl(&dword_188A29000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NotifyIdleObservers", "elapsedAtStart=%.2f", buf, 0xCu);
  }

  if (_UIInternalPreferenceUsesDefault(&unk_1ED48B270, @"IdleSchedulerMaximumFractionToContinue", _UIInternalPreferenceUpdateDouble))
  {
    if (_UIUpdateCycleEnabled())
    {
      v12 = 0.8;
    }

    else
    {
      v12 = 0.6;
    }
  }

  else
  {
    v12 = *&qword_1ED48B278;
  }

  v13 = qword_1ED49A928;
  v14 = qword_1ED49A938;
  if (![v13 count])
  {
    v24 = 0;
    v23 = 0;
    v15 = 0;
    goto LABEL_27;
  }

  v30 = v3;
  v31 = 0;
  v15 = 0;
  v16 = 0;
  v17 = v14 + 1;
  while (1)
  {
    v18 = (v17 + v16) % [v13 count];
    v19 = [v13 pointerAtIndex:v18];
    if (!v19)
    {
      goto LABEL_19;
    }

    v20 = v19;
    if (!v15)
    {
      v31 = _UIQOSProcessingBegin("IdleObservers", 0, v9, v8);
    }

    [v20 _updateCycleIdleUntil:v8];
    ++v15;
    qword_1ED49A938 = v18;
    v21 = mach_absolute_time();
    if (v21 > v8)
    {
      break;
    }

    v22 = v21 - v9;

    if (v22 > (v11 * v12))
    {
      goto LABEL_23;
    }

LABEL_19:
    if (++v16 >= [v13 count])
    {
      v23 = 0;
      v3 = v30;
      goto LABEL_26;
    }
  }

LABEL_23:
  v3 = v30;
  v25 = _UIInternalPreferenceUsesDefault(&unk_1ED48B280, @"IdleSchedulerMinimumFramesBetweenNotify", _UIInternalPreferenceUpdateDouble);
  v26 = *&qword_1ED48B288;
  if (v25)
  {
    v26 = 2.0;
  }

  qword_1ED49A940 = (v11 * v26 + v30);
  v23 = 1;
LABEL_26:
  v24 = v31;
LABEL_27:
  _isNotifyingIdleObservers = 0;
  v27 = *(__UILogGetCategoryCachedImpl("UpdateCycleIdleScheduler", &qword_1ED49A948) + 8);
  if (os_signpost_enabled(v27))
  {
    v28 = v27;
    v29 = mach_absolute_time();
    *buf = 134218496;
    v33 = (v29 - v3) / v11;
    v34 = 2048;
    v35 = v15;
    v36 = 2048;
    v37 = v23;
    _os_signpost_emit_with_name_impl(&dword_188A29000, v28, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "NotifyIdleObservers", "elapsedAtEnd=%.2f, notifiedObservers=%ld, didPerformSignificantWork=%ld", buf, 0x20u);
  }

  if ([MEMORY[0x1E6979518] currentState])
  {
    [UIApp _performBlockAfterCATransactionCommits:&__block_literal_global_331];
    if (!v15)
    {
      goto LABEL_35;
    }
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_331);
    if (!v15)
    {
      goto LABEL_35;
    }
  }

  _UIQOSProcessingEnd(v24);
  if (_UIUpdateCycleEnabled())
  {
    [MEMORY[0x1E6979518] flush];
  }

LABEL_35:
}

@end