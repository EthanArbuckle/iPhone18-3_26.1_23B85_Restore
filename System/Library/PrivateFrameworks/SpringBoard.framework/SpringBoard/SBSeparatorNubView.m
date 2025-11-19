@interface SBSeparatorNubView
- (id)traitCollection;
@end

@implementation SBSeparatorNubView

- (id)traitCollection
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = SBSeparatorNubView;
  v2 = [(SBSeparatorNubView *)&v8 traitCollection];
  v3 = MEMORY[0x277D75C80];
  v9[0] = v2;
  v4 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v6 = [v3 traitCollectionWithTraitsFromCollections:v5];

  return v6;
}

@end