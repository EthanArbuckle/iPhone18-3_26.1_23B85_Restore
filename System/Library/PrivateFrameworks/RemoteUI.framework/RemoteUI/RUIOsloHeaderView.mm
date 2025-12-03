@interface RUIOsloHeaderView
- (RUIOsloHeaderView)initWithAttributes:(id)attributes;
- (RUIOsloHeaderView)initWithCoder:(id)coder;
- (RUIOsloHeaderView)initWithFrame:(CGRect)frame;
- (double)headerHeightForWidth:(double)width inView:(id)view;
- (void)setIconImage:(id)image;
- (void)setSubHeaderText:(id)text attributes:(id)attributes;
- (void)setText:(id)text attributes:(id)attributes;
@end

@implementation RUIOsloHeaderView

- (RUIOsloHeaderView)initWithAttributes:(id)attributes
{
  if (attributes)
  {
    sub_21BA87BCC();
  }

  return OsloHeaderView.init(attributes:)();
}

- (double)headerHeightForWidth:(double)width inView:(id)view
{
  v5 = *(MEMORY[0x277D76C78] + 8);
  v8.receiver = self;
  v8.super_class = type metadata accessor for OsloHeaderView(0);
  [(RUIOsloHeaderView *)&v8 systemLayoutSizeFittingSize:width, v5];
  return v6;
}

- (void)setSubHeaderText:(id)text attributes:(id)attributes
{
  if (text)
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
  selfCopy = self;
  v8(v5, v7);
}

- (void)setText:(id)text attributes:(id)attributes
{
  if (text)
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
  selfCopy = self;
  v8(v5, v7);
}

- (void)setIconImage:(id)image
{
  v5 = *(**(&self->super.super.super.isa + OBJC_IVAR___RUIOsloHeaderView_model) + 240);
  imageCopy = image;
  selfCopy = self;
  v5(image);
}

- (RUIOsloHeaderView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR___RUIOsloHeaderView__headerLabel;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v5 = OBJC_IVAR___RUIOsloHeaderView__subHeaderLabel;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  result = sub_21BA886DC();
  __break(1u);
  return result;
}

- (RUIOsloHeaderView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end