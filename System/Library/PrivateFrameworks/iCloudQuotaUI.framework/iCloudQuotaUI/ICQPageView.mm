@interface ICQPageView
- (id)horizontalConstraintsForView:(id)view margin:(double)margin;
@end

@implementation ICQPageView

- (id)horizontalConstraintsForView:(id)view margin:(double)margin
{
  v15[2] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  if ([viewCopy isHidden])
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  else
  {
    leftAnchor = [viewCopy leftAnchor];
    leftAnchor2 = [(ICQPageView *)self leftAnchor];
    v10 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:margin];
    v15[0] = v10;
    rightAnchor = [viewCopy rightAnchor];
    rightAnchor2 = [(ICQPageView *)self rightAnchor];
    v13 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-margin];
    v15[1] = v13;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  }

  return v7;
}

@end