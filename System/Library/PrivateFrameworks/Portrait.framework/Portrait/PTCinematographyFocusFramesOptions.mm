@interface PTCinematographyFocusFramesOptions
+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)_defaultMaximumRackFocusPullTime;
+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)_defaultMinimumRackFocusPullTime;
+ (float)_defaultMaximumDisparityPerSecond;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)maximumRackFocusPullTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minimumRackFocusPullTime;
- (BOOL)writeToGlobalMetadata:(id)metadata;
- (PTCinematographyFocusFramesOptions)init;
- (PTCinematographyFocusFramesOptions)initWithGlobalMetadata:(id)metadata;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setMaximumRackFocusPullTime:(id *)time;
- (void)setMinimumRackFocusPullTime:(id *)time;
@end

@implementation PTCinematographyFocusFramesOptions

+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)_defaultMinimumRackFocusPullTime
{
  if (_defaultMinimumRackFocusPullTime_onceToken != -1)
  {
    +[PTCinematographyFocusFramesOptions _defaultMinimumRackFocusPullTime];
  }

  *&retstr->var0 = _defaultMinimumRackFocusPullTime_sDefaultMinimumRackFocusPullTime;
  retstr->var3 = qword_27D0C86E0;
  return result;
}

void __70__PTCinematographyFocusFramesOptions__defaultMinimumRackFocusPullTime__block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  CMTimeMake(&v2, 1, 3);
  *_defaultMinimumRackFocusPullTime_sDefaultMinimumRackFocusPullTime = v2;
  v0 = _PTLogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *_defaultMinimumRackFocusPullTime_sDefaultMinimumRackFocusPullTime;
    v1 = NSStringFromCMTime(&v2);
    LODWORD(v2.value) = 138412290;
    *(&v2.value + 4) = v1;
    _os_log_impl(&dword_2243FB000, v0, OS_LOG_TYPE_DEFAULT, "CinematographyMinPullTime: %@", &v2, 0xCu);
  }
}

+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)_defaultMaximumRackFocusPullTime
{
  if (_defaultMaximumRackFocusPullTime_onceToken != -1)
  {
    +[PTCinematographyFocusFramesOptions _defaultMaximumRackFocusPullTime];
  }

  *&retstr->var0 = _defaultMaximumRackFocusPullTime_sDefaultMaximumRackFocusPullTime;
  retstr->var3 = qword_27D0C8700;
  return result;
}

void __70__PTCinematographyFocusFramesOptions__defaultMaximumRackFocusPullTime__block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  CMTimeMake(&v2, 1, 1);
  *_defaultMaximumRackFocusPullTime_sDefaultMaximumRackFocusPullTime = v2;
  v0 = _PTLogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *_defaultMaximumRackFocusPullTime_sDefaultMaximumRackFocusPullTime;
    v1 = NSStringFromCMTime(&v2);
    LODWORD(v2.value) = 138412290;
    *(&v2.value + 4) = v1;
    _os_log_impl(&dword_2243FB000, v0, OS_LOG_TYPE_DEFAULT, "CinematographyMaxPullTime: %@", &v2, 0xCu);
  }
}

+ (float)_defaultMaximumDisparityPerSecond
{
  if (_defaultMaximumDisparityPerSecond_onceToken != -1)
  {
    +[PTCinematographyFocusFramesOptions _defaultMaximumDisparityPerSecond];
  }

  return *&_defaultMaximumDisparityPerSecond_sDefaultMaximumDisparityPerSecond;
}

void __71__PTCinematographyFocusFramesOptions__defaultMaximumDisparityPerSecond__block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  _defaultMaximumDisparityPerSecond_sDefaultMaximumDisparityPerSecond = 1056964608;
  v0 = _PTLogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v1) = 0.5;
    v2 = [MEMORY[0x277CCABB0] numberWithFloat:v1];
    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&dword_2243FB000, v0, OS_LOG_TYPE_DEFAULT, "CinematographyMaxDisparityPerSecond: %@", &v3, 0xCu);
  }
}

- (PTCinematographyFocusFramesOptions)init
{
  v9.receiver = self;
  v9.super_class = PTCinematographyFocusFramesOptions;
  v2 = [(PTCinematographyFocusFramesOptions *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_class();
    if (v3)
    {
      [v3 _defaultMinimumRackFocusPullTime];
    }

    else
    {
      v7 = 0uLL;
      v8 = 0;
    }

    *(v2 + 28) = v8;
    *(v2 + 12) = v7;
    v4 = objc_opt_class();
    if (v4)
    {
      [v4 _defaultMaximumRackFocusPullTime];
    }

    else
    {
      v7 = 0uLL;
      v8 = 0;
    }

    *(v2 + 36) = v7;
    *(v2 + 52) = v8;
    [objc_opt_class() _defaultMaximumDisparityPerSecond];
    *(v2 + 2) = v5;
  }

  return v2;
}

- (PTCinematographyFocusFramesOptions)initWithGlobalMetadata:(id)metadata
{
  metadataCopy = metadata;
  v13.receiver = self;
  v13.super_class = PTCinematographyFocusFramesOptions;
  v5 = [(PTCinematographyFocusFramesOptions *)&v13 init];
  if (v5)
  {
    if (metadataCopy)
    {
      if ([metadataCopy majorVersion] == 1)
      {
        v6 = metadataCopy;
        [v6 minimumRackFocusPullTime];
        *(v5 + 28) = v12;
        *(v5 + 12) = v11;
        [v6 maximumRackFocusPullTime];
        *(v5 + 36) = v11;
        *(v5 + 52) = v12;
        [v6 maximumDisparityPerSecond];
        v8 = v7;

        *(v5 + 2) = v8;
        v5 = v5;

        goto LABEL_9;
      }

      v9 = _PTLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [PTCinematographyFocusFramesOptions initWithGlobalMetadata:metadataCopy];
      }
    }

    v5 = [v5 init];
  }

LABEL_9:

  return v5;
}

- (BOOL)writeToGlobalMetadata:(id)metadata
{
  metadataCopy = metadata;
  majorVersion = [metadataCopy majorVersion];
  if (majorVersion == 1)
  {
    v9 = *(&self->_maximumDisparityPerSecond + 1);
    v10 = *&self->_minimumRackFocusPullTime.flags;
    v6 = metadataCopy;
    [v6 setMinimumRackFocusPullTime:&v9];
    v9 = *(&self->_minimumRackFocusPullTime.epoch + 4);
    v10 = *&self->_maximumRackFocusPullTime.flags;
    [v6 setMaximumRackFocusPullTime:&v9];
    *&v7 = self->_maximumDisparityPerSecond;
    [v6 setMaximumDisparityPerSecond:v7];
  }

  else
  {
    v6 = _PTLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyFocusFramesOptions initWithGlobalMetadata:metadataCopy];
    }
  }

  return majorVersion == 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  [(PTCinematographyFocusFramesOptions *)self minimumRackFocusPullTime];
  v8 = v10;
  v9 = v11;
  [v4 setMinimumRackFocusPullTime:&v8];
  [(PTCinematographyFocusFramesOptions *)self maximumRackFocusPullTime];
  v8 = v6;
  v9 = v7;
  [v4 setMaximumRackFocusPullTime:&v8];
  [(PTCinematographyFocusFramesOptions *)self maximumDisparityPerSecond];
  [v4 setMaximumDisparityPerSecond:?];
  return v4;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minimumRackFocusPullTime
{
  *&retstr->var0 = *&self->var2;
  retstr->var3 = *(&self[1].var0 + 4);
  return self;
}

- (void)setMinimumRackFocusPullTime:(id *)time
{
  v3 = *&time->var0;
  *&self->_minimumRackFocusPullTime.flags = time->var3;
  *(&self->_maximumDisparityPerSecond + 1) = v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)maximumRackFocusPullTime
{
  *&retstr->var0 = *&self[1].var2;
  retstr->var3 = *(&self[2].var0 + 4);
  return self;
}

- (void)setMaximumRackFocusPullTime:(id *)time
{
  v3 = *&time->var0;
  *&self->_maximumRackFocusPullTime.flags = time->var3;
  *(&self->_minimumRackFocusPullTime.epoch + 4) = v3;
}

@end