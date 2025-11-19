@interface NSLayoutConstraint(ScreenTime)
+ (id)st_constraintsForView:()ScreenTime equalToLayoutGuide:;
@end

@implementation NSLayoutConstraint(ScreenTime)

+ (id)st_constraintsForView:()ScreenTime equalToLayoutGuide:
{
  v21[4] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v20 = [v6 centerXAnchor];
  v19 = [v5 centerXAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v21[0] = v18;
  v7 = [v6 widthAnchor];
  v8 = [v5 widthAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v21[1] = v9;
  v10 = [v6 centerYAnchor];
  v11 = [v5 centerYAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v21[2] = v12;
  v13 = [v6 heightAnchor];

  v14 = [v5 heightAnchor];

  v15 = [v13 constraintEqualToAnchor:v14];
  v21[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];

  return v16;
}

@end