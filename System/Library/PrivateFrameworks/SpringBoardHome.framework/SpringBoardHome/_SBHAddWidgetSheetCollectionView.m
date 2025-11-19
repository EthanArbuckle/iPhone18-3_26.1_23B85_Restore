@interface _SBHAddWidgetSheetCollectionView
- (BOOL)touchesShouldCancelInContentView:(id)a3;
@end

@implementation _SBHAddWidgetSheetCollectionView

- (BOOL)touchesShouldCancelInContentView:(id)a3
{
  v4 = a3;
  if ([(_SBHAddWidgetSheetCollectionView *)self containsInteractiveUIControls])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _SBHAddWidgetSheetCollectionView;
    v5 = [(_SBHAddWidgetSheetCollectionView *)&v7 touchesShouldCancelInContentView:v4];
  }

  return v5;
}

@end