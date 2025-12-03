@interface NSAttributedString(NSStringDrawing)
- (__CFString)drawInRect:()NSStringDrawing;
- (void)drawAtPoint:()NSStringDrawing;
@end

@implementation NSAttributedString(NSStringDrawing)

- (void)drawAtPoint:()NSStringDrawing
{
  v6 = MEMORY[0x193AD39D0](0.15);
  MEMORY[0x193AD39E0](0.0);
  _NSStringDrawingCore(self, 0, 1, 0, a2, a3, 0.0, 0.0, 0.0, v7, 0);
  MEMORY[0x193AD39D0](v6);

  JUMPOUT(0x193AD39E0);
}

- (__CFString)drawInRect:()NSStringDrawing
{
  if (a4 > 0.0 && a5 > 0.0)
  {
    v9 = result;
    v10 = MEMORY[0x193AD39D0](0.15);
    MEMORY[0x193AD39E0](0.0);
    _NSStringDrawingCore(v9, 0, 1, 0, a2, a3, a4, a5, 0.0, v11, 0);
    MEMORY[0x193AD39D0](v10);

    JUMPOUT(0x193AD39E0);
  }

  return result;
}

@end