@interface WFVariableFieldParameter
- (id)rewriteParameterState:(id)state withStrings:(id)strings;
- (id)userVisibleStringsInParameterState:(id)state forUseCase:(unint64_t)case;
@end

@implementation WFVariableFieldParameter

- (id)userVisibleStringsInParameterState:(id)state forUseCase:(unint64_t)case
{
  swift_unknownObjectRetain();
  selfCopy = self;
  WFVariableFieldParameter.userVisibleStrings(in:for:)();
  swift_unknownObjectRelease();

  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v6 = sub_1CA94C8E8();

  return v6;
}

- (id)rewriteParameterState:(id)state withStrings:(id)strings
{
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v6 = sub_1CA94C1C8();
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = WFVariableFieldParameter.rewrite(_:withStrings:)(state, v6);
  swift_unknownObjectRelease();

  return v8;
}

@end