@interface TSCHChartGridLayoutItem
- (_TtC8TSCharts23TSCHChartGridLayoutItem)initWithParent:(id)a3;
- (id)renderersWithRep:(id)a3;
@end

@implementation TSCHChartGridLayoutItem

- (id)renderersWithRep:(id)a3
{
  sub_2764A0458(&qword_280A46378);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2764FC4F0;
  v6 = objc_allocWithZone(TSCHChartGridRenderer);
  swift_unknownObjectRetain();
  v7 = self;
  *(v5 + 32) = [v6 initWithChartRep:a3 layoutItem:v7];
  swift_unknownObjectRelease();

  sub_2764A06AC();
  v8 = sub_2764B1218();

  return v8;
}

- (_TtC8TSCharts23TSCHChartGridLayoutItem)initWithParent:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for TSCHChartGridLayoutItem();
  return [(TSCHChartLayoutItem *)&v5 initWithParent:a3];
}

@end