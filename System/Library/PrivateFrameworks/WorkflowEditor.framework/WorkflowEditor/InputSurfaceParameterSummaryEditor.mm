@interface InputSurfaceParameterSummaryEditor
- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor;
@end

@implementation InputSurfaceParameterSummaryEditor

- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor
{
  identifierCopy = identifier;
  anchorCopy = anchor;
  selfCopy = self;
  sub_27450231C();
}

@end