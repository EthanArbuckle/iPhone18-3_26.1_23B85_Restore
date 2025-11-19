@interface UIDefaultFocusSoundPlayer
@end

@implementation UIDefaultFocusSoundPlayer

void __65___UIDefaultFocusSoundPlayer__registerForSystemSoundsIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = +[UIDevice currentDevice];
    [v2 _unregisterForSystemSounds:v4];

    v3 = v4[4];
    v4[4] = 0;

    WeakRetained = v4;
  }
}

void __44___UIDefaultFocusSoundPlayer_sharedInstance__block_invoke()
{
  v0 = [[_UIDefaultFocusSoundPlayer alloc] _init];
  v1 = qword_1ED49DEE0;
  qword_1ED49DEE0 = v0;
}

void __71___UIDefaultFocusSoundPlayer__playSystemSound_behavior_withVolume_pan___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v2 = qword_1ED49DF10;
  v39 = qword_1ED49DF10;
  if (!qword_1ED49DF10)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getkAudioServicesPlaySystemSoundOptionVolumeKeySymbolLoc_block_invoke_0;
    v45 = &unk_1E70F2F20;
    v46 = &v36;
    v3 = AudioToolboxLibrary_0();
    v4 = dlsym(v3, "kAudioServicesPlaySystemSoundOptionVolumeKey");
    *(v46[1] + 24) = v4;
    qword_1ED49DF10 = *(v46[1] + 24);
    v2 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v2)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkAudioServicesPlaySystemSoundOptionVolumeKey(void)"];
    [v28 handleFailureInFunction:v29 file:@"_UIFocusSoundGenerator.m" lineNumber:34 description:{@"%s", dlerror()}];

    goto LABEL_23;
  }

  v5 = *v2;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v6 = qword_1ED49DF18;
  v39 = qword_1ED49DF18;
  if (!qword_1ED49DF18)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getkAudioServicesPlaySystemSoundOptionPanKeySymbolLoc_block_invoke;
    v45 = &unk_1E70F2F20;
    v46 = &v36;
    v7 = AudioToolboxLibrary_0();
    v8 = dlsym(v7, "kAudioServicesPlaySystemSoundOptionPanKey");
    *(v46[1] + 24) = v8;
    qword_1ED49DF18 = *(v46[1] + 24);
    v6 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v6)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkAudioServicesPlaySystemSoundOptionPanKey(void)"];
    [v30 handleFailureInFunction:v31 file:@"_UIFocusSoundGenerator.m" lineNumber:35 description:{@"%s", dlerror()}];

    goto LABEL_23;
  }

  v9 = *v6;
  if (*(a1 + 48))
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v10 = qword_1ED49DF20;
    v39 = qword_1ED49DF20;
    if (!qword_1ED49DF20)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getkAudioServicesPlaySystemSoundOptionBehaviorKeySymbolLoc_block_invoke;
      v45 = &unk_1E70F2F20;
      v46 = &v36;
      v11 = AudioToolboxLibrary_0();
      v12 = dlsym(v11, "kAudioServicesPlaySystemSoundOptionBehaviorKey");
      *(v46[1] + 24) = v12;
      qword_1ED49DF20 = *(v46[1] + 24);
      v10 = v37[3];
    }

    _Block_object_dispose(&v36, 8);
    if (!v10)
    {
      v34 = [MEMORY[0x1E696AAA8] currentHandler];
      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkAudioServicesPlaySystemSoundOptionBehaviorKey(void)"];
      [v34 handleFailureInFunction:v35 file:@"_UIFocusSoundGenerator.m" lineNumber:36 description:{@"%s", dlerror()}];

LABEL_23:
      __break(1u);
    }

    v13 = *v10;
    v42[0] = v5;
    v14 = MEMORY[0x1E696AD98];
    v15 = *(a1 + 32);
    v16 = v13;
    v17 = [v14 numberWithDouble:v15];
    v43[0] = v17;
    v42[1] = v9;
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40)];
    v43[1] = v18;
    v42[2] = v16;
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 48)];
    v43[2] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:3];
  }

  else
  {
    v40[0] = v5;
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 32)];
    v40[1] = v9;
    v41[0] = v16;
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40)];
    v41[1] = v17;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
  }

  v21 = *(__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49DEE8) + 8);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    *buf = 134218240;
    *&buf[4] = v22;
    *&buf[12] = 2048;
    *&buf[14] = v23;
    _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_DEFAULT, "Playing focus system sound at volume: %f, pan: %f.", buf, 0x16u);
  }

  v24 = *(a1 + 52);
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v25 = off_1ED49DF28;
  v39 = off_1ED49DF28;
  if (!off_1ED49DF28)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getAudioServicesPlaySystemSoundWithOptionsSymbolLoc_block_invoke_0;
    v45 = &unk_1E70F2F20;
    v46 = &v36;
    v26 = AudioToolboxLibrary_0();
    v27 = dlsym(v26, "AudioServicesPlaySystemSoundWithOptions");
    *(v46[1] + 24) = v27;
    off_1ED49DF28 = *(v46[1] + 24);
    v25 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v25)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void __AudioServicesPlaySystemSoundWithOptions(SystemSoundID, CFDictionaryRef, __strong dispatch_block_t)"}];
    [v32 handleFailureInFunction:v33 file:@"_UIFocusSoundGenerator.m" lineNumber:33 description:{@"%s", dlerror()}];

    goto LABEL_23;
  }

  v25(v24, v20, 0);
}

@end