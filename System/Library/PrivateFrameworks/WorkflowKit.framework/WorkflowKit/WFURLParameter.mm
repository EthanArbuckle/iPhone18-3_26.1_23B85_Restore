@interface WFURLParameter
- (id)rewriteParameterState:(id)state withStrings:(id)strings;
- (id)userVisibleStringsInParameterState:(id)state forUseCase:(unint64_t)case;
@end

@implementation WFURLParameter

- (id)userVisibleStringsInParameterState:(id)state forUseCase:(unint64_t)case
{
  swift_unknownObjectRetain();
  selfCopy = self;
  WFURLParameter.userVisibleStrings(in:for:)(state, case);
  swift_unknownObjectRelease();

  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v8 = sub_1CA94C8E8();

  return v8;
}

- (id)rewriteParameterState:(id)state withStrings:(id)strings
{
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  sub_1CA94C1C8();
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = WFURLParameter.rewrite(_:withStrings:)(state);
  swift_unknownObjectRelease();

  return v7;
}

@end