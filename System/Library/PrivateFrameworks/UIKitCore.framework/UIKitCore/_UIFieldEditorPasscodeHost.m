@interface _UIFieldEditorPasscodeHost
- (id)_viewForHostingFieldEditor;
@end

@implementation _UIFieldEditorPasscodeHost

- (id)_viewForHostingFieldEditor
{
  v2 = [(_UIFieldEditorHost *)self hostingView];
  v3 = [v2 _backgroundView];

  return v3;
}

@end