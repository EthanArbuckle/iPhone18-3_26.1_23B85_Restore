@interface TSDBrushStrokeLayoutOptions
- (TSDBrushStrokeLayoutOptions)init;
- (void)setStrokeEnd:(double)end;
@end

@implementation TSDBrushStrokeLayoutOptions

- (TSDBrushStrokeLayoutOptions)init
{
  v3.receiver = self;
  v3.super_class = TSDBrushStrokeLayoutOptions;
  result = [(TSDBrushStrokeLayoutOptions *)&v3 init];
  if (result)
  {
    result->_strokeEnd = 1.0;
  }

  return result;
}

- (void)setStrokeEnd:(double)end
{
  TSUClamp();
  self->_strokeEnd = v5;
  if (v5 != end)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBrushStrokeLayoutOptions setStrokeEnd:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBrushStroke.mm"];
    [currentHandler handleFailureInFunction:v6 file:v7 lineNumber:167 description:{@"strokeEnd (%f) should be between 0 and 1 inclusive.", *&end}];
  }
}

@end