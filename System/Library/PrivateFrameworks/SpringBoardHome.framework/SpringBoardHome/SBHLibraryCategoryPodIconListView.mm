@interface SBHLibraryCategoryPodIconListView
- (void)configureIconView:(id)view forIcon:(id)icon;
@end

@implementation SBHLibraryCategoryPodIconListView

- (void)configureIconView:(id)view forIcon:(id)icon
{
  viewCopy = view;
  iconCopy = icon;
  [viewCopy setImageLoadingBehavior:1];
  v12.receiver = self;
  v12.super_class = SBHLibraryCategoryPodIconListView;
  [(SBIconListView *)&v12 configureIconView:viewCopy forIcon:iconCopy];
  iconLocation = [(SBIconListView *)self iconLocation];
  v9 = [iconLocation isEqualToString:@"SBIconLocationAppLibraryCategoryPodSuggestions"];

  if (v9)
  {
    nodeIdentifier = [iconCopy nodeIdentifier];
    v11 = [@"SBHLibraryCategoryIconViewController-Suggestions-innerIcon:" stringByAppendingString:nodeIdentifier];
    [viewCopy setAccessibilityIdentifier:v11];
  }
}

@end