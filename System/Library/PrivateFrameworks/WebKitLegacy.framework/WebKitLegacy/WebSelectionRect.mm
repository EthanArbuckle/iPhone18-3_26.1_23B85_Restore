@interface WebSelectionRect
+ (CGRect)endEdge:(id)edge;
+ (CGRect)startEdge:(id)edge;
+ (id)selectionRect;
- (CGRect)rect;
- (WebSelectionRect)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation WebSelectionRect

+ (id)selectionRect
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (CGRect)startEdge:(id)edge
{
  v29 = *MEMORY[0x1E69E9840];
  if ([edge count])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = [edge countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v25;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(edge);
        }

        v8 = *(*(&v24 + 1) + 8 * v7);
        if ([v8 containsStart])
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [edge countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          goto LABEL_12;
        }
      }

      if (v8)
      {
        goto LABEL_13;
      }
    }

LABEL_12:
    v8 = [edge objectAtIndex:0];
LABEL_13:
    [v8 rect];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    isHorizontal = [v8 isHorizontal];
    writingDirection = [v8 writingDirection];
    v19 = writingDirection + 1;
    if (isHorizontal)
    {
      if (v19 < 2)
      {
        v20 = 1.0;
LABEL_24:
        v21 = v16;
        goto LABEL_25;
      }

      v21 = v16;
      if (writingDirection == 1)
      {
        v10 = v10 + v14 + -1.0;
        v20 = 1.0;
        goto LABEL_25;
      }

LABEL_21:
      v20 = v14;
      goto LABEL_25;
    }

    if (v19 < 2)
    {
      v21 = 1.0;
      goto LABEL_21;
    }

    v20 = v14;
    if (writingDirection != 1)
    {
      goto LABEL_24;
    }

    v12 = v12 + v16 + -1.0;
    v21 = 1.0;
  }

  else
  {
    v10 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v20 = *(MEMORY[0x1E695F058] + 16);
    v21 = *(MEMORY[0x1E695F058] + 24);
  }

LABEL_25:
  v22 = v10;
  v23 = v12;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

+ (CGRect)endEdge:(id)edge
{
  v29 = *MEMORY[0x1E69E9840];
  if ([edge count])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = [edge countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v25;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(edge);
        }

        lastObject = *(*(&v24 + 1) + 8 * v7);
        if ([lastObject containsEnd])
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [edge countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          goto LABEL_12;
        }
      }

      if (lastObject)
      {
        goto LABEL_13;
      }
    }

LABEL_12:
    lastObject = [edge lastObject];
LABEL_13:
    [lastObject rect];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    isHorizontal = [lastObject isHorizontal];
    writingDirection = [lastObject writingDirection];
    v19 = writingDirection + 1;
    if (isHorizontal)
    {
      if (v19 >= 2)
      {
        if (writingDirection == 1)
        {
          v14 = 1.0;
        }
      }

      else
      {
        v10 = v10 + v14 + -1.0;
        v14 = 1.0;
      }
    }

    else if (v19 >= 2)
    {
      if (writingDirection == 1)
      {
        v16 = 1.0;
      }
    }

    else
    {
      v12 = v12 + v16 + -1.0;
      v16 = 1.0;
    }
  }

  else
  {
    v10 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v14 = *(MEMORY[0x1E695F058] + 16);
    v16 = *(MEMORY[0x1E695F058] + 24);
  }

  v20 = v10;
  v21 = v12;
  v22 = v14;
  v23 = v16;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (WebSelectionRect)init
{
  v5.receiver = self;
  v5.super_class = WebSelectionRect;
  v2 = [(WebSelectionRect *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(WebSelectionRect *)v2 setRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(WebSelectionRect *)v3 setWritingDirection:0];
    [(WebSelectionRect *)v3 setIsLineBreak:0];
    [(WebSelectionRect *)v3 setIsFirstOnLine:0];
    [(WebSelectionRect *)v3 setIsLastOnLine:0];
    [(WebSelectionRect *)v3 setContainsStart:0];
    [(WebSelectionRect *)v3 setContainsEnd:0];
    [(WebSelectionRect *)v3 setIsInFixedPosition:0];
    [(WebSelectionRect *)v3 setIsHorizontal:0];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = +[WebSelectionRect selectionRect];
  [(WebSelectionRect *)self rect];
  [v4 setRect:?];
  [v4 setWritingDirection:{-[WebSelectionRect writingDirection](self, "writingDirection")}];
  [v4 setIsLineBreak:{-[WebSelectionRect isLineBreak](self, "isLineBreak")}];
  [v4 setIsFirstOnLine:{-[WebSelectionRect isFirstOnLine](self, "isFirstOnLine")}];
  [v4 setIsLastOnLine:{-[WebSelectionRect isLastOnLine](self, "isLastOnLine")}];
  [v4 setContainsStart:{-[WebSelectionRect containsStart](self, "containsStart")}];
  [v4 setContainsEnd:{-[WebSelectionRect containsEnd](self, "containsEnd")}];
  [v4 setIsInFixedPosition:{-[WebSelectionRect isInFixedPosition](self, "isInFixedPosition")}];
  [v4 setIsHorizontal:{-[WebSelectionRect isHorizontal](self, "isHorizontal")}];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(WebSelectionRect *)self rect];
  v5 = v4;
  [(WebSelectionRect *)self rect];
  v7 = v6;
  [(WebSelectionRect *)self rect];
  v9 = v8;
  [(WebSelectionRect *)self rect];
  v11 = v10;
  if ([(WebSelectionRect *)self writingDirection])
  {
    v12 = @"[RTL]";
  }

  else
  {
    v12 = @"[LTR]";
  }

  if ([(WebSelectionRect *)self isLineBreak])
  {
    v13 = @" [BR]";
  }

  else
  {
    v13 = &stru_1F472E7E8;
  }

  if ([(WebSelectionRect *)self isFirstOnLine])
  {
    v14 = @" [FIRST]";
  }

  else
  {
    v14 = &stru_1F472E7E8;
  }

  if ([(WebSelectionRect *)self isLastOnLine])
  {
    v15 = @" [LAST]";
  }

  else
  {
    v15 = &stru_1F472E7E8;
  }

  if ([(WebSelectionRect *)self containsStart])
  {
    v16 = @" [START]";
  }

  else
  {
    v16 = &stru_1F472E7E8;
  }

  if ([(WebSelectionRect *)self containsEnd])
  {
    v17 = @" [END]";
  }

  else
  {
    v17 = &stru_1F472E7E8;
  }

  if ([(WebSelectionRect *)self isInFixedPosition])
  {
    v18 = @" [FIXED]";
  }

  else
  {
    v18 = &stru_1F472E7E8;
  }

  isHorizontal = [(WebSelectionRect *)self isHorizontal];
  v20 = @" [VERTICAL]";
  if (isHorizontal)
  {
    v20 = &stru_1F472E7E8;
  }

  return [v3 stringWithFormat:@"<WebSelectionRect: %p> : { %.1f, %.1f, %.1f, %.1f } %@%@%@%@%@%@%@%@", self, v5, v7, v9, v11, v12, v13, v14, v15, v16, v17, v18, v20];
}

- (CGRect)rect
{
  x = self->m_rect.origin.x;
  y = self->m_rect.origin.y;
  width = self->m_rect.size.width;
  height = self->m_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end