@interface PRReplayKitDataRecorder
- (PRReplayKitDataRecorder)init;
- (id)stopAndSave;
- (id)writeToURL;
- (void)discardRecording;
- (void)saveScreenRecordingToURL:(id)l;
- (void)start;
- (void)stopAndDiscard;
@end

@implementation PRReplayKitDataRecorder

- (PRReplayKitDataRecorder)init
{
  v5.receiver = self;
  v5.super_class = PRReplayKitDataRecorder;
  v2 = [(PRDataRecorder *)&v5 init];
  if (v2)
  {
    mEMORY[0x277CDB6A8] = [MEMORY[0x277CDB6A8] sharedRecorder];
    [mEMORY[0x277CDB6A8] setMicrophoneEnabled:0];
  }

  return v2;
}

- (void)start
{
  [(PRReplayKitDataRecorder *)self stopAndDiscard];
  mEMORY[0x277CDB6A8] = [MEMORY[0x277CDB6A8] sharedRecorder];
  [mEMORY[0x277CDB6A8] startRecordingWithHandler:&__block_literal_global_2];
}

void __32__PRReplayKitDataRecorder_start__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = [a2 localizedDescription];
    NSLog(&stru_2873C5390.isa, v2);
  }
}

- (id)stopAndSave
{
  writeToURL = [(PRReplayKitDataRecorder *)self writeToURL];
  [(PRReplayKitDataRecorder *)self stopAndDiscard];

  return writeToURL;
}

- (void)stopAndDiscard
{
  [(PRReplayKitDataRecorder *)self discardRecording];

  [(PRDataRecorder *)self discardSensorData];
}

- (id)writeToURL
{
  v3 = +[(PRDataRecorder *)PRReplayKitDataRecorder];
  v4 = +[(PRDataRecorder *)PRReplayKitDataRecorder];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.json", v3];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.mp4", v3];
  v7 = [v4 URLByAppendingPathComponent:v6];
  [(PRReplayKitDataRecorder *)self saveScreenRecordingToURL:v7];

  v8 = [v4 URLByAppendingPathComponent:v5];
  [(PRDataRecorder *)self writeSensorDataToURL:v8];

  v9 = [v4 URLByAppendingPathComponent:v3];

  return v9;
}

- (void)saveScreenRecordingToURL:(id)l
{
  v3 = MEMORY[0x277CDB6A8];
  lCopy = l;
  sharedRecorder = [v3 sharedRecorder];
  [sharedRecorder stopRecordingWithOutputURL:lCopy completionHandler:&__block_literal_global_11];
}

void __52__PRReplayKitDataRecorder_saveScreenRecordingToURL___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_ScreenRecordin.isa, a2);
  }
}

- (void)discardRecording
{
  mEMORY[0x277CDB6A8] = [MEMORY[0x277CDB6A8] sharedRecorder];
  [mEMORY[0x277CDB6A8] stopRecordingWithHandler:&__block_literal_global_17];

  mEMORY[0x277CDB6A8]2 = [MEMORY[0x277CDB6A8] sharedRecorder];
  [mEMORY[0x277CDB6A8]2 discardRecordingWithHandler:&__block_literal_global_20];
}

@end