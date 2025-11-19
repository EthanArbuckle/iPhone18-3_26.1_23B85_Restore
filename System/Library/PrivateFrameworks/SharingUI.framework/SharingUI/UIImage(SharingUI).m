@interface UIImage(SharingUI)
+ (id)sfui_imageNamed:()SharingUI;
@end

@implementation UIImage(SharingUI)

+ (id)sfui_imageNamed:()SharingUI
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 sfui_bundle];
  v6 = [MEMORY[0x1E69DCAB8] imageNamed:v4 inBundle:v5];

  return v6;
}

@end