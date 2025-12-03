@interface TranslationProviderHostModel
- (BOOL)shouldAcceptWithConnection:(id)connection;
- (_TtC20TranslationUIService28TranslationProviderHostModel)init;
- (void)expandSheet;
- (void)finishWith:(id)with error:(id)error;
@end

@implementation TranslationProviderHostModel

- (void)finishWith:(id)with error:(id)error
{
  if (with)
  {
    selfCopy = self;
    withCopy = with;
    v7 = sub_100051098();
    __chkstk_darwin(v7);
    sub_100050438();
  }
}

- (void)expandSheet
{
  selfCopy = self;
  sub_100014A88();
}

- (BOOL)shouldAcceptWithConnection:(id)connection
{
  connectionCopy = connection;
  selfCopy = self;
  sub_1000153D0(connectionCopy);

  return 1;
}

- (_TtC20TranslationUIService28TranslationProviderHostModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end