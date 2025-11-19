@interface NSNull(TSDColorFill_Additions)
- (void)paintPath:()TSDColorFill_Additions inContext:;
@end

@implementation NSNull(TSDColorFill_Additions)

- (void)paintPath:()TSDColorFill_Additions inContext:
{
  PathBoundingBox = CGPathGetPathBoundingBox(path);

  TSDColorFill_DrawClearColorRepresentation(a4, PathBoundingBox.origin.x, PathBoundingBox.origin.y, PathBoundingBox.size.width, PathBoundingBox.size.height);
}

@end