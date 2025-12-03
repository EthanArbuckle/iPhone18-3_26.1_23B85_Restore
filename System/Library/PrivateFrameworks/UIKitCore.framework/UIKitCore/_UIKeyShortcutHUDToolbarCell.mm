@interface _UIKeyShortcutHUDToolbarCell
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation _UIKeyShortcutHUDToolbarCell

- (void)updateConfigurationUsingState:(id)state
{
  v6.receiver = self;
  v6.super_class = _UIKeyShortcutHUDToolbarCell;
  [(_UIKeyShortcutHUDCell *)&v6 updateConfigurationUsingState:state];
  backgroundConfiguration = [(UICollectionViewCell *)self backgroundConfiguration];
  v5 = +[UIKeyShortcutHUDMetrics currentMetrics];
  [v5 toolbarCellCornerRadius];
  [backgroundConfiguration setCornerRadius:?];

  [(UICollectionViewCell *)self setBackgroundConfiguration:backgroundConfiguration];
}

@end