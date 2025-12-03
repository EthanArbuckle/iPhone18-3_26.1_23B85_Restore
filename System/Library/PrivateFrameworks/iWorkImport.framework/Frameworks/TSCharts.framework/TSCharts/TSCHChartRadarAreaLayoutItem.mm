@interface TSCHChartRadarAreaLayoutItem
- (CGRect)titleFrame;
- (_TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem)initWithParent:(id)parent;
- (id)renderersWithRep:(id)rep;
- (void)buildSubTree;
- (void)layoutInward;
- (void)layoutOutward;
@end

@implementation TSCHChartRadarAreaLayoutItem

- (CGRect)titleFrame
{
  selfCopy = self;
  titleElement = [(TSCH2DChartAbstractAreaLayoutItem *)selfCopy titleElement];
  if (titleElement)
  {
    v4 = titleElement;
    [(TSCHChartLayoutItem *)titleElement rootedLayoutRect];
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
  selfCopy = self;
  sub_2764A164C();
}

- (void)layoutInward
{
  selfCopy = self;
  sub_2764A2B34();
}

- (void)layoutOutward
{
  selfCopy = self;
  sub_2764A4380();
}

- (id)renderersWithRep:(id)rep
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2764A4E34(rep);
  swift_unknownObjectRelease();

  sub_2764A12F8(0, &qword_280A46380);
  v6 = sub_2764B1218();

  return v6;
}

- (_TtC8TSChartsP33_A24BDC8710AF40968A8815BF7D0038C228TSCHChartRadarAreaLayoutItem)initWithParent:(id)parent
{
  parentCopy = parent;
  v5 = sub_2764A6204(parent);

  return v5;
}

@end