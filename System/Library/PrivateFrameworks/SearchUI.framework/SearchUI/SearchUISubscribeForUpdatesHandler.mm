@interface SearchUISubscribeForUpdatesHandler
- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment;
@end

@implementation SearchUISubscribeForUpdatesHandler

- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment
{
  environmentCopy = environment;
  rowModel = [(SearchUICommandHandler *)self rowModel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    rowModelViewDelegate = [environmentCopy rowModelViewDelegate];
    rowModel2 = [(SearchUICommandHandler *)self rowModel];
    v9 = [rowModelViewDelegate viewForRowModel:rowModel2];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      cardSectionView = [v9 cardSectionView];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [rowModel toggleStateWithDetailedSectionView:cardSectionView];
      }
    }
  }
}

@end