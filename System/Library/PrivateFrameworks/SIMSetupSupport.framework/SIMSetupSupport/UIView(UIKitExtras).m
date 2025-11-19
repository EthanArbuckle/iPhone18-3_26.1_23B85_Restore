@interface UIView(UIKitExtras)
- (id)_maps_constraintsEqualToEdgesOfView:()UIKitExtras insets:priority:;
@end

@implementation UIView(UIKitExtras)

- (id)_maps_constraintsEqualToEdgesOfView:()UIKitExtras insets:priority:
{
  if (a8)
  {
    v14 = a8;
    v32 = [a1 topAnchor];
    v31 = [v14 topAnchor];
    *&v15 = a6;
    v16 = [v32 constraintEqualToAnchor:v31 constant:a2 priority:v15];
    v30 = [a1 leadingAnchor];
    v17 = [v14 leadingAnchor];
    *&v18 = a6;
    v19 = [v30 constraintEqualToAnchor:v17 constant:a3 priority:v18];
    v20 = [v14 bottomAnchor];
    v21 = [a1 bottomAnchor];
    *&v22 = a6;
    v23 = [v20 constraintEqualToAnchor:v21 constant:a4 priority:v22];
    v24 = [v14 trailingAnchor];

    v25 = [a1 trailingAnchor];
    *&v26 = a6;
    v27 = [v24 constraintEqualToAnchor:v25 constant:a5 priority:v26];
    v28 = [MapsEdgeConstraints edgeConstraintsWithTop:v16 leading:v19 bottom:v23 trailing:v27];
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

@end