@interface PXMemoriesBlacklistAccessoryViewHelper
+ (id)avatarViewWithFrame:(CGRect)a3 person:(id)a4;
@end

@implementation PXMemoriesBlacklistAccessoryViewHelper

+ (id)avatarViewWithFrame:(CGRect)a3 person:(id)a4
{
  if (a4)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    v8 = a4;
    v9 = [[PXPeopleScalableAvatarView alloc] initWithFrame:x, y, width, height];
    [(PXPeopleScalableAvatarView *)v9 setPerson:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end