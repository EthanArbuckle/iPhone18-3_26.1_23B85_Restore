@interface VTEventAudioCorrupt
- (id)_buildContent;
- (id)_buildDetail;
- (id)_buildTitle;
@end

@implementation VTEventAudioCorrupt

- (id)_buildDetail
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(VTEvent *)self _packStringContent:@"Type" value:@"Audio Corrupt"];
  [v3 addObject:v4];

  v5 = [(VTEventAudioCorrupt *)self _packNumberFomVTEventInfo:@"Zeros Samples in Seconds" key:@"zero-in-seconds" format:@"%.2fs"];
  [v3 addObject:v5];

  v6 = [(VTEventAudioCorrupt *)self _packNumberFomVTEventInfo:@"Num Zero Samples" key:@"num-zero-samples" format:@"%.0f"];
  [v3 addObject:v6];

  return v3;
}

- (id)_buildContent
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(VTEventAudioCorrupt *)self _packNumberFomVTEventInfo:@"Zeros Samples in Seconds" key:@"zero-in-seconds" format:@"%.2fs"];
  [v3 addObject:v4];

  return v3;
}

- (id)_buildTitle
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(VTEvent *)self timestampString];
  v4 = [v2 stringWithFormat:@"Audio Corrupt : %@", v3];

  return v4;
}

@end