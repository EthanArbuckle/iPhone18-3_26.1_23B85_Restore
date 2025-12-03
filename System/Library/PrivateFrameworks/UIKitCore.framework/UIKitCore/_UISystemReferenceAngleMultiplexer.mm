@interface _UISystemReferenceAngleMultiplexer
+ (_UISystemReferenceAngleMultiplexer)sharedMultiplexer;
- (_UISystemReferenceAngleMultiplexer)init;
- (double)_systemReferenceAngleForContextID:(unsigned int)d;
- (unint64_t)_systemReferenceAngleModeForContextID:(unsigned int)d;
- (void)systemReferenceAngleDidChange:(double)change mode:(unint64_t)mode forWindows:(id)windows;
@end

@implementation _UISystemReferenceAngleMultiplexer

+ (_UISystemReferenceAngleMultiplexer)sharedMultiplexer
{
  if (_MergedGlobals_1239 != -1)
  {
    dispatch_once(&_MergedGlobals_1239, &__block_literal_global_455);
  }

  v3 = qword_1ED49FD60;

  return v3;
}

- (_UISystemReferenceAngleMultiplexer)init
{
  v4.receiver = self;
  v4.super_class = _UISystemReferenceAngleMultiplexer;
  v2 = [(_UISystemReferenceAngleMultiplexer *)&v4 init];
  if (v2)
  {
    _UISSetSystemReferenceAngleDataSource();
  }

  return v2;
}

- (void)systemReferenceAngleDidChange:(double)change mode:(unint64_t)mode forWindows:(id)windows
{
  v26[3] = *MEMORY[0x1E69E9840];
  v7 = [windows bs_compactMap:&__block_literal_global_3_9];
  if ([v7 count])
  {
    v25[0] = *MEMORY[0x1E69DED28];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:mode];
    v26[0] = v8;
    v25[1] = *MEMORY[0x1E69DED20];
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:change];
    v26[1] = v9;
    v25[2] = *MEMORY[0x1E69DED10];
    v10 = [MEMORY[0x1E695DFD8] setWithArray:v7];
    v26[2] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];

    CategoryCachedImpl = __UILogGetCategoryCachedImpl("SystemReferenceAngle", &qword_1ED49FD70);
    if (*CategoryCachedImpl)
    {
      v15 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = v15;
        v17 = _UISStringForSystemReferenceAngleMode();
        v19 = 134218498;
        changeCopy2 = change;
        v21 = 2112;
        v22 = v17;
        v23 = 2048;
        v24 = [v7 count];
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Notifying system reference angle changed: angle=%.0f; mode=%@; affectedContextCount=%lu", &v19, 0x20u);
      }
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:*MEMORY[0x1E69DED18] object:0 userInfo:v11];
    goto LABEL_4;
  }

  v14 = __UILogGetCategoryCachedImpl("SystemReferenceAngle", &qword_1ED49FD68);
  if (*v14)
  {
    v18 = *(v14 + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v11 = v18;
      defaultCenter = _UISStringForSystemReferenceAngleMode();
      v19 = 134218242;
      changeCopy2 = change;
      v21 = 2112;
      v22 = defaultCenter;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "System reference angle changed but there are no affected contexts. Ignoring. angle=%.0f; mode=%@", &v19, 0x16u);
LABEL_4:
    }
  }
}

- (double)_systemReferenceAngleForContextID:(unsigned int)d
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [UIWindow _windowWithContextId:?];
  v5 = v4;
  if (v4)
  {
    [v4 _systemReferenceAngle];
    v7 = v6;
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("SystemReferenceAngle", &qword_1ED49FD78);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v16 = 67109376;
        dCopy2 = d;
        v18 = 2048;
        v19 = v7;
        v10 = "System reference angle requested for contextID %i -> %.0f";
        v11 = v9;
        v12 = 18;
LABEL_9:
        _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, v10, &v16, v12);
      }
    }
  }

  else
  {
    v13 = __UILogGetCategoryCachedImpl("SystemReferenceAngle", &qword_1ED49FD80);
    v7 = 0.0;
    if (*v13)
    {
      v15 = *(v13 + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = 67109120;
        dCopy2 = d;
        v10 = "System reference angle requested for an unknown contextID (%i). Returning 0.";
        v11 = v15;
        v12 = 8;
        goto LABEL_9;
      }
    }
  }

  return v7;
}

- (unint64_t)_systemReferenceAngleModeForContextID:(unsigned int)d
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [UIWindow _windowWithContextId:?];
  v5 = v4;
  if (v4)
  {
    _systemReferenceAngleMode = [v4 _systemReferenceAngleMode];
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("SystemReferenceAngle", &qword_1ED49FD88);
    if (*CategoryCachedImpl)
    {
      v11 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
        v13 = _UISStringForSystemReferenceAngleMode();
        v15 = 67109378;
        dCopy2 = d;
        v17 = 2112;
        v18 = v13;
        _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "System reference angle mode requested for contextID %i -> %@", &v15, 0x12u);
      }
    }

    v8 = _systemReferenceAngleMode;
  }

  else
  {
    v9 = __UILogGetCategoryCachedImpl("SystemReferenceAngle", &qword_1ED49FD90);
    if (*v9)
    {
      v14 = *(v9 + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = 67109120;
        dCopy2 = d;
        _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "System reference angle mode requested for an unknown contextID (%i). Returning unknown.", &v15, 8u);
      }
    }

    v8 = 0;
  }

  return v8;
}

@end