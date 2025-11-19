@interface BrowsingVideoModel.ControlSource
- (NSArray)timeRangeMarks;
- (void)setTimeRangeMarks:(id)a3;
@end

@implementation BrowsingVideoModel.ControlSource

- (NSArray)timeRangeMarks
{
  sub_1B372DA98();
  sub_1B3710718(0, &qword_1EB84F868);
  v2 = sub_1B3C9C778();

  return v2;
}

- (void)setTimeRangeMarks:(id)a3
{
  sub_1B3710718(0, &qword_1EB84F868);
  v4 = sub_1B3C9C788();
  v5 = self;
  sub_1B372DB28(v4);
}

@end