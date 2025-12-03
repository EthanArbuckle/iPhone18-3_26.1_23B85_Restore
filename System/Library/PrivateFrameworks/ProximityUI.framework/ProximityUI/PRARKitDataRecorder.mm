@interface PRARKitDataRecorder
- (PRARKitDataRecorder)initWithARSession:(id)session;
- (id)stopAndSave;
- (void)start;
@end

@implementation PRARKitDataRecorder

- (PRARKitDataRecorder)initWithARSession:(id)session
{
  sessionCopy = session;
  v8.receiver = self;
  v8.super_class = PRARKitDataRecorder;
  v5 = [(PRDataRecorder *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PRARKitDataRecorder *)v5 setSession:sessionCopy];
  }

  return v6;
}

- (void)start
{
  [(PRARKitDataRecorder *)self stopAndDiscard];
  v3 = +[(PRDataRecorder *)PRARKitDataRecorder];
  [(PRARKitDataRecorder *)self setFilename:v3];

  v4 = +[(PRDataRecorder *)PRARKitDataRecorder];
  [(PRARKitDataRecorder *)self setFileURL:v4];
}

- (id)stopAndSave
{
  v3 = MEMORY[0x277CCACA8];
  filename = [(PRARKitDataRecorder *)self filename];
  v5 = [v3 stringWithFormat:@"%@.json", filename];

  fileURL = [(PRARKitDataRecorder *)self fileURL];
  v7 = [fileURL URLByAppendingPathComponent:v5];

  [(PRDataRecorder *)self writeSensorDataToURL:v7];
  fileURL2 = [(PRARKitDataRecorder *)self fileURL];
  filename2 = [(PRARKitDataRecorder *)self filename];
  v10 = [fileURL2 URLByAppendingPathComponent:filename2];

  return v10;
}

@end