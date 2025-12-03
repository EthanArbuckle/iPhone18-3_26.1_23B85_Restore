@interface UIView(UIKitExtras)
- (id)_maps_constraintsEqualToEdgesOfView:()UIKitExtras insets:priority:;
@end

@implementation UIView(UIKitExtras)

- (id)_maps_constraintsEqualToEdgesOfView:()UIKitExtras insets:priority:
{
  if (a8)
  {
    v14 = a8;
    topAnchor = [self topAnchor];
    topAnchor2 = [v14 topAnchor];
    *&v15 = a6;
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:a2 priority:v15];
    leadingAnchor = [self leadingAnchor];
    leadingAnchor2 = [v14 leadingAnchor];
    *&v18 = a6;
    v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:a3 priority:v18];
    bottomAnchor = [v14 bottomAnchor];
    bottomAnchor2 = [self bottomAnchor];
    *&v22 = a6;
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:a4 priority:v22];
    trailingAnchor = [v14 trailingAnchor];

    trailingAnchor2 = [self trailingAnchor];
    *&v26 = a6;
    v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:a5 priority:v26];
    v28 = [MapsEdgeConstraints edgeConstraintsWithTop:v16 leading:v19 bottom:v23 trailing:v27];
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

@end