@interface WFAddButtonModuleSummaryEditor
- (id)menuForSlotWithIdentifier:(id)a3 style:(unint64_t)a4;
- (void)beginEditingNewArrayElementFromPresentationAnchor:(id)a3;
@end

@implementation WFAddButtonModuleSummaryEditor

- (void)beginEditingNewArrayElementFromPresentationAnchor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2745029E4();
}

- (id)menuForSlotWithIdentifier:(id)a3 style:(unint64_t)a4
{
  v4 = OUTLINED_FUNCTION_1_2();

  return v4;
}

@end