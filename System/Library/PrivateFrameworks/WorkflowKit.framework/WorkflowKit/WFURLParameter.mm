@interface WFURLParameter
- (id)rewriteParameterState:(id)a3 withStrings:(id)a4;
- (id)userVisibleStringsInParameterState:(id)a3 forUseCase:(unint64_t)a4;
@end

@implementation WFURLParameter

- (id)userVisibleStringsInParameterState:(id)a3 forUseCase:(unint64_t)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  WFURLParameter.userVisibleStrings(in:for:)(a3, a4);
  swift_unknownObjectRelease();

  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v8 = sub_1CA94C8E8();

  return v8;
}

- (id)rewriteParameterState:(id)a3 withStrings:(id)a4
{
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  sub_1CA94C1C8();
  swift_unknownObjectRetain();
  v6 = self;
  v7 = WFURLParameter.rewrite(_:withStrings:)(a3);
  swift_unknownObjectRelease();

  return v7;
}

@end