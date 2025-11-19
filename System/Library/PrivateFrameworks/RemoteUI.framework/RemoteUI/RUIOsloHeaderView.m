@interface RUIOsloHeaderView
- (RUIOsloHeaderView)initWithAttributes:(id)a3;
- (RUIOsloHeaderView)initWithCoder:(id)a3;
- (RUIOsloHeaderView)initWithFrame:(CGRect)a3;
- (double)headerHeightForWidth:(double)a3 inView:(id)a4;
- (void)setIconImage:(id)a3;
- (void)setSubHeaderText:(id)a3 attributes:(id)a4;
- (void)setText:(id)a3 attributes:(id)a4;
@end

@implementation RUIOsloHeaderView

- (RUIOsloHeaderView)initWithAttributes:(id)a3
{
  if (a3)
  {
    sub_21BA87BCC();
  }

  return OsloHeaderView.init(attributes:)();
}

- (double)headerHeightForWidth:(double)a3 inView:(id)a4
{
  v5 = *(MEMORY[0x277D76C78] + 8);
  v8.receiver = self;
  v8.super_class = type metadata accessor for OsloHeaderView(0);
  [(RUIOsloHeaderView *)&v8 systemLayoutSizeFittingSize:a3, v5];
  return v6;
}

- (void)setSubHeaderText:(id)a3 attributes:(id)a4
{
  if (a3)
  {
    v5 = sub_21BA87CBC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = *(**(&self->super.super.super.isa + OBJC_IVAR___RUIOsloHeaderView_model) + 192);
  v9 = self;
  v8(v5, v7);
}

- (void)setText:(id)a3 attributes:(id)a4
{
  if (a3)
  {
    v5 = sub_21BA87CBC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = *(**(&self->super.super.super.isa + OBJC_IVAR___RUIOsloHeaderView_model) + 144);
  v9 = self;
  v8(v5, v7);
}

- (void)setIconImage:(id)a3
{
  v5 = *(**(&self->super.super.super.isa + OBJC_IVAR___RUIOsloHeaderView_model) + 240);
  v6 = a3;
  v7 = self;
  v5(a3);
}

- (RUIOsloHeaderView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR___RUIOsloHeaderView__headerLabel;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v5 = OBJC_IVAR___RUIOsloHeaderView__subHeaderLabel;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  result = sub_21BA886DC();
  __break(1u);
  return result;
}

- (RUIOsloHeaderView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end