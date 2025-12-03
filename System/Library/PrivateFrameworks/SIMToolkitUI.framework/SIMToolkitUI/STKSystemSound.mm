@interface STKSystemSound
- (id)initForSystemSoundID:(unsigned int)d duration:(double)duration;
- (void)_reallyPlaySound;
- (void)_reallyStopSound;
@end

@implementation STKSystemSound

- (id)initForSystemSoundID:(unsigned int)d duration:(double)duration
{
  v6.receiver = self;
  v6.super_class = STKSystemSound;
  result = [(STKBaseSound *)&v6 initWithDuration:duration];
  if (result)
  {
    *(result + 7) = d;
  }

  return result;
}

- (void)_reallyPlaySound
{
  v17 = *MEMORY[0x277D85DE8];
  playsOnce = [(STKBaseSound *)self playsOnce];
  v4 = STKCommonLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (playsOnce)
  {
    if (v5)
    {
      v6 = *(&self->super._isPlaying + 3);
      v11 = 134218240;
      selfCopy2 = self;
      v13 = 1024;
      v14 = v6;
      _os_log_impl(&dword_262BB4000, v4, OS_LOG_TYPE_DEFAULT, "<STKSound:%p> - Playing %d sound once.", &v11, 0x12u);
    }

    AudioServicesPlaySystemSound(*(&self->super._isPlaying + 3));
  }

  else
  {
    if (v5)
    {
      v7 = *(&self->super._isPlaying + 3);
      [(STKBaseSound *)self duration];
      v11 = 134218496;
      selfCopy2 = self;
      v13 = 1024;
      v14 = v7;
      v15 = 2048;
      v16 = v8;
      _os_log_impl(&dword_262BB4000, v4, OS_LOG_TYPE_DEFAULT, "<STKSound:%p> - Playing %d sound until we tell it to stop (in %f seconds)", &v11, 0x1Cu);
    }

    v9 = *(&self->super._isPlaying + 3);
    AudioServicesStartSystemSound();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_reallyStopSound
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = STKCommonLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_262BB4000, v3, OS_LOG_TYPE_DEFAULT, "<STKSound:%p> - Actually stopping system sound explicitly.", &v6, 0xCu);
  }

  v4 = *(&self->super._isPlaying + 3);
  AudioServicesStopSystemSound();
  v5 = *MEMORY[0x277D85DE8];
}

@end