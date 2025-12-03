@interface NSLayoutConstraint(ScreenTime)
+ (id)st_constraintsForView:()ScreenTime equalToLayoutGuide:;
@end

@implementation NSLayoutConstraint(ScreenTime)

+ (id)st_constraintsForView:()ScreenTime equalToLayoutGuide:
{
  v21[4] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  centerXAnchor = [v6 centerXAnchor];
  centerXAnchor2 = [v5 centerXAnchor];
  v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v21[0] = v18;
  widthAnchor = [v6 widthAnchor];
  widthAnchor2 = [v5 widthAnchor];
  v9 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v21[1] = v9;
  centerYAnchor = [v6 centerYAnchor];
  centerYAnchor2 = [v5 centerYAnchor];
  v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v21[2] = v12;
  heightAnchor = [v6 heightAnchor];

  heightAnchor2 = [v5 heightAnchor];

  v15 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v21[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];

  return v16;
}

@end