@interface UITextSelectionRectImpl
+ (id)rectWithWebRect:(id)rect;
+ (id)rectsWithWebRects:(id)rects;
- (BOOL)containsEnd;
- (BOOL)containsStart;
- (BOOL)isVertical;
- (CGRect)rect;
- (UITextSelectionRectImpl)initWithWebRect:(id)rect;
- (int64_t)writingDirection;
@end

@implementation UITextSelectionRectImpl

- (UITextSelectionRectImpl)initWithWebRect:(id)rect
{
  rectCopy = rect;
  v8.receiver = self;
  v8.super_class = UITextSelectionRectImpl;
  v5 = [(UITextSelectionRectImpl *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UITextSelectionRectImpl *)v5 setWebRect:rectCopy];
  }

  return v6;
}

+ (id)rectWithWebRect:(id)rect
{
  rectCopy = rect;
  v4 = [[UITextSelectionRectImpl alloc] initWithWebRect:rectCopy];

  return v4;
}

+ (id)rectsWithWebRects:(id)rects
{
  v17 = *MEMORY[0x1E69E9840];
  rectsCopy = rects;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(rectsCopy, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = rectsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [UITextSelectionRectImpl rectWithWebRect:*(*(&v12 + 1) + 8 * i), v12];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (CGRect)rect
{
  webRect = [(UITextSelectionRectImpl *)self webRect];
  [webRect rect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (int64_t)writingDirection
{
  webRect = [(UITextSelectionRectImpl *)self webRect];
  writingDirection = [webRect writingDirection];

  return writingDirection;
}

- (BOOL)containsStart
{
  webRect = [(UITextSelectionRectImpl *)self webRect];
  containsStart = [webRect containsStart];

  return containsStart;
}

- (BOOL)containsEnd
{
  webRect = [(UITextSelectionRectImpl *)self webRect];
  containsEnd = [webRect containsEnd];

  return containsEnd;
}

- (BOOL)isVertical
{
  webRect = [(UITextSelectionRectImpl *)self webRect];
  isHorizontal = [webRect isHorizontal];

  return isHorizontal ^ 1;
}

@end