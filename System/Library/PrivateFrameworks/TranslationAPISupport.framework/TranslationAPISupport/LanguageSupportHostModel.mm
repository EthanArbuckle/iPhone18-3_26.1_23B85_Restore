@interface LanguageSupportHostModel
- (BOOL)shouldAcceptWithConnection:(id)a3;
- (_TtC21TranslationAPISupport24LanguageSupportHostModel)init;
- (void)didFinishWithFinalConfiguration:(id)a3 error:(id)a4;
@end

@implementation LanguageSupportHostModel

- (void)didFinishWithFinalConfiguration:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_26F371EC8(a3, a4);
}

- (BOOL)shouldAcceptWithConnection:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_26F372B10(v4);

  return 1;
}

- (_TtC21TranslationAPISupport24LanguageSupportHostModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end