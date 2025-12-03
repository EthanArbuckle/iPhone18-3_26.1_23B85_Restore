@interface MarketingPaletteBannerPresenter
- (_TtC9SeymourUI31MarketingPaletteBannerPresenter)init;
- (void)textSizeChanged:(id)changed;
@end

@implementation MarketingPaletteBannerPresenter

- (void)textSizeChanged:(id)changed
{
  v4 = sub_20C132614();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1325E4();
  selfCopy = self;
  sub_20B8DE378();

  (*(v5 + 8))(v7, v4);
}

- (_TtC9SeymourUI31MarketingPaletteBannerPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end