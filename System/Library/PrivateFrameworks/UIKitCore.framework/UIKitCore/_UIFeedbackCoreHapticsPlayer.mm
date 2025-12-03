@interface _UIFeedbackCoreHapticsPlayer
- (BOOL)_internal_playFeedbackData:(id)data forFeedback:(id)feedback atTime:(double)time;
- (_UIFeedbackCoreHapticsEngine)hapticEngine;
- (_UIFeedbackCoreHapticsPlayer)initWithEngine:(id)engine;
- (id)_internal_createEventsForFeedbackData:(id)data engine:(id)engine parameters:(id *)parameters parameterCurves:(id *)curves;
- (id)_internal_createEventsForFileFeedbackData:(id)data engine:(id)engine parameters:(id *)parameters parameterCurves:(id *)curves;
- (id)_internal_createEventsForLegacyFeedbackData:(id)data;
- (id)_internal_createEventsForLibraryFeedbackData:(id)data engine:(id)engine parameters:(id *)parameters parameterCurves:(id *)curves;
- (id)_internal_createEventsForTransientHapticData:(id)data;
- (id)_internal_createFixedParameterForParameters:(id)parameters withKey:(id)key forEventType:(id)type;
- (id)_internal_createPatternForFeedbackData:(id)data feedback:(id)feedback engine:(id)engine;
- (id)_internal_createPlayerWithPattern:(id)pattern;
- (void)_internal_stopFeedbackData:(id)data forFeedback:(id)feedback;
- (void)_internal_updateValueForParameters:(id)parameters withKey:(id)key;
- (void)_playFeedback:(id)feedback atTime:(double)time;
- (void)_stopFeedback:(id)feedback;
- (void)_updateValueForParameters:(id)parameters withKey:(id)key;
@end

@implementation _UIFeedbackCoreHapticsPlayer

- (_UIFeedbackCoreHapticsPlayer)initWithEngine:(id)engine
{
  engineCopy = engine;
  v10.receiver = self;
  v10.super_class = _UIFeedbackCoreHapticsPlayer;
  v5 = [(_UIFeedbackCoreHapticsPlayer *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_hapticEngine, engineCopy);
    _internalQueue = [objc_opt_class() _internalQueue];
    internalQueue = v6->_internalQueue;
    v6->_internalQueue = _internalQueue;
  }

  return v6;
}

- (id)_internal_createPlayerWithPattern:(id)pattern
{
  v25 = *MEMORY[0x1E69E9840];
  patternCopy = pattern;
  hapticEngine = [(_UIFeedbackCoreHapticsPlayer *)self hapticEngine];
  coreHapticsEngine = [hapticEngine coreHapticsEngine];

  if (coreHapticsEngine)
  {
    v20 = 0;
    v7 = [coreHapticsEngine createPrivilegedPlayerWithPlayable:patternCopy error:&v20];
    v8 = v20;
    v9 = v8;
    if (!v7 || v8)
    {
      if ((_UIFeedbackLoggingDisabled & 1) == 0)
      {
        v15 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49A168) + 8);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = v15;
          hapticEngine2 = [(_UIFeedbackCoreHapticsPlayer *)self hapticEngine];
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%s: %p>", object_getClassName(hapticEngine2), hapticEngine2];
          *buf = 138412546;
          v22 = v18;
          v23 = 2112;
          v24 = v9;
          _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "failed to create player with pattern for %@: %@", buf, 0x16u);
        }
      }

      v10 = 0;
    }

    else
    {
      v10 = v7;
    }
  }

  else
  {
    if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      v11 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49A160) + 8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
        hapticEngine3 = [(_UIFeedbackCoreHapticsPlayer *)self hapticEngine];
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%s: %p>", object_getClassName(hapticEngine3), hapticEngine3];
        *buf = 138412290;
        v22 = v14;
        _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "failed to create player with pattern because CHHapticEngine was nil for %@", buf, 0xCu);
      }
    }

    v10 = 0;
  }

  return v10;
}

- (id)_internal_createEventsForLibraryFeedbackData:(id)data engine:(id)engine parameters:(id *)parameters parameterCurves:(id *)curves
{
  dataCopy = data;
  pattern = [dataCopy pattern];
  _internal_populateParamtersFromPattern(pattern, parameters, curves);

  pattern2 = [dataCopy pattern];

  events = [pattern2 events];

  return events;
}

- (id)_internal_createEventsForFileFeedbackData:(id)data engine:(id)engine parameters:(id *)parameters parameterCurves:(id *)curves
{
  v61 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  engineCopy = engine;
  if (qword_1ED49A178 != -1)
  {
    dispatch_once(&qword_1ED49A178, &__block_literal_global_102_0);
  }

  fileURL = [dataCopy fileURL];
  v12 = [qword_1ED49A170 objectForKeyedSubscript:fileURL];
  if ([dataCopy fileFeedbackType] == 2)
  {
    v13 = v12;
    if (!v13)
    {
      v14 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:fileURL];
      v50 = 0;
      v13 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v14 options:0 error:&v50];
      v15 = v50;
      [qword_1ED49A170 setObject:v13 forKeyedSubscript:fileURL];
      if (v15)
      {
        if ((_UIFeedbackLoggingDisabled & 1) == 0)
        {
          v16 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49A180) + 8);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = v16;
            lastPathComponent = [fileURL lastPathComponent];
            *buf = 138412546;
            *&buf[4] = lastPathComponent;
            *&buf[12] = 2112;
            *&buf[14] = v15;
            _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "failed loading haptic file %@: %@", buf, 0x16u);
          }
        }
      }
    }

    v49 = 0;
    v19 = [objc_alloc(getCHHapticPatternClass()) initWithDictionary:v13 error:&v49];
    v20 = v49;
    if (v20)
    {
      if ((_UIFeedbackLoggingDisabled & 1) == 0)
      {
        v21 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49A188) + 8);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v20;
          _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "failed loading haptic file dictionary: %@", buf, 0xCu);
        }
      }
    }

    _internal_populateParamtersFromPattern(v19, parameters, curves);
    events = [v19 events];
  }

  else
  {
    if ([dataCopy fileFeedbackType] != 1)
    {
      events = 0;
      goto LABEL_33;
    }

    v23 = v12;
    unsignedIntegerValue = [v23 unsignedIntegerValue];
    if (v23 && (v25 = unsignedIntegerValue, ([engineCopy resourceIsRegistered:unsignedIntegerValue] & 1) != 0))
    {
      v13 = v23;
    }

    else
    {
      if ([dataCopy disableEventUseVolumeEnvelope])
      {
        v51 = 0;
        v52 = &v51;
        v53 = 0x2020000000;
        v26 = qword_1ED49A200;
        v54 = qword_1ED49A200;
        if (!qword_1ED49A200)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __getCHHapticAudioResourceKeyUseVolumeEnvelopeSymbolLoc_block_invoke;
          v59 = &unk_1E70F2F20;
          v60 = &v51;
          v27 = CoreHapticsLibrary_0();
          v28 = dlsym(v27, "CHHapticAudioResourceKeyUseVolumeEnvelope");
          *(v60[1] + 24) = v28;
          qword_1ED49A200 = *(v60[1] + 24);
          v26 = v52[3];
        }

        _Block_object_dispose(&v51, 8);
        if (!v26)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticAudioResourceKey getCHHapticAudioResourceKeyUseVolumeEnvelope(void)"];
          [currentHandler handleFailureInFunction:v43 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:80 description:{@"%s", dlerror()}];

          __break(1u);
        }

        v56 = *v26;
        v57 = MEMORY[0x1E695E110];
        v29 = MEMORY[0x1E695DF20];
        v30 = v56;
        v31 = [v29 dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      }

      else
      {
        v31 = MEMORY[0x1E695E0F8];
      }

      v48 = 0;
      v25 = [engineCopy registerAudioResource:fileURL options:v31 error:&v48];
      v32 = v48;
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v25];

      [qword_1ED49A170 setObject:v13 forKeyedSubscript:fileURL];
      if (v32)
      {
        if ((_UIFeedbackLoggingDisabled & 1) == 0)
        {
          v33 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49A190) + 8);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v34 = v33;
            lastPathComponent2 = [fileURL lastPathComponent];
            *buf = 138412546;
            *&buf[4] = lastPathComponent2;
            *&buf[12] = 2112;
            *&buf[14] = v32;
            _os_log_impl(&dword_188A29000, v34, OS_LOG_TYPE_ERROR, "failed registering audio file %@: %@", buf, 0x16u);
          }
        }
      }
    }

    array = [MEMORY[0x1E695DF70] array];
    v37 = +[_UIFeedbackParameters parameters];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __108___UIFeedbackCoreHapticsPlayer__internal_createEventsForFileFeedbackData_engine_parameters_parameterCurves___block_invoke_111;
    v45[3] = &unk_1E7107C98;
    v45[4] = self;
    v38 = dataCopy;
    v46 = v38;
    v47 = array;
    v20 = array;
    [v37 enumerateKeysAndObjectsUsingBlock:v45];

    v39 = objc_alloc(getCHHapticEventClass());
    [v38 effectiveDelay];
    v40 = [v39 initWithAudioResourceID:v25 parameters:v20 relativeTime:?];
    v55 = v40;
    events = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
  }

LABEL_33:

  return events;
}

- (id)_internal_createEventsForLegacyFeedbackData:(id)data
{
  v47[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  effectiveEventType = [dataCopy effectiveEventType];
  v6 = _coreHapticsEventTypeForEffectiveEventType(effectiveEventType, 1);
  if (!v6)
  {
    v14 = 0;
    goto LABEL_34;
  }

  array = [MEMORY[0x1E695DF70] array];
  v8 = +[_UIFeedbackParameters parameters];
  v37 = MEMORY[0x1E69E9820];
  v38 = 3221225472;
  v39 = __76___UIFeedbackCoreHapticsPlayer__internal_createEventsForLegacyFeedbackData___block_invoke;
  v40 = &unk_1E7107CC0;
  selfCopy = self;
  v9 = dataCopy;
  v42 = v9;
  v10 = v6;
  v43 = v10;
  v11 = array;
  v44 = v11;
  [v8 enumerateKeysAndObjectsUsingBlock:&v37];

  v12 = v11;
  if (effectiveEventType > 17236)
  {
    if (effectiveEventType > 23380)
    {
      if ((effectiveEventType - 23381) >= 3 && (effectiveEventType - 26453) >= 3)
      {
        v13 = -29525;
        goto LABEL_17;
      }

LABEL_18:
      v15 = (8 * effectiveEventType + ((BYTE1(effectiveEventType) - 31) / 0xCu) - 680) * 0.043478;
      goto LABEL_19;
    }

    if ((effectiveEventType - 17237) < 3)
    {
      goto LABEL_18;
    }

    v13 = -20309;
LABEL_17:
    if ((effectiveEventType + v13) >= 3)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (effectiveEventType <= 14164)
  {
    if ((effectiveEventType - 8021) < 3)
    {
      goto LABEL_18;
    }

    v13 = -11093;
    goto LABEL_17;
  }

  if (effectiveEventType > 15968)
  {
    if (effectiveEventType > 16480)
    {
      if (effectiveEventType == 16481)
      {
        v15 = 0.5;
        goto LABEL_19;
      }

      if (effectiveEventType == 16737)
      {
        v15 = 1.0;
        goto LABEL_19;
      }
    }

    else
    {
      if (effectiveEventType == 15969)
      {
        v15 = -0.5;
        goto LABEL_19;
      }

      if (effectiveEventType == 16225)
      {
        v15 = 0.0;
        goto LABEL_19;
      }
    }
  }

  else
  {
    if ((effectiveEventType - 14165) < 3)
    {
      goto LABEL_18;
    }

    v15 = -1.0;
    if (effectiveEventType == 15713)
    {
LABEL_19:
      v16 = objc_alloc(getCHHapticEventParameterClass());
      v17 = getCHHapticEventParameterIDHapticSharpness();
      *&v18 = v15;
      v19 = [v16 initWithParameterID:v17 value:{v18, v37, v38, v39, v40, selfCopy, v42, v43}];
      [v12 addObject:v19];
    }
  }

LABEL_20:

  v20 = getCHHapticEventTypeAudioCustom();
  v21 = v20;
  if (v10 == v20)
  {

    goto LABEL_26;
  }

  v22 = getCHHapticEventTypeAudioCustom();
  v23 = [v10 isEqualToString:v22];

  if (v23)
  {
LABEL_26:
    v31 = objc_alloc(getCHHapticEventClass());
    [v9 effectiveDelay];
    v29 = [v31 initWithAudioResourceID:effectiveEventType parameters:v12 relativeTime:?];
    v47[0] = v29;
    v30 = v47;
    goto LABEL_33;
  }

  v24 = getCHHapticEventTypeHapticContinuous();
  v25 = v24;
  if (v10 == v24)
  {

    goto LABEL_32;
  }

  v26 = getCHHapticEventTypeHapticContinuous();
  v27 = [v10 isEqualToString:v26];

  if (v27)
  {
LABEL_32:
    v32 = objc_alloc(getCHHapticEventClass());
    [v9 effectiveDelay];
    v34 = v33;
    [v9 effectiveDuration];
    v29 = [v32 initWithEventType:v10 parameters:v12 relativeTime:v34 duration:v35];
    v46 = v29;
    v30 = &v46;
    goto LABEL_33;
  }

  v28 = objc_alloc(getCHHapticEventClass());
  [v9 effectiveDelay];
  v29 = [v28 initWithEventType:v10 parameters:v12 relativeTime:?];
  v45 = v29;
  v30 = &v45;
LABEL_33:
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:{1, v37, v38, v39, v40, selfCopy}];

LABEL_34:

  return v14;
}

- (id)_internal_createEventsForTransientHapticData:(id)data
{
  v19[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v4 = objc_alloc(getCHHapticEventParameterClass());
  v5 = getCHHapticEventParameterIDHapticIntensity();
  [dataCopy intensity];
  v6 = [v4 initWithParameterID:v5 value:?];

  v7 = objc_alloc(getCHHapticEventParameterClass());
  v8 = getCHHapticEventParameterIDHapticSharpness();
  [dataCopy sharpness];
  v9 = [v7 initWithParameterID:v8 value:?];

  v10 = objc_alloc(getCHHapticEventClass());
  v11 = getCHHapticEventTypeHapticTransient();
  v18[0] = v6;
  v18[1] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  [dataCopy effectiveDelay];
  v14 = v13;

  v15 = [v10 initWithEventType:v11 parameters:v12 relativeTime:v14];
  v19[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];

  return v16;
}

- (id)_internal_createEventsForFeedbackData:(id)data engine:(id)engine parameters:(id *)parameters parameterCurves:(id *)curves
{
  dataCopy = data;
  engineCopy = engine;
  pattern = [dataCopy pattern];

  if (pattern)
  {
    v13 = [(_UIFeedbackCoreHapticsPlayer *)self _internal_createEventsForLibraryFeedbackData:dataCopy engine:engineCopy parameters:parameters parameterCurves:curves];
  }

  else
  {
    fileURL = [dataCopy fileURL];

    if (fileURL)
    {
      v13 = [(_UIFeedbackCoreHapticsPlayer *)self _internal_createEventsForFileFeedbackData:dataCopy engine:engineCopy parameters:parameters parameterCurves:curves];
    }

    else
    {
      if ([dataCopy isTransientHaptic])
      {
        [(_UIFeedbackCoreHapticsPlayer *)self _internal_createEventsForTransientHapticData:dataCopy];
      }

      else
      {
        [(_UIFeedbackCoreHapticsPlayer *)self _internal_createEventsForLegacyFeedbackData:dataCopy];
      }
      v13 = ;
    }
  }

  v15 = v13;

  return v15;
}

- (id)_internal_createPatternForFeedbackData:(id)data feedback:(id)feedback engine:(id)engine
{
  v76 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  feedbackCopy = feedback;
  engineCopy = engine;
  v58 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(dataCopy, "count")}];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = dataCopy;
  v9 = [obj countByEnumeratingWithState:&v67 objects:v75 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v68;
    v13 = MEMORY[0x1E695E0F0];
    v14 = MEMORY[0x1E695E0F0];
    selfCopy = self;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v68 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v67 + 1) + 8 * i);
        effectiveEnabledFeedbackTypes = [v16 effectiveEnabledFeedbackTypes];
        if ((effectiveEnabledFeedbackTypes & 3) == 3 || (v18 = effectiveEnabledFeedbackTypes, (effectiveEnabledFeedbackTypes & 3) == 2) && (-[_UIFeedbackCoreHapticsPlayer hapticEngine](self, "hapticEngine"), v62 = v14, v19 = v13, v20 = objc_claimAutoreleasedReturnValue(), [v20 coreHapticsEngine], v21 = v10, v22 = v12, v23 = v11, v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "playsHapticsOnly"), v24, v11 = v23, v12 = v22, v10 = v21, v20, v13 = v19, v14 = v62, self = selfCopy, v25))
        {
          v65 = v13;
          v66 = v14;
          v26 = [(_UIFeedbackCoreHapticsPlayer *)self _internal_createEventsForFeedbackData:v16 engine:engineCopy parameters:&v66 parameterCurves:&v65];
          v27 = v66;

          v28 = v65;
          if (v26)
          {
            [v58 addObjectsFromArray:v26];
          }

          v13 = v28;
          v14 = v27;
        }

        else
        {
          if (!v11)
          {
            v11 = objc_opt_new();
          }

          [(__CFString *)v11 appendFormat:@" %lu", v18];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v67 objects:v75 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
    v13 = MEMORY[0x1E695E0F0];
    v14 = MEMORY[0x1E695E0F0];
  }

  if ([v58 count])
  {
    CHHapticPatternClass = qword_1ED49A0C8;
    if (!qword_1ED49A0C8)
    {
      CHHapticPatternClass = getCHHapticPatternClass();
    }

    v30 = v13;
    v31 = [v13 count];
    v32 = [CHHapticPatternClass alloc];
    v33 = feedbackCopy;
    if (v31)
    {
      v64 = 0;
      v34 = &v64;
      v35 = [v32 initWithEvents:v58 parameterCurves:v30 error:&v64];
    }

    else
    {
      v63 = 0;
      v34 = &v63;
      v35 = [v32 initWithEvents:v58 parameters:v14 error:&v63];
    }

    v36 = v35;
    v13 = v30;
    v37 = *v34;
    v38 = v37;
    if ((!v36 || v37) && (_UIFeedbackLoggingDisabled & 1) == 0)
    {
      v39 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49A1A0) + 8);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = v30;
        v41 = MEMORY[0x1E696AEC0];
        v42 = v11;
        v43 = feedbackCopy;
        v44 = v39;
        v45 = [v41 stringWithFormat:@"<%s: %p>", object_getClassName(v43), v43];

        v11 = v42;
        *buf = 138412546;
        v72 = v45;
        v73 = 2112;
        v74 = v38;
        _os_log_impl(&dword_188A29000, v44, OS_LOG_TYPE_ERROR, "failed to create haptic pattern for feedback %@: %@", buf, 0x16u);

        v13 = v40;
      }
    }
  }

  else if (_UIFeedbackLoggingDisabled)
  {
    v36 = 0;
    v33 = feedbackCopy;
  }

  else
  {
    v46 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49A198) + 8);
    v33 = feedbackCopy;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = v13;
      v48 = MEMORY[0x1E696AEC0];
      v49 = v11;
      v50 = feedbackCopy;
      v51 = v46;
      ClassName = object_getClassName(v50);
      v52 = v48;
      v13 = v47;
      v53 = [v52 stringWithFormat:@"<%s: %p>", ClassName, v50];

      v11 = v49;
      v54 = @" none";
      if (v49)
      {
        v54 = v49;
      }

      *buf = 138412546;
      v72 = v53;
      v73 = 2112;
      v74 = v54;
      _os_log_impl(&dword_188A29000, v51, OS_LOG_TYPE_DEFAULT, "no playable feedback for %@ (ignored feedback types:%@)", buf, 0x16u);
    }

    v36 = 0;
  }

  return v36;
}

- (id)_internal_createFixedParameterForParameters:(id)parameters withKey:(id)key forEventType:(id)type
{
  v88 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  keyCopy = key;
  parametersCopy = parameters;
  v10 = +[_UIFeedbackParameters parameters];
  v11 = [v10 objectForKeyedSubscript:keyCopy];

  [parametersCopy _effectiveValueForParameterWithKey:keyCopy];
  v13 = v12;

  LODWORD(v10) = [parametersCopy _isAudio];
  if (v10)
  {
    v14 = @"audioType";
  }

  else
  {
    v14 = @"hapticType";
  }

  v15 = [v11 objectForKeyedSubscript:v14];
  intValue = [v15 intValue];
  v17 = intValue;

  switch(intValue)
  {
    case 0:
      v21 = getCHHapticEventParameterIDAudioVolume();
      if (v21)
      {
        goto LABEL_26;
      }

      goto LABEL_39;
    case 1:
      v21 = getCHHapticEventParameterIDAudioPitch();
      if (!v21)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    case 2:
    case 9:
      v21 = getCHHapticEventParameterIDAttackTime();
      if (!v21)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    case 3:
    case 10:
      v21 = getCHHapticEventParameterIDDecayTime();
      if (!v21)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    case 4:
    case 11:
      v21 = getCHHapticEventParameterIDReleaseTime();
      if (!v21)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    case 5:
      v21 = getCHHapticEventParameterIDAudioPan();
      if (v21)
      {
        goto LABEL_26;
      }

      goto LABEL_39;
    case 6:
    case 8:
    case 12:
      if (_UIFeedbackLoggingDisabled)
      {
        goto LABEL_39;
      }

      CategoryCachedImpl = __UILogGetCategoryCachedImpl("FeedbackDebug", &qword_1ED49A208);
      if ((*CategoryCachedImpl & 1) == 0)
      {
        goto LABEL_39;
      }

      v19 = *(CategoryCachedImpl + 8);
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      *buf = 134217984;
      v85 = v17;
      v20 = "UIFeedbackParameterType (%ld) has no equivalent CHHapticEventParameterID";
      goto LABEL_24;
    case 7:
      v21 = getCHHapticEventParameterIDHapticIntensity();
      if (!v21)
      {
        goto LABEL_39;
      }

LABEL_26:
      v22 = v21;
      v23 = typeCopy;
      v24 = getCHHapticEventTypeHapticTransient();
      v25 = v24;
      if (v24 == v23)
      {

        goto LABEL_44;
      }

      v26 = getCHHapticEventTypeHapticTransient();
      v27 = [v23 isEqualToString:v26];

      if (v27)
      {
LABEL_44:
        v50 = getCHHapticEventParameterIDHapticIntensity();
        if (v50 == v22)
        {
          goto LABEL_86;
        }

        v51 = getCHHapticEventParameterIDHapticIntensity();
        if ([v22 isEqualToString:v51])
        {
          goto LABEL_85;
        }

        v52 = getCHHapticEventParameterIDHapticSharpness();
        if (v52 == v22)
        {
          goto LABEL_84;
        }

        v53 = getCHHapticEventParameterIDHapticSharpness();
LABEL_58:
        v54 = v53;
        v55 = [v22 isEqualToString:v53];
        goto LABEL_59;
      }

      v28 = getCHHapticEventTypeAudioClick();
      v29 = v28;
      if (v28 == v23)
      {

        goto LABEL_49;
      }

      v30 = getCHHapticEventTypeAudioClick();
      v31 = [v23 isEqualToString:v30];

      if (v31)
      {
LABEL_49:
        v50 = getCHHapticEventParameterIDAudioVolume();
        if (v50 == v22)
        {
          goto LABEL_86;
        }

        v51 = getCHHapticEventParameterIDAudioVolume();
        if ([v22 isEqualToString:v51])
        {
          goto LABEL_85;
        }

        v52 = getCHHapticEventParameterIDAudioPitch();
        if (v52 == v22)
        {
          goto LABEL_84;
        }

        v53 = getCHHapticEventParameterIDAudioPitch();
        goto LABEL_58;
      }

      v32 = getCHHapticEventTypeWheelsOfTime();
      v33 = v32;
      if (v32 == v23)
      {

        goto LABEL_54;
      }

      v34 = getCHHapticEventTypeWheelsOfTime();
      v35 = [v23 isEqualToString:v34];

      if (v35)
      {
LABEL_54:
        v50 = getCHHapticEventParameterIDHapticIntensity();
        if (v50 == v22)
        {
          goto LABEL_86;
        }

        v51 = getCHHapticEventParameterIDHapticIntensity();
        if ([v22 isEqualToString:v51])
        {
          goto LABEL_85;
        }

        v52 = getCHHapticEventParameterIDAudioVolume();
        if (v52 == v22)
        {
          goto LABEL_84;
        }

        v53 = getCHHapticEventParameterIDAudioVolume();
        goto LABEL_58;
      }

      v36 = getCHHapticEventTypeAudioCustom();
      v37 = v36;
      if (v36 == v23)
      {

LABEL_62:
        v50 = getCHHapticEventParameterIDAudioVolume();
        if (v50 != v22)
        {
          v51 = getCHHapticEventParameterIDAudioVolume();
          if (([v22 isEqualToString:v51] & 1) == 0)
          {
            v52 = getCHHapticEventParameterIDAudioPan();
            if (v52 != v22)
            {
              v54 = getCHHapticEventParameterIDAudioPan();
              if (([v22 isEqualToString:v54] & 1) == 0)
              {
                v56 = getCHHapticEventParameterIDAudioBrightness();
                if (v56 != v22)
                {
                  v82 = v56;
                  v80 = getCHHapticEventParameterIDAudioBrightness();
                  if (([v22 isEqualToString:?] & 1) == 0)
                  {
                    v57 = getCHHapticEventParameterIDAudioPitch();
                    if (v57 == v22)
                    {
                      v55 = 1;
                    }

                    else
                    {
                      v77 = v57;
                      v74 = getCHHapticEventParameterIDAudioPitch();
                      v55 = [v22 isEqualToString:v74];

                      v57 = v77;
                    }

                    goto LABEL_123;
                  }

LABEL_77:
                  v55 = 1;
LABEL_123:

                  v56 = v82;
                  goto LABEL_124;
                }

LABEL_91:
                v55 = 1;
LABEL_124:

                goto LABEL_59;
              }

LABEL_83:
            }

LABEL_84:
          }

LABEL_85:
        }

LABEL_86:

LABEL_87:
        v58 = objc_alloc(getCHHapticEventParameterClass());
        *&v59 = v13;
        v49 = [v58 initWithParameterID:v22 value:v59];
        goto LABEL_88;
      }

      v38 = getCHHapticEventTypeAudioCustom();
      v39 = [v23 isEqualToString:v38];

      if (v39)
      {
        goto LABEL_62;
      }

      v40 = getCHHapticEventTypeHapticContinuous();
      v41 = v40;
      if (v40 == v23)
      {

LABEL_71:
        v50 = getCHHapticEventParameterIDHapticIntensity();
        if (v50 != v22)
        {
          v51 = getCHHapticEventParameterIDHapticIntensity();
          if (([v22 isEqualToString:v51] & 1) == 0)
          {
            v52 = getCHHapticEventParameterIDHapticSharpness();
            if (v52 != v22)
            {
              v54 = getCHHapticEventParameterIDHapticSharpness();
              if (([v22 isEqualToString:v54] & 1) == 0)
              {
                v56 = getCHHapticEventParameterIDAttackTime();
                if (v56 != v22)
                {
                  v82 = v56;
                  v80 = getCHHapticEventParameterIDAttackTime();
                  if (([v22 isEqualToString:?] & 1) == 0)
                  {
                    v78 = getCHHapticEventParameterIDDecayTime();
                    if (v78 == v22)
                    {
                      v55 = 1;
                    }

                    else
                    {
                      v75 = getCHHapticEventParameterIDDecayTime();
                      if ([v22 isEqualToString:?])
                      {
                        v55 = 1;
                      }

                      else
                      {
                        v72 = getCHHapticEventParameterIDReleaseTime();
                        if (v72 == v22)
                        {
                          v55 = 1;
                        }

                        else
                        {
                          v70 = getCHHapticEventParameterIDReleaseTime();
                          if ([v22 isEqualToString:?])
                          {
                            v55 = 1;
                          }

                          else
                          {
                            v68 = getCHHapticEventParameterIDSustained();
                            if (v68 == v22)
                            {
                              v55 = 1;
                            }

                            else
                            {
                              v66 = getCHHapticEventParameterIDSustained();
                              v55 = [v22 isEqualToString:v66];
                            }
                          }
                        }
                      }
                    }

                    goto LABEL_123;
                  }

                  goto LABEL_77;
                }

                goto LABEL_91;
              }

              goto LABEL_83;
            }

            goto LABEL_84;
          }

          goto LABEL_85;
        }

        goto LABEL_86;
      }

      v42 = getCHHapticEventTypeHapticContinuous();
      v43 = [v23 isEqualToString:v42];

      if (v43)
      {
        goto LABEL_71;
      }

      v44 = getCHHapticEventTypeAudioContinuous();
      v45 = v44;
      if (v44 == v23)
      {
      }

      else
      {
        v46 = getCHHapticEventTypeAudioContinuous();
        v47 = [v23 isEqualToString:v46];

        if ((v47 & 1) == 0)
        {

          goto LABEL_40;
        }
      }

      v50 = getCHHapticEventParameterIDAudioVolume();
      if (v50 == v22)
      {
        goto LABEL_86;
      }

      v51 = getCHHapticEventParameterIDAudioVolume();
      if ([v22 isEqualToString:v51])
      {
        goto LABEL_85;
      }

      v52 = getCHHapticEventParameterIDAudioPan();
      if (v52 == v22)
      {
        goto LABEL_84;
      }

      v54 = getCHHapticEventParameterIDAudioPan();
      if ([v22 isEqualToString:v54])
      {
        goto LABEL_83;
      }

      v83 = getCHHapticEventParameterIDAudioBrightness();
      if (v83 == v22)
      {
        v55 = 1;
      }

      else
      {
        v81 = getCHHapticEventParameterIDAudioBrightness();
        if ([v22 isEqualToString:?])
        {
          v55 = 1;
        }

        else
        {
          v79 = getCHHapticEventParameterIDAudioPitch();
          if (v79 == v22)
          {
            v55 = 1;
          }

          else
          {
            v76 = getCHHapticEventParameterIDAudioPitch();
            if ([v22 isEqualToString:?])
            {
              v55 = 1;
            }

            else
            {
              v73 = getCHHapticEventParameterIDAttackTime();
              if (v73 == v22)
              {
                v55 = 1;
              }

              else
              {
                v71 = getCHHapticEventParameterIDAttackTime();
                if ([v22 isEqualToString:?])
                {
                  v55 = 1;
                }

                else
                {
                  v69 = getCHHapticEventParameterIDDecayTime();
                  if (v69 == v22)
                  {
                    v55 = 1;
                  }

                  else
                  {
                    v67 = getCHHapticEventParameterIDDecayTime();
                    if ([v22 isEqualToString:?])
                    {
                      v55 = 1;
                    }

                    else
                    {
                      v65 = getCHHapticEventParameterIDReleaseTime();
                      if (v65 == v22)
                      {
                        v55 = 1;
                      }

                      else
                      {
                        v64 = getCHHapticEventParameterIDReleaseTime();
                        if ([v22 isEqualToString:?])
                        {
                          v55 = 1;
                        }

                        else
                        {
                          v63 = getCHHapticEventParameterIDSustained();
                          if (v63 == v22)
                          {
                            v55 = 1;
                          }

                          else
                          {
                            v62 = getCHHapticEventParameterIDSustained();
                            v55 = [v22 isEqualToString:v62];
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_59:
      if (v55)
      {
        goto LABEL_87;
      }

LABEL_40:
      if ((_UIFeedbackLoggingDisabled & 1) == 0)
      {
        v48 = __UILogGetCategoryCachedImpl("FeedbackDebug", &qword_1ED49A1A8);
        if (*v48)
        {
          v61 = *(v48 + 8);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v85 = v17;
            v86 = 2048;
            v87 = v13;
            _os_log_impl(&dword_188A29000, v61, OS_LOG_TYPE_ERROR, "Ignoring UIFeedbackParameterType (%ld) with value %f", buf, 0x16u);
          }
        }
      }

      v49 = 0;
LABEL_88:

      return v49;
    default:
      if (_UIFeedbackLoggingDisabled)
      {
        goto LABEL_39;
      }

      v19 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49A210) + 8);
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      *buf = 134217984;
      v85 = v17;
      v20 = "Cannot convert UIFeedbackParameterType (%ld) to CHHapticEventParameterID";
LABEL_24:
      _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);
LABEL_39:
      v22 = 0;
      goto LABEL_40;
  }
}

- (void)_updateValueForParameters:(id)parameters withKey:(id)key
{
  parametersCopy = parameters;
  keyCopy = key;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66___UIFeedbackCoreHapticsPlayer__updateValueForParameters_withKey___block_invoke;
  block[3] = &unk_1E70F6228;
  block[4] = self;
  v14 = parametersCopy;
  v15 = keyCopy;
  v9 = internalQueue;
  if (!v9)
  {
    v9 = MEMORY[0x1E69E96A0];
    v10 = MEMORY[0x1E69E96A0];
  }

  v11 = keyCopy;
  v12 = parametersCopy;
  dispatch_async(v9, block);
}

- (void)_internal_updateValueForParameters:(id)parameters withKey:(id)key
{
  v92[1] = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  keyCopy = key;
  v8 = +[_UIFeedbackParameters parameters];
  v9 = [v8 objectForKeyedSubscript:keyCopy];

  [parametersCopy _effectiveValueForParameterWithKey:keyCopy];
  v11 = v10;
  if ([parametersCopy _isAudio])
  {
    v12 = @"audioType";
  }

  else
  {
    v12 = @"hapticType";
  }

  v13 = [v9 objectForKeyedSubscript:v12];
  intValue = [v13 intValue];

  switch(intValue)
  {
    case 0:
      v85 = 0;
      v86 = &v85;
      v87 = 0x2020000000;
      v18 = qword_1ED49A228;
      v88 = qword_1ED49A228;
      if (!qword_1ED49A228)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getCHHapticDynamicParameterIDAudioVolumeControlSymbolLoc_block_invoke;
        v90 = COERCE_DOUBLE(&unk_1E70F2F20);
        v91[0] = &v85;
        v43 = CoreHapticsLibrary_0();
        v44 = dlsym(v43, "CHHapticDynamicParameterIDAudioVolumeControl");
        *(*(v91[0] + 8) + 24) = v44;
        qword_1ED49A228 = *(*(v91[0] + 8) + 24);
        v18 = v86[3];
      }

      _Block_object_dispose(&v85, 8);
      if (v18)
      {
        goto LABEL_56;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticDynamicParameterID getCHHapticDynamicParameterIDAudioVolumeControl(void)"];
      [currentHandler handleFailureInFunction:v46 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:70 description:{@"%s", dlerror()}];

      goto LABEL_76;
    case 1:
      v85 = 0;
      v86 = &v85;
      v87 = 0x2020000000;
      v18 = qword_1ED49A230;
      v88 = qword_1ED49A230;
      if (!qword_1ED49A230)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getCHHapticDynamicParameterIDAudioPitchControlSymbolLoc_block_invoke;
        v90 = COERCE_DOUBLE(&unk_1E70F2F20);
        v91[0] = &v85;
        v47 = CoreHapticsLibrary_0();
        v48 = dlsym(v47, "CHHapticDynamicParameterIDAudioPitchControl");
        *(*(v91[0] + 8) + 24) = v48;
        qword_1ED49A230 = *(*(v91[0] + 8) + 24);
        v18 = v86[3];
      }

      _Block_object_dispose(&v85, 8);
      if (v18)
      {
        goto LABEL_56;
      }

      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticDynamicParameterID getCHHapticDynamicParameterIDAudioPitchControl(void)"];
      [currentHandler2 handleFailureInFunction:v50 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:73 description:{@"%s", dlerror()}];

      goto LABEL_76;
    case 2:
      v85 = 0;
      v86 = &v85;
      v87 = 0x2020000000;
      v18 = qword_1ED49A240;
      v88 = qword_1ED49A240;
      if (!qword_1ED49A240)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getCHHapticDynamicParameterIDAudioAttackTimeControlSymbolLoc_block_invoke;
        v90 = COERCE_DOUBLE(&unk_1E70F2F20);
        v91[0] = &v85;
        v35 = CoreHapticsLibrary_0();
        v36 = dlsym(v35, "CHHapticDynamicParameterIDAudioAttackTimeControl");
        *(*(v91[0] + 8) + 24) = v36;
        qword_1ED49A240 = *(*(v91[0] + 8) + 24);
        v18 = v86[3];
      }

      _Block_object_dispose(&v85, 8);
      if (v18)
      {
        goto LABEL_56;
      }

      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticDynamicParameterID getCHHapticDynamicParameterIDAudioAttackTimeControl(void)"];
      [currentHandler3 handleFailureInFunction:v38 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:74 description:{@"%s", dlerror()}];

      goto LABEL_76;
    case 3:
      v85 = 0;
      v86 = &v85;
      v87 = 0x2020000000;
      v18 = qword_1ED49A248;
      v88 = qword_1ED49A248;
      if (!qword_1ED49A248)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getCHHapticDynamicParameterIDAudioDecayTimeControlSymbolLoc_block_invoke;
        v90 = COERCE_DOUBLE(&unk_1E70F2F20);
        v91[0] = &v85;
        v39 = CoreHapticsLibrary_0();
        v40 = dlsym(v39, "CHHapticDynamicParameterIDAudioDecayTimeControl");
        *(*(v91[0] + 8) + 24) = v40;
        qword_1ED49A248 = *(*(v91[0] + 8) + 24);
        v18 = v86[3];
      }

      _Block_object_dispose(&v85, 8);
      if (v18)
      {
        goto LABEL_56;
      }

      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticDynamicParameterID getCHHapticDynamicParameterIDAudioDecayTimeControl(void)"];
      [currentHandler4 handleFailureInFunction:v42 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:75 description:{@"%s", dlerror()}];

      goto LABEL_76;
    case 4:
      v85 = 0;
      v86 = &v85;
      v87 = 0x2020000000;
      v18 = qword_1ED49A250;
      v88 = qword_1ED49A250;
      if (!qword_1ED49A250)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getCHHapticDynamicParameterIDAudioReleaseTimeControlSymbolLoc_block_invoke;
        v90 = COERCE_DOUBLE(&unk_1E70F2F20);
        v91[0] = &v85;
        v23 = CoreHapticsLibrary_0();
        v24 = dlsym(v23, "CHHapticDynamicParameterIDAudioReleaseTimeControl");
        *(*(v91[0] + 8) + 24) = v24;
        qword_1ED49A250 = *(*(v91[0] + 8) + 24);
        v18 = v86[3];
      }

      _Block_object_dispose(&v85, 8);
      if (v18)
      {
        goto LABEL_56;
      }

      currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticDynamicParameterID getCHHapticDynamicParameterIDAudioReleaseTimeControl(void)"];
      [currentHandler5 handleFailureInFunction:v26 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:76 description:{@"%s", dlerror()}];

      goto LABEL_76;
    case 5:
      v85 = 0;
      v86 = &v85;
      v87 = 0x2020000000;
      v18 = qword_1ED49A238;
      v88 = qword_1ED49A238;
      if (!qword_1ED49A238)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getCHHapticDynamicParameterIDAudioPanControlSymbolLoc_block_invoke;
        v90 = COERCE_DOUBLE(&unk_1E70F2F20);
        v91[0] = &v85;
        v51 = CoreHapticsLibrary_0();
        v52 = dlsym(v51, "CHHapticDynamicParameterIDAudioPanControl");
        *(*(v91[0] + 8) + 24) = v52;
        qword_1ED49A238 = *(*(v91[0] + 8) + 24);
        v18 = v86[3];
      }

      _Block_object_dispose(&v85, 8);
      if (v18)
      {
        goto LABEL_56;
      }

      currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
      v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticDynamicParameterID getCHHapticDynamicParameterIDAudioPanControl(void)"];
      [currentHandler6 handleFailureInFunction:v54 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:71 description:{@"%s", dlerror()}];

      goto LABEL_76;
    case 6:
    case 12:
      if (_UIFeedbackLoggingDisabled)
      {
        goto LABEL_66;
      }

      CategoryCachedImpl = __UILogGetCategoryCachedImpl("FeedbackDebug", &qword_1ED49A218);
      if ((*CategoryCachedImpl & 1) == 0)
      {
        goto LABEL_66;
      }

      v16 = *(CategoryCachedImpl + 8);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      *buf = 134217984;
      *&buf[4] = intValue;
      v17 = "UIFeedbackParameterType (%ld) has no equivalent CHHapticDynamicParameterID";
      goto LABEL_44;
    case 7:
      v85 = 0;
      v86 = &v85;
      v87 = 0x2020000000;
      v18 = qword_1ED49A258;
      v88 = qword_1ED49A258;
      if (!qword_1ED49A258)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getCHHapticDynamicParameterIDHapticIntensityControlSymbolLoc_block_invoke;
        v90 = COERCE_DOUBLE(&unk_1E70F2F20);
        v91[0] = &v85;
        v59 = CoreHapticsLibrary_0();
        v60 = dlsym(v59, "CHHapticDynamicParameterIDHapticIntensityControl");
        *(*(v91[0] + 8) + 24) = v60;
        qword_1ED49A258 = *(*(v91[0] + 8) + 24);
        v18 = v86[3];
      }

      _Block_object_dispose(&v85, 8);
      if (v18)
      {
        goto LABEL_56;
      }

      currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
      v83 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticDynamicParameterID getCHHapticDynamicParameterIDHapticIntensityControl(void)"];
      [currentHandler7 handleFailureInFunction:v83 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:64 description:{@"%s", dlerror()}];

      goto LABEL_76;
    case 8:
      v85 = 0;
      v86 = &v85;
      v87 = 0x2020000000;
      v18 = qword_1ED49A278;
      v88 = qword_1ED49A278;
      if (!qword_1ED49A278)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getCHHapticDynamicParameterIDHapticSharpnessControlSymbolLoc_block_invoke;
        v90 = COERCE_DOUBLE(&unk_1E70F2F20);
        v91[0] = &v85;
        v31 = CoreHapticsLibrary_0();
        v32 = dlsym(v31, "CHHapticDynamicParameterIDHapticSharpnessControl");
        *(*(v91[0] + 8) + 24) = v32;
        qword_1ED49A278 = *(*(v91[0] + 8) + 24);
        v18 = v86[3];
      }

      _Block_object_dispose(&v85, 8);
      if (v18)
      {
        goto LABEL_56;
      }

      currentHandler8 = [MEMORY[0x1E696AAA8] currentHandler];
      v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticDynamicParameterID getCHHapticDynamicParameterIDHapticSharpnessControl(void)"];
      [currentHandler8 handleFailureInFunction:v34 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:65 description:{@"%s", dlerror()}];

      goto LABEL_76;
    case 9:
      v85 = 0;
      v86 = &v85;
      v87 = 0x2020000000;
      v18 = qword_1ED49A260;
      v88 = qword_1ED49A260;
      if (!qword_1ED49A260)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getCHHapticDynamicParameterIDHapticAttackTimeControlSymbolLoc_block_invoke;
        v90 = COERCE_DOUBLE(&unk_1E70F2F20);
        v91[0] = &v85;
        v55 = CoreHapticsLibrary_0();
        v56 = dlsym(v55, "CHHapticDynamicParameterIDHapticAttackTimeControl");
        *(*(v91[0] + 8) + 24) = v56;
        qword_1ED49A260 = *(*(v91[0] + 8) + 24);
        v18 = v86[3];
      }

      _Block_object_dispose(&v85, 8);
      if (v18)
      {
        goto LABEL_56;
      }

      currentHandler9 = [MEMORY[0x1E696AAA8] currentHandler];
      v58 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticDynamicParameterID getCHHapticDynamicParameterIDHapticAttackTimeControl(void)"];
      [currentHandler9 handleFailureInFunction:v58 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:66 description:{@"%s", dlerror()}];

      goto LABEL_76;
    case 10:
      v85 = 0;
      v86 = &v85;
      v87 = 0x2020000000;
      v18 = qword_1ED49A268;
      v88 = qword_1ED49A268;
      if (!qword_1ED49A268)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getCHHapticDynamicParameterIDHapticDecayTimeControlSymbolLoc_block_invoke;
        v90 = COERCE_DOUBLE(&unk_1E70F2F20);
        v91[0] = &v85;
        v19 = CoreHapticsLibrary_0();
        v20 = dlsym(v19, "CHHapticDynamicParameterIDHapticDecayTimeControl");
        *(*(v91[0] + 8) + 24) = v20;
        qword_1ED49A268 = *(*(v91[0] + 8) + 24);
        v18 = v86[3];
      }

      _Block_object_dispose(&v85, 8);
      if (v18)
      {
        goto LABEL_56;
      }

      currentHandler10 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticDynamicParameterID getCHHapticDynamicParameterIDHapticDecayTimeControl(void)"];
      [currentHandler10 handleFailureInFunction:v22 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:67 description:{@"%s", dlerror()}];

      goto LABEL_76;
    case 11:
      v85 = 0;
      v86 = &v85;
      v87 = 0x2020000000;
      v18 = qword_1ED49A270;
      v88 = qword_1ED49A270;
      if (!qword_1ED49A270)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getCHHapticDynamicParameterIDHapticReleaseTimeControlSymbolLoc_block_invoke;
        v90 = COERCE_DOUBLE(&unk_1E70F2F20);
        v91[0] = &v85;
        v27 = CoreHapticsLibrary_0();
        v28 = dlsym(v27, "CHHapticDynamicParameterIDHapticReleaseTimeControl");
        *(*(v91[0] + 8) + 24) = v28;
        qword_1ED49A270 = *(*(v91[0] + 8) + 24);
        v18 = v86[3];
      }

      _Block_object_dispose(&v85, 8);
      if (!v18)
      {
        currentHandler11 = [MEMORY[0x1E696AAA8] currentHandler];
        v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticDynamicParameterID getCHHapticDynamicParameterIDHapticReleaseTimeControl(void)"];
        [currentHandler11 handleFailureInFunction:v30 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:68 description:{@"%s", dlerror()}];

LABEL_76:
        __break(1u);
      }

LABEL_56:
      v61 = *v18;
      if (!v61)
      {
        goto LABEL_66;
      }

      v62 = v61;
      v85 = 0;
      v86 = &v85;
      v87 = 0x2050000000;
      v63 = qword_1ED49A280;
      v88 = qword_1ED49A280;
      if (!qword_1ED49A280)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getCHHapticDynamicParameterClass_block_invoke;
        v90 = COERCE_DOUBLE(&unk_1E70F2F20);
        v91[0] = &v85;
        __getCHHapticDynamicParameterClass_block_invoke(buf);
        v63 = v86[3];
      }

      v64 = v63;
      _Block_object_dispose(&v85, 8);
      v65 = [v63 alloc];
      *&v66 = v11;
      v67 = [v65 initWithParameterID:v62 value:v66 relativeTime:0.0];
      v92[0] = v67;
      v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:1];
      if ((_UIFeedbackLoggingDisabled & 1) == 0)
      {
        v69 = __UILogGetCategoryCachedImpl("FeedbackDebug", &qword_1ED49A1B8);
        if (*v69)
        {
          v78 = *(v69 + 8);
          if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
          {
            v79 = v78;
            _isAudio = [parametersCopy _isAudio];
            v81 = @"haptic";
            *buf = 138413058;
            if (_isAudio)
            {
              v81 = @"audio";
            }

            *&buf[4] = v81;
            *&buf[12] = 2112;
            *&buf[14] = keyCopy;
            *&buf[22] = 2048;
            v90 = v11;
            LOWORD(v91[0]) = 2112;
            *(v91 + 2) = self;
            _os_log_impl(&dword_188A29000, v79, OS_LOG_TYPE_ERROR, "set %@ %@ %.3f on player %@", buf, 0x2Au);
          }
        }
      }

      coreHapticsPlayer = [(_UIFeedbackCoreHapticsPlayer *)self coreHapticsPlayer];
      v84 = 0;
      [coreHapticsPlayer sendParameters:v68 atTime:&v84 error:0.0];
      v71 = COERCE_DOUBLE(v84);

      if (v71 != 0.0 && (_UIFeedbackLoggingDisabled & 1) == 0)
      {
        v72 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49A1C0) + 8);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          v73 = v72;
          hapticEngine = [(_UIFeedbackCoreHapticsPlayer *)self hapticEngine];
          v75 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%s: %p>", object_getClassName(hapticEngine), hapticEngine];
          *buf = 138412802;
          *&buf[4] = keyCopy;
          *&buf[12] = 2112;
          *&buf[14] = v75;
          *&buf[22] = 2112;
          v90 = v71;
          _os_log_impl(&dword_188A29000, v73, OS_LOG_TYPE_ERROR, "failed setting %@ parameter for %@: %@", buf, 0x20u);
        }
      }

      break;
    default:
      if (_UIFeedbackLoggingDisabled)
      {
        goto LABEL_66;
      }

      v16 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49A220) + 8);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      *buf = 134217984;
      *&buf[4] = intValue;
      v17 = "Cannot convert UIFeedbackParameterType (%ld) to CHHapticDynamicParameterID";
LABEL_44:
      _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);
LABEL_66:
      if ((_UIFeedbackLoggingDisabled & 1) == 0)
      {
        v76 = __UILogGetCategoryCachedImpl("FeedbackDebug", &qword_1ED49A1B0);
        if (*v76)
        {
          v77 = *(v76 + 8);
          if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = intValue;
            *&buf[12] = 2048;
            *&buf[14] = v11;
            _os_log_impl(&dword_188A29000, v77, OS_LOG_TYPE_ERROR, "Ignoring UIFeedbackParameterType (%ld) with value %f", buf, 0x16u);
          }
        }
      }

      break;
  }
}

- (void)_playFeedback:(id)feedback atTime:(double)time
{
  feedbackCopy = feedback;
  _effectiveFeedbackData = [feedbackCopy _effectiveFeedbackData];
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53___UIFeedbackCoreHapticsPlayer__playFeedback_atTime___block_invoke;
  v13[3] = &unk_1E7107CE8;
  v13[4] = self;
  v14 = _effectiveFeedbackData;
  v15 = feedbackCopy;
  timeCopy = time;
  v9 = internalQueue;
  if (!v9)
  {
    v9 = MEMORY[0x1E69E96A0];
    v10 = MEMORY[0x1E69E96A0];
  }

  v11 = feedbackCopy;
  v12 = _effectiveFeedbackData;
  dispatch_async(v9, v13);
}

- (BOOL)_internal_playFeedbackData:(id)data forFeedback:(id)feedback atTime:(double)time
{
  v36 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  feedbackCopy = feedback;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = dataCopy;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if (![*(*(&v27 + 1) + 8 * i) canReuseCoreHapticsPlayer])
        {

          goto LABEL_12;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  coreHapticsPlayer = [(_UIFeedbackCoreHapticsPlayer *)self coreHapticsPlayer];

  if (coreHapticsPlayer)
  {
    goto LABEL_15;
  }

LABEL_12:
  hapticEngine = [(_UIFeedbackCoreHapticsPlayer *)self hapticEngine];
  coreHapticsEngine = [hapticEngine coreHapticsEngine];
  v18 = [(_UIFeedbackCoreHapticsPlayer *)self _internal_createPatternForFeedbackData:v10 feedback:feedbackCopy engine:coreHapticsEngine];

  if (v18)
  {
    coreHapticsPlayer2 = [(_UIFeedbackCoreHapticsPlayer *)self _internal_createPlayerWithPattern:v18];
    if (!coreHapticsPlayer2)
    {
LABEL_21:

      goto LABEL_22;
    }

    [(_UIFeedbackCoreHapticsPlayer *)self setCoreHapticsPlayer:coreHapticsPlayer2];

LABEL_15:
    coreHapticsPlayer2 = [(_UIFeedbackCoreHapticsPlayer *)self coreHapticsPlayer];
    v26 = 0;
    [coreHapticsPlayer2 startAtTime:&v26 error:time];
    v18 = v26;

    LOBYTE(coreHapticsPlayer2) = v18 == 0;
    if (v18)
    {
      if ((_UIFeedbackLoggingDisabled & 1) == 0)
      {
        v20 = *(__UILogGetCategoryCachedImpl("Feedback", &_internal_playFeedbackData_forFeedback_atTime____s_category) + 8);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = v20;
          hapticEngine2 = [(_UIFeedbackCoreHapticsPlayer *)self hapticEngine];
          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%s: %p>", object_getClassName(hapticEngine2), hapticEngine2];
          *buf = 138412546;
          v32 = v23;
          v33 = 2112;
          v34 = v18;
          _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "failed playing feedback event for %@: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      hapticEngine3 = [(_UIFeedbackCoreHapticsPlayer *)self hapticEngine];
      [hapticEngine3 _internal_willPlayFeedback:feedbackCopy atTime:time];

      kdebug_trace();
    }

    goto LABEL_21;
  }

  LOBYTE(coreHapticsPlayer2) = 0;
LABEL_22:

  return coreHapticsPlayer2;
}

- (void)_stopFeedback:(id)feedback
{
  feedbackCopy = feedback;
  _effectiveFeedbackData = [feedbackCopy _effectiveFeedbackData];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46___UIFeedbackCoreHapticsPlayer__stopFeedback___block_invoke;
  block[3] = &unk_1E70F6228;
  block[4] = self;
  v12 = _effectiveFeedbackData;
  v13 = feedbackCopy;
  v7 = internalQueue;
  if (!v7)
  {
    v7 = MEMORY[0x1E69E96A0];
    v8 = MEMORY[0x1E69E96A0];
  }

  v9 = feedbackCopy;
  v10 = _effectiveFeedbackData;
  dispatch_async(v7, block);
}

- (void)_internal_stopFeedbackData:(id)data forFeedback:(id)feedback
{
  v20 = *MEMORY[0x1E69E9840];
  feedbackCopy = feedback;
  hapticEngine = [(_UIFeedbackCoreHapticsPlayer *)self hapticEngine];
  [hapticEngine _internal_willCancelFeedback:feedbackCopy];

  coreHapticsPlayer = [(_UIFeedbackCoreHapticsPlayer *)self coreHapticsPlayer];
  v13 = 0;
  [coreHapticsPlayer stopAtTime:&v13 error:0.0];
  v8 = v13;

  if (v8)
  {
    if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      v9 = *(__UILogGetCategoryCachedImpl("Feedback", &_internal_stopFeedbackData_forFeedback____s_category) + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        hapticEngine2 = [(_UIFeedbackCoreHapticsPlayer *)self hapticEngine];
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%s: %p>", object_getClassName(hapticEngine2), hapticEngine2];
        *buf = 138412802;
        v15 = feedbackCopy;
        v16 = 2112;
        v17 = v12;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "failed stopping feedback %@ for %@: %@", buf, 0x20u);
      }
    }
  }
}

- (_UIFeedbackCoreHapticsEngine)hapticEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_hapticEngine);

  return WeakRetained;
}

@end