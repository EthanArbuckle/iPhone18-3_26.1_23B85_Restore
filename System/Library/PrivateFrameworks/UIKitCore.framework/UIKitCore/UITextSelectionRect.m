@interface UITextSelectionRect
+ (BOOL)endIsHorizontal:(id)a3;
+ (BOOL)startIsHorizontal:(id)a3;
+ (CGRect)endEdgeFromRects:(id)a3;
+ (CGRect)startEdgeFromRects:(id)a3;
+ (id)endCustomSelectionPathFromRects:(id)a3;
+ (id)endRectFromRects:(id)a3;
+ (id)startCustomSelectionPathFromRects:(id)a3;
+ (id)startRectFromRects:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGAffineTransform)transform;
- (CGRect)_endEdgeRect;
- (CGRect)_startEdgeRect;
- (CGRect)rect;
- (UISelectionGrabberCustomPath)_endCustomSelectionPath;
- (UISelectionGrabberCustomPath)_startCustomSelectionPath;
- (UITextSelectionRectImpl)_isImpl;
- (id)mutableCopy;
- (unint64_t)hash;
- (void)_appendToPath:(CGPath *)a3 cornerRadius:(double)a4 edgeInsets:(UIEdgeInsets)a5;
@end

@implementation UITextSelectionRect

- (id)mutableCopy
{
  [(UITextSelectionRect *)self rect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = +[UIWindow _applicationKeyWindow];
  v12 = [_UIMutableTextSelectionRect selectionRectWithRect:v11 fromView:v4, v6, v8, v10];

  [v12 _setDrawsOwnHighlight:{-[UITextSelectionRect _drawsOwnHighlight](self, "_drawsOwnHighlight")}];
  v13 = [(UITextSelectionRect *)self _customHandleInfo];
  [v12 set_customHandleInfo:v13];

  [v12 setWritingDirection:{-[UITextSelectionRect writingDirection](self, "writingDirection")}];
  [v12 setContainsStart:{-[UITextSelectionRect containsStart](self, "containsStart")}];
  [v12 setContainsEnd:{-[UITextSelectionRect containsEnd](self, "containsEnd")}];
  [v12 setIsVertical:{-[UITextSelectionRect isVertical](self, "isVertical")}];
  [(UITextSelectionRect *)self transform];
  v16[0] = v16[3];
  v16[1] = v16[4];
  v16[2] = v16[5];
  [v12 setTransform:v16];
  v14 = [(UITextSelectionRect *)self _path];
  [v12 set_path:v14];

  return v12;
}

+ (id)startRectFromRects:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count] && (objc_msgSend(v3, "lastObject"), v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass & 1) != 0))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if ([v11 containsStart])
          {
            v12 = v11;

            goto LABEL_14;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = [v6 objectAtIndex:0];
  }

  else
  {
    v12 = 0;
  }

LABEL_14:

  return v12;
}

+ (CGRect)startEdgeFromRects:(id)a3
{
  v3 = [a1 startRectFromRects:a3];
  [v3 _startEdgeRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

+ (id)endRectFromRects:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count] && (objc_msgSend(v3, "lastObject"), v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass & 1) != 0))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if ([v11 containsEnd])
          {
            v12 = v11;

            goto LABEL_14;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = [v6 lastObject];
  }

  else
  {
    v12 = 0;
  }

LABEL_14:

  return v12;
}

+ (CGRect)endEdgeFromRects:(id)a3
{
  v3 = [a1 endRectFromRects:a3];
  [v3 _endEdgeRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

+ (id)startCustomSelectionPathFromRects:(id)a3
{
  v3 = [a1 startRectFromRects:a3];
  v4 = [v3 _endCustomSelectionPath];

  return v4;
}

+ (id)endCustomSelectionPathFromRects:(id)a3
{
  v3 = [a1 endRectFromRects:a3];
  v4 = [v3 _endCustomSelectionPath];

  return v4;
}

+ (BOOL)startIsHorizontal:(id)a3
{
  v3 = [a1 startRectFromRects:a3];
  v4 = [v3 isVertical];

  return v4 ^ 1;
}

+ (BOOL)endIsHorizontal:(id)a3
{
  v3 = [a1 endRectFromRects:a3];
  v4 = [v3 isVertical];

  return v4 ^ 1;
}

- (UISelectionGrabberCustomPath)_startCustomSelectionPath
{
  v3 = [(UITextSelectionRect *)self _customHandleInfo];
  if (!v3)
  {
    v4 = 0;
    goto LABEL_8;
  }

  v4 = objc_alloc_init(UISelectionGrabberCustomPath);
  v5 = [(UITextSelectionRect *)self writingDirection];
  if ((v5 + 1) >= 2)
  {
    if (v5 != NSWritingDirectionRightToLeft)
    {
      goto LABEL_8;
    }

    [v3 topRight];
    [(UISelectionGrabberCustomPath *)v4 setTopPoint:?];
    [v3 bottomRight];
  }

  else
  {
    [v3 topLeft];
    [(UISelectionGrabberCustomPath *)v4 setTopPoint:?];
    [v3 bottomLeft];
  }

  [(UISelectionGrabberCustomPath *)v4 setBottomPoint:?];
LABEL_8:

  return v4;
}

- (UISelectionGrabberCustomPath)_endCustomSelectionPath
{
  v3 = [(UITextSelectionRect *)self _customHandleInfo];
  if (!v3)
  {
    v4 = 0;
    goto LABEL_8;
  }

  v4 = objc_alloc_init(UISelectionGrabberCustomPath);
  v5 = [(UITextSelectionRect *)self writingDirection];
  if ((v5 + 1) >= 2)
  {
    if (v5 != NSWritingDirectionRightToLeft)
    {
      goto LABEL_8;
    }

    [v3 topLeft];
    [(UISelectionGrabberCustomPath *)v4 setTopPoint:?];
    [v3 bottomLeft];
  }

  else
  {
    [v3 topRight];
    [(UISelectionGrabberCustomPath *)v4 setTopPoint:?];
    [v3 bottomRight];
  }

  [(UISelectionGrabberCustomPath *)v4 setBottomPoint:?];
LABEL_8:

  return v4;
}

- (CGRect)_startEdgeRect
{
  [(UITextSelectionRect *)self rect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(UITextSelectionRect *)self isVertical];
  v12 = [(UITextSelectionRect *)self writingDirection];
  if ((v12 + 1) >= 2)
  {
    if (v12 == NSWritingDirectionRightToLeft)
    {
      if (v11)
      {
        v6 = v6 + v10 + -1.0;
        v10 = 1.0;
      }

      else
      {
        v4 = v4 + v8 + -1.0;
        v8 = 1.0;
      }
    }
  }

  else if (v11)
  {
    v10 = 1.0;
  }

  else
  {
    v8 = 1.0;
  }

  v13 = v4;
  v14 = v6;
  v15 = v8;
  v16 = v10;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)_endEdgeRect
{
  [(UITextSelectionRect *)self rect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(UITextSelectionRect *)self isVertical];
  v12 = [(UITextSelectionRect *)self writingDirection];
  if ((v12 + 1) >= 2)
  {
    v13 = 1.0;
    if (v11)
    {
      v14 = 1.0;
    }

    else
    {
      v14 = v10;
    }

    if (v11)
    {
      v13 = v8;
    }

    if (v12 == NSWritingDirectionRightToLeft)
    {
      v10 = v14;
      v8 = v13;
    }
  }

  else if (v11)
  {
    v6 = v6 + v10 + -1.0;
    v10 = 1.0;
  }

  else
  {
    v4 = v4 + v8 + -1.0;
    v8 = 1.0;
  }

  v15 = v4;
  v16 = v6;
  v17 = v8;
  v18 = v10;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)rect
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (UITextSelectionRectImpl)_isImpl
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(UITextSelectionRect *)self _path];
      if (v7 || ([(UITextSelectionRect *)v6 _path], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v8 = [(UITextSelectionRect *)self _path];
        v9 = [(UITextSelectionRect *)v6 _path];
        v10 = [v8 isEqual:v9];

        if (v7)
        {

          if (!v10)
          {
            goto LABEL_19;
          }
        }

        else
        {

          if ((v10 & 1) == 0)
          {
            goto LABEL_19;
          }
        }
      }

      [(UITextSelectionRect *)self transform];
      if (v6)
      {
        [(UITextSelectionRect *)v6 transform];
      }

      else
      {
        memset(&v29, 0, sizeof(v29));
      }

      if (CGAffineTransformEqualToTransform(&t1, &v29))
      {
        [(UITextSelectionRect *)self rect];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;
        [(UITextSelectionRect *)v6 rect];
        v32.origin.x = v20;
        v32.origin.y = v21;
        v32.size.width = v22;
        v32.size.height = v23;
        v31.origin.x = v13;
        v31.origin.y = v15;
        v31.size.width = v17;
        v31.size.height = v19;
        if (CGRectEqualToRect(v31, v32))
        {
          v24 = [(UITextSelectionRect *)self writingDirection];
          if (v24 == [(UITextSelectionRect *)v6 writingDirection])
          {
            v25 = [(UITextSelectionRect *)self containsStart];
            if (v25 == [(UITextSelectionRect *)v6 containsStart])
            {
              v26 = [(UITextSelectionRect *)self containsEnd];
              if (v26 == [(UITextSelectionRect *)v6 containsEnd])
              {
                v28 = [(UITextSelectionRect *)self isVertical];
                v11 = v28 ^ [(UITextSelectionRect *)v6 isVertical]^ 1;
                goto LABEL_20;
              }
            }
          }
        }
      }

LABEL_19:
      LOBYTE(v11) = 0;
LABEL_20:

      goto LABEL_21;
    }

    LOBYTE(v11) = 0;
  }

LABEL_21:

  return v11;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E696B098];
  [(UITextSelectionRect *)self rect];
  v4 = [v3 valueWithCGRect:?];
  v5 = [v4 hash];

  v6 = 257 * (257 * v5 + [(UITextSelectionRect *)self writingDirection]);
  v7 = 257 * (v6 + [(UITextSelectionRect *)self containsStart]);
  v8 = 257 * (v7 + [(UITextSelectionRect *)self containsEnd]);
  v9 = v8 + [(UITextSelectionRect *)self isVertical]+ 0x1060F140F0601;
  v10 = [(UITextSelectionRect *)self _path];
  v11 = [v10 hash];

  return v9 ^ v11;
}

- (CGAffineTransform)transform
{
  v5 = [(UITextSelectionRect *)self _transform];

  if (v5)
  {
    v7 = [(UITextSelectionRect *)self _transform];
    if (v7)
    {
      v10 = v7;
      [v7 CGAffineTransformValue];
      v7 = v10;
    }

    else
    {
      *&retstr->c = 0u;
      *&retstr->tx = 0u;
      *&retstr->a = 0u;
    }
  }

  else
  {
    v8 = MEMORY[0x1E695EFD0];
    v9 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v9;
    *&retstr->tx = *(v8 + 32);
  }

  return result;
}

- (void)_appendToPath:(CGPath *)a3 cornerRadius:(double)a4 edgeInsets:(UIEdgeInsets)a5
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  [(UITextSelectionRect *)self rect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = *(MEMORY[0x1E695EFD0] + 16);
  v30[0] = *MEMORY[0x1E695EFD0];
  v30[1] = v19;
  v30[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(UITextSelectionRect *)self transform];
  if (CGAffineTransformIsIdentity(&m))
  {
    v20 = 0;
  }

  else
  {
    v20 = v30;
    [(UITextSelectionRect *)self transform];
  }

  v21 = [(UITextSelectionRect *)self _path];

  if (v21)
  {
    memset(&m, 0, sizeof(m));
    CGAffineTransformMakeTranslation(&m, v12, v14);
    v22 = [(UITextSelectionRect *)self _path];
    CGPathAddPath(a3, &m, [v22 CGPath]);
  }

  else if (![(UITextSelectionRect *)self _drawsOwnHighlight])
  {
    v23 = left + v12;
    v24 = top + v14;
    v25 = v16 - (left + right);
    v26 = v18 - (top + bottom);
    if (a4 <= 2.22044605e-16)
    {
      CGPathAddRect(a3, v20, *&v23);
    }

    else
    {
      v27 = fmin(a4, v25 * 0.5);
      CGPathAddRoundedRect(a3, v20, *&v23, v27, v27);
    }
  }
}

@end