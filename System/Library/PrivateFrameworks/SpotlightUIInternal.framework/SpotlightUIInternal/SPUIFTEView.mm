@interface SPUIFTEView
- (SPUIFTEView)initWithHostedView:(id)a3;
- (SPUIFTEView)initWithPrivacyPresentation:(id)a3 ttr:(id)a4;
@end

@implementation SPUIFTEView

- (SPUIFTEView)initWithPrivacyPresentation:(id)a3 ttr:(id)a4
{
  v5 = _Block_copy(a3);
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  return sub_26B861788(sub_26B86201C, v7, sub_26B862430, v8);
}

- (SPUIFTEView)initWithHostedView:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end