@interface _UIButtonBarSpacerLayout
+ (id)_updateSpacer:(id)spacer layoutMetrics:(id)metrics spacerType:(int64_t)type;
+ (id)spacerForLayoutMetrics:(id)metrics betweenLayout:(id)layout andLayout:(id)andLayout;
- (_UIButtonBarSpacerLayout)initWithLayoutMetrics:(id)metrics barButtonItem:(id)item;
- (double)minimumLayoutWidthGivenMinimumSpaceWidth:(double)width;
- (id)description;
- (void)_addConstraintsToActivate:(id)activate toDeactivate:(id)deactivate;
- (void)_configure;
@end

@implementation _UIButtonBarSpacerLayout

- (_UIButtonBarSpacerLayout)initWithLayoutMetrics:(id)metrics barButtonItem:(id)item
{
  metricsCopy = metrics;
  itemCopy = item;
  v9 = itemCopy;
  if (itemCopy && ([itemCopy isSpaceItem] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIButtonBarLayout.m" lineNumber:260 description:{@"Spacer layouts can only manage nil bar button items, or a system item that is a spacer type"}];
  }

  v14.receiver = self;
  v14.super_class = _UIButtonBarSpacerLayout;
  v10 = [(_UIButtonBarLayout *)&v14 initWithLayoutMetrics:metricsCopy];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_item, item);
    v11->_flexible = [v9 systemItem] == 5;
    v11->_spacerType = 1;
  }

  return v11;
}

+ (id)_updateSpacer:(id)spacer layoutMetrics:(id)metrics spacerType:(int64_t)type
{
  spacerCopy = spacer;
  v9 = spacerCopy;
  if (!spacerCopy)
  {
    metricsCopy = metrics;
    v9 = [[self alloc] initWithLayoutMetrics:metricsCopy];
  }

  v9[9] = type;

  return v9;
}

+ (id)spacerForLayoutMetrics:(id)metrics betweenLayout:(id)layout andLayout:(id)andLayout
{
  metricsCopy = metrics;
  if (_UIButtonBarLayoutSpacerTypeForLayouts(layout, andLayout))
  {
    v9 = [[self alloc] initWithLayoutMetrics:metricsCopy barButtonItem:0];
    v9[9] = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (double)minimumLayoutWidthGivenMinimumSpaceWidth:(double)width
{
  item = self->_item;
  if (item)
  {
    [(UIBarButtonItem *)item _width];
  }

  else
  {
    result = 0.0;
  }

  if (result < width)
  {
    return width;
  }

  return result;
}

- (void)_configure
{
  spacer = self->_spacer;
  if (!spacer)
  {
    v4 = objc_alloc_init(UIView);
    [(UIView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = self->_spacer;
    self->_spacer = v4;

    spacer = self->_spacer;
  }

  widthAnchor = [(UIView *)spacer widthAnchor];
  if (self->_flexible)
  {
    p_equalSize = &self->_equalSize;
    if (self->_equalSize)
    {
      v7 = 0;
      goto LABEL_15;
    }

    flexibleSpaceGuide = [(_UIButtonBarLayoutMetricsData *)self->super._layoutMetrics flexibleSpaceGuide];
    v16 = [widthAnchor constraintEqualToAnchor:flexibleSpaceGuide];
    v17 = *p_equalSize;
    *p_equalSize = v16;

    v7 = 0;
    v15 = 1143111680;
  }

  else
  {
    [(UIBarButtonItem *)self->_item _width];
    if (v8 >= 0.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0.0;
    }

    v7 = v9 <= 0.0;
    p_equalSize = &self->_requestedSize;
    requestedSize = self->_requestedSize;
    if (requestedSize)
    {
      [(NSLayoutConstraint *)requestedSize constant];
      if (v11 != v9)
      {
        [(NSLayoutConstraint *)self->_minimumSize setActive:0];
        minimumSize = self->_minimumSize;
        self->_minimumSize = 0;
      }
    }

    [*p_equalSize setActive:0];
    v13 = [widthAnchor constraintEqualToConstant:v9];
    flexibleSpaceGuide = *p_equalSize;
    *p_equalSize = v13;
    v15 = 1143930880;
  }

  LODWORD(v18) = v15;
  [*p_equalSize setPriority:v18];
LABEL_15:
  if (!self->_minimumSize)
  {
    minimumSpaceGuide = [(_UIButtonBarLayoutMetricsData *)self->super._layoutMetrics minimumSpaceGuide];
    if (v7)
    {
      [widthAnchor constraintEqualToAnchor:minimumSpaceGuide multiplier:1.0];
    }

    else
    {
      [widthAnchor constraintGreaterThanOrEqualToAnchor:minimumSpaceGuide multiplier:1.0];
    }
    v20 = ;
    v21 = self->_minimumSize;
    self->_minimumSize = v20;

    LODWORD(v22) = 1144750080;
    [(NSLayoutConstraint *)self->_minimumSize setPriority:v22];
  }

  [(NSLayoutConstraint *)self->_requestedSize setIdentifier:@"UIButtonBar.requestedSize"];
  [(NSLayoutConstraint *)self->_equalSize setIdentifier:@"UIButtonBar.equalSize"];
  [(NSLayoutConstraint *)self->_minimumSize setIdentifier:@"UIButtonBar.minimumSize"];
}

- (void)_addConstraintsToActivate:(id)activate toDeactivate:(id)deactivate
{
  activateCopy = activate;
  deactivateCopy = deactivate;
  item = self->_item;
  if (self->_flexible)
  {
    _wantsThreeUp = [(UIBarButtonItem *)item _wantsThreeUp];
    v9 = activateCopy;
    if (_wantsThreeUp)
    {
      goto LABEL_11;
    }

    equalSize = self->_equalSize;
    v11 = activateCopy;
  }

  else
  {
    [(UIBarButtonItem *)item _width];
    if (v12 >= 0.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0.0;
    }

    [(NSLayoutConstraint *)self->_requestedSize setConstant:v13];
    equalSize = self->_requestedSize;
    if (v13 <= 0.0)
    {
      v11 = deactivateCopy;
    }

    else
    {
      v11 = activateCopy;
    }
  }

  [v11 addObject:equalSize];
  v9 = activateCopy;
LABEL_11:
  [v9 addObject:self->_minimumSize];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = _UIButtonBarSpacerLayout;
  v3 = [(_UIButtonBarLayout *)&v7 description];
  v4 = [v3 mutableCopy];

  if (self->_flexible)
  {
    v5 = @" flexibleSpace";
  }

  else
  {
    v5 = @" space";
  }

  [v4 appendString:v5];
  if (self->_item)
  {
    [v4 appendFormat:@" item=%p", self->_item];
  }

  [v4 appendFormat:@" view=%p requestedSize=%p equalSize=%p minimumSize=%p", self->_spacer, self->_requestedSize, self->_equalSize, self->_minimumSize];

  return v4;
}

@end