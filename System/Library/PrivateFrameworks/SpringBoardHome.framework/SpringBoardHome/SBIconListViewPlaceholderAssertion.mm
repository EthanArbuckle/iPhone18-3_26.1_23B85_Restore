@interface SBIconListViewPlaceholderAssertion
- (SBIconListViewPlaceholderAssertion)initWithGridCellIndex:(unint64_t)a3 gridSizeClass:(id)a4 reason:(id)a5 options:(unint64_t)a6 listView:(id)a7;
- (SBIconListViewPlaceholderAssertion)initWithGridCellIndex:(unint64_t)a3 representedIcon:(id)a4 reason:(id)a5 options:(unint64_t)a6 listView:(id)a7;
- (SBPlaceholderIcon)placeholderIcon;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)effectiveGridCellIndex;
- (unint64_t)folderMutationOptions;
- (unint64_t)listMutationOptions;
- (void)dealloc;
- (void)didChangePlaceholderPosition;
- (void)invalidate;
- (void)placeAboveIcon:(id)a3;
- (void)placeAfterIcon:(id)a3;
- (void)placeBeforeIcon:(id)a3;
- (void)placeBelowIcon:(id)a3;
- (void)setGridCellIndex:(unint64_t)a3;
- (void)setGridSizeClass:(id)a3;
- (void)setOptions:(unint64_t)a3;
- (void)swapWithIcon:(id)a3;
@end

@implementation SBIconListViewPlaceholderAssertion

- (SBIconListViewPlaceholderAssertion)initWithGridCellIndex:(unint64_t)a3 gridSizeClass:(id)a4 reason:(id)a5 options:(unint64_t)a6 listView:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v22.receiver = self;
  v22.super_class = SBIconListViewPlaceholderAssertion;
  v15 = [(SBIconListViewPlaceholderAssertion *)&v22 init];
  v16 = v15;
  if (v15)
  {
    v15->_gridCellIndex = a3;
    v17 = [v12 copy];
    gridSizeClass = v16->_gridSizeClass;
    v16->_gridSizeClass = v17;

    v19 = [v13 copy];
    reason = v16->_reason;
    v16->_reason = v19;

    v16->_options = a6;
    objc_storeStrong(&v16->_listView, a7);
  }

  return v16;
}

- (SBIconListViewPlaceholderAssertion)initWithGridCellIndex:(unint64_t)a3 representedIcon:(id)a4 reason:(id)a5 options:(unint64_t)a6 listView:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v24.receiver = self;
  v24.super_class = SBIconListViewPlaceholderAssertion;
  v16 = [(SBIconListViewPlaceholderAssertion *)&v24 init];
  v17 = v16;
  if (v16)
  {
    v16->_gridCellIndex = a3;
    v18 = [v13 gridSizeClass];
    v19 = [v18 copy];
    gridSizeClass = v17->_gridSizeClass;
    v17->_gridSizeClass = v19;

    objc_storeStrong(&v17->_representedIcon, a4);
    v21 = [v14 copy];
    reason = v17->_reason;
    v17->_reason = v21;

    v17->_options = a6;
    objc_storeStrong(&v17->_listView, a7);
  }

  return v17;
}

- (void)dealloc
{
  if (![(SBIconListViewPlaceholderAssertion *)self isInvalidated])
  {
    NSLog(&cfstr_Sbiconlistview_4.isa, self->_reason);
    [(SBIconListViewPlaceholderAssertion *)self invalidate];
  }

  v3.receiver = self;
  v3.super_class = SBIconListViewPlaceholderAssertion;
  [(SBIconListViewPlaceholderAssertion *)&v3 dealloc];
}

- (unint64_t)effectiveGridCellIndex
{
  v3 = [(SBIconListViewPlaceholderAssertion *)self placeholderIcon];
  v4 = [(SBIconListViewPlaceholderAssertion *)self listView];
  v5 = [v4 layoutMetrics];
  v6 = [v5 gridCellInfo];
  v7 = [v5 listModel];
  v8 = [v7 indexForIcon:v3];
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v6 gridCellIndexForIconIndex:v8];
  }

  return v9;
}

- (void)setGridCellIndex:(unint64_t)a3
{
  if (self->_gridCellIndex != a3 || [(SBIconListViewPlaceholderAssertion *)self positioningType])
  {
    self->_gridCellIndex = a3;
    [(SBIconListViewPlaceholderAssertion *)self setPositioningType:0];

    [(SBIconListViewPlaceholderAssertion *)self didChangePlaceholderPosition];
  }
}

- (void)swapWithIcon:(id)a3
{
  [(SBIconListViewPlaceholderAssertion *)self setPositioningRelativeIcon:a3];
  [(SBIconListViewPlaceholderAssertion *)self setPositioningType:1];

  [(SBIconListViewPlaceholderAssertion *)self didChangePlaceholderPosition];
}

- (void)placeAfterIcon:(id)a3
{
  [(SBIconListViewPlaceholderAssertion *)self setPositioningRelativeIcon:a3];
  [(SBIconListViewPlaceholderAssertion *)self setPositioningType:2];

  [(SBIconListViewPlaceholderAssertion *)self didChangePlaceholderPosition];
}

- (void)placeBeforeIcon:(id)a3
{
  [(SBIconListViewPlaceholderAssertion *)self setPositioningRelativeIcon:a3];
  [(SBIconListViewPlaceholderAssertion *)self setPositioningType:3];

  [(SBIconListViewPlaceholderAssertion *)self didChangePlaceholderPosition];
}

- (void)placeAboveIcon:(id)a3
{
  [(SBIconListViewPlaceholderAssertion *)self setPositioningRelativeIcon:a3];
  [(SBIconListViewPlaceholderAssertion *)self setPositioningType:4];

  [(SBIconListViewPlaceholderAssertion *)self didChangePlaceholderPosition];
}

- (void)placeBelowIcon:(id)a3
{
  [(SBIconListViewPlaceholderAssertion *)self setPositioningRelativeIcon:a3];
  [(SBIconListViewPlaceholderAssertion *)self setPositioningType:5];

  [(SBIconListViewPlaceholderAssertion *)self didChangePlaceholderPosition];
}

- (void)setOptions:(unint64_t)a3
{
  if (self->_options != a3)
  {
    self->_options = a3;
    [(SBIconListViewPlaceholderAssertion *)self didChangePlaceholderPosition];
  }
}

- (void)setGridSizeClass:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_gridSizeClass != v4)
  {
    v9 = v4;
    v4 = [v4 isEqualToString:?];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [v9 copy];
      gridSizeClass = self->_gridSizeClass;
      self->_gridSizeClass = v6;

      v8 = [(SBIconListViewPlaceholderAssertion *)self placeholderIcon];
      [v8 setGridSizeClass:v9];
      [(SBIconListViewPlaceholderAssertion *)self didChangePlaceholderPosition];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)didChangePlaceholderPosition
{
  if (![(SBIconListViewPlaceholderAssertion *)self isInvalidated])
  {
    v3 = [(SBIconListViewPlaceholderAssertion *)self listView];
    [v3 placeholderAssertionDidChangePosition:self];
  }
}

- (SBPlaceholderIcon)placeholderIcon
{
  placeholderIcon = self->_placeholderIcon;
  if (!placeholderIcon)
  {
    v4 = [(SBIconListViewPlaceholderAssertion *)self reason];
    v5 = [(SBIconListViewPlaceholderAssertion *)self gridSizeClass];
    v6 = [SBPlaceholderIcon placeholderForReason:v4];
    v7 = self->_placeholderIcon;
    self->_placeholderIcon = v6;

    [(SBIcon *)self->_placeholderIcon setGridSizeClass:v5];
    placeholderIcon = self->_placeholderIcon;
  }

  return placeholderIcon;
}

- (unint64_t)listMutationOptions
{
  v3 = [(SBIconListViewPlaceholderAssertion *)self options];
  v4 = (v3 & 1) << 21;
  v5 = [(SBIconListViewPlaceholderAssertion *)self gridSizeClass];
  v6 = v5;
  if (v5 == @"SBHIconGridSizeClassDefault")
  {
  }

  else
  {
    v7 = [(SBIconListViewPlaceholderAssertion *)self gridSizeClass];
    v8 = [v7 isEqualToString:@"SBHIconGridSizeClassDefault"];

    if ((v8 & 1) == 0)
    {
      v4 |= 0x40uLL;
    }
  }

  v9 = (v3 << 6) & 0x180 | (((v3 >> 4) & 1) << 9) | v4;
  v10 = [(SBIconListViewPlaceholderAssertion *)self listView];
  v11 = [v10 allowsGaps];

  if (v11)
  {
    return v9 | 0x100000;
  }

  else
  {
    return v9;
  }
}

- (unint64_t)folderMutationOptions
{
  v3 = [(SBIconListViewPlaceholderAssertion *)self options];
  if (v3)
  {
    v4 = 25165826;
  }

  else
  {
    v4 = 8388610;
  }

  v5 = [(SBIconListViewPlaceholderAssertion *)self gridSizeClass];
  v6 = v5;
  if (v5 == @"SBHIconGridSizeClassDefault")
  {
  }

  else
  {
    v7 = [(SBIconListViewPlaceholderAssertion *)self gridSizeClass];
    v8 = [v7 isEqualToString:@"SBHIconGridSizeClassDefault"];

    if ((v8 & 1) == 0)
    {
      v4 |= 0x80uLL;
    }
  }

  v9 = (v3 << 7) & 0x300 | (((v3 >> 4) & 1) << 10) | v4;
  v10 = [(SBIconListViewPlaceholderAssertion *)self listView];
  v11 = [v10 allowsGaps];

  if (v11)
  {
    return v9 | 0x400000;
  }

  else
  {
    return v9;
  }
}

- (void)invalidate
{
  if (![(SBIconListViewPlaceholderAssertion *)self isInvalidated])
  {
    v3 = [(SBIconListViewPlaceholderAssertion *)self listView];
    [v3 removePlaceholderAssertion:self];

    [(SBIconListViewPlaceholderAssertion *)self setInvalidated:1];
  }
}

- (id)succinctDescription
{
  v2 = [(SBIconListViewPlaceholderAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBIconListViewPlaceholderAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBIconListViewPlaceholderAssertion *)self listView];
  v5 = [v4 gridSizeClassDomain];
  v6 = [(SBIconListViewPlaceholderAssertion *)self succinctDescriptionBuilder];
  v7 = [v6 appendInteger:-[SBIconListViewPlaceholderAssertion gridCellIndex](self withName:{"gridCellIndex"), @"gridCellIndex"}];
  v8 = [(SBIconListViewPlaceholderAssertion *)self gridSizeClass];
  v9 = [v5 descriptionForGridSizeClass:v8];
  [v6 appendString:v9 withName:@"gridSizeClass"];

  v10 = [(SBIconListViewPlaceholderAssertion *)self representedIcon];
  v11 = [v6 appendObject:v10 withName:@"representedIcon" skipIfNil:1];

  v12 = [(SBIconListViewPlaceholderAssertion *)self reason];
  v13 = [v6 appendObject:v12 withName:@"reason"];

  v14 = [(SBIconListViewPlaceholderAssertion *)self options];
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = v15;
  if (v14)
  {
    [v15 addObject:@"minimizing layout disruption"];
    if ((v14 & 2) == 0)
    {
LABEL_3:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v16 addObject:@"fixed"];
  if ((v14 & 0x10) == 0)
  {
LABEL_4:
    if ((v14 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  [v16 addObject:@"fixed if necessary"];
  if ((v14 & 4) == 0)
  {
LABEL_5:
    if ((v14 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_12:
  [v16 addObject:@"displacing existing fixed icons"];
  if ((v14 & 8) != 0)
  {
LABEL_6:
    [v16 addObject:@"disallowing icon removal"];
  }

LABEL_7:
  v17 = [v16 componentsJoinedByString:{@", "}];

  [v6 appendString:v17 withName:@"options"];
  v18 = [(SBIconListViewPlaceholderAssertion *)self positioningRelativeIcon];
  v19 = [v6 appendObject:v18 withName:@"positioningRelativeIcon" skipIfNil:1];

  v20 = [(SBIconListViewPlaceholderAssertion *)self positioningType];
  if (v20 > 5)
  {
    v21 = 0;
  }

  else
  {
    v21 = off_1E808D0D0[v20];
  }

  [v6 appendString:v21 withName:@"positioningType"];
  v22 = [(SBIconListViewPlaceholderAssertion *)self listView];
  v23 = [v6 appendPointer:v22 withName:@"listView"];

  return v6;
}

@end