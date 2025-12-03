@interface WFPosterPickerParameterSummaryEditor
- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor;
- (void)cancelEditingWithCompletionHandler:(id)handler;
- (void)modalController:(id)controller didDismissSheetWithResponse:(id)response;
@end

@implementation WFPosterPickerParameterSummaryEditor

- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor
{
  identifierCopy = identifier;
  anchorCopy = anchor;
  selfCopy = self;
  sub_2745CA248(selfCopy, anchorCopy);
}

- (void)cancelEditingWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_2745CAA08(sub_27445B624, v5);
}

- (void)modalController:(id)controller didDismissSheetWithResponse:(id)response
{
  controllerCopy = controller;
  responseCopy = response;
  selfCopy = self;
  sub_2745CADA0(selfCopy, responseCopy);
}

@end