@interface _UIFeedbackCoreHapticsPlayer
- (BOOL)_internal_playFeedbackData:(id)a3 forFeedback:(id)a4 atTime:(double)a5;
- (_UIFeedbackCoreHapticsEngine)hapticEngine;
- (_UIFeedbackCoreHapticsPlayer)initWithEngine:(id)a3;
- (id)_internal_createEventsForFeedbackData:(id)a3 engine:(id)a4 parameters:(id *)a5 parameterCurves:(id *)a6;
- (id)_internal_createEventsForFileFeedbackData:(id)a3 engine:(id)a4 parameters:(id *)a5 parameterCurves:(id *)a6;
- (id)_internal_createEventsForLegacyFeedbackData:(id)a3;
- (id)_internal_createEventsForLibraryFeedbackData:(id)a3 engine:(id)a4 parameters:(id *)a5 parameterCurves:(id *)a6;
- (id)_internal_createEventsForTransientHapticData:(id)a3;
- (id)_internal_createFixedParameterForParameters:(id)a3 withKey:(id)a4 forEventType:(id)a5;
- (id)_internal_createPatternForFeedbackData:(id)a3 feedback:(id)a4 engine:(id)a5;
- (id)_internal_createPlayerWithPattern:(id)a3;
- (void)_internal_stopFeedbackData:(id)a3 forFeedback:(id)a4;
- (void)_internal_updateValueForParameters:(id)a3 withKey:(id)a4;
- (void)_playFeedback:(id)a3 atTime:(double)a4;
- (void)_stopFeedback:(id)a3;
- (void)_updateValueForParameters:(id)a3 withKey:(id)a4;
@end

@implementation _UIFeedbackCoreHapticsPlayer

- (_UIFeedbackCoreHapticsPlayer)initWithEngine:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _UIFeedbackCoreHapticsPlayer;
  v5 = [(_UIFeedbackCoreHapticsPlayer *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_hapticEngine, v4);
    v7 = [objc_opt_class() _internalQueue];
    internalQueue = v6->_internalQueue;
    v6->_internalQueue = v7;
  }

  return v6;
}

- (id)_internal_createPlayerWithPattern:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UIFeedbackCoreHapticsPlayer *)self hapticEngine];
  v6 = [v5 coreHapticsEngine];

  if (v6)
  {
    v20 = 0;
    v7 = [v6 createPrivilegedPlayerWithPlayable:v4 error:&v20];
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
          v17 = [(_UIFeedbackCoreHapticsPlayer *)self hapticEngine];
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%s: %p>", object_getClassName(v17), v17];
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
        v13 = [(_UIFeedbackCoreHapticsPlayer *)self hapticEngine];
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%s: %p>", object_getClassName(v13), v13];
        *buf = 138412290;
        v22 = v14;
        _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "failed to create player with pattern because CHHapticEngine was nil for %@", buf, 0xCu);
      }
    }

    v10 = 0;
  }

  return v10;
}

- (id)_internal_createEventsForLibraryFeedbackData:(id)a3 engine:(id)a4 parameters:(id *)a5 parameterCurves:(id *)a6
{
  v8 = a3;
  v9 = [v8 pattern];
  _internal_populateParamtersFromPattern(v9, a5, a6);

  v10 = [v8 pattern];

  v11 = [v10 events];

  return v11;
}

- (id)_internal_createEventsForFileFeedbackData:(id)a3 engine:(id)a4 parameters:(id *)a5 parameterCurves:(id *)a6
{
  v61 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v44 = a4;
  if (qword_1ED49A178 != -1)
  {
    dispatch_once(&qword_1ED49A178, &__block_literal_global_102_0);
  }

  v11 = [v10 fileURL];
  v12 = [qword_1ED49A170 objectForKeyedSubscript:v11];
  if ([v10 fileFeedbackType] == 2)
  {
    v13 = v12;
    if (!v13)
    {
      v14 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v11];
      v50 = 0;
      v13 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v14 options:0 error:&v50];
      v15 = v50;
      [qword_1ED49A170 setObject:v13 forKeyedSubscript:v11];
      if (v15)
      {
        if ((_UIFeedbackLoggingDisabled & 1) == 0)
        {
          v16 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49A180) + 8);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = v16;
            v18 = [v11 lastPathComponent];
            *buf = 138412546;
            *&buf[4] = v18;
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

    _internal_populateParamtersFromPattern(v19, a5, a6);
    v22 = [v19 events];
  }

  else
  {
    if ([v10 fileFeedbackType] != 1)
    {
      v22 = 0;
      goto LABEL_33;
    }

    v23 = v12;
    v24 = [v23 unsignedIntegerValue];
    if (v23 && (v25 = v24, ([v44 resourceIsRegistered:v24] & 1) != 0))
    {
      v13 = v23;
    }

    else
    {
      if ([v10 disableEventUseVolumeEnvelope])
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
          v42 = [MEMORY[0x1E696AAA8] currentHandler];
          v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticAudioResourceKey getCHHapticAudioResourceKeyUseVolumeEnvelope(void)"];
          [v42 handleFailureInFunction:v43 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:80 description:{@"%s", dlerror()}];

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
      v25 = [v44 registerAudioResource:v11 options:v31 error:&v48];
      v32 = v48;
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v25];

      [qword_1ED49A170 setObject:v13 forKeyedSubscript:v11];
      if (v32)
      {
        if ((_UIFeedbackLoggingDisabled & 1) == 0)
        {
          v33 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49A190) + 8);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v34 = v33;
            v35 = [v11 lastPathComponent];
            *buf = 138412546;
            *&buf[4] = v35;
            *&buf[12] = 2112;
            *&buf[14] = v32;
            _os_log_impl(&dword_188A29000, v34, OS_LOG_TYPE_ERROR, "failed registering audio file %@: %@", buf, 0x16u);
          }
        }
      }
    }

    v36 = [MEMORY[0x1E695DF70] array];
    v37 = +[_UIFeedbackParameters parameters];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __108___UIFeedbackCoreHapticsPlayer__internal_createEventsForFileFeedbackData_engine_parameters_parameterCurves___block_invoke_111;
    v45[3] = &unk_1E7107C98;
    v45[4] = self;
    v38 = v10;
    v46 = v38;
    v47 = v36;
    v20 = v36;
    [v37 enumerateKeysAndObjectsUsingBlock:v45];

    v39 = objc_alloc(getCHHapticEventClass());
    [v38 effectiveDelay];
    v40 = [v39 initWithAudioResourceID:v25 parameters:v20 relativeTime:?];
    v55 = v40;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
  }

LABEL_33:

  return v22;
}

- (id)_internal_createEventsForLegacyFeedbackData:(id)a3
{
  v47[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 effectiveEventType];
  v6 = _coreHapticsEventTypeForEffectiveEventType(v5, 1);
  if (!v6)
  {
    v14 = 0;
    goto LABEL_34;
  }

  v7 = [MEMORY[0x1E695DF70] array];
  v8 = +[_UIFeedbackParameters parameters];
  v37 = MEMORY[0x1E69E9820];
  v38 = 3221225472;
  v39 = __76___UIFeedbackCoreHapticsPlayer__internal_createEventsForLegacyFeedbackData___block_invoke;
  v40 = &unk_1E7107CC0;
  v41 = self;
  v9 = v4;
  v42 = v9;
  v10 = v6;
  v43 = v10;
  v11 = v7;
  v44 = v11;
  [v8 enumerateKeysAndObjectsUsingBlock:&v37];

  v12 = v11;
  if (v5 > 17236)
  {
    if (v5 > 23380)
    {
      if ((v5 - 23381) >= 3 && (v5 - 26453) >= 3)
      {
        v13 = -29525;
        goto LABEL_17;
      }

LABEL_18:
      v15 = (8 * v5 + ((BYTE1(v5) - 31) / 0xCu) - 680) * 0.043478;
      goto LABEL_19;
    }

    if ((v5 - 17237) < 3)
    {
      goto LABEL_18;
    }

    v13 = -20309;
LABEL_17:
    if ((v5 + v13) >= 3)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v5 <= 14164)
  {
    if ((v5 - 8021) < 3)
    {
      goto LABEL_18;
    }

    v13 = -11093;
    goto LABEL_17;
  }

  if (v5 > 15968)
  {
    if (v5 > 16480)
    {
      if (v5 == 16481)
      {
        v15 = 0.5;
        goto LABEL_19;
      }

      if (v5 == 16737)
      {
        v15 = 1.0;
        goto LABEL_19;
      }
    }

    else
    {
      if (v5 == 15969)
      {
        v15 = -0.5;
        goto LABEL_19;
      }

      if (v5 == 16225)
      {
        v15 = 0.0;
        goto LABEL_19;
      }
    }
  }

  else
  {
    if ((v5 - 14165) < 3)
    {
      goto LABEL_18;
    }

    v15 = -1.0;
    if (v5 == 15713)
    {
LABEL_19:
      v16 = objc_alloc(getCHHapticEventParameterClass());
      v17 = getCHHapticEventParameterIDHapticSharpness();
      *&v18 = v15;
      v19 = [v16 initWithParameterID:v17 value:{v18, v37, v38, v39, v40, v41, v42, v43}];
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
    v29 = [v31 initWithAudioResourceID:v5 parameters:v12 relativeTime:?];
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
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:{1, v37, v38, v39, v40, v41}];

LABEL_34:

  return v14;
}

- (id)_internal_createEventsForTransientHapticData:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc(getCHHapticEventParameterClass());
  v5 = getCHHapticEventParameterIDHapticIntensity();
  [v3 intensity];
  v6 = [v4 initWithParameterID:v5 value:?];

  v7 = objc_alloc(getCHHapticEventParameterClass());
  v8 = getCHHapticEventParameterIDHapticSharpness();
  [v3 sharpness];
  v9 = [v7 initWithParameterID:v8 value:?];

  v10 = objc_alloc(getCHHapticEventClass());
  v11 = getCHHapticEventTypeHapticTransient();
  v18[0] = v6;
  v18[1] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  [v3 effectiveDelay];
  v14 = v13;

  v15 = [v10 initWithEventType:v11 parameters:v12 relativeTime:v14];
  v19[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];

  return v16;
}

- (id)_internal_createEventsForFeedbackData:(id)a3 engine:(id)a4 parameters:(id *)a5 parameterCurves:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [v10 pattern];

  if (v12)
  {
    v13 = [(_UIFeedbackCoreHapticsPlayer *)self _internal_createEventsForLibraryFeedbackData:v10 engine:v11 parameters:a5 parameterCurves:a6];
  }

  else
  {
    v14 = [v10 fileURL];

    if (v14)
    {
      v13 = [(_UIFeedbackCoreHapticsPlayer *)self _internal_createEventsForFileFeedbackData:v10 engine:v11 parameters:a5 parameterCurves:a6];
    }

    else
    {
      if ([v10 isTransientHaptic])
      {
        [(_UIFeedbackCoreHapticsPlayer *)self _internal_createEventsForTransientHapticData:v10];
      }

      else
      {
        [(_UIFeedbackCoreHapticsPlayer *)self _internal_createEventsForLegacyFeedbackData:v10];
      }
      v13 = ;
    }
  }

  v15 = v13;

  return v15;
}

- (id)_internal_createPatternForFeedbackData:(id)a3 feedback:(id)a4 engine:(id)a5
{
  v76 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v57 = a4;
  v60 = a5;
  v58 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v67 objects:v75 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v68;
    v13 = MEMORY[0x1E695E0F0];
    v14 = MEMORY[0x1E695E0F0];
    v59 = self;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v68 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v67 + 1) + 8 * i);
        v17 = [v16 effectiveEnabledFeedbackTypes];
        if ((v17 & 3) == 3 || (v18 = v17, (v17 & 3) == 2) && (-[_UIFeedbackCoreHapticsPlayer hapticEngine](self, "hapticEngine"), v62 = v14, v19 = v13, v20 = objc_claimAutoreleasedReturnValue(), [v20 coreHapticsEngine], v21 = v10, v22 = v12, v23 = v11, v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "playsHapticsOnly"), v24, v11 = v23, v12 = v22, v10 = v21, v20, v13 = v19, v14 = v62, self = v59, v25))
        {
          v65 = v13;
          v66 = v14;
          v26 = [(_UIFeedbackCoreHapticsPlayer *)self _internal_createEventsForFeedbackData:v16 engine:v60 parameters:&v66 parameterCurves:&v65];
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
    v33 = v57;
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
        v43 = v57;
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
    v33 = v57;
  }

  else
  {
    v46 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49A198) + 8);
    v33 = v57;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = v13;
      v48 = MEMORY[0x1E696AEC0];
      v49 = v11;
      v50 = v57;
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

- (id)_internal_createFixedParameterForParameters:(id)a3 withKey:(id)a4 forEventType:(id)a5
{
  v88 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[_UIFeedbackParameters parameters];
  v11 = [v10 objectForKeyedSubscript:v8];

  [v9 _effectiveValueForParameterWithKey:v8];
  v13 = v12;

  LODWORD(v10) = [v9 _isAudio];
  if (v10)
  {
    v14 = @"audioType";
  }

  else
  {
    v14 = @"hapticType";
  }

  v15 = [v11 objectForKeyedSubscript:v14];
  v16 = [v15 intValue];
  v17 = v16;

  switch(v16)
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
      v23 = v7;
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

- (void)_updateValueForParameters:(id)a3 withKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66___UIFeedbackCoreHapticsPlayer__updateValueForParameters_withKey___block_invoke;
  block[3] = &unk_1E70F6228;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v9 = internalQueue;
  if (!v9)
  {
    v9 = MEMORY[0x1E69E96A0];
    v10 = MEMORY[0x1E69E96A0];
  }

  v11 = v7;
  v12 = v6;
  dispatch_async(v9, block);
}

- (void)_internal_updateValueForParameters:(id)a3 withKey:(id)a4
{
  v92[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[_UIFeedbackParameters parameters];
  v9 = [v8 objectForKeyedSubscript:v7];

  [v6 _effectiveValueForParameterWithKey:v7];
  v11 = v10;
  if ([v6 _isAudio])
  {
    v12 = @"audioType";
  }

  else
  {
    v12 = @"hapticType";
  }

  v13 = [v9 objectForKeyedSubscript:v12];
  v14 = [v13 intValue];

  switch(v14)
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

      v45 = [MEMORY[0x1E696AAA8] currentHandler];
      v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticDynamicParameterID getCHHapticDynamicParameterIDAudioVolumeControl(void)"];
      [v45 handleFailureInFunction:v46 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:70 description:{@"%s", dlerror()}];

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

      v49 = [MEMORY[0x1E696AAA8] currentHandler];
      v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticDynamicParameterID getCHHapticDynamicParameterIDAudioPitchControl(void)"];
      [v49 handleFailureInFunction:v50 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:73 description:{@"%s", dlerror()}];

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

      v37 = [MEMORY[0x1E696AAA8] currentHandler];
      v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticDynamicParameterID getCHHapticDynamicParameterIDAudioAttackTimeControl(void)"];
      [v37 handleFailureInFunction:v38 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:74 description:{@"%s", dlerror()}];

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

      v41 = [MEMORY[0x1E696AAA8] currentHandler];
      v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticDynamicParameterID getCHHapticDynamicParameterIDAudioDecayTimeControl(void)"];
      [v41 handleFailureInFunction:v42 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:75 description:{@"%s", dlerror()}];

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

      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticDynamicParameterID getCHHapticDynamicParameterIDAudioReleaseTimeControl(void)"];
      [v25 handleFailureInFunction:v26 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:76 description:{@"%s", dlerror()}];

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

      v53 = [MEMORY[0x1E696AAA8] currentHandler];
      v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticDynamicParameterID getCHHapticDynamicParameterIDAudioPanControl(void)"];
      [v53 handleFailureInFunction:v54 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:71 description:{@"%s", dlerror()}];

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
      *&buf[4] = v14;
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

      v82 = [MEMORY[0x1E696AAA8] currentHandler];
      v83 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticDynamicParameterID getCHHapticDynamicParameterIDHapticIntensityControl(void)"];
      [v82 handleFailureInFunction:v83 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:64 description:{@"%s", dlerror()}];

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

      v33 = [MEMORY[0x1E696AAA8] currentHandler];
      v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticDynamicParameterID getCHHapticDynamicParameterIDHapticSharpnessControl(void)"];
      [v33 handleFailureInFunction:v34 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:65 description:{@"%s", dlerror()}];

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

      v57 = [MEMORY[0x1E696AAA8] currentHandler];
      v58 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticDynamicParameterID getCHHapticDynamicParameterIDHapticAttackTimeControl(void)"];
      [v57 handleFailureInFunction:v58 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:66 description:{@"%s", dlerror()}];

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

      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticDynamicParameterID getCHHapticDynamicParameterIDHapticDecayTimeControl(void)"];
      [v21 handleFailureInFunction:v22 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:67 description:{@"%s", dlerror()}];

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
        v29 = [MEMORY[0x1E696AAA8] currentHandler];
        v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CHHapticDynamicParameterID getCHHapticDynamicParameterIDHapticReleaseTimeControl(void)"];
        [v29 handleFailureInFunction:v30 file:@"_UIFeedbackCoreHapticsEngineUtilities.h" lineNumber:68 description:{@"%s", dlerror()}];

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
            v80 = [v6 _isAudio];
            v81 = @"haptic";
            *buf = 138413058;
            if (v80)
            {
              v81 = @"audio";
            }

            *&buf[4] = v81;
            *&buf[12] = 2112;
            *&buf[14] = v7;
            *&buf[22] = 2048;
            v90 = v11;
            LOWORD(v91[0]) = 2112;
            *(v91 + 2) = self;
            _os_log_impl(&dword_188A29000, v79, OS_LOG_TYPE_ERROR, "set %@ %@ %.3f on player %@", buf, 0x2Au);
          }
        }
      }

      v70 = [(_UIFeedbackCoreHapticsPlayer *)self coreHapticsPlayer];
      v84 = 0;
      [v70 sendParameters:v68 atTime:&v84 error:0.0];
      v71 = COERCE_DOUBLE(v84);

      if (v71 != 0.0 && (_UIFeedbackLoggingDisabled & 1) == 0)
      {
        v72 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49A1C0) + 8);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          v73 = v72;
          v74 = [(_UIFeedbackCoreHapticsPlayer *)self hapticEngine];
          v75 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%s: %p>", object_getClassName(v74), v74];
          *buf = 138412802;
          *&buf[4] = v7;
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
      *&buf[4] = v14;
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
            *&buf[4] = v14;
            *&buf[12] = 2048;
            *&buf[14] = v11;
            _os_log_impl(&dword_188A29000, v77, OS_LOG_TYPE_ERROR, "Ignoring UIFeedbackParameterType (%ld) with value %f", buf, 0x16u);
          }
        }
      }

      break;
  }
}

- (void)_playFeedback:(id)a3 atTime:(double)a4
{
  v6 = a3;
  v7 = [v6 _effectiveFeedbackData];
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53___UIFeedbackCoreHapticsPlayer__playFeedback_atTime___block_invoke;
  v13[3] = &unk_1E7107CE8;
  v13[4] = self;
  v14 = v7;
  v15 = v6;
  v16 = a4;
  v9 = internalQueue;
  if (!v9)
  {
    v9 = MEMORY[0x1E69E96A0];
    v10 = MEMORY[0x1E69E96A0];
  }

  v11 = v6;
  v12 = v7;
  dispatch_async(v9, v13);
}

- (BOOL)_internal_playFeedbackData:(id)a3 forFeedback:(id)a4 atTime:(double)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = v8;
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

  v15 = [(_UIFeedbackCoreHapticsPlayer *)self coreHapticsPlayer];

  if (v15)
  {
    goto LABEL_15;
  }

LABEL_12:
  v16 = [(_UIFeedbackCoreHapticsPlayer *)self hapticEngine];
  v17 = [v16 coreHapticsEngine];
  v18 = [(_UIFeedbackCoreHapticsPlayer *)self _internal_createPatternForFeedbackData:v10 feedback:v9 engine:v17];

  if (v18)
  {
    v19 = [(_UIFeedbackCoreHapticsPlayer *)self _internal_createPlayerWithPattern:v18];
    if (!v19)
    {
LABEL_21:

      goto LABEL_22;
    }

    [(_UIFeedbackCoreHapticsPlayer *)self setCoreHapticsPlayer:v19];

LABEL_15:
    v19 = [(_UIFeedbackCoreHapticsPlayer *)self coreHapticsPlayer];
    v26 = 0;
    [v19 startAtTime:&v26 error:a5];
    v18 = v26;

    LOBYTE(v19) = v18 == 0;
    if (v18)
    {
      if ((_UIFeedbackLoggingDisabled & 1) == 0)
      {
        v20 = *(__UILogGetCategoryCachedImpl("Feedback", &_internal_playFeedbackData_forFeedback_atTime____s_category) + 8);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = v20;
          v22 = [(_UIFeedbackCoreHapticsPlayer *)self hapticEngine];
          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%s: %p>", object_getClassName(v22), v22];
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
      v24 = [(_UIFeedbackCoreHapticsPlayer *)self hapticEngine];
      [v24 _internal_willPlayFeedback:v9 atTime:a5];

      kdebug_trace();
    }

    goto LABEL_21;
  }

  LOBYTE(v19) = 0;
LABEL_22:

  return v19;
}

- (void)_stopFeedback:(id)a3
{
  v4 = a3;
  v5 = [v4 _effectiveFeedbackData];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46___UIFeedbackCoreHapticsPlayer__stopFeedback___block_invoke;
  block[3] = &unk_1E70F6228;
  block[4] = self;
  v12 = v5;
  v13 = v4;
  v7 = internalQueue;
  if (!v7)
  {
    v7 = MEMORY[0x1E69E96A0];
    v8 = MEMORY[0x1E69E96A0];
  }

  v9 = v4;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)_internal_stopFeedbackData:(id)a3 forFeedback:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(_UIFeedbackCoreHapticsPlayer *)self hapticEngine];
  [v6 _internal_willCancelFeedback:v5];

  v7 = [(_UIFeedbackCoreHapticsPlayer *)self coreHapticsPlayer];
  v13 = 0;
  [v7 stopAtTime:&v13 error:0.0];
  v8 = v13;

  if (v8)
  {
    if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      v9 = *(__UILogGetCategoryCachedImpl("Feedback", &_internal_stopFeedbackData_forFeedback____s_category) + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        v11 = [(_UIFeedbackCoreHapticsPlayer *)self hapticEngine];
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%s: %p>", object_getClassName(v11), v11];
        *buf = 138412802;
        v15 = v5;
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