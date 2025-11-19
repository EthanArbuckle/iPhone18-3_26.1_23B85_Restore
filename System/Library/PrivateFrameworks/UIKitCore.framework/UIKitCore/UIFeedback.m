@interface UIFeedback
@end

@implementation UIFeedback

void __19___UIFeedback_play__block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = [*(a1 + 32) _player];

    if (v9 != v7)
    {
      [*(a1 + 32) _setPlayer:v7];
      objc_initWeak(location, *(a1 + 32));
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __19___UIFeedback_play__block_invoke_2;
      v19[3] = &unk_1E70F5A28;
      objc_copyWeak(&v20, location);
      [v7 setInvalidationBlock:v19];
      objc_destroyWeak(&v20);
      objc_destroyWeak(location);
    }

    [*(a1 + 32) _playedAtTime:*(a1 + 40) engine:*(a1 + 48)];
  }

  else if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v10 = *(__UILogGetCategoryCachedImpl("Feedback", &_UISystemSoundIDNone_block_invoke___s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = *(a1 + 32);
      v13 = v10;
      v14 = [v11 stringWithFormat:@"<%s: %p>", object_getClassName(v12), v12];

      v15 = MEMORY[0x1E696AEC0];
      v16 = *(a1 + 40);
      v17 = v14;
      v18 = [v15 stringWithFormat:@"<%s: %p>", object_getClassName(v16), v16];

      *location = 138412802;
      *&location[4] = v8;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v18;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "%@ - can't play feedback %@ with engine %@, dropping it", location, 0x20u);
    }
  }
}

void __19___UIFeedback_play__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setPlayer:0];
}

void __26___UIFeedback_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 description];
  [v4 appendFormat:@"; %@: %@", v5, v6];
}

@end