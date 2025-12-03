@interface VTEventNearTrigger
- (id)_buildContent;
- (id)_buildDetail;
- (id)_buildTitle;
@end

@implementation VTEventNearTrigger

- (id)_buildDetail
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(VTEvent *)self _packAudioURLFromVTEventInfo:@"Audio Play" key:@"captureFilePath"];
  [array addObject:v4];

  v5 = [(VTEvent *)self _packStringContent:@"Type" value:@"Near Triggered"];
  [array addObject:v5];

  v8.receiver = self;
  v8.super_class = VTEventNearTrigger;
  _buildTriggerDetail = [(VTEvent *)&v8 _buildTriggerDetail];
  [array addObjectsFromArray:_buildTriggerDetail];

  return array;
}

- (id)_buildContent
{
  v4.receiver = self;
  v4.super_class = VTEventNearTrigger;
  _buildTriggerContent = [(VTEvent *)&v4 _buildTriggerContent];

  return _buildTriggerContent;
}

- (id)_buildTitle
{
  v2 = MEMORY[0x277CCACA8];
  timestampString = [(VTEvent *)self timestampString];
  v4 = [v2 stringWithFormat:@"Near Trigger : %@", timestampString];

  return v4;
}

@end