@interface PXSectionedLayoutContent
- (CGSize)contentSize;
- (CGSize)internalContentSize;
- (NSArray)sections;
- (PXSectionedLayoutContent)initWithAxis:(int64_t)a3 insets:(UIEdgeInsets)a4;
- (UIEdgeInsets)edgeInsets;
- (id)description;
- (void)_addSection:(id)a3;
- (void)_adjustSectionsFromIndex:(int64_t)a3;
- (void)_exchangeSectionAtIndex:(unint64_t)a3 withSectionAtIndex:(unint64_t)a4;
- (void)_insertSection:(id)a3 atIndex:(unint64_t)a4;
- (void)_removeSection:(id)a3;
- (void)insertSection:(id)a3 atIndex:(int64_t)a4;
- (void)removeAllSections;
- (void)removeSections:(id)a3;
- (void)updateSections:(id)a3;
@end

@implementation PXSectionedLayoutContent

- (CGSize)internalContentSize
{
  width = self->_internalContentSize.width;
  height = self->_internalContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_adjustSectionsFromIndex:(int64_t)a3
{
  v3 = a3;
  width = *MEMORY[0x1E695F060];
  height = *(MEMORY[0x1E695F060] + 8);
  if ([(NSMutableArray *)self->_sections count]> a3)
  {
    if (v3 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v3;
    }

    v9 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:v8 - 1];
    v10 = v9;
    if (v3)
    {
      [v9 frame];
      left = v11;
      top = v13;
      if (v3 >= 1)
      {
        axis = self->_axis;
        if (axis)
        {
          if (axis == 2)
          {
            [v10 frame];
            left = left + v18;
            [v10 frame];
            if (height < v19)
            {
              height = v19;
            }

            width = left;
          }

          else if (axis == 1)
          {
            [v10 frame];
            top = top + v16;
            [v10 frame];
            if (width < v17)
            {
              width = v17;
            }

            height = top;
          }
        }

        else
        {
          v20 = [MEMORY[0x1E696AAA8] currentHandler];
          [v20 handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutContent.m" lineNumber:191 description:@"axis == PXAxisUndefined"];
        }
      }
    }

    else
    {
      top = self->_edgeInsets.top;
      left = self->_edgeInsets.left;
    }

    for (; v3 < [(NSMutableArray *)self->_sections count]; ++v3)
    {
      v21 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:v3];
      [v21 frame];
      v23 = v22;
      v25 = v24;
      [v21 setFrame:{left, top}];
      [v21 setIndex:v3];
      v26 = self->_axis;
      if (v26)
      {
        if (height >= v25)
        {
          v27 = height;
        }

        else
        {
          v27 = v25;
        }

        v28 = top + v25;
        if (width >= v23)
        {
          v29 = width;
        }

        else
        {
          v29 = v23;
        }

        v30 = height + v25;
        if (v26 != 1)
        {
          v28 = top;
          v30 = height;
          v29 = width;
        }

        if (v26 == 2)
        {
          left = left + v23;
        }

        else
        {
          top = v28;
        }

        if (v26 == 2)
        {
          height = v27;
        }

        else
        {
          height = v30;
        }

        if (v26 == 2)
        {
          width = width + v23;
        }

        else
        {
          width = v29;
        }
      }

      else
      {
        v31 = [MEMORY[0x1E696AAA8] currentHandler];
        [v31 handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutContent.m" lineNumber:220 description:@"axis == PXAxisUndefined"];
      }
    }
  }

  v32 = self->_axis;
  if (v32)
  {
    if (v32 == 2)
    {
      if (height < self->_internalContentSize.height)
      {
        height = self->_internalContentSize.height;
      }
    }

    else if (v32 == 1 && width < self->_internalContentSize.width)
    {
      width = self->_internalContentSize.width;
    }
  }

  else
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutContent.m" lineNumber:239 description:@"axis == PXAxisUndefined"];
  }

  [(PXSectionedLayoutContent *)self setInternalContentSize:width, height];
}

- (void)_exchangeSectionAtIndex:(unint64_t)a3 withSectionAtIndex:(unint64_t)a4
{
  [NSMutableArray exchangeObjectAtIndex:"exchangeObjectAtIndex:withObjectAtIndex:" withObjectAtIndex:?];
  if (a3 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a3;
  }

  [(PXSectionedLayoutContent *)self _adjustSectionsFromIndex:v7];
}

- (void)_insertSection:(id)a3 atIndex:(unint64_t)a4
{
  v8 = a3;
  if ([(NSMutableArray *)self->_sections count]< a4)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutContent.m" lineNumber:157 description:{@"index %lu out of bounds %lu", a4, -[NSMutableArray count](self->_sections, "count")}];
  }

  [(NSMutableArray *)self->_sections insertObject:v8 atIndex:a4];
  [(PXSectionedLayoutContent *)self _adjustSectionsFromIndex:a4];
}

- (void)_removeSection:(id)a3
{
  sections = self->_sections;
  v6 = a3;
  if (([(NSMutableArray *)sections containsObject:v6]& 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutContent.m" lineNumber:150 description:@"section is not contained."];
  }

  v7 = [v6 index];
  [(NSMutableArray *)self->_sections removeObject:v6];

  [(PXSectionedLayoutContent *)self _adjustSectionsFromIndex:v7];
}

- (void)_addSection:(id)a3
{
  v6 = a3;
  if ([(NSMutableArray *)self->_sections containsObject:?])
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutContent.m" lineNumber:143 description:@"section already inserted."];
  }

  [(NSMutableArray *)self->_sections addObject:v6];
  [(PXSectionedLayoutContent *)self _adjustSectionsFromIndex:[(NSMutableArray *)self->_sections count]- 1];
}

- (void)insertSection:(id)a3 atIndex:(int64_t)a4
{
  v7 = a3;
  v9 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutContent.m" lineNumber:138 description:@"section to insert is nil"];

    v7 = 0;
  }

  [(PXSectionedLayoutContent *)self _insertSection:v7 atIndex:a4];
}

- (void)updateSections:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) index];
        if (v8 >= v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = v8;
        }

        if (v8 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v8 = v10;
        }

        else
        {
          v8 = v11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(PXSectionedLayoutContent *)self _adjustSectionsFromIndex:v8];
}

- (void)removeSections:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(PXSectionedLayoutContent *)self _removeSection:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeAllSections
{
  [(NSMutableArray *)self->_sections removeAllObjects];

  [(PXSectionedLayoutContent *)self _adjustSectionsFromIndex:0];
}

- (CGSize)contentSize
{
  v3 = vextq_s8(self->_internalContentSize, self->_internalContentSize, 8uLL);
  axis = self->_axis;
  if (axis)
  {
    if (axis == 2 || axis == 1)
    {
      v3 = vaddq_f64(v3, vaddq_f64(*&self->_edgeInsets.top, *&self->_edgeInsets.bottom));
    }
  }

  else
  {
    v8 = v3;
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutContent.m" lineNumber:90 description:@"axis == PXAxisUndefined"];

    v3 = v8;
  }

  v7 = v3.f64[1];
  result.height = v3.f64[0];
  result.width = v7;
  return result;
}

- (NSArray)sections
{
  v2 = [(NSMutableArray *)self->_sections copy];

  return v2;
}

- (id)description
{
  v12.receiver = self;
  v12.super_class = PXSectionedLayoutContent;
  v3 = [(PXSectionedLayoutContent *)&v12 description];
  v4 = v3;
  axis = self->_axis;
  if (axis > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E7BB5CC0[axis];
  }

  v7 = [v3 stringByAppendingFormat:@"axis %@\n", v6];

  [(PXSectionedLayoutContent *)self contentSize];
  v8 = NSStringFromCGSize(v14);
  v9 = [v7 stringByAppendingFormat:@"contentSize %@\n", v8];

  v10 = [v9 stringByAppendingFormat:@"sections %@\n", self->_sections];

  return v10;
}

- (PXSectionedLayoutContent)initWithAxis:(int64_t)a3 insets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  if (!a3)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutContent.m" lineNumber:36 description:@"axis cannot be PXAxisUndefined"];
  }

  v17.receiver = self;
  v17.super_class = PXSectionedLayoutContent;
  v10 = [(PXSectionedLayoutContent *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_axis = a3;
    v10->_edgeInsets.top = top;
    v10->_edgeInsets.left = left;
    v10->_edgeInsets.bottom = bottom;
    v10->_edgeInsets.right = right;
    v12 = [MEMORY[0x1E695DF70] array];
    sections = v11->_sections;
    v11->_sections = v12;
  }

  return v11;
}

@end