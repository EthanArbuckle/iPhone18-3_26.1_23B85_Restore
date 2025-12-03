@interface VTEventAudioCorrupt
- (id)_buildContent;
- (id)_buildDetail;
- (id)_buildTitle;
@end

@implementation VTEventAudioCorrupt

- (id)_buildDetail
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(VTEvent *)self _packStringContent:@"Type" value:@"Audio Corrupt"];
  [array addObject:v4];

  v5 = [(VTEventAudioCorrupt *)self _packNumberFomVTEventInfo:@"Zeros Samples in Seconds" key:@"zero-in-seconds" format:@"%.2fs"];
  [array addObject:v5];

  v6 = [(VTEventAudioCorrupt *)self _packNumberFomVTEventInfo:@"Num Zero Samples" key:@"num-zero-samples" format:@"%.0f"];
  [array addObject:v6];

  return array;
}

- (id)_buildContent
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(VTEventAudioCorrupt *)self _packNumberFomVTEventInfo:@"Zeros Samples in Seconds" key:@"zero-in-seconds" format:@"%.2fs"];
  [array addObject:v4];

  return array;
}

- (id)_buildTitle
{
  v2 = MEMORY[0x277CCACA8];
  timestampString = [(VTEvent *)self timestampString];
  v4 = [v2 stringWithFormat:@"Audio Corrupt : %@", timestampString];

  return v4;
}

@end