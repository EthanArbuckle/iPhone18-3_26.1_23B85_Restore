@interface _UIFocusLinearMovementDebugView
- (_UIFocusLinearMovementDebugView)initWithGroups:(id)groups;
- (_UIFocusLinearMovementDebugView)initWithItems:(id)items;
- (id)_groupFramesFromGroups:(id)groups;
- (id)_itemFramesFromItems:(id)items;
- (id)_lineSegmentsFromFrames:(id)frames;
- (id)_primaryGroupFramesFromGroups:(id)groups;
- (void)drawRect:(CGRect)rect;
@end

@implementation _UIFocusLinearMovementDebugView

- (_UIFocusLinearMovementDebugView)initWithItems:(id)items
{
  itemsCopy = items;
  v10.receiver = self;
  v10.super_class = _UIFocusLinearMovementDebugView;
  v5 = [(UIView *)&v10 init];
  v6 = v5;
  if (v5)
  {
    if (itemsCopy)
    {
      v7 = itemsCopy;
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v5->_items, v7);
    v6->_colorCoding = 0;
    [(UIView *)v6 setUserInteractionEnabled:0];
    [(UIView *)v6 setOpaque:0];
    v8 = +[UIColor clearColor];
    [(UIView *)v6 setBackgroundColor:v8];
  }

  return v6;
}

- (_UIFocusLinearMovementDebugView)initWithGroups:(id)groups
{
  groupsCopy = groups;
  v10.receiver = self;
  v10.super_class = _UIFocusLinearMovementDebugView;
  v5 = [(UIView *)&v10 init];
  v6 = v5;
  if (v5)
  {
    if (groupsCopy)
    {
      v7 = groupsCopy;
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v5->_groups, v7);
    v6->_colorCoding = 1;
    [(UIView *)v6 setUserInteractionEnabled:0];
    [(UIView *)v6 setOpaque:0];
    v8 = +[UIColor clearColor];
    [(UIView *)v6 setBackgroundColor:v8];
  }

  return v6;
}

- (id)_itemFramesFromItems:(id)items
{
  v19 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = _UIFocusItemFrameInCoordinateSpace(*(*(&v14 + 1) + 8 * i), self);
        v12 = [MEMORY[0x1E696B098] valueWithCGRect:{v11, v14}];
        [v5 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_groupFramesFromGroups:(id)groups
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = self->_groups;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        [v10 boundingBox];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        coordinateSpace = [v10 coordinateSpace];
        [(UIView *)self convertRect:coordinateSpace fromCoordinateSpace:v12, v14, v16, v18];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;

        v28 = [MEMORY[0x1E696B098] valueWithCGRect:{v21, v23, v25, v27}];
        [v4 addObject:v28];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_primaryGroupFramesFromGroups:(id)groups
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = self->_groups;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        [v10 primaryRect];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        coordinateSpace = [v10 coordinateSpace];
        [(UIView *)self convertRect:coordinateSpace fromCoordinateSpace:v12, v14, v16, v18];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;

        v28 = [MEMORY[0x1E696B098] valueWithCGRect:{v21, v23, v25, v27}];
        [v4 addObject:v28];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_lineSegmentsFromFrames:(id)frames
{
  v30 = *MEMORY[0x1E69E9840];
  framesCopy = frames;
  v4 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = framesCopy;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
    v13 = *v26;
    do
    {
      v14 = 0;
      v15 = v11;
      v16 = v12;
      v17 = v10;
      v18 = v9;
      do
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v25 + 1) + 8 * v14) CGRectValue];
        v9 = v19;
        v10 = v20;
        v11 = v21;
        v12 = v22;
        v32.origin.x = v18;
        v32.origin.y = v17;
        v32.size.width = v15;
        v32.size.height = v16;
        if (!CGRectIsEmpty(v32))
        {
          v23 = [[_UIFocusLinearMovementDebugViewLineSegment alloc] initWithStartRect:v8 endRect:v18 previousSegment:v17, v15, v16, v9, v10, v11, v12];
          [v4 addObject:v23];

          v8 = v23;
        }

        ++v14;
        v15 = v11;
        v16 = v12;
        v17 = v10;
        v18 = v9;
      }

      while (v7 != v14);
      v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v4;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v98 = *MEMORY[0x1E69E9840];
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextSaveGState(v10);
  v99.origin.x = x;
  v99.origin.y = y;
  v99.size.width = width;
  v99.size.height = height;
  CGContextClearRect(v10, v99);
  items = self->_items;
  if ((items != 0) == (self->_groups == 0))
  {
    if (items)
    {
LABEL_6:
      v12 = [(_UIFocusLinearMovementDebugView *)self _itemFramesFromItems:?];
      v77 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusLinearMovementDebugView.m" lineNumber:133 description:{@"%@ needs to be created with either items or groups.", v15}];

    if (self->_items)
    {
      goto LABEL_6;
    }
  }

  v12 = [(_UIFocusLinearMovementDebugView *)self _groupFramesFromGroups:self->_groups];
  v77 = [(_UIFocusLinearMovementDebugView *)self _primaryGroupFramesFromGroups:self->_groups];
LABEL_9:
  v71 = height;
  v70 = [(_UIFocusLinearMovementDebugView *)self _lineSegmentsFromFrames:v12];
  CGContextSaveGState(v10);
  c = v10;
  CGContextSetLineWidth(v10, 2.0);
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v16 = v12;
  v17 = [v16 countByEnumeratingWithState:&v86 objects:v97 count:16];
  selfCopy = self;
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v87;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v87 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v86 + 1) + 8 * i);
        colorCoding = self->_colorCoding;
        v24 = [v16 count];
        if (colorCoding)
        {
          [UIColor colorWithHue:v19 / v24 saturation:1.0 brightness:1.0 alpha:1.0];
        }

        else
        {
          +[UIColor systemBlueColor];
        }
        v25 = ;
        [v25 setStroke];
        v26 = [v25 colorWithAlphaComponent:0.2];
        [v26 setFill];

        [v22 CGRectValue];
        v27 = v100.origin.x;
        v28 = v100.origin.y;
        v29 = v100.size.width;
        v30 = v100.size.height;
        if (!CGRectIsNull(v100))
        {
          v101.origin.x = v27;
          v101.origin.y = v28;
          v101.size.width = v29;
          v101.size.height = v30;
          CGContextFillRect(c, v101);
          v102.origin.x = v27;
          v102.origin.y = v28;
          v102.size.width = v29;
          v102.size.height = v30;
          CGContextStrokeRect(c, v102);
        }

        if (v77)
        {
          v31 = [v77 objectAtIndexedSubscript:v19];
          [v31 CGRectValue];
          v33 = v32;
          v35 = v34;
          v37 = v36;
          v39 = v38;

          v103.origin.x = v33;
          v103.origin.y = v35;
          v103.size.width = v37;
          v103.size.height = v39;
          if (!CGRectIsNull(v103))
          {
            *lengths = xmmword_18A6537B0;
            CGContextSetLineDash(c, v19 * 4.0, lengths, 2uLL);
            v104.origin.x = v33;
            v104.origin.y = v35;
            v104.size.width = v37;
            v104.size.height = v39;
            v105 = CGRectInset(v104, 2.0, 2.0);
            CGContextStrokeRect(c, v105);
            CGContextSetLineDash(c, 0.0, 0, 0);
          }
        }

        ++v19;

        self = selfCopy;
      }

      v18 = [v16 countByEnumeratingWithState:&v86 objects:v97 count:16];
    }

    while (v18);
  }

  CGContextRestoreGState(c);
  CGContextSaveGState(c);
  CGContextSetLineWidth(c, 2.0);
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = v16;
  v74 = [obj countByEnumeratingWithState:&v82 objects:v95 count:16];
  if (v74)
  {
    v40 = 0;
    v73 = *v83;
    v41 = *off_1E70EC918;
    v42 = *off_1E70EC920;
    do
    {
      for (j = 0; j != v74; ++j)
      {
        v44 = v40;
        if (*v83 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v45 = *(*(&v82 + 1) + 8 * j);
        v46 = self->_colorCoding;
        v47 = [obj count];
        if (v46)
        {
          [UIColor colorWithHue:v40 / v47 saturation:1.0 brightness:1.0 alpha:1.0];
        }

        else
        {
          +[UIColor systemBlueColor];
        }
        v48 = ;
        [v48 setStroke];
        v49 = [v48 colorWithAlphaComponent:0.2];
        [v49 setFill];

        [v45 CGRectValue];
        v51 = v50;
        v53 = v52;
        ++v40;
        v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v44 + 1];
        v93[0] = v41;
        v55 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody"];
        v93[1] = v42;
        v94[0] = v55;
        v94[1] = v48;
        v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:2];
        [v54 drawAtPoint:v56 withAttributes:{v51, v53}];

        if (v77)
        {
          v57 = [v77 objectAtIndexedSubscript:v44];
          [v57 CGRectValue];
          v59 = v58;
          v61 = v60;

          if (v51 != v59 || v53 != v61)
          {
            v91[0] = v41;
            v62 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody"];
            v91[1] = v42;
            v92[0] = v62;
            v92[1] = v48;
            v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:2];
            [v54 drawAtPoint:v63 withAttributes:{v59, v61}];
          }
        }

        self = selfCopy;
      }

      v74 = [obj countByEnumeratingWithState:&v82 objects:v95 count:16];
    }

    while (v74);
  }

  CGContextRestoreGState(c);
  CGContextSaveGState(c);
  v64 = +[UIColor systemBlueColor];
  [v64 setStroke];
  [v64 setFill];
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v65 = v70;
  v66 = [v65 countByEnumeratingWithState:&v78 objects:v90 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v79;
    do
    {
      for (k = 0; k != v67; ++k)
      {
        if (*v79 != v68)
        {
          objc_enumerationMutation(v65);
        }

        [*(*(&v78 + 1) + 8 * k) drawInRect:{x, y, width, v71}];
      }

      v67 = [v65 countByEnumeratingWithState:&v78 objects:v90 count:16];
    }

    while (v67);
  }

  CGContextRestoreGState(c);
  CGContextRestoreGState(c);
}

@end