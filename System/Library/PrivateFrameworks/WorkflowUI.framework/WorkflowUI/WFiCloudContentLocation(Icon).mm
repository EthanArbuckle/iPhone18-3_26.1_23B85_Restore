@interface WFiCloudContentLocation(Icon)
- (id)icon;
@end

@implementation WFiCloudContentLocation(Icon)

- (id)icon
{
  v0 = objc_alloc(MEMORY[0x277D79FD0]);
  v1 = MEMORY[0x277D79FC8];
  workflowUI = [MEMORY[0x277CCA8D8] workflowUI];
  v3 = [v1 imageNamed:@"iCloudIcon" inBundle:workflowUI];
  v4 = [v0 initWithImage:v3];

  return v4;
}

@end