@interface PUSetKeyFaceActivity
- (BOOL)canPerformWithActivityItems:(id)items;
@end

@implementation PUSetKeyFaceActivity

- (BOOL)canPerformWithActivityItems:(id)items
{
  itemSourceController = [(PXActivity *)self itemSourceController];
  assets = [itemSourceController assets];
  v5 = [assets count] == 1;

  return v5;
}

@end