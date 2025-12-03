@interface DomainHelperInterface
- (_TtC12icloudMCCKit21DomainHelperInterface)init;
- (int64_t)getPKCategoryForDomain:(id)domain;
@end

@implementation DomainHelperInterface

- (int64_t)getPKCategoryForDomain:(id)domain
{
  sub_1D373797C();
  if (qword_1EDEF4BF8 != -1)
  {
    swift_once();
  }

  v3 = sub_1D3733894();

  return sub_1D3727028(v3);
}

- (_TtC12icloudMCCKit21DomainHelperInterface)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DomainHelperInterface();
  return [(DomainHelperInterface *)&v3 init];
}

@end