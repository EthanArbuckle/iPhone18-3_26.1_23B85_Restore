@interface VUIDocumentContextDataConfirmationDialog
- (id)jsonData;
@end

@implementation VUIDocumentContextDataConfirmationDialog

- (id)jsonData
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 vui_setObjectIfNotNil:self->_confirmationDialogType forKey:@"type"];
  [v3 vui_setObjectIfNotNil:self->_name forKey:@"nameKey"];
  v4 = [v3 copy];

  return v4;
}

@end