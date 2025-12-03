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
    performerClassByType = [(PXCMMActionManager *)v2 performerClassByType];
    [performerClassByType setObject:objc_opt_class() forKeyedSubscript:@"PXCMMActionTypeSaveToLibrary"];
  }

  return v3;
}

@end