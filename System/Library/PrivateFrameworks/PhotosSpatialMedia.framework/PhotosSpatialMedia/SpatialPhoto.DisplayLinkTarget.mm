@interface SpatialPhoto.DisplayLinkTarget
- (void)handleDisplayLink:(id)link;
@end

@implementation SpatialPhoto.DisplayLinkTarget

- (void)handleDisplayLink:(id)link
{
  linkCopy = link;
  selfCopy = self;
  sub_25E6C4024(linkCopy);
}

@end