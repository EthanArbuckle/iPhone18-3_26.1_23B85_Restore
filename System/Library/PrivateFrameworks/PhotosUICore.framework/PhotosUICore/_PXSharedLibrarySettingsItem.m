@interface _PXSharedLibrarySettingsItem
+ (id)itemWithTitle:(id)a3;
@end

@implementation _PXSharedLibrarySettingsItem

+ (id)itemWithTitle:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setTitle:v4];

  return v5;
}

@end