@interface PUSetKeyFaceActivity
- (BOOL)canPerformWithActivityItems:(id)a3;
@end

@implementation PUSetKeyFaceActivity

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v3 = [(PXActivity *)self itemSourceController];
  v4 = [v3 assets];
  v5 = [v4 count] == 1;

  return v5;
}

@end