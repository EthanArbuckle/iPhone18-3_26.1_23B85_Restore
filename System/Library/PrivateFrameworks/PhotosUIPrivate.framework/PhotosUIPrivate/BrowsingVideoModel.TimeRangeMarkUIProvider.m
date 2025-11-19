@interface BrowsingVideoModel.TimeRangeMarkUIProvider
- (CGSize)timeRangeMark:(id)a3 sizeInFrame:(CGRect)a4;
- (id)uiProxyForTimeRangeMark:(id)a3 withSource:(id)a4;
@end

@implementation BrowsingVideoModel.TimeRangeMarkUIProvider

- (CGSize)timeRangeMark:(id)a3 sizeInFrame:(CGRect)a4
{
  v5 = a3;
  v6 = self;
  sub_1B372DC94(v5);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)uiProxyForTimeRangeMark:(id)a3 withSource:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_1B372DDB0();

  swift_unknownObjectRelease();

  return v7;
}

@end