@interface NSLayoutConstraint(ScreenTimeAdditions)
+ (id)st_constraintsForView:()ScreenTimeAdditions equalToView:;
@end

@implementation NSLayoutConstraint(ScreenTimeAdditions)

+ (id)st_constraintsForView:()ScreenTimeAdditions equalToView:
{
  v21[4] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v20 = [v6 topAnchor];
  v19 = [v5 topAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v21[0] = v18;
  v7 = [v6 bottomAnchor];
  v8 = [v5 bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v21[1] = v9;
  v10 = [v6 leadingAnchor];
  v11 = [v5 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v21[2] = v12;
  v13 = [v6 trailingAnchor];

  v14 = [v5 trailingAnchor];

  v15 = [v13 constraintEqualToAnchor:v14];
  v21[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];

  return v16;
}

@end