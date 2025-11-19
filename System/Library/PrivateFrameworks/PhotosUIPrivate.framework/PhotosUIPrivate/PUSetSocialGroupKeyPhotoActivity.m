@interface PUSetSocialGroupKeyPhotoActivity
- (BOOL)canPerformWithActivityItems:(id)a3;
@end

@implementation PUSetSocialGroupKeyPhotoActivity

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v3 = [(PXActivity *)self itemSourceController];
  v4 = [v3 socialGroup];
  if (v4)
  {
    v5 = [v3 assets];
    v6 = [v5 count] == 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end