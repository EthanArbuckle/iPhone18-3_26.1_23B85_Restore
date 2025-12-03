@interface VCVoiceShortcut(Workflow)
- (WFWorkflow)workflow;
@end

@implementation VCVoiceShortcut(Workflow)

- (WFWorkflow)workflow
{
  shortcut = [self shortcut];
  if (shortcut)
  {
    v2 = [[WFWorkflow alloc] initWithShortcut:shortcut error:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end