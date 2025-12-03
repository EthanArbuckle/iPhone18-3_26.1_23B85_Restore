@interface RCAnalyticsUtilities
+ (void)sendDidCaptureModifyExistingRecording;
+ (void)sendDidCaptureNewRecording;
+ (void)sendDidOpenShareMemoController;
+ (void)sendDidPlaybackVoiceMemo;
+ (void)sendDidShareRecording;
+ (void)sendDidTrimVoiceMemo;
+ (void)sendNewRecordingDuration:(double)duration;
+ (void)sendReceivedSharedRecording;
+ (void)sendRecordingsCount:(int64_t)count;
@end

@implementation RCAnalyticsUtilities

+ (void)sendDidPlaybackVoiceMemo
{
  if (RCShouldSendAnalyticsEventForKey(@"com.apple.voicememos.lastSendEvent.playback"))
  {

    AnalyticsSendEvent();
  }
}

+ (void)sendDidCaptureNewRecording
{
  if (RCShouldSendAnalyticsEventForKey(@"com.apple.voicememos.lastSendEvent.didCaptureNewRecording"))
  {

    AnalyticsSendEvent();
  }
}

+ (void)sendDidCaptureModifyExistingRecording
{
  if (RCShouldSendAnalyticsEventForKey(@"com.apple.voicememos.lastSendEvent.didCaptureModifyExistingRecording"))
  {

    AnalyticsSendEvent();
  }
}

+ (void)sendNewRecordingDuration:(double)duration
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (RCShouldSendAnalyticsEventForKey(@"com.apple.voicememos.lastSendEvent.newRecording.duration"))
  {
    v7 = @"duration";
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
    v8[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    AnalyticsSendEvent();
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)sendRecordingsCount:(int64_t)count
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (RCShouldSendAnalyticsEventForKey(@"com.apple.voicememos.lastSendEvent.recordings.count"))
  {
    v7 = @"libraryCount";
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:count];
    v8[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    AnalyticsSendEvent();
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)sendDidTrimVoiceMemo
{
  if (RCShouldSendAnalyticsEventForKey(@"com.apple.voicememos.lastSendEvent.didTrimMemo"))
  {

    AnalyticsSendEvent();
  }
}

+ (void)sendDidShareRecording
{
  if (RCShouldSendAnalyticsEventForKey(@"com.apple.voicememos.lastSendEvent.didShareRecording"))
  {

    AnalyticsSendEvent();
  }
}

+ (void)sendReceivedSharedRecording
{
  if (RCShouldSendAnalyticsEventForKey(@"com.apple.voicememos.lastSendEvent.didReceiveSharedRecording"))
  {

    AnalyticsSendEvent();
  }
}

+ (void)sendDidOpenShareMemoController
{
  if (RCShouldSendAnalyticsEventForKey(@"com.apple.voicememos.lastSendEvent.didOpenShareMemoController"))
  {

    AnalyticsSendEvent();
  }
}

@end