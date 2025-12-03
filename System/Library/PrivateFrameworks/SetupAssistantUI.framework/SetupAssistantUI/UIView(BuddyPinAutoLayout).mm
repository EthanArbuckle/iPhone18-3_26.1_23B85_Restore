@interface UIView(BuddyPinAutoLayout)
- (void)pinToEdges:()BuddyPinAutoLayout;
- (void)pinToHorizontalEdges:()BuddyPinAutoLayout;
- (void)pinToVerticalEdges:()BuddyPinAutoLayout;
@end

@implementation UIView(BuddyPinAutoLayout)

- (void)pinToHorizontalEdges:()BuddyPinAutoLayout
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAAD0];
  v5 = a3;
  leadingAnchor = [self leadingAnchor];
  leadingAnchor2 = [v5 leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v13[0] = v8;
  trailingAnchor = [self trailingAnchor];
  trailingAnchor2 = [v5 trailingAnchor];

  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v13[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  [v4 activateConstraints:v12];
}

- (void)pinToVerticalEdges:()BuddyPinAutoLayout
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAAD0];
  v5 = a3;
  topAnchor = [self topAnchor];
  topAnchor2 = [v5 topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v13[0] = v8;
  bottomAnchor = [self bottomAnchor];
  bottomAnchor2 = [v5 bottomAnchor];

  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v13[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  [v4 activateConstraints:v12];
}

- (void)pinToEdges:()BuddyPinAutoLayout
{
  v4 = a3;
  [self pinToHorizontalEdges:v4];
  [self pinToVerticalEdges:v4];
}

@end