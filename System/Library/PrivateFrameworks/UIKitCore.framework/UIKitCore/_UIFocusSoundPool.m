@interface _UIFocusSoundPool
- (_UIFocusSoundPool)initWithSoundFileURL:(id)a3;
- (_UIFocusSoundPool)initWithSystemSoundID:(unsigned int)a3;
- (unsigned)playableSystemSoundID;
@end

@implementation _UIFocusSoundPool

- (_UIFocusSoundPool)initWithSystemSoundID:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = _UIFocusSoundPool;
  result = [(_UIFocusSoundPool *)&v5 init];
  if (result)
  {
    result->_originalSystemSoundID = a3;
    result->_queueIndex = 0;
  }

  return result;
}

- (_UIFocusSoundPool)initWithSoundFileURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UIFocusSoundPool;
  v6 = [(_UIFocusSoundPool *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_soundFileURL, a3);
    v7->_queueIndex = 0;
  }

  return v7;
}

- (unsigned)playableSystemSoundID
{
  queue = self->_queue;
  if (!queue)
  {
    soundFileURL = self->_soundFileURL;
    if (soundFileURL)
    {
      v5 = soundFileURL;
      v6 = 10;
      v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
      do
      {
        v23 = 0;
        v8 = v5;
        v29 = 0;
        v30 = &v29;
        v31 = 0x2020000000;
        v9 = off_1ED49DF08;
        v32 = off_1ED49DF08;
        if (!off_1ED49DF08)
        {
          v24 = MEMORY[0x1E69E9820];
          v25 = 3221225472;
          v26 = __getAudioServicesCreateSystemSoundIDSymbolLoc_block_invoke;
          v27 = &unk_1E70F2F20;
          v28 = &v29;
          v10 = AudioToolboxLibrary_0();
          v11 = dlsym(v10, "AudioServicesCreateSystemSoundID");
          *(v28[1] + 24) = v11;
          off_1ED49DF08 = *(v28[1] + 24);
          v9 = v30[3];
        }

        _Block_object_dispose(&v29, 8);
        if (!v9)
        {
          v21 = [MEMORY[0x1E696AAA8] currentHandler];
          v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"OSStatus __AudioServicesCreateSystemSoundID(CFURLRef, SystemSoundID *)"}];
          [v21 handleFailureInFunction:v22 file:@"_UIFocusSoundGenerator.m" lineNumber:30 description:{@"%s", dlerror()}];
          while (1)
          {

            __break(1u);
LABEL_17:
            v21 = [MEMORY[0x1E696AAA8] currentHandler];
            v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFArrayRef __AudioServicesCreateSystemSoundIDsFromID(SystemSoundID, UInt32)"}];
            [v21 handleFailureInFunction:v22 file:@"_UIFocusSoundGenerator.m" lineNumber:31 description:{@"%s", dlerror()}];
          }
        }

        v9(v8, &v23);
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v23];
        [v7 addObject:v12];

        --v6;
      }

      while (v6);
      v13 = [v7 copy];
    }

    else
    {
      originalSystemSoundID = self->_originalSystemSoundID;
      v29 = 0;
      v30 = &v29;
      v31 = 0x2020000000;
      v15 = off_1ED49DF00;
      v32 = off_1ED49DF00;
      if (!off_1ED49DF00)
      {
        v24 = MEMORY[0x1E69E9820];
        v25 = 3221225472;
        v26 = __getAudioServicesCreateSystemSoundIDsFromIDSymbolLoc_block_invoke;
        v27 = &unk_1E70F2F20;
        v28 = &v29;
        v16 = AudioToolboxLibrary_0();
        v30[3] = dlsym(v16, "AudioServicesCreateSystemSoundIDsFromID");
        off_1ED49DF00 = *(v28[1] + 24);
        v15 = v30[3];
      }

      _Block_object_dispose(&v29, 8);
      if (!v15)
      {
        goto LABEL_17;
      }

      v13 = v15(originalSystemSoundID, 10);
    }

    v17 = self->_queue;
    self->_queue = v13;

    queue = self->_queue;
  }

  ++self->_queueIndex;
  v18 = [(NSArray *)queue objectAtIndexedSubscript:?];
  v19 = [v18 unsignedIntegerValue];

  self->_queueIndex %= [(NSArray *)self->_queue count];
  return v19;
}

@end