@interface PXDragAndDropUIUtilities
+ (id)dropImportErrorAlertControllerWithHandler:(id)handler;
@end

@implementation PXDragAndDropUIUtilities

+ (id)dropImportErrorAlertControllerWithHandler:(id)handler
{
  handlerCopy = handler;
  v4 = PXLocalizedStringFromTable(@"PXDragAndDropImportErrorAlertTitle", @"PhotosUICore");
  v5 = PXLocalizedStringFromTable(@"PXDragAndDropImportErrorAlertDescription", @"PhotosUICore");
  v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v4 message:v5 preferredStyle:1];
  v7 = MEMORY[0x1E69DC648];
  v8 = PXLocalizedStringFromTable(@"PXOK", @"PhotosUICore");
  v9 = [v7 actionWithTitle:v8 style:0 handler:handlerCopy];

  [v6 addAction:v9];

  return v6;
}

@end