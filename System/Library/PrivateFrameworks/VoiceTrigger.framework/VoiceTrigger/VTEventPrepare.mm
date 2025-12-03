@interface VTEventPrepare
- (id)_buildContent;
- (id)_buildDetail;
- (id)_buildTitle;
@end

@implementation VTEventPrepare

- (id)_buildDetail
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(VTEventPrepare *)self _packNumberFomVTEventInfo:@"Trigger Woke AP" key:@"trigger-woke-ap" format:@"%.0f"];
  [array addObject:v4];

  v5 = [(VTEventPrepare *)self _packNumberFomVTEventInfo:@"VoiceTrigger Started" key:@"trigger-start-time" format:@"%.2fms"];
  [array addObject:v5];

  v6 = [(VTEventPrepare *)self _packNumberFomVTEventInfo:@"Trigger Time" key:@"trigger-time" format:@"%.0f"];
  [array addObject:v6];

  v7 = [(VTEventPrepare *)self _packNumberFomVTEventInfo:@"Current HostTime" key:@"currentHostTime" format:@"%.0f"];
  [array addObject:v7];

  return array;
}

- (id)_buildContent
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(VTEventPrepare *)self _packNumberFomVTEventInfo:@"Trigger Woke AP" key:@"trigger-woke-ap" format:@"%.0f"];
  [array addObject:v4];

  v5 = [(VTEventPrepare *)self _packNumberFomVTEventInfo:@"VoiceTrigger Started" key:@"trigger-start-time" format:@"%.2fms"];
  [array addObject:v5];

  return array;
}

- (id)_buildTitle
{
  v2 = MEMORY[0x277CCACA8];
  timestampString = [(VTEvent *)self timestampString];
  v4 = [v2 stringWithFormat:@"Prepare : %@", timestampString];

  return v4;
}

@end