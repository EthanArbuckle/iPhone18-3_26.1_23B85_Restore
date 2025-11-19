@interface SportingEventCompetitorScoreStatisticType
- (BOOL)isEqual:(id)a3;
@end

@implementation SportingEventCompetitorScoreStatisticType

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_26B6EA084();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_26B68C124(v8);

  sub_26B68A310(v8);
  return v6 & 1;
}

@end