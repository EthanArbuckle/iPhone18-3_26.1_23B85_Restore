@interface PXPhotosViewUIInteraction(PhotosUICore)
- (id)oneUpPresentation;
- (id)uiInteractionHelper;
- (uint64_t)presentOneUpForAssetReference:()PhotosUICore configurationHandler:;
- (void)setOneUpPresentation:()PhotosUICore;
@end

@implementation PXPhotosViewUIInteraction(PhotosUICore)

- (id)uiInteractionHelper
{
  v4 = [a1 interactionHelper];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v8 = NSStringFromClass(v9);
    v10 = [v4 px_descriptionForAssertionMessage];
    [v6 handleFailureInMethod:a2 object:a1 file:@"PXPhotosViewUIInteraction+PhotosUICore.m" lineNumber:31 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.interactionHelper", v8, v10}];
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v6 handleFailureInMethod:a2 object:a1 file:@"PXPhotosViewUIInteraction+PhotosUICore.m" lineNumber:31 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.interactionHelper", v8}];
  }

LABEL_3:

  return v4;
}

- (uint64_t)presentOneUpForAssetReference:()PhotosUICore configurationHandler:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 uiInteractionHelper];
  v9 = [v8 presentOneUpForAssetReference:v7 configurationHandler:v6];

  return v9;
}

- (void)setOneUpPresentation:()PhotosUICore
{
  v4 = a3;
  v5 = [a1 uiInteractionHelper];
  [v5 setOneUpPresentation:v4];
}

- (id)oneUpPresentation
{
  v1 = [a1 uiInteractionHelper];
  v2 = [v1 oneUpPresentation];

  return v2;
}

@end