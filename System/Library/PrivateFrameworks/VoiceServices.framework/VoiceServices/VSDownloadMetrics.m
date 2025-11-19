@interface VSDownloadMetrics
+ (double)_clockFactor;
- (BOOL)endMetrics;
- (VSDownloadMetrics)initWithVoiceName:(id)a3 languageCode:(id)a4 gender:(int64_t)a5;
- (double)downloadDuration;
- (id)description;
- (id)dictionaryMetrics;
@end

@implementation VSDownloadMetrics

- (double)downloadDuration
{
  downloadEndTimestamp = self->_downloadEndTimestamp;
  if (!downloadEndTimestamp)
  {
    downloadEndTimestamp = mach_absolute_time();
  }

  v4 = (downloadEndTimestamp - self->_downloadBeginTimestamp);
  +[VSDownloadMetrics _clockFactor];
  return v5 * v4;
}

- (BOOL)endMetrics
{
  downloadEndTimestamp = self->_downloadEndTimestamp;
  if (!downloadEndTimestamp)
  {
    self->_downloadEndTimestamp = mach_absolute_time();
  }

  return downloadEndTimestamp == 0;
}

- (id)dictionaryMetrics
{
  v19[9] = *MEMORY[0x277D85DE8];
  voiceDownloadKey = self->_voiceDownloadKey;
  if (!voiceDownloadKey)
  {
    voiceDownloadKey = &stru_2881D71A8;
  }

  v19[0] = voiceDownloadKey;
  v18[0] = @"voice_asset_key";
  v18[1] = @"allowing_cellular";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_isCellularAllowed];
  v19[1] = v4;
  v18[2] = @"discretionary";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_discretionary];
  downloadSize = self->_downloadSize;
  v19[2] = v5;
  v19[3] = downloadSize;
  v18[3] = @"download_size";
  v18[4] = @"download_duration";
  v7 = MEMORY[0x277CCABB0];
  [(VSDownloadMetrics *)self downloadDuration];
  v8 = [v7 numberWithDouble:?];
  v19[4] = v8;
  v18[5] = @"download_progress";
  *&v9 = self->_downloadProgress;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v19[5] = v10;
  v18[6] = @"error_code";
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_errorCode];
  v12 = v11;
  clientBundleIdentifier = self->_clientBundleIdentifier;
  if (!clientBundleIdentifier)
  {
    clientBundleIdentifier = &stru_2881D71A8;
  }

  v19[6] = v11;
  v19[7] = clientBundleIdentifier;
  v18[7] = @"client_bundle_identifier";
  v18[8] = @"setup_duration";
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_setupTimeInterval];
  v19[8] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:9];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)description
{
  v2 = [(VSDownloadMetrics *)self dictionaryMetrics];
  v3 = [v2 description];

  return v3;
}

- (VSDownloadMetrics)initWithVoiceName:(id)a3 languageCode:(id)a4 gender:(int64_t)a5
{
  v15.receiver = self;
  v15.super_class = VSDownloadMetrics;
  v7 = a4;
  v8 = a3;
  v9 = [(VSDownloadMetrics *)&v15 init];
  v9->_downloadBeginTimestamp = mach_absolute_time();
  v10 = MEMORY[0x277CCACA8];
  v11 = [VSVoiceAsset genderStringFromGender:a5];
  v12 = [v10 stringWithFormat:@"%@:%@:%@", v7, v11, v8];

  voiceDownloadKey = v9->_voiceDownloadKey;
  v9->_voiceDownloadKey = v12;

  return v9;
}

+ (double)_clockFactor
{
  if (_clockFactor_onceToken_245 != -1)
  {
    dispatch_once(&_clockFactor_onceToken_245, &__block_literal_global_246);
  }

  return *&_clockFactor_clockToSeconds_247;
}

double __33__VSDownloadMetrics__clockFactor__block_invoke()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1 / 1000000000.0;
  _clockFactor_clockToSeconds_247 = *&result;
  return result;
}

@end