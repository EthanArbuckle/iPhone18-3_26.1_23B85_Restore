@interface PXPhotoKitExpungeAssetActionPerformer
+ (id)createBarButtonItemWithTarget:(id)a3 action:(SEL)a4 actionManager:(id)a5;
@end

@implementation PXPhotoKitExpungeAssetActionPerformer

+ (id)createBarButtonItemWithTarget:(id)a3 action:(SEL)a4 actionManager:(id)a5
{
  v6 = MEMORY[0x1E69DC708];
  v7 = a3;
  v8 = [[v6 alloc] initWithBarButtonSystemItem:16 target:v7 action:a4];

  return v8;
}

@end