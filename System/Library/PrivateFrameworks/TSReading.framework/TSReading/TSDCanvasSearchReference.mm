@interface TSDCanvasSearchReference
+ (id)searchReferenceWithDrawableInfo:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGPoint)searchReferencePoint;
- (NSString)description;
- (TSDCanvasSearchReference)initWithDrawableInfo:(id)a3;
- (id)commandForReplacingWithString:(id)a3 options:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation TSDCanvasSearchReference

+ (id)searchReferenceWithDrawableInfo:(id)a3
{
  v3 = [[TSDCanvasSearchReference alloc] initWithDrawableInfo:a3];

  return v3;
}

- (TSDCanvasSearchReference)initWithDrawableInfo:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSDCanvasSearchReference;
  v4 = [(TSDCanvasSearchReference *)&v6 init];
  if (v4)
  {
    v4->mDrawableInfo = a3;
    v4->mDocumentRoot = [objc_msgSend(a3 "context")];
    v4->mCanvasSelection = +[TSDCanvasEditor canvasSelectionWithInfos:](TSDCanvasEditor, "canvasSelectionWithInfos:", [MEMORY[0x277CBEB98] setWithObject:v4->mDrawableInfo]);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDCanvasSearchReference;
  [(TSDCanvasSearchReference *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [-[TSDCanvasSearchReference drawableInfo](self "drawableInfo")];
    if (v5)
    {
      v6 = [(TSDCanvasSearchReference *)self model];
      LOBYTE(v5) = v6 == [a3 model];
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(TSDCanvasSearchReference *)self drawableInfo];
  v6 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p info=<%@ %p>>", v5, self, NSStringFromClass(v6), -[TSDCanvasSearchReference drawableInfo](self, "drawableInfo")];
}

- (id)commandForReplacingWithString:(id)a3 options:(unint64_t)a4
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvasSearchReference commandForReplacingWithString:options:]"];
  [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvasSearchReference.m"), 80, @"Cannot replace string on drawable"}];
  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[TSDCanvasSearchReference alloc] initWithDrawableInfo:self->mDrawableInfo];
  [(TSDCanvasSearchReference *)self searchReferencePoint];
  [(TSDCanvasSearchReference *)v4 setSearchReferencePoint:?];
  return v4;
}

- (CGPoint)searchReferencePoint
{
  x = self->mSearchReferencePoint.x;
  y = self->mSearchReferencePoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end