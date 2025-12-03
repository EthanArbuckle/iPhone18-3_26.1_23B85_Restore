@interface UITextSelectionRectCustomHandleInfo
- (BOOL)isEqual:(id)equal;
- (CGPoint)bottomLeft;
- (CGPoint)bottomRight;
- (CGPoint)topLeft;
- (CGPoint)topRight;
- (id)description;
- (unint64_t)hash;
@end

@implementation UITextSelectionRectCustomHandleInfo

- (CGPoint)bottomLeft
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)topLeft
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)bottomRight
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)topRight
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(UITextSelectionRectCustomHandleInfo *)self topLeft];
  v5 = v4;
  [(UITextSelectionRectCustomHandleInfo *)self topLeft];
  v7 = v6;
  [(UITextSelectionRectCustomHandleInfo *)self topRight];
  v9 = v8;
  [(UITextSelectionRectCustomHandleInfo *)self topRight];
  v11 = v10;
  [(UITextSelectionRectCustomHandleInfo *)self bottomLeft];
  v13 = v12;
  [(UITextSelectionRectCustomHandleInfo *)self bottomLeft];
  v15 = v14;
  [(UITextSelectionRectCustomHandleInfo *)self bottomRight];
  v17 = v16;
  [(UITextSelectionRectCustomHandleInfo *)self bottomRight];
  return [v3 stringWithFormat:@"topLeft    : %.2f %.2f \ntopRight   : %.2f %.2f \nbottomLeft : %.2f %.2f \nbottomRight: %.2f %.2f", v5, v7, v9, v11, v13, v15, v17, v18];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(UITextSelectionRectCustomHandleInfo *)self bottomLeft];
      v7 = v6;
      v9 = v8;
      [(UITextSelectionRectCustomHandleInfo *)v5 bottomLeft];
      if (v7 == v11 && v9 == v10)
      {
        [(UITextSelectionRectCustomHandleInfo *)self topLeft];
        v16 = v15;
        v18 = v17;
        [(UITextSelectionRectCustomHandleInfo *)v5 topLeft];
        v13 = 0;
        if (v16 == v20 && v18 == v19)
        {
          [(UITextSelectionRectCustomHandleInfo *)self bottomRight];
          v22 = v21;
          v24 = v23;
          [(UITextSelectionRectCustomHandleInfo *)v5 bottomRight];
          v13 = 0;
          if (v22 == v26 && v24 == v25)
          {
            [(UITextSelectionRectCustomHandleInfo *)self topRight];
            v28 = v27;
            v30 = v29;
            [(UITextSelectionRectCustomHandleInfo *)v5 topRight];
            v13 = v30 == v32 && v28 == v31;
          }
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E696B098];
  [(UITextSelectionRectCustomHandleInfo *)self bottomLeft];
  v4 = [v3 valueWithCGPoint:?];
  v5 = [v4 hash];

  v6 = MEMORY[0x1E696B098];
  [(UITextSelectionRectCustomHandleInfo *)self topLeft];
  v7 = [v6 valueWithCGPoint:?];
  v8 = 257 * (257 * v5 + [v7 hash]);

  v9 = MEMORY[0x1E696B098];
  [(UITextSelectionRectCustomHandleInfo *)self bottomRight];
  v10 = [v9 valueWithCGPoint:?];
  v11 = 257 * (v8 + [v10 hash]);

  v12 = MEMORY[0x1E696B098];
  [(UITextSelectionRectCustomHandleInfo *)self topRight];
  v13 = [v12 valueWithCGPoint:?];
  v14 = [v13 hash] + 0x1050A0A0501;

  return v11 + v14;
}

@end