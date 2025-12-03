@interface SheetTrackingAssistant
- (BOOL)respondsToSelector:(SEL)selector;
- (id)forwardingTargetForSelector:(SEL)selector;
- (void)_sheetPresentationControllerDidInvalidateCurrentPresentedViewFrame:(id)frame;
- (void)_sheetPresentationControllerDidInvalidateDetentValues:(id)values;
- (void)_sheetPresentationControllerPerformLayout:(id)layout;
@end

@implementation SheetTrackingAssistant

- (void)_sheetPresentationControllerDidInvalidateDetentValues:(id)values
{
  valuesCopy = values;
  selfCopy = self;
  SheetTrackingAssistant._sheetPresentationControllerDidInvalidateDetentValues(_:)(valuesCopy);
}

- (void)_sheetPresentationControllerDidInvalidateCurrentPresentedViewFrame:(id)frame
{
  frameCopy = frame;
  selfCopy = self;
  SheetTrackingAssistant._sheetPresentationControllerDidInvalidateCurrentPresentedViewFrame(_:)(frameCopy);
}

- (void)_sheetPresentationControllerPerformLayout:(id)layout
{
  layoutCopy = layout;
  selfCopy = self;
  SheetTrackingAssistant._sheetPresentationControllerPerformLayout(_:)(layoutCopy);
}

- (BOOL)respondsToSelector:(SEL)selector
{
  selfCopy = self;
  LOBYTE(selector) = SheetTrackingAssistant.responds(to:)(selector);

  return selector & 1;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  selfCopy = self;
  SheetTrackingAssistant.forwardingTarget(for:)(selector, v13);

  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x28223BE20](v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_21E142AF4();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end