@interface WFVariableFieldParameter
- (id)rewriteParameterState:(id)a3 withStrings:(id)a4;
- (id)userVisibleStringsInParameterState:(id)a3 forUseCase:(unint64_t)a4;
@end

@implementation WFVariableFieldParameter

- (id)userVisibleStringsInParameterState:(id)a3 forUseCase:(unint64_t)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  WFVariableFieldParameter.userVisibleStrings(in:for:)();
  swift_unknownObjectRelease();

  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v6 = sub_1CA94C8E8();

  return v6;
}

- (id)rewriteParameterState:(id)a3 withStrings:(id)a4
{
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v6 = sub_1CA94C1C8();
  swift_unknownObjectRetain();
  v7 = self;
  v8 = WFVariableFieldParameter.rewrite(_:withStrings:)(a3, v6);
  swift_unknownObjectRelease();

  return v8;
}

@end