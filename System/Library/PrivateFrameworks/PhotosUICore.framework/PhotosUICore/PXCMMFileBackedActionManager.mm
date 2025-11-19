@interface PXCMMFileBackedActionManager
- (PXCMMFileBackedActionManager)init;
@end

@implementation PXCMMFileBackedActionManager

- (PXCMMFileBackedActionManager)init
{
  v6.receiver = self;
  v6.super_class = PXCMMFileBackedActionManager;
  v2 = [(PXCMMActionManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(PXCMMActionManager *)v2 performerClassByType];
    [v4 setObject:objc_opt_class() forKeyedSubscript:@"PXCMMActionTypeSaveToLibrary"];
  }

  return v3;
}

@end