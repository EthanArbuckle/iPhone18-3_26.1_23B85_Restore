@interface SBFloatingDockIconListView
- (void)configureIconView:(id)a3 forIcon:(id)a4;
@end

@implementation SBFloatingDockIconListView

- (void)configureIconView:(id)a3 forIcon:(id)a4
{
  v6.receiver = self;
  v6.super_class = SBFloatingDockIconListView;
  v5 = a3;
  [(SBIconListView *)&v6 configureIconView:v5 forIcon:a4];
  [v5 setIconContentScalingEnabled:{1, v6.receiver, v6.super_class}];
  [v5 setStartsDragMoreQuickly:1];
}

@end