@interface VCVoiceShortcut(Workflow)
- (WFWorkflow)workflow;
@end

@implementation VCVoiceShortcut(Workflow)

- (WFWorkflow)workflow
{
  v1 = [a1 shortcut];
  if (v1)
  {
    v2 = [[WFWorkflow alloc] initWithShortcut:v1 error:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end