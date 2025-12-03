@interface PXPhotosViewUIInteraction(PhotosUICore)
- (id)oneUpPresentation;
- (id)uiInteractionHelper;
- (uint64_t)presentOneUpForAssetReference:()PhotosUICore configurationHandler:;
- (void)setOneUpPresentation:()PhotosUICore;
@end

@implementation PXPhotosViewUIInteraction(PhotosUICore)

- (id)uiInteractionHelper
{
  interactionHelper = [self interactionHelper];
  if (interactionHelper)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v8 = NSStringFromClass(v9);
    px_descriptionForAssertionMessage = [interactionHelper px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosViewUIInteraction+PhotosUICore.m" lineNumber:31 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.interactionHelper", v8, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosViewUIInteraction+PhotosUICore.m" lineNumber:31 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.interactionHelper", v8}];
  }

LABEL_3:

  return interactionHelper;
}

- (uint64_t)presentOneUpForAssetReference:()PhotosUICore configurationHandler:
{
  v6 = a4;
  v7 = a3;
  uiInteractionHelper = [self uiInteractionHelper];
  v9 = [uiInteractionHelper presentOneUpForAssetReference:v7 configurationHandler:v6];

  return v9;
}

- (void)setOneUpPresentation:()PhotosUICore
{
  v4 = a3;
  uiInteractionHelper = [self uiInteractionHelper];
  [uiInteractionHelper setOneUpPresentation:v4];
}

- (id)oneUpPresentation
{
  uiInteractionHelper = [self uiInteractionHelper];
  oneUpPresentation = [uiInteractionHelper oneUpPresentation];

  return oneUpPresentation;
}

@end