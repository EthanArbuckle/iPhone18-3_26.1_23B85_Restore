@interface WFCoreDataRunEvent
- (id)descriptor;
@end

@implementation WFCoreDataRunEvent

- (id)descriptor
{
  v3 = [WFWorkflowRunEvent alloc];
  identifier = [(WFCoreDataRunEvent *)self identifier];
  shortcut = [(WFCoreDataRunEvent *)self shortcut];
  descriptor = [shortcut descriptor];
  source = [(WFCoreDataRunEvent *)self source];
  date = [(WFCoreDataRunEvent *)self date];
  trigger = [(WFCoreDataRunEvent *)self trigger];
  identifier2 = [trigger identifier];
  v11 = [(WFWorkflowRunEvent *)v3 initWithIdentifier:identifier workflow:descriptor source:source date:date triggerID:identifier2 outcome:[(WFCoreDataRunEvent *)self outcome]];

  return v11;
}

@end