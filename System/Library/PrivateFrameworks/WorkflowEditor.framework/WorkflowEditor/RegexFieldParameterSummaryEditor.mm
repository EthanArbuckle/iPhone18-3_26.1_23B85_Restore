@interface RegexFieldParameterSummaryEditor
- (void)parameterAttributesDidChange:(id)change;
- (void)textEntryDidFinish;
- (void)textEntryTextDidChange:(id)change;
- (void)textEntryWillBegin:(id)begin allowMultipleLines:(BOOL *)lines;
@end

@implementation RegexFieldParameterSummaryEditor

- (void)textEntryWillBegin:(id)begin allowMultipleLines:(BOOL *)lines
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_274413A00(begin, lines);
  swift_unknownObjectRelease();
}

- (void)textEntryTextDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_274413B04(change);
}

- (void)textEntryDidFinish
{
  selfCopy = self;
  sub_274413BBC();
}

- (void)parameterAttributesDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_274413E84();
}

@end