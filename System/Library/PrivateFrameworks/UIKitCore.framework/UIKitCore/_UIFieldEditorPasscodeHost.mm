@interface _UIFieldEditorPasscodeHost
- (id)_viewForHostingFieldEditor;
@end

@implementation _UIFieldEditorPasscodeHost

- (id)_viewForHostingFieldEditor
{
  hostingView = [(_UIFieldEditorHost *)self hostingView];
  _backgroundView = [hostingView _backgroundView];

  return _backgroundView;
}

@end