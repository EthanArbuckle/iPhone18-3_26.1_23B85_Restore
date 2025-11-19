@interface SummaryMetricGridView
- (CGSize)intrinsicContentSize;
- (_TtC9SeymourUI21SummaryMetricGridView)initWithCoder:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SummaryMetricGridView

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for SummaryMetricGridView();
  v4 = a3;
  v5 = v6.receiver;
  [(SummaryMetricGridView *)&v6 traitCollectionDidChange:v4];
  sub_20BA00968();
}

- (_TtC9SeymourUI21SummaryMetricGridView)initWithCoder:(id)a3
{
  v4 = sub_20C132EE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (self + OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_reuseIdentifier);
  sub_20C132ED4();
  v9 = sub_20C132EA4();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  *v8 = v9;
  v8[1] = v11;
  v12 = MEMORY[0x277D84F90];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_metrics) = MEMORY[0x277D84F90];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_metricViews) = v12;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_collectionView) contentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1331E4();
  v10 = a3;
  v11 = self;
  sub_20BA00D0C(v10);
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

@end