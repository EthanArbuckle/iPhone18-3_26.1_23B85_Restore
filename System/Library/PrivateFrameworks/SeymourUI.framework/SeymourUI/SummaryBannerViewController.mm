@interface SummaryBannerViewController
- (_TtC9SeymourUI27SummaryBannerViewController)initWithCoder:(id)coder;
- (_TtC9SeymourUI27SummaryBannerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC9SeymourUI27SummaryBannerViewController)initWithRequest:(id)request;
- (_TtC9SeymourUI27SummaryBannerViewController)initWithRequest:(id)request bag:(id)bag account:(id)account;
- (uint64_t)messageViewController:(double)controller didUpdateSize:(double)size;
- (void)messageViewController:(id)controller didFailWithError:(id)error;
- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result;
@end

@implementation SummaryBannerViewController

- (_TtC9SeymourUI27SummaryBannerViewController)initWithCoder:(id)coder
{
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI27SummaryBannerViewController)initWithRequest:(id)request
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI27SummaryBannerViewController)initWithRequest:(id)request bag:(id)bag account:(id)account
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI27SummaryBannerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  sub_20BC5F66C(resultCopy);
}

- (void)messageViewController:(id)controller didFailWithError:(id)error
{
  controllerCopy = controller;
  selfCopy = self;
  errorCopy = error;
  sub_20BC5F968(error);
}

- (uint64_t)messageViewController:(double)controller didUpdateSize:(double)size
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
    *(v10 + 4) = controller;
    *(v10 + 12) = 2050;
    *(v10 + 14) = size;
    _os_log_impl(&dword_20B517000, v8, v9, "[UM] Summary Banner size: %{public}f x %{public}f", v10, 0x16u);
    MEMORY[0x20F2F6A40](v10, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

@end