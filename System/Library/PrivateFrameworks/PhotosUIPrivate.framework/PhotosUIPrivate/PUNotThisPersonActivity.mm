@interface PUNotThisPersonActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (id)activityTitle;
@end

@implementation PUNotThisPersonActivity

- (BOOL)canPerformWithActivityItems:(id)items
{
  itemSourceController = [(PXActivity *)self itemSourceController];
  assets = [itemSourceController assets];
  v5 = [assets count] != 0;

  return v5;
}

- (id)activityTitle
{
  itemSourceController = [(PXActivity *)self itemSourceController];
  assets = [itemSourceController assets];
  [assets count];

  person = [itemSourceController person];
  px_localizedName = [person px_localizedName];
  if ([px_localizedName length])
  {
    v6 = PXLocalizedStringForPersonOrPetAndVisibility();
    v7 = PXStringWithValidatedFormat();
  }

  else
  {
    v7 = PXLocalizedStringForPersonOrPetAndVisibility();
  }

  return v7;
}

@end