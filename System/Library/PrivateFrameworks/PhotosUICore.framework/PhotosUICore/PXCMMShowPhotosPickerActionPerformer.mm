@interface PXCMMShowPhotosPickerActionPerformer
- (id)performActionWithSession:(id)session completionHandler:(id)handler;
- (void)performPhotosPickerActionWithSession:(id)session gridPresentation:(id)presentation completionHandler:(id)handler;
@end

@implementation PXCMMShowPhotosPickerActionPerformer

- (id)performActionWithSession:(id)session completionHandler:(id)handler
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMActionManager.m" lineNumber:219 description:@"Photos Picker presentation requires a grid presentation"];

  return 0;
}

- (void)performPhotosPickerActionWithSession:(id)session gridPresentation:(id)presentation completionHandler:(id)handler
{
  sessionCopy = session;
  presentationCopy = presentation;
  handlerCopy = handler;
  if (!presentationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMActionManager.m" lineNumber:213 description:{@"Invalid parameter not satisfying: %@", @"gridPresentation"}];
  }

  objc_storeStrong(&self->_gridPresentation, presentation);
  v14.receiver = self;
  v14.super_class = PXCMMShowPhotosPickerActionPerformer;
  v12 = [(PXCMMActionPerformer *)&v14 performActionWithSession:sessionCopy completionHandler:handlerCopy];
}

@end