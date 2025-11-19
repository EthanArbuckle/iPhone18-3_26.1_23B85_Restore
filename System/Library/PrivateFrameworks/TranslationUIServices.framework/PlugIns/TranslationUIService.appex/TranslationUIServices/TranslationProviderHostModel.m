@interface TranslationProviderHostModel
- (BOOL)shouldAcceptWithConnection:(id)a3;
- (_TtC20TranslationUIService28TranslationProviderHostModel)init;
- (void)expandSheet;
- (void)finishWith:(id)a3 error:(id)a4;
@end

@implementation TranslationProviderHostModel

- (void)finishWith:(id)a3 error:(id)a4
{
  if (a3)
  {
    v5 = self;
    v6 = a3;
    v7 = sub_100051098();
    __chkstk_darwin(v7);
    sub_100050438();
  }
}

- (void)expandSheet
{
  v2 = self;
  sub_100014A88();
}

- (BOOL)shouldAcceptWithConnection:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000153D0(v4);

  return 1;
}

- (_TtC20TranslationUIService28TranslationProviderHostModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end