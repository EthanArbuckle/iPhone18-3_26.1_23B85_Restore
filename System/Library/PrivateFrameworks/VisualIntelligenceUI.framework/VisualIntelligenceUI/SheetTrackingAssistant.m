@interface SheetTrackingAssistant
- (BOOL)respondsToSelector:(SEL)a3;
- (id)forwardingTargetForSelector:(SEL)a3;
- (void)_sheetPresentationControllerDidInvalidateCurrentPresentedViewFrame:(id)a3;
- (void)_sheetPresentationControllerDidInvalidateDetentValues:(id)a3;
- (void)_sheetPresentationControllerPerformLayout:(id)a3;
@end

@implementation SheetTrackingAssistant

- (void)_sheetPresentationControllerDidInvalidateDetentValues:(id)a3
{
  v4 = a3;
  v5 = self;
  SheetTrackingAssistant._sheetPresentationControllerDidInvalidateDetentValues(_:)(v4);
}

- (void)_sheetPresentationControllerDidInvalidateCurrentPresentedViewFrame:(id)a3
{
  v4 = a3;
  v5 = self;
  SheetTrackingAssistant._sheetPresentationControllerDidInvalidateCurrentPresentedViewFrame(_:)(v4);
}

- (void)_sheetPresentationControllerPerformLayout:(id)a3
{
  v4 = a3;
  v5 = self;
  SheetTrackingAssistant._sheetPresentationControllerPerformLayout(_:)(v4);
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v4 = self;
  LOBYTE(a3) = SheetTrackingAssistant.responds(to:)(a3);

  return a3 & 1;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  v4 = self;
  SheetTrackingAssistant.forwardingTarget(for:)(a3, v13);

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