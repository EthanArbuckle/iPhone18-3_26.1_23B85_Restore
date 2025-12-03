@interface WFAddButtonModuleSummaryEditor
- (id)menuForSlotWithIdentifier:(id)identifier style:(unint64_t)style;
- (void)beginEditingNewArrayElementFromPresentationAnchor:(id)anchor;
@end

@implementation WFAddButtonModuleSummaryEditor

- (void)beginEditingNewArrayElementFromPresentationAnchor:(id)anchor
{
  anchorCopy = anchor;
  selfCopy = self;
  sub_2745029E4();
}

- (id)menuForSlotWithIdentifier:(id)identifier style:(unint64_t)style
{
  v4 = OUTLINED_FUNCTION_1_2();

  return v4;
}

@end