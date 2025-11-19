@interface VTEventPrepare
- (id)_buildContent;
- (id)_buildDetail;
- (id)_buildTitle;
@end

@implementation VTEventPrepare

- (id)_buildDetail
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(VTEventPrepare *)self _packNumberFomVTEventInfo:@"Trigger Woke AP" key:@"trigger-woke-ap" format:@"%.0f"];
  [v3 addObject:v4];

  v5 = [(VTEventPrepare *)self _packNumberFomVTEventInfo:@"VoiceTrigger Started" key:@"trigger-start-time" format:@"%.2fms"];
  [v3 addObject:v5];

  v6 = [(VTEventPrepare *)self _packNumberFomVTEventInfo:@"Trigger Time" key:@"trigger-time" format:@"%.0f"];
  [v3 addObject:v6];

  v7 = [(VTEventPrepare *)self _packNumberFomVTEventInfo:@"Current HostTime" key:@"currentHostTime" format:@"%.0f"];
  [v3 addObject:v7];

  return v3;
}

- (id)_buildContent
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(VTEventPrepare *)self _packNumberFomVTEventInfo:@"Trigger Woke AP" key:@"trigger-woke-ap" format:@"%.0f"];
  [v3 addObject:v4];

  v5 = [(VTEventPrepare *)self _packNumberFomVTEventInfo:@"VoiceTrigger Started" key:@"trigger-start-time" format:@"%.2fms"];
  [v3 addObject:v5];

  return v3;
}

- (id)_buildTitle
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(VTEvent *)self timestampString];
  v4 = [v2 stringWithFormat:@"Prepare : %@", v3];

  return v4;
}

@end