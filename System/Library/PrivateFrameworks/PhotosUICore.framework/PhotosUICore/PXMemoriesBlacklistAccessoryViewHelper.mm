@interface PXMemoriesBlacklistAccessoryViewHelper
+ (id)avatarViewWithFrame:(CGRect)frame person:(id)person;
@end

@implementation PXMemoriesBlacklistAccessoryViewHelper

+ (id)avatarViewWithFrame:(CGRect)frame person:(id)person
{
  if (person)
  {
    height = frame.size.height;
    width = frame.size.width;
    y = frame.origin.y;
    x = frame.origin.x;
    personCopy = person;
    height = [[PXPeopleScalableAvatarView alloc] initWithFrame:x, y, width, height];
    [(PXPeopleScalableAvatarView *)height setPerson:personCopy];
  }

  else
  {
    height = 0;
  }

  return height;
}

@end