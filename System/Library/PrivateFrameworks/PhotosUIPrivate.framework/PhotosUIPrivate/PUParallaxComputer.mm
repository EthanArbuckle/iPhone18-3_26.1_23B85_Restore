@interface PUParallaxComputer
- (CGPoint)contentParallaxOffsetForViewFrame:(CGRect)frame visibleRect:(CGRect)rect;
@end

@implementation PUParallaxComputer

- (CGPoint)contentParallaxOffsetForViewFrame:(CGRect)frame visibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = frame.size.height;
  v9 = frame.size.width;
  v10 = frame.origin.y;
  v11 = frame.origin.x;
  if (CGRectIntersectsRect(frame, rect))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__PUParallaxComputer_contentParallaxOffsetForViewFrame_visibleRect___block_invoke;
    aBlock[3] = &unk_1E7B7A978;
    aBlock[4] = self;
    v13 = _Block_copy(aBlock);
    v14 = MEMORY[0x1E695EFF8];
    axis = [(PUParallaxComputer *)self axis];
    v16 = axis;
    v30 = height;
    if (axis)
    {
      v37.origin.x = v11;
      v37.origin.y = v10;
      v37.size.width = v9;
      v37.size.height = v8;
      MinX = CGRectGetMinX(v37);
      v38.origin.x = v11;
      v38.origin.y = v10;
      v38.size.width = v9;
      v38.size.height = v8;
      MaxX = CGRectGetMaxX(v38);
      v39.origin.x = x;
      v39.origin.y = y;
      v39.size.width = width;
      v39.size.height = height;
      v22 = CGRectGetMinX(v39);
      v40.size.height = height;
      v23 = v22;
      v40.origin.x = x;
      v40.origin.y = y;
      v40.size.width = width;
      v24 = CGRectGetMaxX(v40);
      v17 = v13[2](v13, MinX, MaxX, v23, v24);
      if ((v16 & 2) != 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v17 = *v14;
      if ((axis & 2) != 0)
      {
LABEL_4:
        v33.origin.x = v11;
        v33.origin.y = v10;
        v33.size.width = v9;
        v33.size.height = v8;
        MinY = CGRectGetMinY(v33);
        v34.origin.x = v11;
        v34.origin.y = v10;
        v34.size.width = v9;
        v34.size.height = v8;
        MaxY = CGRectGetMaxY(v34);
        v35.origin.x = x;
        v35.origin.y = y;
        v35.size.width = width;
        v35.size.height = v30;
        v19 = CGRectGetMinY(v35);
        v36.origin.x = x;
        v36.origin.y = y;
        v36.size.width = width;
        v36.size.height = v30;
        v20 = CGRectGetMaxY(v36);
        v21 = v13[2](v13, MinY, MaxY, v19, v20);
LABEL_8:

        goto LABEL_9;
      }
    }

    v21 = v14[1];
    goto LABEL_8;
  }

  v17 = *MEMORY[0x1E695EFF8];
  v21 = *(MEMORY[0x1E695EFF8] + 8);
LABEL_9:
  v25 = v17;
  v26 = v21;
  result.y = v26;
  result.x = v25;
  return result;
}

unint64_t __68__PUParallaxComputer_contentParallaxOffsetForViewFrame_visibleRect___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) model];
  if (result < 2)
  {
    return [*(a1 + 32) parallaxFactor];
  }

  return result;
}

@end