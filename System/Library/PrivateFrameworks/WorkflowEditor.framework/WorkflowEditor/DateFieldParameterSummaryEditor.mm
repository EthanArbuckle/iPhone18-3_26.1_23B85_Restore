@interface DateFieldParameterSummaryEditor
- (void)parameterAttributesDidChange:(id)change;
- (void)textEntryDidFinish;
- (void)textEntryTextDidChange:(id)change;
- (void)textEntryWillBegin:(id)begin allowMultipleLines:(BOOL *)lines;
@end

@implementation DateFieldParameterSummaryEditor

- (void)textEntryWillBegin:(id)begin allowMultipleLines:(BOOL *)lines
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2745B8B9C(begin, lines);
  swift_unknownObjectRelease();
}

- (void)textEntryTextDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2745B8CA0(change);
}

- (void)textEntryDidFinish
{
  selfCopy = self;
  sub_2745B8D58();
}

- (void)parameterAttributesDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2745B9068();
}

@end