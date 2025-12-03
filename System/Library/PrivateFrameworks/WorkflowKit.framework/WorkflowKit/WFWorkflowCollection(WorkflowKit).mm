@interface WFWorkflowCollection(WorkflowKit)
- (uint64_t)systemIconName;
@end

@implementation WFWorkflowCollection(WorkflowKit)

- (uint64_t)systemIconName
{
  [self glyphCharacter];

  return WFSystemImageNameForOutlineGlyphCharacter();
}

@end