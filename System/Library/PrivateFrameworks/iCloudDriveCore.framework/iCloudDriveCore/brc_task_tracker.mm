@interface brc_task_tracker
- (void)dealloc;
@end

@implementation brc_task_tracker

- (void)dealloc
{
  free(self->label);
  v3.receiver = self;
  v3.super_class = brc_task_tracker;
  [(brc_task_tracker *)&v3 dealloc];
}

@end