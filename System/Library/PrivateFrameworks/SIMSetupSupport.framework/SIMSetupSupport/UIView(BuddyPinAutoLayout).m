@interface UIView(BuddyPinAutoLayout)
- (void)pinToEdges:()BuddyPinAutoLayout;
- (void)pinToHorizontalEdges:()BuddyPinAutoLayout;
- (void)pinToVerticalEdges:()BuddyPinAutoLayout;
@end

@implementation UIView(BuddyPinAutoLayout)

- (void)pinToHorizontalEdges:()BuddyPinAutoLayout
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAAD0];
  v5 = a3;
  v6 = [a1 leadingAnchor];
  v7 = [v5 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v14[0] = v8;
  v9 = [a1 trailingAnchor];
  v10 = [v5 trailingAnchor];

  v11 = [v9 constraintEqualToAnchor:v10];
  v14[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  [v4 activateConstraints:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)pinToVerticalEdges:()BuddyPinAutoLayout
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAAD0];
  v5 = a3;
  v6 = [a1 topAnchor];
  v7 = [v5 topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v14[0] = v8;
  v9 = [a1 bottomAnchor];
  v10 = [v5 bottomAnchor];

  v11 = [v9 constraintEqualToAnchor:v10];
  v14[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  [v4 activateConstraints:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)pinToEdges:()BuddyPinAutoLayout
{
  v4 = a3;
  [a1 pinToHorizontalEdges:v4];
  [a1 pinToVerticalEdges:v4];
}

@end