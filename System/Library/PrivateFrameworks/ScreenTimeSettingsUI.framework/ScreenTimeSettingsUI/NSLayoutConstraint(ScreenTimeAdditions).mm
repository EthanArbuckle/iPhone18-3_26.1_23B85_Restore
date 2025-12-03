@interface NSLayoutConstraint(ScreenTimeAdditions)
+ (id)st_constraintsForView:()ScreenTimeAdditions equalToView:;
@end

@implementation NSLayoutConstraint(ScreenTimeAdditions)

+ (id)st_constraintsForView:()ScreenTimeAdditions equalToView:
{
  v21[4] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  topAnchor = [v6 topAnchor];
  topAnchor2 = [v5 topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v21[0] = v18;
  bottomAnchor = [v6 bottomAnchor];
  bottomAnchor2 = [v5 bottomAnchor];
  v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v21[1] = v9;
  leadingAnchor = [v6 leadingAnchor];
  leadingAnchor2 = [v5 leadingAnchor];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v21[2] = v12;
  trailingAnchor = [v6 trailingAnchor];

  trailingAnchor2 = [v5 trailingAnchor];

  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v21[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];

  return v16;
}

@end