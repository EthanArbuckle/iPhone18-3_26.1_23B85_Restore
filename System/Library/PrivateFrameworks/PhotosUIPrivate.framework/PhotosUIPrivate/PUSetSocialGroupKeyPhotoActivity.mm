@interface PUSetSocialGroupKeyPhotoActivity
- (BOOL)canPerformWithActivityItems:(id)items;
@end

@implementation PUSetSocialGroupKeyPhotoActivity

- (BOOL)canPerformWithActivityItems:(id)items
{
  itemSourceController = [(PXActivity *)self itemSourceController];
  socialGroup = [itemSourceController socialGroup];
  if (socialGroup)
  {
    assets = [itemSourceController assets];
    v6 = [assets count] == 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end