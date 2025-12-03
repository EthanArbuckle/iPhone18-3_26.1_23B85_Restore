@interface SBFloatingDockIconListView
- (void)configureIconView:(id)view forIcon:(id)icon;
@end

@implementation SBFloatingDockIconListView

- (void)configureIconView:(id)view forIcon:(id)icon
{
  v6.receiver = self;
  v6.super_class = SBFloatingDockIconListView;
  viewCopy = view;
  [(SBIconListView *)&v6 configureIconView:viewCopy forIcon:icon];
  [viewCopy setIconContentScalingEnabled:{1, v6.receiver, v6.super_class}];
  [viewCopy setStartsDragMoreQuickly:1];
}

@end