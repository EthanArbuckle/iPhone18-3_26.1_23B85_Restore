@interface WebEditorUndoTarget
- (void)redoEditing:(id)editing;
- (void)undoEditing:(id)editing;
@end

@implementation WebEditorUndoTarget

- (void)undoEditing:(id)editing
{
  v3 = *(*[editing step] + 16);

  v3();
}

- (void)redoEditing:(id)editing
{
  v3 = *(*[editing step] + 24);

  v3();
}

@end