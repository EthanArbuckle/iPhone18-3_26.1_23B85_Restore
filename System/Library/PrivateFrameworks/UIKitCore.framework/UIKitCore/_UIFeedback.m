@interface _UIFeedback
+ (Class)classForType:(id)a3;
+ (_UIFeedback)feedbackWithDictionaryRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGPoint)_location;
- (NSArray)_effectiveFeedbackData;
- (NSArray)_individualFeedbacks;
- (NSDictionary)dictionaryRepresentation;
- (NSIndexSet)_allEventTypes;
- (NSIndexSet)_allSystemSoundIDs;
- (NSMutableArray)systemSoundSources;
- (NSMutableArray)visualizerSources;
- (UIView)_view;
- (_UIFeedback)init;
- (_UIFeedback)initWithCoder:(id)a3;
- (_UIFeedback)initWithDictionaryRepresentation:(id)a3;
- (_UIFeedbackPattern)_parentPattern;
- (double)_effectiveDelay;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)_effectiveEnabledFeedbackTypes;
- (unint64_t)_effectivePlayableFeedbackTypes;
- (void)_playedAtTime:(double)a3 engine:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)play;
- (void)stop;
@end

@implementation _UIFeedback

- (NSArray)_individualFeedbacks
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (unint64_t)_effectivePlayableFeedbackTypes
{
  v3 = +[UIDevice currentDevice];
  v4 = [v3 _feedbackSupportLevel];

  v5 = [(_UIFeedback *)self _effectiveEventType];
  if (v4 < 2 || v5 == 0)
  {
    v7 = [(_UIFeedback *)self _effectiveSystemSoundID];
    v8 = 3;
    if (v4 < 1)
    {
      v8 = 1;
    }

    if (v7 == _UISystemSoundIDNone)
    {
      return 0;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v10 = 2;
    if (v5 < 0x55uLL)
    {
      v10 = 3;
    }

    if (v5 < 0x2DuLL)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    if (v5 == 32556)
    {
      return 3;
    }

    else
    {
      return v11;
    }
  }
}

- (_UIFeedback)init
{
  v8.receiver = self;
  v8.super_class = _UIFeedback;
  v2 = [(_UIFeedback *)&v8 init];
  v3 = [objc_alloc(objc_msgSend(objc_opt_class() "_parametersClass"))];
  audioParameters = v2->_audioParameters;
  v2->_audioParameters = v3;

  v5 = [objc_alloc(objc_msgSend(objc_opt_class() "_parametersClass"))];
  hapticParameters = v2->_hapticParameters;
  v2->_hapticParameters = v5;

  *&v2->_audioOutputMode = vdupq_n_s64(1uLL);
  v2->_peripheralOutputMode = 1;
  v2->_position = 0.0;
  v2->_location = _UICGPointNull_2;
  return v2;
}

- (unint64_t)_effectiveEnabledFeedbackTypes
{
  v3 = +[_UIFeedbackPreferences sharedPreferences];
  v4 = [v3 enabledFeedbackTypesForCategory:self->_category];

  v5 = [(_UIFeedback *)self audioOutputMode]& 1;
  v6 = v5 & 0xFFFFFFFFFFFFFFFDLL | (2 * ([(_UIFeedback *)self hapticOutputMode]& 1));
  if (([(_UIFeedback *)self peripheralOutputMode]& 1) != 0)
  {
    v6 |= 0xCuLL;
  }

  if ((~[(_UIFeedback *)self audioOutputMode]& 3) != 0)
  {
    v7 = v4 | 0xE;
  }

  else
  {
    v7 = -1;
  }

  v8 = v6 & v7;
  if ((~[(_UIFeedback *)self hapticOutputMode]& 3) != 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFFFFDLL | v4 & 2u & v6;
  }

  else
  {
    v9 = v8;
  }

  if ((~[(_UIFeedback *)self peripheralOutputMode]& 3) != 0)
  {
    v10 = v4 | 0xFFFFFFFFFFFFFFF3;
  }

  else
  {
    v10 = -1;
  }

  v11 = v9 & v10;
  WeakRetained = objc_loadWeakRetained(&self->_parentPattern);

  if (WeakRetained)
  {
    v13 = objc_loadWeakRetained(&self->_parentPattern);
    v11 |= [v13 _effectiveEnabledFeedbackTypes];
  }

  return v11;
}

- (NSIndexSet)_allSystemSoundIDs
{
  v2 = [(_UIFeedback *)self _effectiveSystemSoundID];
  if (v2 == _UISystemSoundIDNone)
  {
    [MEMORY[0x1E696AC90] indexSet];
  }

  else
  {
    [MEMORY[0x1E696AC90] indexSetWithIndex:v2];
  }
  v3 = ;

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _UIFeedback;
  [(_UIFeedback *)&v2 dealloc];
}

+ (Class)classForType:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:@"discrete"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"continuous") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"pattern") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"custom"))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_UIFeedback)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"dictionaryRepresentation"];

  v9 = [_UIFeedback feedbackWithDictionaryRepresentation:v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIFeedback *)self dictionaryRepresentation];
  [v4 encodeObject:v5 forKey:@"dictionaryRepresentation"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(_UIFeedbackParameters *)self->_audioParameters copy];
  v6 = *(v4 + 2);
  *(v4 + 2) = v5;

  [*(v4 + 2) setFeedback:v4];
  v7 = [(_UIFeedbackParameters *)self->_hapticParameters copy];
  v8 = *(v4 + 3);
  *(v4 + 3) = v7;

  [*(v4 + 3) setFeedback:v4];
  *(v4 + 3) = LODWORD(self->_position);
  *(v4 + 12) = *&self->_delay;
  v9 = [(NSString *)self->_name copy];
  v10 = *(v4 + 9);
  *(v4 + 9) = v9;

  *(v4 + 4) = self->_audioOutputMode;
  *(v4 + 5) = self->_hapticOutputMode;
  *(v4 + 6) = self->_peripheralOutputMode;
  v11 = [(NSString *)self->_category copy];
  v12 = *(v4 + 10);
  *(v4 + 10) = v11;

  WeakRetained = objc_loadWeakRetained(&self->_view);
  objc_storeWeak(v4 + 11, WeakRetained);

  *(v4 + 7) = self->_location;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
    v6 = [(_UIFeedbackParameters *)self->_audioParameters isEqual:*(v7 + 2)]&& [(_UIFeedbackParameters *)self->_hapticParameters isEqual:*(v7 + 3)]&& self->_position == v7[3] && self->_delay == *(v7 + 12);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (_UIFeedback)feedbackWithDictionaryRepresentation:(id)a3
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"type"];
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"_UIFeedback.m" lineNumber:462 description:{@"No type found in %@", v5}];
  }

  v7 = [objc_opt_class() classForType:v6];
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"_UIFeedback.m" lineNumber:464 description:{@"No class found for type %@", v6}];
  }

  v8 = [[v7 alloc] initWithDictionaryRepresentation:v5];

  return v8;
}

- (_UIFeedback)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [(_UIFeedback *)self init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"audioParameters"];
    if (v6)
    {
      v7 = [objc_alloc(objc_msgSend(objc_opt_class() "_parametersClass"))];
      audioParameters = v5->_audioParameters;
      v5->_audioParameters = v7;
    }

    v9 = [v4 objectForKeyedSubscript:@"hapticParameters"];
    if (v9)
    {
      v10 = [objc_alloc(objc_msgSend(objc_opt_class() "_parametersClass"))];
      hapticParameters = v5->_hapticParameters;
      v5->_hapticParameters = v10;
    }

    v12 = [v4 objectForKeyedSubscript:@"delay"];
    [v12 doubleValue];
    v5->_delay = v13;

    v14 = [v4 objectForKeyedSubscript:@"name"];
    v15 = [v14 copy];
    name = v5->_name;
    v5->_name = v15;

    v17 = v5;
  }

  return v5;
}

- (NSDictionary)dictionaryRepresentation
{
  v12[4] = *MEMORY[0x1E69E9840];
  v11[0] = @"type";
  v3 = [objc_opt_class() type];
  v12[0] = v3;
  v11[1] = @"audioParameters";
  v4 = [(_UIFeedbackParameters *)self->_audioParameters dictionaryRepresentation];
  v12[1] = v4;
  v11[2] = @"hapticParameters";
  v5 = [(_UIFeedbackParameters *)self->_hapticParameters dictionaryRepresentation];
  v12[2] = v5;
  v11[3] = @"delay";
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_delay];
  v12[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v8 = [v7 mutableCopy];

  name = self->_name;
  if (name)
  {
    [v8 setObject:name forKeyedSubscript:@"name"];
  }

  return v8;
}

- (NSIndexSet)_allEventTypes
{
  if ([(_UIFeedback *)self _effectiveEventType])
  {
    [MEMORY[0x1E696AC90] indexSetWithIndex:?];
  }

  else
  {
    [MEMORY[0x1E696AC90] indexSet];
  }
  v2 = ;

  return v2;
}

- (double)_effectiveDelay
{
  delay = self->_delay;
  WeakRetained = objc_loadWeakRetained(&self->_parentPattern);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_parentPattern);
    [v5 _effectiveDelay];
    delay = delay + v6;
  }

  return delay;
}

- (void)_playedAtTime:(double)a3 engine:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v7 = *(__UILogGetCategoryCachedImpl("Feedback", &_playedAtTime_engine____s_category) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = self;
      v10 = v7;
      v11 = [v8 stringWithFormat:@"<%s: %p>", object_getClassName(v9), v9];

      v12 = MEMORY[0x1E696AEC0];
      v13 = v6;
      v14 = v11;
      v15 = [v12 stringWithFormat:@"<%s: %p>", object_getClassName(v13), v13];

      *buf = 138412802;
      v17 = v11;
      v18 = 2112;
      v19 = v15;
      v20 = 2048;
      v21 = a3;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "played feedback %@ with engine %@ at time %f", buf, 0x20u);
    }
  }
}

- (void)play
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [_UIFeedbackEngine engineForFeedback:self];
  v4 = v3;
  if (v3)
  {
    [v3 currentTime];
    v6 = v5;
    [(_UIFeedback *)self _effectiveDelay];
    v13[1] = 3221225472;
    v13[0] = MEMORY[0x1E69E9820];
    v13[2] = __19___UIFeedback_play__block_invoke;
    v13[3] = &unk_1E7107670;
    v13[4] = self;
    v15 = v6 + v7;
    v14 = v4;
    [v14 _playFeedback:self atTime:v13 withCompletionBlock:v15];
  }

  else if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v8 = *(__UILogGetCategoryCachedImpl("Feedback", &play___s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = self;
      v11 = v8;
      v12 = [v9 stringWithFormat:@"<%s: %p>", object_getClassName(v10), v10];

      *buf = 138412290;
      v17 = v12;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "no engine for feedback %@, dropping it", buf, 0xCu);
    }
  }
}

- (void)stop
{
  v10 = *MEMORY[0x1E69E9840];
  if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("FeedbackDebug", &stop___s_category);
    if (*CategoryCachedImpl)
    {
      v6 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v9 = self;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "stop feedback %@", buf, 0xCu);
      }
    }
  }

  v4 = [(_UIFeedback *)self _player];

  if (v4)
  {
    v5 = [(_UIFeedback *)self _player];
    [v5 _stopFeedback:self];
  }

  else
  {
    v5 = [_UIFeedbackEngine engineForFeedback:self];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __19___UIFeedback_stop__block_invoke;
    v7[3] = &unk_1E7107698;
    v7[4] = self;
    [v5 _dequeueReusableFeedbackPlayerWithCompletionBlock:v7];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_UIFeedback *)self _player];
  v7 = [v3 stringWithFormat:@"<%@ %p player: %p; delay: %.3f", v5, self, v6, *&self->_delay];;

  if (self->_name)
  {
    [v7 appendFormat:@"; name: %@", self->_name];
  }

  v8 = [(_UIFeedback *)self _debugDictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __26___UIFeedback_description__block_invoke;
  v11[3] = &unk_1E70F6948;
  v9 = v7;
  v12 = v9;
  [v8 enumerateKeysAndObjectsUsingBlock:v11];

  [v9 appendString:@">"];

  return v9;
}

- (NSArray)_effectiveFeedbackData
{
  v25 = *MEMORY[0x1E69E9840];
  v16 = [(_UIFeedback *)self _individualFeedbacks];
  v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v16, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(_UIFeedback *)self _individualFeedbacks];
  v3 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v18 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v20 + 1) + 8 * i);
        v7 = objc_opt_new();
        [v7 _setEffectiveEventType:{objc_msgSend(v6, "_effectiveEventType")}];
        [v6 _effectiveDuration];
        [v7 _setEffectiveDuration:?];
        [v6 _effectiveDelay];
        [v7 _setEffectiveDelay:?];
        v8 = [v6 hapticParameters];
        [v7 _setHapticParameters:v8];

        v9 = [v6 audioParameters];
        [v7 _setAudioParameters:v9];

        [v7 _setEffectiveEnabledFeedbackTypes:{objc_msgSend(v6, "_effectiveEnabledFeedbackTypes")}];
        [v7 _setEffectiveSystemSoundID:{objc_msgSend(v6, "_effectiveSystemSoundID")}];
        if (objc_opt_respondsToSelector())
        {
          v10 = [v6 pattern];
          [v7 _setPattern:v10];
        }

        if (objc_opt_respondsToSelector())
        {
          v11 = [v6 hidRequest];
          [v7 _setHIDRequest:v11];
        }

        if (objc_opt_respondsToSelector())
        {
          v12 = [v6 fileURL];
          [v7 _setFileURL:v12];

          [v7 _setFileFeedbackType:{objc_msgSend(v6, "_effectivePlayableFeedbackTypes")}];
        }

        if (objc_opt_respondsToSelector())
        {
          [v7 _setIsTransientHaptic:1];
          [v6 intensity];
          [v7 _setIntensity:?];
          [v6 sharpness];
          [v7 _setSharpness:?];
        }

        if (objc_opt_respondsToSelector())
        {
          v13 = [v6 canReuseCoreHapticsPlayer];
        }

        else
        {
          v13 = 0;
        }

        [v7 _setCanReuseCoreHapticsPlayer:v13];
        if (objc_opt_respondsToSelector())
        {
          v14 = [v6 disableEventUseVolumeEnvelope];
        }

        else
        {
          v14 = 0;
        }

        [v7 _setDisableEventUseVolumeEnvelope:v14];
        [v19 addObject:v7];
      }

      v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v4);
  }

  return v19;
}

- (_UIFeedbackPattern)_parentPattern
{
  WeakRetained = objc_loadWeakRetained(&self->_parentPattern);

  return WeakRetained;
}

- (UIView)_view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (CGPoint)_location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

- (NSMutableArray)systemSoundSources
{
  v3 = objc_getAssociatedObject(self, &_UIFeedbackSystemSoundEngineSourcesKey);
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    objc_setAssociatedObject(self, &_UIFeedbackSystemSoundEngineSourcesKey, v3, 1);
  }

  return v3;
}

- (NSMutableArray)visualizerSources
{
  v3 = objc_getAssociatedObject(self, &_UIFeedbackVisualizerSourcesKey);
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    objc_setAssociatedObject(self, &_UIFeedbackVisualizerSourcesKey, v3, 1);
  }

  return v3;
}

@end