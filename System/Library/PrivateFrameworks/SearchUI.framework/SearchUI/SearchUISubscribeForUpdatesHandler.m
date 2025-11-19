@interface SearchUISubscribeForUpdatesHandler
- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5;
@end

@implementation SearchUISubscribeForUpdatesHandler

- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5
{
  v11 = a5;
  v6 = [(SearchUICommandHandler *)self rowModel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v11 rowModelViewDelegate];
    v8 = [(SearchUICommandHandler *)self rowModel];
    v9 = [v7 viewForRowModel:v8];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 cardSectionView];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 toggleStateWithDetailedSectionView:v10];
      }
    }
  }
}

@end