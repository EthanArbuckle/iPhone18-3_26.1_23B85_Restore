@interface BrowsingVideoModel.TimeRangeMarkUIProvider
- (CGSize)timeRangeMark:(id)mark sizeInFrame:(CGRect)frame;
- (id)uiProxyForTimeRangeMark:(id)mark withSource:(id)source;
@end

@implementation BrowsingVideoModel.TimeRangeMarkUIProvider

- (CGSize)timeRangeMark:(id)mark sizeInFrame:(CGRect)frame
{
  markCopy = mark;
  selfCopy = self;
  sub_1B372DC94(markCopy);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)uiProxyForTimeRangeMark:(id)mark withSource:(id)source
{
  markCopy = mark;
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_1B372DDB0();

  swift_unknownObjectRelease();

  return v7;
}

@end