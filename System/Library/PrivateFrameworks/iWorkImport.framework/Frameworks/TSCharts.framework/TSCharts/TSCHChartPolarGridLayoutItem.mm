@interface TSCHChartPolarGridLayoutItem
- (CGRect)calcDrawingRect;
- (CGRect)rootedBaseLayoutRect;
- (_TtC8TSCharts28TSCHChartPolarGridLayoutItem)initWithParent:(id)parent;
- (id)renderersWithRep:(id)rep;
@end

@implementation TSCHChartPolarGridLayoutItem

- (CGRect)rootedBaseLayoutRect
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8TSCharts28TSCHChartPolarGridLayoutItem_baseLayoutRect);
  v3 = *(&self->super.super._layoutSizeSet + OBJC_IVAR____TtC8TSCharts28TSCHChartPolarGridLayoutItem_baseLayoutRect);
  v4 = *(&self->super.super._parent + OBJC_IVAR____TtC8TSCharts28TSCHChartPolarGridLayoutItem_baseLayoutRect);
  v5 = *(&self->super.super._children + OBJC_IVAR____TtC8TSCharts28TSCHChartPolarGridLayoutItem_baseLayoutRect);
  selfCopy = self;
  parent = [(TSCHChartLayoutItem *)selfCopy parent];
  if (parent)
  {
    v8 = parent;
    [(TSCHChartLayoutItem *)parent rootedLayoutRect];

    TSUAddPoints();
    v2 = v9;
    v3 = v10;
  }

  else
  {
  }

  v11 = v2;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)renderersWithRep:(id)rep
{
  sub_2764A0458(&qword_280A46378);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2764FC4F0;
  v6 = objc_allocWithZone(TSCHChartPolarGridRenderer);
  swift_unknownObjectRetain();
  selfCopy = self;
  *(v5 + 32) = [v6 initWithChartRep:rep layoutItem:selfCopy];
  swift_unknownObjectRelease();

  sub_2764A12F8(0, &qword_280A46380);
  v8 = sub_2764B1218();

  return v8;
}

- (CGRect)calcDrawingRect
{
  selfCopy = self;
  sub_2764A0A28();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (_TtC8TSCharts28TSCHChartPolarGridLayoutItem)initWithParent:(id)parent
{
  v5 = (self + OBJC_IVAR____TtC8TSCharts28TSCHChartPolarGridLayoutItem_baseLayoutRect);
  v6 = type metadata accessor for TSCHChartPolarGridLayoutItem();
  *v5 = 0u;
  v5[1] = 0u;
  v8.receiver = self;
  v8.super_class = v6;
  return [(TSCHChartGridLayoutItem *)&v8 initWithParent:parent];
}

@end