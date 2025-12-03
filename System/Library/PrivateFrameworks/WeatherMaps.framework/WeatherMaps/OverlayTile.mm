@interface OverlayTile
- (BOOL)isEqual:(id)equal;
@end

@implementation OverlayTile

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_220FC3410();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_220E5E898(v8);

  sub_220E5E9B0(v8);
  return v6;
}

@end