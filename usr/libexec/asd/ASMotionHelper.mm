@interface ASMotionHelper
- (void)durationOfActivitiesWithStartDateOffset:(unint64_t)a3 and:(unint64_t)a4 completionHandler:(id)a5;
@end

@implementation ASMotionHelper

- (void)durationOfActivitiesWithStartDateOffset:(unint64_t)a3 and:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = self;

  sub_1000CAD58(&unk_1005CC818, v9);
}

@end