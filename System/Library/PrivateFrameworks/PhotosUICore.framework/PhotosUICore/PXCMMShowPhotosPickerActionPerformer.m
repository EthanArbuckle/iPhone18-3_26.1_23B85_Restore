@interface PXCMMShowPhotosPickerActionPerformer
- (id)performActionWithSession:(id)a3 completionHandler:(id)a4;
- (void)performPhotosPickerActionWithSession:(id)a3 gridPresentation:(id)a4 completionHandler:(id)a5;
@end

@implementation PXCMMShowPhotosPickerActionPerformer

- (id)performActionWithSession:(id)a3 completionHandler:(id)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXCMMActionManager.m" lineNumber:219 description:@"Photos Picker presentation requires a grid presentation"];

  return 0;
}

- (void)performPhotosPickerActionWithSession:(id)a3 gridPresentation:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXCMMActionManager.m" lineNumber:213 description:{@"Invalid parameter not satisfying: %@", @"gridPresentation"}];
  }

  objc_storeStrong(&self->_gridPresentation, a4);
  v14.receiver = self;
  v14.super_class = PXCMMShowPhotosPickerActionPerformer;
  v12 = [(PXCMMActionPerformer *)&v14 performActionWithSession:v9 completionHandler:v11];
}

@end