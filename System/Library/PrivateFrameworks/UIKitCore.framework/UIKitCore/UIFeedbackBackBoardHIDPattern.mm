@interface UIFeedbackBackBoardHIDPattern
@end

@implementation UIFeedbackBackBoardHIDPattern

void __44___UIFeedbackBackBoardHIDPattern_hidRequest__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 160);
  v4 = a2;
  [v4 setPattern:v3];
  [v4 setDeviceType:*(*(a1 + 32) + 136)];
  [v4 setSenderID:*(*(a1 + 32) + 144)];
  [v4 setPowerSourceID:*(*(a1 + 32) + 152)];
  [v4 setTimestamp:mach_absolute_time()];
}

@end