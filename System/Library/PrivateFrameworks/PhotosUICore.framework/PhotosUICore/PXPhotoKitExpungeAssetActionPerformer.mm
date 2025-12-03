@interface PXPhotoKitExpungeAssetActionPerformer
+ (id)createBarButtonItemWithTarget:(id)target action:(SEL)action actionManager:(id)manager;
@end

@implementation PXPhotoKitExpungeAssetActionPerformer

+ (id)createBarButtonItemWithTarget:(id)target action:(SEL)action actionManager:(id)manager
{
  v6 = MEMORY[0x1E69DC708];
  targetCopy = target;
  v8 = [[v6 alloc] initWithBarButtonSystemItem:16 target:targetCopy action:action];

  return v8;
}

@end