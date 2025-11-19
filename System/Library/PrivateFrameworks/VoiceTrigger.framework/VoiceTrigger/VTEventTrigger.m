@interface VTEventTrigger
- (id)_buildContent;
- (id)_buildDetail;
- (id)_buildTitle;
@end

@implementation VTEventTrigger

- (id)_buildDetail
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(VTEvent *)self _packAudioURLFromVTEventInfo:@"Audio Play" key:@"captureFilePath"];
  [v3 addObject:v4];

  v5 = [(VTEvent *)self _packStringContent:@"Type" value:@"True Triggered"];
  [v3 addObject:v5];

  v8.receiver = self;
  v8.super_class = VTEventTrigger;
  v6 = [(VTEvent *)&v8 _buildTriggerDetail];
  [v3 addObjectsFromArray:v6];

  return v3;
}

- (id)_buildContent
{
  v4.receiver = self;
  v4.super_class = VTEventTrigger;
  v2 = [(VTEvent *)&v4 _buildTriggerContent];

  return v2;
}

- (id)_buildTitle
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(VTEvent *)self timestampString];
  v4 = [v2 stringWithFormat:@"True Trigger : %@", v3];

  return v4;
}

@end