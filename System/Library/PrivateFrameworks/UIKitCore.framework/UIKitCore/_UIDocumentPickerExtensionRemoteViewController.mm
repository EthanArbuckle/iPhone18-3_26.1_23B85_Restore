@interface _UIDocumentPickerExtensionRemoteViewController
+ (id)serviceViewControllerInterface;
- (void)_displayLocationMenu:(CGRect)a3;
- (void)_doneButtonPressed;
@end

@implementation _UIDocumentPickerExtensionRemoteViewController

+ (id)serviceViewControllerInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFF88398];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v4, v5, objc_opt_class(), 0}];
  [v2 setClasses:v6 forSelector:sel__prepareWithExtensionInfo_completionHandler_ argumentIndex:0 ofReply:0];

  return v2;
}

- (void)_displayLocationMenu:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(_UIDocumentPickerRemoteViewController *)self publicController];
  [v7 _displayLocationsMenuFromRect:{x, y, width, height}];
}

- (void)_doneButtonPressed
{
  v2 = [(_UIDocumentPickerRemoteViewController *)self publicController];
  [v2 _dismissViewController];
}

@end