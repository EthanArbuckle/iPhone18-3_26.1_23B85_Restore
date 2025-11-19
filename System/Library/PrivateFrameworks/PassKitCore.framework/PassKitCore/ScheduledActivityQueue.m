@interface ScheduledActivityQueue
@end

@implementation ScheduledActivityQueue

void ___ScheduledActivityQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.passd.scheduledactivity", 0);
  v1 = qword_1ED6D1908;
  qword_1ED6D1908 = v0;
}

@end