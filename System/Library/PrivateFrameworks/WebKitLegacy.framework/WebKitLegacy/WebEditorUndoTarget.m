@interface WebEditorUndoTarget
- (void)redoEditing:(id)a3;
- (void)undoEditing:(id)a3;
@end

@implementation WebEditorUndoTarget

- (void)undoEditing:(id)a3
{
  v3 = *(*[a3 step] + 16);

  v3();
}

- (void)redoEditing:(id)a3
{
  v3 = *(*[a3 step] + 24);

  v3();
}

@end