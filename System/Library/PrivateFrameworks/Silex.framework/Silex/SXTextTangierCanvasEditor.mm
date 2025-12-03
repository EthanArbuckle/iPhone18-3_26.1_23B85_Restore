@interface SXTextTangierCanvasEditor
- (id)documentRoot;
@end

@implementation SXTextTangierCanvasEditor

- (id)documentRoot
{
  interactiveCanvasController = [(TSDCanvasEditor *)self interactiveCanvasController];
  documentRoot = [interactiveCanvasController documentRoot];

  return documentRoot;
}

@end