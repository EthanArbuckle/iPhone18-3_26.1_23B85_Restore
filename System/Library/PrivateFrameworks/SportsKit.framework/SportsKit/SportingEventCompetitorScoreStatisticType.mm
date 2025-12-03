@interface SportingEventCompetitorScoreStatisticType
- (BOOL)isEqual:(id)equal;
@end

@implementation SportingEventCompetitorScoreStatisticType

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_26B6EA084();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_26B68C124(v8);

  sub_26B68A310(v8);
  return v6 & 1;
}

@end