@interface _UICollectionViewListCellVisualProvider_tvOS
- (id)accessoryManagerContainerView;
- (void)configureFocusedFloatingContentView:(id)view useSidebarListStyle:(BOOL)style;
@end

@implementation _UICollectionViewListCellVisualProvider_tvOS

- (id)accessoryManagerContainerView
{
  _focusedFloatingContentView = [(UICollectionViewCell *)self->super._cell _focusedFloatingContentView];
  contentView = [_focusedFloatingContentView contentView];
  cell = contentView;
  if (!contentView)
  {
    cell = self->super._cell;
  }

  v6 = cell;

  return cell;
}

- (void)configureFocusedFloatingContentView:(id)view useSidebarListStyle:(BOOL)style
{
  viewCopy = view;
  v6 = [_UIFocusAnimationConfiguration configurationWithStyle:2];
  [viewCopy setFocusAnimationConfiguration:v6];

  [viewCopy setBackgroundColor:0 forState:0];
  [viewCopy setBackgroundColor:0 forState:2];
  [viewCopy setRoundContentWhenDeselected:_UISolariumEnabled()];
  [viewCopy setClipsContentToBounds:0];
  [viewCopy setUnfocusedShadowVerticalOffset:10.0];
  [viewCopy setContentMotionRotation:0.0 translation:{0.0, 0.0, 4.0}];
  if (style)
  {
    v7 = [UIColor colorWithWhite:1.0 alpha:0.95];
    [viewCopy setBackgroundColor:v7 forState:8];

    v8 = [UIColor colorWithWhite:1.0 alpha:0.95];
    [viewCopy setBackgroundColor:v8 forState:1];

    traitCollection = [viewCopy traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 2)
    {
      v11 = [UIColor colorWithRed:0.176470588 green:0.176470588 blue:0.176470588 alpha:0.4];
      v12 = 23;
    }

    else
    {
      v11 = [UIColor colorWithRed:0.850980392 green:0.850980392 blue:0.850980392 alpha:0.3];
      v12 = 24;
    }

    [viewCopy setBackgroundColor:v11 forState:4];
    [viewCopy setCompositingMode:v12];
    [viewCopy setShadowExpansion:{30.0, 30.0}];
  }

  else
  {
    [viewCopy setBackgroundColor:0 forState:4];
    [viewCopy setBackgroundColor:0 forState:8];
    [viewCopy setBackgroundColor:0 forState:1];
    [viewCopy setShadowExpansion:{45.0, 25.0}];
  }

  _accessoryManager = [(UICollectionViewListCell *)self->super._cell _accessoryManager];
  accessoryManagerContainerView = [(_UICollectionViewListCellVisualProvider_tvOS *)self accessoryManagerContainerView];
  [_accessoryManager updateContainerView:accessoryManagerContainerView];
}

@end