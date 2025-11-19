@interface PRARKitDataRecorder
- (PRARKitDataRecorder)initWithARSession:(id)a3;
- (id)stopAndSave;
- (void)start;
@end

@implementation PRARKitDataRecorder

- (PRARKitDataRecorder)initWithARSession:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PRARKitDataRecorder;
  v5 = [(PRDataRecorder *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PRARKitDataRecorder *)v5 setSession:v4];
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
  v4 = [(PRARKitDataRecorder *)self filename];
  v5 = [v3 stringWithFormat:@"%@.json", v4];

  v6 = [(PRARKitDataRecorder *)self fileURL];
  v7 = [v6 URLByAppendingPathComponent:v5];

  [(PRDataRecorder *)self writeSensorDataToURL:v7];
  v8 = [(PRARKitDataRecorder *)self fileURL];
  v9 = [(PRARKitDataRecorder *)self filename];
  v10 = [v8 URLByAppendingPathComponent:v9];

  return v10;
}

@end