@interface SXTextTangierCanvasEditor
- (id)documentRoot;
@end

@implementation SXTextTangierCanvasEditor

- (id)documentRoot
{
  v2 = [(TSDCanvasEditor *)self interactiveCanvasController];
  v3 = [v2 documentRoot];

  return v3;
}

@end