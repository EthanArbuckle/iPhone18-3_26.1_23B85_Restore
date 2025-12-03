@interface TUDTMFSoundPlayer
- (BOOL)attemptToPlayKey:(unsigned __int8)key;
- (TUDTMFSoundPlayer)init;
- (void)attemptToPlaySoundType:(int64_t)type;
@end

@implementation TUDTMFSoundPlayer

- (TUDTMFSoundPlayer)init
{
  v6.receiver = self;
  v6.super_class = TUDTMFSoundPlayer;
  v2 = [(TUDTMFSoundPlayer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    playSystemSoundHandler = v2->_playSystemSoundHandler;
    v2->_playSystemSoundHandler = &__block_literal_global_6;
  }

  return v3;
}

uint64_t __25__TUDTMFSoundPlayer_init__block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Calling AudioServicesPlaySystemSoundWithOptions() with system sound ID %d", v6, 8u);
  }

  if (_block_invoke__pred_AudioServicesPlaySystemSoundWithOptionsAudioToolbox != -1)
  {
    __25__TUDTMFSoundPlayer_init__block_invoke_cold_1();
  }

  result = _block_invoke__AudioServicesPlaySystemSoundWithOptions(a2, 0, 0);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t (*__25__TUDTMFSoundPlayer_init__block_invoke_1())(void, void, void)
{
  result = CUTWeakLinkSymbol();
  _block_invoke__AudioServicesPlaySystemSoundWithOptions = result;
  return result;
}

- (BOOL)attemptToPlayKey:(unsigned __int8)key
{
  keyCopy = key;
  v10 = *MEMORY[0x1E69E9840];
  if (key > 51)
  {
    if (key <= 54)
    {
      if (key == 52)
      {
        v4 = 4;
      }

      else if (key == 53)
      {
        v4 = 5;
      }

      else
      {
        v4 = 6;
      }

      goto LABEL_26;
    }

    switch(key)
    {
      case '7':
        v4 = 7;
        goto LABEL_26;
      case '8':
        v4 = 8;
        goto LABEL_26;
      case '9':
        v4 = 9;
        goto LABEL_26;
    }

    goto LABEL_28;
  }

  if (key <= 48)
  {
    switch(key)
    {
      case '#':
        v4 = 11;
        goto LABEL_26;
      case '*':
        v4 = 10;
        goto LABEL_26;
      case '0':
        v4 = 0;
LABEL_26:
        [(TUDTMFSoundPlayer *)self attemptToPlaySoundType:v4];
        v5 = 1;
        goto LABEL_27;
    }

LABEL_28:
    v8 = TUDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = keyCopy;
      _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Requested to play DTMF tone for unknown key: %d", v9, 8u);
    }

    v5 = 0;
    goto LABEL_27;
  }

  if (key != 49)
  {
    if (key == 50)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }

    goto LABEL_26;
  }

  v5 = 1;
  [(TUDTMFSoundPlayer *)self attemptToPlaySoundType:1];
LABEL_27:
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)attemptToPlaySoundType:(int64_t)type
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    typeCopy = type;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to play DTMF sound type %ld", &v8, 0xCu);
  }

  if (type <= 0xB)
  {
    playSystemSoundHandler = [(TUDTMFSoundPlayer *)self playSystemSoundHandler];
    playSystemSoundHandler[2](playSystemSoundHandler, type | 0x4B0);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end