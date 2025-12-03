@interface _SBHAddWidgetSheetCollectionView
- (BOOL)touchesShouldCancelInContentView:(id)view;
@end

@implementation _SBHAddWidgetSheetCollectionView

- (BOOL)touchesShouldCancelInContentView:(id)view
{
  viewCopy = view;
  if ([(_SBHAddWidgetSheetCollectionView *)self containsInteractiveUIControls])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _SBHAddWidgetSheetCollectionView;
    v5 = [(_SBHAddWidgetSheetCollectionView *)&v7 touchesShouldCancelInContentView:viewCopy];
  }

  return v5;
}

@end