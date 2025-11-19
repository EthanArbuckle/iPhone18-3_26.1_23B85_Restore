@interface SVXAlarmAndTimerUtilities
- (BOOL)_isEndpoint:(id)a3;
- (BOOL)getIsSpeakable:(id)a3;
- (SVXAlarmAndTimerUtilities)init;
- (id)_alarmsListTextWithFiringAlarms:(id)a3 concatenationString:(id)a4 languageCode:(id)a5 preferences:(id)a6;
- (id)_getCalendarWithLocale:(id)a3;
- (id)_getDateFormatterWithLocale:(id)a3 calendar:(id)a4;
- (id)_getLocaleWithLanguageCode:(id)a3 preferences:(id)a4;
- (id)_textFromActiveTimersAndAlarms:(id)a3 orderedFiringAlarms:(id)a4 concatenationString:(id)a5;
- (id)_textFromFiringAlarms:(id)a3 alarmsListText:(id)a4 languageCode:(id)a5 gender:(int64_t)a6;
- (id)_textFromFiringTimers:(id)a3 timersListText:(id)a4 languageCode:(id)a5 gender:(int64_t)a6;
- (id)_timersListTextWithFiringTimers:(id)a3 concatenationString:(id)a4 languageCode:(id)a5 gender:(int64_t)a6;
- (id)createSpeechSynthesisRequestWithContext:(id)a3 instanceContext:(id)a4;
@end

@implementation SVXAlarmAndTimerUtilities

- (BOOL)_isEndpoint:(id)a3
{
  if (!a3)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SVXAlarmAndTimerUtilities _isEndpoint:]"];
    [v4 handleFailureInFunction:v5 file:@"SVXAlarmAndTimerUtilities.m" lineNumber:277 description:{@"Invalid parameter not satisfying: %@", @"instanceContext != nil"}];
  }

  return 0;
}

- (id)_getDateFormatterWithLocale:(id)a3 calendar:(id)a4
{
  v5 = MEMORY[0x277CCA968];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 setCalendar:v6];

  [v8 setLocale:v7];
  [v8 setDateStyle:0];
  [v8 setTimeStyle:1];

  return v8;
}

- (id)_getCalendarWithLocale:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  [v5 setLocale:v4];

  return v5;
}

- (id)_getLocaleWithLanguageCode:(id)a3 preferences:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SVXNSLocaleFactory *)self->_localeFactory canonicalLocaleIdentifierFromString:v6];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  v10 = [(SVXNSLocaleFactory *)self->_localeFactory localeWithLocaleIdentifier:v9];
  if (!v10)
  {
    v10 = [(SVXSpeechSynthesisUtils *)self->_speechSynthesisUtils getLocaleWithAllowsFallback:1 preferences:v7];
  }

  return v10;
}

- (id)_textFromFiringAlarms:(id)a3 alarmsListText:(id)a4 languageCode:(id)a5 gender:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if ([v10 count] < 2)
  {
    if ([v10 count] != 1)
    {
      goto LABEL_9;
    }

    v15 = [v10 firstObject];
    v17 = [v15 title];
    v18 = [v17 length];

    bundleUtils = self->_bundleUtils;
    v16 = [(SVXAlarmAndTimerUtilities *)self siriVOXFrameworkBundle];
    if (v18)
    {
      v20 = @"SIRI_VOX_FIRING_TITLED_ALARM_ANNOUNCEMENT_SINGLE";
    }

    else
    {
      v20 = @"SIRI_VOX_FIRING_UNTITLED_ALARM_ANNOUNCEMENT_SINGLE";
    }

    v21 = [(SVXBundleUtils *)bundleUtils getLocalizedStringWithBundle:v16 table:@"Clock" key:v20 languageCode:v12 gender:a6];
    [v13 appendFormat:v21, v11];
  }

  else
  {
    v14 = self->_bundleUtils;
    v15 = [(SVXAlarmAndTimerUtilities *)self siriVOXFrameworkBundle];
    v16 = [(SVXBundleUtils *)v14 getLocalizedStringWithBundle:v15 table:@"Clock" key:@"SIRI_VOX_FIRING_ALARM_ANNOUNCEMENT_MULTI" languageCode:v12 gender:a6];
    [v13 appendFormat:v16, v11];
  }

LABEL_9:

  return v13;
}

- (id)_textFromActiveTimersAndAlarms:(id)a3 orderedFiringAlarms:(id)a4 concatenationString:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if ([v7 count] == 1 && objc_msgSend(v8, "count") == 1)
  {
    v11 = v10;
    v12 = v9;
  }

  else
  {
    if ((![v7 count] || objc_msgSend(v8, "count") <= 1) && (objc_msgSend(v7, "count") < 2 || !objc_msgSend(v8, "count")))
    {
      goto LABEL_10;
    }

    v12 = @" @{tts#\x1B\\pause=500\\} ";
    v11 = v10;
  }

  [v11 appendString:v12];
LABEL_10:

  return v10;
}

- (id)_textFromFiringTimers:(id)a3 timersListText:(id)a4 languageCode:(id)a5 gender:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if ([v10 count] < 2)
  {
    if ([v10 count] != 1)
    {
      goto LABEL_9;
    }

    v15 = [v10 firstObject];
    v17 = [v15 title];
    v18 = [v17 length];

    bundleUtils = self->_bundleUtils;
    v16 = [(SVXAlarmAndTimerUtilities *)self siriVOXFrameworkBundle];
    if (v18)
    {
      v20 = @"SIRI_VOX_FIRING_TITLED_TIMER_ANNOUNCEMENT_SINGLE";
    }

    else
    {
      v20 = @"SIRI_VOX_FIRING_UNTITLED_TIMER_ANNOUNCEMENT_SINGLE";
    }

    v21 = [(SVXBundleUtils *)bundleUtils getLocalizedStringWithBundle:v16 table:@"Clock" key:v20 languageCode:v12 gender:a6];
    [v13 appendFormat:v21, v11];
  }

  else
  {
    v14 = self->_bundleUtils;
    v15 = [(SVXAlarmAndTimerUtilities *)self siriVOXFrameworkBundle];
    v16 = [(SVXBundleUtils *)v14 getLocalizedStringWithBundle:v15 table:@"Clock" key:@"SIRI_VOX_FIRING_TIMER_ANNOUNCEMENT_MULTI" languageCode:v12 gender:a6];
    [v13 appendFormat:v16, v11];
  }

LABEL_9:

  return v13;
}

- (id)_alarmsListTextWithFiringAlarms:(id)a3 concatenationString:(id)a4 languageCode:(id)a5 preferences:(id)a6
{
  v9 = a3;
  v21 = a4;
  v24 = a5;
  v23 = a6;
  v10 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if ([v9 count])
  {
    v11 = 0;
    v25 = v10;
    do
    {
      v12 = [v9 objectAtIndexedSubscript:v11];
      if ([v9 count] >= 2 && v11 == objc_msgSend(v9, "count") - 1)
      {
        [v10 appendString:v21];
      }

      v13 = [v12 title];
      if ([v13 length])
      {
        [v10 appendString:v13];
      }

      else
      {
        v14 = objc_alloc_init(MEMORY[0x277CBEAB8]);
        [v14 setHour:{objc_msgSend(v12, "hour")}];
        [v14 setMinute:{objc_msgSend(v12, "minute")}];
        v15 = [(SVXAlarmAndTimerUtilities *)self _getLocaleWithLanguageCode:v24 preferences:v23];
        v16 = [(SVXAlarmAndTimerUtilities *)self _getCalendarWithLocale:v15];
        v17 = [v16 dateFromComponents:v14];
        v18 = [(SVXAlarmAndTimerUtilities *)self _getDateFormatterWithLocale:v15 calendar:v16];
        v19 = [v18 stringFromDate:v17];
        [v25 appendString:v19];

        v10 = v25;
      }

      if ([v9 count] >= 3 && v11 < objc_msgSend(v9, "count") - 2)
      {
        [v10 appendString:@" @{tts#\x1B\\pause=150\\} "];
      }

      ++v11;
    }

    while (v11 < [v9 count]);
  }

  return v10;
}

- (id)_timersListTextWithFiringTimers:(id)a3 concatenationString:(id)a4 languageCode:(id)a5 gender:(int64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if ([v9 count])
  {
    v13 = 0;
    do
    {
      v14 = [v9 objectAtIndexedSubscript:v13];
      if ([v9 count] >= 2 && v13 == objc_msgSend(v9, "count") - 1)
      {
        [v12 appendString:v10];
      }

      v15 = [v14 title];
      v16 = [v14 title];
      v17 = [v16 length];

      if (v17)
      {
        [v12 appendString:v15];
      }

      else
      {
        v18 = [v14 svx_speakableDurationStringWithLanguageCode:v11 gender:a6];
        [v12 appendString:v18];
      }

      if ([v9 count] >= 3 && v13 < objc_msgSend(v9, "count") - 2)
      {
        [v12 appendString:@" @{tts#\x1B\\pause=150\\} "];
      }

      ++v13;
    }

    while (v13 < [v9 count]);
  }

  return v12;
}

- (id)createSpeechSynthesisRequestWithContext:(id)a3 instanceContext:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(SVXAlarmAndTimerUtilities *)self getIsSpeakable:v6])
  {
    v32 = [v6 orderedFiringAlarms];
    v8 = [v6 orderedFiringTimers];
    v30 = v7;
    if ([(SVXAlarmAndTimerUtilities *)self _isEndpoint:v7])
    {
      v9 = [objc_alloc(MEMORY[0x277CEF368]) initWithInstanceContext:v7];
    }

    else
    {
      v9 = [MEMORY[0x277CEF368] sharedPreferences];
    }

    v11 = v9;
    if (!v9)
    {
      v28 = [MEMORY[0x277CCA890] currentHandler];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SVXAlarmAndTimerUtilities createSpeechSynthesisRequestWithContext:instanceContext:]"];
      [v28 handleFailureInFunction:v29 file:@"SVXAlarmAndTimerUtilities.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"preferences != nil"}];
    }

    v12 = [(SVXSpeechSynthesisUtils *)self->_speechSynthesisUtils getOutputVoiceInfoWithAllowsFallback:1 preferences:v11];
    v13 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v34 = "[SVXAlarmAndTimerUtilities createSpeechSynthesisRequestWithContext:instanceContext:]";
      v35 = 2112;
      v36 = v12;
      _os_log_impl(&dword_2695B9000, v13, OS_LOG_TYPE_INFO, "%s outputVoiceInfo = %@", buf, 0x16u);
    }

    v31 = v11;
    v14 = [v12 languageCode];
    v15 = [v12 gender];
    if (!v15)
    {
      v15 = [MEMORY[0x277CEF528] defaultGenderForOutputVoiceLanguageCode:v14];
    }

    v16 = [(SVXSpeechSynthesisUtils *)self->_speechSynthesisUtils getGenderFromVoiceGender:v15];
    v17 = objc_alloc_init(MEMORY[0x277CCAB68]);
    bundleUtils = self->_bundleUtils;
    v19 = [(SVXAlarmAndTimerUtilities *)self siriVOXFrameworkBundle];
    v20 = [(SVXBundleUtils *)bundleUtils getLocalizedStringWithBundle:v19 table:@"Clock" key:@"SIRI_VOX_FIRING_ALARM_OR_TIMER_ANNOUNCEMENT_CONCATENATION" languageCode:v14 gender:v16];

    v21 = [(SVXAlarmAndTimerUtilities *)self _timersListTextWithFiringTimers:v8 concatenationString:v20 languageCode:v14 gender:v16];
    v22 = [(SVXAlarmAndTimerUtilities *)self _textFromFiringTimers:v8 timersListText:v21 languageCode:v14 gender:v16];
    [v17 appendString:v22];

    v23 = [(SVXAlarmAndTimerUtilities *)self _textFromActiveTimersAndAlarms:v8 orderedFiringAlarms:v32 concatenationString:v20];
    [v17 appendString:v23];

    v24 = [(SVXAlarmAndTimerUtilities *)self _alarmsListTextWithFiringAlarms:v32 concatenationString:v20 languageCode:v14 preferences:v31];
    v25 = [(SVXAlarmAndTimerUtilities *)self _textFromFiringAlarms:v32 alarmsListText:v24 languageCode:v14 gender:v16];
    [v17 appendString:v25];

    if ([v17 length])
    {
      v10 = [[SVXSpeechSynthesisRequest alloc] initWithPriority:3 options:1 speakableText:v17 speakableContext:0 localizationKey:0 presynthesizedAudio:0 streamID:0];
    }

    else
    {
      v10 = 0;
    }

    v7 = v30;
  }

  else
  {
    v10 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)getIsSpeakable:(id)a3
{
  v3 = a3;
  v4 = [v3 orderedFiringAlarms];
  v5 = [v3 orderedFiringTimers];
  v6 = [v3 hasOtherRunningTimers];

  if ([v4 count] || objc_msgSend(v5, "count"))
  {
    v7 = [v4 count];
    if ([v5 count] + v7 == 1 && ((objc_msgSend(v5, "count") != 0) & v6) == 0)
    {
      v9 = [v4 firstObject];
      v10 = [v9 title];
      if ([v10 length])
      {
        v8 = 1;
      }

      else
      {
        v11 = [v5 firstObject];
        v12 = [v11 title];
        v8 = [v12 length] != 0;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (SVXAlarmAndTimerUtilities)init
{
  v10.receiver = self;
  v10.super_class = SVXAlarmAndTimerUtilities;
  v2 = [(SVXAlarmAndTimerUtilities *)&v10 init];
  if (v2)
  {
    v3 = +[SVXBundleUtils sharedInstance];
    bundleUtils = v2->_bundleUtils;
    v2->_bundleUtils = v3;

    v5 = objc_alloc_init(SVXSpeechSynthesisUtils);
    speechSynthesisUtils = v2->_speechSynthesisUtils;
    v2->_speechSynthesisUtils = v5;

    v7 = objc_alloc_init(SVXNSLocaleFactory);
    localeFactory = v2->_localeFactory;
    v2->_localeFactory = v7;
  }

  return v2;
}

@end