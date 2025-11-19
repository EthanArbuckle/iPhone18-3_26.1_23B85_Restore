@interface SummaryBannerViewController
- (_TtC9SeymourUI27SummaryBannerViewController)initWithCoder:(id)a3;
- (_TtC9SeymourUI27SummaryBannerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC9SeymourUI27SummaryBannerViewController)initWithRequest:(id)a3;
- (_TtC9SeymourUI27SummaryBannerViewController)initWithRequest:(id)a3 bag:(id)a4 account:(id)a5;
- (uint64_t)messageViewController:(double)a1 didUpdateSize:(double)a2;
- (void)messageViewController:(id)a3 didFailWithError:(id)a4;
- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4;
@end

@implementation SummaryBannerViewController

- (_TtC9SeymourUI27SummaryBannerViewController)initWithCoder:(id)a3
{
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI27SummaryBannerViewController)initWithRequest:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI27SummaryBannerViewController)initWithRequest:(id)a3 bag:(id)a4 account:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI27SummaryBannerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_20BC5F66C(v7);
}

- (void)messageViewController:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_20BC5F968(a4);
}

- (uint64_t)messageViewController:(double)a1 didUpdateSize:(double)a2
{
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B424();
  v8 = sub_20C13BB74();
  v9 = sub_20C13D1F4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134349312;
    *(v10 + 4) = a1;
    *(v10 + 12) = 2050;
    *(v10 + 14) = a2;
    _os_log_impl(&dword_20B517000, v8, v9, "[UM] Summary Banner size: %{public}f x %{public}f", v10, 0x16u);
    MEMORY[0x20F2F6A40](v10, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

@end