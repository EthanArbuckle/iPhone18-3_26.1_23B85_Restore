@interface SVXAlarmAndTimerUtilities
- (BOOL)_isEndpoint:(id)endpoint;
- (BOOL)getIsSpeakable:(id)speakable;
- (SVXAlarmAndTimerUtilities)init;
- (id)_alarmsListTextWithFiringAlarms:(id)alarms concatenationString:(id)string languageCode:(id)code preferences:(id)preferences;
- (id)_getCalendarWithLocale:(id)locale;
- (id)_getDateFormatterWithLocale:(id)locale calendar:(id)calendar;
- (id)_getLocaleWithLanguageCode:(id)code preferences:(id)preferences;
- (id)_textFromActiveTimersAndAlarms:(id)alarms orderedFiringAlarms:(id)firingAlarms concatenationString:(id)string;
- (id)_textFromFiringAlarms:(id)alarms alarmsListText:(id)text languageCode:(id)code gender:(int64_t)gender;
- (id)_textFromFiringTimers:(id)timers timersListText:(id)text languageCode:(id)code gender:(int64_t)gender;
- (id)_timersListTextWithFiringTimers:(id)timers concatenationString:(id)string languageCode:(id)code gender:(int64_t)gender;
- (id)createSpeechSynthesisRequestWithContext:(id)context instanceContext:(id)instanceContext;
@end

@implementation SVXAlarmAndTimerUtilities

- (BOOL)_isEndpoint:(id)endpoint
{
  if (!endpoint)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SVXAlarmAndTimerUtilities _isEndpoint:]"];
    [currentHandler handleFailureInFunction:v5 file:@"SVXAlarmAndTimerUtilities.m" lineNumber:277 description:{@"Invalid parameter not satisfying: %@", @"instanceContext != nil"}];
  }

  return 0;
}

- (id)_getDateFormatterWithLocale:(id)locale calendar:(id)calendar
{
  v5 = MEMORY[0x277CCA968];
  calendarCopy = calendar;
  localeCopy = locale;
  v8 = objc_alloc_init(v5);
  [v8 setCalendar:calendarCopy];

  [v8 setLocale:localeCopy];
  [v8 setDateStyle:0];
  [v8 setTimeStyle:1];

  return v8;
}

- (id)_getCalendarWithLocale:(id)locale
{
  v3 = MEMORY[0x277CBEA80];
  localeCopy = locale;
  currentCalendar = [v3 currentCalendar];
  [currentCalendar setLocale:localeCopy];

  return currentCalendar;
}

- (id)_getLocaleWithLanguageCode:(id)code preferences:(id)preferences
{
  codeCopy = code;
  preferencesCopy = preferences;
  v8 = [(SVXNSLocaleFactory *)self->_localeFactory canonicalLocaleIdentifierFromString:codeCopy];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = codeCopy;
  }

  v10 = [(SVXNSLocaleFactory *)self->_localeFactory localeWithLocaleIdentifier:v9];
  if (!v10)
  {
    v10 = [(SVXSpeechSynthesisUtils *)self->_speechSynthesisUtils getLocaleWithAllowsFallback:1 preferences:preferencesCopy];
  }

  return v10;
}

- (id)_textFromFiringAlarms:(id)alarms alarmsListText:(id)text languageCode:(id)code gender:(int64_t)gender
{
  alarmsCopy = alarms;
  textCopy = text;
  codeCopy = code;
  v13 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if ([alarmsCopy count] < 2)
  {
    if ([alarmsCopy count] != 1)
    {
      goto LABEL_9;
    }

    firstObject = [alarmsCopy firstObject];
    title = [firstObject title];
    v18 = [title length];

    bundleUtils = self->_bundleUtils;
    siriVOXFrameworkBundle = [(SVXAlarmAndTimerUtilities *)self siriVOXFrameworkBundle];
    if (v18)
    {
      v20 = @"SIRI_VOX_FIRING_TITLED_ALARM_ANNOUNCEMENT_SINGLE";
    }

    else
    {
      v20 = @"SIRI_VOX_FIRING_UNTITLED_ALARM_ANNOUNCEMENT_SINGLE";
    }

    v21 = [(SVXBundleUtils *)bundleUtils getLocalizedStringWithBundle:siriVOXFrameworkBundle table:@"Clock" key:v20 languageCode:codeCopy gender:gender];
    [v13 appendFormat:v21, textCopy];
  }

  else
  {
    v14 = self->_bundleUtils;
    firstObject = [(SVXAlarmAndTimerUtilities *)self siriVOXFrameworkBundle];
    siriVOXFrameworkBundle = [(SVXBundleUtils *)v14 getLocalizedStringWithBundle:firstObject table:@"Clock" key:@"SIRI_VOX_FIRING_ALARM_ANNOUNCEMENT_MULTI" languageCode:codeCopy gender:gender];
    [v13 appendFormat:siriVOXFrameworkBundle, textCopy];
  }

LABEL_9:

  return v13;
}

- (id)_textFromActiveTimersAndAlarms:(id)alarms orderedFiringAlarms:(id)firingAlarms concatenationString:(id)string
{
  alarmsCopy = alarms;
  firingAlarmsCopy = firingAlarms;
  stringCopy = string;
  v10 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if ([alarmsCopy count] == 1 && objc_msgSend(firingAlarmsCopy, "count") == 1)
  {
    v11 = v10;
    v12 = stringCopy;
  }

  else
  {
    if ((![alarmsCopy count] || objc_msgSend(firingAlarmsCopy, "count") <= 1) && (objc_msgSend(alarmsCopy, "count") < 2 || !objc_msgSend(firingAlarmsCopy, "count")))
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

- (id)_textFromFiringTimers:(id)timers timersListText:(id)text languageCode:(id)code gender:(int64_t)gender
{
  timersCopy = timers;
  textCopy = text;
  codeCopy = code;
  v13 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if ([timersCopy count] < 2)
  {
    if ([timersCopy count] != 1)
    {
      goto LABEL_9;
    }

    firstObject = [timersCopy firstObject];
    title = [firstObject title];
    v18 = [title length];

    bundleUtils = self->_bundleUtils;
    siriVOXFrameworkBundle = [(SVXAlarmAndTimerUtilities *)self siriVOXFrameworkBundle];
    if (v18)
    {
      v20 = @"SIRI_VOX_FIRING_TITLED_TIMER_ANNOUNCEMENT_SINGLE";
    }

    else
    {
      v20 = @"SIRI_VOX_FIRING_UNTITLED_TIMER_ANNOUNCEMENT_SINGLE";
    }

    v21 = [(SVXBundleUtils *)bundleUtils getLocalizedStringWithBundle:siriVOXFrameworkBundle table:@"Clock" key:v20 languageCode:codeCopy gender:gender];
    [v13 appendFormat:v21, textCopy];
  }

  else
  {
    v14 = self->_bundleUtils;
    firstObject = [(SVXAlarmAndTimerUtilities *)self siriVOXFrameworkBundle];
    siriVOXFrameworkBundle = [(SVXBundleUtils *)v14 getLocalizedStringWithBundle:firstObject table:@"Clock" key:@"SIRI_VOX_FIRING_TIMER_ANNOUNCEMENT_MULTI" languageCode:codeCopy gender:gender];
    [v13 appendFormat:siriVOXFrameworkBundle, textCopy];
  }

LABEL_9:

  return v13;
}

- (id)_alarmsListTextWithFiringAlarms:(id)alarms concatenationString:(id)string languageCode:(id)code preferences:(id)preferences
{
  alarmsCopy = alarms;
  stringCopy = string;
  codeCopy = code;
  preferencesCopy = preferences;
  v10 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if ([alarmsCopy count])
  {
    v11 = 0;
    v25 = v10;
    do
    {
      v12 = [alarmsCopy objectAtIndexedSubscript:v11];
      if ([alarmsCopy count] >= 2 && v11 == objc_msgSend(alarmsCopy, "count") - 1)
      {
        [v10 appendString:stringCopy];
      }

      title = [v12 title];
      if ([title length])
      {
        [v10 appendString:title];
      }

      else
      {
        v14 = objc_alloc_init(MEMORY[0x277CBEAB8]);
        [v14 setHour:{objc_msgSend(v12, "hour")}];
        [v14 setMinute:{objc_msgSend(v12, "minute")}];
        v15 = [(SVXAlarmAndTimerUtilities *)self _getLocaleWithLanguageCode:codeCopy preferences:preferencesCopy];
        v16 = [(SVXAlarmAndTimerUtilities *)self _getCalendarWithLocale:v15];
        v17 = [v16 dateFromComponents:v14];
        v18 = [(SVXAlarmAndTimerUtilities *)self _getDateFormatterWithLocale:v15 calendar:v16];
        v19 = [v18 stringFromDate:v17];
        [v25 appendString:v19];

        v10 = v25;
      }

      if ([alarmsCopy count] >= 3 && v11 < objc_msgSend(alarmsCopy, "count") - 2)
      {
        [v10 appendString:@" @{tts#\x1B\\pause=150\\} "];
      }

      ++v11;
    }

    while (v11 < [alarmsCopy count]);
  }

  return v10;
}

- (id)_timersListTextWithFiringTimers:(id)timers concatenationString:(id)string languageCode:(id)code gender:(int64_t)gender
{
  timersCopy = timers;
  stringCopy = string;
  codeCopy = code;
  v12 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if ([timersCopy count])
  {
    v13 = 0;
    do
    {
      v14 = [timersCopy objectAtIndexedSubscript:v13];
      if ([timersCopy count] >= 2 && v13 == objc_msgSend(timersCopy, "count") - 1)
      {
        [v12 appendString:stringCopy];
      }

      title = [v14 title];
      title2 = [v14 title];
      v17 = [title2 length];

      if (v17)
      {
        [v12 appendString:title];
      }

      else
      {
        v18 = [v14 svx_speakableDurationStringWithLanguageCode:codeCopy gender:gender];
        [v12 appendString:v18];
      }

      if ([timersCopy count] >= 3 && v13 < objc_msgSend(timersCopy, "count") - 2)
      {
        [v12 appendString:@" @{tts#\x1B\\pause=150\\} "];
      }

      ++v13;
    }

    while (v13 < [timersCopy count]);
  }

  return v12;
}

- (id)createSpeechSynthesisRequestWithContext:(id)context instanceContext:(id)instanceContext
{
  v37 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  instanceContextCopy = instanceContext;
  if ([(SVXAlarmAndTimerUtilities *)self getIsSpeakable:contextCopy])
  {
    orderedFiringAlarms = [contextCopy orderedFiringAlarms];
    orderedFiringTimers = [contextCopy orderedFiringTimers];
    v30 = instanceContextCopy;
    if ([(SVXAlarmAndTimerUtilities *)self _isEndpoint:instanceContextCopy])
    {
      mEMORY[0x277CEF368] = [objc_alloc(MEMORY[0x277CEF368]) initWithInstanceContext:instanceContextCopy];
    }

    else
    {
      mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    }

    v11 = mEMORY[0x277CEF368];
    if (!mEMORY[0x277CEF368])
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SVXAlarmAndTimerUtilities createSpeechSynthesisRequestWithContext:instanceContext:]"];
      [currentHandler handleFailureInFunction:v29 file:@"SVXAlarmAndTimerUtilities.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"preferences != nil"}];
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
    languageCode = [v12 languageCode];
    gender = [v12 gender];
    if (!gender)
    {
      gender = [MEMORY[0x277CEF528] defaultGenderForOutputVoiceLanguageCode:languageCode];
    }

    v16 = [(SVXSpeechSynthesisUtils *)self->_speechSynthesisUtils getGenderFromVoiceGender:gender];
    v17 = objc_alloc_init(MEMORY[0x277CCAB68]);
    bundleUtils = self->_bundleUtils;
    siriVOXFrameworkBundle = [(SVXAlarmAndTimerUtilities *)self siriVOXFrameworkBundle];
    v20 = [(SVXBundleUtils *)bundleUtils getLocalizedStringWithBundle:siriVOXFrameworkBundle table:@"Clock" key:@"SIRI_VOX_FIRING_ALARM_OR_TIMER_ANNOUNCEMENT_CONCATENATION" languageCode:languageCode gender:v16];

    v21 = [(SVXAlarmAndTimerUtilities *)self _timersListTextWithFiringTimers:orderedFiringTimers concatenationString:v20 languageCode:languageCode gender:v16];
    v22 = [(SVXAlarmAndTimerUtilities *)self _textFromFiringTimers:orderedFiringTimers timersListText:v21 languageCode:languageCode gender:v16];
    [v17 appendString:v22];

    v23 = [(SVXAlarmAndTimerUtilities *)self _textFromActiveTimersAndAlarms:orderedFiringTimers orderedFiringAlarms:orderedFiringAlarms concatenationString:v20];
    [v17 appendString:v23];

    v24 = [(SVXAlarmAndTimerUtilities *)self _alarmsListTextWithFiringAlarms:orderedFiringAlarms concatenationString:v20 languageCode:languageCode preferences:v31];
    v25 = [(SVXAlarmAndTimerUtilities *)self _textFromFiringAlarms:orderedFiringAlarms alarmsListText:v24 languageCode:languageCode gender:v16];
    [v17 appendString:v25];

    if ([v17 length])
    {
      v10 = [[SVXSpeechSynthesisRequest alloc] initWithPriority:3 options:1 speakableText:v17 speakableContext:0 localizationKey:0 presynthesizedAudio:0 streamID:0];
    }

    else
    {
      v10 = 0;
    }

    instanceContextCopy = v30;
  }

  else
  {
    v10 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)getIsSpeakable:(id)speakable
{
  speakableCopy = speakable;
  orderedFiringAlarms = [speakableCopy orderedFiringAlarms];
  orderedFiringTimers = [speakableCopy orderedFiringTimers];
  hasOtherRunningTimers = [speakableCopy hasOtherRunningTimers];

  if ([orderedFiringAlarms count] || objc_msgSend(orderedFiringTimers, "count"))
  {
    v7 = [orderedFiringAlarms count];
    if ([orderedFiringTimers count] + v7 == 1 && ((objc_msgSend(orderedFiringTimers, "count") != 0) & hasOtherRunningTimers) == 0)
    {
      firstObject = [orderedFiringAlarms firstObject];
      title = [firstObject title];
      if ([title length])
      {
        v8 = 1;
      }

      else
      {
        firstObject2 = [orderedFiringTimers firstObject];
        title2 = [firstObject2 title];
        v8 = [title2 length] != 0;
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