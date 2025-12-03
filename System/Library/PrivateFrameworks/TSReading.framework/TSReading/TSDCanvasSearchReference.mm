@interface TSDCanvasSearchReference
+ (id)searchReferenceWithDrawableInfo:(id)info;
- (BOOL)isEqual:(id)equal;
- (CGPoint)searchReferencePoint;
- (NSString)description;
- (TSDCanvasSearchReference)initWithDrawableInfo:(id)info;
- (id)commandForReplacingWithString:(id)string options:(unint64_t)options;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation TSDCanvasSearchReference

+ (id)searchReferenceWithDrawableInfo:(id)info
{
  v3 = [[TSDCanvasSearchReference alloc] initWithDrawableInfo:info];

  return v3;
}

- (TSDCanvasSearchReference)initWithDrawableInfo:(id)info
{
  v6.receiver = self;
  v6.super_class = TSDCanvasSearchReference;
  v4 = [(TSDCanvasSearchReference *)&v6 init];
  if (v4)
  {
    v4->mDrawableInfo = info;
    v4->mDocumentRoot = [objc_msgSend(info "context")];
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

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [-[TSDCanvasSearchReference drawableInfo](self "drawableInfo")];
    if (v5)
    {
      model = [(TSDCanvasSearchReference *)self model];
      LOBYTE(v5) = model == [equal model];
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

- (id)commandForReplacingWithString:(id)string options:(unint64_t)options
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvasSearchReference commandForReplacingWithString:options:]"];
  [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvasSearchReference.m"), 80, @"Cannot replace string on drawable"}];
  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
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