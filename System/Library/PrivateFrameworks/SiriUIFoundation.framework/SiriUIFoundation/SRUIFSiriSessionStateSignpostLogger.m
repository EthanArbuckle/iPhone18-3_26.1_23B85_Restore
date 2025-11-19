@interface SRUIFSiriSessionStateSignpostLogger
- (void)sessionStateHandler:(id)a3 didTransitionFromState:(int64_t)a4 toState:(int64_t)a5 forEvent:(int64_t)a6 machAbsoluteTime:(double)a7;
@end

@implementation SRUIFSiriSessionStateSignpostLogger

- (void)sessionStateHandler:(id)a3 didTransitionFromState:(int64_t)a4 toState:(int64_t)a5 forEvent:(int64_t)a6 machAbsoluteTime:(double)a7
{
  v33 = *MEMORY[0x277D85DE8];
  v12 = a3;
  if (a6 == 6)
  {
    if (self->_thinkingIntervalID)
    {
      v17 = *MEMORY[0x277CEF098];
      v18 = v17;
      thinkingIntervalID = self->_thinkingIntervalID;
      if (thinkingIntervalID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        LOWORD(v29) = 0;
        _os_signpost_emit_with_name_impl(&dword_26951F000, v18, OS_SIGNPOST_INTERVAL_END, thinkingIntervalID, "ThinkingStateTransition", "", &v29, 2u);
      }

      self->_thinkingIntervalID = 0;
    }
  }

  else if (a6 == 2)
  {
    v13 = MEMORY[0x277CEF098];
    self->_thinkingIntervalID = os_signpost_id_generate(*MEMORY[0x277CEF098]);
    v14 = *v13;
    v15 = v14;
    v16 = self->_thinkingIntervalID;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      LOWORD(v29) = 0;
      _os_signpost_emit_with_name_impl(&dword_26951F000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v16, "ThinkingStateTransition", "", &v29, 2u);
    }
  }

  if (a5 > 1)
  {
    v23 = 1419;
    if (a5 != 3)
    {
      v23 = 0;
    }

    v21 = a5 != 2 && a5 != 3;
    if (a5 == 2)
    {
      v22 = 1418;
    }

    else
    {
      v22 = v23;
    }
  }

  else
  {
    v20 = 1417;
    if (a5 != 1)
    {
      v20 = 0;
    }

    if (a5)
    {
      v21 = a5 != 1;
    }

    else
    {
      v21 = 0;
    }

    if (a5)
    {
      v22 = v20;
    }

    else
    {
      v22 = 1416;
    }
  }

  if (a4 != a5)
  {
    v24 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      v26 = AFAnalyticsEventTypeGetName();
      v29 = 136315394;
      v30 = "[SRUIFSiriSessionStateSignpostLogger sessionStateHandler:didTransitionFromState:toState:forEvent:machAbsoluteTime:]";
      v31 = 2112;
      v32 = v26;
      _os_log_impl(&dword_26951F000, v25, OS_LOG_TYPE_DEFAULT, "%s logging event %@", &v29, 0x16u);
    }

    v27 = [MEMORY[0x277CEF158] sharedAnalytics];
    [v27 logEventWithType:v22 machAbsoluteTime:a7 context:0];

    if (!v21)
    {
      kdebug_trace();
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

@end