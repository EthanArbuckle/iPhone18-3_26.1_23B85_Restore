@interface PUNotThisPersonActivity
- (BOOL)canPerformWithActivityItems:(id)a3;
- (id)activityTitle;
@end

@implementation PUNotThisPersonActivity

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v3 = [(PXActivity *)self itemSourceController];
  v4 = [v3 assets];
  v5 = [v4 count] != 0;

  return v5;
}

- (id)activityTitle
{
  v2 = [(PXActivity *)self itemSourceController];
  v3 = [v2 assets];
  [v3 count];

  v4 = [v2 person];
  v5 = [v4 px_localizedName];
  if ([v5 length])
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