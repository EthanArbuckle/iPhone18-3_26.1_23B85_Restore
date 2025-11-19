@interface DateFieldParameterSummaryEditor
- (void)parameterAttributesDidChange:(id)a3;
- (void)textEntryDidFinish;
- (void)textEntryTextDidChange:(id)a3;
- (void)textEntryWillBegin:(id)a3 allowMultipleLines:(BOOL *)a4;
@end

@implementation DateFieldParameterSummaryEditor

- (void)textEntryWillBegin:(id)a3 allowMultipleLines:(BOOL *)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  sub_2745B8B9C(a3, a4);
  swift_unknownObjectRelease();
}

- (void)textEntryTextDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2745B8CA0(a3);
}

- (void)textEntryDidFinish
{
  v2 = self;
  sub_2745B8D58();
}

- (void)parameterAttributesDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2745B9068();
}

@end