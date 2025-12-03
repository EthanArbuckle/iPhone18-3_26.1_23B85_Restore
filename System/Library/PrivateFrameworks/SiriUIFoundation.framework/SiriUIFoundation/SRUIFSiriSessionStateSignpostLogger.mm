@interface SRUIFSiriSessionStateSignpostLogger
- (void)sessionStateHandler:(id)handler didTransitionFromState:(int64_t)state toState:(int64_t)toState forEvent:(int64_t)event machAbsoluteTime:(double)time;
@end

@implementation SRUIFSiriSessionStateSignpostLogger

- (void)sessionStateHandler:(id)handler didTransitionFromState:(int64_t)state toState:(int64_t)toState forEvent:(int64_t)event machAbsoluteTime:(double)time
{
  v33 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (event == 6)
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

  else if (event == 2)
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

  if (toState > 1)
  {
    v23 = 1419;
    if (toState != 3)
    {
      v23 = 0;
    }

    v21 = toState != 2 && toState != 3;
    if (toState == 2)
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
    if (toState != 1)
    {
      v20 = 0;
    }

    if (toState)
    {
      v21 = toState != 1;
    }

    else
    {
      v21 = 0;
    }

    if (toState)
    {
      v22 = v20;
    }

    else
    {
      v22 = 1416;
    }
  }

  if (state != toState)
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

    mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
    [mEMORY[0x277CEF158] logEventWithType:v22 machAbsoluteTime:time context:0];

    if (!v21)
    {
      kdebug_trace();
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

@end