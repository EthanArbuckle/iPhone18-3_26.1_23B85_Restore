@interface MapsEdgeConstraints
+ (id)edgeConstraintsWithTop:(id)top leading:(id)leading bottom:(id)bottom trailing:(id)trailing;
- (NSArray)allConstraints;
@end

@implementation MapsEdgeConstraints

+ (id)edgeConstraintsWithTop:(id)top leading:(id)leading bottom:(id)bottom trailing:(id)trailing
{
  trailingCopy = trailing;
  bottomCopy = bottom;
  leadingCopy = leading;
  topCopy = top;
  v13 = objc_alloc_init(MapsEdgeConstraints);
  [(MapsEdgeConstraints *)v13 setTopConstraint:topCopy];

  [(MapsEdgeConstraints *)v13 setLeadingConstraint:leadingCopy];
  [(MapsEdgeConstraints *)v13 setBottomConstraint:bottomCopy];

  [(MapsEdgeConstraints *)v13 setTrailingConstraint:trailingCopy];

  return v13;
}

- (NSArray)allConstraints
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  topConstraint = [(MapsEdgeConstraints *)self topConstraint];

  if (topConstraint)
  {
    topConstraint2 = [(MapsEdgeConstraints *)self topConstraint];
    [v3 addObject:topConstraint2];
  }

  leftConstraint = [(MapsEdgeConstraints *)self leftConstraint];

  if (leftConstraint)
  {
    leftConstraint2 = [(MapsEdgeConstraints *)self leftConstraint];
  }

  else
  {
    leadingConstraint = [(MapsEdgeConstraints *)self leadingConstraint];

    if (!leadingConstraint)
    {
      goto LABEL_8;
    }

    leftConstraint2 = [(MapsEdgeConstraints *)self leadingConstraint];
  }

  v9 = leftConstraint2;
  [v3 addObject:leftConstraint2];

LABEL_8:
  bottomConstraint = [(MapsEdgeConstraints *)self bottomConstraint];

  if (bottomConstraint)
  {
    bottomConstraint2 = [(MapsEdgeConstraints *)self bottomConstraint];
    [v3 addObject:bottomConstraint2];
  }

  rightConstraint = [(MapsEdgeConstraints *)self rightConstraint];

  if (rightConstraint)
  {
    rightConstraint2 = [(MapsEdgeConstraints *)self rightConstraint];
  }

  else
  {
    trailingConstraint = [(MapsEdgeConstraints *)self trailingConstraint];

    if (!trailingConstraint)
    {
      goto LABEL_15;
    }

    rightConstraint2 = [(MapsEdgeConstraints *)self trailingConstraint];
  }

  v15 = rightConstraint2;
  [v3 addObject:rightConstraint2];

LABEL_15:
  v16 = [v3 copy];

  return v16;
}

@end