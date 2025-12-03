@interface SBIconListViewPlaceholderAssertion
- (SBIconListViewPlaceholderAssertion)initWithGridCellIndex:(unint64_t)index gridSizeClass:(id)class reason:(id)reason options:(unint64_t)options listView:(id)view;
- (SBIconListViewPlaceholderAssertion)initWithGridCellIndex:(unint64_t)index representedIcon:(id)icon reason:(id)reason options:(unint64_t)options listView:(id)view;
- (SBPlaceholderIcon)placeholderIcon;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)effectiveGridCellIndex;
- (unint64_t)folderMutationOptions;
- (unint64_t)listMutationOptions;
- (void)dealloc;
- (void)didChangePlaceholderPosition;
- (void)invalidate;
- (void)placeAboveIcon:(id)icon;
- (void)placeAfterIcon:(id)icon;
- (void)placeBeforeIcon:(id)icon;
- (void)placeBelowIcon:(id)icon;
- (void)setGridCellIndex:(unint64_t)index;
- (void)setGridSizeClass:(id)class;
- (void)setOptions:(unint64_t)options;
- (void)swapWithIcon:(id)icon;
@end

@implementation SBIconListViewPlaceholderAssertion

- (SBIconListViewPlaceholderAssertion)initWithGridCellIndex:(unint64_t)index gridSizeClass:(id)class reason:(id)reason options:(unint64_t)options listView:(id)view
{
  classCopy = class;
  reasonCopy = reason;
  viewCopy = view;
  v22.receiver = self;
  v22.super_class = SBIconListViewPlaceholderAssertion;
  v15 = [(SBIconListViewPlaceholderAssertion *)&v22 init];
  v16 = v15;
  if (v15)
  {
    v15->_gridCellIndex = index;
    v17 = [classCopy copy];
    gridSizeClass = v16->_gridSizeClass;
    v16->_gridSizeClass = v17;

    v19 = [reasonCopy copy];
    reason = v16->_reason;
    v16->_reason = v19;

    v16->_options = options;
    objc_storeStrong(&v16->_listView, view);
  }

  return v16;
}

- (SBIconListViewPlaceholderAssertion)initWithGridCellIndex:(unint64_t)index representedIcon:(id)icon reason:(id)reason options:(unint64_t)options listView:(id)view
{
  iconCopy = icon;
  reasonCopy = reason;
  viewCopy = view;
  v24.receiver = self;
  v24.super_class = SBIconListViewPlaceholderAssertion;
  v16 = [(SBIconListViewPlaceholderAssertion *)&v24 init];
  v17 = v16;
  if (v16)
  {
    v16->_gridCellIndex = index;
    gridSizeClass = [iconCopy gridSizeClass];
    v19 = [gridSizeClass copy];
    gridSizeClass = v17->_gridSizeClass;
    v17->_gridSizeClass = v19;

    objc_storeStrong(&v17->_representedIcon, icon);
    v21 = [reasonCopy copy];
    reason = v17->_reason;
    v17->_reason = v21;

    v17->_options = options;
    objc_storeStrong(&v17->_listView, view);
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
  placeholderIcon = [(SBIconListViewPlaceholderAssertion *)self placeholderIcon];
  listView = [(SBIconListViewPlaceholderAssertion *)self listView];
  layoutMetrics = [listView layoutMetrics];
  gridCellInfo = [layoutMetrics gridCellInfo];
  listModel = [layoutMetrics listModel];
  v8 = [listModel indexForIcon:placeholderIcon];
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [gridCellInfo gridCellIndexForIconIndex:v8];
  }

  return v9;
}

- (void)setGridCellIndex:(unint64_t)index
{
  if (self->_gridCellIndex != index || [(SBIconListViewPlaceholderAssertion *)self positioningType])
  {
    self->_gridCellIndex = index;
    [(SBIconListViewPlaceholderAssertion *)self setPositioningType:0];

    [(SBIconListViewPlaceholderAssertion *)self didChangePlaceholderPosition];
  }
}

- (void)swapWithIcon:(id)icon
{
  [(SBIconListViewPlaceholderAssertion *)self setPositioningRelativeIcon:icon];
  [(SBIconListViewPlaceholderAssertion *)self setPositioningType:1];

  [(SBIconListViewPlaceholderAssertion *)self didChangePlaceholderPosition];
}

- (void)placeAfterIcon:(id)icon
{
  [(SBIconListViewPlaceholderAssertion *)self setPositioningRelativeIcon:icon];
  [(SBIconListViewPlaceholderAssertion *)self setPositioningType:2];

  [(SBIconListViewPlaceholderAssertion *)self didChangePlaceholderPosition];
}

- (void)placeBeforeIcon:(id)icon
{
  [(SBIconListViewPlaceholderAssertion *)self setPositioningRelativeIcon:icon];
  [(SBIconListViewPlaceholderAssertion *)self setPositioningType:3];

  [(SBIconListViewPlaceholderAssertion *)self didChangePlaceholderPosition];
}

- (void)placeAboveIcon:(id)icon
{
  [(SBIconListViewPlaceholderAssertion *)self setPositioningRelativeIcon:icon];
  [(SBIconListViewPlaceholderAssertion *)self setPositioningType:4];

  [(SBIconListViewPlaceholderAssertion *)self didChangePlaceholderPosition];
}

- (void)placeBelowIcon:(id)icon
{
  [(SBIconListViewPlaceholderAssertion *)self setPositioningRelativeIcon:icon];
  [(SBIconListViewPlaceholderAssertion *)self setPositioningType:5];

  [(SBIconListViewPlaceholderAssertion *)self didChangePlaceholderPosition];
}

- (void)setOptions:(unint64_t)options
{
  if (self->_options != options)
  {
    self->_options = options;
    [(SBIconListViewPlaceholderAssertion *)self didChangePlaceholderPosition];
  }
}

- (void)setGridSizeClass:(id)class
{
  classCopy = class;
  v5 = classCopy;
  if (self->_gridSizeClass != classCopy)
  {
    v9 = classCopy;
    classCopy = [classCopy isEqualToString:?];
    v5 = v9;
    if ((classCopy & 1) == 0)
    {
      v6 = [v9 copy];
      gridSizeClass = self->_gridSizeClass;
      self->_gridSizeClass = v6;

      placeholderIcon = [(SBIconListViewPlaceholderAssertion *)self placeholderIcon];
      [placeholderIcon setGridSizeClass:v9];
      [(SBIconListViewPlaceholderAssertion *)self didChangePlaceholderPosition];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](classCopy, v5);
}

- (void)didChangePlaceholderPosition
{
  if (![(SBIconListViewPlaceholderAssertion *)self isInvalidated])
  {
    listView = [(SBIconListViewPlaceholderAssertion *)self listView];
    [listView placeholderAssertionDidChangePosition:self];
  }
}

- (SBPlaceholderIcon)placeholderIcon
{
  placeholderIcon = self->_placeholderIcon;
  if (!placeholderIcon)
  {
    reason = [(SBIconListViewPlaceholderAssertion *)self reason];
    gridSizeClass = [(SBIconListViewPlaceholderAssertion *)self gridSizeClass];
    v6 = [SBPlaceholderIcon placeholderForReason:reason];
    v7 = self->_placeholderIcon;
    self->_placeholderIcon = v6;

    [(SBIcon *)self->_placeholderIcon setGridSizeClass:gridSizeClass];
    placeholderIcon = self->_placeholderIcon;
  }

  return placeholderIcon;
}

- (unint64_t)listMutationOptions
{
  options = [(SBIconListViewPlaceholderAssertion *)self options];
  v4 = (options & 1) << 21;
  gridSizeClass = [(SBIconListViewPlaceholderAssertion *)self gridSizeClass];
  v6 = gridSizeClass;
  if (gridSizeClass == @"SBHIconGridSizeClassDefault")
  {
  }

  else
  {
    gridSizeClass2 = [(SBIconListViewPlaceholderAssertion *)self gridSizeClass];
    v8 = [gridSizeClass2 isEqualToString:@"SBHIconGridSizeClassDefault"];

    if ((v8 & 1) == 0)
    {
      v4 |= 0x40uLL;
    }
  }

  v9 = (options << 6) & 0x180 | (((options >> 4) & 1) << 9) | v4;
  listView = [(SBIconListViewPlaceholderAssertion *)self listView];
  allowsGaps = [listView allowsGaps];

  if (allowsGaps)
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
  options = [(SBIconListViewPlaceholderAssertion *)self options];
  if (options)
  {
    v4 = 25165826;
  }

  else
  {
    v4 = 8388610;
  }

  gridSizeClass = [(SBIconListViewPlaceholderAssertion *)self gridSizeClass];
  v6 = gridSizeClass;
  if (gridSizeClass == @"SBHIconGridSizeClassDefault")
  {
  }

  else
  {
    gridSizeClass2 = [(SBIconListViewPlaceholderAssertion *)self gridSizeClass];
    v8 = [gridSizeClass2 isEqualToString:@"SBHIconGridSizeClassDefault"];

    if ((v8 & 1) == 0)
    {
      v4 |= 0x80uLL;
    }
  }

  v9 = (options << 7) & 0x300 | (((options >> 4) & 1) << 10) | v4;
  listView = [(SBIconListViewPlaceholderAssertion *)self listView];
  allowsGaps = [listView allowsGaps];

  if (allowsGaps)
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
    listView = [(SBIconListViewPlaceholderAssertion *)self listView];
    [listView removePlaceholderAssertion:self];

    [(SBIconListViewPlaceholderAssertion *)self setInvalidated:1];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBIconListViewPlaceholderAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIconListViewPlaceholderAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  listView = [(SBIconListViewPlaceholderAssertion *)self listView];
  gridSizeClassDomain = [listView gridSizeClassDomain];
  succinctDescriptionBuilder = [(SBIconListViewPlaceholderAssertion *)self succinctDescriptionBuilder];
  v7 = [succinctDescriptionBuilder appendInteger:-[SBIconListViewPlaceholderAssertion gridCellIndex](self withName:{"gridCellIndex"), @"gridCellIndex"}];
  gridSizeClass = [(SBIconListViewPlaceholderAssertion *)self gridSizeClass];
  v9 = [gridSizeClassDomain descriptionForGridSizeClass:gridSizeClass];
  [succinctDescriptionBuilder appendString:v9 withName:@"gridSizeClass"];

  representedIcon = [(SBIconListViewPlaceholderAssertion *)self representedIcon];
  v11 = [succinctDescriptionBuilder appendObject:representedIcon withName:@"representedIcon" skipIfNil:1];

  reason = [(SBIconListViewPlaceholderAssertion *)self reason];
  v13 = [succinctDescriptionBuilder appendObject:reason withName:@"reason"];

  options = [(SBIconListViewPlaceholderAssertion *)self options];
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = v15;
  if (options)
  {
    [v15 addObject:@"minimizing layout disruption"];
    if ((options & 2) == 0)
    {
LABEL_3:
      if ((options & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((options & 2) == 0)
  {
    goto LABEL_3;
  }

  [v16 addObject:@"fixed"];
  if ((options & 0x10) == 0)
  {
LABEL_4:
    if ((options & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  [v16 addObject:@"fixed if necessary"];
  if ((options & 4) == 0)
  {
LABEL_5:
    if ((options & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_12:
  [v16 addObject:@"displacing existing fixed icons"];
  if ((options & 8) != 0)
  {
LABEL_6:
    [v16 addObject:@"disallowing icon removal"];
  }

LABEL_7:
  v17 = [v16 componentsJoinedByString:{@", "}];

  [succinctDescriptionBuilder appendString:v17 withName:@"options"];
  positioningRelativeIcon = [(SBIconListViewPlaceholderAssertion *)self positioningRelativeIcon];
  v19 = [succinctDescriptionBuilder appendObject:positioningRelativeIcon withName:@"positioningRelativeIcon" skipIfNil:1];

  positioningType = [(SBIconListViewPlaceholderAssertion *)self positioningType];
  if (positioningType > 5)
  {
    v21 = 0;
  }

  else
  {
    v21 = off_1E808D0D0[positioningType];
  }

  [succinctDescriptionBuilder appendString:v21 withName:@"positioningType"];
  listView2 = [(SBIconListViewPlaceholderAssertion *)self listView];
  v23 = [succinctDescriptionBuilder appendPointer:listView2 withName:@"listView"];

  return succinctDescriptionBuilder;
}

@end