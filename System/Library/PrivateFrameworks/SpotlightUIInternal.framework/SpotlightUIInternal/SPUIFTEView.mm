@interface SPUIFTEView
- (SPUIFTEView)initWithHostedView:(id)view;
- (SPUIFTEView)initWithPrivacyPresentation:(id)presentation ttr:(id)ttr;
@end

@implementation SPUIFTEView

- (SPUIFTEView)initWithPrivacyPresentation:(id)presentation ttr:(id)ttr
{
  v5 = _Block_copy(presentation);
  v6 = _Block_copy(ttr);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  return sub_26B861788(sub_26B86201C, v7, sub_26B862430, v8);
}

- (SPUIFTEView)initWithHostedView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end