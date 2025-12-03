@interface PXSectionedLayoutContent
- (CGSize)contentSize;
- (CGSize)internalContentSize;
- (NSArray)sections;
- (PXSectionedLayoutContent)initWithAxis:(int64_t)axis insets:(UIEdgeInsets)insets;
- (UIEdgeInsets)edgeInsets;
- (id)description;
- (void)_addSection:(id)section;
- (void)_adjustSectionsFromIndex:(int64_t)index;
- (void)_exchangeSectionAtIndex:(unint64_t)index withSectionAtIndex:(unint64_t)atIndex;
- (void)_insertSection:(id)section atIndex:(unint64_t)index;
- (void)_removeSection:(id)section;
- (void)insertSection:(id)section atIndex:(int64_t)index;
- (void)removeAllSections;
- (void)removeSections:(id)sections;
- (void)updateSections:(id)sections;
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

- (void)_adjustSectionsFromIndex:(int64_t)index
{
  indexCopy = index;
  width = *MEMORY[0x1E695F060];
  height = *(MEMORY[0x1E695F060] + 8);
  if ([(NSMutableArray *)self->_sections count]> index)
  {
    if (indexCopy <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = indexCopy;
    }

    v9 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:v8 - 1];
    v10 = v9;
    if (indexCopy)
    {
      [v9 frame];
      left = v11;
      top = v13;
      if (indexCopy >= 1)
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
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutContent.m" lineNumber:191 description:@"axis == PXAxisUndefined"];
        }
      }
    }

    else
    {
      top = self->_edgeInsets.top;
      left = self->_edgeInsets.left;
    }

    for (; indexCopy < [(NSMutableArray *)self->_sections count]; ++indexCopy)
    {
      v21 = [(NSMutableArray *)self->_sections objectAtIndexedSubscript:indexCopy];
      [v21 frame];
      v23 = v22;
      v25 = v24;
      [v21 setFrame:{left, top}];
      [v21 setIndex:indexCopy];
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
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutContent.m" lineNumber:220 description:@"axis == PXAxisUndefined"];
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
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutContent.m" lineNumber:239 description:@"axis == PXAxisUndefined"];
  }

  [(PXSectionedLayoutContent *)self setInternalContentSize:width, height];
}

- (void)_exchangeSectionAtIndex:(unint64_t)index withSectionAtIndex:(unint64_t)atIndex
{
  [NSMutableArray exchangeObjectAtIndex:"exchangeObjectAtIndex:withObjectAtIndex:" withObjectAtIndex:?];
  if (index >= atIndex)
  {
    indexCopy = atIndex;
  }

  else
  {
    indexCopy = index;
  }

  [(PXSectionedLayoutContent *)self _adjustSectionsFromIndex:indexCopy];
}

- (void)_insertSection:(id)section atIndex:(unint64_t)index
{
  sectionCopy = section;
  if ([(NSMutableArray *)self->_sections count]< index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutContent.m" lineNumber:157 description:{@"index %lu out of bounds %lu", index, -[NSMutableArray count](self->_sections, "count")}];
  }

  [(NSMutableArray *)self->_sections insertObject:sectionCopy atIndex:index];
  [(PXSectionedLayoutContent *)self _adjustSectionsFromIndex:index];
}

- (void)_removeSection:(id)section
{
  sections = self->_sections;
  sectionCopy = section;
  if (([(NSMutableArray *)sections containsObject:sectionCopy]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutContent.m" lineNumber:150 description:@"section is not contained."];
  }

  index = [sectionCopy index];
  [(NSMutableArray *)self->_sections removeObject:sectionCopy];

  [(PXSectionedLayoutContent *)self _adjustSectionsFromIndex:index];
}

- (void)_addSection:(id)section
{
  sectionCopy = section;
  if ([(NSMutableArray *)self->_sections containsObject:?])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutContent.m" lineNumber:143 description:@"section already inserted."];
  }

  [(NSMutableArray *)self->_sections addObject:sectionCopy];
  [(PXSectionedLayoutContent *)self _adjustSectionsFromIndex:[(NSMutableArray *)self->_sections count]- 1];
}

- (void)insertSection:(id)section atIndex:(int64_t)index
{
  sectionCopy = section;
  v9 = sectionCopy;
  if (!sectionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutContent.m" lineNumber:138 description:@"section to insert is nil"];

    sectionCopy = 0;
  }

  [(PXSectionedLayoutContent *)self _insertSection:sectionCopy atIndex:index];
}

- (void)updateSections:(id)sections
{
  v17 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [sectionsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(sectionsCopy);
        }

        index = [*(*(&v12 + 1) + 8 * i) index];
        if (v8 >= index)
        {
          v11 = index;
        }

        else
        {
          v11 = v8;
        }

        if (v8 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v8 = index;
        }

        else
        {
          v8 = v11;
        }
      }

      v6 = [sectionsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(PXSectionedLayoutContent *)self _adjustSectionsFromIndex:v8];
}

- (void)removeSections:(id)sections
{
  v14 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [sectionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(sectionsCopy);
        }

        [(PXSectionedLayoutContent *)self _removeSection:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [sectionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutContent.m" lineNumber:90 description:@"axis == PXAxisUndefined"];

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

- (PXSectionedLayoutContent)initWithAxis:(int64_t)axis insets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  if (!axis)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutContent.m" lineNumber:36 description:@"axis cannot be PXAxisUndefined"];
  }

  v17.receiver = self;
  v17.super_class = PXSectionedLayoutContent;
  v10 = [(PXSectionedLayoutContent *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_axis = axis;
    v10->_edgeInsets.top = top;
    v10->_edgeInsets.left = left;
    v10->_edgeInsets.bottom = bottom;
    v10->_edgeInsets.right = right;
    array = [MEMORY[0x1E695DF70] array];
    sections = v11->_sections;
    v11->_sections = array;
  }

  return v11;
}

@end