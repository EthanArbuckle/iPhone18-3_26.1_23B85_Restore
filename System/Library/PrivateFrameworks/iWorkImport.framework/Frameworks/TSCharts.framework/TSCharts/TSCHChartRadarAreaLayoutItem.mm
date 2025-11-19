@interface TSCHChartRadarAreaLayoutItem
- (CGRect)titleFrame;
- (_TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem)initWithParent:(id)a3;
- (id)renderersWithRep:(id)a3;
- (void)buildSubTree;
- (void)layoutInward;
- (void)layoutOutward;
@end

@implementation TSCHChartRadarAreaLayoutItem

- (CGRect)titleFrame
{
  v2 = self;
  v3 = [(TSCH2DChartAbstractAreaLayoutItem *)v2 titleElement];
  if (v3)
  {
    v4 = v3;
    [(TSCHChartLayoutItem *)v3 rootedLayoutRect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = *MEMORY[0x277CBF398];
    v8 = *(MEMORY[0x277CBF398] + 8);
    v10 = *(MEMORY[0x277CBF398] + 16);
    v12 = *(MEMORY[0x277CBF398] + 24);
  }

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)buildSubTree
{
  v2 = self;
  sub_2764A164C();
}

- (void)layoutInward
{
  v2 = self;
  sub_2764A2B34();
}

- (void)layoutOutward
{
  v2 = self;
  sub_2764A4380();
}

- (id)renderersWithRep:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_2764A4E34(a3);
  swift_unknownObjectRelease();

  sub_2764A12F8(0, &qword_280A46380);
  v6 = sub_2764B1218();

  return v6;
}

- (_TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem)initWithParent:(id)a3
{
  v4 = a3;
  v5 = sub_2764A6204(a3);

  return v5;
}

@end