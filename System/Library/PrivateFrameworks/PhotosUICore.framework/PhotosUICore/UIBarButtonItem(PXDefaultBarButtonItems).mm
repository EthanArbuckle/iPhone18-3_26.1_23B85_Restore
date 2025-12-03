@interface UIBarButtonItem(PXDefaultBarButtonItems)
+ (id)px_localizedAddBarButtonItem;
+ (id)px_localizedDeselectAllBarButtonItem;
+ (id)px_localizedSelectAllBarButtonItem;
+ (id)px_localizedSelectBarButtonItem;
@end

@implementation UIBarButtonItem(PXDefaultBarButtonItems)

+ (id)px_localizedSelectBarButtonItem
{
  v1 = [self alloc];
  v2 = PXLocalizedStringFromTable(@"LemonadeSelectButtonTitle", @"LemonadeLocalizable");
  v3 = [v1 initWithTitle:v2 style:0 target:0 action:0];

  return v3;
}

+ (id)px_localizedAddBarButtonItem
{
  v1 = [self alloc];
  v2 = PXLocalizedStringFromTable(@"PXAddButtonTitle", @"PhotosUICore");
  v3 = [v1 initWithTitle:v2 style:0 target:0 action:0];

  return v3;
}

+ (id)px_localizedDeselectAllBarButtonItem
{
  v1 = [self alloc];
  v2 = PXLocalizedStringFromTable(@"PXPhotosBarsDeselectAll", @"PhotosUICore");
  v3 = [v1 initWithTitle:v2 style:0 target:0 action:0];

  return v3;
}

+ (id)px_localizedSelectAllBarButtonItem
{
  v1 = [self alloc];
  v2 = PXLocalizedStringFromTable(@"PXPhotosBarsSelectAll", @"PhotosUICore");
  v3 = [v1 initWithTitle:v2 style:0 target:0 action:0];

  return v3;
}

@end