@interface ASMotionHelper
- (void)durationOfActivitiesWithStartDateOffset:(unint64_t)offset and:(unint64_t)and completionHandler:(id)handler;
@end

@implementation ASMotionHelper

- (void)durationOfActivitiesWithStartDateOffset:(unint64_t)offset and:(unint64_t)and completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = offset;
  v9[3] = and;
  v9[4] = v8;
  v9[5] = self;
  selfCopy = self;

  sub_1000CAD58(&unk_1005CC818, v9);
}

@end