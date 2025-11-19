@interface MapsEdgeConstraints
+ (id)edgeConstraintsWithTop:(id)a3 leading:(id)a4 bottom:(id)a5 trailing:(id)a6;
- (NSArray)allConstraints;
@end

@implementation MapsEdgeConstraints

+ (id)edgeConstraintsWithTop:(id)a3 leading:(id)a4 bottom:(id)a5 trailing:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(MapsEdgeConstraints);
  [(MapsEdgeConstraints *)v13 setTopConstraint:v12];

  [(MapsEdgeConstraints *)v13 setLeadingConstraint:v11];
  [(MapsEdgeConstraints *)v13 setBottomConstraint:v10];

  [(MapsEdgeConstraints *)v13 setTrailingConstraint:v9];

  return v13;
}

- (NSArray)allConstraints
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  v4 = [(MapsEdgeConstraints *)self topConstraint];

  if (v4)
  {
    v5 = [(MapsEdgeConstraints *)self topConstraint];
    [v3 addObject:v5];
  }

  v6 = [(MapsEdgeConstraints *)self leftConstraint];

  if (v6)
  {
    v7 = [(MapsEdgeConstraints *)self leftConstraint];
  }

  else
  {
    v8 = [(MapsEdgeConstraints *)self leadingConstraint];

    if (!v8)
    {
      goto LABEL_8;
    }

    v7 = [(MapsEdgeConstraints *)self leadingConstraint];
  }

  v9 = v7;
  [v3 addObject:v7];

LABEL_8:
  v10 = [(MapsEdgeConstraints *)self bottomConstraint];

  if (v10)
  {
    v11 = [(MapsEdgeConstraints *)self bottomConstraint];
    [v3 addObject:v11];
  }

  v12 = [(MapsEdgeConstraints *)self rightConstraint];

  if (v12)
  {
    v13 = [(MapsEdgeConstraints *)self rightConstraint];
  }

  else
  {
    v14 = [(MapsEdgeConstraints *)self trailingConstraint];

    if (!v14)
    {
      goto LABEL_15;
    }

    v13 = [(MapsEdgeConstraints *)self trailingConstraint];
  }

  v15 = v13;
  [v3 addObject:v13];

LABEL_15:
  v16 = [v3 copy];

  return v16;
}

@end