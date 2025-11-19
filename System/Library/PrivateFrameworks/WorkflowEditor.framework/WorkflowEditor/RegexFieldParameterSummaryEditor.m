@interface RegexFieldParameterSummaryEditor
- (void)parameterAttributesDidChange:(id)a3;
- (void)textEntryDidFinish;
- (void)textEntryTextDidChange:(id)a3;
- (void)textEntryWillBegin:(id)a3 allowMultipleLines:(BOOL *)a4;
@end

@implementation RegexFieldParameterSummaryEditor

- (void)textEntryWillBegin:(id)a3 allowMultipleLines:(BOOL *)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  sub_274413A00(a3, a4);
  swift_unknownObjectRelease();
}

- (void)textEntryTextDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_274413B04(a3);
}

- (void)textEntryDidFinish
{
  v2 = self;
  sub_274413BBC();
}

- (void)parameterAttributesDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_274413E84();
}

@end